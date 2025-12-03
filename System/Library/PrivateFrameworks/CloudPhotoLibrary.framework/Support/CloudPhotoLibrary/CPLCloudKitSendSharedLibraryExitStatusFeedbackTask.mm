@interface CPLCloudKitSendSharedLibraryExitStatusFeedbackTask
- (CPLCloudKitSendSharedLibraryExitStatusFeedbackTask)initWithController:(id)controller scopeIdentifier:(id)identifier cloudKitScope:(id)scope status:(int64_t)status completionHandler:(id)handler;
- (void)runOperations;
@end

@implementation CPLCloudKitSendSharedLibraryExitStatusFeedbackTask

- (CPLCloudKitSendSharedLibraryExitStatusFeedbackTask)initWithController:(id)controller scopeIdentifier:(id)identifier cloudKitScope:(id)scope status:(int64_t)status completionHandler:(id)handler
{
  identifierCopy = identifier;
  scopeCopy = scope;
  handlerCopy = handler;
  v20.receiver = self;
  v20.super_class = CPLCloudKitSendSharedLibraryExitStatusFeedbackTask;
  v16 = [(CPLCloudKitTransportTask *)&v20 initWithController:controller];
  if (v16)
  {
    v17 = [handlerCopy copy];
    completionHandler = v16->_completionHandler;
    v16->_completionHandler = v17;

    objc_storeStrong(&v16->_scopeIdentifier, identifier);
    objc_storeStrong(&v16->_cloudKitScope, scope);
    v16->_status = status;
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
    zoneID = [(CPLCloudKitScope *)self->_cloudKitScope zoneID];
    v6 = +[NSUUID UUID];
    uUIDString = [v6 UUIDString];

    status = self->_status;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100031640;
    v10[3] = &unk_100273958;
    v10[4] = self;
    v9 = [CPLCKPhotosSharedLibraryOperation sendExitStatusFeedbackWithOperationID:uUIDString shareID:zoneID status:status completionHandler:v10];
    [(CPLCloudKitTransportTask *)self launchOperation:v9 type:CPLCloudKitOperationTypeForScope(self->_cloudKitScope) withContext:0];
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

@end