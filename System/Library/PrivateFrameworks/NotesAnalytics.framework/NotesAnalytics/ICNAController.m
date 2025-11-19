@interface ICNAController
+ (BOOL)audioSummaryEnabled;
+ (BOOL)audioTranscriptEnabled;
+ (BOOL)localNotesEnabled;
+ (NSString)deviceID;
+ (NSString)deviceModel;
+ (NSString)devicePlatform;
+ (NSString)osVersion;
+ (NSString)saltVersion;
+ (NSString)storeFrontID;
+ (NSString)userID;
+ (id)osBundleVersion;
+ (id)privateUserID;
+ (id)sharedController;
+ (int64_t)accountTypeEnumForHTMLAccount:(id)a3;
+ (int64_t)accountTypeEnumForModernAccount:(id)a3;
+ (unint64_t)startMonth;
+ (unint64_t)startYear;
- (BOOL)killEndSessionBackgroundTaskIfNecessary;
- (BOOL)killEndSessionBackgroundTaskIfNecessaryForWindowScene:(id)a3;
- (ICNAController)init;
- (ICNAControllerAppDelegate)appDelegate;
- (ICNADebugEventProcessor)debugProcessor;
- (NSString)name;
- (NSURL)url;
- (id)aaTrackerForWindowSceneIdentifier:(id)a3;
- (id)accountTypeSummary;
- (id)appData;
- (id)cellularRadioAccessTechnology;
- (id)createSessionManager;
- (id)debugData;
- (id)deviceData;
- (id)referralData;
- (id)sessionManagerForWindowSceneIdentifier:(id)a3 shouldCreate:(BOOL)a4;
- (id)sessionTrackerForWindowSceneIdentifier:(id)a3;
- (id)userData;
- (int64_t)appSessionState;
- (int64_t)globalSessionState;
- (void)_immediatelySubmitEventOfType:(Class)a3 pushThenPopDataObjects:(id)a4 subTracker:(id)a5;
- (void)_immediatelySubmitEventOfType:(Class)a3 subTracker:(id)a4;
- (void)addReferralDataWithReferringInboundURL:(id)a3 referringApplication:(id)a4;
- (void)addSnapshotReferralDataToSessionLevel;
- (void)appSessionDidTerminate;
- (void)clearSessionForWindowSceneIdentifier:(id)a3;
- (void)dealloc;
- (void)endSessionSynchronously:(BOOL)a3 forSessionType:(int64_t)a4 endReason:(int64_t)a5;
- (void)endWindowSceneSessionSynchronously:(BOOL)a3 forSessionType:(int64_t)a4 endReason:(int64_t)a5 windowScene:(id)a6;
- (void)enterGroupWithSubtracker:(id)a3;
- (void)flushWithCompletionHandler:(id)a3;
- (void)generatePrivateSessionIDIfNecessary;
- (void)leaveGroupWithSubtracker:(id)a3 completionHandler:(id)a4;
- (void)newAATrackerWithName:(id)a3 parentAATracker:(id)a4 completionBlock:(id)a5;
- (void)newAATrackerWithName:(id)a3 parentTracker:(id)a4 completionBlock:(id)a5;
- (void)performOnInstrumentationQueueWaitUntilDone:(BOOL)a3 block:(id)a4;
- (void)popDataObjectWithType:(Class)a3 subTracker:(id)a4;
- (void)popDataObjectsWithTypes:(id)a3 subTracker:(id)a4;
- (void)pushDataObject:(id)a3 unique:(BOOL)a4 onlyOnce:(BOOL)a5 subTracker:(id)a6;
- (void)pushDataObjects:(id)a3 unique:(BOOL)a4 onlyOnce:(BOOL)a5 subTracker:(id)a6;
- (void)pushLongLivedDataObjects:(id)a3 privateSessionIdentifier:(id)a4;
- (void)pushLongLivedOrientationData:(id)a3;
- (void)pushLongLivedPrivateDeviceData:(id)a3;
- (void)pushLongLivedPrivateEventData:(id)a3 privateSessionIdentifier:(id)a4;
- (void)pushLongLivedPrivateUserData:(id)a3;
- (void)pushLongLivedSessionSummaryData:(id)a3;
- (void)pushReferralDataToSessionManager:(id)a3;
- (void)pushToSessionManager:(id)a3 data:(id)a4 forKey:(id)a5 traits:(id)a6;
- (void)pushToSessionManager:(id)a3 endReason:(int64_t)a4;
- (void)pushUniqueDataObject:(id)a3 tracker:(id)a4;
- (void)removePreSydneyDAnalyticsData;
- (void)setAppSessionState:(int64_t)a3;
- (void)setGlobalSessionState:(int64_t)a3;
- (void)startAppAndGlobalSessionIfNecessaryWithReferralURL:(id)a3 referralApplication:(id)a4;
- (void)startAppSession;
- (void)startSessionWithReferralURL:(id)a3 referralApplication:(id)a4 startingSessionType:(int64_t)a5;
- (void)startSessionWithType:(int64_t)a3;
- (void)startWindowSceneSessionWithType:(int64_t)a3 windowScene:(id)a4 successHandler:(id)a5;
- (void)submitEventOfType:(Class)a3 pushThenPopDataObjects:(id)a4 subTracker:(id)a5;
- (void)submitEventOfType:(Class)a3 subTracker:(id)a4 synchronousTaskBeforeSubmitting:(id)a5;
- (void)trackTimedEventType:(Class)a3 subTracker:(id)a4 synchronousTaskBeforeStarting:(id)a5;
@end

@implementation ICNAController

+ (id)sharedController
{
  if (s_onceToken_4 != -1)
  {
    +[ICNAController sharedController];
  }

  v3 = sharedController_s_instance_0;

  return v3;
}

uint64_t __34__ICNAController_sharedController__block_invoke()
{
  sharedController_s_instance_0 = objc_alloc_init(ICNAController);

  return MEMORY[0x2821F96F8]();
}

- (ICNAController)init
{
  v36.receiver = self;
  v36.super_class = ICNAController;
  v2 = [(ICNAOptedInObject *)&v36 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_get_global_queue(0, 0);
    v5 = dispatch_queue_create_with_target_V2("ICNAController.instrumentationQueue", v3, v4);
    instrumentationQueue = v2->_instrumentationQueue;
    v2->_instrumentationQueue = v5;

    v7 = [MEMORY[0x277CEAF48] shared];
    if (+[ICNAOptedInObject isOptedInForAnalytics])
    {
      [v7 allow];
    }

    v8 = [objc_alloc(MEMORY[0x277CEAEE8]) initWithTrackingConsent:v7];
    appSessionManager = v2->_appSessionManager;
    v2->_appSessionManager = v8;

    v10 = objc_alloc(MEMORY[0x277CEAEF0]);
    v11 = [MEMORY[0x277CCA8D8] mainBundle];
    v12 = [v10 initWithBundle:v11];
    client = v2->_client;
    v2->_client = v12;

    v14 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
    v15 = [v14 BOOLForKey:@"analyticsEnableBatchDebugging"];

    v16 = [MEMORY[0x277CEAF50] default];
    v17 = [v16 withDebuggingEnabled:v15];
    uploadBatchEventConfig = v2->_uploadBatchEventConfig;
    v2->_uploadBatchEventConfig = v17;

    v19 = objc_alloc_init(ICNAServerEnvironment);
    serverEnvironment = v2->_serverEnvironment;
    v2->_serverEnvironment = v19;

    v21 = [objc_alloc(MEMORY[0x277CEAF10]) initWithAppSessionManager:v2->_appSessionManager client:v2->_client endpoint:v2 config:v2->_uploadBatchEventConfig];
    flushManager = v2->_flushManager;
    v2->_flushManager = v21;

    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sessionForWindowDict = v2->_sessionForWindowDict;
    v2->_sessionForWindowDict = v23;

    v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sessionTrackerForWindowDict = v2->_sessionTrackerForWindowDict;
    v2->_sessionTrackerForWindowDict = v25;

    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*MEMORY[0x277D767B0]];
    endSessionBackgroundTaskIdentifier = v2->_endSessionBackgroundTaskIdentifier;
    v2->_endSessionBackgroundTaskIdentifier = v27;

    v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
    endSessionBackgroundTaskIdentifiersByWindowSceneIdentifier = v2->_endSessionBackgroundTaskIdentifiersByWindowSceneIdentifier;
    v2->_endSessionBackgroundTaskIdentifiersByWindowSceneIdentifier = v29;

    objc_storeStrong(&v2->_privateSessionID, @"session_inactive");
    v2->_globalSessionState = 0;
    v2->_appSessionState = 0;
    v31 = objc_alloc_init(ICNAMultiSceneSessionTracker);
    multiSceneSessionTracker = v2->_multiSceneSessionTracker;
    v2->_multiSceneSessionTracker = v31;

    v2->_deviceOrientationEnum = 0;
    performBlockOnMainThreadAndWait();
    v33 = [MEMORY[0x277CCAB98] defaultCenter];
    [v33 addObserver:v2 selector:sel_orientationDidChange_ name:*MEMORY[0x277D76878] object:0];

    v34 = +[ICNAInlineDrawingRecognitionReporter sharedReporter];
    [(ICNAController *)v2 removePreSydneyDAnalyticsData];
    [(ICNAController *)v2 flushWithCompletionHandler:&__block_literal_global_86];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICNAController;
  [(ICNAController *)&v4 dealloc];
}

- (void)startSessionWithReferralURL:(id)a3 referralApplication:(id)a4 startingSessionType:(int64_t)a5
{
  v14 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    v10 = [(__CFString *)v8 lowercaseString];
    v11 = [v10 hasPrefix:@"com.apple."];

    if ((v11 & 1) == 0)
    {

      v9 = @"other";
    }
  }

  v12 = [(ICNAController *)self referringApplication];

  if (!v12)
  {
    [(ICNAController *)self setReferringApplication:v9];
  }

  v13 = [(ICNAController *)self referringInboundURL];

  if (!v13)
  {
    [(ICNAController *)self setReferringInboundURL:v14];
  }

  [(ICNAController *)self startSessionWithType:a5];
}

void __22__ICNAController_init__block_invoke()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  [v0 beginGeneratingDeviceOrientationNotifications];
}

void __22__ICNAController_init__block_invoke_2()
{
  v0 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_25C6BF000, v0, OS_LOG_TYPE_INFO, "Completed flush of analytics data", v1, 2u);
  }
}

