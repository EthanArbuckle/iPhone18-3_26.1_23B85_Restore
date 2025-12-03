@interface _KSCloudKitManager
+ (id)prepareContainerForID:(id)d;
- (BOOL)isAccountAvailable;
- (_KSCloudKitManager)initWithContainer:(id)container recordZoneName:(id)name;
- (_KSCloudKitManagerDelegate)delegate;
- (id)recordIDForName:(id)name;
- (id)recordWithName:(id)name type:(id)type attributes:(id)attributes encryptedFields:(id)fields;
- (id)recordWithName:(id)name type:(id)type cloudData:(id)data attributes:(id)attributes encryptedFields:(id)fields;
- (id)resolveConflicts:(id)conflicts;
- (void)_checkAccountStatusWithCompletionHandler:(id)handler withRetryCount:(unint64_t)count;
- (void)_ckDeleteRecordZoneWithID:(id)d completionHandler:(id)handler;
- (void)_ckFetchRecordZoneWithID:(id)d completionHandler:(id)handler;
- (void)_ckSaveRecordZone:(id)zone completionHandler:(id)handler;
- (void)_inconvenientOperation:(id)operation;
- (void)_submitFetchRecordsOperation:(id)operation withPriority:(unint64_t)priority changeToken:(id)token completionHandler:(id)handler retryCount:(unint64_t)count;
- (void)accountStatusDidChange:(id)change;
- (void)addOperation:(id)operation priority:(unint64_t)priority;
- (void)copyFieldsFromRecord:(id)record toRecord:(id)toRecord;
- (void)dealloc;
- (void)fetchPublicRecordsWithNames:(id)names completionHandler:(id)handler;
- (void)fetchRecordsWithPriority:(unint64_t)priority changeToken:(id)token completionHandler:(id)handler retryCount:(unint64_t)count;
- (void)identityUpdated:(id)updated;
- (void)isAccountAvailable;
- (void)queryAccountStatusWithCompletionHandler:(id)handler;
- (void)resetZoneWithDelete:(unint64_t)delete withCompletionHandler:(id)handler;
- (void)setupAccountDidChange:(BOOL)change;
- (void)setupRecordZoneWithCompletionHandler:(id)handler ignoreDefaults:(BOOL)defaults;
- (void)setupSubscription;
- (void)shouldDetectAccountChangeWithResponse:(id)response;
- (void)updateRecords:(id)records deleteRecordIDs:(id)ds withPriority:(unint64_t)priority completionHandler:(id)handler;
- (void)updateRecords:(id)records deleteRecordIDs:(id)ds withPriority:(unint64_t)priority completionHandler:(id)handler retryCount:(unint64_t)count;
- (void)userIdentityWithResponse:(id)response;
@end

@implementation _KSCloudKitManager

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = _KSCloudKitManager;
  [(_KSCloudKitManager *)&v4 dealloc];
}

+ (id)prepareContainerForID:(id)d
{
  dCopy = d;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:dCopy];
  }

  else
  {
    v4 = [MEMORY[0x277CBC218] containerWithIdentifier:dCopy];
  }

  v5 = v4;

  return v5;
}

