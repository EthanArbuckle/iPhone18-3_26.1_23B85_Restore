@interface _KSCloudKitManager
+ (id)prepareContainerForID:(id)a3;
- (BOOL)isAccountAvailable;
- (_KSCloudKitManager)initWithContainer:(id)a3 recordZoneName:(id)a4;
- (_KSCloudKitManagerDelegate)delegate;
- (id)recordIDForName:(id)a3;
- (id)recordWithName:(id)a3 type:(id)a4 attributes:(id)a5 encryptedFields:(id)a6;
- (id)recordWithName:(id)a3 type:(id)a4 cloudData:(id)a5 attributes:(id)a6 encryptedFields:(id)a7;
- (id)resolveConflicts:(id)a3;
- (void)_checkAccountStatusWithCompletionHandler:(id)a3 withRetryCount:(unint64_t)a4;
- (void)_ckDeleteRecordZoneWithID:(id)a3 completionHandler:(id)a4;
- (void)_ckFetchRecordZoneWithID:(id)a3 completionHandler:(id)a4;
- (void)_ckSaveRecordZone:(id)a3 completionHandler:(id)a4;
- (void)_inconvenientOperation:(id)a3;
- (void)_submitFetchRecordsOperation:(id)a3 withPriority:(unint64_t)a4 changeToken:(id)a5 completionHandler:(id)a6 retryCount:(unint64_t)a7;
- (void)accountStatusDidChange:(id)a3;
- (void)addOperation:(id)a3 priority:(unint64_t)a4;
- (void)copyFieldsFromRecord:(id)a3 toRecord:(id)a4;
- (void)dealloc;
- (void)fetchPublicRecordsWithNames:(id)a3 completionHandler:(id)a4;
- (void)fetchRecordsWithPriority:(unint64_t)a3 changeToken:(id)a4 completionHandler:(id)a5 retryCount:(unint64_t)a6;
- (void)identityUpdated:(id)a3;
- (void)isAccountAvailable;
- (void)queryAccountStatusWithCompletionHandler:(id)a3;
- (void)resetZoneWithDelete:(unint64_t)a3 withCompletionHandler:(id)a4;
- (void)setupAccountDidChange:(BOOL)a3;
- (void)setupRecordZoneWithCompletionHandler:(id)a3 ignoreDefaults:(BOOL)a4;
- (void)setupSubscription;
- (void)shouldDetectAccountChangeWithResponse:(id)a3;
- (void)updateRecords:(id)a3 deleteRecordIDs:(id)a4 withPriority:(unint64_t)a5 completionHandler:(id)a6;
- (void)updateRecords:(id)a3 deleteRecordIDs:(id)a4 withPriority:(unint64_t)a5 completionHandler:(id)a6 retryCount:(unint64_t)a7;
- (void)userIdentityWithResponse:(id)a3;
@end

@implementation _KSCloudKitManager

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = _KSCloudKitManager;
  [(_KSCloudKitManager *)&v4 dealloc];
}

+ (id)prepareContainerForID:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v3];
  }

  else
  {
    v4 = [MEMORY[0x277CBC218] containerWithIdentifier:v3];
  }

  v5 = v4;

  return v5;
}

