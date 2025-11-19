@interface ELSManager
+ (id)sharedManager;
- (BOOL)array:(id)a3 isEqualToArray:(id)a4;
- (BOOL)commitConsentDataTransaction:(id)a3;
- (BOOL)commitConsentHandlesTransaction:(id)a3;
- (BOOL)commitConsentTransaction:(id)a3;
- (BOOL)commitDatesTransaction:(id)a3;
- (BOOL)commitDeviceSelectionMap:(id)a3;
- (BOOL)commitFollowUpOptions:(id)a3;
- (BOOL)commitIdentifiersToRetryTransaction:(id)a3;
- (BOOL)commitMetadataTransaction:(id)a3;
- (BOOL)commitQueueTransaction:(id)a3;
- (BOOL)commitRetriesRemainingTransaction:(id)a3;
- (BOOL)commitSessionDeviceTransaction:(id)a3;
- (BOOL)commitSessionIDTransaction:(id)a3;
- (BOOL)commitStatusTransaction:(id)a3;
- (BOOL)commitTopLevelPrivacyPolicy:(id)a3;
- (BOOL)commitUploadCompletedPercentage:(id)a3;
- (BOOL)object:(id)a3 isEqualToObject:(id)a4;
- (BOOL)privacyPolicy:(id)a3 isEqualToPolicy:(id)a4;
- (id)initSingleton;
- (void)beginUpdates;
- (void)commitBatchTransaction:(id)a3;
- (void)dealloc;
- (void)getBugSessionActivityWithCompletion:(id)a3;
- (void)refreshWithCompletion:(id)a3;
- (void)transactionWithBlock:(id)a3 completion:(id)a4;
@end

@implementation ELSManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[ELSManager sharedManager];
  }

  v3 = sharedManager_singleton;

  return v3;
}

uint64_t __27__ELSManager_sharedManager__block_invoke()
{
  sharedManager_singleton = [[ELSManager alloc] initSingleton];

  return MEMORY[0x2821F96F8]();
}

- (id)initSingleton
{
  v10.receiver = self;
  v10.super_class = ELSManager;
  v2 = [(ELSManager *)&v10 init];
  if (v2)
  {
    +[ELSEntitlementUtilities assertCurrentProcessHasEntitlement];
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.enhanced-logging-state"];
    defaults = v2->_defaults;
    v2->_defaults = v3;

    v5 = objc_opt_new();
    snapshot = v2->_snapshot;
    v2->_snapshot = v5;

    v7 = dispatch_queue_create("com.apple.enhanced-logging-state.transactionQueue", 0);
    transactionQueue = v2->_transactionQueue;
    v2->_transactionQueue = v7;

    [(ELSManager *)v2 beginUpdates];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ELSManager;
  [(ELSManager *)&v4 dealloc];
}

- (void)beginUpdates
{
  v3 = [MEMORY[0x277CCA9A0] defaultCenter];
  v4 = [MEMORY[0x277CCABD8] mainQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __26__ELSManager_beginUpdates__block_invoke;
  v6[3] = &unk_278FC4958;
  v6[4] = self;
  v5 = [v3 addObserverForName:@"ELSDidBatchUpdate" object:0 queue:v4 usingBlock:v6];
}

void __26__ELSManager_beginUpdates__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transactionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__ELSManager_beginUpdates__block_invoke_2;
  block[3] = &unk_278FC4930;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void __26__ELSManager_beginUpdates__block_invoke_2(uint64_t a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = [*(a1 + 32) snapshot];
  v4 = [v3 status];

  v5 = objc_opt_new();
  [*(a1 + 32) setSnapshot:v5];

  objc_sync_exit(v2);
  v6 = [*(a1 + 32) snapshot];
  v7 = [v6 status];

  if (v4 != v7)
  {
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = *(a1 + 32);
    v14 = @"ELSUserInfo";
    v10 = [v9 snapshot];
    v11 = [v10 copy];
    v15[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [v8 postNotificationName:@"ELSDidUpdateStatus" object:v9 userInfo:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)transactionWithBlock:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ELSManager *)self transactionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ELSManager_transactionWithBlock_completion___block_invoke;
  block[3] = &unk_278FC4980;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __46__ELSManager_transactionWithBlock_completion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = dispatch_semaphore_create(0);
  v3 = [*(a1 + 32) snapshot];
  v4 = [v3 status];

  v5 = *(a1 + 32);
  objc_sync_enter(v5);
  v6 = [*(a1 + 32) snapshot];
  v7 = [v6 copy];

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) commitBatchTransaction:v7];
  [*(a1 + 32) setSnapshot:v7];
  dispatch_semaphore_signal(v2);
  objc_sync_exit(v5);

  v8 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v2, v8);
  v9 = ELSLogHandleForCategory(11);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v7;
    _os_log_impl(&dword_24A07C000, v9, OS_LOG_TYPE_DEFAULT, "Snapshot updated: %@", buf, 0xCu);
  }

  if (v4 != [v7 status])
  {
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    v11 = *(a1 + 32);
    v15 = @"ELSUserInfo";
    v16 = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    [v10 postNotificationName:@"ELSDidUpdateStatus" object:v11 userInfo:v12];
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))(v13, v7);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __37__ELSManager_finishWithFailureBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setSessionID:0];
  [v2 setStatus:9];
  [v2 setConsent:0];
  [v2 setQueue:0];
  [v2 setRetriesRemaining:0];
  [v2 setIdentifiersToRetry:0];
  [v2 setMetadata:0];
  [v2 setUploadCompletedPercentage:0];
  [v2 setFollowUpOptions:0];
  [v2 setTargetDevices:0];
  [v2 setConsentHandles:0];
  [v2 setConsentData:0];
  [v2 setTopLevelPrivacyPolicy:0];
  [v2 setDeviceSelection:0];
}

