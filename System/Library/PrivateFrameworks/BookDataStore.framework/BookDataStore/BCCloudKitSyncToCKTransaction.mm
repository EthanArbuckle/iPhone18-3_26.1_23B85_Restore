@interface BCCloudKitSyncToCKTransaction
- (BCCloudKitSyncToCKTransaction)initWithEntityName:(id)a3 syncManager:(id)a4 delegate:(id)a5;
- (void)performWorkWithCompletion:(id)a3;
@end

@implementation BCCloudKitSyncToCKTransaction

- (BCCloudKitSyncToCKTransaction)initWithEntityName:(id)a3 syncManager:(id)a4 delegate:(id)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = BCCloudKitSyncToCKTransaction;
  v10 = [(BCCloudKitTransaction *)&v13 initWithEntityName:a3 delegate:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_syncManager, a4);
  }

  return v11;
}

- (void)performWorkWithCompletion:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E698F550];
  v5 = a3;
  v6 = [v4 shared];
  v7 = [v6 verboseLoggingEnabled];

  if (v7)
  {
    v8 = BDSCloudKitDevelopmentLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(BCCloudKitTransaction *)self entityName];
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_1E45E0000, v8, OS_LOG_TYPE_DEFAULT, "\\Transaction - Signaling Sync Manager for  %@\\"", &v12, 0xCu);
    }
  }

  v10 = [(BCCloudKitSyncToCKTransaction *)self syncManager];
  [v10 startSyncToCKWithCompletion:v5];

  v11 = *MEMORY[0x1E69E9840];
}

@end