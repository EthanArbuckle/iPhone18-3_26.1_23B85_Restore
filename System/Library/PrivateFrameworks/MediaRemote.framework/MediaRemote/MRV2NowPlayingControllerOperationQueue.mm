@interface MRV2NowPlayingControllerOperationQueue
- (BOOL)isInvalidated;
- (MRV2NowPlayingControllerOperationQueue)initWithDispatchQueue:(id)queue;
- (void)addOperationWithBlock:(id)block;
- (void)invalidate;
@end

@implementation MRV2NowPlayingControllerOperationQueue

- (MRV2NowPlayingControllerOperationQueue)initWithDispatchQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = MRV2NowPlayingControllerOperationQueue;
  v6 = [(MRV2NowPlayingControllerOperationQueue *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatchQueue, queue);
    v8 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    queue = v7->_queue;
    v7->_queue = v8;

    [(NSOperationQueue *)v7->_queue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v7->_queue setUnderlyingQueue:queueCopy];
  }

  return v7;
}

- (BOOL)isInvalidated
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  invalidated = selfCopy->_invalidated;
  objc_sync_exit(selfCopy);

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

- (void)addOperationWithBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_invalidated)
  {
    [(NSOperationQueue *)selfCopy->_queue addOperationWithBlock:blockCopy];
  }

  objc_sync_exit(selfCopy);
}

@end