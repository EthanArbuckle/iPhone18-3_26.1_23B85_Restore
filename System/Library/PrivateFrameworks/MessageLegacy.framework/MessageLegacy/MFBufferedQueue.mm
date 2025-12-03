@interface MFBufferedQueue
- (BOOL)_flush;
- (BOOL)addItem:(id)item;
- (BOOL)flushIfNecessary;
- (MFBufferedQueue)initWithMaximumSize:(unsigned int)size latency:(double)latency;
- (void)dealloc;
- (void)removeAllObjects;
@end

@implementation MFBufferedQueue

- (MFBufferedQueue)initWithMaximumSize:(unsigned int)size latency:(double)latency
{
  v9.receiver = self;
  v9.super_class = MFBufferedQueue;
  v6 = [(MFBufferedQueue *)&v9 init];
  if (v6)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v6->_maximumSize = size;
    v6->_maximumLatency = latency;
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

- (BOOL)addItem:(id)item
{
  self->_currentSize += [(MFBufferedQueue *)self sizeForItem:?];
  queue = self->_queue;
  if (!queue)
  {
    queue = objc_alloc_init(MEMORY[0x277CBEB18]);
    self->_queue = queue;
  }

  [(NSMutableArray *)queue addObject:item];
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