- (_KSCloudKitManager)initWithContainer:(id)a3 recordZoneName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v51.receiver = self;
  v51.super_class = _KSCloudKitManager;
  v8 = [(_KSCloudKitManager *)&v51 init];
  if (v8)
  {
    v9 = [objc_opt_class() prepareContainerForID:v6];
    cloudKitContainer = v8->_cloudKitContainer;
    v8->_cloudKitContainer = v9;

    v11 = [MEMORY[0x277CCA8D8] mainBundle];
    v12 = [v11 bundleIdentifier];

    if (![v12 length])
    {
      v13 = [MEMORY[0x277CCA8D8] mainBundle];
      v14 = [v13 executablePath];
      v15 = [v14 lastPathComponent];

      v12 = v15;
    }

    [(CKContainer *)v8->_cloudKitContainer setSourceApplicationBundleIdentifier:v12];
    v16 = [(CKContainer *)v8->_cloudKitContainer privateCloudDatabase];
    cloudKitDatabase = v8->_cloudKitDatabase;
    v8->_cloudKitDatabase = v16;

    v18 = [(CKContainer *)v8->_cloudKitContainer publicCloudDatabase];
    publicDatabase = v8->_publicDatabase;
    v8->_publicDatabase = v18;

    if (v7)
    {
      v20 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneName:v7];
    }

    else
    {
      v20 = [MEMORY[0x277CBC5E8] defaultRecordZone];
    }

    recordZone = v8->_recordZone;
    v8->_recordZone = v20;

    v22 = MEMORY[0x277CCACA8];
    v23 = [(_KSCloudKitManager *)v8 recordZone];
    v24 = [v23 zoneID];
    v25 = [v24 zoneName];
    v26 = [v22 stringWithFormat:@"%@-%@", @"KSCKDidSetupRecordZoneProd", v25];
    recordZoneKey = v8->_recordZoneKey;
    v8->_recordZoneKey = v26;

    v28 = MEMORY[0x277CCACA8];
    v29 = [(_KSCloudKitManager *)v8 recordZone];
    v30 = [v29 zoneID];
    v31 = [v30 zoneName];
    v32 = [v28 stringWithFormat:@"%@-%@", @"KSCKSubscriptionProd", v31];
    subscriptionKey = v8->_subscriptionKey;
    v8->_subscriptionKey = v32;

    v34 = MEMORY[0x277CCACA8];
    v35 = [(_KSCloudKitManager *)v8 recordZone];
    v36 = [v35 zoneID];
    v37 = [v36 zoneName];
    v38 = [v34 stringWithFormat:@"%@-%@", @"KSLastKnownUserID", v37];
    lastKnownUserKey = v8->_lastKnownUserKey;
    v8->_lastKnownUserKey = v38;

    v40 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v41 = dispatch_queue_create("com.apple.keyboardservices._ksCloudKitManager.cloudKitWorkQueue", v40);
    ckWorkQueue = v8->_ckWorkQueue;
    v8->_ckWorkQueue = v41;

    v43 = [MEMORY[0x277CCAB98] defaultCenter];
    [v43 addObserver:v8 selector:sel_accountStatusDidChange_ name:*MEMORY[0x277CBBF00] object:0];

    if ([(_KSCloudKitManager *)v8 needsDeviceToDevice])
    {
      v44 = [MEMORY[0x277CCAB98] defaultCenter];
      [v44 addObserver:v8 selector:sel_identityUpdated_ name:*MEMORY[0x277CBBF90] object:0];
    }

    [(_KSCloudKitManager *)v8 setupAccountDidChange:0];
    v45 = objc_alloc_init(_KSRequestThrottle);
    accountChangeThrottle = v8->_accountChangeThrottle;
    v8->_accountChangeThrottle = v45;

    [(_KSRequestThrottle *)v8->_accountChangeThrottle setQueue:v8->_ckWorkQueue];
    [(_KSRequestThrottle *)v8->_accountChangeThrottle setDebugIdentifier:@"account change"];
    v47 = objc_alloc_init(_KSRequestThrottle);
    fetchZoneThrottle = v8->_fetchZoneThrottle;
    v8->_fetchZoneThrottle = v47;

    [(_KSRequestThrottle *)v8->_fetchZoneThrottle setQueue:v8->_ckWorkQueue];
    [(_KSRequestThrottle *)v8->_fetchZoneThrottle setDebugIdentifier:@"fetch zone"];
  }

  v49 = v8;

  return v49;
}

- (void)userIdentityWithResponse:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(_KSCloudKitManager *)self cloudKitContainer];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __47___KSCloudKitManager_userIdentityWithResponse___block_invoke;
    v6[3] = &unk_2797F6548;
    v6[4] = self;
    v7 = v4;
    [v5 fetchUserRecordIDWithCompletionHandler:v6];
  }
}

