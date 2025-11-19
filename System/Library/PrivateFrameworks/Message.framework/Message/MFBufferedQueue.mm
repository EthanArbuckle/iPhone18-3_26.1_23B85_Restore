@interface MFBufferedQueue
- (BOOL)_flush;
- (BOOL)addItem:(id)a3;
- (BOOL)flushIfNecessary;
- (MFBufferedQueue)initWithMaximumSize:(unsigned int)a3 latency:(double)a4;
- (void)removeAllObjects;
@end

@implementation MFBufferedQueue

- (MFBufferedQueue)initWithMaximumSize:(unsigned int)a3 latency:(double)a4
{
  v9.receiver = self;
  v9.super_class = MFBufferedQueue;
  v6 = [(MFBufferedQueue *)&v9 init];
  if (v6)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v6->_maximumSize = a3;
    v6->_maximumLatency = a4;
    v6->_timeOfLastFlush = Current;
  }

  return v6;
}

- (BOOL)addItem:(id)a3
{
  v4 = a3;
  self->_currentSize += [(MFBufferedQueue *)self sizeForItem:v4];
  queue = self->_queue;
  if (!queue)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_queue;
    self->_queue = v6;

    queue = self->_queue;
  }

  [(NSMutableArray *)queue addObject:v4];
  [(MFBufferedQueue *)self flushIfNecessary];

  return 1;
}

- (void)removeAllObjects
{
  [(NSMutableArray *)self->_queue removeAllObjects];
  self->_timeOfLastFlush = CFAbsoluteTimeGetCurrent();
  self->_currentSize = 0;
}

- (BOOL)_flush
{
  if ([(NSMutableArray *)self->_queue count])
  {
    v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_queue];
  }

  else
  {
    v3 = 0;
  }

  [(MFBufferedQueue *)self removeAllObjects];
  if (v3)
  {
    v4 = [(MFBufferedQueue *)self handleItems:v3];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)flushIfNecessary
{
  if (self->_currentSize < self->_maximumSize && CFAbsoluteTimeGetCurrent() <= self->_timeOfLastFlush + self->_maximumLatency)
  {
    return 1;
  }

  return [(MFBufferedQueue *)self _flush];
}

@end