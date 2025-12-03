@interface MBDriveScript
- (MBDriveScript)initWithProgress:(id)progress;
- (void)addOperation:(id)operation;
- (void)addOperations:(id)operations;
- (void)beginPerforming;
- (void)dealloc;
- (void)finishedPerforming;
- (void)insertOperation:(id)operation atIndex:(unint64_t)index;
- (void)performingOperation:(id)operation;
@end

@implementation MBDriveScript

- (MBDriveScript)initWithProgress:(id)progress
{
  v6.receiver = self;
  v6.super_class = MBDriveScript;
  v4 = [(MBDriveScript *)&v6 init];
  if (v4)
  {
    v4->_operations = [[NSMutableArray alloc] initWithCapacity:0];
    v4->_progress = progress;
    v4->_state = 0;
    v4->_index = 0;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MBDriveScript;
  [(MBDriveScript *)&v3 dealloc];
}

- (void)addOperation:(id)operation
{
  if (self->_state)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"MBDriveScript.m" description:45, @"Invalid state"];
  }

  [(NSMutableArray *)self->_operations addObject:operation];
  progress = self->_progress;
  [operation duration];

  [(MBProgress *)progress addDuration:?];
}

- (void)addOperations:(id)operations
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [operations countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(operations);
        }

        [(MBDriveScript *)self addOperation:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [operations countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)insertOperation:(id)operation atIndex:(unint64_t)index
{
  [(NSMutableArray *)self->_operations insertObject:operation atIndex:index];
  progress = self->_progress;
  [operation duration];

  [(MBProgress *)progress addDuration:?];
}

- (void)beginPerforming
{
  if (self->_state || self->_index)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"MBDriveScript.m" description:63, @"Invalid state"];
  }

  self->_state = 1;
}

- (void)performingOperation:(id)operation
{
  state = self->_state;
  if (state)
  {
    if (state != 1)
    {
      [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"MBDriveScript.m" description:72, @"Invalid state"];
    }

    v7 = [(NSMutableArray *)self->_operations objectAtIndexedSubscript:self->_index];
    type = [operation type];
    if (type != [v7 type])
    {
      -[NSAssertionHandler handleFailureInMethod:object:file:lineNumber:description:](+[NSAssertionHandler currentHandler](NSAssertionHandler, "currentHandler"), "handleFailureInMethod:object:file:lineNumber:description:", a2, self, @"MBDriveScript.m", 75, @"Deviating from script (expecting %@, got %@)", +[MBDriveOperation stringForType:](MBDriveOperation, "stringForType:", [v7 type]), +[MBDriveOperation stringForType:](MBDriveOperation, "stringForType:", objc_msgSend(operation, "type")));
    }

    progress = self->_progress;
    [v7 duration];
    -[MBProgress updateWithDuration:size:](progress, "updateWithDuration:size:", [v7 size], v10);
    ++self->_index;
  }
}

- (void)finishedPerforming
{
  index = self->_index;
  if (index != [(NSMutableArray *)self->_operations count])
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(NSMutableArray *)self->_operations count];
      v7 = self->_index;
      *buf = 134218240;
      v12 = v6;
      v13 = 2048;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "MBDriveScript had (%ld) operations, and performed (%ld)", buf, 0x16u);
      v9 = [(NSMutableArray *)self->_operations count];
      v10 = self->_index;
      _MBLog();
    }

    [(NSMutableArray *)self->_operations mb_enumerateFirstAndLastNObjects:5 fromIndex:self->_index block:&stru_1003C1218, v9, v10];
  }

  if (self->_state != 1)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"MBDriveScript.m" description:91, @"Invalid state"];
  }

  v8 = self->_index;
  if (v8 != [(NSMutableArray *)self->_operations count])
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"MBDriveScript.m" description:92, @"Script not finished (performed: %ld != contained: %ld)", self->_index, [(NSMutableArray *)self->_operations count]];
  }

  if (![(MBProgress *)self->_progress isFinished])
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"MBDriveScript.m" description:93, @"Progress not finished"];
  }

  self->_state = 2;
}

@end