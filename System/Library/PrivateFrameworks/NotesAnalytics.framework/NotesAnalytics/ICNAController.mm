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
+ (int64_t)accountTypeEnumForHTMLAccount:(id)account;
+ (int64_t)accountTypeEnumForModernAccount:(id)account;
+ (unint64_t)startMonth;
+ (unint64_t)startYear;
- (BOOL)killEndSessionBackgroundTaskIfNecessary;
- (BOOL)killEndSessionBackgroundTaskIfNecessaryForWindowScene:(id)scene;
- (ICNAController)init;
- (ICNAControllerAppDelegate)appDelegate;
- (ICNADebugEventProcessor)debugProcessor;
- (NSString)name;
- (NSURL)url;
- (id)aaTrackerForWindowSceneIdentifier:(id)identifier;
- (id)accountTypeSummary;
- (id)appData;
- (id)cellularRadioAccessTechnology;
- (id)createSessionManager;
- (id)debugData;
- (id)deviceData;
- (id)referralData;
- (id)sessionManagerForWindowSceneIdentifier:(id)identifier shouldCreate:(BOOL)create;
- (id)sessionTrackerForWindowSceneIdentifier:(id)identifier;
- (id)userData;
- (int64_t)appSessionState;
- (int64_t)globalSessionState;
- (void)_immediatelySubmitEventOfType:(Class)type pushThenPopDataObjects:(id)objects subTracker:(id)tracker;
- (void)_immediatelySubmitEventOfType:(Class)type subTracker:(id)tracker;
- (void)addReferralDataWithReferringInboundURL:(id)l referringApplication:(id)application;
- (void)addSnapshotReferralDataToSessionLevel;
- (void)appSessionDidTerminate;
- (void)clearSessionForWindowSceneIdentifier:(id)identifier;
- (void)dealloc;
- (void)endSessionSynchronously:(BOOL)synchronously forSessionType:(int64_t)type endReason:(int64_t)reason;
- (void)endWindowSceneSessionSynchronously:(BOOL)synchronously forSessionType:(int64_t)type endReason:(int64_t)reason windowScene:(id)scene;
- (void)enterGroupWithSubtracker:(id)subtracker;
- (void)flushWithCompletionHandler:(id)handler;
- (void)generatePrivateSessionIDIfNecessary;
- (void)leaveGroupWithSubtracker:(id)subtracker completionHandler:(id)handler;
- (void)newAATrackerWithName:(id)name parentAATracker:(id)tracker completionBlock:(id)block;
- (void)newAATrackerWithName:(id)name parentTracker:(id)tracker completionBlock:(id)block;
- (void)performOnInstrumentationQueueWaitUntilDone:(BOOL)done block:(id)block;
- (void)popDataObjectWithType:(Class)type subTracker:(id)tracker;
- (void)popDataObjectsWithTypes:(id)types subTracker:(id)tracker;
- (void)pushDataObject:(id)object unique:(BOOL)unique onlyOnce:(BOOL)once subTracker:(id)tracker;
- (void)pushDataObjects:(id)objects unique:(BOOL)unique onlyOnce:(BOOL)once subTracker:(id)tracker;
- (void)pushLongLivedDataObjects:(id)objects privateSessionIdentifier:(id)identifier;
- (void)pushLongLivedOrientationData:(id)data;
- (void)pushLongLivedPrivateDeviceData:(id)data;
- (void)pushLongLivedPrivateEventData:(id)data privateSessionIdentifier:(id)identifier;
- (void)pushLongLivedPrivateUserData:(id)data;
- (void)pushLongLivedSessionSummaryData:(id)data;
- (void)pushReferralDataToSessionManager:(id)manager;
- (void)pushToSessionManager:(id)manager data:(id)data forKey:(id)key traits:(id)traits;
- (void)pushToSessionManager:(id)manager endReason:(int64_t)reason;
- (void)pushUniqueDataObject:(id)object tracker:(id)tracker;
- (void)removePreSydneyDAnalyticsData;
- (void)setAppSessionState:(int64_t)state;
- (void)setGlobalSessionState:(int64_t)state;
- (void)startAppAndGlobalSessionIfNecessaryWithReferralURL:(id)l referralApplication:(id)application;
- (void)startAppSession;
- (void)startSessionWithReferralURL:(id)l referralApplication:(id)application startingSessionType:(int64_t)type;
- (void)startSessionWithType:(int64_t)type;
- (void)startWindowSceneSessionWithType:(int64_t)type windowScene:(id)scene successHandler:(id)handler;
- (void)submitEventOfType:(Class)type pushThenPopDataObjects:(id)objects subTracker:(id)tracker;
- (void)submitEventOfType:(Class)type subTracker:(id)tracker synchronousTaskBeforeSubmitting:(id)submitting;
- (void)trackTimedEventType:(Class)type subTracker:(id)tracker synchronousTaskBeforeStarting:(id)starting;
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

    mEMORY[0x277CEAF48] = [MEMORY[0x277CEAF48] shared];
    if (+[ICNAOptedInObject isOptedInForAnalytics])
    {
      [mEMORY[0x277CEAF48] allow];
    }

    v8 = [objc_alloc(MEMORY[0x277CEAEE8]) initWithTrackingConsent:mEMORY[0x277CEAF48]];
    appSessionManager = v2->_appSessionManager;
    v2->_appSessionManager = v8;

    v10 = objc_alloc(MEMORY[0x277CEAEF0]);
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v12 = [v10 initWithBundle:mainBundle];
    client = v2->_client;
    v2->_client = v12;

    mEMORY[0x277D36180] = [MEMORY[0x277D36180] sharedAppGroupDefaults];
    v15 = [mEMORY[0x277D36180] BOOLForKey:@"analyticsEnableBatchDebugging"];

    default = [MEMORY[0x277CEAF50] default];
    v17 = [default withDebuggingEnabled:v15];
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_orientationDidChange_ name:*MEMORY[0x277D76878] object:0];

    v34 = +[ICNAInlineDrawingRecognitionReporter sharedReporter];
    [(ICNAController *)v2 removePreSydneyDAnalyticsData];
    [(ICNAController *)v2 flushWithCompletionHandler:&__block_literal_global_86];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICNAController;
  [(ICNAController *)&v4 dealloc];
}

