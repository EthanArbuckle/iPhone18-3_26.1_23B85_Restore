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
  v19 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
  verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v7 = BDSCloudKitDevelopmentLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      entityName = [(BCCloudKitTransaction *)self entityName];
      *buf = 138412290;
      v18 = entityName;
      _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudKitFetchChangesTransaction - Signaling Database to fetch changes for %@\\"", buf, 0xCu);
    }
  }

  cloudKitController = [(BCCloudKitFetchChangesTransaction *)self cloudKitController];
  privateCloudDatabaseController = [cloudKitController privateCloudDatabaseController];

  if (privateCloudDatabaseController)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E46002A8;
    v15[3] = &unk_1E87597F8;
    v16 = completionCopy;
    [privateCloudDatabaseController fetchChangesWithCompletion:v15];
    v11 = v16;
  }

  else
  {
    v12 = BDSCloudKitLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1E470445C(v12);
    }

    v13 = _Block_copy(completionCopy);
    v11 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (BCCloudKitController)cloudKitController
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudKitController);

  return WeakRetained;
}

@end