- (_KSCloudKitManager)initWithContainer:(id)container recordZoneName:(id)name
{
  containerCopy = container;
  nameCopy = name;
  v51.receiver = self;
  v51.super_class = _KSCloudKitManager;
  v8 = [(_KSCloudKitManager *)&v51 init];
  if (v8)
  {
    v9 = [objc_opt_class() prepareContainerForID:containerCopy];
    cloudKitContainer = v8->_cloudKitContainer;
    v8->_cloudKitContainer = v9;

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    if (![bundleIdentifier length])
    {
      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      executablePath = [mainBundle2 executablePath];
      lastPathComponent = [executablePath lastPathComponent];

      bundleIdentifier = lastPathComponent;
    }

    [(CKContainer *)v8->_cloudKitContainer setSourceApplicationBundleIdentifier:bundleIdentifier];
    privateCloudDatabase = [(CKContainer *)v8->_cloudKitContainer privateCloudDatabase];
    cloudKitDatabase = v8->_cloudKitDatabase;
    v8->_cloudKitDatabase = privateCloudDatabase;

    publicCloudDatabase = [(CKContainer *)v8->_cloudKitContainer publicCloudDatabase];
    publicDatabase = v8->_publicDatabase;
    v8->_publicDatabase = publicCloudDatabase;

    if (nameCopy)
    {
      defaultRecordZone = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneName:nameCopy];
    }

    else
    {
      defaultRecordZone = [MEMORY[0x277CBC5E8] defaultRecordZone];
    }

    recordZone = v8->_recordZone;
    v8->_recordZone = defaultRecordZone;

    v22 = MEMORY[0x277CCACA8];
    recordZone = [(_KSCloudKitManager *)v8 recordZone];
    zoneID = [recordZone zoneID];
    zoneName = [zoneID zoneName];
    v26 = [v22 stringWithFormat:@"%@-%@", @"KSCKDidSetupRecordZoneProd", zoneName];
    recordZoneKey = v8->_recordZoneKey;
    v8->_recordZoneKey = v26;

    v28 = MEMORY[0x277CCACA8];
    recordZone2 = [(_KSCloudKitManager *)v8 recordZone];
    zoneID2 = [recordZone2 zoneID];
    zoneName2 = [zoneID2 zoneName];
    v32 = [v28 stringWithFormat:@"%@-%@", @"KSCKSubscriptionProd", zoneName2];
    subscriptionKey = v8->_subscriptionKey;
    v8->_subscriptionKey = v32;

    v34 = MEMORY[0x277CCACA8];
    recordZone3 = [(_KSCloudKitManager *)v8 recordZone];
    zoneID3 = [recordZone3 zoneID];
    zoneName3 = [zoneID3 zoneName];
    v38 = [v34 stringWithFormat:@"%@-%@", @"KSLastKnownUserID", zoneName3];
    lastKnownUserKey = v8->_lastKnownUserKey;
    v8->_lastKnownUserKey = v38;

    v40 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v41 = dispatch_queue_create("com.apple.keyboardservices._ksCloudKitManager.cloudKitWorkQueue", v40);
    ckWorkQueue = v8->_ckWorkQueue;
    v8->_ckWorkQueue = v41;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel_accountStatusDidChange_ name:*MEMORY[0x277CBBF00] object:0];

    if ([(_KSCloudKitManager *)v8 needsDeviceToDevice])
    {
      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 addObserver:v8 selector:sel_identityUpdated_ name:*MEMORY[0x277CBBF90] object:0];
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

- (void)userIdentityWithResponse:(id)response
{
  responseCopy = response;
  if (responseCopy)
  {
    cloudKitContainer = [(_KSCloudKitManager *)self cloudKitContainer];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __47___KSCloudKitManager_userIdentityWithResponse___block_invoke;
    v6[3] = &unk_2797F6548;
    v6[4] = self;
    v7 = responseCopy;
    [cloudKitContainer fetchUserRecordIDWithCompletionHandler:v6];
  }
}

- (void)setupAccountDidChange:(BOOL)change
{
  ckWorkQueue = self->_ckWorkQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44___KSCloudKitManager_setupAccountDidChange___block_invoke;
  v4[3] = &unk_2797F65E8;
  v4[4] = self;
  changeCopy = change;
  dispatch_async(ckWorkQueue, v4);
}

- (void)accountStatusDidChange:(id)change
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

- (void)identityUpdated:(id)updated
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"KSCloudKitIdentitiesDidChange" object:self];
}

- (void)shouldDetectAccountChangeWithResponse:(id)response
{
  responseCopy = response;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60___KSCloudKitManager_shouldDetectAccountChangeWithResponse___block_invoke;
  v6[3] = &unk_2797F6638;
  v6[4] = self;
  v7 = responseCopy;
  v5 = responseCopy;
  [(_KSCloudKitManager *)self userIdentityWithResponse:v6];
}

- (void)queryAccountStatusWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  ckWorkQueue = self->_ckWorkQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62___KSCloudKitManager_queryAccountStatusWithCompletionHandler___block_invoke;
  v7[3] = &unk_2797F66D8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
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

- (void)_checkAccountStatusWithCompletionHandler:(id)handler withRetryCount:(unint64_t)count
{
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_ckWorkQueue);
  cloudKitContainer = [(_KSCloudKitManager *)self cloudKitContainer];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78___KSCloudKitManager__checkAccountStatusWithCompletionHandler_withRetryCount___block_invoke;
  v9[3] = &unk_2797F67A0;
  v10 = handlerCopy;
  countCopy = count;
  v9[4] = self;
  v8 = handlerCopy;
  [cloudKitContainer accountInfoWithCompletionHandler:v9];
}