- (void)startSessionWithReferralURL:(id)l referralApplication:(id)application startingSessionType:(int64_t)type
{
  lCopy = l;
  applicationCopy = application;
  v9 = applicationCopy;
  if (applicationCopy)
  {
    lowercaseString = [(__CFString *)applicationCopy lowercaseString];
    v11 = [lowercaseString hasPrefix:@"com.apple."];

    if ((v11 & 1) == 0)
    {

      v9 = @"other";
    }
  }

  referringApplication = [(ICNAController *)self referringApplication];

  if (!referringApplication)
  {
    [(ICNAController *)self setReferringApplication:v9];
  }

  referringInboundURL = [(ICNAController *)self referringInboundURL];

  if (!referringInboundURL)
  {
    [(ICNAController *)self setReferringInboundURL:lCopy];
  }

  [(ICNAController *)self startSessionWithType:type];
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
  privateSessionID = [(ICNAController *)self privateSessionID];
  if (!privateSessionID || (v4 = privateSessionID, -[ICNAController privateSessionID](self, "privateSessionID"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [@"session_inactive" isEqualToString:v5], v5, v4, v6))
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [(ICNAController *)self setPrivateSessionID:uUIDString];
  }
}

- (void)startAppSession
{
  [(ICNAController *)self generatePrivateSessionIDIfNecessary];
  instrumentationQueue = [(ICNAController *)self instrumentationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__ICNAController_startAppSession__block_invoke;
  block[3] = &unk_2799AF130;
  block[4] = self;
  dispatch_async(instrumentationQueue, block);
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

- (void)startAppAndGlobalSessionIfNecessaryWithReferralURL:(id)l referralApplication:(id)application
{
  lCopy = l;
  applicationCopy = application;
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
    [(ICNAController *)self startSessionWithReferralURL:lCopy referralApplication:applicationCopy startingSessionType:4];
    v9 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [ICNAController startAppAndGlobalSessionIfNecessaryWithReferralURL:referralApplication:];
    }
  }
}

- (void)appSessionDidTerminate
{
  instrumentationQueue = [(ICNAController *)self instrumentationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ICNAController_appSessionDidTerminate__block_invoke;
  block[3] = &unk_2799AF130;
  block[4] = self;
  dispatch_async(instrumentationQueue, block);
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

- (id)sessionManagerForWindowSceneIdentifier:(id)identifier shouldCreate:(BOOL)create
{
  createCopy = create;
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  sessionForWindowDict = [(ICNAController *)selfCopy sessionForWindowDict];
  createSessionManager = [sessionForWindowDict objectForKeyedSubscript:identifierCopy];

  if (!createSessionManager && createCopy)
  {
    createSessionManager = [(ICNAController *)selfCopy createSessionManager];
    sessionForWindowDict2 = [(ICNAController *)selfCopy sessionForWindowDict];
    [sessionForWindowDict2 setObject:createSessionManager forKeyedSubscript:identifierCopy];
  }

  objc_sync_exit(selfCopy);

  return createSessionManager;
}

- (id)sessionTrackerForWindowSceneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  sessionTrackerForWindowDict = [(ICNAController *)selfCopy sessionTrackerForWindowDict];
  v7 = [sessionTrackerForWindowDict objectForKeyedSubscript:identifierCopy];

  if (!v7)
  {
    v7 = objc_alloc_init(ICNAMultiSceneSessionTracker);
    sessionTrackerForWindowDict2 = [(ICNAController *)selfCopy sessionTrackerForWindowDict];
    [sessionTrackerForWindowDict2 setObject:v7 forKeyedSubscript:identifierCopy];
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)clearSessionForWindowSceneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  sessionForWindowDict = [(ICNAController *)selfCopy sessionForWindowDict];
  [sessionForWindowDict setObject:0 forKeyedSubscript:identifierCopy];

  sessionTrackerForWindowDict = [(ICNAController *)selfCopy sessionTrackerForWindowDict];
  [sessionTrackerForWindowDict setObject:0 forKeyedSubscript:identifierCopy];

  objc_sync_exit(selfCopy);
}

- (id)aaTrackerForWindowSceneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(ICNAController *)selfCopy sessionManagerForWindowSceneIdentifier:identifierCopy];
    tracker = [v6 tracker];

    objc_sync_exit(selfCopy);
  }

  else
  {
    tracker = 0;
  }

  return tracker;
}

- (id)createSessionManager
{
  appSessionManager = [(ICNAController *)self appSessionManager];
  createSessionManager = [appSessionManager createSessionManager];

  v5 = [objc_alloc(MEMORY[0x277CEAF18]) initWithFormat:2];
  processorManager = [createSessionManager processorManager];
  [processorManager addEventProcessor:v5];

  v7 = objc_alloc(MEMORY[0x277CEAF58]);
  client = [(ICNAController *)self client];
  uploadBatchEventConfig = [(ICNAController *)self uploadBatchEventConfig];
  v10 = [v7 initWithClient:client endpoint:self config:uploadBatchEventConfig];

  processorManager2 = [createSessionManager processorManager];
  [processorManager2 addEventProcessor:v10];

  debugProcessor = [(ICNAController *)self debugProcessor];
  if (debugProcessor)
  {
    processorManager3 = [createSessionManager processorManager];
    [processorManager3 addEventProcessor:debugProcessor];
  }

  return createSessionManager;
}

