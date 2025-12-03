@interface BCCloudKitFetchChangesTransaction
- (BCCloudKitController)cloudKitController;
- (BCCloudKitFetchChangesTransaction)initWithCloudKitController:(id)controller delegate:(id)delegate;
- (void)performWorkWithCompletion:(id)completion;
@end

@implementation BCCloudKitFetchChangesTransaction

- (BCCloudKitFetchChangesTransaction)initWithCloudKitController:(id)controller delegate:(id)delegate
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = BCCloudKitFetchChangesTransaction;
  v7 = [(BCCloudKitTransaction *)&v10 initWithEntityName:@"iBooks" delegate:delegate];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_cloudKitController, controllerCopy);
  }

  return v8;
}

- (void)performWorkWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[BULogUtilities shared];
  verboseLoggingEnabled = [v5 verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v7 = sub_10000DB80();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      entityName = [(BCCloudKitTransaction *)self entityName];
      *buf = 138412290;
      v17 = entityName;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudKitFetchChangesTransaction - Signaling Database to fetch changes for %@\\"", buf, 0xCu);
    }
  }

  cloudKitController = [(BCCloudKitFetchChangesTransaction *)self cloudKitController];
  privateCloudDatabaseController = [cloudKitController privateCloudDatabaseController];

  if (privateCloudDatabaseController)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100044B28;
    v14[3] = &unk_100240CF8;
    v15 = completionCopy;
    [privateCloudDatabaseController fetchChangesWithCompletion:v14];
    v11 = v15;
  }

  else
  {
    v12 = sub_100002660();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001C0610(v12);
    }

    v13 = objc_retainBlock(completionCopy);
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