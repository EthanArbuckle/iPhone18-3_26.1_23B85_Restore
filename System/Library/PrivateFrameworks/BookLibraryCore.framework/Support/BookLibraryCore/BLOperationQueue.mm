@interface BLOperationQueue
- (BLOperationQueue)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation BLOperationQueue

- (BLOperationQueue)init
{
  v6.receiver = self;
  v6.super_class = BLOperationQueue;
  v2 = [(BLOperationQueue *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSOperationQueue);
    queue = v2->_queue;
    v2->_queue = v3;

    [(NSOperationQueue *)v2->_queue setMaxConcurrentOperationCount:3];
    [(NSOperationQueue *)v2->_queue addObserver:v2 forKeyPath:@"operationCount" options:0 context:off_10013E040];
  }

  return v2;
}

- (void)dealloc
{
  [(NSOperationQueue *)self->_queue removeObserver:self forKeyPath:@"operationCount" context:off_10013E040];
  [(NSOperationQueue *)self->_queue cancelAllOperations];
  v3.receiver = self;
  v3.super_class = BLOperationQueue;
  [(BLOperationQueue *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (off_10013E040 == context)
  {
    if (self->_queue == objectCopy && [pathCopy isEqualToString:@"operationCount"])
    {
      v13 = +[NSNotificationCenter defaultCenter];
      [v13 postNotificationName:@"BLOperationQueueOperationCountChangedNotification" object:self];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = BLOperationQueue;
    [(BLOperationQueue *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

@end