- (void)startSessionWithType:(int64_t)type
{
  [(ICNAController *)self generatePrivateSessionIDIfNecessary];
  instrumentationQueue = [(ICNAController *)self instrumentationQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__ICNAController_startSessionWithType___block_invoke;
  v6[3] = &unk_2799B0070;
  v6[4] = self;
  v6[5] = type;
  dispatch_async(instrumentationQueue, v6);
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

- (void)startWindowSceneSessionWithType:(int64_t)type windowScene:(id)scene successHandler:(id)handler
{
  sceneCopy = scene;
  handlerCopy = handler;
  session = [sceneCopy session];
  persistentIdentifier = [session persistentIdentifier];

  instrumentationQueue = [(ICNAController *)self instrumentationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__ICNAController_startWindowSceneSessionWithType_windowScene_successHandler___block_invoke;
  block[3] = &unk_2799B00E8;
  block[4] = self;
  v17 = persistentIdentifier;
  v19 = handlerCopy;
  typeCopy = type;
  v18 = sceneCopy;
  v13 = handlerCopy;
  v14 = sceneCopy;
  v15 = persistentIdentifier;
  dispatch_async(instrumentationQueue, block);
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  globalSessionState = selfCopy->_globalSessionState;
  objc_sync_exit(selfCopy);

  return globalSessionState;
}

- (int64_t)appSessionState
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  appSessionState = selfCopy->_appSessionState;
  objc_sync_exit(selfCopy);

  return appSessionState;
}

- (void)setGlobalSessionState:(int64_t)state
{
  [(ICNAController *)self assertInstrumentationQueue];
  obj = self;
  objc_sync_enter(obj);
  v5 = obj;
  globalSessionState = obj->_globalSessionState;
  if (globalSessionState != state)
  {
    if (state < 1 || globalSessionState)
    {
      if (state || globalSessionState < 1)
      {
        goto LABEL_9;
      }

      [(ICNAController *)obj setPrivateSessionID:@"session_inactive"];
      sessionManager = [(ICNAController *)obj sessionManager];
      tracker = [sessionManager tracker];
      [(ICNAController *)obj pushLongLivedPrivateEventData:tracker];
    }

    else
    {
      [(ICNAController *)obj generatePrivateSessionIDIfNecessary];
      sessionManager = [(ICNAController *)obj sessionManager];
      tracker = [sessionManager tracker];
      [(ICNAController *)obj pushLongLivedPrivateEventData:tracker];
    }

    v5 = obj;
LABEL_9:
    v5->_globalSessionState = state;
  }

  objc_sync_exit(v5);
}

- (void)setAppSessionState:(int64_t)state
{
  [(ICNAController *)self assertInstrumentationQueue];
  obj = self;
  objc_sync_enter(obj);
  if (obj->_appSessionState != state)
  {
    obj->_appSessionState = state;
  }

  objc_sync_exit(obj);
}

- (BOOL)killEndSessionBackgroundTaskIfNecessary
{
  appDelegate = [(ICNAController *)self appDelegate];

  if (!appDelegate)
  {
    return 0;
  }

  endSessionBackgroundTaskIdentifier = [(ICNAController *)self endSessionBackgroundTaskIdentifier];
  objc_sync_enter(endSessionBackgroundTaskIdentifier);
  endSessionBackgroundTaskIdentifier2 = [(ICNAController *)self endSessionBackgroundTaskIdentifier];
  unsignedIntegerValue = [endSessionBackgroundTaskIdentifier2 unsignedIntegerValue];

  v7 = *MEMORY[0x277D767B0];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*MEMORY[0x277D767B0]];
  [(ICNAController *)self setEndSessionBackgroundTaskIdentifier:v8];

  objc_sync_exit(endSessionBackgroundTaskIdentifier);
  if (unsignedIntegerValue == v7)
  {
    return 0;
  }

  appDelegate2 = [(ICNAController *)self appDelegate];
  [appDelegate2 endBackgroundTask:unsignedIntegerValue];

  return 1;
}

- (BOOL)killEndSessionBackgroundTaskIfNecessaryForWindowScene:(id)scene
{
  sceneCopy = scene;
  appDelegate = [(ICNAController *)self appDelegate];

  if (appDelegate)
  {
    session = [sceneCopy session];
    persistentIdentifier = [session persistentIdentifier];

    endSessionBackgroundTaskIdentifiersByWindowSceneIdentifier = [(ICNAController *)self endSessionBackgroundTaskIdentifiersByWindowSceneIdentifier];
    objc_sync_enter(endSessionBackgroundTaskIdentifiersByWindowSceneIdentifier);
    endSessionBackgroundTaskIdentifiersByWindowSceneIdentifier2 = [(ICNAController *)self endSessionBackgroundTaskIdentifiersByWindowSceneIdentifier];
    v10 = [endSessionBackgroundTaskIdentifiersByWindowSceneIdentifier2 objectForKeyedSubscript:persistentIdentifier];
    unsignedIntegerValue = [v10 unsignedIntegerValue];

    v12 = *MEMORY[0x277D767B0];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*MEMORY[0x277D767B0]];
    endSessionBackgroundTaskIdentifiersByWindowSceneIdentifier3 = [(ICNAController *)self endSessionBackgroundTaskIdentifiersByWindowSceneIdentifier];
    [endSessionBackgroundTaskIdentifiersByWindowSceneIdentifier3 setObject:v13 forKeyedSubscript:persistentIdentifier];

    objc_sync_exit(endSessionBackgroundTaskIdentifiersByWindowSceneIdentifier);
    v15 = unsignedIntegerValue != v12;
    if (unsignedIntegerValue != v12)
    {
      appDelegate2 = [(ICNAController *)self appDelegate];
      [appDelegate2 endBackgroundTask:unsignedIntegerValue];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)performOnInstrumentationQueueWaitUntilDone:(BOOL)done block:(id)block
{
  doneCopy = done;
  blockCopy = block;
  instrumentationQueue = [(ICNAController *)self instrumentationQueue];
  v8 = instrumentationQueue;
  if (doneCopy)
  {
    dispatch_sync(instrumentationQueue, blockCopy);
  }

  else
  {
    dispatch_async(instrumentationQueue, blockCopy);
  }
}

- (void)endSessionSynchronously:(BOOL)synchronously forSessionType:(int64_t)type endReason:(int64_t)reason
{
  synchronouslyCopy = synchronously;
  v23 = *MEMORY[0x277D85DE8];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __67__ICNAController_endSessionSynchronously_forSessionType_endReason___block_invoke;
  v19[3] = &unk_2799B0160;
  synchronouslyCopy2 = synchronously;
  v19[4] = self;
  v19[5] = reason;
  v8 = MEMORY[0x25F88B7A0](v19, a2);
  if (synchronouslyCopy)
  {
    multiSceneSessionTracker = [(ICNAController *)self multiSceneSessionTracker];
    [multiSceneSessionTracker endAllSessionsAndInvalidate];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __67__ICNAController_endSessionSynchronously_forSessionType_endReason___block_invoke_120;
    v18[3] = &unk_2799AF130;
    v18[4] = self;
    [(ICNAController *)self performOnInstrumentationQueueWaitUntilDone:1 block:v18];
    v10 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      multiSceneSessionTracker2 = [(ICNAController *)self multiSceneSessionTracker];
      sessionDetailDescription = [multiSceneSessionTracker2 sessionDetailDescription];
      *buf = 138412290;
      v22 = sessionDetailDescription;
      _os_log_impl(&dword_25C6BF000, v10, OS_LOG_TYPE_INFO, "Synchronously ending AA Session. Session Type Detail: %@", buf, 0xCu);
    }

    if (v8)
    {
      v8[2](v8);
    }
  }

  else
  {
    instrumentationQueue = [(ICNAController *)self instrumentationQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__ICNAController_endSessionSynchronously_forSessionType_endReason___block_invoke_121;
    block[3] = &unk_2799B0188;
    typeCopy = type;
    block[4] = self;
    v16 = v8;
    dispatch_async(instrumentationQueue, block);
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

- (void)endWindowSceneSessionSynchronously:(BOOL)synchronously forSessionType:(int64_t)type endReason:(int64_t)reason windowScene:(id)scene
{
  synchronouslyCopy = synchronously;
  sceneCopy = scene;
  session = [sceneCopy session];
  persistentIdentifier = [session persistentIdentifier];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __90__ICNAController_endWindowSceneSessionSynchronously_forSessionType_endReason_windowScene___block_invoke;
  v18[3] = &unk_2799B0228;
  v18[4] = self;
  v12 = sceneCopy;
  v19 = v12;
  v13 = persistentIdentifier;
  v22 = synchronouslyCopy;
  v20 = v13;
  reasonCopy = reason;
  v14 = MEMORY[0x25F88B7A0](v18);
  v15 = v14;
  if (synchronouslyCopy)
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

- (void)pushLongLivedDataObjects:(id)objects privateSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objectsCopy = objects;
  [(ICNAController *)self assertInstrumentationQueue];
  [(ICNAController *)self pushLongLivedPrivateUserData:objectsCopy];
  [(ICNAController *)self pushLongLivedPrivateDeviceData:objectsCopy];
  [(ICNAController *)self pushLongLivedPrivateEventData:objectsCopy privateSessionIdentifier:identifierCopy];

  [(ICNAController *)self pushLongLivedOrientationData:objectsCopy];
}

- (void)pushUniqueDataObject:(id)object tracker:(id)tracker
{
  trackerCopy = tracker;
  objectCopy = object;
  [(ICNAController *)self assertInstrumentationQueue];
  v8 = objc_alloc_init(MEMORY[0x277CEAEF8]);
  [v8 setUnique:1];
  [trackerCopy pushDataEvent:objectCopy traits:v8 file:@"/Library/Caches/com.apple.xbs/Sources/MobileNotes/NotesAnalytics/ICNAController.m" line:1012];
}

- (void)pushLongLivedOrientationData:(id)data
{
  dataCopy = data;
  [(ICNAController *)self assertInstrumentationQueue];
  v7 = [[ICASDeviceOrientation alloc] initWithDeviceOrientation:[(ICNAController *)self deviceOrientationEnum]];
  v5 = [[ICASInterfaceOrientation alloc] initWithInterfaceOrientation:0];
  v6 = [[ICASOrientationData alloc] initWithDeviceOrientation:v7 interfaceOrientation:v5];
  [(ICNAController *)self pushUniqueDataObject:v6 tracker:dataCopy];
}

- (void)pushLongLivedSessionSummaryData:(id)data
{
  dataCopy = data;
  [(ICNAController *)self assertInstrumentationQueue];
  multiSceneSessionTracker = [(ICNAController *)self multiSceneSessionTracker];
  sessionSummaryData = [multiSceneSessionTracker sessionSummaryData];
  [(ICNAController *)self pushUniqueDataObject:sessionSummaryData tracker:dataCopy];
}

- (void)pushLongLivedPrivateUserData:(id)data
{
  dataCopy = data;
  [(ICNAController *)self assertInstrumentationQueue];
  v5 = [ICASPrivateUserData alloc];
  privateUserID = [objc_opt_class() privateUserID];
  saltVersion = [objc_opt_class() saltVersion];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "startMonth")}];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "startYear")}];
  v18 = [(ICASPrivateUserData *)v5 initWithPrivateUserID:privateUserID saltVersion:saltVersion userStartMonth:v8 userStartYear:v9];

  [(ICNAController *)self pushUniqueDataObject:v18 tracker:dataCopy];
  v10 = +[ICNAIdentityManager sharedManager];
  privateUserID2 = [objc_opt_class() privateUserID];
  v12 = [v10 saltedID:privateUserID2 forClass:objc_opt_class()];

  v13 = [[ICASSyncHealthPrivateUserData alloc] initWithSyncHealthPrivateUserID:v12];
  [(ICNAController *)self pushUniqueDataObject:v13 tracker:dataCopy];
  v14 = +[ICNAIdentityManager sharedManager];
  privateUserID3 = [objc_opt_class() privateUserID];
  v16 = [v14 saltedID:privateUserID3 forClass:objc_opt_class()];

  v17 = [[ICASSnapshotHealthPrivateUserData alloc] initWithSnapshotHealthPrivateUserID:v16];
  [(ICNAController *)self pushUniqueDataObject:v17 tracker:dataCopy];
}