- (void)generatePrivateSessionIDIfNecessary
{
  v3 = [(ICNAController *)self privateSessionID];
  if (!v3 || (v4 = v3, -[ICNAController privateSessionID](self, "privateSessionID"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [@"session_inactive" isEqualToString:v5], v5, v4, v6))
  {
    v8 = [MEMORY[0x277CCAD78] UUID];
    v7 = [v8 UUIDString];
    [(ICNAController *)self setPrivateSessionID:v7];
  }
}

- (void)startAppSession
{
  [(ICNAController *)self generatePrivateSessionIDIfNecessary];
  v3 = [(ICNAController *)self instrumentationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__ICNAController_startAppSession__block_invoke;
  block[3] = &unk_2799AF130;
  block[4] = self;
  dispatch_async(v3, block);
}

void __33__ICNAController_startAppSession__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appSessionManager];
  v3 = objc_opt_respondsToSelector();

  v4 = [*(a1 + 32) appSessionManager];
  v5 = v4;
  if (v3)
  {
    [v4 startAppSessionWithShouldCorrelateSceneSessions:0];
  }

  else
  {
    [v4 startAppSession];
  }

  [*(a1 + 32) setAppSessionState:1];
  v6 = [*(a1 + 32) createSessionManager];
  [*(a1 + 32) setSessionManager:v6];

  [*(a1 + 32) orientationDidChange:0];
  v7 = *(a1 + 32);
  v9 = [v7 sessionManager];
  v8 = [v9 tracker];
  [v7 pushLongLivedDataObjects:v8];
}

- (void)startAppAndGlobalSessionIfNecessaryWithReferralURL:(id)a3 referralApplication:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(ICNAController *)self appSessionState])
  {
    v8 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [ICNAController startAppAndGlobalSessionIfNecessaryWithReferralURL:referralApplication:];
    }
  }

  else
  {
    [(ICNAController *)self startAppSession];
    v8 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [ICNAController startAppAndGlobalSessionIfNecessaryWithReferralURL:referralApplication:];
    }
  }

  if ([(ICNAController *)self globalSessionState])
  {
    v9 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [ICNAController startAppAndGlobalSessionIfNecessaryWithReferralURL:referralApplication:];
    }
  }

  else
  {
    [(ICNAController *)self startSessionWithReferralURL:v6 referralApplication:v7 startingSessionType:4];
    v9 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [ICNAController startAppAndGlobalSessionIfNecessaryWithReferralURL:referralApplication:];
    }
  }
}

- (void)appSessionDidTerminate
{
  v3 = [(ICNAController *)self instrumentationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ICNAController_appSessionDidTerminate__block_invoke;
  block[3] = &unk_2799AF130;
  block[4] = self;
  dispatch_async(v3, block);
}

void __40__ICNAController_appSessionDidTerminate__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2 sessionManager];
  [v2 pushToSessionManager:v3 endReason:3];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [*(a1 + 32) sessionForWindowDict];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(a1 + 32) pushToSessionManager:*(*(&v12 + 1) + 8 * i) endReason:3];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [*(a1 + 32) setAppSessionState:0];
  v10 = [*(a1 + 32) appSessionManager];
  [v10 appSessionDidTerminate];

  v11 = *MEMORY[0x277D85DE8];
}

- (id)sessionManagerForWindowSceneIdentifier:(id)a3 shouldCreate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(ICNAController *)v7 sessionForWindowDict];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (!v9 && v4)
  {
    v9 = [(ICNAController *)v7 createSessionManager];
    v10 = [(ICNAController *)v7 sessionForWindowDict];
    [v10 setObject:v9 forKeyedSubscript:v6];
  }

  objc_sync_exit(v7);

  return v9;
}

- (id)sessionTrackerForWindowSceneIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(ICNAController *)v5 sessionTrackerForWindowDict];
  v7 = [v6 objectForKeyedSubscript:v4];

  if (!v7)
  {
    v7 = objc_alloc_init(ICNAMultiSceneSessionTracker);
    v8 = [(ICNAController *)v5 sessionTrackerForWindowDict];
    [v8 setObject:v7 forKeyedSubscript:v4];
  }

  objc_sync_exit(v5);

  return v7;
}

- (void)clearSessionForWindowSceneIdentifier:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(ICNAController *)v4 sessionForWindowDict];
  [v5 setObject:0 forKeyedSubscript:v7];

  v6 = [(ICNAController *)v4 sessionTrackerForWindowDict];
  [v6 setObject:0 forKeyedSubscript:v7];

  objc_sync_exit(v4);
}

- (id)aaTrackerForWindowSceneIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(ICNAController *)v5 sessionManagerForWindowSceneIdentifier:v4];
    v7 = [v6 tracker];

    objc_sync_exit(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)createSessionManager
{
  v3 = [(ICNAController *)self appSessionManager];
  v4 = [v3 createSessionManager];

  v5 = [objc_alloc(MEMORY[0x277CEAF18]) initWithFormat:2];
  v6 = [v4 processorManager];
  [v6 addEventProcessor:v5];

  v7 = objc_alloc(MEMORY[0x277CEAF58]);
  v8 = [(ICNAController *)self client];
  v9 = [(ICNAController *)self uploadBatchEventConfig];
  v10 = [v7 initWithClient:v8 endpoint:self config:v9];

  v11 = [v4 processorManager];
  [v11 addEventProcessor:v10];

  v12 = [(ICNAController *)self debugProcessor];
  if (v12)
  {
    v13 = [v4 processorManager];
    [v13 addEventProcessor:v12];
  }

  return v4;
}

- (void)startSessionWithType:(int64_t)a3
{
  [(ICNAController *)self generatePrivateSessionIDIfNecessary];
  v5 = [(ICNAController *)self instrumentationQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__ICNAController_startSessionWithType___block_invoke;
  v6[3] = &unk_2799B0070;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

void __39__ICNAController_startSessionWithType___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) multiSceneSessionTracker];
  v3 = [v2 isInvalidated];

  if (v3)
  {
    v4 = objc_alloc_init(ICNAMultiSceneSessionTracker);
    [*(a1 + 32) setMultiSceneSessionTracker:v4];
  }

  v5 = *(a1 + 40);
  switch(v5)
  {
    case 1:
      v6 = [*(a1 + 32) multiSceneSessionTracker];
      [v6 startPaperSession];
      goto LABEL_8;
    case 4:
      goto LABEL_12;
    case 2:
      v6 = [*(a1 + 32) multiSceneSessionTracker];
      [v6 startNotesSession];
LABEL_8:

      goto LABEL_12;
  }

  v7 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __39__ICNAController_startSessionWithType___block_invoke_cold_1((a1 + 40));
  }

LABEL_12:
  v8 = *(a1 + 32);
  v9 = [v8 sessionManager];
  v10 = [v9 tracker];
  [v8 pushLongLivedPrivateEventData:v10];

  if ([*(a1 + 32) globalSessionState] == 1)
  {
    v11 = [*(a1 + 32) referringInboundURL];
    if (v11)
    {
    }

    else
    {
      v26 = [*(a1 + 32) referringApplication];

      if (!v26)
      {
LABEL_20:
        v17 = os_log_create("com.apple.notes", "Analytics");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v29 = [*(a1 + 32) multiSceneSessionTracker];
          v30 = [v29 sessionDetailDescription];
          *buf = 138412290;
          v34 = v30;
          _os_log_impl(&dword_25C6BF000, v17, OS_LOG_TYPE_INFO, "Not Starting AA Session as it already exists. Session Type Detail: %@", buf, 0xCu);
        }

        v15 = v17;
        goto LABEL_23;
      }
    }

    v27 = *(a1 + 32);
    v28 = [v27 sessionManager];
    [v27 pushReferralDataToSessionManager:v28];

    goto LABEL_20;
  }

  v12 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [*(a1 + 32) multiSceneSessionTracker];
    v14 = [v13 sessionDetailDescription];
    *buf = 138412290;
    v34 = v14;
    _os_log_impl(&dword_25C6BF000, v12, OS_LOG_TYPE_INFO, "Really Starting AA Session. Session Type Detail: %@", buf, 0xCu);
  }

  v15 = [MEMORY[0x277CBEAA8] date];
  v16 = [MEMORY[0x277CEAF40] default];
  v17 = [v16 withEnabled:1];

  v18 = [*(a1 + 32) sessionManager];
  v19 = [MEMORY[0x277CCAD78] UUID];
  v20 = [v19 UUIDString];
  [v18 startSessionForKind:0 withName:0 identifier:v20 startDate:v15 timestampJitter:v17];

  [*(a1 + 32) setGlobalSessionState:1];
  [*(a1 + 32) setSessionStartDate:v15];
  v21 = [*(a1 + 32) sessionManager];
  v22 = [v21 tracker];

  [v22 submitEventType:objc_opt_class()];
  [v22 timeEventType:objc_opt_class()];
  v23 = +[ICNAIdentityManager sharedManager];
  [v23 loadIdentifiersAndRegenerateIfNecessary];

  v24 = [*(a1 + 32) instrumentationQueue];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __39__ICNAController_startSessionWithType___block_invoke_101;
  v32[3] = &unk_2799B0070;
  v25 = *(a1 + 40);
  v32[4] = *(a1 + 32);
  v32[5] = v25;
  dispatch_async(v24, v32);

LABEL_23:
  v31 = *MEMORY[0x277D85DE8];
}

void __39__ICNAController_startSessionWithType___block_invoke_101(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 sessionManager];
  [v2 pushSessionLevelDataIntoSessionManager:v3 withSessionType:*(a1 + 40) isGlobalSession:1];
}

- (void)startWindowSceneSessionWithType:(int64_t)a3 windowScene:(id)a4 successHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [v8 session];
  v11 = [v10 persistentIdentifier];

  v12 = [(ICNAController *)self instrumentationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__ICNAController_startWindowSceneSessionWithType_windowScene_successHandler___block_invoke;
  block[3] = &unk_2799B00E8;
  block[4] = self;
  v17 = v11;
  v19 = v9;
  v20 = a3;
  v18 = v8;
  v13 = v9;
  v14 = v8;
  v15 = v11;
  dispatch_async(v12, block);
}

