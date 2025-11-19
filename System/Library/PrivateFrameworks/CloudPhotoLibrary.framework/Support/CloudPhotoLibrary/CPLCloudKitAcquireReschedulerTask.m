@interface CPLCloudKitAcquireReschedulerTask
- (CPLCloudKitAcquireReschedulerTask)initWithController:(id)a3 completionHandler:(id)a4;
- (void)runOperations;
@end

@implementation CPLCloudKitAcquireReschedulerTask

- (CPLCloudKitAcquireReschedulerTask)initWithController:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = CPLCloudKitAcquireReschedulerTask;
  v7 = [(CPLCloudKitTransportTask *)&v11 initWithController:a3];
  if (v7)
  {
    v8 = [v6 copy];
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