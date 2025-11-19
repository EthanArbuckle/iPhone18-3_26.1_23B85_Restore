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
  v4 = a3;
  v5 = +[BULogUtilities shared];
  v6 = [v5 verboseLoggingEnabled];

  if (v6)
  {
    v7 = sub_10000DB80();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(BCCloudKitTransaction *)self entityName];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "\\Transaction - Signaling Sync Manager for  %@\\"", &v10, 0xCu);
    }
  }

  v9 = [(BCCloudKitSyncToCKTransaction *)self syncManager];
  [v9 startSyncToCKWithCompletion:v4];
}

@end