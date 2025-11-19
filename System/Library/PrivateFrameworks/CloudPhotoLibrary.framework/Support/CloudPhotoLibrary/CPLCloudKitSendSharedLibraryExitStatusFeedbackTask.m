@interface CPLCloudKitSendSharedLibraryExitStatusFeedbackTask
- (CPLCloudKitSendSharedLibraryExitStatusFeedbackTask)initWithController:(id)a3 scopeIdentifier:(id)a4 cloudKitScope:(id)a5 status:(int64_t)a6 completionHandler:(id)a7;
- (void)runOperations;
@end

@implementation CPLCloudKitSendSharedLibraryExitStatusFeedbackTask

- (CPLCloudKitSendSharedLibraryExitStatusFeedbackTask)initWithController:(id)a3 scopeIdentifier:(id)a4 cloudKitScope:(id)a5 status:(int64_t)a6 completionHandler:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v20.receiver = self;
  v20.super_class = CPLCloudKitSendSharedLibraryExitStatusFeedbackTask;
  v16 = [(CPLCloudKitTransportTask *)&v20 initWithController:a3];
  if (v16)
  {
    v17 = [v15 copy];
    completionHandler = v16->_completionHandler;
    v16->_completionHandler = v17;

    objc_storeStrong(&v16->_scopeIdentifier, a4);
    objc_storeStrong(&v16->_cloudKitScope, a5);
    v16->_status = a6;
  }

  return v16;
}

- (void)runOperations
{
  v11 = 0;
  v3 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v11];
  v4 = v11;
  if (v3)
  {
    v5 = [(CPLCloudKitScope *)self->_cloudKitScope zoneID];
    v6 = +[NSUUID UUID];
    v7 = [v6 UUIDString];

    status = self->_status;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100031640;
    v10[3] = &unk_100273958;
    v10[4] = self;
    v9 = [CPLCKPhotosSharedLibraryOperation sendExitStatusFeedbackWithOperationID:v7 shareID:v5 status:status completionHandler:v10];
    [(CPLCloudKitTransportTask *)self launchOperation:v9 type:CPLCloudKitOperationTypeForScope(self->_cloudKitScope) withContext:0];
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

@end