@interface MIOFifoBuffer
- (BOOL)enqueue:(id)a3;
- (MIOFifoBuffer)initWithCapacity:(unint64_t)a3;
- (id)dequeue;
- (void)dealloc;
- (void)emptyFifoBuffer;
@end

@implementation MIOFifoBuffer

- (MIOFifoBuffer)initWithCapacity:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = MIOFifoBuffer;
  v4 = [(MIOFifoBuffer *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_capacity = a3;
    CMSimpleQueueCreate(*MEMORY[0x277CBECE8], a3, &v4->_queue);
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
  v2 = self;
  while ([(MIOFifoBuffer *)self usage])
  {
    v3 = [(MIOFifoBuffer *)v2 dequeue];
    self = v2;
  }
}

- (BOOL)enqueue:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v6 = v4;
  LOBYTE(queue) = CMSimpleQueueEnqueue(queue, v6) == 0;

  return queue;
}

- (id)dequeue
{
  v2 = CMSimpleQueueDequeue(self->_queue);

  return v2;
}

@end