void __77__ICNAController_startWindowSceneSessionWithType_windowScene_successHandler___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25C6BF000, v2, OS_LOG_TYPE_INFO, "Really Starting AA Window Session.", buf, 2u);
  }

  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [MEMORY[0x277CCAD78] UUID];
  v5 = [v4 UUIDString];

  v6 = [MEMORY[0x277CCAD78] UUID];
  v7 = [v6 UUIDString];

  v8 = [MEMORY[0x277CEAF40] default];
  v9 = [v8 withEnabled:1];

  v10 = [*(a1 + 32) sessionManagerForWindowSceneIdentifier:*(a1 + 40) shouldCreate:1];
  [v10 startSessionForKind:0 withName:0 identifier:v5 startDate:v3 timestampJitter:v9];
  v11 = [*(a1 + 32) sessionTrackerForWindowSceneIdentifier:*(a1 + 40)];
  v12 = v11;
  v13 = *(a1 + 64);
  if (v13 == 1)
  {
    [v11 startPaperSession];
  }

  else if (v13 == 2)
  {
    [v11 startNotesSession];
  }

  v14 = [v10 tracker];
  [*(a1 + 32) pushLongLivedDataObjects:v14 privateSessionIdentifier:v7];
  [v14 submitEventType:objc_opt_class()];
  [v14 timeEventType:objc_opt_class()];
  v15 = +[ICNAIdentityManager sharedManager];
  [v15 loadIdentifiersAndRegenerateIfNecessary];

  v16 = [*(a1 + 32) instrumentationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__ICNAController_startWindowSceneSessionWithType_windowScene_successHandler___block_invoke_104;
  block[3] = &unk_2799B0098;
  block[4] = *(a1 + 32);
  v17 = v10;
  v18 = *(a1 + 64);
  v30 = v17;
  v31 = v18;
  dispatch_async(v16, block);

  v19 = [*(a1 + 32) appDelegate];

  if (v19)
  {
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __77__ICNAController_startWindowSceneSessionWithType_windowScene_successHandler___block_invoke_2;
    v26 = &unk_2799AF050;
    v27 = *(a1 + 32);
    v28 = *(a1 + 48);
    performBlockOnMainThread();
  }

  v20 = [*(a1 + 32) instrumentationQueue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __77__ICNAController_startWindowSceneSessionWithType_windowScene_successHandler___block_invoke_3;
  v21[3] = &unk_2799B00C0;
  v22 = *(a1 + 56);
  dispatch_async(v20, v21);
}

void __77__ICNAController_startWindowSceneSessionWithType_windowScene_successHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appDelegate];
  [v2 sessionDidStartForWindowScene:*(a1 + 40)];
}

uint64_t __77__ICNAController_startWindowSceneSessionWithType_windowScene_successHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (int64_t)globalSessionState
{
  v2 = self;
  objc_sync_enter(v2);
  globalSessionState = v2->_globalSessionState;
  objc_sync_exit(v2);

  return globalSessionState;
}

- (int64_t)appSessionState
{
  v2 = self;
  objc_sync_enter(v2);
  appSessionState = v2->_appSessionState;
  objc_sync_exit(v2);

  return appSessionState;
}

- (void)setGlobalSessionState:(int64_t)a3
{
  [(ICNAController *)self assertInstrumentationQueue];
  obj = self;
  objc_sync_enter(obj);
  v5 = obj;
  globalSessionState = obj->_globalSessionState;
  if (globalSessionState != a3)
  {
    if (a3 < 1 || globalSessionState)
    {
      if (a3 || globalSessionState < 1)
      {
        goto LABEL_9;
      }

      [(ICNAController *)obj setPrivateSessionID:@"session_inactive"];
      v7 = [(ICNAController *)obj sessionManager];
      v8 = [v7 tracker];
      [(ICNAController *)obj pushLongLivedPrivateEventData:v8];
    }

    else
    {
      [(ICNAController *)obj generatePrivateSessionIDIfNecessary];
      v7 = [(ICNAController *)obj sessionManager];
      v8 = [v7 tracker];
      [(ICNAController *)obj pushLongLivedPrivateEventData:v8];
    }

    v5 = obj;
LABEL_9:
    v5->_globalSessionState = a3;
  }

  objc_sync_exit(v5);
}

- (void)setAppSessionState:(int64_t)a3
{
  [(ICNAController *)self assertInstrumentationQueue];
  obj = self;
  objc_sync_enter(obj);
  if (obj->_appSessionState != a3)
  {
    obj->_appSessionState = a3;
  }

  objc_sync_exit(obj);
}

- (BOOL)killEndSessionBackgroundTaskIfNecessary
{
  v3 = [(ICNAController *)self appDelegate];

  if (!v3)
  {
    return 0;
  }

  v4 = [(ICNAController *)self endSessionBackgroundTaskIdentifier];
  objc_sync_enter(v4);
  v5 = [(ICNAController *)self endSessionBackgroundTaskIdentifier];
  v6 = [v5 unsignedIntegerValue];

  v7 = *MEMORY[0x277D767B0];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*MEMORY[0x277D767B0]];
  [(ICNAController *)self setEndSessionBackgroundTaskIdentifier:v8];

  objc_sync_exit(v4);
  if (v6 == v7)
  {
    return 0;
  }

  v10 = [(ICNAController *)self appDelegate];
  [v10 endBackgroundTask:v6];

  return 1;
}

- (BOOL)killEndSessionBackgroundTaskIfNecessaryForWindowScene:(id)a3
{
  v4 = a3;
  v5 = [(ICNAController *)self appDelegate];

  if (v5)
  {
    v6 = [v4 session];
    v7 = [v6 persistentIdentifier];

    v8 = [(ICNAController *)self endSessionBackgroundTaskIdentifiersByWindowSceneIdentifier];
    objc_sync_enter(v8);
    v9 = [(ICNAController *)self endSessionBackgroundTaskIdentifiersByWindowSceneIdentifier];
    v10 = [v9 objectForKeyedSubscript:v7];
    v11 = [v10 unsignedIntegerValue];

    v12 = *MEMORY[0x277D767B0];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*MEMORY[0x277D767B0]];
    v14 = [(ICNAController *)self endSessionBackgroundTaskIdentifiersByWindowSceneIdentifier];
    [v14 setObject:v13 forKeyedSubscript:v7];

    objc_sync_exit(v8);
    v15 = v11 != v12;
    if (v11 != v12)
    {
      v16 = [(ICNAController *)self appDelegate];
      [v16 endBackgroundTask:v11];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)performOnInstrumentationQueueWaitUntilDone:(BOOL)a3 block:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(ICNAController *)self instrumentationQueue];
  v8 = v7;
  if (v4)
  {
    dispatch_sync(v7, v6);
  }

  else
  {
    dispatch_async(v7, v6);
  }
}

- (void)endSessionSynchronously:(BOOL)a3 forSessionType:(int64_t)a4 endReason:(int64_t)a5
{
  v6 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __67__ICNAController_endSessionSynchronously_forSessionType_endReason___block_invoke;
  v19[3] = &unk_2799B0160;
  v20 = a3;
  v19[4] = self;
  v19[5] = a5;
  v8 = MEMORY[0x25F88B7A0](v19, a2);
  if (v6)
  {
    v9 = [(ICNAController *)self multiSceneSessionTracker];
    [v9 endAllSessionsAndInvalidate];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __67__ICNAController_endSessionSynchronously_forSessionType_endReason___block_invoke_120;
    v18[3] = &unk_2799AF130;
    v18[4] = self;
    [(ICNAController *)self performOnInstrumentationQueueWaitUntilDone:1 block:v18];
    v10 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [(ICNAController *)self multiSceneSessionTracker];
      v12 = [v11 sessionDetailDescription];
      *buf = 138412290;
      v22 = v12;
      _os_log_impl(&dword_25C6BF000, v10, OS_LOG_TYPE_INFO, "Synchronously ending AA Session. Session Type Detail: %@", buf, 0xCu);
    }

    if (v8)
    {
      v8[2](v8);
    }
  }

  else
  {
    v13 = [(ICNAController *)self instrumentationQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__ICNAController_endSessionSynchronously_forSessionType_endReason___block_invoke_121;
    block[3] = &unk_2799B0188;
    v17 = a4;
    block[4] = self;
    v16 = v8;
    dispatch_async(v13, block);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __67__ICNAController_endSessionSynchronously_forSessionType_endReason___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) appDelegate];

  if (v2)
  {
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __67__ICNAController_endSessionSynchronously_forSessionType_endReason___block_invoke_2;
    v13 = &unk_2799AF408;
    objc_copyWeak(&v14, &location);
    performBlockOnMainThreadAndWait();
    objc_destroyWeak(&v14);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"ICNASessionWillEndNotification" object:*(a1 + 32)];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"ICNASessionFlushTimedDataNotification" object:*(a1 + 32)];

  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__ICNAController_endSessionSynchronously_forSessionType_endReason___block_invoke_108;
  v7[3] = &unk_2799B0138;
  v7[4] = v5;
  objc_copyWeak(v8, &location);
  v9 = *(a1 + 48);
  v8[1] = *(a1 + 40);
  [v5 performOnInstrumentationQueueWaitUntilDone:v6 block:v7];
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

void __67__ICNAController_endSessionSynchronously_forSessionType_endReason___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained endSessionBackgroundTaskIdentifier];
    objc_sync_enter(v3);
    v4 = [v2 appDelegate];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __67__ICNAController_endSessionSynchronously_forSessionType_endReason___block_invoke_3;
    v7[3] = &unk_2799AF130;
    v7[4] = v2;
    v5 = [v4 beginBackgroundTaskWithName:@"Finish end analytics session operation" expirationHandler:v7];

    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
    [v2 setEndSessionBackgroundTaskIdentifier:v6];

    objc_sync_exit(v3);
  }
}

void __67__ICNAController_endSessionSynchronously_forSessionType_endReason___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) killEndSessionBackgroundTaskIfNecessary])
  {
    v1 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __67__ICNAController_endSessionSynchronously_forSessionType_endReason___block_invoke_3_cold_1();
    }
  }
}

