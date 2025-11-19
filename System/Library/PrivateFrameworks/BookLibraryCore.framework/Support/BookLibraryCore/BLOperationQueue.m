@interface BLOperationQueue
- (BLOperationQueue)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (off_10013E040 == a6)
  {
    if (self->_queue == v11 && [v10 isEqualToString:@"operationCount"])
    {
      v13 = +[NSNotificationCenter defaultCenter];
      [v13 postNotificationName:@"BLOperationQueueOperationCountChangedNotification" object:self];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = BLOperationQueue;
    [(BLOperationQueue *)&v14 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

@end