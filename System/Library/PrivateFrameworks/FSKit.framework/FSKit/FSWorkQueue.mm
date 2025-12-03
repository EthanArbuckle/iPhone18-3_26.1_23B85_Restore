@interface FSWorkQueue
- (id)initQueueWithDomain:(id)domain concurrency:(int)concurrency;
- (void)enqueue:(id)enqueue;
- (void)initQueues;
@end

@implementation FSWorkQueue

- (id)initQueueWithDomain:(id)domain concurrency:(int)concurrency
{
  domainCopy = domain;
  v12.receiver = self;
  v12.super_class = FSWorkQueue;
  v8 = [(FSWorkQueue *)&v12 init];
  if (v8)
  {
    array = [MEMORY[0x277CBEB18] array];
    queues = v8->_queues;
    v8->_queues = array;

    v8->_index = 0;
    v8->_concurrency = concurrency;
    objc_storeStrong(&v8->_domain, domain);
    v8->_didInitQueues = 0;
  }

  return v8;
}

- (void)initQueues
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_concurrency >= 1)
  {
    v3 = 0;
    do
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.fskit.FSWorkQueue.%@.%d", self->_domain, v3];
      v5 = dispatch_queue_create([v4 UTF8String], 0);
      if (!v5)
      {
        v6 = fskit_std_log();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v8 = *__error();
          *buf = 138412546;
          v11 = v4;
          v12 = 1024;
          v13 = v8;
          _os_log_error_impl(&dword_24A929000, v6, OS_LOG_TYPE_ERROR, "Can't create FSWorkQueue, unable to create queue (%@), errno (%d)", buf, 0x12u);
        }
      }

      queues = [(FSWorkQueue *)self queues];
      [queues addObject:v5];

      v3 = (v3 + 1);
    }

    while (v3 < self->_concurrency);
  }

  self->_didInitQueues = 1;
  v9 = *MEMORY[0x277D85DE8];
}

- (void)enqueue:(id)enqueue
{
  block = enqueue;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_didInitQueues)
  {
    [(FSWorkQueue *)selfCopy initQueues];
  }

  queues = [(FSWorkQueue *)selfCopy queues];
  v6 = [queues objectAtIndex:{-[FSWorkQueue index](selfCopy, "index")}];

  dispatch_async(v6, block);
  index = [(FSWorkQueue *)selfCopy index];
  queues2 = [(FSWorkQueue *)selfCopy queues];
  -[FSWorkQueue setIndex:](selfCopy, "setIndex:", ((index + 1) % [queues2 count]));

  objc_sync_exit(selfCopy);
}

@end