void __67__ICNAController_endSessionSynchronously_forSessionType_endReason___block_invoke_108(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2 sessionManager];
  v4 = [v3 tracker];
  [v2 pushLongLivedSessionSummaryData:v4];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained globalSessionState])
    {
      [v6 setGlobalSessionState:2];
      v7 = [MEMORY[0x277CBEAA8] date];
      v8 = [*(a1 + 32) sessionStartDate];
      if (v8)
      {
        v9 = v8;
        v10 = [*(a1 + 32) sessionStartDate];
        [v7 timeIntervalSinceDate:v10];
        v12 = v11;

        if (v12 > 12000.0)
        {
          v13 = objc_alloc_init(MEMORY[0x277CCA958]);
          [v13 setZeroFormattingBehavior:1];
          [v13 setAllowedUnits:240];
          [v13 setUnitsStyle:1];
          v14 = [v13 stringFromTimeInterval:v12];
          v15 = os_log_create("com.apple.notes", "Analytics");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            __67__ICNAController_endSessionSynchronously_forSessionType_endReason___block_invoke_108_cold_1();
          }
        }
      }

      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __67__ICNAController_endSessionSynchronously_forSessionType_endReason___block_invoke_110;
      v26[3] = &unk_2799B0110;
      v27 = *(a1 + 56);
      v26[4] = *(a1 + 32);
      v26[5] = v6;
      v16 = MEMORY[0x25F88B7A0](v26);
      v17 = os_log_create("com.apple.notes", "Analytics");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        if (*(a1 + 56))
        {
          v18 = @"YES";
        }

        else
        {
          v18 = @"NO";
        }

        *buf = 138412290;
        v29 = v18;
        _os_log_impl(&dword_25C6BF000, v17, OS_LOG_TYPE_INFO, "Triggering endSessionWithCompletion. isSync: %@", buf, 0xCu);
      }

      v19 = *(a1 + 32);
      v20 = [v6 sessionManager];
      [v19 pushToSessionManager:v20 endReason:*(a1 + 48)];

      if (*(a1 + 56) == 1 && ([v6 sessionManager], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_opt_respondsToSelector(), v21, (v22 & 1) != 0))
      {
        v23 = [v6 sessionManager];
        [v23 endSync];

        v16[2](v16);
      }

      else
      {
        v24 = [v6 sessionManager];
        [v24 endSessionWithCompletion:v16];
      }
    }

    else
    {
      [v6 killEndSessionBackgroundTaskIfNecessary];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __67__ICNAController_endSessionSynchronously_forSessionType_endReason___block_invoke_110(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 48))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&dword_25C6BF000, v2, OS_LOG_TYPE_INFO, "Completed endSessionWithCompletion. isSync: %@", buf, 0xCu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__ICNAController_endSessionSynchronously_forSessionType_endReason___block_invoke_117;
  v7[3] = &unk_2799AF130;
  v4 = *(a1 + 32);
  v7[4] = *(a1 + 40);
  result = [v4 performOnInstrumentationQueueWaitUntilDone:0 block:v7];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __67__ICNAController_endSessionSynchronously_forSessionType_endReason___block_invoke_117(uint64_t a1)
{
  if ([*(a1 + 32) globalSessionState] == 2)
  {
    [*(a1 + 32) setGlobalSessionState:0];
  }

  v2 = *(a1 + 32);

  return [v2 killEndSessionBackgroundTaskIfNecessary];
}

void __67__ICNAController_endSessionSynchronously_forSessionType_endReason___block_invoke_120(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [v1 sessionManager];
  v2 = [v3 tracker];
  [v1 pushLongLivedSessionSummaryData:v2];
}

void __67__ICNAController_endSessionSynchronously_forSessionType_endReason___block_invoke_121(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 48);
  v2 = *(a1 + 48);
  switch(v2)
  {
    case 1:
      v4 = [*(a1 + 32) multiSceneSessionTracker];
      [v4 endPaperSession];
      goto LABEL_6;
    case 4:
      goto LABEL_10;
    case 2:
      v4 = [*(a1 + 32) multiSceneSessionTracker];
      [v4 endNotesSession];
LABEL_6:

      goto LABEL_10;
  }

  v5 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __67__ICNAController_endSessionSynchronously_forSessionType_endReason___block_invoke_121_cold_1(v3);
  }

LABEL_10:
  v6 = [*(a1 + 32) multiSceneSessionTracker];
  v7 = [v6 hasLiveTimers];

  if (v7)
  {
    v8 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [*(a1 + 32) multiSceneSessionTracker];
      v10 = [v9 sessionDetailDescription];
      *buf = 138412290;
      v22 = v10;
      _os_log_impl(&dword_25C6BF000, v8, OS_LOG_TYPE_INFO, "Not ending AA Session asynchronously. Session Type Detail: %@", buf, 0xCu);
    }
  }

  else
  {
    v11 = [*(a1 + 32) multiSceneSessionTracker];
    [v11 endAllSessionsAndInvalidate];

    v12 = *(a1 + 32);
    v13 = [v12 sessionManager];
    v14 = [v13 tracker];
    [v12 pushLongLivedSessionSummaryData:v14];

    v15 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [*(a1 + 32) multiSceneSessionTracker];
      v17 = [v16 sessionDetailDescription];
      *buf = 138412290;
      v22 = v17;
      _os_log_impl(&dword_25C6BF000, v15, OS_LOG_TYPE_INFO, "Ending AA Session asynchronously. Session Type Detail: %@", buf, 0xCu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__ICNAController_endSessionSynchronously_forSessionType_endReason___block_invoke_122;
    block[3] = &unk_2799B00C0;
    v20 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
    v8 = v20;
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __67__ICNAController_endSessionSynchronously_forSessionType_endReason___block_invoke_122(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __82__ICNAController_endSessionSynchronously_forSessionType_endReason_successHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)endWindowSceneSessionSynchronously:(BOOL)a3 forSessionType:(int64_t)a4 endReason:(int64_t)a5 windowScene:(id)a6
{
  v7 = a3;
  v9 = a6;
  v10 = [v9 session];
  v11 = [v10 persistentIdentifier];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __90__ICNAController_endWindowSceneSessionSynchronously_forSessionType_endReason_windowScene___block_invoke;
  v18[3] = &unk_2799B0228;
  v18[4] = self;
  v12 = v9;
  v19 = v12;
  v13 = v11;
  v22 = v7;
  v20 = v13;
  v21 = a5;
  v14 = MEMORY[0x25F88B7A0](v18);
  v15 = v14;
  if (v7)
  {
    if (v14)
    {
      v14[2](v14);
    }
  }

  else
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __90__ICNAController_endWindowSceneSessionSynchronously_forSessionType_endReason_windowScene___block_invoke_129;
    v16[3] = &unk_2799B00C0;
    v17 = v14;
    dispatch_async(MEMORY[0x277D85CD0], v16);
  }
}

void __90__ICNAController_endWindowSceneSessionSynchronously_forSessionType_endReason_windowScene___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) appDelegate];

  if (v2)
  {
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __90__ICNAController_endWindowSceneSessionSynchronously_forSessionType_endReason_windowScene___block_invoke_2;
    v17 = &unk_2799B01B0;
    objc_copyWeak(&v20, &location);
    v18 = *(a1 + 40);
    v19 = *(a1 + 48);
    performBlockOnMainThreadAndWait();

    objc_destroyWeak(&v20);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"ICNASessionWillEndNotification" object:*(a1 + 40)];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"ICNASessionFlushTimedDataNotification" object:*(a1 + 40)];

  v5 = *(a1 + 32);
  v6 = *(a1 + 64);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __90__ICNAController_endWindowSceneSessionSynchronously_forSessionType_endReason_windowScene___block_invoke_126;
  v9[3] = &unk_2799B0200;
  objc_copyWeak(v12, &location);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10 = v7;
  v12[1] = v8;
  v13 = *(a1 + 64);
  v11 = *(a1 + 40);
  [v5 performOnInstrumentationQueueWaitUntilDone:v6 block:v9];

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

void __90__ICNAController_endWindowSceneSessionSynchronously_forSessionType_endReason_windowScene___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained endSessionBackgroundTaskIdentifiersByWindowSceneIdentifier];
    objc_sync_enter(v4);
    v5 = [v3 appDelegate];
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __90__ICNAController_endWindowSceneSessionSynchronously_forSessionType_endReason_windowScene___block_invoke_3;
    v12 = &unk_2799AF050;
    v13 = v3;
    v14 = *(a1 + 32);
    v6 = [v5 beginBackgroundTaskWithName:@"Finish end analytics window scene session operation" expirationHandler:&v9];

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v6, v9, v10, v11, v12, v13}];
    v8 = [v3 endSessionBackgroundTaskIdentifiersByWindowSceneIdentifier];
    [v8 setObject:v7 forKeyedSubscript:*(a1 + 40)];

    objc_sync_exit(v4);
  }
}

void __90__ICNAController_endWindowSceneSessionSynchronously_forSessionType_endReason_windowScene___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) killEndSessionBackgroundTaskIfNecessaryForWindowScene:*(a1 + 40)])
  {
    v1 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __90__ICNAController_endWindowSceneSessionSynchronously_forSessionType_endReason_windowScene___block_invoke_3_cold_1();
    }
  }
}

void __90__ICNAController_endWindowSceneSessionSynchronously_forSessionType_endReason_windowScene___block_invoke_126(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained sessionManagerForWindowSceneIdentifier:*(a1 + 32)];
    v5 = [v3 sessionTrackerForWindowSceneIdentifier:*(a1 + 32)];
    [v5 endAllSessionsAndInvalidate];
    v6 = [v5 sessionSummaryData];
    v7 = [v4 tracker];
    [v3 pushUniqueDataObject:v6 tracker:v7];

    [v3 pushToSessionManager:v4 endReason:*(a1 + 56)];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __90__ICNAController_endWindowSceneSessionSynchronously_forSessionType_endReason_windowScene___block_invoke_2_127;
    v15 = &unk_2799B01D8;
    v19 = *(a1 + 64);
    v16 = v3;
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v8 = MEMORY[0x25F88B7A0](&v12);
    v9 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 64))
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      *buf = 138412290;
      v21 = v10;
      _os_log_impl(&dword_25C6BF000, v9, OS_LOG_TYPE_INFO, "Triggering endSessionWithCompletion. isSync: %@", buf, 0xCu);
    }

    if (*(a1 + 64) == 1)
    {
      [v4 endSession];
      if (v8)
      {
        v8[2](v8);
      }
    }

    else
    {
      [v4 endSessionWithCompletion:{v8, v12, v13, v14, v15, v16, v17}];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __90__ICNAController_endWindowSceneSessionSynchronously_forSessionType_endReason_windowScene___block_invoke_2_127(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 56))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    *buf = 138412290;
    v7 = v3;
    _os_log_impl(&dword_25C6BF000, v2, OS_LOG_TYPE_INFO, "Completed endSessionWithCompletion. isSync: %@", buf, 0xCu);
  }

  [*(a1 + 32) clearSessionForWindowSceneIdentifier:*(a1 + 40)];
  [*(a1 + 32) killEndSessionBackgroundTaskIfNecessaryForWindowScene:*(a1 + 48)];
  v5 = *(a1 + 48);
  dispatchMainAfterDelay();

  v4 = *MEMORY[0x277D85DE8];
}

void __90__ICNAController_endWindowSceneSessionSynchronously_forSessionType_endReason_windowScene___block_invoke_128(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"ICNASessionDidEndNotification" object:*(a1 + 32)];
}

uint64_t __90__ICNAController_endWindowSceneSessionSynchronously_forSessionType_endReason_windowScene___block_invoke_129(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __105__ICNAController_endWindowSceneSessionSynchronously_forSessionType_endReason_windowScene_successHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)pushLongLivedDataObjects:(id)a3 privateSessionIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(ICNAController *)self assertInstrumentationQueue];
  [(ICNAController *)self pushLongLivedPrivateUserData:v7];
  [(ICNAController *)self pushLongLivedPrivateDeviceData:v7];
  [(ICNAController *)self pushLongLivedPrivateEventData:v7 privateSessionIdentifier:v6];

  [(ICNAController *)self pushLongLivedOrientationData:v7];
}

