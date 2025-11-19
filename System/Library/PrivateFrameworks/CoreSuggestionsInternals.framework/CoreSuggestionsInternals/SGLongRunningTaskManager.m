@interface SGLongRunningTaskManager
+ (SGLongRunningTaskManager)sharedInstance;
- (SGLongRunningTaskManager)init;
- (id)task;
- (id)taskWithDeadline:(double)a3;
- (void)dealloc;
- (void)tellCurrentTasksToDefer;
- (void)unregister:(id)a3;
@end

@implementation SGLongRunningTaskManager

- (void)tellCurrentTasksToDefer
{
  v14 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(&self->_lock);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_tasks;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) requestDefer];
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  pthread_mutex_unlock(&self->_lock);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)unregister:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_lock);
  [(NSHashTable *)self->_tasks removeObject:v4];

  pthread_mutex_unlock(&self->_lock);
}

- (id)taskWithDeadline:(double)a3
{
  v5 = [SGLongRunningTask alloc];
  v6 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:a3];
  v7 = [(SGLongRunningTask *)v5 initWithDeadline:v6 manager:self];

  pthread_mutex_lock(&self->_lock);
  [(NSHashTable *)self->_tasks addObject:v7];
  pthread_mutex_unlock(&self->_lock);

  return v7;
}

- (id)task
{
  v3 = [[SGLongRunningTask alloc] initWithDeadline:0 manager:self];
  pthread_mutex_lock(&self->_lock);
  [(NSHashTable *)self->_tasks addObject:v3];
  pthread_mutex_unlock(&self->_lock);

  return v3;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = SGLongRunningTaskManager;
  [(SGLongRunningTaskManager *)&v3 dealloc];
}

- (SGLongRunningTaskManager)init
{
  v6.receiver = self;
  v6.super_class = SGLongRunningTaskManager;
  v2 = [(SGLongRunningTaskManager *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:0];
    tasks = v2->_tasks;
    v2->_tasks = v3;

    pthread_mutex_init(&v2->_lock, 0);
  }

  return v2;
}

+ (SGLongRunningTaskManager)sharedInstance
{
  if (sharedInstance__pasOnceToken9 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken9, &__block_literal_global_96);
  }

  v3 = sharedInstance__pasExprOnceResult_94;

  return v3;
}

void __42__SGLongRunningTaskManager_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_94;
  sharedInstance__pasExprOnceResult_94 = v1;

  objc_autoreleasePoolPop(v0);
}

@end