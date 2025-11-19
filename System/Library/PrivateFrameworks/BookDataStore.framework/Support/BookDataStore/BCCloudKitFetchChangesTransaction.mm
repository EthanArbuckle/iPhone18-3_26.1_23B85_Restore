@interface BCCloudKitFetchChangesTransaction
- (BCCloudKitController)cloudKitController;
- (BCCloudKitFetchChangesTransaction)initWithCloudKitController:(id)a3 delegate:(id)a4;
- (void)performWorkWithCompletion:(id)a3;
@end

@implementation BCCloudKitFetchChangesTransaction

- (BCCloudKitFetchChangesTransaction)initWithCloudKitController:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = BCCloudKitFetchChangesTransaction;
  v7 = [(BCCloudKitTransaction *)&v10 initWithEntityName:@"iBooks" delegate:a4];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_cloudKitController, v6);
  }

  return v8;
}

- (void)performWorkWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[BULogUtilities shared];
  v6 = [v5 verboseLoggingEnabled];

  if (v6)
  {
    v7 = sub_10000DB80();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(BCCloudKitTransaction *)self entityName];
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudKitFetchChangesTransaction - Signaling Database to fetch changes for %@\\"", buf, 0xCu);
    }
  }

  v9 = [(BCCloudKitFetchChangesTransaction *)self cloudKitController];
  v10 = [v9 privateCloudDatabaseController];

  if (v10)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100044B28;
    v14[3] = &unk_100240CF8;
    v15 = v4;
    [v10 fetchChangesWithCompletion:v14];
    v11 = v15;
  }

  else
  {
    v12 = sub_100002660();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001C0610(v12);
    }

    v13 = objc_retainBlock(v4);
    v11 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13);
    }
  }
}

- (BCCloudKitController)cloudKitController
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudKitController);

  return WeakRetained;
}

@end