- (void)pushUniqueDataObject:(id)a3 tracker:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(ICNAController *)self assertInstrumentationQueue];
  v8 = objc_alloc_init(MEMORY[0x277CEAEF8]);
  [v8 setUnique:1];
  [v6 pushDataEvent:v7 traits:v8 file:@"/Library/Caches/com.apple.xbs/Sources/MobileNotes/NotesAnalytics/ICNAController.m" line:1012];
}

- (void)pushLongLivedOrientationData:(id)a3
{
  v4 = a3;
  [(ICNAController *)self assertInstrumentationQueue];
  v7 = [[ICASDeviceOrientation alloc] initWithDeviceOrientation:[(ICNAController *)self deviceOrientationEnum]];
  v5 = [[ICASInterfaceOrientation alloc] initWithInterfaceOrientation:0];
  v6 = [[ICASOrientationData alloc] initWithDeviceOrientation:v7 interfaceOrientation:v5];
  [(ICNAController *)self pushUniqueDataObject:v6 tracker:v4];
}

- (void)pushLongLivedSessionSummaryData:(id)a3
{
  v4 = a3;
  [(ICNAController *)self assertInstrumentationQueue];
  v6 = [(ICNAController *)self multiSceneSessionTracker];
  v5 = [v6 sessionSummaryData];
  [(ICNAController *)self pushUniqueDataObject:v5 tracker:v4];
}

- (void)pushLongLivedPrivateUserData:(id)a3
{
  v4 = a3;
  [(ICNAController *)self assertInstrumentationQueue];
  v5 = [ICASPrivateUserData alloc];
  v6 = [objc_opt_class() privateUserID];
  v7 = [objc_opt_class() saltVersion];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "startMonth")}];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "startYear")}];
  v18 = [(ICASPrivateUserData *)v5 initWithPrivateUserID:v6 saltVersion:v7 userStartMonth:v8 userStartYear:v9];

  [(ICNAController *)self pushUniqueDataObject:v18 tracker:v4];
  v10 = +[ICNAIdentityManager sharedManager];
  v11 = [objc_opt_class() privateUserID];
  v12 = [v10 saltedID:v11 forClass:objc_opt_class()];

  v13 = [[ICASSyncHealthPrivateUserData alloc] initWithSyncHealthPrivateUserID:v12];
  [(ICNAController *)self pushUniqueDataObject:v13 tracker:v4];
  v14 = +[ICNAIdentityManager sharedManager];
  v15 = [objc_opt_class() privateUserID];
  v16 = [v14 saltedID:v15 forClass:objc_opt_class()];

  v17 = [[ICASSnapshotHealthPrivateUserData alloc] initWithSnapshotHealthPrivateUserID:v16];
  [(ICNAController *)self pushUniqueDataObject:v17 tracker:v4];
}

- (void)pushLongLivedPrivateDeviceData:(id)a3
{
  v4 = a3;
  v5 = +[ICNAIdentityManager sharedManager];
  v6 = [objc_opt_class() deviceID];
  v12 = [v5 saltedID:v6 forClass:objc_opt_class()];

  v7 = [[ICASSyncHealthPrivateDeviceData alloc] initWithSyncHealthPrivateDeviceID:v12];
  [(ICNAController *)self pushUniqueDataObject:v7 tracker:v4];
  v8 = +[ICNAIdentityManager sharedManager];
  v9 = [objc_opt_class() deviceID];
  v10 = [v8 saltedID:v9 forClass:objc_opt_class()];

  v11 = [[ICASSnapshotHealthPrivateDeviceData alloc] initWithSnapshotHealthPrivateDeviceID:v10];
  [(ICNAController *)self pushUniqueDataObject:v11 tracker:v4];
}

- (void)pushLongLivedPrivateEventData:(id)a3 privateSessionIdentifier:(id)a4
{
  v17 = a4;
  v6 = a3;
  [(ICNAController *)self assertInstrumentationQueue];
  if (!v17)
  {
    v17 = [(ICNAController *)self privateSessionID];
  }

  v7 = [ICASSessionDetailType alloc];
  v8 = [(ICNAController *)self multiSceneSessionTracker];
  v9 = -[ICASSessionDetailType initWithSessionDetailType:](v7, "initWithSessionDetailType:", [v8 sessionDetailType]);

  v10 = [[ICASPrivateEventData alloc] initWithPrivateSessionID:v17 sessionDetailType:v9];
  [(ICNAController *)self pushUniqueDataObject:v10 tracker:v6];
  v11 = +[ICNAIdentityManager sharedManager];
  v12 = [v11 saltedID:v17 forClass:objc_opt_class()];

  v13 = [[ICASSyncHealthPrivateEventData alloc] initWithSyncHealthPrivateSessionID:v12];
  [(ICNAController *)self pushUniqueDataObject:v13 tracker:v6];
  v14 = +[ICNAIdentityManager sharedManager];
  v15 = [v14 saltedID:v17 forClass:objc_opt_class()];

  v16 = [[ICASSnapshotHealthPrivateEventData alloc] initWithSnapshotHealthPrivateSessionID:v15];
  [(ICNAController *)self pushUniqueDataObject:v16 tracker:v6];
}

void __39__ICNAController_orientationDidChange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDeviceOrientationEnum:0];
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 orientation];

  if (v3 <= 6)
  {
    [*(a1 + 32) setDeviceOrientationEnum:v3];
  }

  v4 = [*(a1 + 32) instrumentationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ICNAController_orientationDidChange___block_invoke_2;
  block[3] = &unk_2799AF130;
  block[4] = *(a1 + 32);
  dispatch_async(v4, block);
}

void __39__ICNAController_orientationDidChange___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2 sessionManager];
  v4 = [v3 tracker];
  [v2 pushLongLivedOrientationData:v4];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [*(a1 + 32) sessionForWindowDict];
  v6 = [v5 allValues];
  v7 = [v6 copy];

  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(a1 + 32);
        v13 = [*(*(&v15 + 1) + 8 * i) tracker];
        [v12 pushLongLivedOrientationData:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (NSURL)url
{
  v2 = [(ICNAController *)self serverEnvironment];
  v3 = [v2 targetURL];

  return v3;
}

- (NSString)name
{
  v2 = [(ICNAController *)self serverEnvironment];
  v3 = [v2 aaEndPointTypeName];

  return v3;
}

- (void)addSnapshotReferralDataToSessionLevel
{
  v3 = [MEMORY[0x277D35DF0] referralURLForSnapshotBackgroundTask];
  [(ICNAController *)self addReferralDataWithReferringInboundURL:v3 referringApplication:0];
}

- (void)addReferralDataWithReferringInboundURL:(id)a3 referringApplication:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = [(__CFString *)v7 lowercaseString];
    v10 = [v9 hasPrefix:@"com.apple."];

    if ((v10 & 1) == 0)
    {

      v8 = @"other";
    }
  }

  v11 = [(ICNAController *)self instrumentationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__ICNAController_addReferralDataWithReferringInboundURL_referringApplication___block_invoke;
  block[3] = &unk_2799B0250;
  block[4] = self;
  v15 = v6;
  v16 = v8;
  v12 = v8;
  v13 = v6;
  dispatch_async(v11, block);
}

void __78__ICNAController_addReferralDataWithReferringInboundURL_referringApplication___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) referringInboundURL];

  if (!v2)
  {
    [*(a1 + 32) setReferringInboundURL:*(a1 + 40)];
  }

  v3 = [*(a1 + 32) referringApplication];

  if (!v3)
  {
    [*(a1 + 32) setReferringApplication:*(a1 + 48)];
  }

  v4 = [*(a1 + 32) referringInboundURL];
  if (v4)
  {
  }

  else
  {
    v5 = [*(a1 + 32) referringApplication];

    if (!v5)
    {
      return;
    }
  }

  v6 = *(a1 + 32);
  v7 = [v6 sessionManager];
  [v6 pushReferralDataToSessionManager:v7];
}

- (void)pushReferralDataToSessionManager:(id)a3
{
  v6 = a3;
  [(ICNAController *)self assertInstrumentationQueue];
  v4 = [(ICNAController *)self referralData];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CEAEF8]);
    [v5 setOnlyOnce:1];
    [v5 setUnique:1];
    [(ICNAController *)self pushToSessionManager:v6 data:v4 forKey:@"referralData" traits:v5];
  }
}

- (void)pushToSessionManager:(id)a3 endReason:(int64_t)a4
{
  v5 = a3;
  v8 = [[ICASEndReason alloc] initWithEndReason:a4];
  v6 = [[ICASSessionEndData alloc] initWithEndReason:v8];
  v7 = [v5 tracker];

  [v7 pushDataEvent:v6 traits:0 file:@"/Library/Caches/com.apple.xbs/Sources/MobileNotes/NotesAnalytics/ICNAController.m" line:1230];
}

- (void)pushToSessionManager:(id)a3 data:(id)a4 forKey:(id)a5 traits:(id)a6
{
  v15 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  [(ICNAController *)self assertInstrumentationQueue];
  if (v10 && v11)
  {
    v13 = v12;
    if (!v13)
    {
      v13 = objc_alloc_init(MEMORY[0x277CEAEF8]);
    }

    v14 = [objc_alloc(MEMORY[0x277CEAF20]) initWithKey:v11 data:v10];
    [v15 pushSessionData:v14 traits:v13];
  }
}

- (id)userData
{
  [(ICNAController *)self assertInstrumentationQueue];
  v2 = [objc_opt_class() storeFrontID];
  v3 = [objc_opt_class() userID];
  v4 = [ICASUserData alloc];
  v5 = [objc_opt_class() saltVersion];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "startMonth")}];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "startYear")}];
  v8 = [(ICASUserData *)v4 initWithUserID:v3 userStorefrontID:v2 saltVersion:v5 userStartMonth:v6 userStartYear:v7];

  return v8;
}

- (id)accountTypeSummary
{
  [(ICNAController *)self assertInstrumentationQueue];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__5;
  v34 = __Block_byref_object_dispose__5;
  v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__5;
  v28[4] = __Block_byref_object_dispose__5;
  v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [MEMORY[0x277D35F30] sharedContext];
  v4 = [v3 workerManagedObjectContext];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __36__ICNAController_accountTypeSummary__block_invoke;
  v23[3] = &unk_2799B0278;
  v5 = v4;
  v24 = v5;
  v25 = self;
  v26 = &v30;
  v27 = v28;
  [v5 performBlockAndWait:v23];
  v6 = ICNewLegacyContext();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __36__ICNAController_accountTypeSummary__block_invoke_2;
  v18[3] = &unk_2799B0278;
  v7 = v6;
  v19 = v7;
  v20 = self;
  v21 = &v30;
  v22 = v28;
  [v7 performBlockAndWait:v18];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = v31[5];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __36__ICNAController_accountTypeSummary__block_invoke_3;
  v11[3] = &unk_2799B02A0;
  v11[4] = v28;
  v11[5] = &v12;
  [v8 enumerateKeysAndObjectsUsingBlock:v11];
  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(&v30, 8);

  return v9;
}