- (void)pushLongLivedPrivateDeviceData:(id)data
{
  dataCopy = data;
  v5 = +[ICNAIdentityManager sharedManager];
  deviceID = [objc_opt_class() deviceID];
  v12 = [v5 saltedID:deviceID forClass:objc_opt_class()];

  v7 = [[ICASSyncHealthPrivateDeviceData alloc] initWithSyncHealthPrivateDeviceID:v12];
  [(ICNAController *)self pushUniqueDataObject:v7 tracker:dataCopy];
  v8 = +[ICNAIdentityManager sharedManager];
  deviceID2 = [objc_opt_class() deviceID];
  v10 = [v8 saltedID:deviceID2 forClass:objc_opt_class()];

  v11 = [[ICASSnapshotHealthPrivateDeviceData alloc] initWithSnapshotHealthPrivateDeviceID:v10];
  [(ICNAController *)self pushUniqueDataObject:v11 tracker:dataCopy];
}

- (void)pushLongLivedPrivateEventData:(id)data privateSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dataCopy = data;
  [(ICNAController *)self assertInstrumentationQueue];
  if (!identifierCopy)
  {
    identifierCopy = [(ICNAController *)self privateSessionID];
  }

  v7 = [ICASSessionDetailType alloc];
  multiSceneSessionTracker = [(ICNAController *)self multiSceneSessionTracker];
  v9 = -[ICASSessionDetailType initWithSessionDetailType:](v7, "initWithSessionDetailType:", [multiSceneSessionTracker sessionDetailType]);

  v10 = [[ICASPrivateEventData alloc] initWithPrivateSessionID:identifierCopy sessionDetailType:v9];
  [(ICNAController *)self pushUniqueDataObject:v10 tracker:dataCopy];
  v11 = +[ICNAIdentityManager sharedManager];
  v12 = [v11 saltedID:identifierCopy forClass:objc_opt_class()];

  v13 = [[ICASSyncHealthPrivateEventData alloc] initWithSyncHealthPrivateSessionID:v12];
  [(ICNAController *)self pushUniqueDataObject:v13 tracker:dataCopy];
  v14 = +[ICNAIdentityManager sharedManager];
  v15 = [v14 saltedID:identifierCopy forClass:objc_opt_class()];

  v16 = [[ICASSnapshotHealthPrivateEventData alloc] initWithSnapshotHealthPrivateSessionID:v15];
  [(ICNAController *)self pushUniqueDataObject:v16 tracker:dataCopy];
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
  serverEnvironment = [(ICNAController *)self serverEnvironment];
  targetURL = [serverEnvironment targetURL];

  return targetURL;
}

