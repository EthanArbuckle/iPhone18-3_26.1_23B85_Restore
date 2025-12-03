@interface CPLCloudKitAcquireReschedulerTask
- (CPLCloudKitAcquireReschedulerTask)initWithController:(id)controller completionHandler:(id)handler;
- (void)runOperations;
@end

@implementation CPLCloudKitAcquireReschedulerTask

- (CPLCloudKitAcquireReschedulerTask)initWithController:(id)controller completionHandler:(id)handler
{
  handlerCopy = handler;
  v11.receiver = self;
  v11.super_class = CPLCloudKitAcquireReschedulerTask;
  v7 = [(CPLCloudKitTransportTask *)&v11 initWithController:controller];
  if (v7)
  {
    v8 = [handlerCopy copy];
    completionHandler = v7->_completionHandler;
    v7->_completionHandler = v8;
  }

  return v7;
}

- (void)runOperations
{
  v4 = 0;
  [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v4];
  v3 = v4;
  (*(self->_completionHandler + 2))();
}

@end