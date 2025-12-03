@interface BCCloudKitSyncToCKTransaction
- (BCCloudKitSyncToCKTransaction)initWithEntityName:(id)name syncManager:(id)manager delegate:(id)delegate;
- (void)performWorkWithCompletion:(id)completion;
@end

@implementation BCCloudKitSyncToCKTransaction

- (BCCloudKitSyncToCKTransaction)initWithEntityName:(id)name syncManager:(id)manager delegate:(id)delegate
{
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = BCCloudKitSyncToCKTransaction;
  v10 = [(BCCloudKitTransaction *)&v13 initWithEntityName:name delegate:delegate];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_syncManager, manager);
  }

  return v11;
}

- (void)performWorkWithCompletion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E698F550];
  completionCopy = completion;
  shared = [v4 shared];
  verboseLoggingEnabled = [shared verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v8 = BDSCloudKitDevelopmentLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      entityName = [(BCCloudKitTransaction *)self entityName];
      v12 = 138412290;
      v13 = entityName;
      _os_log_impl(&dword_1E45E0000, v8, OS_LOG_TYPE_DEFAULT, "\\Transaction - Signaling Sync Manager for  %@\\"", &v12, 0xCu);
    }
  }

  syncManager = [(BCCloudKitSyncToCKTransaction *)self syncManager];
  [syncManager startSyncToCKWithCompletion:completionCopy];

  v11 = *MEMORY[0x1E69E9840];
}

@end