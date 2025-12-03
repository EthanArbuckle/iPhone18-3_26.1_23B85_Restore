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
  completionCopy = completion;
  v5 = +[BULogUtilities shared];
  verboseLoggingEnabled = [v5 verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v7 = sub_10000DB80();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      entityName = [(BCCloudKitTransaction *)self entityName];
      v10 = 138412290;
      v11 = entityName;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "\\Transaction - Signaling Sync Manager for  %@\\"", &v10, 0xCu);
    }
  }

  syncManager = [(BCCloudKitSyncToCKTransaction *)self syncManager];
  [syncManager startSyncToCKWithCompletion:completionCopy];
}

@end