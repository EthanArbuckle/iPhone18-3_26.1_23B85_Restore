@interface MFBufferedQueue
- (BOOL)_flush;
- (BOOL)addItem:(id)a3;
- (BOOL)flushIfNecessary;
- (MFBufferedQueue)initWithMaximumSize:(unsigned int)a3 latency:(double)a4;
- (void)dealloc;
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

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFBufferedQueue;
  [(MFBufferedQueue *)&v3 dealloc];
}

- (BOOL)addItem:(id)a3
{
  self->_currentSize += [(MFBufferedQueue *)self sizeForItem:?];
  queue = self->_queue;
  if (!queue)
  {
    queue = objc_alloc_init(MEMORY[0x277CBEB18]);
    self->_queue = queue;
  }

  [(NSMutableArray *)queue addObject:a3];
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
    v3 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:self->_queue];
    [(MFBufferedQueue *)self removeAllObjects];
    if (v3)
    {
      v4 = [(MFBufferedQueue *)self handleItems:v3];

      return v4;
    }
  }

  else
  {
    [(MFBufferedQueue *)self removeAllObjects];
  }

  return 1;
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