- (void)setupAccountDidChange:(BOOL)a3
{
  ckWorkQueue = self->_ckWorkQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44___KSCloudKitManager_setupAccountDidChange___block_invoke;
  v4[3] = &unk_2797F65E8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(ckWorkQueue, v4);
}

- (void)accountStatusDidChange:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = KSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[_KSCloudKitManager accountStatusDidChange:]";
    _os_log_impl(&dword_2557E2000, v4, OS_LOG_TYPE_INFO, "%s  Received account change from cloudkit", buf, 0xCu);
  }

  accountChangeThrottle = self->_accountChangeThrottle;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45___KSCloudKitManager_accountStatusDidChange___block_invoke;
  v7[3] = &unk_2797F6610;
  v7[4] = self;
  [(_KSRequestThrottle *)accountChangeThrottle postRequest:v7];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)identityUpdated:(id)a3
{
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"KSCloudKitIdentitiesDidChange" object:self];
}

- (void)shouldDetectAccountChangeWithResponse:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60___KSCloudKitManager_shouldDetectAccountChangeWithResponse___block_invoke;
  v6[3] = &unk_2797F6638;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(_KSCloudKitManager *)self userIdentityWithResponse:v6];
}

- (void)queryAccountStatusWithCompletionHandler:(id)a3
{
  v4 = a3;
  ckWorkQueue = self->_ckWorkQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62___KSCloudKitManager_queryAccountStatusWithCompletionHandler___block_invoke;
  v7[3] = &unk_2797F66D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(ckWorkQueue, v7);
}

- (BOOL)isAccountAvailable
{
  v33 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl() && ([getCloudSettingsManagerClass() sharedCloudSettingsManager], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEnabledForStore:", @"com.apple.cloudsettings.keyboard"), v3, (v4 & 1) == 0))
  {
    v20 = KSCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      LODWORD(v30) = 136315138;
      *(&v30 + 4) = "[_KSCloudKitManager isAccountAvailable]";
      _os_log_impl(&dword_2557E2000, v20, OS_LOG_TYPE_INFO, "%s  iCloud sync is disabled by preferences", &v30, 0xCu);
    }

    v17 = 0;
  }

  else
  {
    *&v30 = 0;
    *(&v30 + 1) = &v30;
    v31 = 0x2020000000;
    v32 = 0;
    v5 = dispatch_group_create();
    dispatch_group_enter(v5);
    ckWorkQueue = self->_ckWorkQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40___KSCloudKitManager_isAccountAvailable__block_invoke;
    block[3] = &unk_2797F6728;
    block[4] = self;
    v25 = &v30;
    v7 = v5;
    v24 = v7;
    dispatch_async(ckWorkQueue, block);
    v8 = dispatch_time(0, 5000000000);
    if (dispatch_group_wait(v7, v8))
    {
      v9 = KSCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(_KSCloudKitManager *)v9 isAccountAvailable:v10];
      }

      v17 = 0;
    }

    else
    {
      v18 = KSCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [MEMORY[0x277CCABB0] numberWithBool:*(*(&v30 + 1) + 24)];
        *buf = 136315394;
        v27 = "[_KSCloudKitManager isAccountAvailable]";
        v28 = 2112;
        v29 = v19;
        _os_log_impl(&dword_2557E2000, v18, OS_LOG_TYPE_INFO, "%s  Account status: %@", buf, 0x16u);
      }

      v17 = *(*(&v30 + 1) + 24);
    }

    _Block_object_dispose(&v30, 8);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v17 & 1;
}

- (void)_checkAccountStatusWithCompletionHandler:(id)a3 withRetryCount:(unint64_t)a4
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_ckWorkQueue);
  v7 = [(_KSCloudKitManager *)self cloudKitContainer];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78___KSCloudKitManager__checkAccountStatusWithCompletionHandler_withRetryCount___block_invoke;
  v9[3] = &unk_2797F67A0;
  v10 = v6;
  v11 = a4;
  v9[4] = self;
  v8 = v6;
  [v7 accountInfoWithCompletionHandler:v9];
}

