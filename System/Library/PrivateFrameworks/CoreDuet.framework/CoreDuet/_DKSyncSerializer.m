@interface _DKSyncSerializer
+ (id)operationQueue;
+ (id)sharedInstance;
+ (id)underlyingQueue;
+ (void)addDependentOperation:(id)a3;
+ (void)addDependentOperationWithBlock:(id)a3;
+ (void)addOperation:(id)a3;
+ (void)addOperationWithBlock:(id)a3;
+ (void)performAfter:(double)a3 block:(id)a4;
+ (void)performAsyncBlock:(id)a3;
+ (void)performSyncBlock:(id)a3;
- (_DKSyncSerializer)init;
- (id)debugDescription;
- (id)description;
- (void)addDependentOperation:(void *)a1;
- (void)addDependentOperationWithBlock:(void *)a1;
- (void)addOperation:(uint64_t)a1;
- (void)addOperationWithBlock:(uint64_t)a1;
- (void)addOperations:(uint64_t)a3 waitUntilFinished:;
- (void)performAfter:(double)a3 block:;
- (void)performAsyncBlock:(NSObject *)a1;
- (void)performSyncBlock:(NSObject *)a1;
@end

@implementation _DKSyncSerializer

+ (id)underlyingQueue
{
  v2 = +[_DKSyncSerializer sharedInstance];
  v4 = v2;
  if (v2)
  {
    Property = objc_getProperty(v2, v3, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v6 = Property;

  return Property;
}

+ (id)sharedInstance
{
  objc_opt_self();
  if (sharedInstance_initialized_3 != -1)
  {
    +[_DKSyncSerializer sharedInstance];
  }

  v0 = sharedInstance_dispatcher;

  return v0;
}

+ (void)performAsyncBlock:(id)a3
{
  v3 = a3;
  v4 = +[_DKSyncSerializer sharedInstance];
  [(_DKSyncSerializer *)v4 performAsyncBlock:v3];
}

+ (void)performSyncBlock:(id)a3
{
  v3 = a3;
  v4 = +[_DKSyncSerializer sharedInstance];
  [(_DKSyncSerializer *)v4 performSyncBlock:v3];
}

+ (void)performAfter:(double)a3 block:(id)a4
{
  v5 = a4;
  v6 = +[_DKSyncSerializer sharedInstance];
  [(_DKSyncSerializer *)v6 performAfter:v5 block:a3];
}

+ (void)addOperation:(id)a3
{
  v3 = a3;
  v4 = +[_DKSyncSerializer sharedInstance];
  [(_DKSyncSerializer *)v4 addOperation:v3];
}

+ (void)addOperationWithBlock:(id)a3
{
  v3 = a3;
  v4 = +[_DKSyncSerializer sharedInstance];
  [(_DKSyncSerializer *)v4 addOperationWithBlock:v3];
}

+ (void)addDependentOperation:(id)a3
{
  v3 = a3;
  v4 = +[_DKSyncSerializer sharedInstance];
  [(_DKSyncSerializer *)v4 addDependentOperation:v3];
}

- (void)addDependentOperation:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v6 = v3;
    v4 = a1;
    objc_sync_enter(v4);
    WeakRetained = objc_loadWeakRetained(v4 + 3);
    if (WeakRetained)
    {
      [v6 addDependency:WeakRetained];
    }

    [(_DKSyncSerializer *)v4 + 3 addDependentOperation:v6, WeakRetained, v4];
    v3 = v6;
  }
}

+ (void)addDependentOperationWithBlock:(id)a3
{
  v3 = a3;
  v4 = +[_DKSyncSerializer sharedInstance];
  [(_DKSyncSerializer *)v4 addDependentOperationWithBlock:v3];
}