void __36__ICNAController_accountTypeSummary__block_invoke(void *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  [MEMORY[0x277D35DE0] allAccountsInContext:a1[4]];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v29 = 0u;
  v2 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v27;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v27 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v26 + 1) + 8 * i);
        if ([v6 didChooseToMigrate])
        {
          v7 = a1[5];
          v8 = [objc_opt_class() accountTypeEnumForModernAccount:v6];
          v9 = *(*(a1[6] + 8) + 40);
          v10 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
          v11 = [v9 objectForKeyedSubscript:v10];
          v12 = [v11 unsignedIntegerValue];

          v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12 + 1];
          v14 = *(*(a1[6] + 8) + 40);
          v15 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
          [v14 setObject:v13 forKeyedSubscript:v15];

          v16 = *(*(a1[7] + 8) + 40);
          v17 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
          v18 = [v16 objectForKeyedSubscript:v17];
          v19 = [v18 unsignedIntegerValue];

          v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "visibleNotesCount") + v19}];
          v21 = *(*(a1[7] + 8) + 40);
          v22 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
          [v21 setObject:v20 forKeyedSubscript:v22];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v3);
  }

  objc_autoreleasePoolPop(context);
  v23 = *MEMORY[0x277D85DE8];
}

void __36__ICNAController_accountTypeSummary__block_invoke_2(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v2 = [*(a1 + 32) allAccounts];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v28;
    v26 = v2;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v28 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v27 + 1) + 8 * i);
        if (([v7 isDeleted] & 1) == 0 && (objc_msgSend(v7, "didChooseToMigrate") & 1) == 0)
        {
          v8 = *(a1 + 40);
          v9 = [objc_opt_class() accountTypeEnumForHTMLAccount:v7];
          v10 = *(*(*(a1 + 48) + 8) + 40);
          v11 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
          v12 = [v10 objectForKeyedSubscript:v11];
          v13 = [v12 unsignedIntegerValue];

          v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13 + 1];
          v15 = *(*(*(a1 + 48) + 8) + 40);
          v16 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
          [v15 setObject:v14 forKeyedSubscript:v16];

          v17 = *(*(*(a1 + 56) + 8) + 40);
          v18 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
          v19 = [v17 objectForKeyedSubscript:v18];
          v20 = [v19 unsignedIntegerValue];

          v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "countOfVisibleNotesForAccount:", v7) + v20}];
          v22 = *(*(*(a1 + 56) + 8) + 40);
          v23 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
          [v22 setObject:v21 forKeyedSubscript:v23];

          v2 = v26;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v4);
  }

  objc_autoreleasePoolPop(context);
  v24 = *MEMORY[0x277D85DE8];
}

void __36__ICNAController_accountTypeSummary__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v6 = a3;
  v7 = a2;
  v8 = [v5 objectForKeyedSubscript:v7];
  v9 = [v8 unsignedIntegerValue];

  v10 = [ICASAccountTypeItemData alloc];
  v11 = [ICASAccountType alloc];
  v12 = [v7 integerValue];

  v13 = [(ICASAccountType *)v11 initWithAccountType:v12];
  v14 = MEMORY[0x277CCABB0];
  v15 = [v6 integerValue];

  if (v15 >= 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = -v15;
  }

  if (v16 >= 0x64 && v15)
  {
    v17 = log10(fabs(v15));
    v18 = __exp10(2.0 - ceil(v17));
    v15 = (round(v18 * v15) / v18);
  }

  v19 = [v14 numberWithInteger:v15];
  v20 = MEMORY[0x277CCABB0];
  if (v9 >= 0)
  {
    v21 = v9;
  }

  else
  {
    v21 = -v9;
  }

  if (v21 >= 0x64 && v9)
  {
    v22 = log10(fabs(v9));
    v23 = __exp10(2.0 - ceil(v22));
    v9 = (round(v23 * v9) / v23);
  }

  v24 = [v20 numberWithInteger:v9];
  v25 = [(ICASAccountTypeItemData *)v10 initWithAccountType:v13 countOfAccounts:v19 countOfNotes:v24];

  [*(*(*(a1 + 40) + 8) + 40) addObject:v25];
}

+ (int64_t)accountTypeEnumForModernAccount:(id)a3
{
  v3 = a3;
  if ([v3 accountType] == 3)
  {
    v4 = 10;
  }

  else if ([v3 accountType] == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 12;
  }

  return v4;
}

+ (int64_t)accountTypeEnumForHTMLAccount:(id)a3
{
  v3 = a3;
  if ([v3 didChooseToMigrate])
  {
    v4 = 3;
  }

  else if ([v3 isIMAPAccount])
  {
    v5 = [MEMORY[0x277D36178] sharedInstance];
    v6 = [v5 accountStore];

    v7 = [v3 accountIdentifier];
    v8 = [v6 accountWithIdentifier:v7];

    v9 = [v8 parentAccount];
    v10 = v9;
    if (!v9)
    {
      v9 = v8;
    }

    v11 = [v9 accountType];
    v12 = [v11 identifier];

    if ([v12 isEqualToString:*MEMORY[0x277CB8C40]])
    {
      v4 = 5;
    }

    else if ([v12 isEqualToString:*MEMORY[0x277CB8D38]])
    {
      v4 = 6;
    }

    else if ([v12 isEqualToString:*MEMORY[0x277CB8B98]])
    {
      v4 = 7;
    }

    else if ([v12 isEqualToString:*MEMORY[0x277CB8C00]])
    {
      v4 = 8;
    }

    else if ([v12 isEqualToString:*MEMORY[0x277CB8BA0]])
    {
      v4 = 2;
    }

    else
    {
      v4 = 4;
    }
  }

  else if ([v3 isExchangeAccount])
  {
    v4 = 9;
  }

  else if ([v3 isLocalAccount])
  {
    v4 = 11;
  }

  else
  {
    v4 = 13;
  }

  return v4;
}

- (id)cellularRadioAccessTechnology
{
  v2 = [MEMORY[0x277D36240] reachabilityForInternetConnection];
  v3 = [v2 currentReachabilityStatus];
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_25C72AE00[v3];
  }

  v5 = [[ICASCellularRadioAccessTechnology alloc] initWithCellularRadioAccessTechnology:v4];

  return v5;
}

- (id)appData
{
  [(ICNAController *)self assertInstrumentationQueue];
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 infoDictionary];
  v4 = [v3 objectForKey:@"CFBundleShortVersionString"];

  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [v5 infoDictionary];
  v7 = [v6 objectForKey:@"CFBundleVersion"];

  v8 = [[ICASAppData alloc] initWithAppVersion:v4 appBuild:v7];

  return v8;
}

- (id)deviceData
{
  [(ICNAController *)self assertInstrumentationQueue];
  if ([MEMORY[0x277D36280] isInternalInstall])
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  v3 = [[ICASOsInstallVariant alloc] initWithOsInstallVariant:v2];
  v4 = [ICASDeviceData alloc];
  v5 = [objc_opt_class() deviceModel];
  v6 = [objc_opt_class() devicePlatform];
  v7 = [objc_opt_class() osVersion];
  v8 = [objc_opt_class() osBundleVersion];
  v9 = [(ICASDeviceData *)v4 initWithDeviceModel:v5 devicePlatform:v6 osInstallVariant:v3 osVersion:v7 osBundleVersion:v8];

  return v9;
}

- (id)debugData
{
  [(ICNAController *)self assertInstrumentationQueue];
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 stringForKey:@"analyticsDebugDataName"];

  if (v3)
  {
    v4 = [[ICASDebugData alloc] initWithName:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)referralData
{
  [(ICNAController *)self assertInstrumentationQueue];
  v3 = [(ICNAController *)self referringInboundURL];
  if (v3)
  {
  }

  else
  {
    v4 = [(ICNAController *)self referringApplication];

    if (!v4)
    {
      goto LABEL_5;
    }
  }

  v5 = [(ICNAController *)self referringInboundURL];
  v6 = [ICNAReferringInboundURLFilter filterReferringInboundURL:v5];

  v7 = [ICASReferralData alloc];
  v8 = [(ICNAController *)self referringApplication];
  v4 = [(ICASReferralData *)v7 initWithReferringApplication:v8 referringInboundUrl:v6];

  [(ICNAController *)self setReferringApplication:0];
  [(ICNAController *)self setReferringInboundURL:0];

LABEL_5:

  return v4;
}

- (ICNADebugEventProcessor)debugProcessor
{
  if (!self->_debugProcessor)
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [v3 BOOLForKey:@"ICNAUseDebugProcessor"];

    if (v4)
    {
      v5 = objc_alloc_init(ICNADebugEventProcessor);
      debugProcessor = self->_debugProcessor;
      self->_debugProcessor = v5;
    }
  }

  v7 = self->_debugProcessor;

  return v7;
}

- (void)newAATrackerWithName:(id)a3 parentTracker:(id)a4 completionBlock:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [a4 aaTracker];
  [(ICNAController *)self newAATrackerWithName:v9 parentAATracker:v10 completionBlock:v8];
}

- (void)newAATrackerWithName:(id)a3 parentAATracker:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [(ICNAController *)self sessionManager];
    v11 = [v12 tracker];
  }

  v16 = v11;
  v17 = v8;
  v18 = v10;
  v13 = v10;
  v14 = v8;
  v15 = v11;
  performBlockOnMainThreadAndWait();
}

uint64_t __71__ICNAController_newAATrackerWithName_parentAATracker_completionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) chainWithName:*(a1 + 40)];
  objc_claimAutoreleasedReturnValue();
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

- (void)trackTimedEventType:(Class)a3 subTracker:(id)a4 synchronousTaskBeforeStarting:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(ICNAController *)self instrumentationQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__ICNAController_trackTimedEventType_subTracker_synchronousTaskBeforeStarting___block_invoke;
  v13[3] = &unk_2799B02F0;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v17 = a3;
  v11 = v8;
  v12 = v9;
  dispatch_async(v10, v13);
}

void __79__ICNAController_trackTimedEventType_subTracker_synchronousTaskBeforeStarting___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [v3 aaTracker];
    if (v4)
    {
LABEL_5:
      v5 = *(a1 + 56);
      [v4 timeEventType:objc_opt_class()];
      goto LABEL_10;
    }
  }

  else
  {
    v6 = [*(a1 + 40) sessionManager];
    v4 = [v6 tracker];

    if (v4)
    {
      goto LABEL_5;
    }
  }

  v7 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __79__ICNAController_trackTimedEventType_subTracker_synchronousTaskBeforeStarting___block_invoke_cold_1(a1);
  }