- (void)setupRecordZoneWithCompletionHandler:(id)a3 ignoreDefaults:(BOOL)a4
{
  v6 = a3;
  v7 = objc_alloc(MEMORY[0x277CBEBD0]);
  v8 = +[_KSUtilities userDefaultsSuiteName];
  v9 = [v7 initWithSuiteName:v8];

  v10 = [(_KSCloudKitManager *)self recordZoneKey];
  v11 = [v9 BOOLForKey:v10];

  if (a4 || !v11)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __74___KSCloudKitManager_setupRecordZoneWithCompletionHandler_ignoreDefaults___block_invoke;
    v19[3] = &unk_2797F67F0;
    v19[4] = self;
    v20 = v9;
    v12 = v6;
    v21 = v12;
    v13 = MEMORY[0x259C41CB0](v19);
    ckWorkQueue = self->_ckWorkQueue;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __74___KSCloudKitManager_setupRecordZoneWithCompletionHandler_ignoreDefaults___block_invoke_3;
    v16[3] = &unk_2797F6868;
    v16[4] = self;
    v17 = v13;
    v18 = v12;
    v15 = v13;
    dispatch_async(ckWorkQueue, v16);
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }
}

- (void)resetZoneWithDelete:(unint64_t)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = objc_alloc(MEMORY[0x277CBEBD0]);
  v8 = +[_KSUtilities userDefaultsSuiteName];
  v9 = [v7 initWithSuiteName:v8];

  ckWorkQueue = self->_ckWorkQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64___KSCloudKitManager_resetZoneWithDelete_withCompletionHandler___block_invoke;
  v13[3] = &unk_2797F68B8;
  v13[4] = self;
  v14 = v9;
  v15 = v6;
  v16 = a3;
  v11 = v6;
  v12 = v9;
  dispatch_async(ckWorkQueue, v13);
}

- (id)recordWithName:(id)a3 type:(id)a4 cloudData:(id)a5 attributes:(id)a6 encryptedFields:(id)a7
{
  v26 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v13 error:0];
  v17 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithCoder:v16];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __79___KSCloudKitManager_recordWithName_type_cloudData_attributes_encryptedFields___block_invoke;
  v24[3] = &unk_2797F68E0;
  v18 = v17;
  v25 = v18;
  [v14 enumerateKeysAndObjectsUsingBlock:v24];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __79___KSCloudKitManager_recordWithName_type_cloudData_attributes_encryptedFields___block_invoke_2;
  v22[3] = &unk_2797F68E0;
  v19 = v18;
  v23 = v19;
  [v15 enumerateKeysAndObjectsUsingBlock:v22];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)recordWithName:(id)a3 type:(id)a4 attributes:(id)a5 encryptedFields:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc(MEMORY[0x277CBC5D0]);
  v15 = [(_KSCloudKitManager *)self recordZone];
  v16 = [v15 zoneID];
  v17 = [v14 initWithRecordName:v10 zoneID:v16];

  v18 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:v11 recordID:v17];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __69___KSCloudKitManager_recordWithName_type_attributes_encryptedFields___block_invoke;
  v25[3] = &unk_2797F68E0;
  v19 = v18;
  v26 = v19;
  [v12 enumerateKeysAndObjectsUsingBlock:v25];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __69___KSCloudKitManager_recordWithName_type_attributes_encryptedFields___block_invoke_2;
  v23[3] = &unk_2797F68E0;
  v20 = v19;
  v24 = v20;
  [v13 enumerateKeysAndObjectsUsingBlock:v23];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)recordIDForName:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CBC5D0]);
  v6 = [(_KSCloudKitManager *)self recordZone];
  v7 = [v6 zoneID];
  v8 = [v5 initWithRecordName:v4 zoneID:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)addOperation:(id)a3 priority:(unint64_t)a4
{
  v6 = a3;
  v10 = v6;
  if (a4)
  {
    if (qos_class_self() <= QOS_CLASS_BACKGROUND)
    {
      v7 = 9;
    }

    else
    {
      v7 = 17;
    }

    [v10 setQualityOfService:v7];
    if (a4 != 2 || qos_class_self() < 0x16)
    {
      goto LABEL_10;
    }
  }

  else
  {
    [v6 setQualityOfService:17];
  }

  v8 = [v10 configuration];
  [v8 setDiscretionaryNetworkBehavior:0];

LABEL_10:
  v9 = [(_KSCloudKitManager *)self cloudKitDatabase];
  [v9 addOperation:v10];
}

