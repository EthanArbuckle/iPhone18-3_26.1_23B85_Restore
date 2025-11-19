@interface CRXUDispatchQueue
+ (CRXUDispatchQueue)dispatchQueueWithQueue:(id)a3;
+ (CRXUDispatchQueue)main;
+ (id)concurrentQueueWithName:(id)a3;
+ (id)concurrentQueueWithName:(id)a3 qos:(unsigned int)a4;
+ (id)serialQueueWithName:(id)a3;
+ (id)serialQueueWithName:(id)a3 qos:(unsigned int)a4;
- (CRXUDispatchQueue)initWithQueue:(id)a3 name:(id)a4;
- (id)debugDescription;
- (void)afterDelay:(double)a3 dispatchAsync:(id)a4;
- (void)dispatchAsync:(id)a3;
- (void)dispatchSync:(id)a3;
@end

@implementation CRXUDispatchQueue

- (CRXUDispatchQueue)initWithQueue:(id)a3 name:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = CRXUDispatchQueue;
  v9 = [(CRXUDispatchQueue *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    if (v8)
    {
      v11 = [v8 copy];
      name = v10->_name;
      v10->_name = v11;
    }

    v13 = os_log_create(CRXULoggingSubsystem, CRXULoggingCategory);
    log = v10->_log;
    v10->_log = v13;
  }

  return v10;
}

+ (CRXUDispatchQueue)dispatchQueueWithQueue:(id)a3
{
  v4 = a3;
  label = dispatch_queue_get_label(v4);
  if (label)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithCString:label encoding:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [[a1 alloc] initWithQueue:v4 name:v6];

  return v7;
}

- (void)dispatchSync:(id)a3
{
  v4 = a3;
  v5 = v4;
  queue = self->_queue;
  if (self->_tracingEnabled)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __34__CRXUDispatchQueue_dispatchSync___block_invoke;
    v7[3] = &unk_278EA0300;
    v7[4] = self;
    v8 = v4;
    dispatch_sync(queue, v7);
  }

  else
  {
    dispatch_sync(self->_queue, v4);
  }
}

void __34__CRXUDispatchQueue_dispatchSync___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 name];
    v11 = 136315650;
    v12 = "[CRXUDispatchQueue dispatchSync:]_block_invoke";
    v13 = 1024;
    v14 = 80;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&dword_24732C000, v4, OS_LOG_TYPE_INFO, "%s @%d: <%{public}@> sync enter", &v11, 0x1Cu);
  }

  (*(*(a1 + 40) + 16))();
  v6 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 name];
    v11 = 136315650;
    v12 = "[CRXUDispatchQueue dispatchSync:]_block_invoke";
    v13 = 1024;
    v14 = 82;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_24732C000, v8, OS_LOG_TYPE_INFO, "%s @%d: <%{public}@> sync leave", &v11, 0x1Cu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)dispatchAsync:(id)a3
{
  v4 = a3;
  v5 = v4;
  queue = self->_queue;
  if (self->_tracingEnabled)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __35__CRXUDispatchQueue_dispatchAsync___block_invoke;
    v7[3] = &unk_278EA0300;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }

  else
  {
    dispatch_async(self->_queue, v4);
  }
}

void __35__CRXUDispatchQueue_dispatchAsync___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 name];
    v11 = 136315650;
    v12 = "[CRXUDispatchQueue dispatchAsync:]_block_invoke";
    v13 = 1024;
    v14 = 92;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&dword_24732C000, v4, OS_LOG_TYPE_INFO, "%s @%d: <%{public}@> async enter", &v11, 0x1Cu);
  }

  (*(*(a1 + 40) + 16))();
  v6 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 name];
    v11 = 136315650;
    v12 = "[CRXUDispatchQueue dispatchAsync:]_block_invoke";
    v13 = 1024;
    v14 = 94;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_24732C000, v8, OS_LOG_TYPE_INFO, "%s @%d: <%{public}@> async leave", &v11, 0x1Cu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)afterDelay:(double)a3 dispatchAsync:(id)a4
{
  v6 = a4;
  v7 = dispatch_time(0, (a3 * 1000000000.0));
  v8 = v7;
  queue = self->_queue;
  if (self->_tracingEnabled)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__CRXUDispatchQueue_afterDelay_dispatchAsync___block_invoke;
    v10[3] = &unk_278EA0300;
    v10[4] = self;
    v11 = v6;
    dispatch_after(v8, queue, v10);
  }

  else
  {
    dispatch_after(v7, self->_queue, v6);
  }
}

void __46__CRXUDispatchQueue_afterDelay_dispatchAsync___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 name];
    v11 = 136315650;
    v12 = "[CRXUDispatchQueue afterDelay:dispatchAsync:]_block_invoke";
    v13 = 1024;
    v14 = 105;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&dword_24732C000, v4, OS_LOG_TYPE_INFO, "%s @%d: <%{public}@> async enter", &v11, 0x1Cu);
  }

  (*(*(a1 + 40) + 16))();
  v6 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 name];
    v11 = 136315650;
    v12 = "[CRXUDispatchQueue afterDelay:dispatchAsync:]_block_invoke";
    v13 = 1024;
    v14 = 107;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_24732C000, v8, OS_LOG_TYPE_INFO, "%s @%d: <%{public}@> async leave", &v11, 0x1Cu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CRXUDispatchQueue *)self name];
  v6 = [v3 stringWithFormat:@"%@<%p> %@", v4, self, v5];

  return v6;
}

+ (id)serialQueueWithName:(id)a3 qos:(unsigned int)a4
{
  v6 = dispatch_queue_attr_make_with_qos_class(0, a4, -1);
  v7 = a3;
  v8 = a3;
  v9 = dispatch_queue_create([v8 UTF8String], v6);
  v10 = [[a1 alloc] initWithQueue:v9 name:v8];

  return v10;
}

+ (id)concurrentQueueWithName:(id)a3 qos:(unsigned int)a4
{
  v6 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], a4, -1);
  v7 = a3;
  v8 = a3;
  v9 = dispatch_queue_create([v8 UTF8String], v6);
  v10 = [[a1 alloc] initWithQueue:v9 name:v8];

  return v10;
}

+ (id)serialQueueWithName:(id)a3
{
  v5 = a3;
  v6 = a3;
  v7 = [v6 UTF8String];
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create(v7, v8);

  v10 = [[a1 alloc] initWithQueue:v9 name:v6];

  return v10;
}

+ (id)concurrentQueueWithName:(id)a3
{
  v5 = a3;
  v6 = a3;
  v7 = [v6 UTF8String];
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create(v7, v8);

  v10 = [[a1 alloc] initWithQueue:v9 name:v6];

  return v10;
}

+ (CRXUDispatchQueue)main
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__CRXUDispatchQueue_main__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (main_onceToken != -1)
  {
    dispatch_once(&main_onceToken, block);
  }

  v2 = main_mainQueue;

  return v2;
}

uint64_t __25__CRXUDispatchQueue_main__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  main_mainQueue = [v1 initWithQueue:MEMORY[0x277D85CD0] name:@"<main>"];

  return MEMORY[0x2821F96F8]();
}

@end