LABEL_10:
}

- (void)pushDataObject:(id)a3 unique:(BOOL)a4 onlyOnce:(BOOL)a5 subTracker:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [(ICNAController *)self instrumentationQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__ICNAController_pushDataObject_unique_onlyOnce_subTracker___block_invoke;
  v15[3] = &unk_2799B0318;
  v16 = v11;
  v17 = self;
  v19 = a4;
  v20 = a5;
  v18 = v10;
  v13 = v10;
  v14 = v11;
  dispatch_async(v12, v15);
}

void __60__ICNAController_pushDataObject_unique_onlyOnce_subTracker___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 aaTracker];
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_7:
    v4 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __60__ICNAController_pushDataObject_unique_onlyOnce_subTracker___block_invoke_cold_1(a1);
    }

    goto LABEL_9;
  }

  v5 = [*(a1 + 40) sessionManager];
  v3 = [v5 tracker];

  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((*(a1 + 56) & 1) == 0 && *(a1 + 57) != 1)
  {
    [v3 pushDataEvent:*(a1 + 48) traits:0 file:@"/Library/Caches/com.apple.xbs/Sources/MobileNotes/NotesAnalytics/ICNAController.m" line:1540];
    goto LABEL_10;
  }

  v4 = objc_alloc_init(MEMORY[0x277CEAEF8]);
  [v4 setUnique:*(a1 + 56)];
  [v4 setOnlyOnce:*(a1 + 57)];
  [v3 pushDataEvent:*(a1 + 48) traits:v4 file:@"/Library/Caches/com.apple.xbs/Sources/MobileNotes/NotesAnalytics/ICNAController.m" line:1537];
LABEL_9:

LABEL_10:
}

- (void)pushDataObjects:(id)a3 unique:(BOOL)a4 onlyOnce:(BOOL)a5 subTracker:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [(ICNAController *)self instrumentationQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__ICNAController_pushDataObjects_unique_onlyOnce_subTracker___block_invoke;
  v15[3] = &unk_2799B0318;
  v16 = v11;
  v17 = self;
  v19 = a4;
  v20 = a5;
  v18 = v10;
  v13 = v10;
  v14 = v11;
  dispatch_async(v12, v15);
}

void __61__ICNAController_pushDataObjects_unique_onlyOnce_subTracker___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 aaTracker];
    if (v3)
    {
LABEL_3:
      if ((*(a1 + 56) & 1) != 0 || *(a1 + 57) == 1)
      {
        v4 = objc_alloc_init(MEMORY[0x277CEAEF8]);
        [v4 setUnique:*(a1 + 56)];
        [v4 setOnlyOnce:*(a1 + 57)];
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v5 = *(a1 + 48);
        v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v21;
          do
          {
            v9 = 0;
            do
            {
              if (*v21 != v8)
              {
                objc_enumerationMutation(v5);
              }

              [v3 pushDataEvent:*(*(&v20 + 1) + 8 * v9++) traits:v4 file:@"/Library/Caches/com.apple.xbs/Sources/MobileNotes/NotesAnalytics/ICNAController.m" line:1559];
            }

            while (v7 != v9);
            v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
          }

          while (v7);
        }
      }

      else
      {
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v4 = *(a1 + 48);
        v11 = [v4 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v17;
          do
          {
            v14 = 0;
            do
            {
              if (*v17 != v13)
              {
                objc_enumerationMutation(v4);
              }

              [v3 pushDataEvent:*(*(&v16 + 1) + 8 * v14++) traits:0 file:@"/Library/Caches/com.apple.xbs/Sources/MobileNotes/NotesAnalytics/ICNAController.m" line:{1564, v16}];
            }

            while (v12 != v14);
            v12 = [v4 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v12);
        }
      }

      goto LABEL_23;
    }
  }

  else
  {
    v10 = [*(a1 + 40) sessionManager];
    v3 = [v10 tracker];

    if (v3)
    {
      goto LABEL_3;
    }
  }

  v4 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__ICNAController_pushDataObjects_unique_onlyOnce_subTracker___block_invoke_cold_1(a1);
  }

LABEL_23:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)popDataObjectWithType:(Class)a3 subTracker:(id)a4
{
  v6 = a4;
  v7 = [(ICNAController *)self instrumentationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__ICNAController_popDataObjectWithType_subTracker___block_invoke;
  block[3] = &unk_2799B0340;
  v10 = v6;
  v11 = self;
  v12 = a3;
  v8 = v6;
  dispatch_async(v7, block);
}

void __51__ICNAController_popDataObjectWithType_subTracker___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 aaTracker];
    if (v3)
    {
LABEL_3:
      v4 = *(a1 + 48);
      [v3 popDataEventType:objc_opt_class()];
      goto LABEL_8;
    }
  }

  else
  {
    v5 = [*(a1 + 40) sessionManager];
    v3 = [v5 tracker];

    if (v3)
    {
      goto LABEL_3;
    }
  }

  v6 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __51__ICNAController_popDataObjectWithType_subTracker___block_invoke_cold_1(a1);
  }

LABEL_8:
}

- (void)popDataObjectsWithTypes:(id)a3 subTracker:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICNAController *)self instrumentationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ICNAController_popDataObjectsWithTypes_subTracker___block_invoke;
  block[3] = &unk_2799B0250;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __53__ICNAController_popDataObjectsWithTypes_subTracker___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 aaTracker];
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = [*(a1 + 40) sessionManager];
    v3 = [v10 tracker];

    if (v3)
    {
LABEL_3:
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v4 = *(a1 + 48);
      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v13;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v13 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v12 + 1) + 8 * i);
            [v3 popDataEventType:{objc_opt_class(), v12}];
          }

          v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v6);
      }

      goto LABEL_14;
    }
  }

  v4 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __53__ICNAController_popDataObjectsWithTypes_subTracker___block_invoke_cold_1(a1);
  }

LABEL_14:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)submitEventOfType:(Class)a3 subTracker:(id)a4 synchronousTaskBeforeSubmitting:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(ICNAController *)self instrumentationQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__ICNAController_submitEventOfType_subTracker_synchronousTaskBeforeSubmitting___block_invoke;
  v13[3] = &unk_2799B0368;
  v15 = v9;
  v16 = a3;
  v13[4] = self;
  v14 = v8;
  v11 = v8;
  v12 = v9;
  dispatch_async(v10, v13);
}

void __79__ICNAController_submitEventOfType_subTracker_synchronousTaskBeforeSubmitting___block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2 && !(*(v2 + 16))())
  {
    v6 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __79__ICNAController_submitEventOfType_subTracker_synchronousTaskBeforeSubmitting___block_invoke_cold_1(a1);
    }
  }

  else
  {
    v3 = a1[7];
    v4 = a1[4];
    v5 = a1[5];

    [v4 _immediatelySubmitEventOfType:v3 subTracker:v5];
  }
}

- (void)_immediatelySubmitEventOfType:(Class)a3 subTracker:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 aaTracker];
  }

  else
  {
    v9 = [(ICNAController *)self sessionManager];
    v8 = [v9 tracker];
  }

  v10 = os_log_create("com.apple.notes", "Analytics");
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ICNAController _immediatelySubmitEventOfType:subTracker:];
    }

    v12 = objc_opt_class();
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__ICNAController__immediatelySubmitEventOfType_subTracker___block_invoke;
    v13[3] = &__block_descriptor_40_e36_v24__0__AAProcessEvent_8__NSError_16lu32l8;
    v13[4] = a3;
    [v8 submitEventType:v12 completion:v13];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ICNAController _immediatelySubmitEventOfType:subTracker:];
    }
  }
}

void __59__ICNAController__immediatelySubmitEventOfType_subTracker___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __59__ICNAController__immediatelySubmitEventOfType_subTracker___block_invoke_cold_1(a1);
    }
  }
}

- (void)submitEventOfType:(Class)a3 pushThenPopDataObjects:(id)a4 subTracker:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(ICNAController *)self instrumentationQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__ICNAController_submitEventOfType_pushThenPopDataObjects_subTracker___block_invoke;
  v13[3] = &unk_2799B03B0;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)_immediatelySubmitEventOfType:(Class)a3 pushThenPopDataObjects:(id)a4 subTracker:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__5;
  v23 = __Block_byref_object_dispose__5;
  if (v9)
  {
    v24 = [v9 aaTracker];
  }

  else
  {
    v11 = [(ICNAController *)self sessionManager];
    v24 = [v11 tracker];
  }

  if (v20[5])
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __82__ICNAController__immediatelySubmitEventOfType_pushThenPopDataObjects_subTracker___block_invoke;
    v18[3] = &unk_2799B03D8;
    v18[4] = &v19;
    [v8 enumerateObjectsUsingBlock:v18];
    v12 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ICNAController _immediatelySubmitEventOfType:subTracker:];
    }

    v13 = v20[5];
    v14 = objc_opt_class();
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __82__ICNAController__immediatelySubmitEventOfType_pushThenPopDataObjects_subTracker___block_invoke_187;
    v17[3] = &__block_descriptor_40_e36_v24__0__AAProcessEvent_8__NSError_16lu32l8;
    v17[4] = a3;
    [v13 submitEventType:v14 completion:v17];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __82__ICNAController__immediatelySubmitEventOfType_pushThenPopDataObjects_subTracker___block_invoke_188;
    v16[3] = &unk_2799B03D8;
    v16[4] = &v19;
    [v8 enumerateObjectsWithOptions:2 usingBlock:v16];
  }

  else
  {
    v15 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ICNAController _immediatelySubmitEventOfType:pushThenPopDataObjects:subTracker:];
    }
  }

  _Block_object_dispose(&v19, 8);
}

void __82__ICNAController__immediatelySubmitEventOfType_pushThenPopDataObjects_subTracker___block_invoke_187(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __59__ICNAController__immediatelySubmitEventOfType_subTracker___block_invoke_cold_1(a1);
    }
  }
}

uint64_t __82__ICNAController__immediatelySubmitEventOfType_pushThenPopDataObjects_subTracker___block_invoke_188(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  objc_opt_class();
  v2 = objc_opt_class();

  return [v1 popDataEventType:v2];
}

- (void)enterGroupWithSubtracker:(id)a3
{
  v4 = a3;
  v5 = [(ICNAController *)self instrumentationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__ICNAController_enterGroupWithSubtracker___block_invoke;
  block[3] = &unk_2799AF130;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

void __43__ICNAController_enterGroupWithSubtracker___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) aaTracker];
  [v1 enterGroup];
}