- (NSString)name
{
  serverEnvironment = [(ICNAController *)self serverEnvironment];
  aaEndPointTypeName = [serverEnvironment aaEndPointTypeName];

  return aaEndPointTypeName;
}

- (void)addSnapshotReferralDataToSessionLevel
{
  referralURLForSnapshotBackgroundTask = [MEMORY[0x277D35DF0] referralURLForSnapshotBackgroundTask];
  [(ICNAController *)self addReferralDataWithReferringInboundURL:referralURLForSnapshotBackgroundTask referringApplication:0];
}

- (void)addReferralDataWithReferringInboundURL:(id)l referringApplication:(id)application
{
  lCopy = l;
  applicationCopy = application;
  v8 = applicationCopy;
  if (applicationCopy)
  {
    lowercaseString = [(__CFString *)applicationCopy lowercaseString];
    v10 = [lowercaseString hasPrefix:@"com.apple."];

    if ((v10 & 1) == 0)
    {

      v8 = @"other";
    }
  }

  instrumentationQueue = [(ICNAController *)self instrumentationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__ICNAController_addReferralDataWithReferringInboundURL_referringApplication___block_invoke;
  block[3] = &unk_2799B0250;
  block[4] = self;
  v15 = lCopy;
  v16 = v8;
  v12 = v8;
  v13 = lCopy;
  dispatch_async(instrumentationQueue, block);
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

- (void)pushReferralDataToSessionManager:(id)manager
{
  managerCopy = manager;
  [(ICNAController *)self assertInstrumentationQueue];
  referralData = [(ICNAController *)self referralData];
  if (referralData)
  {
    v5 = objc_alloc_init(MEMORY[0x277CEAEF8]);
    [v5 setOnlyOnce:1];
    [v5 setUnique:1];
    [(ICNAController *)self pushToSessionManager:managerCopy data:referralData forKey:@"referralData" traits:v5];
  }
}

- (void)pushToSessionManager:(id)manager endReason:(int64_t)reason
{
  managerCopy = manager;
  v8 = [[ICASEndReason alloc] initWithEndReason:reason];
  v6 = [[ICASSessionEndData alloc] initWithEndReason:v8];
  tracker = [managerCopy tracker];

  [tracker pushDataEvent:v6 traits:0 file:@"/Library/Caches/com.apple.xbs/Sources/MobileNotes/NotesAnalytics/ICNAController.m" line:1230];
}

- (void)pushToSessionManager:(id)manager data:(id)data forKey:(id)key traits:(id)traits
{
  managerCopy = manager;
  dataCopy = data;
  keyCopy = key;
  traitsCopy = traits;
  [(ICNAController *)self assertInstrumentationQueue];
  if (dataCopy && keyCopy)
  {
    v13 = traitsCopy;
    if (!v13)
    {
      v13 = objc_alloc_init(MEMORY[0x277CEAEF8]);
    }

    v14 = [objc_alloc(MEMORY[0x277CEAF20]) initWithKey:keyCopy data:dataCopy];
    [managerCopy pushSessionData:v14 traits:v13];
  }
}

- (id)userData
{
  [(ICNAController *)self assertInstrumentationQueue];
  storeFrontID = [objc_opt_class() storeFrontID];
  userID = [objc_opt_class() userID];
  v4 = [ICASUserData alloc];
  saltVersion = [objc_opt_class() saltVersion];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "startMonth")}];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "startYear")}];
  v8 = [(ICASUserData *)v4 initWithUserID:userID userStorefrontID:storeFrontID saltVersion:saltVersion userStartMonth:v6 userStartYear:v7];

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
  mEMORY[0x277D35F30] = [MEMORY[0x277D35F30] sharedContext];
  workerManagedObjectContext = [mEMORY[0x277D35F30] workerManagedObjectContext];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __36__ICNAController_accountTypeSummary__block_invoke;
  v23[3] = &unk_2799B0278;
  v5 = workerManagedObjectContext;
  v24 = v5;
  selfCopy = self;
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
  selfCopy2 = self;
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