void __35__ELSManager_finishWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setSessionID:0];
  [v2 setStatus:8];
  [v2 setConsent:0];
  [v2 setQueue:0];
  [v2 setRetriesRemaining:0];
  [v2 setIdentifiersToRetry:0];
  [v2 setMetadata:0];
  [v2 setUploadCompletedPercentage:0];
  [v2 setFollowUpOptions:0];
  [v2 setTargetDevices:0];
  [v2 setConsentHandles:0];
  [v2 setConsentData:0];
  [v2 setTopLevelPrivacyPolicy:0];
  [v2 setDeviceSelection:0];
}

void __34__ELSManager_flushWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setSessionID:0];
  [v2 setStatus:0];
  [v2 setConsent:0];
  [v2 setStartDate:0];
  [v2 setEndDate:0];
  [v2 setQueue:0];
  [v2 setRetriesRemaining:0];
  [v2 setIdentifiersToRetry:0];
  [v2 setMetadata:0];
  [v2 setUploadCompletedPercentage:0];
  [v2 setFollowUpOptions:0];
  [v2 setTargetDevices:0];
  [v2 setConsentHandles:0];
  [v2 setConsentData:0];
  [v2 setTopLevelPrivacyPolicy:0];
  [v2 setDeviceSelection:0];
}

- (void)commitBatchTransaction:(id)a3
{
  v4 = a3;
  v14 = [(ELSManager *)self commitSessionIDTransaction:v4];
  v15 = [(ELSManager *)self commitStatusTransaction:v4];
  v16 = [(ELSManager *)self commitConsentTransaction:v4];
  v17 = [(ELSManager *)self commitDatesTransaction:v4];
  v18 = [(ELSManager *)self commitQueueTransaction:v4];
  v19 = [(ELSManager *)self commitConsentHandlesTransaction:v4];
  v20 = [(ELSManager *)self commitRetriesRemainingTransaction:v4];
  v5 = [(ELSManager *)self commitIdentifiersToRetryTransaction:v4];
  v6 = [(ELSManager *)self commitMetadataTransaction:v4];
  v7 = [(ELSManager *)self commitUploadCompletedPercentage:v4];
  v8 = [(ELSManager *)self commitFollowUpOptions:v4];
  v9 = [(ELSManager *)self commitSessionDeviceTransaction:v4];
  v10 = [(ELSManager *)self commitConsentDataTransaction:v4];
  v11 = [(ELSManager *)self commitTopLevelPrivacyPolicy:v4];
  v12 = [(ELSManager *)self commitDeviceSelectionMap:v4];

  if (v12 || v11 || v10 || v9 || v8 || v7 || v6 || v5 || v20 || v19 || v18 || v17 || v16 || v15 || v14)
  {
    v13 = [(ELSManager *)self defaults];
    [v13 synchronize];

    v21 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v21 postNotificationName:@"ELSDidBatchUpdate" object:0 userInfo:0 deliverImmediately:1];
  }
}