- (_DKSyncSerializer)init
{
  v8.receiver = self;
  v8.super_class = _DKSyncSerializer;
  v2 = [(_DKSyncSerializer *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("_DKSyncDispatcher Queue", 0);
    underlyingQueue = v2->_underlyingQueue;
    v2->_underlyingQueue = v3;

    v5 = objc_opt_new();
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v5;

    [(NSOperationQueue *)v2->_operationQueue setName:@"_DKSyncDispatcher Operation Queue"];
    [(NSOperationQueue *)v2->_operationQueue setUnderlyingQueue:v2->_underlyingQueue];
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p>", v5, self];

  return v6;
}

- (void)performAsyncBlock:(NSObject *)a1
{
  v3 = a2;
  v5 = v3;
  if (a1)
  {
    OUTLINED_FUNCTION_2_19(v3, v4);
    OUTLINED_FUNCTION_0_31();
    v7 = 3221225472;
    v8 = __39___DKSyncSerializer_performAsyncBlock___block_invoke;
    v9 = &unk_1E7367840;
    v10 = v5;
    dispatch_async(a1, block);
  }
}

- (void)performSyncBlock:(NSObject *)a1
{
  v3 = a2;
  v5 = v3;
  if (a1)
  {
    OUTLINED_FUNCTION_2_19(v3, v4);
    OUTLINED_FUNCTION_0_31();
    v7 = 3221225472;
    v8 = __38___DKSyncSerializer_performSyncBlock___block_invoke;
    v9 = &unk_1E7367840;
    v10 = v5;
    dispatch_sync(a1, block);
  }
}

- (void)performAfter:(double)a3 block:
{
  v5 = a2;
  if (a1)
  {
    v6 = dispatch_time(0, (a3 * 1000000000.0));
    OUTLINED_FUNCTION_2_19(v6, v7);
    OUTLINED_FUNCTION_0_31();
    v9 = 3221225472;
    v10 = __40___DKSyncSerializer_performAfter_block___block_invoke;
    v11 = &unk_1E7367840;
    v12 = v5;
    dispatch_after(v6, a1, block);
  }
}

- (void)addOperation:(uint64_t)a1
{
  if (a1)
  {
    v3 = a2;
    [OUTLINED_FUNCTION_3_19(v3 v2)];
  }
}

- (void)addOperations:(uint64_t)a3 waitUntilFinished:
{
  if (a1)
  {
    v6 = a2;
    [objc_getProperty(a1 v5];
  }
}

- (void)addOperationWithBlock:(uint64_t)a1
{
  if (a1)
  {
    v3 = [_DKSyncBlockOperation blockOperationWithBlock:a2];
    [(_DKSyncSerializer *)a1 addOperation:v3];
  }
}

- (void)addDependentOperationWithBlock:(void *)a1
{
  if (a1)
  {
    v3 = [_DKSyncBlockOperation blockOperationWithBlock:a2];
    [(_DKSyncSerializer *)a1 addDependentOperation:v3];
  }
}

+ (id)operationQueue
{
  v2 = +[_DKSyncSerializer sharedInstance];
  v4 = v2;
  if (v2)
  {
    v5 = OUTLINED_FUNCTION_3_19(v2, v3);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v6 = NSStringFromClass(v4);
  if (self)
  {
    Property = objc_getProperty(self, v5, 8, 1);
  }

  else
  {
    Property = 0;
  }

  v9 = [Property debugDescription];
  if (self)
  {
    v10 = objc_getProperty(self, v8, 16, 1);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 debugDescription];
  WeakRetained = objc_loadWeakRetained(&self->_previousOperation);
  v13 = [v3 stringWithFormat:@"<%@ %p: operationQueue=%@, underlyingQueue=%@, previousOperation=%@>", v6, self, v9, v11, WeakRetained];

  return v13;
}

- (uint64_t)addDependentOperation:(void *)a3 .cold.1(id *a1, void *a2, void *a3, void *a4)
{
  objc_storeWeak(a1, a2);

  objc_sync_exit(a4);
  v9 = OUTLINED_FUNCTION_3_19(v7, v8);

  return [v9 addOperation:a2];
}

@end