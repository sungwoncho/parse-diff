	current = null
			chunks: []
		start() if not file || file.chunks.length
		ln_del = oldStart = +match[1]
		oldLines = +(match[2] || 0)
		ln_add = newStart = +match[3]
		newLines = +(match[4] || 0)
		current = {
			content: line,
			changes: [],
			oldStart, oldLines, newStart, newLines
		}
		file.chunks.push current
		current.changes.push {type:'del', del:true, ln:ln_del++, content:line}
		current.changes.push {type:'add', add:true, ln:ln_add++, content:line}
		current.changes.push {
	t = (/\t.*|\d{4}-\d\d-\d\d\s\d\d:\d\d:\d\d(.\d+)?\s(\+|-)\d\d\d\d/).exec(s)