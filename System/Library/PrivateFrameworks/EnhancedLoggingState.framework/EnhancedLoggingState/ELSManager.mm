@interface ELSManager
+ (id)sharedManager;
- (BOOL)array:(id)array isEqualToArray:(id)toArray;
- (BOOL)commitConsentDataTransaction:(id)transaction;
- (BOOL)commitConsentHandlesTransaction:(id)transaction;
- (BOOL)commitConsentTransaction:(id)transaction;
- (BOOL)commitDatesTransaction:(id)transaction;
- (BOOL)commitDeviceSelectionMap:(id)map;
- (BOOL)commitFollowUpOptions:(id)options;
- (BOOL)commitIdentifiersToRetryTransaction:(id)transaction;
- (BOOL)commitMetadataTransaction:(id)transaction;
- (BOOL)commitQueueTransaction:(id)transaction;
- (BOOL)commitRetriesRemainingTransaction:(id)transaction;
- (BOOL)commitSessionDeviceTransaction:(id)transaction;
- (BOOL)commitSessionIDTransaction:(id)transaction;
- (BOOL)commitStatusTransaction:(id)transaction;
- (BOOL)commitTopLevelPrivacyPolicy:(id)policy;
- (BOOL)commitUploadCompletedPercentage:(id)percentage;
- (BOOL)object:(id)object isEqualToObject:(id)toObject;
- (BOOL)privacyPolicy:(id)policy isEqualToPolicy:(id)toPolicy;
- (id)initSingleton;
- (void)beginUpdates;
- (void)commitBatchTransaction:(id)transaction;
- (void)dealloc;
- (void)getBugSessionActivityWithCompletion:(id)completion;
- (void)refreshWithCompletion:(id)completion;
- (void)transactionWithBlock:(id)block completion:(id)completion;
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
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ELSManager;
  [(ELSManager *)&v4 dealloc];
}