- (void)setupSubscription
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = +[_KSUtilities userDefaultsSuiteName];
  v5 = [v3 initWithSuiteName:v4];

  v6 = [(_KSCloudKitManager *)self subscriptionKey];
  v7 = [v5 BOOLForKey:v6];

  if (v7)
  {
    v8 = KSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v15 = "[_KSCloudKitManager setupSubscription]";
      _os_log_impl(&dword_2557E2000, v8, OS_LOG_TYPE_INFO, "%s  already subsribed for zone change", buf, 0xCu);
    }
  }

  else
  {
    ckWorkQueue = self->_ckWorkQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39___KSCloudKitManager_setupSubscription__block_invoke;
    block[3] = &unk_2797F6930;
    block[4] = self;
    v12 = @"KSTextReplacementSubscription";
    v13 = v5;
    dispatch_async(ckWorkQueue, block);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateRecords:(id)a3 deleteRecordIDs:(id)a4 withPriority:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  ckWorkQueue = self->_ckWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83___KSCloudKitManager_updateRecords_deleteRecordIDs_withPriority_completionHandler___block_invoke;
  block[3] = &unk_2797F6958;
  block[4] = self;
  v18 = v10;
  v20 = v12;
  v21 = a5;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(ckWorkQueue, block);
}