- (void)leaveGroupWithSubtracker:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICNAController *)self instrumentationQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__ICNAController_leaveGroupWithSubtracker_completionHandler___block_invoke;
  v11[3] = &unk_2799B0400;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);
}

uint64_t __61__ICNAController_leaveGroupWithSubtracker_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) aaTracker];
  [v2 leaveGroup];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)removePreSydneyDAnalyticsData
{
  v2 = [(ICNAController *)self instrumentationQueue];
  dispatch_async(v2, &__block_literal_global_190);
}

void __47__ICNAController_removePreSydneyDAnalyticsData__block_invoke()
{
  v54[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v1 = [v0 BOOLForKey:@"analyticsRemovedPreviousVersionData"];

  if ((v1 & 1) == 0)
  {
    v2 = [MEMORY[0x277D36230] applicationDataContainerURL];
    v3 = [v2 URLByAppendingPathComponent:@"Documents" isDirectory:1];
    if (v3)
    {
      v30 = v2;
      v4 = [MEMORY[0x277CCAA00] defaultManager];
      v36 = *MEMORY[0x277CBE868];
      v54[0] = *MEMORY[0x277CBE868];
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:1];
      v29 = v3;
      v6 = [v4 enumeratorAtURL:v3 includingPropertiesForKeys:v5 options:5 errorHandler:0];

      v47 = 0u;
      v45 = 0u;
      v46 = 0u;
      v44 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v44 objects:v53 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v45;
        v31 = *v45;
        v32 = v7;
        do
        {
          v11 = 0;
          v33 = v9;
          do
          {
            if (*v45 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v44 + 1) + 8 * v11);
            v13 = [v12 lastPathComponent];
            v43 = 0;
            [v12 getResourceValue:&v43 forKey:v36 error:0];
            v37 = v43;
            if ([v37 BOOLValue] && objc_msgSend(v13, "hasPrefix:", @"com.apple.app-analytics.") && ((objc_msgSend(v13, "hasSuffix:", @".upload-dropbox") & 1) != 0 || objc_msgSend(v13, "hasSuffix:", @".upload-dropbox.debugging")))
            {
              v34 = v13;
              v35 = v11;
              v14 = os_log_create("com.apple.notes", "Analytics");
              if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
              {
                v15 = [v12 lastPathComponent];
                *buf = 138412290;
                v49 = v15;
                _os_log_impl(&dword_25C6BF000, v14, OS_LOG_TYPE_INFO, "Removing old analytics data at %@", buf, 0xCu);
              }

              v16 = [MEMORY[0x277CCAA00] defaultManager];
              v17 = [v16 enumeratorAtURL:v12 includingPropertiesForKeys:0 options:1 errorHandler:0];

              v41 = 0u;
              v42 = 0u;
              v39 = 0u;
              v40 = 0u;
              v18 = v17;
              v19 = [v18 countByEnumeratingWithState:&v39 objects:v52 count:16];
              if (v19)
              {
                v20 = v19;
                v21 = *v40;
                do
                {
                  for (i = 0; i != v20; ++i)
                  {
                    if (*v40 != v21)
                    {
                      objc_enumerationMutation(v18);
                    }

                    v23 = *(*(&v39 + 1) + 8 * i);
                    v24 = [MEMORY[0x277CCAA00] defaultManager];
                    v38 = 0;
                    [v24 removeItemAtURL:v23 error:&v38];
                    v25 = v38;

                    if (v25)
                    {
                      v26 = os_log_create("com.apple.notes", "Analytics");
                      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412546;
                        v49 = v23;
                        v50 = 2112;
                        v51 = v25;
                        _os_log_error_impl(&dword_25C6BF000, v26, OS_LOG_TYPE_ERROR, "Error deleting item: %@, error: %@", buf, 0x16u);
                      }
                    }
                  }

                  v20 = [v18 countByEnumeratingWithState:&v39 objects:v52 count:16];
                }

                while (v20);
              }

              v7 = v32;
              v9 = v33;
              v10 = v31;
              v13 = v34;
              v11 = v35;
            }

            ++v11;
          }

          while (v11 != v9);
          v9 = [v7 countByEnumeratingWithState:&v44 objects:v53 count:16];
        }

        while (v9);
      }

      v27 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
      [v27 setBool:1 forKey:@"analyticsRemovedPreviousVersionData"];

      v3 = v29;
      v2 = v30;
    }

    else
    {
      v7 = os_log_create("com.apple.notes", "Analytics");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __47__ICNAController_removePreSydneyDAnalyticsData__block_invoke_cold_1();
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)flushWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25C6BF000, v5, OS_LOG_TYPE_INFO, "flushWithCompletionHandler started", buf, 2u);
  }

  v6 = [(ICNAController *)self instrumentationQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__ICNAController_flushWithCompletionHandler___block_invoke;
  v8[3] = &unk_2799B0400;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

void __45__ICNAController_flushWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) flushManager];
  [v2 flushWithCompletion:*(a1 + 40)];
}

+ (NSString)userID
{
  v2 = +[ICNAIdentityManager sharedManager];
  v3 = [v2 userID];

  return v3;
}

+ (id)privateUserID
{
  v2 = +[ICNAIdentityManager sharedManager];
  v3 = [v2 privateUserID];

  return v3;
}

+ (NSString)saltVersion
{
  v2 = +[ICNAIdentityManager sharedManager];
  v3 = [v2 identityTimestampYYYYMM];

  return v3;
}

+ (unint64_t)startYear
{
  v2 = +[ICNAIdentityManager sharedManager];
  v3 = [v2 startYear];

  return v3;
}

+ (unint64_t)startMonth
{
  v2 = +[ICNAIdentityManager sharedManager];
  v3 = [v2 startMonth];

  return v3;
}

+ (NSString)deviceModel
{
  v6 = *MEMORY[0x277D85DE8];
  memset(&v5, 0, 512);
  uname(&v5);
  v2 = [MEMORY[0x277CCACA8] stringWithCString:v5.machine encoding:4];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (NSString)devicePlatform
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 systemName];

  return v3;
}

+ (BOOL)audioTranscriptEnabled
{
  v2 = [MEMORY[0x277D36218] sharedInstance];
  v3 = [v2 supportsGeneralASR];

  return v3;
}

+ (BOOL)audioSummaryEnabled
{
  v2 = [MEMORY[0x277D36218] sharedInstance];
  v3 = [v2 supportsPrivateCloudComputeSummary];

  return v3;
}

+ (BOOL)localNotesEnabled
{
  v2 = [MEMORY[0x277D36260] objectForKey:@"LocalNotes"];
  v3 = [v2 BOOLValue];

  return v3;
}

+ (NSString)osVersion
{
  if (osVersion_onceToken != -1)
  {
    +[ICNAController osVersion];
  }

  v3 = osVersion_osVersion;

  return v3;
}

void __27__ICNAController_osVersion__block_invoke()
{
  v2 = _CFCopySupplementalVersionDictionary();
  v0 = [v2 objectForKeyedSubscript:*MEMORY[0x277CBEC88]];
  v1 = osVersion_osVersion;
  osVersion_osVersion = v0;
}

+ (id)osBundleVersion
{
  if (osBundleVersion_onceToken != -1)
  {
    +[ICNAController osBundleVersion];
  }

  v3 = osBundleVersion_buildVersion;

  return v3;
}

void __33__ICNAController_osBundleVersion__block_invoke()
{
  v2 = _CFCopySupplementalVersionDictionary();
  v0 = [v2 objectForKeyedSubscript:*MEMORY[0x277CBEC70]];
  v1 = osBundleVersion_buildVersion;
  osBundleVersion_buildVersion = v0;
}

+ (NSString)deviceID
{
  v2 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v3 = [v2 stringForKey:@"analytics_device_id"];

  if (!v3)
  {
    v4 = [MEMORY[0x277CCAD78] UUID];
    v3 = [v4 UUIDString];

    v5 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
    [v5 setObject:v3 forKey:@"analytics_device_id"];
  }

  return v3;
}

+ (NSString)storeFrontID
{
  v2 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  v3 = [v2 ams_activeiTunesAccount];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
    v5 = [v6 ams_localiTunesAccount];
  }

  v7 = [v5 ams_storefront];

  return v7;
}

- (ICNAControllerAppDelegate)appDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_appDelegate);

  return WeakRetained;
}

- (void)startAppAndGlobalSessionIfNecessaryWithReferralURL:referralApplication:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startAppAndGlobalSessionIfNecessaryWithReferralURL:referralApplication:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startAppAndGlobalSessionIfNecessaryWithReferralURL:referralApplication:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startAppAndGlobalSessionIfNecessaryWithReferralURL:referralApplication:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __39__ICNAController_startSessionWithType___block_invoke_cold_1(uint64_t *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2(&dword_25C6BF000, v2, v3, "Attempting to start a session with an unknown type: %ld", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __67__ICNAController_endSessionSynchronously_forSessionType_endReason___block_invoke_108_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2(&dword_25C6BF000, v0, v1, "A longer than normal analytics session was detected. Session duration was %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __67__ICNAController_endSessionSynchronously_forSessionType_endReason___block_invoke_121_cold_1(uint64_t *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2(&dword_25C6BF000, v2, v3, "Attempting to end a session with an unknown type: %ld", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __79__ICNAController_trackTimedEventType_subTracker_synchronousTaskBeforeStarting___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 56);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2(&dword_25C6BF000, v2, v3, "No tracker is found when tracking timed event type: %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __60__ICNAController_pushDataObject_unique_onlyOnce_subTracker___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2(&dword_25C6BF000, v1, v2, "No tracker is found when pushing data object: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __61__ICNAController_pushDataObjects_unique_onlyOnce_subTracker___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2(&dword_25C6BF000, v1, v2, "No tracker is found when pushing data objects: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __51__ICNAController_popDataObjectWithType_subTracker___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2(&dword_25C6BF000, v1, v2, "No tracker is found when popping data object type: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __53__ICNAController_popDataObjectsWithTypes_subTracker___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2(&dword_25C6BF000, v1, v2, "No tracker is found when popping data object types: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __79__ICNAController_submitEventOfType_subTracker_synchronousTaskBeforeSubmitting___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 56);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_immediatelySubmitEventOfType:subTracker:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_immediatelySubmitEventOfType:subTracker:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2(&dword_25C6BF000, v0, v1, "No tracker is found for an active session when immediately submitting event type: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __59__ICNAController__immediatelySubmitEventOfType_subTracker___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7(&dword_25C6BF000, v2, v3, "Could not submit event: %@ due to %@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_immediatelySubmitEventOfType:pushThenPopDataObjects:subTracker:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2(&dword_25C6BF000, v0, v1, "No tracker is found for an active session when submitting event type: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end