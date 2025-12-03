@interface CPLCloudKitUpdateTransportScopeTask
- (CPLCloudKitUpdateTransportScopeTask)initWithController:(id)controller cloudKitScope:(id)scope scope:(id)a5 scopeChange:(id)change completionHandler:(id)handler;
- (void)runOperations;
@end

@implementation CPLCloudKitUpdateTransportScopeTask

- (CPLCloudKitUpdateTransportScopeTask)initWithController:(id)controller cloudKitScope:(id)scope scope:(id)a5 scopeChange:(id)change completionHandler:(id)handler
{
  scopeCopy = scope;
  v14 = a5;
  changeCopy = change;
  handlerCopy = handler;
  v21.receiver = self;
  v21.super_class = CPLCloudKitUpdateTransportScopeTask;
  v17 = [(CPLCloudKitTransportTask *)&v21 initWithController:controller];
  if (v17)
  {
    v18 = [handlerCopy copy];
    completionHandler = v17->_completionHandler;
    v17->_completionHandler = v18;

    objc_storeStrong(&v17->_cloudKitScope, scope);
    objc_storeStrong(&v17->_scope, a5);
    objc_storeStrong(&v17->_scopeChange, change);
  }

  return v17;
}

- (void)runOperations
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10006D230;
  v2[3] = &unk_100274018;
  v2[4] = self;
  [(CPLCloudKitTransportTask *)self getUserRecordIDFetchIfNecessaryWithCompletionHandler:v2];
}

@end