- (void)updateRecords:(id)a3 deleteRecordIDs:(id)a4 withPriority:(unint64_t)a5 completionHandler:(id)a6 retryCount:(unint64_t)a7
{
  v36 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  dispatch_assert_queue_V2(self->_ckWorkQueue);
  if (a7 == 2)
  {
    v15 = KSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v35 = "[_KSCloudKitManager updateRecords:deleteRecordIDs:withPriority:completionHandler:retryCount:]";
      _os_log_impl(&dword_2557E2000, v15, OS_LOG_TYPE_INFO, "%s  hit max retry limit, not updating records", buf, 0xCu);
    }

    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:KSCKErrorDomain code:1 userInfo:0];
    v14[2](v14, 0, v12, v16);
  }

  else
  {
    v16 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:v12 recordIDsToDelete:v13];
    [v16 setSavePolicy:0];
    v17 = [MEMORY[0x277CBEB18] array];
    v18 = [MEMORY[0x277CBEB18] array];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __94___KSCloudKitManager_updateRecords_deleteRecordIDs_withPriority_completionHandler_retryCount___block_invoke;
    v31[3] = &unk_2797F6980;
    v19 = v17;
    v32 = v19;
    v20 = v18;
    v33 = v20;
    [v16 setPerRecordCompletionBlock:v31];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __94___KSCloudKitManager_updateRecords_deleteRecordIDs_withPriority_completionHandler_retryCount___block_invoke_127;
    v24[3] = &unk_2797F6A20;
    v24[4] = self;
    v25 = v12;
    v29 = a5;
    v27 = v19;
    v28 = v14;
    v30 = a7;
    v26 = v20;
    v21 = v19;
    v22 = v20;
    [v16 setModifyRecordsCompletionBlock:v24];
    [(_KSCloudKitManager *)self addOperation:v16 priority:a5];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)resolveConflicts:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    v7 = *MEMORY[0x277CBBFE8];
    v8 = *MEMORY[0x277CBBFE0];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:v7];
        v12 = [v10 objectForKeyedSubscript:v8];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v13 = [v11 objectForKey:@"timestamp"];
          v14 = [v12 objectForKey:@"timestamp"];
          v15 = v14;
          if (!(v13 | v14) || ([v14 timeIntervalSinceDate:v13], v16 > 2.0))
          {
            [(_KSCloudKitManager *)self copyFieldsFromRecord:v12 toRecord:v11];
          }

          [v21 addObject:v11];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)copyFieldsFromRecord:(id)a3 toRecord:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = [v5 valuesByKey];
  v8 = [v7 allKeys];

  v9 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v9)
  {
    v10 = *v31;
    do
    {
      v11 = 0;
      do
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v30 + 1) + 8 * v11);
        v13 = [v5 valuesByKey];
        v14 = [v13 objectForKeyedSubscript:v12];
        v15 = [v6 valuesByKey];
        [v15 setObject:v14 forKeyedSubscript:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v9);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = [v5 encryptedValuesByKey];
  v17 = [v16 allKeys];

  v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v18)
  {
    v19 = *v27;
    do
    {
      v20 = 0;
      do
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v26 + 1) + 8 * v20);
        v22 = [v5 encryptedValuesByKey];
        v23 = [v22 objectForKeyedSubscript:v21];
        v24 = [v6 encryptedValuesByKey];
        [v24 setObject:v23 forKeyedSubscript:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v18);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)fetchRecordsWithPriority:(unint64_t)a3 changeToken:(id)a4 completionHandler:(id)a5 retryCount:(unint64_t)a6
{
  v39[1] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v29 = v10;
  v30 = a6;
  v27 = a5;
  v28 = a3;
  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v12 = v11;
LABEL_6:
  v13 = objc_alloc_init(MEMORY[0x277CBC3C8]);
  [v13 setPreviousServerChangeToken:v12];
  v14 = objc_alloc(MEMORY[0x277CBC3B8]);
  v15 = [(_KSCloudKitManager *)self recordZone];
  v16 = [v15 zoneID];
  v39[0] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
  v18 = [(_KSCloudKitManager *)self recordZone];
  v19 = [v18 zoneID];
  v37 = v19;
  v38 = v13;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v21 = [v14 initWithRecordZoneIDs:v17 optionsByRecordZoneID:v20];

  ckWorkQueue = self->_ckWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88___KSCloudKitManager_fetchRecordsWithPriority_changeToken_completionHandler_retryCount___block_invoke;
  block[3] = &unk_2797F69D0;
  block[4] = self;
  v32 = v21;
  v33 = v29;
  v34 = v27;
  v35 = v28;
  v36 = v30;
  v23 = v27;
  v24 = v29;
  v25 = v21;
  dispatch_async(ckWorkQueue, block);

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_submitFetchRecordsOperation:(id)a3 withPriority:(unint64_t)a4 changeToken:(id)a5 completionHandler:(id)a6 retryCount:(unint64_t)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  dispatch_assert_queue_V2(self->_ckWorkQueue);
  v15 = [MEMORY[0x277CBEB18] array];
  v16 = [MEMORY[0x277CBEB18] array];
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = __Block_byref_object_copy_;
  v42[4] = __Block_byref_object_dispose_;
  v17 = v13;
  v43 = v17;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke;
  v40[3] = &unk_2797F6A48;
  v18 = v15;
  v41 = v18;
  [v12 setRecordChangedBlock:v40];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_2;
  v38[3] = &unk_2797F6A70;
  v19 = v16;
  v39 = v19;
  [v12 setRecordWithIDWasDeletedBlock:v38];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_3;
  v33[3] = &unk_2797F6AC0;
  v33[4] = self;
  v37 = v42;
  v20 = v18;
  v34 = v20;
  v21 = v19;
  v35 = v21;
  v22 = v14;
  v36 = v22;
  [v12 setRecordZoneChangeTokensUpdatedBlock:v33];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_2_139;
  v26[3] = &unk_2797F6BD8;
  v26[4] = self;
  v30 = v42;
  v31 = a7;
  v32 = a4;
  v23 = v22;
  v29 = v23;
  v24 = v20;
  v27 = v24;
  v25 = v21;
  v28 = v25;
  [v12 setRecordZoneFetchCompletionBlock:v26];
  [(_KSCloudKitManager *)self addOperation:v12 priority:a4];

  _Block_object_dispose(v42, 8);
}