+ (int64_t)accountTypeEnumForModernAccount:(id)account
{
  accountCopy = account;
  if ([accountCopy accountType] == 3)
  {
    v4 = 10;
  }

  else if ([accountCopy accountType] == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 12;
  }

  return v4;
}

+ (int64_t)accountTypeEnumForHTMLAccount:(id)account
{
  accountCopy = account;
  if ([accountCopy didChooseToMigrate])
  {
    v4 = 3;
  }

  else if ([accountCopy isIMAPAccount])
  {
    mEMORY[0x277D36178] = [MEMORY[0x277D36178] sharedInstance];
    accountStore = [mEMORY[0x277D36178] accountStore];

    accountIdentifier = [accountCopy accountIdentifier];
    v8 = [accountStore accountWithIdentifier:accountIdentifier];

    parentAccount = [v8 parentAccount];
    v10 = parentAccount;
    if (!parentAccount)
    {
      parentAccount = v8;
    }

    accountType = [parentAccount accountType];
    identifier = [accountType identifier];

    if ([identifier isEqualToString:*MEMORY[0x277CB8C40]])
    {
      v4 = 5;
    }

    else if ([identifier isEqualToString:*MEMORY[0x277CB8D38]])
    {
      v4 = 6;
    }

    else if ([identifier isEqualToString:*MEMORY[0x277CB8B98]])
    {
      v4 = 7;
    }

    else if ([identifier isEqualToString:*MEMORY[0x277CB8C00]])
    {
      v4 = 8;
    }

    else if ([identifier isEqualToString:*MEMORY[0x277CB8BA0]])
    {
      v4 = 2;
    }

    else
    {
      v4 = 4;
    }
  }

  else if ([accountCopy isExchangeAccount])
  {
    v4 = 9;
  }

  else if ([accountCopy isLocalAccount])
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
  reachabilityForInternetConnection = [MEMORY[0x277D36240] reachabilityForInternetConnection];
  currentReachabilityStatus = [reachabilityForInternetConnection currentReachabilityStatus];
  if (currentReachabilityStatus > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_25C72AE00[currentReachabilityStatus];
  }

  v5 = [[ICASCellularRadioAccessTechnology alloc] initWithCellularRadioAccessTechnology:v4];

  return v5;
}

- (id)appData
{
  [(ICNAController *)self assertInstrumentationQueue];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];
  v4 = [infoDictionary objectForKey:@"CFBundleShortVersionString"];

  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  infoDictionary2 = [mainBundle2 infoDictionary];
  v7 = [infoDictionary2 objectForKey:@"CFBundleVersion"];

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
  deviceModel = [objc_opt_class() deviceModel];
  devicePlatform = [objc_opt_class() devicePlatform];
  osVersion = [objc_opt_class() osVersion];
  osBundleVersion = [objc_opt_class() osBundleVersion];
  v9 = [(ICASDeviceData *)v4 initWithDeviceModel:deviceModel devicePlatform:devicePlatform osInstallVariant:v3 osVersion:osVersion osBundleVersion:osBundleVersion];

  return v9;
}

- (id)debugData
{
  [(ICNAController *)self assertInstrumentationQueue];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults stringForKey:@"analyticsDebugDataName"];

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
  referringInboundURL = [(ICNAController *)self referringInboundURL];
  if (referringInboundURL)
  {
  }

  else
  {
    referringApplication = [(ICNAController *)self referringApplication];

    if (!referringApplication)
    {
      goto LABEL_5;
    }
  }

  referringInboundURL2 = [(ICNAController *)self referringInboundURL];
  v6 = [ICNAReferringInboundURLFilter filterReferringInboundURL:referringInboundURL2];

  v7 = [ICASReferralData alloc];
  referringApplication2 = [(ICNAController *)self referringApplication];
  referringApplication = [(ICASReferralData *)v7 initWithReferringApplication:referringApplication2 referringInboundUrl:v6];

  [(ICNAController *)self setReferringApplication:0];
  [(ICNAController *)self setReferringInboundURL:0];

