@interface MIOFifoBuffer
- (BOOL)enqueue:(id)enqueue;
- (MIOFifoBuffer)initWithCapacity:(unint64_t)capacity;
- (id)dequeue;
- (void)dealloc;
- (void)emptyFifoBuffer;
@end

@implementation MIOFifoBuffer

- (MIOFifoBuffer)initWithCapacity:(unint64_t)capacity
{
  v7.receiver = self;
  v7.super_class = MIOFifoBuffer;
  v4 = [(MIOFifoBuffer *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_capacity = capacity;
    CMSimpleQueueCreate(*MEMORY[0x277CBECE8], capacity, &v4->_queue);
  }

  return v5;
}

- (void)dealloc
{
  [(MIOFifoBuffer *)self emptyFifoBuffer];
  queue = self->_queue;
  if (queue)
  {
    CFRelease(queue);
  }

  v4.receiver = self;
  v4.super_class = MIOFifoBuffer;
  [(MIOFifoBuffer *)&v4 dealloc];
}

- (void)emptyFifoBuffer
{
  selfCopy = self;
  while ([(MIOFifoBuffer *)self usage])
  {
    dequeue = [(MIOFifoBuffer *)selfCopy dequeue];
    self = selfCopy;
  }
}

- (BOOL)enqueue:(id)enqueue
{
  enqueueCopy = enqueue;
  queue = self->_queue;
  v6 = enqueueCopy;
  LOBYTE(queue) = CMSimpleQueueEnqueue(queue, v6) == 0;

  return queue;
}

- (id)dequeue
{
  v2 = CMSimpleQueueDequeue(self->_queue);

  return v2;
}

@end