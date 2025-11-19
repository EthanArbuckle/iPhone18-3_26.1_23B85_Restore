@interface CPLCloudKitUpdateTransportScopeTask
- (CPLCloudKitUpdateTransportScopeTask)initWithController:(id)a3 cloudKitScope:(id)a4 scope:(id)a5 scopeChange:(id)a6 completionHandler:(id)a7;
- (void)runOperations;
@end

@implementation CPLCloudKitUpdateTransportScopeTask

- (CPLCloudKitUpdateTransportScopeTask)initWithController:(id)a3 cloudKitScope:(id)a4 scope:(id)a5 scopeChange:(id)a6 completionHandler:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = CPLCloudKitUpdateTransportScopeTask;
  v17 = [(CPLCloudKitTransportTask *)&v21 initWithController:a3];
  if (v17)
  {
    v18 = [v16 copy];
    completionHandler = v17->_completionHandler;
    v17->_completionHandler = v18;

    objc_storeStrong(&v17->_cloudKitScope, a4);
    objc_storeStrong(&v17->_scope, a5);
    objc_storeStrong(&v17->_scopeChange, a6);
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