- (void)fetchPublicRecordsWithNames:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  ckWorkQueue = self->_ckWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68___KSCloudKitManager_fetchPublicRecordsWithNames_completionHandler___block_invoke;
  block[3] = &unk_2797F6C28;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(ckWorkQueue, block);
}

- (void)_inconvenientOperation:(id)a3
{
  v4 = a3;
  [v4 setQueuePriority:-4];
  [(_KSCloudKitManager *)self addOperation:v4 priority:0];
}

- (void)_ckFetchRecordZoneWithID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  fetchZoneThrottle = self->_fetchZoneThrottle;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65___KSCloudKitManager__ckFetchRecordZoneWithID_completionHandler___block_invoke;
  v11[3] = &unk_2797F6C78;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  [(_KSRequestThrottle *)fetchZoneThrottle postRequest:v11];
}

- (void)_ckSaveRecordZone:(id)a3 completionHandler:(id)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x277CBC490]);
  v20[0] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v10 = [v8 initWithRecordZonesToSave:v9 recordZoneIDsToDelete:0];

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __58___KSCloudKitManager__ckSaveRecordZone_completionHandler___block_invoke;
  v17 = &unk_2797F6CA0;
  v18 = v6;
  v19 = v7;
  v11 = v6;
  v12 = v7;
  [v10 setModifyRecordZonesCompletionBlock:&v14];
  [(_KSCloudKitManager *)self _inconvenientOperation:v10, v14, v15, v16, v17];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_ckDeleteRecordZoneWithID:(id)a3 completionHandler:(id)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x277CBC490]);
  v20[0] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v10 = [v8 initWithRecordZonesToSave:0 recordZoneIDsToDelete:v9];

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __66___KSCloudKitManager__ckDeleteRecordZoneWithID_completionHandler___block_invoke;
  v17 = &unk_2797F6CA0;
  v18 = v6;
  v19 = v7;
  v11 = v6;
  v12 = v7;
  [v10 setModifyRecordZonesCompletionBlock:&v14];
  [(_KSCloudKitManager *)self _inconvenientOperation:v10, v14, v15, v16, v17];

  v13 = *MEMORY[0x277D85DE8];
}

- (_KSCloudKitManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)isAccountAvailable
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3(&dword_2557E2000, a1, a3, "%s  Failed to get account status", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)recordWithName:type:cloudData:attributes:encryptedFields:.cold.1()
{
  OUTLINED_FUNCTION_1();
  *v2 = 136315650;
  OUTLINED_FUNCTION_0(v3, v4, v2);
  OUTLINED_FUNCTION_4(&dword_2557E2000, "%s  ERROR creating record: %@; %@", v5, v6);
}

- (void)recordWithName:type:attributes:encryptedFields:.cold.1()
{
  OUTLINED_FUNCTION_1();
  *v2 = 136315650;
  OUTLINED_FUNCTION_0(v3, v4, v2);
  OUTLINED_FUNCTION_4(&dword_2557E2000, "%s  >>> ERROR creating record: %@; %@", v5, v6);
}

- (void)recordIDForName:.cold.1()
{
  OUTLINED_FUNCTION_1();
  *v2 = 136315650;
  OUTLINED_FUNCTION_0(v3, v4, v2);
  OUTLINED_FUNCTION_4(&dword_2557E2000, "%s  >>> ERROR creating recordID: %@; %@", v5, v6);
}

- (void)copyFieldsFromRecord:toRecord:.cold.1()
{
  OUTLINED_FUNCTION_1();
  *v2 = 136315650;
  OUTLINED_FUNCTION_0(v3, v4, v2);
  OUTLINED_FUNCTION_4(&dword_2557E2000, "%s  >>> ERROR copying local to  cloud CKRecord: %@; %@", v5, v6);
}

- (void)fetchRecordsWithPriority:(uint64_t)a3 changeToken:(uint64_t)a4 completionHandler:(uint64_t)a5 retryCount:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3(&dword_2557E2000, a1, a3, "%s  !!!ERROR failed to unarachive change token", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end