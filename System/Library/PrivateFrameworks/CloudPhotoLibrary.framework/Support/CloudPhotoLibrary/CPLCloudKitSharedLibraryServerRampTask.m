@interface CPLCloudKitSharedLibraryServerRampTask
- (CPLCloudKitSharedLibraryServerRampTask)initWithController:(id)a3 completionHandler:(id)a4;
- (void)runOperations;
@end

@implementation CPLCloudKitSharedLibraryServerRampTask

- (CPLCloudKitSharedLibraryServerRampTask)initWithController:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = CPLCloudKitSharedLibraryServerRampTask;
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
  v7 = 0;
  v3 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v7];
  v4 = v7;
  if (v3)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000B30E8;
    v6[3] = &unk_100277130;
    v6[4] = self;
    v5 = [CPLCKPhotosSharedLibraryOperation silentMoverServerRampOperationWithOperationID:0 completionHandler:v6];
    [(CPLCloudKitTransportTask *)self launchOperation:v5 type:1 withContext:0];
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

@end