LABEL_5:

  return referringApplication;
}

- (ICNADebugEventProcessor)debugProcessor
{
  if (!self->_debugProcessor)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [standardUserDefaults BOOLForKey:@"ICNAUseDebugProcessor"];

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

- (void)newAATrackerWithName:(id)name parentTracker:(id)tracker completionBlock:(id)block
{
  blockCopy = block;
  nameCopy = name;
  aaTracker = [tracker aaTracker];
  [(ICNAController *)self newAATrackerWithName:nameCopy parentAATracker:aaTracker completionBlock:blockCopy];
}

- (void)newAATrackerWithName:(id)name parentAATracker:(id)tracker completionBlock:(id)block
{
  nameCopy = name;
  trackerCopy = tracker;
  blockCopy = block;
  if (trackerCopy)
  {
    tracker = trackerCopy;
  }

  else
  {
    sessionManager = [(ICNAController *)self sessionManager];
    tracker = [sessionManager tracker];
  }

  v16 = tracker;
  v17 = nameCopy;
  v18 = blockCopy;
  v13 = blockCopy;
  v14 = nameCopy;
  v15 = tracker;
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

- (void)trackTimedEventType:(Class)type subTracker:(id)tracker synchronousTaskBeforeStarting:(id)starting
{
  trackerCopy = tracker;
  startingCopy = starting;
  instrumentationQueue = [(ICNAController *)self instrumentationQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__ICNAController_trackTimedEventType_subTracker_synchronousTaskBeforeStarting___block_invoke;
  v13[3] = &unk_2799B02F0;
  v14 = trackerCopy;
  selfCopy = self;
  v16 = startingCopy;
  typeCopy = type;
  v11 = trackerCopy;
  v12 = startingCopy;
  dispatch_async(instrumentationQueue, v13);
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

- (void)pushDataObject:(id)object unique:(BOOL)unique onlyOnce:(BOOL)once subTracker:(id)tracker
{
  objectCopy = object;
  trackerCopy = tracker;
  instrumentationQueue = [(ICNAController *)self instrumentationQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__ICNAController_pushDataObject_unique_onlyOnce_subTracker___block_invoke;
  v15[3] = &unk_2799B0318;
  v16 = trackerCopy;
  selfCopy = self;
  uniqueCopy = unique;
  onceCopy = once;
  v18 = objectCopy;
  v13 = objectCopy;
  v14 = trackerCopy;
  dispatch_async(instrumentationQueue, v15);
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

- (void)pushDataObjects:(id)objects unique:(BOOL)unique onlyOnce:(BOOL)once subTracker:(id)tracker
{
  objectsCopy = objects;
  trackerCopy = tracker;
  instrumentationQueue = [(ICNAController *)self instrumentationQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__ICNAController_pushDataObjects_unique_onlyOnce_subTracker___block_invoke;
  v15[3] = &unk_2799B0318;
  v16 = trackerCopy;
  selfCopy = self;
  uniqueCopy = unique;
  onceCopy = once;
  v18 = objectsCopy;
  v13 = objectsCopy;
  v14 = trackerCopy;
  dispatch_async(instrumentationQueue, v15);
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

- (void)popDataObjectWithType:(Class)type subTracker:(id)tracker
{
  trackerCopy = tracker;
  instrumentationQueue = [(ICNAController *)self instrumentationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__ICNAController_popDataObjectWithType_subTracker___block_invoke;
  block[3] = &unk_2799B0340;
  v10 = trackerCopy;
  selfCopy = self;
  typeCopy = type;
  v8 = trackerCopy;
  dispatch_async(instrumentationQueue, block);
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

- (void)popDataObjectsWithTypes:(id)types subTracker:(id)tracker
{
  typesCopy = types;
  trackerCopy = tracker;
  instrumentationQueue = [(ICNAController *)self instrumentationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ICNAController_popDataObjectsWithTypes_subTracker___block_invoke;
  block[3] = &unk_2799B0250;
  v12 = trackerCopy;
  selfCopy = self;
  v14 = typesCopy;
  v9 = typesCopy;
  v10 = trackerCopy;
  dispatch_async(instrumentationQueue, block);
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

- (void)submitEventOfType:(Class)type subTracker:(id)tracker synchronousTaskBeforeSubmitting:(id)submitting
{
  trackerCopy = tracker;
  submittingCopy = submitting;
  instrumentationQueue = [(ICNAController *)self instrumentationQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__ICNAController_submitEventOfType_subTracker_synchronousTaskBeforeSubmitting___block_invoke;
  v13[3] = &unk_2799B0368;
  v15 = submittingCopy;
  typeCopy = type;
  v13[4] = self;
  v14 = trackerCopy;
  v11 = trackerCopy;
  v12 = submittingCopy;
  dispatch_async(instrumentationQueue, v13);
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

- (void)_immediatelySubmitEventOfType:(Class)type subTracker:(id)tracker
{
  trackerCopy = tracker;
  v7 = trackerCopy;
  if (trackerCopy)
  {
    aaTracker = [trackerCopy aaTracker];
  }

  else
  {
    sessionManager = [(ICNAController *)self sessionManager];
    aaTracker = [sessionManager tracker];
  }

  v10 = os_log_create("com.apple.notes", "Analytics");
  v11 = v10;
  if (aaTracker)
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
    v13[4] = type;
    [aaTracker submitEventType:v12 completion:v13];
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

- (void)submitEventOfType:(Class)type pushThenPopDataObjects:(id)objects subTracker:(id)tracker
{
  objectsCopy = objects;
  trackerCopy = tracker;
  instrumentationQueue = [(ICNAController *)self instrumentationQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__ICNAController_submitEventOfType_pushThenPopDataObjects_subTracker___block_invoke;
  v13[3] = &unk_2799B03B0;
  v13[4] = self;
  v14 = objectsCopy;
  v15 = trackerCopy;
  typeCopy = type;
  v11 = trackerCopy;
  v12 = objectsCopy;
  dispatch_async(instrumentationQueue, v13);
}

- (void)_immediatelySubmitEventOfType:(Class)type pushThenPopDataObjects:(id)objects subTracker:(id)tracker
{
  objectsCopy = objects;
  trackerCopy = tracker;
  v10 = trackerCopy;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__5;
  v23 = __Block_byref_object_dispose__5;
  if (trackerCopy)
  {
    aaTracker = [trackerCopy aaTracker];
  }

  else
  {
    sessionManager = [(ICNAController *)self sessionManager];
    aaTracker = [sessionManager tracker];
  }

  if (v20[5])
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __82__ICNAController__immediatelySubmitEventOfType_pushThenPopDataObjects_subTracker___block_invoke;
    v18[3] = &unk_2799B03D8;
    v18[4] = &v19;
    [objectsCopy enumerateObjectsUsingBlock:v18];
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
    v17[4] = type;
    [v13 submitEventType:v14 completion:v17];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __82__ICNAController__immediatelySubmitEventOfType_pushThenPopDataObjects_subTracker___block_invoke_188;
    v16[3] = &unk_2799B03D8;
    v16[4] = &v19;
    [objectsCopy enumerateObjectsWithOptions:2 usingBlock:v16];
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

- (void)enterGroupWithSubtracker:(id)subtracker
{
  subtrackerCopy = subtracker;
  instrumentationQueue = [(ICNAController *)self instrumentationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__ICNAController_enterGroupWithSubtracker___block_invoke;
  block[3] = &unk_2799AF130;
  v8 = subtrackerCopy;
  v6 = subtrackerCopy;
  dispatch_async(instrumentationQueue, block);
}

void __43__ICNAController_enterGroupWithSubtracker___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) aaTracker];
  [v1 enterGroup];
}

- (void)leaveGroupWithSubtracker:(id)subtracker completionHandler:(id)handler
{
  subtrackerCopy = subtracker;
  handlerCopy = handler;
  instrumentationQueue = [(ICNAController *)self instrumentationQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__ICNAController_leaveGroupWithSubtracker_completionHandler___block_invoke;
  v11[3] = &unk_2799B0400;
  v12 = subtrackerCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = subtrackerCopy;
  dispatch_async(instrumentationQueue, v11);
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
  instrumentationQueue = [(ICNAController *)self instrumentationQueue];
  dispatch_async(instrumentationQueue, &__block_literal_global_190);
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

- (void)flushWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25C6BF000, v5, OS_LOG_TYPE_INFO, "flushWithCompletionHandler started", buf, 2u);
  }

  instrumentationQueue = [(ICNAController *)self instrumentationQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__ICNAController_flushWithCompletionHandler___block_invoke;
  v8[3] = &unk_2799B0400;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(instrumentationQueue, v8);
}

void __45__ICNAController_flushWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) flushManager];
  [v2 flushWithCompletion:*(a1 + 40)];
}

+ (NSString)userID
{
  v2 = +[ICNAIdentityManager sharedManager];
  userID = [v2 userID];

  return userID;
}

+ (id)privateUserID
{
  v2 = +[ICNAIdentityManager sharedManager];
  privateUserID = [v2 privateUserID];

  return privateUserID;
}

+ (NSString)saltVersion
{
  v2 = +[ICNAIdentityManager sharedManager];
  identityTimestampYYYYMM = [v2 identityTimestampYYYYMM];

  return identityTimestampYYYYMM;
}

+ (unint64_t)startYear
{
  v2 = +[ICNAIdentityManager sharedManager];
  startYear = [v2 startYear];

  return startYear;
}

+ (unint64_t)startMonth
{
  v2 = +[ICNAIdentityManager sharedManager];
  startMonth = [v2 startMonth];

  return startMonth;
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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  systemName = [currentDevice systemName];

  return systemName;
}

+ (BOOL)audioTranscriptEnabled
{
  mEMORY[0x277D36218] = [MEMORY[0x277D36218] sharedInstance];
  supportsGeneralASR = [mEMORY[0x277D36218] supportsGeneralASR];

  return supportsGeneralASR;
}

+ (BOOL)audioSummaryEnabled
{
  mEMORY[0x277D36218] = [MEMORY[0x277D36218] sharedInstance];
  supportsPrivateCloudComputeSummary = [mEMORY[0x277D36218] supportsPrivateCloudComputeSummary];

  return supportsPrivateCloudComputeSummary;
}

+ (BOOL)localNotesEnabled
{
  v2 = [MEMORY[0x277D36260] objectForKey:@"LocalNotes"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
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
  mEMORY[0x277D36180] = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  uUIDString = [mEMORY[0x277D36180] stringForKey:@"analytics_device_id"];

  if (!uUIDString)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    mEMORY[0x277D36180]2 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
    [mEMORY[0x277D36180]2 setObject:uUIDString forKey:@"analytics_device_id"];
  }

  return uUIDString;
}

+ (NSString)storeFrontID
{
  ams_sharedAccountStore = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];
  v4 = ams_activeiTunesAccount;
  if (ams_activeiTunesAccount)
  {
    ams_localiTunesAccount = ams_activeiTunesAccount;
  }

  else
  {
    ams_sharedAccountStore2 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
    ams_localiTunesAccount = [ams_sharedAccountStore2 ams_localiTunesAccount];
  }

  ams_storefront = [ams_localiTunesAccount ams_storefront];

  return ams_storefront;
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