@interface MRV2NowPlayingControllerOperationQueue
- (BOOL)isInvalidated;
- (MRV2NowPlayingControllerOperationQueue)initWithDispatchQueue:(id)a3;
- (void)addOperationWithBlock:(id)a3;
- (void)invalidate;
@end

@implementation MRV2NowPlayingControllerOperationQueue

- (MRV2NowPlayingControllerOperationQueue)initWithDispatchQueue:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MRV2NowPlayingControllerOperationQueue;
  v6 = [(MRV2NowPlayingControllerOperationQueue *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatchQueue, a3);
    v8 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    queue = v7->_queue;
    v7->_queue = v8;

    [(NSOperationQueue *)v7->_queue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v7->_queue setUnderlyingQueue:v5];
  }

  return v7;
}

- (BOOL)isInvalidated
{
  v2 = self;
  objc_sync_enter(v2);
  invalidated = v2->_invalidated;
  objc_sync_exit(v2);

  return invalidated;
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  obj->_invalidated = 1;
  [(NSOperationQueue *)obj->_queue cancelAllOperations];
  objc_sync_exit(obj);
}

- (void)addOperationWithBlock:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (!v4->_invalidated)
  {
    [(NSOperationQueue *)v4->_queue addOperationWithBlock:v5];
  }

  objc_sync_exit(v4);
}

@end