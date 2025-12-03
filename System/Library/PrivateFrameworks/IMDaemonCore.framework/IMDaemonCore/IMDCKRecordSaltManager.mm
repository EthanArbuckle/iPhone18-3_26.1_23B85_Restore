@interface IMDCKRecordSaltManager
+ (id)sharedInstance;
- (IMDCKRecordSaltManager)init;
- (id)_container;
- (void)_fetchLatestSaltFromCloudKitAndPersistWithCompletion:(id)completion;
- (void)_scheduleOperation:(id)operation;
- (void)deleteDeDupeRecordZone;
- (void)fetchLatestRecordKeyFromCKAndCreateIfKeyDoesNotExistWithCompletion:(id)completion forceFetch:(BOOL)fetch;
@end

@implementation IMDCKRecordSaltManager

+ (id)sharedInstance
{
  if (qword_281421168 != -1)
  {
    sub_22B7D65AC();
  }

  v3 = qword_281420FE8;

  return v3;
}

- (IMDCKRecordSaltManager)init
{
  v7.receiver = self;
  v7.super_class = IMDCKRecordSaltManager;
  v2 = [(IMDCKRecordSaltManager *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.private.Messages.IMDCKRecordSaltManager", 0);
    ckQueue = v2->_ckQueue;
    v2->_ckQueue = v3;

    cachedSalt = v2->_cachedSalt;
    v2->_cachedSalt = 0;
  }

  return v2;
}

- (void)_scheduleOperation:(id)operation
{
  operationCopy = operation;
  v5 = +[IMDCKDatabaseManager sharedInstance];
  truthDatabase = [v5 truthDatabase];
  [truthDatabase addOperation:operationCopy];
}

- (id)_container
{
  v2 = +[IMDCKDatabaseManager sharedInstance];
  truthContainer = [v2 truthContainer];

  return truthContainer;
}

- (void)_fetchLatestSaltFromCloudKitAndPersistWithCompletion:(id)completion
{
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Starting salt fetch on internal queue", buf, 2u);
    }
  }

  _container = [(IMDCKRecordSaltManager *)self _container];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22B5FEB3C;
  v8[3] = &unk_278706230;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [_container fetchUserRecordIDWithCompletionHandler:v8];
}

- (void)fetchLatestRecordKeyFromCKAndCreateIfKeyDoesNotExistWithCompletion:(id)completion forceFetch:(BOOL)fetch
{
  fetchCopy = fetch;
  v29 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  _CKUtilitiesSharedInstance = [(IMDCKRecordSaltManager *)self _CKUtilitiesSharedInstance];
  cloudKitSyncingEnabled = [_CKUtilitiesSharedInstance cloudKitSyncingEnabled];

  mEMORY[0x277D1ACB8] = [MEMORY[0x277D1ACB8] sharedInstance];
  isUnderFirstDataProtectionLock = [mEMORY[0x277D1ACB8] isUnderFirstDataProtectionLock];

  v11 = IMOSLoggingEnabled();
  if ((cloudKitSyncingEnabled | fetchCopy) != 1 || isUnderFirstDataProtectionLock)
  {
    if (v11)
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = @"NO";
        if (cloudKitSyncingEnabled)
        {
          v17 = @"YES";
        }

        else
        {
          v17 = @"NO";
        }

        if (isUnderFirstDataProtectionLock)
        {
          v16 = @"YES";
        }

        *buf = 138412546;
        v26 = v17;
        v27 = 2112;
        v28 = v16;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "CloudKit Salt not fetched: syncing enabled %@ first unlock %@", buf, 0x16u);
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B5FF1F0;
    block[3] = &unk_278706258;
    v23 = completionCopy;
    v24 = isUnderFirstDataProtectionLock;
    v18 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Request to fetch salt", buf, 2u);
      }
    }

    ckQueue = [(IMDCKRecordSaltManager *)self ckQueue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_22B5FF290;
    v20[3] = &unk_278703808;
    v20[4] = self;
    v21 = completionCopy;
    v14 = completionCopy;
    dispatch_async(ckQueue, v20);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)deleteDeDupeRecordZone
{
  [(IMDCKRecordSaltManager *)self clearLocalSyncState];
  v2 = +[IMDRecordZoneManager sharedInstance];
  [v2 deleteDeDupeSaltZone];
}

@end