@interface HMFDispatchContext
+ (void)blessWithImplicitContext:(id)a3;
- (HMFDispatchContext)initWithQueue:(id)a3 alwaysDispatch:(BOOL)a4;
- (void)assertIsExecuting;
- (void)dealloc;
- (void)performBlock:(id)a3;
@end

@implementation HMFDispatchContext

- (void)dealloc
{
  dispatch_queue_set_specific(self->_queue, self, 0, 0);
  v3.receiver = self;
  v3.super_class = HMFDispatchContext;
  [(HMFDispatchContext *)&v3 dealloc];
}

- (HMFDispatchContext)initWithQueue:(id)a3 alwaysDispatch:(BOOL)a4
{
  v7 = a3;
  v10.receiver = self;
  v10.super_class = HMFDispatchContext;
  v8 = [(HMFDispatchContext *)&v10 init];
  if (v8)
  {
    dispatch_queue_set_specific(v7, v8, v8, 0);
    objc_storeStrong(&v8->_queue, a3);
    v8->_alwaysDispatch = a4;
  }

  return v8;
}

- (void)assertIsExecuting
{
  if (!self || dispatch_get_specific(self) != self)
  {
    _HMFPreconditionFailure(@"[self isExecuting]");
  }
}

- (void)performBlock:(id)a3
{
  v4 = a3;
  if (!self->_alwaysDispatch && dispatch_get_specific(self) == self)
  {
    v6 = self;
    v7 = _HMFThreadLocalAsyncContext();
    v8 = *v7;
    *v7 = v9;
    v4[2](v4);
    CFRelease(*v7);
    *v7 = v8;
  }

  else
  {
    queue = self->_queue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __35__HMFDispatchContext_performBlock___block_invoke;
    v10[3] = &unk_2786E6D68;
    v10[4] = self;
    v11 = v4;
    dispatch_async(queue, v10);
  }
}

void __35__HMFDispatchContext_performBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = _HMFThreadLocalAsyncContext();
  v4 = *v3;
  *v3 = v5;
  (*(*(a1 + 40) + 16))();
  CFRelease(*v3);
  *v3 = v4;
}

+ (void)blessWithImplicitContext:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    _HMFPreconditionFailure(@"queue");
  }

  queue = v3;
  if (!dispatch_queue_get_specific(v3, &implicitContextKey))
  {
    v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x80040803F642BuLL);
    *v4 = queue;
    dispatch_queue_set_specific(queue, &implicitContextKey, v4, HMFImplicitDispatchContextDestroy);
  }
}

@end