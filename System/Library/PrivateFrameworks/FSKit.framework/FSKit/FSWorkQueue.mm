@interface FSWorkQueue
- (id)initQueueWithDomain:(id)a3 concurrency:(int)a4;
- (void)enqueue:(id)a3;
- (void)initQueues;
@end

@implementation FSWorkQueue

- (id)initQueueWithDomain:(id)a3 concurrency:(int)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = FSWorkQueue;
  v8 = [(FSWorkQueue *)&v12 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEB18] array];
    queues = v8->_queues;
    v8->_queues = v9;

    v8->_index = 0;
    v8->_concurrency = a4;
    objc_storeStrong(&v8->_domain, a3);
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

      v7 = [(FSWorkQueue *)self queues];
      [v7 addObject:v5];

      v3 = (v3 + 1);
    }

    while (v3 < self->_concurrency);
  }

  self->_didInitQueues = 1;
  v9 = *MEMORY[0x277D85DE8];
}

- (void)enqueue:(id)a3
{
  block = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (!v4->_didInitQueues)
  {
    [(FSWorkQueue *)v4 initQueues];
  }

  v5 = [(FSWorkQueue *)v4 queues];
  v6 = [v5 objectAtIndex:{-[FSWorkQueue index](v4, "index")}];

  dispatch_async(v6, block);
  v7 = [(FSWorkQueue *)v4 index];
  v8 = [(FSWorkQueue *)v4 queues];
  -[FSWorkQueue setIndex:](v4, "setIndex:", ((v7 + 1) % [v8 count]));

  objc_sync_exit(v4);
}

@end