- (BOOL)commitSessionIDTransaction:(id)a3
{
  v4 = a3;
  v5 = [v4 sessionID];
  if (v5)
  {
  }

  else
  {
    v13 = [(ELSManager *)self snapshot];
    v14 = [v13 sessionID];

    if (v14)
    {
      v11 = [(ELSManager *)self defaults];
      [v11 removeObjectForKey:@"sessionID"];
      goto LABEL_8;
    }
  }

  v6 = [v4 sessionID];
  v7 = [(ELSManager *)self snapshot];
  v8 = [v7 sessionID];
  v9 = [v6 isEqualToString:v8];

  if ((v9 & 1) == 0)
  {
    v11 = [(ELSManager *)self defaults];
    v12 = [v4 sessionID];
    [v11 setObject:v12 forKey:@"sessionID"];

LABEL_8:
    v10 = 1;
    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (BOOL)commitStatusTransaction:(id)a3
{
  v4 = a3;
  if (![v4 status])
  {
    v11 = [(ELSManager *)self snapshot];
    v12 = [v11 status];

    if (v12)
    {
      v9 = [(ELSManager *)self defaults];
      [v9 removeObjectForKey:@"status"];
      goto LABEL_7;
    }
  }

  v5 = [v4 status];
  v6 = [(ELSManager *)self snapshot];
  v7 = [v6 status];

  if (v5 != v7)
  {
    v9 = [(ELSManager *)self defaults];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "status")}];
    [v9 setObject:v10 forKey:@"status"];

LABEL_7:
    v8 = 1;
    goto LABEL_8;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (BOOL)commitConsentTransaction:(id)a3
{
  v4 = a3;
  if (![v4 consent])
  {
    v11 = [(ELSManager *)self snapshot];
    v12 = [v11 consent];

    if (v12)
    {
      v9 = [(ELSManager *)self defaults];
      [v9 removeObjectForKey:@"consent"];
      goto LABEL_7;
    }
  }

  v5 = [v4 consent];
  v6 = [(ELSManager *)self snapshot];
  v7 = [v6 consent];

  if (v5 != v7)
  {
    v9 = [(ELSManager *)self defaults];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "consent")}];
    [v9 setObject:v10 forKey:@"consent"];

LABEL_7:
    v8 = 1;
    goto LABEL_8;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (BOOL)commitDatesTransaction:(id)a3
{
  v4 = a3;
  v5 = [(ELSManager *)self defaults];
  v6 = [v5 objectForKey:@"dates"];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x277CBEAC0] dictionary];
  }

  v9 = v8;

  v10 = [v9 mutableCopy];
  v11 = [v4 startDate];
  v12 = [(ELSManager *)self snapshot];
  v13 = [v12 startDate];
  if ([(ELSManager *)self object:v11 isEqualToObject:v13])
  {
  }

  else
  {
    v14 = [v4 startDate];

    if (v14)
    {
      v15 = [v4 startDate];
      [v10 setObject:v15 forKeyedSubscript:@"startDate"];

      goto LABEL_12;
    }
  }

  v16 = [v4 startDate];
  if (v16)
  {
  }

  else
  {
    v17 = [(ELSManager *)self snapshot];
    v18 = [v17 startDate];

    if (v18)
    {
      [v10 removeObjectForKey:@"startDate"];
    }
  }

LABEL_12:
  v19 = [v4 endDate];
  v20 = [(ELSManager *)self snapshot];
  v21 = [v20 endDate];
  if ([(ELSManager *)self object:v19 isEqualToObject:v21])
  {
  }

  else
  {
    v22 = [v4 endDate];

    if (v22)
    {
      v23 = [v4 endDate];
      [v10 setObject:v23 forKeyedSubscript:@"endDate"];

      goto LABEL_20;
    }
  }

  v24 = [v4 endDate];
  if (v24)
  {
  }

  else
  {
    v25 = [(ELSManager *)self snapshot];
    v26 = [v25 endDate];

    if (v26)
    {
      [v10 removeObjectForKey:@"endDate"];
    }
  }