- (void)setupRecordZoneWithCompletionHandler:(id)handler ignoreDefaults:(BOOL)defaults
{
  handlerCopy = handler;
  v7 = objc_alloc(MEMORY[0x277CBEBD0]);
  v8 = +[_KSUtilities userDefaultsSuiteName];
  v9 = [v7 initWithSuiteName:v8];

  recordZoneKey = [(_KSCloudKitManager *)self recordZoneKey];
  v11 = [v9 BOOLForKey:recordZoneKey];

  if (defaults || !v11)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __74___KSCloudKitManager_setupRecordZoneWithCompletionHandler_ignoreDefaults___block_invoke;
    v19[3] = &unk_2797F67F0;
    v19[4] = self;
    v20 = v9;
    v12 = handlerCopy;
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
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)resetZoneWithDelete:(unint64_t)delete withCompletionHandler:(id)handler
{
  handlerCopy = handler;
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
  v15 = handlerCopy;
  deleteCopy = delete;
  v11 = handlerCopy;
  v12 = v9;
  dispatch_async(ckWorkQueue, v13);
}

- (id)recordWithName:(id)name type:(id)type cloudData:(id)data attributes:(id)attributes encryptedFields:(id)fields
{
  v26 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  typeCopy = type;
  dataCopy = data;
  attributesCopy = attributes;
  fieldsCopy = fields;
  v16 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:dataCopy error:0];
  v17 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithCoder:v16];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __79___KSCloudKitManager_recordWithName_type_cloudData_attributes_encryptedFields___block_invoke;
  v24[3] = &unk_2797F68E0;
  v18 = v17;
  v25 = v18;
  [attributesCopy enumerateKeysAndObjectsUsingBlock:v24];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __79___KSCloudKitManager_recordWithName_type_cloudData_attributes_encryptedFields___block_invoke_2;
  v22[3] = &unk_2797F68E0;
  v19 = v18;
  v23 = v19;
  [fieldsCopy enumerateKeysAndObjectsUsingBlock:v22];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)recordWithName:(id)name type:(id)type attributes:(id)attributes encryptedFields:(id)fields
{
  v27 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  typeCopy = type;
  attributesCopy = attributes;
  fieldsCopy = fields;
  v14 = objc_alloc(MEMORY[0x277CBC5D0]);
  recordZone = [(_KSCloudKitManager *)self recordZone];
  zoneID = [recordZone zoneID];
  v17 = [v14 initWithRecordName:nameCopy zoneID:zoneID];

  v18 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:typeCopy recordID:v17];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __69___KSCloudKitManager_recordWithName_type_attributes_encryptedFields___block_invoke;
  v25[3] = &unk_2797F68E0;
  v19 = v18;
  v26 = v19;
  [attributesCopy enumerateKeysAndObjectsUsingBlock:v25];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __69___KSCloudKitManager_recordWithName_type_attributes_encryptedFields___block_invoke_2;
  v23[3] = &unk_2797F68E0;
  v20 = v19;
  v24 = v20;
  [fieldsCopy enumerateKeysAndObjectsUsingBlock:v23];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)recordIDForName:(id)name
{
  v11 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = objc_alloc(MEMORY[0x277CBC5D0]);
  recordZone = [(_KSCloudKitManager *)self recordZone];
  zoneID = [recordZone zoneID];
  v8 = [v5 initWithRecordName:nameCopy zoneID:zoneID];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)addOperation:(id)operation priority:(unint64_t)priority
{
  operationCopy = operation;
  v10 = operationCopy;
  if (priority)
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
    if (priority != 2 || qos_class_self() < 0x16)
    {
      goto LABEL_10;
    }
  }

  else
  {
    [operationCopy setQualityOfService:17];
  }

  configuration = [v10 configuration];
  [configuration setDiscretionaryNetworkBehavior:0];

LABEL_10:
  cloudKitDatabase = [(_KSCloudKitManager *)self cloudKitDatabase];
  [cloudKitDatabase addOperation:v10];
}

- (void)setupSubscription
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = +[_KSUtilities userDefaultsSuiteName];
  v5 = [v3 initWithSuiteName:v4];

  subscriptionKey = [(_KSCloudKitManager *)self subscriptionKey];
  v7 = [v5 BOOLForKey:subscriptionKey];

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