- (void)beginUpdates
{
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __26__ELSManager_beginUpdates__block_invoke;
  v6[3] = &unk_278FC4958;
  v6[4] = self;
  v5 = [defaultCenter addObserverForName:@"ELSDidBatchUpdate" object:0 queue:mainQueue usingBlock:v6];
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

- (void)transactionWithBlock:(id)block completion:(id)completion
{
  blockCopy = block;
  completionCopy = completion;
  transactionQueue = [(ELSManager *)self transactionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ELSManager_transactionWithBlock_completion___block_invoke;
  block[3] = &unk_278FC4980;
  block[4] = self;
  v12 = blockCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = blockCopy;
  dispatch_async(transactionQueue, block);
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

- (void)commitBatchTransaction:(id)transaction
{
  transactionCopy = transaction;
  v14 = [(ELSManager *)self commitSessionIDTransaction:transactionCopy];
  v15 = [(ELSManager *)self commitStatusTransaction:transactionCopy];
  v16 = [(ELSManager *)self commitConsentTransaction:transactionCopy];
  v17 = [(ELSManager *)self commitDatesTransaction:transactionCopy];
  v18 = [(ELSManager *)self commitQueueTransaction:transactionCopy];
  v19 = [(ELSManager *)self commitConsentHandlesTransaction:transactionCopy];
  v20 = [(ELSManager *)self commitRetriesRemainingTransaction:transactionCopy];
  v5 = [(ELSManager *)self commitIdentifiersToRetryTransaction:transactionCopy];
  v6 = [(ELSManager *)self commitMetadataTransaction:transactionCopy];
  v7 = [(ELSManager *)self commitUploadCompletedPercentage:transactionCopy];
  v8 = [(ELSManager *)self commitFollowUpOptions:transactionCopy];
  v9 = [(ELSManager *)self commitSessionDeviceTransaction:transactionCopy];
  v10 = [(ELSManager *)self commitConsentDataTransaction:transactionCopy];
  v11 = [(ELSManager *)self commitTopLevelPrivacyPolicy:transactionCopy];
  v12 = [(ELSManager *)self commitDeviceSelectionMap:transactionCopy];

  if (v12 || v11 || v10 || v9 || v8 || v7 || v6 || v5 || v20 || v19 || v18 || v17 || v16 || v15 || v14)
  {
    defaults = [(ELSManager *)self defaults];
    [defaults synchronize];

    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter postNotificationName:@"ELSDidBatchUpdate" object:0 userInfo:0 deliverImmediately:1];
  }
}

- (BOOL)commitSessionIDTransaction:(id)transaction
{
  transactionCopy = transaction;
  sessionID = [transactionCopy sessionID];
  if (sessionID)
  {
  }

  else
  {
    snapshot = [(ELSManager *)self snapshot];
    sessionID2 = [snapshot sessionID];

    if (sessionID2)
    {
      defaults = [(ELSManager *)self defaults];
      [defaults removeObjectForKey:@"sessionID"];
      goto LABEL_8;
    }
  }

  sessionID3 = [transactionCopy sessionID];
  snapshot2 = [(ELSManager *)self snapshot];
  sessionID4 = [snapshot2 sessionID];
  v9 = [sessionID3 isEqualToString:sessionID4];

  if ((v9 & 1) == 0)
  {
    defaults = [(ELSManager *)self defaults];
    sessionID5 = [transactionCopy sessionID];
    [defaults setObject:sessionID5 forKey:@"sessionID"];

LABEL_8:
    v10 = 1;
    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (BOOL)commitStatusTransaction:(id)transaction
{
  transactionCopy = transaction;
  if (![transactionCopy status])
  {
    snapshot = [(ELSManager *)self snapshot];
    status = [snapshot status];

    if (status)
    {
      defaults = [(ELSManager *)self defaults];
      [defaults removeObjectForKey:@"status"];
      goto LABEL_7;
    }
  }

  status2 = [transactionCopy status];
  snapshot2 = [(ELSManager *)self snapshot];
  status3 = [snapshot2 status];

  if (status2 != status3)
  {
    defaults = [(ELSManager *)self defaults];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(transactionCopy, "status")}];
    [defaults setObject:v10 forKey:@"status"];

LABEL_7:
    v8 = 1;
    goto LABEL_8;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (BOOL)commitConsentTransaction:(id)transaction
{
  transactionCopy = transaction;
  if (![transactionCopy consent])
  {
    snapshot = [(ELSManager *)self snapshot];
    consent = [snapshot consent];

    if (consent)
    {
      defaults = [(ELSManager *)self defaults];
      [defaults removeObjectForKey:@"consent"];
      goto LABEL_7;
    }
  }

  consent2 = [transactionCopy consent];
  snapshot2 = [(ELSManager *)self snapshot];
  consent3 = [snapshot2 consent];

  if (consent2 != consent3)
  {
    defaults = [(ELSManager *)self defaults];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(transactionCopy, "consent")}];
    [defaults setObject:v10 forKey:@"consent"];

LABEL_7:
    v8 = 1;
    goto LABEL_8;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (BOOL)commitDatesTransaction:(id)transaction
{
  transactionCopy = transaction;
  defaults = [(ELSManager *)self defaults];
  v6 = [defaults objectForKey:@"dates"];
  v7 = v6;
  if (v6)
  {
    dictionary = v6;
  }

  else
  {
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
  }

  v9 = dictionary;

  v10 = [v9 mutableCopy];
  startDate = [transactionCopy startDate];
  snapshot = [(ELSManager *)self snapshot];
  startDate2 = [snapshot startDate];
  if ([(ELSManager *)self object:startDate isEqualToObject:startDate2])
  {
  }

  else
  {
    startDate3 = [transactionCopy startDate];

    if (startDate3)
    {
      startDate4 = [transactionCopy startDate];
      [v10 setObject:startDate4 forKeyedSubscript:@"startDate"];

      goto LABEL_12;
    }
  }

  startDate5 = [transactionCopy startDate];
  if (startDate5)
  {
  }

  else
  {
    snapshot2 = [(ELSManager *)self snapshot];
    startDate6 = [snapshot2 startDate];

    if (startDate6)
    {
      [v10 removeObjectForKey:@"startDate"];
    }
  }

LABEL_12:
  endDate = [transactionCopy endDate];
  snapshot3 = [(ELSManager *)self snapshot];
  endDate2 = [snapshot3 endDate];
  if ([(ELSManager *)self object:endDate isEqualToObject:endDate2])
  {
  }

  else
  {
    endDate3 = [transactionCopy endDate];

    if (endDate3)
    {
      endDate4 = [transactionCopy endDate];
      [v10 setObject:endDate4 forKeyedSubscript:@"endDate"];

      goto LABEL_20;
    }
  }

  endDate5 = [transactionCopy endDate];
  if (endDate5)
  {
  }

  else
  {
    snapshot4 = [(ELSManager *)self snapshot];
    endDate6 = [snapshot4 endDate];

    if (endDate6)
    {
      [v10 removeObjectForKey:@"endDate"];
    }
  }

LABEL_20:
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v10];
  allKeys = [v27 allKeys];
  if ([allKeys count])
  {
  }

  else
  {
    allKeys2 = [v9 allKeys];
    v32 = [allKeys2 count];

    if (v32)
    {
      defaults2 = [(ELSManager *)self defaults];
      [defaults2 removeObjectForKey:@"dates"];
      goto LABEL_27;
    }
  }

  if (![(ELSManager *)self object:v27 isEqualToObject:v9])
  {
    defaults2 = [(ELSManager *)self defaults];
    [defaults2 setObject:v27 forKey:@"dates"];
LABEL_27:

    v29 = 1;
    goto LABEL_28;
  }

  v29 = 0;
LABEL_28:

  return v29;
}

- (BOOL)commitQueueTransaction:(id)transaction
{
  transactionCopy = transaction;
  queue = [transactionCopy queue];
  if (queue)
  {
  }

  else
  {
    snapshot = [(ELSManager *)self snapshot];
    queue2 = [snapshot queue];

    if (queue2)
    {
      defaults = [(ELSManager *)self defaults];
      [defaults removeObjectForKey:@"queue"];
      goto LABEL_8;
    }
  }

  queue3 = [transactionCopy queue];
  snapshot2 = [(ELSManager *)self snapshot];
  queue4 = [snapshot2 queue];
  v9 = [(ELSManager *)self object:queue3 isEqualToObject:queue4];

  if (!v9)
  {
    defaults = [(ELSManager *)self defaults];
    encodedQueue = [transactionCopy encodedQueue];
    [defaults setObject:encodedQueue forKey:@"queue"];

LABEL_8:
    v10 = 1;
    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (BOOL)commitConsentHandlesTransaction:(id)transaction
{
  transactionCopy = transaction;
  consentHandles = [transactionCopy consentHandles];
  if (consentHandles)
  {
  }

  else
  {
    snapshot = [(ELSManager *)self snapshot];
    consentHandles2 = [snapshot consentHandles];

    if (consentHandles2)
    {
      defaults = [(ELSManager *)self defaults];
      [defaults removeObjectForKey:@"consentHandles"];
      goto LABEL_8;
    }
  }

  consentHandles3 = [transactionCopy consentHandles];
  snapshot2 = [(ELSManager *)self snapshot];
  consentHandles4 = [snapshot2 consentHandles];
  v9 = [(ELSManager *)self object:consentHandles3 isEqualToObject:consentHandles4];

  if (!v9)
  {
    defaults = [(ELSManager *)self defaults];
    consentHandles5 = [transactionCopy consentHandles];
    [defaults setObject:consentHandles5 forKey:@"consentHandles"];

LABEL_8:
    v10 = 1;
    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (BOOL)commitSessionDeviceTransaction:(id)transaction
{
  transactionCopy = transaction;
  targetDevices = [transactionCopy targetDevices];
  if (targetDevices)
  {
  }

  else
  {
    snapshot = [(ELSManager *)self snapshot];
    targetDevices2 = [snapshot targetDevices];

    if (targetDevices2)
    {
      defaults = [(ELSManager *)self defaults];
      [defaults removeObjectForKey:@"targetDevices"];

      v10 = 1;
      goto LABEL_8;
    }
  }

  targetDevices3 = [transactionCopy targetDevices];
  snapshot2 = [(ELSManager *)self snapshot];
  targetDevices4 = [snapshot2 targetDevices];
  v9 = [(ELSManager *)self array:targetDevices3 isEqualToArray:targetDevices4];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = MEMORY[0x277CCAAB0];
    targetDevices5 = [transactionCopy targetDevices];
    v20 = 0;
    v13 = [v11 archivedDataWithRootObject:targetDevices5 requiringSecureCoding:0 error:&v20];
    v14 = v20;

    defaults2 = [(ELSManager *)self defaults];
    [defaults2 setObject:v13 forKey:@"targetDevices"];

    v10 = v14 == 0;
  }

LABEL_8:

  return v10;
}

- (BOOL)commitConsentDataTransaction:(id)transaction
{
  transactionCopy = transaction;
  consentData = [transactionCopy consentData];
  if (consentData)
  {
  }

  else
  {
    snapshot = [(ELSManager *)self snapshot];
    consentData2 = [snapshot consentData];

    if (consentData2)
    {
      defaults = [(ELSManager *)self defaults];
      [defaults removeObjectForKey:@"consentData"];
      goto LABEL_8;
    }
  }

  consentData3 = [transactionCopy consentData];
  snapshot2 = [(ELSManager *)self snapshot];
  consentData4 = [snapshot2 consentData];
  v9 = [(ELSManager *)self object:consentData3 isEqualToObject:consentData4];

  if (!v9)
  {
    defaults = [(ELSManager *)self defaults];
    consentData5 = [transactionCopy consentData];
    [defaults setObject:consentData5 forKey:@"consentData"];

LABEL_8:
    v10 = 1;
    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (BOOL)commitRetriesRemainingTransaction:(id)transaction
{
  transactionCopy = transaction;
  if (![transactionCopy retriesRemaining])
  {
    snapshot = [(ELSManager *)self snapshot];
    retriesRemaining = [snapshot retriesRemaining];

    if (retriesRemaining)
    {
      defaults = [(ELSManager *)self defaults];
      [defaults removeObjectForKey:@"retriesRemaining"];
      goto LABEL_7;
    }
  }

  retriesRemaining2 = [transactionCopy retriesRemaining];
  snapshot2 = [(ELSManager *)self snapshot];
  retriesRemaining3 = [snapshot2 retriesRemaining];

  if (retriesRemaining2 != retriesRemaining3)
  {
    defaults = [(ELSManager *)self defaults];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(transactionCopy, "retriesRemaining")}];
    [defaults setObject:v10 forKey:@"retriesRemaining"];

LABEL_7:
    v8 = 1;
    goto LABEL_8;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (BOOL)commitIdentifiersToRetryTransaction:(id)transaction
{
  transactionCopy = transaction;
  identifiersToRetry = [transactionCopy identifiersToRetry];
  if (identifiersToRetry)
  {
  }

  else
  {
    snapshot = [(ELSManager *)self snapshot];
    identifiersToRetry2 = [snapshot identifiersToRetry];

    if (identifiersToRetry2)
    {
      defaults = [(ELSManager *)self defaults];
      [defaults removeObjectForKey:@"identifiersToRetry"];
      goto LABEL_8;
    }
  }

  identifiersToRetry3 = [transactionCopy identifiersToRetry];
  snapshot2 = [(ELSManager *)self snapshot];
  identifiersToRetry4 = [snapshot2 identifiersToRetry];
  v9 = [(ELSManager *)self object:identifiersToRetry3 isEqualToObject:identifiersToRetry4];

  if (!v9)
  {
    defaults = [(ELSManager *)self defaults];
    identifiersToRetry5 = [transactionCopy identifiersToRetry];
    [defaults setObject:identifiersToRetry5 forKey:@"identifiersToRetry"];

LABEL_8:
    v10 = 1;
    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (BOOL)commitMetadataTransaction:(id)transaction
{
  transactionCopy = transaction;
  metadata = [transactionCopy metadata];
  if (metadata)
  {
  }

  else
  {
    snapshot = [(ELSManager *)self snapshot];
    metadata2 = [snapshot metadata];

    if (metadata2)
    {
      defaults = [(ELSManager *)self defaults];
      [defaults removeObjectForKey:@"metadata"];
      goto LABEL_8;
    }
  }

  metadata3 = [transactionCopy metadata];
  snapshot2 = [(ELSManager *)self snapshot];
  metadata4 = [snapshot2 metadata];
  v9 = [(ELSManager *)self object:metadata3 isEqualToObject:metadata4];

  if (!v9)
  {
    defaults = [(ELSManager *)self defaults];
    metadata5 = [transactionCopy metadata];
    [defaults setObject:metadata5 forKey:@"metadata"];

LABEL_8:
    v10 = 1;
    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (BOOL)commitUploadCompletedPercentage:(id)percentage
{
  percentageCopy = percentage;
  uploadCompletedPercentage = [percentageCopy uploadCompletedPercentage];
  if (uploadCompletedPercentage)
  {
  }

  else
  {
    snapshot = [(ELSManager *)self snapshot];
    uploadCompletedPercentage2 = [snapshot uploadCompletedPercentage];

    if (uploadCompletedPercentage2)
    {
      defaults = [(ELSManager *)self defaults];
      [defaults removeObjectForKey:@"uploadCompletedPercentage"];
      goto LABEL_8;
    }
  }

  uploadCompletedPercentage3 = [percentageCopy uploadCompletedPercentage];
  snapshot2 = [(ELSManager *)self snapshot];
  uploadCompletedPercentage4 = [snapshot2 uploadCompletedPercentage];
  v9 = [(ELSManager *)self object:uploadCompletedPercentage3 isEqualToObject:uploadCompletedPercentage4];

  if (!v9)
  {
    defaults = [(ELSManager *)self defaults];
    uploadCompletedPercentage5 = [percentageCopy uploadCompletedPercentage];
    [defaults setObject:uploadCompletedPercentage5 forKey:@"uploadCompletedPercentage"];

LABEL_8:
    v10 = 1;
    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (BOOL)commitFollowUpOptions:(id)options
{
  optionsCopy = options;
  followUpOptions = [optionsCopy followUpOptions];
  if (followUpOptions)
  {
  }

  else
  {
    snapshot = [(ELSManager *)self snapshot];
    followUpOptions2 = [snapshot followUpOptions];

    if (followUpOptions2)
    {
      defaults = [(ELSManager *)self defaults];
      [defaults removeObjectForKey:@"followUpOptions"];
      goto LABEL_8;
    }
  }

  followUpOptions3 = [optionsCopy followUpOptions];
  snapshot2 = [(ELSManager *)self snapshot];
  followUpOptions4 = [snapshot2 followUpOptions];
  v9 = [(ELSManager *)self object:followUpOptions3 isEqualToObject:followUpOptions4];

  if (!v9)
  {
    defaults = [(ELSManager *)self defaults];
    followUpOptions5 = [optionsCopy followUpOptions];
    [defaults setObject:followUpOptions5 forKey:@"followUpOptions"];

LABEL_8:
    v10 = 1;
    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (BOOL)commitTopLevelPrivacyPolicy:(id)policy
{
  policyCopy = policy;
  topLevelPrivacyPolicy = [policyCopy topLevelPrivacyPolicy];
  if (topLevelPrivacyPolicy)
  {
  }

  else
  {
    snapshot = [(ELSManager *)self snapshot];
    topLevelPrivacyPolicy2 = [snapshot topLevelPrivacyPolicy];

    if (topLevelPrivacyPolicy2)
    {
      defaults = [(ELSManager *)self defaults];
      [defaults removeObjectForKey:@"topLevelPrivacyPolicy"];
      goto LABEL_8;
    }
  }

  topLevelPrivacyPolicy3 = [policyCopy topLevelPrivacyPolicy];
  snapshot2 = [(ELSManager *)self snapshot];
  topLevelPrivacyPolicy4 = [snapshot2 topLevelPrivacyPolicy];
  v9 = [(ELSManager *)self privacyPolicy:topLevelPrivacyPolicy3 isEqualToPolicy:topLevelPrivacyPolicy4];

  if (!v9)
  {
    defaults = [(ELSManager *)self defaults];
    topLevelPrivacyPolicy5 = [policyCopy topLevelPrivacyPolicy];
    dictionaryRepresentation = [topLevelPrivacyPolicy5 dictionaryRepresentation];
    [defaults setObject:dictionaryRepresentation forKey:@"topLevelPrivacyPolicy"];

LABEL_8:
    v10 = 1;
    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (BOOL)commitDeviceSelectionMap:(id)map
{
  mapCopy = map;
  deviceSelection = [mapCopy deviceSelection];
  if (deviceSelection)
  {
  }

  else
  {
    snapshot = [(ELSManager *)self snapshot];
    deviceSelection2 = [snapshot deviceSelection];

    if (deviceSelection2)
    {
      defaults = [(ELSManager *)self defaults];
      [defaults removeObjectForKey:@"deviceSelection"];
      goto LABEL_8;
    }
  }

  deviceSelection3 = [mapCopy deviceSelection];
  snapshot2 = [(ELSManager *)self snapshot];
  deviceSelection4 = [snapshot2 deviceSelection];
  v9 = [(ELSManager *)self object:deviceSelection3 isEqualToObject:deviceSelection4];

  if (!v9)
  {
    defaults = [(ELSManager *)self defaults];
    deviceSelection5 = [mapCopy deviceSelection];
    [defaults setObject:deviceSelection5 forKey:@"deviceSelection"];

LABEL_8:
    v10 = 1;
    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (BOOL)object:(id)object isEqualToObject:(id)toObject
{
  if (object | toObject)
  {
    return [object isEqual:toObject];
  }

  else
  {
    return 1;
  }
}

- (BOOL)array:(id)array isEqualToArray:(id)toArray
{
  if (array | toArray)
  {
    return [array isEqualToArray:toArray];
  }

  else
  {
    return 1;
  }
}

- (BOOL)privacyPolicy:(id)policy isEqualToPolicy:(id)toPolicy
{
  if (policy | toPolicy)
  {
    return [policy isEqualToDescription:toPolicy];
  }

  else
  {
    return 1;
  }
}

- (void)refreshWithCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = ELSLogHandleForCategory(11);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24A07C000, v5, OS_LOG_TYPE_DEFAULT, "Performing refresh of enhanced logging state...", buf, 2u);
  }

  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  snapshot = [(ELSManager *)self snapshot];
  status = [snapshot status];

  v24[3] = status;
  *buf = 0;
  v19 = buf;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  snapshot2 = [(ELSManager *)self snapshot];
  dedSessionIdentifier = [snapshot2 dedSessionIdentifier];

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
  v11 = completionCopy;
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

- (void)getBugSessionActivityWithCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = ELSLogHandleForCategory(11);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    snapshot = [(ELSManager *)self snapshot];
    dedSessionIdentifier = [snapshot dedSessionIdentifier];
    v17 = 138412290;
    v18 = dedSessionIdentifier;
    _os_log_impl(&dword_24A07C000, v5, OS_LOG_TYPE_DEFAULT, "Checking %@ bug session activity (defaults scan)...", &v17, 0xCu);
  }

  snapshot2 = [(ELSManager *)self snapshot];
  targetDevices = [snapshot2 targetDevices];

  if (targetDevices)
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
        snapshot3 = [(ELSManager *)self snapshot];
        dedSessionIdentifier2 = [snapshot3 dedSessionIdentifier];
        v10 = [v13 containsObject:dedSessionIdentifier2];
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

  completionCopy[2](completionCopy, v10);

  v16 = *MEMORY[0x277D85DE8];
}

@end