LABEL_20:
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v10];
  v28 = [v27 allKeys];
  if ([v28 count])
  {
  }

  else
  {
    v31 = [v9 allKeys];
    v32 = [v31 count];

    if (v32)
    {
      v30 = [(ELSManager *)self defaults];
      [v30 removeObjectForKey:@"dates"];
      goto LABEL_27;
    }
  }

  if (![(ELSManager *)self object:v27 isEqualToObject:v9])
  {
    v30 = [(ELSManager *)self defaults];
    [v30 setObject:v27 forKey:@"dates"];
LABEL_27:

    v29 = 1;
    goto LABEL_28;
  }

  v29 = 0;
LABEL_28:

  return v29;
}

- (BOOL)commitQueueTransaction:(id)a3
{
  v4 = a3;
  v5 = [v4 queue];
  if (v5)
  {
  }

  else
  {
    v13 = [(ELSManager *)self snapshot];
    v14 = [v13 queue];

    if (v14)
    {
      v11 = [(ELSManager *)self defaults];
      [v11 removeObjectForKey:@"queue"];
      goto LABEL_8;
    }
  }

  v6 = [v4 queue];
  v7 = [(ELSManager *)self snapshot];
  v8 = [v7 queue];
  v9 = [(ELSManager *)self object:v6 isEqualToObject:v8];

  if (!v9)
  {
    v11 = [(ELSManager *)self defaults];
    v12 = [v4 encodedQueue];
    [v11 setObject:v12 forKey:@"queue"];

LABEL_8:
    v10 = 1;
    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (BOOL)commitConsentHandlesTransaction:(id)a3
{
  v4 = a3;
  v5 = [v4 consentHandles];
  if (v5)
  {
  }

  else
  {
    v13 = [(ELSManager *)self snapshot];
    v14 = [v13 consentHandles];

    if (v14)
    {
      v11 = [(ELSManager *)self defaults];
      [v11 removeObjectForKey:@"consentHandles"];
      goto LABEL_8;
    }
  }

  v6 = [v4 consentHandles];
  v7 = [(ELSManager *)self snapshot];
  v8 = [v7 consentHandles];
  v9 = [(ELSManager *)self object:v6 isEqualToObject:v8];

  if (!v9)
  {
    v11 = [(ELSManager *)self defaults];
    v12 = [v4 consentHandles];
    [v11 setObject:v12 forKey:@"consentHandles"];

LABEL_8:
    v10 = 1;
    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (BOOL)commitSessionDeviceTransaction:(id)a3
{
  v4 = a3;
  v5 = [v4 targetDevices];
  if (v5)
  {
  }

  else
  {
    v16 = [(ELSManager *)self snapshot];
    v17 = [v16 targetDevices];

    if (v17)
    {
      v18 = [(ELSManager *)self defaults];
      [v18 removeObjectForKey:@"targetDevices"];

      v10 = 1;
      goto LABEL_8;
    }
  }

  v6 = [v4 targetDevices];
  v7 = [(ELSManager *)self snapshot];
  v8 = [v7 targetDevices];
  v9 = [(ELSManager *)self array:v6 isEqualToArray:v8];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = MEMORY[0x277CCAAB0];
    v12 = [v4 targetDevices];
    v20 = 0;
    v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:0 error:&v20];
    v14 = v20;

    v15 = [(ELSManager *)self defaults];
    [v15 setObject:v13 forKey:@"targetDevices"];

    v10 = v14 == 0;
  }

LABEL_8:

  return v10;
}

- (BOOL)commitConsentDataTransaction:(id)a3
{
  v4 = a3;
  v5 = [v4 consentData];
  if (v5)
  {
  }

  else
  {
    v13 = [(ELSManager *)self snapshot];
    v14 = [v13 consentData];

    if (v14)
    {
      v11 = [(ELSManager *)self defaults];
      [v11 removeObjectForKey:@"consentData"];
      goto LABEL_8;
    }
  }

  v6 = [v4 consentData];
  v7 = [(ELSManager *)self snapshot];
  v8 = [v7 consentData];
  v9 = [(ELSManager *)self object:v6 isEqualToObject:v8];

  if (!v9)
  {
    v11 = [(ELSManager *)self defaults];
    v12 = [v4 consentData];
    [v11 setObject:v12 forKey:@"consentData"];

LABEL_8:
    v10 = 1;
    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (BOOL)commitRetriesRemainingTransaction:(id)a3
{
  v4 = a3;
  if (![v4 retriesRemaining])
  {
    v11 = [(ELSManager *)self snapshot];
    v12 = [v11 retriesRemaining];

    if (v12)
    {
      v9 = [(ELSManager *)self defaults];
      [v9 removeObjectForKey:@"retriesRemaining"];
      goto LABEL_7;
    }
  }

  v5 = [v4 retriesRemaining];
  v6 = [(ELSManager *)self snapshot];
  v7 = [v6 retriesRemaining];

  if (v5 != v7)
  {
    v9 = [(ELSManager *)self defaults];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "retriesRemaining")}];
    [v9 setObject:v10 forKey:@"retriesRemaining"];

LABEL_7:
    v8 = 1;
    goto LABEL_8;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (BOOL)commitIdentifiersToRetryTransaction:(id)a3
{
  v4 = a3;
  v5 = [v4 identifiersToRetry];
  if (v5)
  {
  }

  else
  {
    v13 = [(ELSManager *)self snapshot];
    v14 = [v13 identifiersToRetry];

    if (v14)
    {
      v11 = [(ELSManager *)self defaults];
      [v11 removeObjectForKey:@"identifiersToRetry"];
      goto LABEL_8;
    }
  }

  v6 = [v4 identifiersToRetry];
  v7 = [(ELSManager *)self snapshot];
  v8 = [v7 identifiersToRetry];
  v9 = [(ELSManager *)self object:v6 isEqualToObject:v8];

  if (!v9)
  {
    v11 = [(ELSManager *)self defaults];
    v12 = [v4 identifiersToRetry];
    [v11 setObject:v12 forKey:@"identifiersToRetry"];

LABEL_8:
    v10 = 1;
    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (BOOL)commitMetadataTransaction:(id)a3
{
  v4 = a3;
  v5 = [v4 metadata];
  if (v5)
  {
  }

  else
  {
    v13 = [(ELSManager *)self snapshot];
    v14 = [v13 metadata];

    if (v14)
    {
      v11 = [(ELSManager *)self defaults];
      [v11 removeObjectForKey:@"metadata"];
      goto LABEL_8;
    }
  }

  v6 = [v4 metadata];
  v7 = [(ELSManager *)self snapshot];
  v8 = [v7 metadata];
  v9 = [(ELSManager *)self object:v6 isEqualToObject:v8];

  if (!v9)
  {
    v11 = [(ELSManager *)self defaults];
    v12 = [v4 metadata];
    [v11 setObject:v12 forKey:@"metadata"];

LABEL_8:
    v10 = 1;
    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (BOOL)commitUploadCompletedPercentage:(id)a3
{
  v4 = a3;
  v5 = [v4 uploadCompletedPercentage];
  if (v5)
  {
  }

  else
  {
    v13 = [(ELSManager *)self snapshot];
    v14 = [v13 uploadCompletedPercentage];

    if (v14)
    {
      v11 = [(ELSManager *)self defaults];
      [v11 removeObjectForKey:@"uploadCompletedPercentage"];
      goto LABEL_8;
    }
  }

  v6 = [v4 uploadCompletedPercentage];
  v7 = [(ELSManager *)self snapshot];
  v8 = [v7 uploadCompletedPercentage];
  v9 = [(ELSManager *)self object:v6 isEqualToObject:v8];

  if (!v9)
  {
    v11 = [(ELSManager *)self defaults];
    v12 = [v4 uploadCompletedPercentage];
    [v11 setObject:v12 forKey:@"uploadCompletedPercentage"];

LABEL_8:
    v10 = 1;
    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (BOOL)commitFollowUpOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 followUpOptions];
  if (v5)
  {
  }

  else
  {
    v13 = [(ELSManager *)self snapshot];
    v14 = [v13 followUpOptions];

    if (v14)
    {
      v11 = [(ELSManager *)self defaults];
      [v11 removeObjectForKey:@"followUpOptions"];
      goto LABEL_8;
    }
  }

  v6 = [v4 followUpOptions];
  v7 = [(ELSManager *)self snapshot];
  v8 = [v7 followUpOptions];
  v9 = [(ELSManager *)self object:v6 isEqualToObject:v8];

  if (!v9)
  {
    v11 = [(ELSManager *)self defaults];
    v12 = [v4 followUpOptions];
    [v11 setObject:v12 forKey:@"followUpOptions"];

LABEL_8:
    v10 = 1;
    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (BOOL)commitTopLevelPrivacyPolicy:(id)a3
{
  v4 = a3;
  v5 = [v4 topLevelPrivacyPolicy];
  if (v5)
  {
  }

  else
  {
    v14 = [(ELSManager *)self snapshot];
    v15 = [v14 topLevelPrivacyPolicy];

    if (v15)
    {
      v11 = [(ELSManager *)self defaults];
      [v11 removeObjectForKey:@"topLevelPrivacyPolicy"];
      goto LABEL_8;
    }
  }

  v6 = [v4 topLevelPrivacyPolicy];
  v7 = [(ELSManager *)self snapshot];
  v8 = [v7 topLevelPrivacyPolicy];
  v9 = [(ELSManager *)self privacyPolicy:v6 isEqualToPolicy:v8];

  if (!v9)
  {
    v11 = [(ELSManager *)self defaults];
    v12 = [v4 topLevelPrivacyPolicy];
    v13 = [v12 dictionaryRepresentation];
    [v11 setObject:v13 forKey:@"topLevelPrivacyPolicy"];

LABEL_8:
    v10 = 1;
    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (BOOL)commitDeviceSelectionMap:(id)a3
{
  v4 = a3;
  v5 = [v4 deviceSelection];
  if (v5)
  {
  }

  else
  {
    v13 = [(ELSManager *)self snapshot];
    v14 = [v13 deviceSelection];

    if (v14)
    {
      v11 = [(ELSManager *)self defaults];
      [v11 removeObjectForKey:@"deviceSelection"];
      goto LABEL_8;
    }
  }

  v6 = [v4 deviceSelection];
  v7 = [(ELSManager *)self snapshot];
  v8 = [v7 deviceSelection];
  v9 = [(ELSManager *)self object:v6 isEqualToObject:v8];

  if (!v9)
  {
    v11 = [(ELSManager *)self defaults];
    v12 = [v4 deviceSelection];
    [v11 setObject:v12 forKey:@"deviceSelection"];

LABEL_8:
    v10 = 1;
    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (BOOL)object:(id)a3 isEqualToObject:(id)a4
{
  if (a3 | a4)
  {
    return [a3 isEqual:a4];
  }

  else
  {
    return 1;
  }
}

- (BOOL)array:(id)a3 isEqualToArray:(id)a4
{
  if (a3 | a4)
  {
    return [a3 isEqualToArray:a4];
  }

  else
  {
    return 1;
  }
}

- (BOOL)privacyPolicy:(id)a3 isEqualToPolicy:(id)a4
{
  if (a3 | a4)
  {
    return [a3 isEqualToDescription:a4];
  }

  else
  {
    return 1;
  }
}

- (void)refreshWithCompletion:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ELSLogHandleForCategory(11);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24A07C000, v5, OS_LOG_TYPE_DEFAULT, "Performing refresh of enhanced logging state...", buf, 2u);
  }

  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v6 = [(ELSManager *)self snapshot];
  v7 = [v6 status];

  v24[3] = v7;
  *buf = 0;
  v19 = buf;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v8 = [(ELSManager *)self snapshot];
  v23 = [v8 dedSessionIdentifier];

  v9 = ELSLogHandleForCategory(11);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(v19 + 5);
    *v25 = 138412290;
    v26 = v10;
    _os_log_impl(&dword_24A07C000, v9, OS_LOG_TYPE_DEFAULT, "Refreshing %@ bug session...", v25, 0xCu);
  }

  objc_initWeak(v25, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __36__ELSManager_refreshWithCompletion___block_invoke;
  v13[3] = &unk_278FC49F0;
  v15 = buf;
  v16 = v24;
  objc_copyWeak(&v17, v25);
  v11 = v4;
  v14 = v11;
  [(ELSManager *)self getBugSessionActivityWithCompletion:v13];

  objc_destroyWeak(&v17);
  objc_destroyWeak(v25);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(v24, 8);
  v12 = *MEMORY[0x277D85DE8];
}

void __36__ELSManager_refreshWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = ELSLogHandleForCategory(11);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);
    *buf = 138412290;
    v31 = v5;
    _os_log_impl(&dword_24A07C000, v4, OS_LOG_TYPE_DEFAULT, "Successfully retrieved %@ bug session activity...", buf, 0xCu);
  }

  v6 = *(*(*(a1 + 48) + 8) + 24);
  if (v6 == 9)
  {
    v7 = ELSLogHandleForCategory(11);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [ELSSnapshot statusToString:*(*(*(a1 + 48) + 8) + 24)];
      v9 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138412546;
      v31 = v8;
      v32 = 2112;
      v33 = v9;
      _os_log_impl(&dword_24A07C000, v7, OS_LOG_TYPE_DEFAULT, "ELS is at [%@] but no %@ session exists: marking ELS failed...", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __36__ELSManager_refreshWithCompletion___block_invoke_28;
    v27[3] = &unk_278FC49C8;
    v28 = *(a1 + 32);
    v29 = a2;
    [WeakRetained finishWithFailureBlock:v27];

    v11 = v28;
    goto LABEL_19;
  }

  v12 = ELSLogHandleForCategory(11);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v6 >= 3 && (a2 & 1) == 0)
  {
    if (v13)
    {
      v14 = [ELSSnapshot statusToString:*(*(*(a1 + 48) + 8) + 24)];
      v15 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138412546;
      v31 = v14;
      v32 = 2112;
      v33 = v15;
      _os_log_impl(&dword_24A07C000, v12, OS_LOG_TYPE_DEFAULT, "ELS is at [%@] but no %@ session exists: marking ELS finished...", buf, 0x16u);
    }

    v16 = objc_loadWeakRetained((a1 + 56));
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __36__ELSManager_refreshWithCompletion___block_invoke_29;
    v24[3] = &unk_278FC49C8;
    v25 = *(a1 + 32);
    v26 = a2;
    [v16 finishWithCompletion:v24];

    v11 = v25;
    goto LABEL_19;
  }

  if (v13)
  {
    v17 = *(*(*(a1 + 40) + 8) + 40);
    if (a2)
    {
      v18 = @"active";
    }

    else
    {
      v18 = @"inactive";
    }

    v19 = [ELSSnapshot statusToString:*(*(*(a1 + 48) + 8) + 24)];
    *buf = 138412802;
    v31 = v17;
    v32 = 2112;
    v33 = v18;
    v34 = 2112;
    v35 = v19;
    _os_log_impl(&dword_24A07C000, v12, OS_LOG_TYPE_DEFAULT, "%@ bug session is %@, and ELS is at [%@]: no change needed.", buf, 0x20u);
  }

  v20 = *(a1 + 32);
  if (v20)
  {
    v11 = objc_loadWeakRetained((a1 + 56));
    v21 = [v11 snapshot];
    v22 = [v21 copy];
    (*(v20 + 16))(v20, v22, a2, 0);

LABEL_19:
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __36__ELSManager_refreshWithCompletion___block_invoke_28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ELSLogHandleForCategory(11);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_24A07C000, v4, OS_LOG_TYPE_DEFAULT, "Successfully flushed ELS.", v6, 2u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3, *(a1 + 40), 1);
  }
}

void __36__ELSManager_refreshWithCompletion___block_invoke_29(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ELSLogHandleForCategory(11);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_24A07C000, v4, OS_LOG_TYPE_DEFAULT, "Successfully flushed ELS.", v6, 2u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3, *(a1 + 40), 1);
  }
}

- (void)getBugSessionActivityWithCompletion:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ELSLogHandleForCategory(11);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(ELSManager *)self snapshot];
    v7 = [v6 dedSessionIdentifier];
    v17 = 138412290;
    v18 = v7;
    _os_log_impl(&dword_24A07C000, v5, OS_LOG_TYPE_DEFAULT, "Checking %@ bug session activity (defaults scan)...", &v17, 0xCu);
  }

  v8 = [(ELSManager *)self snapshot];
  v9 = [v8 targetDevices];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.diagnosticextensionsd"];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 objectForKey:@"sessionIdentifiers"];
      if (v13)
      {
        v14 = [(ELSManager *)self snapshot];
        v15 = [v14 dedSessionIdentifier];
        v10 = [v13 containsObject:v15];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  v4[2](v4, v10);

  v16 = *MEMORY[0x277D85DE8];
}

@end