- (void)updateRecords:(id)records deleteRecordIDs:(id)ds withPriority:(unint64_t)priority completionHandler:(id)handler
{
  recordsCopy = records;
  dsCopy = ds;
  handlerCopy = handler;
  ckWorkQueue = self->_ckWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83___KSCloudKitManager_updateRecords_deleteRecordIDs_withPriority_completionHandler___block_invoke;
  block[3] = &unk_2797F6958;
  block[4] = self;
  v18 = recordsCopy;
  v20 = handlerCopy;
  priorityCopy = priority;
  v19 = dsCopy;
  v14 = handlerCopy;
  v15 = dsCopy;
  v16 = recordsCopy;
  dispatch_async(ckWorkQueue, block);
}

- (void)updateRecords:(id)records deleteRecordIDs:(id)ds withPriority:(unint64_t)priority completionHandler:(id)handler retryCount:(unint64_t)count
{
  v36 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  dsCopy = ds;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_ckWorkQueue);
  if (count == 2)
  {
    v15 = KSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v35 = "[_KSCloudKitManager updateRecords:deleteRecordIDs:withPriority:completionHandler:retryCount:]";
      _os_log_impl(&dword_2557E2000, v15, OS_LOG_TYPE_INFO, "%s  hit max retry limit, not updating records", buf, 0xCu);
    }

    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:KSCKErrorDomain code:1 userInfo:0];
    handlerCopy[2](handlerCopy, 0, recordsCopy, v16);
  }

  else
  {
    v16 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:recordsCopy recordIDsToDelete:dsCopy];
    [v16 setSavePolicy:0];
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __94___KSCloudKitManager_updateRecords_deleteRecordIDs_withPriority_completionHandler_retryCount___block_invoke;
    v31[3] = &unk_2797F6980;
    v19 = array;
    v32 = v19;
    v20 = array2;
    v33 = v20;
    [v16 setPerRecordCompletionBlock:v31];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __94___KSCloudKitManager_updateRecords_deleteRecordIDs_withPriority_completionHandler_retryCount___block_invoke_127;
    v24[3] = &unk_2797F6A20;
    v24[4] = self;
    v25 = recordsCopy;
    priorityCopy = priority;
    v27 = v19;
    v28 = handlerCopy;
    countCopy = count;
    v26 = v20;
    v21 = v19;
    v22 = v20;
    [v16 setModifyRecordsCompletionBlock:v24];
    [(_KSCloudKitManager *)self addOperation:v16 priority:priority];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)resolveConflicts:(id)conflicts
{
  v27 = *MEMORY[0x277D85DE8];
  conflictsCopy = conflicts;
  v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(conflictsCopy, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = conflictsCopy;
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

- (void)copyFieldsFromRecord:(id)record toRecord:(id)toRecord
{
  v36 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  toRecordCopy = toRecord;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  valuesByKey = [recordCopy valuesByKey];
  allKeys = [valuesByKey allKeys];

  v9 = [allKeys countByEnumeratingWithState:&v30 objects:v35 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v30 + 1) + 8 * v11);
        valuesByKey2 = [recordCopy valuesByKey];
        v14 = [valuesByKey2 objectForKeyedSubscript:v12];
        valuesByKey3 = [toRecordCopy valuesByKey];
        [valuesByKey3 setObject:v14 forKeyedSubscript:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [allKeys countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v9);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  encryptedValuesByKey = [recordCopy encryptedValuesByKey];
  allKeys2 = [encryptedValuesByKey allKeys];

  v18 = [allKeys2 countByEnumeratingWithState:&v26 objects:v34 count:16];
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
          objc_enumerationMutation(allKeys2);
        }

        v21 = *(*(&v26 + 1) + 8 * v20);
        encryptedValuesByKey2 = [recordCopy encryptedValuesByKey];
        v23 = [encryptedValuesByKey2 objectForKeyedSubscript:v21];
        encryptedValuesByKey3 = [toRecordCopy encryptedValuesByKey];
        [encryptedValuesByKey3 setObject:v23 forKeyedSubscript:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [allKeys2 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v18);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)fetchRecordsWithPriority:(unint64_t)priority changeToken:(id)token completionHandler:(id)handler retryCount:(unint64_t)count
{
  v39[1] = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  v29 = tokenCopy;
  countCopy = count;
  handlerCopy = handler;
  priorityCopy = priority;
  if (!tokenCopy)
  {
    goto LABEL_5;
  }

  v11 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:tokenCopy error:0];
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
  recordZone = [(_KSCloudKitManager *)self recordZone];
  zoneID = [recordZone zoneID];
  v39[0] = zoneID;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
  recordZone2 = [(_KSCloudKitManager *)self recordZone];
  zoneID2 = [recordZone2 zoneID];
  v37 = zoneID2;
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
  v34 = handlerCopy;
  v35 = priorityCopy;
  v36 = countCopy;
  v23 = handlerCopy;
  v24 = v29;
  v25 = v21;
  dispatch_async(ckWorkQueue, block);

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_submitFetchRecordsOperation:(id)operation withPriority:(unint64_t)priority changeToken:(id)token completionHandler:(id)handler retryCount:(unint64_t)count
{
  operationCopy = operation;
  tokenCopy = token;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_ckWorkQueue);
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = __Block_byref_object_copy_;
  v42[4] = __Block_byref_object_dispose_;
  v17 = tokenCopy;
  v43 = v17;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke;
  v40[3] = &unk_2797F6A48;
  v18 = array;
  v41 = v18;
  [operationCopy setRecordChangedBlock:v40];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_2;
  v38[3] = &unk_2797F6A70;
  v19 = array2;
  v39 = v19;
  [operationCopy setRecordWithIDWasDeletedBlock:v38];
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
  v22 = handlerCopy;
  v36 = v22;
  [operationCopy setRecordZoneChangeTokensUpdatedBlock:v33];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_2_139;
  v26[3] = &unk_2797F6BD8;
  v26[4] = self;
  v30 = v42;
  countCopy = count;
  priorityCopy = priority;
  v23 = v22;
  v29 = v23;
  v24 = v20;
  v27 = v24;
  v25 = v21;
  v28 = v25;
  [operationCopy setRecordZoneFetchCompletionBlock:v26];
  [(_KSCloudKitManager *)self addOperation:operationCopy priority:priority];

  _Block_object_dispose(v42, 8);
}

- (void)fetchPublicRecordsWithNames:(id)names completionHandler:(id)handler
{
  namesCopy = names;
  handlerCopy = handler;
  ckWorkQueue = self->_ckWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68___KSCloudKitManager_fetchPublicRecordsWithNames_completionHandler___block_invoke;
  block[3] = &unk_2797F6C28;
  v12 = namesCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = namesCopy;
  dispatch_async(ckWorkQueue, block);
}

- (void)_inconvenientOperation:(id)operation
{
  operationCopy = operation;
  [operationCopy setQueuePriority:-4];
  [(_KSCloudKitManager *)self addOperation:operationCopy priority:0];
}

- (void)_ckFetchRecordZoneWithID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  fetchZoneThrottle = self->_fetchZoneThrottle;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65___KSCloudKitManager__ckFetchRecordZoneWithID_completionHandler___block_invoke;
  v11[3] = &unk_2797F6C78;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = dCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  [(_KSRequestThrottle *)fetchZoneThrottle postRequest:v11];
}

- (void)_ckSaveRecordZone:(id)zone completionHandler:(id)handler
{
  v20[1] = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  handlerCopy = handler;
  v8 = objc_alloc(MEMORY[0x277CBC490]);
  v20[0] = zoneCopy;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v10 = [v8 initWithRecordZonesToSave:v9 recordZoneIDsToDelete:0];

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __58___KSCloudKitManager__ckSaveRecordZone_completionHandler___block_invoke;
  v17 = &unk_2797F6CA0;
  v18 = zoneCopy;
  v19 = handlerCopy;
  v11 = zoneCopy;
  v12 = handlerCopy;
  [v10 setModifyRecordZonesCompletionBlock:&v14];
  [(_KSCloudKitManager *)self _inconvenientOperation:v10, v14, v15, v16, v17];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_ckDeleteRecordZoneWithID:(id)d completionHandler:(id)handler
{
  v20[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  v8 = objc_alloc(MEMORY[0x277CBC490]);
  v20[0] = dCopy;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v10 = [v8 initWithRecordZonesToSave:0 recordZoneIDsToDelete:v9];

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __66___KSCloudKitManager__ckDeleteRecordZoneWithID_completionHandler___block_invoke;
  v17 = &unk_2797F6CA0;
  v18 = dCopy;
  v19 = handlerCopy;
  v11 = dCopy;
  v12 = handlerCopy;
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
  OUTLINED_FUNCTION_3(&dword_2557E2000, self, a3, "%s  Failed to get account status", a5, a6, a7, a8, 2u);
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