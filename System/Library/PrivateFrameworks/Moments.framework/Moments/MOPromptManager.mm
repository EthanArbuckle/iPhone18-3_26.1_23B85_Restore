@interface MOPromptManager
+ (id)defaultManager;
- (BOOL)_purgeEventsWithHandler:(id)handler;
- (BOOL)analyzeTrendsInEvents:(id)events handler:(id)handler;
- (BOOL)bundleEventsWithHandler:(id)handler;
- (BOOL)clearEventsWithHandler:(id)handler;
- (BOOL)collectEventsWithHandler:(id)handler;
- (BOOL)fetchEventBundlesWithOptions:(id)options handler:(id)handler;
- (BOOL)fetchEventBundlesWithPredicate:(id)predicate handler:(id)handler;
- (BOOL)fetchEventsWithOptions:(id)options handler:(id)handler;
- (BOOL)getDiagnosticReporterConfiguration:(id)configuration;
- (BOOL)getMomentsNotificationsSchedule:(id)schedule;
- (BOOL)getTimeToWriteNotificationsScheduleWithHandler:(id)handler;
- (BOOL)printSettingValue:(id)value withType:(id)type handler:(id)handler;
- (BOOL)purgeEventsWithHandler:(id)handler;
- (BOOL)refreshEventsWithRefreshVariant:(unint64_t)variant andHandler:(id)handler;
- (BOOL)runAnalyticsWithHandler:(id)handler;
- (BOOL)scheduleDatabaseUpgradeWithHandler:(id)handler;
- (BOOL)setupMomentsNotificationsWithSchedule:(id)schedule options:(id)options handler:(id)handler;
- (BOOL)setupPeriodicTimeToWriteMomentsNotificationsUsingDateComponents:(id)components defaultURL:(id)l handler:(id)handler;
- (BOOL)softRefreshEventsWithRefreshVariant:(unint64_t)variant andIgnoreLastTrigger:(BOOL)trigger andHandler:(id)handler;
- (BOOL)storeEvents:(id)events handler:(id)handler;
- (BOOL)testNotificationAnalyticsWithHandler:(id)handler;
- (BOOL)uploadFeedbackWithDBStateToServer:(id)server handler:(id)handler;
- (MOPromptManager)init;
- (id)context;
- (id)initForSoftLinkwithMOEventClass:(Class)class moEventBundleClass:(Class)bundleClass;
- (id)localizedString:(id)string withTable:(id)table;
- (id)localizedStringForKey:(id)key;
- (id)makeNewConnectionWithInterfaceFor:(id)for;
- (void)_buildMetadataAndLabelsForBundles:(id)bundles withOptions:(id)options;
- (void)_buildMetadataOnlyForEventBundles:(id)bundles;
- (void)_initForSoftLinkwithMOEventClass:(Class)class moEventBundleClass:(Class)bundleClass moXpcContext:(Class)context;
- (void)acquireBackgroundProcessingPermissionsForMomentsWithHander:(id)hander;
- (void)buildLabelsForEventBundles:(id)bundles;
- (void)dumpDBStateWithHandler:(id)handler;
- (void)fetchEligiblePOICategoriesWithHandler:(id)handler;
- (void)fetchEventBundlesWithAllowedSourceTypes:(id)types dateInterval:(id)interval ascending:(BOOL)ascending limit:(id)limit respectOnboardingDates:(BOOL)dates handler:(id)handler;
- (void)fetchEventBundlesWithAllowedSourceTypes:(id)types dateInterval:(id)interval ascending:(BOOL)ascending limit:(id)limit respectOnboardingDates:(BOOL)dates respectLearnFromThisApp:(BOOL)app handler:(id)handler;
- (void)generateAvailabilityPredictionsAndRegisterTimerWithHandler:(id)handler;
- (void)generateAvailabilityPredictionsWithHandler:(id)handler;
- (void)getSnapshotDictionaryForAnalyticsWithHandler:(id)handler;
- (void)localizeEventBundles:(id)bundles;
- (void)printEvergreenBundlesWithSeed:(unint64_t)seed handler:(id)handler;
- (void)printOnboardingStatusAnalytics:(id)analytics;
- (void)setUpNotificationTimerWithFireDate:(id)date;
- (void)testMomentsNotificationsWithOptions:(id)options handler:(id)handler;
- (void)triggerFeedbackAssistantFlow:(id)flow handler:(id)handler;
@end

@implementation MOPromptManager

- (MOPromptManager)init
{
  v6.receiver = self;
  v6.super_class = MOPromptManager;
  v2 = [(MOPromptManager *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = objc_opt_class();
    [(MOPromptManager *)v2 _initForSoftLinkwithMOEventClass:v3 moEventBundleClass:v4 moXpcContext:objc_opt_class()];
  }

  return v2;
}

+ (id)defaultManager
{
  if (defaultManager_onceToken_0 != -1)
  {
    +[MOPromptManager defaultManager];
  }

  v3 = defaultManager_promptManager;

  return v3;
}

uint64_t __33__MOPromptManager_defaultManager__block_invoke()
{
  defaultManager_promptManager = objc_alloc_init(MOPromptManager);

  return MEMORY[0x2821F96F8]();
}

- (id)initForSoftLinkwithMOEventClass:(Class)class moEventBundleClass:(Class)bundleClass
{
  v8.receiver = self;
  v8.super_class = MOPromptManager;
  v6 = [(MOPromptManager *)&v8 init];
  if (v6)
  {
    [(MOPromptManager *)v6 _initForSoftLinkwithMOEventClass:class moEventBundleClass:bundleClass moXpcContext:objc_opt_class()];
  }

  return v6;
}

- (id)makeNewConnectionWithInterfaceFor:(id)for
{
  v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284110540];
  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28410AEF0];
  [v4 setInterface:v5 forSelector:sel_scheduleDatabaseUpgradeWithContext_andDelegate_ argumentIndex:1 ofReply:0];

  v6 = [MEMORY[0x277CBEB98] setWithObjects:{self->moXpcContextClass, 0}];
  [v4 setClasses:v6 forSelector:sel_scheduleDatabaseUpgradeWithContext_andDelegate_ argumentIndex:0 ofReply:0];

  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  moXpcContextClass = self->moXpcContextClass;
  moEventClass = self->moEventClass;
  v11 = objc_opt_class();
  v12 = [v7 setWithObjects:{v8, moXpcContextClass, moEventClass, v11, objc_opt_class(), 0}];
  [v4 setClasses:v12 forSelector:sel_storeEvents_withContext_andHandler_ argumentIndex:0 ofReply:0];

  v13 = MEMORY[0x277CBEB98];
  v14 = objc_opt_class();
  v15 = self->moXpcContextClass;
  v16 = self->moEventClass;
  v17 = objc_opt_class();
  v18 = [v13 setWithObjects:{v14, v15, v16, v17, objc_opt_class(), 0}];
  [v4 setClasses:v18 forSelector:sel_fetchEventsWithOptions_withContext_andHandler_ argumentIndex:0 ofReply:1];

  v19 = MEMORY[0x277CBEB98];
  v20 = objc_opt_class();
  moEventBundleClass = self->moEventBundleClass;
  v21 = self->moXpcContextClass;
  v23 = objc_opt_class();
  v24 = [v19 setWithObjects:{v20, v21, moEventBundleClass, v23, objc_opt_class(), 0}];
  [v4 setClasses:v24 forSelector:sel_fetchEventBundlesWithOptions_withContext_andHandler_ argumentIndex:0 ofReply:1];

  v25 = MEMORY[0x277CBEB98];
  v26 = objc_opt_class();
  v28 = self->moEventBundleClass;
  v27 = self->moXpcContextClass;
  v29 = objc_opt_class();
  v30 = [v25 setWithObjects:{v26, v27, v28, v29, objc_opt_class(), 0}];
  [v4 setClasses:v30 forSelector:sel_fetchEventBundlesWithPredicate_withContext_andHandler_ argumentIndex:0 ofReply:1];

  v31 = MEMORY[0x277CBEB98];
  v32 = objc_opt_class();
  v33 = self->moEventBundleClass;
  v34 = self->moXpcContextClass;
  v35 = objc_opt_class();
  v36 = [v31 setWithObjects:{v32, v34, v33, v35, objc_opt_class(), 0}];
  [v4 setClasses:v36 forSelector:sel_fetchEventBundlesWithPredicate_withContext_andHandler_ argumentIndex:0 ofReply:0];

  v37 = MEMORY[0x277CBEB98];
  v38 = objc_opt_class();
  v40 = self->moEventBundleClass;
  v39 = self->moXpcContextClass;
  v41 = objc_opt_class();
  v42 = [v37 setWithObjects:{v38, v39, v40, v41, objc_opt_class(), 0}];
  [v4 setClasses:v42 forSelector:sel_printEvergreenBundlesWithSeed_handler_ argumentIndex:0 ofReply:1];

  v43 = MEMORY[0x277CBEB98];
  v44 = objc_opt_class();
  v45 = self->moXpcContextClass;
  v46 = self->moEventClass;
  v47 = objc_opt_class();
  v48 = [v43 setWithObjects:{v44, v45, v46, v47, objc_opt_class(), 0}];
  [v4 setClasses:v48 forSelector:sel_analyzeTrendsInEvents_withContext_andRefreshVariant_andHandler_ argumentIndex:0 ofReply:1];

  v49 = MEMORY[0x277CBEB98];
  v50 = objc_opt_class();
  v51 = self->moXpcContextClass;
  v52 = self->moEventClass;
  v53 = objc_opt_class();
  v54 = [v49 setWithObjects:{v50, v51, v52, v53, objc_opt_class(), 0}];
  [v4 setClasses:v54 forSelector:sel_analyzeTrendsInEvents_withContext_andRefreshVariant_andHandler_ argumentIndex:0 ofReply:0];

  v55 = MEMORY[0x277CBEB98];
  v56 = objc_opt_class();
  v57 = objc_opt_class();
  v58 = objc_opt_class();
  v59 = objc_opt_class();
  v60 = [v55 setWithObjects:{v56, v57, v58, v59, objc_opt_class(), 0}];
  [v4 setClasses:v60 forSelector:sel_checkElegibilityAndRequestDataExportForTrigger_withFeedback_requestUpload_reply_ argumentIndex:0 ofReply:0];

  v61 = MEMORY[0x277CBEB98];
  v62 = objc_opt_class();
  v63 = [v61 setWithObjects:{v62, objc_opt_class(), 0}];
  [v4 setClasses:v63 forSelector:sel_getDiagnosticReporterConfiguration_ argumentIndex:0 ofReply:0];

  v64 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.momentsd" options:0];
  [v64 setRemoteObjectInterface:v4];

  return v64;
}

- (void)_initForSoftLinkwithMOEventClass:(Class)class moEventBundleClass:(Class)bundleClass moXpcContext:(Class)context
{
  self->moEventClass = class;
  self->moEventBundleClass = bundleClass;
  self->moXpcContextClass = context;
  v6 = [[MOConnectionManager alloc] initWithName:@"MOPromptManager" usingDelegate:self];
  connectionManager = self->connectionManager;
  self->connectionManager = v6;

  v8 = +[MODiagnosticReporter defaultReporter];
  [v8 configureWithPromptManager:self];

  v9 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_22D8C5000, v9, OS_LOG_TYPE_DEFAULT, "MOPromptManager initiate client", v10, 2u);
  }
}

- (id)context
{
  v2 = objc_alloc_init(MOXPCContext);

  return v2;
}

- (BOOL)scheduleDatabaseUpgradeWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D8C5000, v5, OS_LOG_TYPE_DEFAULT, "calling scheduleDatabaseUpgradeWithHandler", buf, 2u);
  }

  connectionManager = self->connectionManager;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__MOPromptManager_scheduleDatabaseUpgradeWithHandler___block_invoke;
  v11[3] = &unk_278775A70;
  v11[4] = self;
  v12 = handlerCopy;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__MOPromptManager_scheduleDatabaseUpgradeWithHandler___block_invoke_208;
  v9[3] = &unk_278773648;
  v10 = v12;
  v7 = v12;
  [(MOConnectionManager *)connectionManager callAsyncProxyUsingBlock:v11 onError:v9];

  return 1;
}

void __54__MOPromptManager_scheduleDatabaseUpgradeWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [MODatabaseUpgradeCompletionDelegate alloc];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __54__MOPromptManager_scheduleDatabaseUpgradeWithHandler___block_invoke_2;
  v14 = &unk_278775A48;
  v15 = *(a1 + 40);
  v16 = v5;
  v8 = v5;
  v9 = [(MODatabaseUpgradeCompletionDelegate *)v7 initWithHandler:&v11];
  v10 = [*(a1 + 32) context];
  [v6 scheduleDatabaseUpgradeWithContext:v10 andDelegate:v9];
}

void __54__MOPromptManager_scheduleDatabaseUpgradeWithHandler___block_invoke_2(uint64_t a1, unint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&dword_22D8C5000, v6, OS_LOG_TYPE_DEFAULT, "calling back from scheduleDatabaseUpgradeWithContext with status %@", &v12, 0xCu);
  }

  if (a2 <= 4)
  {
    if (a2 == 2)
    {
      v11 = *(a1 + 32);
      if (v11)
      {
        (*(v11 + 16))(v11, 2, v5);
      }
    }

    else
    {
      if ((*(*(a1 + 40) + 16))())
      {
        v8 = *(a1 + 32);
        if (v8)
        {
          (*(v8 + 16))(v8, a2, v5);
        }
      }

      v9 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_22D8C5000, v9, OS_LOG_TYPE_DEFAULT, "calling scheduleDatabaseUpgradeWithContext completed", &v12, 2u);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __54__MOPromptManager_scheduleDatabaseUpgradeWithHandler___block_invoke_208(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (BOOL)storeEvents:(id)events handler:(id)handler
{
  eventsCopy = events;
  handlerCopy = handler;
  v8 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D8C5000, v8, OS_LOG_TYPE_DEFAULT, "calling storeEvents", buf, 2u);
  }

  connectionManager = self->connectionManager;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __39__MOPromptManager_storeEvents_handler___block_invoke;
  v15[3] = &unk_278775AC0;
  v16 = eventsCopy;
  selfCopy = self;
  v18 = handlerCopy;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __39__MOPromptManager_storeEvents_handler___block_invoke_210;
  v13[3] = &unk_278773648;
  v14 = v18;
  v10 = v18;
  v11 = eventsCopy;
  [(MOConnectionManager *)connectionManager callAsyncProxyUsingBlock:v15 onError:v13];

  return 1;
}

void __39__MOPromptManager_storeEvents_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = a2;
  v9 = [v7 context];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __39__MOPromptManager_storeEvents_handler___block_invoke_2;
  v11[3] = &unk_278775A98;
  v12 = v5;
  v13 = *(a1 + 48);
  v10 = v5;
  [v8 storeEvents:v6 withContext:v9 andHandler:v11];
}

void __39__MOPromptManager_storeEvents_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }
  }

  v5 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22D8C5000, v5, OS_LOG_TYPE_DEFAULT, "calling storeEvents completed", v6, 2u);
  }
}

uint64_t __39__MOPromptManager_storeEvents_handler___block_invoke_210(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)fetchEventsWithOptions:(id)options handler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  v8 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D8C5000, v8, OS_LOG_TYPE_DEFAULT, "calling fetchEventsWithOption", buf, 2u);
  }

  connectionManager = self->connectionManager;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __50__MOPromptManager_fetchEventsWithOptions_handler___block_invoke;
  v15[3] = &unk_278775AC0;
  v16 = optionsCopy;
  selfCopy = self;
  v18 = handlerCopy;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__MOPromptManager_fetchEventsWithOptions_handler___block_invoke_212;
  v13[3] = &unk_278773648;
  v14 = v18;
  v10 = v18;
  v11 = optionsCopy;
  [(MOConnectionManager *)connectionManager callAsyncProxyUsingBlock:v15 onError:v13];

  return 1;
}

void __50__MOPromptManager_fetchEventsWithOptions_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = a2;
  v9 = [v7 context];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__MOPromptManager_fetchEventsWithOptions_handler___block_invoke_2;
  v11[3] = &unk_278775AE8;
  v12 = v5;
  v13 = *(a1 + 48);
  v10 = v5;
  [v8 fetchEventsWithOptions:v6 withContext:v9 andHandler:v11];
}

void __50__MOPromptManager_fetchEventsWithOptions_handler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ((*(*(a1 + 32) + 16))())
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, v5, v6);
    }
  }

  v8 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_22D8C5000, v8, OS_LOG_TYPE_DEFAULT, "calling fetchEventsWithOption completed", v9, 2u);
  }
}

uint64_t __50__MOPromptManager_fetchEventsWithOptions_handler___block_invoke_212(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (BOOL)setupPeriodicTimeToWriteMomentsNotificationsUsingDateComponents:(id)components defaultURL:(id)l handler:(id)handler
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277CCA5B8];
  v14 = *MEMORY[0x277CCA450];
  v15[0] = @"Notification Scheduling SPIs are deprecated, schedule is now handled internally within moments";
  v8 = MEMORY[0x277CBEAC0];
  handlerCopy = handler;
  v10 = [v8 dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v11 = [v6 errorWithDomain:v7 code:1 userInfo:v10];
  (*(handler + 2))(handlerCopy, v11);

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)getTimeToWriteNotificationsScheduleWithHandler:(id)handler
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277CCA5B8];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = @"Notification Scheduling SPIs deprecated, schedule is now handled internally within moments";
  v6 = MEMORY[0x277CBEAC0];
  handlerCopy = handler;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v4 errorWithDomain:v5 code:1 userInfo:v8];
  (*(handler + 2))(handlerCopy, 0, 0, v9);

  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)setupMomentsNotificationsWithSchedule:(id)schedule options:(id)options handler:(id)handler
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277CCA5B8];
  v14 = *MEMORY[0x277CCA450];
  v15[0] = @"Notification Scheduling SPIs are deprecated, schedule is now handled internally within moments";
  v8 = MEMORY[0x277CBEAC0];
  handlerCopy = handler;
  v10 = [v8 dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v11 = [v6 errorWithDomain:v7 code:1 userInfo:v10];
  (*(handler + 2))(handlerCopy, v11);

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)getMomentsNotificationsSchedule:(id)schedule
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277CCA5B8];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = @"Notification Scheduling SPIs are deprecated, schedule is now handled internally within moments";
  v6 = MEMORY[0x277CBEAC0];
  scheduleCopy = schedule;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v4 errorWithDomain:v5 code:1 userInfo:v8];
  (*(schedule + 2))(scheduleCopy, 0, 0, v9);

  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)_buildMetadataAndLabelsForBundles:(id)bundles withOptions:(id)options
{
  bundlesCopy = bundles;
  if ([options skipLocalization])
  {
    [(MOPromptManager *)self _buildMetadataOnlyForEventBundles:bundlesCopy];
  }

  else
  {
    [(MOPromptManager *)self buildLabelsForEventBundles:bundlesCopy];
  }
}

- (BOOL)fetchEventBundlesWithPredicate:(id)predicate handler:(id)handler
{
  predicateCopy = predicate;
  handlerCopy = handler;
  v8 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D8C5000, v8, OS_LOG_TYPE_DEFAULT, "calling fetchEventBundlesWithPredicate", buf, 2u);
  }

  connectionManager = self->connectionManager;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__MOPromptManager_fetchEventBundlesWithPredicate_handler___block_invoke;
  v16[3] = &unk_278775AC0;
  v17 = predicateCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__MOPromptManager_fetchEventBundlesWithPredicate_handler___block_invoke_220;
  v14[3] = &unk_278773648;
  v15 = v19;
  v10 = v19;
  v11 = predicateCopy;
  [(MOConnectionManager *)connectionManager callAsyncProxyUsingBlock:v16 onError:v14];
  v12 = self->connectionManager != 0;

  return v12;
}

void __58__MOPromptManager_fetchEventBundlesWithPredicate_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = a2;
  v9 = [v7 context];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__MOPromptManager_fetchEventBundlesWithPredicate_handler___block_invoke_2;
  v11[3] = &unk_278775AE8;
  v12 = v5;
  v13 = *(a1 + 48);
  v10 = v5;
  [v8 fetchEventBundlesWithPredicate:v6 withContext:v9 andHandler:v11];
}

void __58__MOPromptManager_fetchEventBundlesWithPredicate_handler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ((*(*(a1 + 32) + 16))())
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, v5, v6);
    }
  }

  v8 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_22D8C5000, v8, OS_LOG_TYPE_DEFAULT, "calling fetchEventBundlesWithPredicate completed found %@ bundles", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __58__MOPromptManager_fetchEventBundlesWithPredicate_handler___block_invoke_220(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (BOOL)fetchEventBundlesWithOptions:(id)options handler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  v8 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D8C5000, v8, OS_LOG_TYPE_DEFAULT, "preparing fetchEventBundlesWithOptions", buf, 2u);
  }

  *buf = 0;
  v22 = buf;
  v23 = 0x2020000000;
  v24 = 0;
  connectionManager = self->connectionManager;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__MOPromptManager_fetchEventBundlesWithOptions_handler___block_invoke;
  v16[3] = &unk_278775B38;
  v20 = buf;
  v10 = optionsCopy;
  v17 = v10;
  selfCopy = self;
  v19 = handlerCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__MOPromptManager_fetchEventBundlesWithOptions_handler___block_invoke_222;
  v14[3] = &unk_278773648;
  v11 = v19;
  v15 = v11;
  [(MOConnectionManager *)connectionManager callAsyncProxyUsingBlock:v16 onError:v14];
  v12 = self->connectionManager != 0;

  _Block_object_dispose(buf, 8);
  return v12;
}

void __56__MOPromptManager_fetchEventBundlesWithOptions_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 24) + 1;
    *(v8 + 24) = v9;
    *buf = 67109120;
    v21 = v9;
    _os_log_impl(&dword_22D8C5000, v7, OS_LOG_TYPE_DEFAULT, "calling fetchEventBundlesWithOptions (%d)", buf, 8u);
  }

  v10 = *(a1 + 32);
  v11 = [*(a1 + 40) context];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__MOPromptManager_fetchEventBundlesWithOptions_handler___block_invoke_221;
  v16[3] = &unk_278775B10;
  v18 = v5;
  v19 = *(a1 + 48);
  v15 = *(a1 + 32);
  v12 = v15.i64[0];
  v17 = vextq_s8(v15, v15, 8uLL);
  v13 = v5;
  [v6 fetchEventBundlesWithOptions:v10 withContext:v11 andHandler:v16];

  v14 = *MEMORY[0x277D85DE8];
}

void __56__MOPromptManager_fetchEventBundlesWithOptions_handler___block_invoke_221(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ((*(*(a1 + 48) + 16))() && *(a1 + 56))
  {
    [*(a1 + 32) _buildMetadataAndLabelsForBundles:v5 withOptions:*(a1 + 40)];
    (*(*(a1 + 56) + 16))();
  }

  v7 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_22D8C5000, v7, OS_LOG_TYPE_DEFAULT, "calling fetchEventBundlesWithOptions completed found %@ events", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __56__MOPromptManager_fetchEventBundlesWithOptions_handler___block_invoke_222(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)localizeEventBundles:(id)bundles
{
  bundlesCopy = bundles;
  v5 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22D8C5000, v5, OS_LOG_TYPE_DEFAULT, "calling localizeEventBundles", v6, 2u);
  }

  [(MOPromptManager *)self buildLabelsForEventBundles:bundlesCopy];
}

- (void)fetchEventBundlesWithAllowedSourceTypes:(id)types dateInterval:(id)interval ascending:(BOOL)ascending limit:(id)limit respectOnboardingDates:(BOOL)dates handler:(id)handler
{
  typesCopy = types;
  intervalCopy = interval;
  limitCopy = limit;
  handlerCopy = handler;
  v18 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D8C5000, v18, OS_LOG_TYPE_DEFAULT, "calling fetchEventBundlesWithOption with source type & onboarding filtering", buf, 2u);
  }

  connectionManager = self->connectionManager;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __119__MOPromptManager_fetchEventBundlesWithAllowedSourceTypes_dateInterval_ascending_limit_respectOnboardingDates_handler___block_invoke;
  v26[3] = &unk_278775B88;
  ascendingCopy = ascending;
  v27 = intervalCopy;
  v28 = limitCopy;
  selfCopy = self;
  v30 = typesCopy;
  v31 = handlerCopy;
  datesCopy = dates;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __119__MOPromptManager_fetchEventBundlesWithAllowedSourceTypes_dateInterval_ascending_limit_respectOnboardingDates_handler___block_invoke_225;
  v24[3] = &unk_278773648;
  v25 = v31;
  v20 = v31;
  v21 = typesCopy;
  v22 = limitCopy;
  v23 = intervalCopy;
  [(MOConnectionManager *)connectionManager callAsyncProxyUsingBlock:v26 onError:v24];
}

void __119__MOPromptManager_fetchEventBundlesWithAllowedSourceTypes_dateInterval_ascending_limit_respectOnboardingDates_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[MOEventBundleFetchOptions alloc] initWithAllowedCategories:0 dateInterval:*(a1 + 32) ascending:*(a1 + 72) limit:*(a1 + 40) includeDeletedBundles:0 skipRanking:0];
  v8 = [*(a1 + 48) context];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __119__MOPromptManager_fetchEventBundlesWithAllowedSourceTypes_dateInterval_ascending_limit_respectOnboardingDates_handler___block_invoke_2;
  v12[3] = &unk_278775B60;
  v15 = v5;
  v16 = *(a1 + 64);
  v9 = *(a1 + 56);
  v17 = *(a1 + 73);
  v10 = *(a1 + 48);
  v13 = v9;
  v14 = v10;
  v11 = v5;
  [v6 fetchEventBundlesWithOptions:v7 withContext:v8 andHandler:v12];
}

void __119__MOPromptManager_fetchEventBundlesWithAllowedSourceTypes_dateInterval_ascending_limit_respectOnboardingDates_handler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ((*(*(a1 + 48) + 16))() && *(a1 + 56))
  {
    v7 = [MOEventBundleProcessor trimmedFrom:v5 with:*(a1 + 32) respectOnboardingDate:*(a1 + 64) shouldUseStandardSuite:1];
    [*(a1 + 40) buildLabelsForEventBundles:v7];
    (*(*(a1 + 56) + 16))();
  }

  v8 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_22D8C5000, v8, OS_LOG_TYPE_DEFAULT, "calling fetchEventBundlesWithOption completed found %@ eventBundles", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __119__MOPromptManager_fetchEventBundlesWithAllowedSourceTypes_dateInterval_ascending_limit_respectOnboardingDates_handler___block_invoke_225(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)fetchEventBundlesWithAllowedSourceTypes:(id)types dateInterval:(id)interval ascending:(BOOL)ascending limit:(id)limit respectOnboardingDates:(BOOL)dates respectLearnFromThisApp:(BOOL)app handler:(id)handler
{
  typesCopy = types;
  intervalCopy = interval;
  limitCopy = limit;
  handlerCopy = handler;
  v19 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D8C5000, v19, OS_LOG_TYPE_DEFAULT, "calling fetchEventBundlesWithOption with source type & onboarding filtering", buf, 2u);
  }

  connectionManager = self->connectionManager;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __143__MOPromptManager_fetchEventBundlesWithAllowedSourceTypes_dateInterval_ascending_limit_respectOnboardingDates_respectLearnFromThisApp_handler___block_invoke;
  v27[3] = &unk_278775BD8;
  ascendingCopy = ascending;
  v28 = intervalCopy;
  v29 = limitCopy;
  selfCopy = self;
  v31 = typesCopy;
  v32 = handlerCopy;
  datesCopy = dates;
  appCopy = app;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __143__MOPromptManager_fetchEventBundlesWithAllowedSourceTypes_dateInterval_ascending_limit_respectOnboardingDates_respectLearnFromThisApp_handler___block_invoke_227;
  v25[3] = &unk_278773648;
  v26 = v32;
  v21 = v32;
  v22 = typesCopy;
  v23 = limitCopy;
  v24 = intervalCopy;
  [(MOConnectionManager *)connectionManager callAsyncProxyUsingBlock:v27 onError:v25];
}

void __143__MOPromptManager_fetchEventBundlesWithAllowedSourceTypes_dateInterval_ascending_limit_respectOnboardingDates_respectLearnFromThisApp_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[MOEventBundleFetchOptions alloc] initWithAllowedCategories:0 dateInterval:*(a1 + 32) ascending:*(a1 + 72) limit:*(a1 + 40) includeDeletedBundles:0 skipRanking:0];
  v8 = [*(a1 + 48) context];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __143__MOPromptManager_fetchEventBundlesWithAllowedSourceTypes_dateInterval_ascending_limit_respectOnboardingDates_respectLearnFromThisApp_handler___block_invoke_2;
  v12[3] = &unk_278775BB0;
  v15 = v5;
  v16 = *(a1 + 64);
  v9 = *(a1 + 56);
  v17 = *(a1 + 73);
  v10 = *(a1 + 48);
  v13 = v9;
  v14 = v10;
  v11 = v5;
  [v6 fetchEventBundlesWithOptions:v7 withContext:v8 andHandler:v12];
}

void __143__MOPromptManager_fetchEventBundlesWithAllowedSourceTypes_dateInterval_ascending_limit_respectOnboardingDates_respectLearnFromThisApp_handler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ((*(*(a1 + 48) + 16))() && *(a1 + 56))
  {
    v7 = [MOEventBundleProcessor trimmedFrom:v5 with:*(a1 + 32) respectOnboardingDate:*(a1 + 64) shouldUseStandardSuite:1];
    if (*(a1 + 65) == 1)
    {
      v8 = [MOEventBundleProcessor approvedForLearnFromThisApp:v7];
    }

    else
    {
      v9 = [MOEventBundleProcessorResult alloc];
      v10 = objc_opt_new();
      v11 = objc_opt_new();
      v8 = [(MOEventBundleProcessorResult *)v9 init:v7 sourceAppBundleIds:v10 removedAppBundleIds:v11];
    }

    v12 = *(a1 + 40);
    v13 = [v8 processedBundles];
    [v12 buildLabelsForEventBundles:v13];

    (*(*(a1 + 56) + 16))();
  }

  v14 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
    v17 = 138412290;
    v18 = v15;
    _os_log_impl(&dword_22D8C5000, v14, OS_LOG_TYPE_DEFAULT, "calling fetchEventBundlesWithOption completed found %@ eventBundles", &v17, 0xCu);
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __143__MOPromptManager_fetchEventBundlesWithAllowedSourceTypes_dateInterval_ascending_limit_respectOnboardingDates_respectLearnFromThisApp_handler___block_invoke_227(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (BOOL)_purgeEventsWithHandler:(id)handler
{
  handlerCopy = handler;
  connectionManager = self->connectionManager;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__MOPromptManager__purgeEventsWithHandler___block_invoke;
  v10[3] = &unk_278775C00;
  v10[4] = self;
  v11 = handlerCopy;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__MOPromptManager__purgeEventsWithHandler___block_invoke_238;
  v8[3] = &unk_278773648;
  v9 = v11;
  v6 = v11;
  [(MOConnectionManager *)connectionManager callAsyncProxyUsingBlock:v10 onError:v8];
  LOBYTE(self) = self->connectionManager != 0;

  return self;
}

void __43__MOPromptManager__purgeEventsWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 context];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__MOPromptManager__purgeEventsWithHandler___block_invoke_2;
  v10[3] = &unk_278775A98;
  v11 = v5;
  v12 = *(a1 + 40);
  v9 = v5;
  [v7 purgeEventsWithContext:v8 andRefreshVariant:0xFFFFLL andHandler:v10];
}

void __43__MOPromptManager__purgeEventsWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }
  }

  v5 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22D8C5000, v5, OS_LOG_TYPE_DEFAULT, "calling purgeEventsWithContext completed", v6, 2u);
  }
}

uint64_t __43__MOPromptManager__purgeEventsWithHandler___block_invoke_238(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)clearEventsWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D8C5000, v5, OS_LOG_TYPE_DEFAULT, "calling clearEventsWithContext", buf, 2u);
  }

  connectionManager = self->connectionManager;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __42__MOPromptManager_clearEventsWithHandler___block_invoke;
  v12[3] = &unk_278775C00;
  v12[4] = self;
  v13 = handlerCopy;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__MOPromptManager_clearEventsWithHandler___block_invoke_239;
  v10[3] = &unk_278773648;
  v11 = v13;
  v7 = v13;
  [(MOConnectionManager *)connectionManager callAsyncProxyUsingBlock:v12 onError:v10];
  v8 = self->connectionManager != 0;

  return v8;
}

void __42__MOPromptManager_clearEventsWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 context];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__MOPromptManager_clearEventsWithHandler___block_invoke_2;
  v11[3] = &unk_278775C28;
  v9 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v5;
  v13 = v9;
  v10 = v5;
  [v7 clearEventsWithContext:v8 andRefreshVariant:0xFFFFLL andHandler:v11];
}

void __42__MOPromptManager_clearEventsWithHandler___block_invoke_2(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D8C5000, v2, OS_LOG_TYPE_DEFAULT, "calling purgeEventsWithContext", buf, 2u);
  }

  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) _purgeEventsWithHandler:*(a1 + 48)];
  }

  v3 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22D8C5000, v3, OS_LOG_TYPE_DEFAULT, "calling clearEventsWithContext completed", v4, 2u);
  }
}

uint64_t __42__MOPromptManager_clearEventsWithHandler___block_invoke_239(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)collectEventsWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D8C5000, v5, OS_LOG_TYPE_DEFAULT, "calling collectEventsWithContext", buf, 2u);
  }

  connectionManager = self->connectionManager;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__MOPromptManager_collectEventsWithHandler___block_invoke;
  v12[3] = &unk_278775C00;
  v12[4] = self;
  v13 = handlerCopy;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__MOPromptManager_collectEventsWithHandler___block_invoke_240;
  v10[3] = &unk_278773648;
  v11 = v13;
  v7 = v13;
  [(MOConnectionManager *)connectionManager callAsyncProxyUsingBlock:v12 onError:v10];
  v8 = self->connectionManager != 0;

  return v8;
}

void __44__MOPromptManager_collectEventsWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 context];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__MOPromptManager_collectEventsWithHandler___block_invoke_2;
  v10[3] = &unk_278775A98;
  v11 = v5;
  v12 = *(a1 + 40);
  v9 = v5;
  [v7 collectEventsWithContext:v8 andRefreshVariant:768 andHandler:v10];
}

void __44__MOPromptManager_collectEventsWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }
  }

  v5 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22D8C5000, v5, OS_LOG_TYPE_DEFAULT, "calling collectEventsWithContext completed", v6, 2u);
  }
}

uint64_t __44__MOPromptManager_collectEventsWithHandler___block_invoke_240(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)bundleEventsWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D8C5000, v5, OS_LOG_TYPE_DEFAULT, "calling bundleEventsWithContext", buf, 2u);
  }

  connectionManager = self->connectionManager;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43__MOPromptManager_bundleEventsWithHandler___block_invoke;
  v12[3] = &unk_278775C00;
  v12[4] = self;
  v13 = handlerCopy;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__MOPromptManager_bundleEventsWithHandler___block_invoke_241;
  v10[3] = &unk_278773648;
  v11 = v13;
  v7 = v13;
  [(MOConnectionManager *)connectionManager callAsyncProxyUsingBlock:v12 onError:v10];
  v8 = self->connectionManager != 0;

  return v8;
}

void __43__MOPromptManager_bundleEventsWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 context];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__MOPromptManager_bundleEventsWithHandler___block_invoke_2;
  v10[3] = &unk_278775A98;
  v11 = v5;
  v12 = *(a1 + 40);
  v9 = v5;
  [v7 bundleEventsWithContext:v8 andRefreshVariant:768 andHandler:v10];
}

void __43__MOPromptManager_bundleEventsWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }
  }

  v5 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22D8C5000, v5, OS_LOG_TYPE_DEFAULT, "calling bundleEventsWithContext completed", v6, 2u);
  }
}

uint64_t __43__MOPromptManager_bundleEventsWithHandler___block_invoke_241(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)purgeEventsWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D8C5000, v5, OS_LOG_TYPE_DEFAULT, "calling purgeEventsWithContext", buf, 2u);
  }

  connectionManager = self->connectionManager;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __42__MOPromptManager_purgeEventsWithHandler___block_invoke;
  v12[3] = &unk_278775C00;
  v12[4] = self;
  v13 = handlerCopy;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__MOPromptManager_purgeEventsWithHandler___block_invoke_242;
  v10[3] = &unk_278773648;
  v11 = v13;
  v7 = v13;
  [(MOConnectionManager *)connectionManager callAsyncProxyUsingBlock:v12 onError:v10];
  v8 = self->connectionManager != 0;

  return v8;
}

void __42__MOPromptManager_purgeEventsWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 context];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__MOPromptManager_purgeEventsWithHandler___block_invoke_2;
  v10[3] = &unk_278775A98;
  v11 = v5;
  v12 = *(a1 + 40);
  v9 = v5;
  [v7 purgeEventsWithContext:v8 andRefreshVariant:768 andHandler:v10];
}

void __42__MOPromptManager_purgeEventsWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }
  }

  v5 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22D8C5000, v5, OS_LOG_TYPE_DEFAULT, "calling purgeEventsWithContext completed", v6, 2u);
  }
}

uint64_t __42__MOPromptManager_purgeEventsWithHandler___block_invoke_242(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)runAnalyticsWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D8C5000, v5, OS_LOG_TYPE_DEFAULT, "calling runAnalyticsWithContext", buf, 2u);
  }

  connectionManager = self->connectionManager;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43__MOPromptManager_runAnalyticsWithHandler___block_invoke;
  v12[3] = &unk_278775C00;
  v12[4] = self;
  v13 = handlerCopy;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__MOPromptManager_runAnalyticsWithHandler___block_invoke_243;
  v10[3] = &unk_278773648;
  v11 = v13;
  v7 = v13;
  [(MOConnectionManager *)connectionManager callAsyncProxyUsingBlock:v12 onError:v10];
  v8 = self->connectionManager != 0;

  return v8;
}

void __43__MOPromptManager_runAnalyticsWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 context];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__MOPromptManager_runAnalyticsWithHandler___block_invoke_2;
  v10[3] = &unk_278775A98;
  v11 = v5;
  v12 = *(a1 + 40);
  v9 = v5;
  [v7 runAnalyticsWithContext:v8 andRefreshVariant:768 andHandler:v10];
}

void __43__MOPromptManager_runAnalyticsWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }
  }

  v5 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22D8C5000, v5, OS_LOG_TYPE_DEFAULT, "calling runAnalyticsWithContext completed", v6, 2u);
  }
}

uint64_t __43__MOPromptManager_runAnalyticsWithHandler___block_invoke_243(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)analyzeTrendsInEvents:(id)events handler:(id)handler
{
  eventsCopy = events;
  handlerCopy = handler;
  v8 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D8C5000, v8, OS_LOG_TYPE_DEFAULT, "calling analyzeTrendsInEvents", buf, 2u);
  }

  connectionManager = self->connectionManager;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __49__MOPromptManager_analyzeTrendsInEvents_handler___block_invoke;
  v16[3] = &unk_278775AC0;
  v17 = eventsCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__MOPromptManager_analyzeTrendsInEvents_handler___block_invoke_244;
  v14[3] = &unk_278773648;
  v15 = v19;
  v10 = v19;
  v11 = eventsCopy;
  [(MOConnectionManager *)connectionManager callAsyncProxyUsingBlock:v16 onError:v14];
  v12 = self->connectionManager != 0;

  return v12;
}

void __49__MOPromptManager_analyzeTrendsInEvents_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = a2;
  v9 = [v7 context];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__MOPromptManager_analyzeTrendsInEvents_handler___block_invoke_2;
  v11[3] = &unk_278775AE8;
  v12 = v5;
  v13 = *(a1 + 48);
  v10 = v5;
  [v8 analyzeTrendsInEvents:v6 withContext:v9 andRefreshVariant:768 andHandler:v11];
}

void __49__MOPromptManager_analyzeTrendsInEvents_handler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ((*(*(a1 + 32) + 16))())
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, v5, v6);
    }
  }

  v8 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_22D8C5000, v8, OS_LOG_TYPE_DEFAULT, "calling analyzeTrendsInEvents compeleted", v9, 2u);
  }
}

uint64_t __49__MOPromptManager_analyzeTrendsInEvents_handler___block_invoke_244(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (BOOL)refreshEventsWithRefreshVariant:(unint64_t)variant andHandler:(id)handler
{
  handlerCopy = handler;
  v7 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D8C5000, v7, OS_LOG_TYPE_DEFAULT, "calling refreshEventsWithRefreshVariant", buf, 2u);
  }

  connectionManager = self->connectionManager;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__MOPromptManager_refreshEventsWithRefreshVariant_andHandler___block_invoke;
  v14[3] = &unk_278775C50;
  v14[4] = self;
  variantCopy = variant;
  v15 = handlerCopy;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__MOPromptManager_refreshEventsWithRefreshVariant_andHandler___block_invoke_245;
  v12[3] = &unk_278773648;
  v13 = v15;
  v9 = v15;
  [(MOConnectionManager *)connectionManager callAsyncProxyUsingBlock:v14 onError:v12];
  v10 = self->connectionManager != 0;

  return v10;
}

void __62__MOPromptManager_refreshEventsWithRefreshVariant_andHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 context];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__MOPromptManager_refreshEventsWithRefreshVariant_andHandler___block_invoke_2;
  v11[3] = &unk_278775A98;
  v12 = v5;
  v9 = *(a1 + 48);
  v13 = *(a1 + 40);
  v10 = v5;
  [v7 refreshEventsWithContext:v8 andRefreshVariant:v9 andHandler:v11];
}

void __62__MOPromptManager_refreshEventsWithRefreshVariant_andHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }
  }

  v5 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22D8C5000, v5, OS_LOG_TYPE_DEFAULT, "calling refreshEventsWithRefreshVariant completed", v6, 2u);
  }
}

uint64_t __62__MOPromptManager_refreshEventsWithRefreshVariant_andHandler___block_invoke_245(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)softRefreshEventsWithRefreshVariant:(unint64_t)variant andIgnoreLastTrigger:(BOOL)trigger andHandler:(id)handler
{
  handlerCopy = handler;
  v9 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D8C5000, v9, OS_LOG_TYPE_DEFAULT, "calling softRefreshEventsWithRefreshVariant", buf, 2u);
  }

  connectionManager = self->connectionManager;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __87__MOPromptManager_softRefreshEventsWithRefreshVariant_andIgnoreLastTrigger_andHandler___block_invoke;
  v16[3] = &unk_278775C78;
  v16[4] = self;
  variantCopy = variant;
  triggerCopy = trigger;
  v17 = handlerCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __87__MOPromptManager_softRefreshEventsWithRefreshVariant_andIgnoreLastTrigger_andHandler___block_invoke_246;
  v14[3] = &unk_278773648;
  v15 = v17;
  v11 = v17;
  [(MOConnectionManager *)connectionManager callAsyncProxyUsingBlock:v16 onError:v14];
  v12 = self->connectionManager != 0;

  return v12;
}

void __87__MOPromptManager_softRefreshEventsWithRefreshVariant_andIgnoreLastTrigger_andHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 context];
  v9 = *(a1 + 56);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __87__MOPromptManager_softRefreshEventsWithRefreshVariant_andIgnoreLastTrigger_andHandler___block_invoke_2;
  v12[3] = &unk_278775A98;
  v13 = v5;
  v10 = *(a1 + 48);
  v14 = *(a1 + 40);
  v11 = v5;
  [v7 softRefreshEventsWithContext:v8 andRefreshVariant:v10 andIgnoreLastTrigger:v9 andHandler:v12];
}

void __87__MOPromptManager_softRefreshEventsWithRefreshVariant_andIgnoreLastTrigger_andHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }
  }

  v5 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22D8C5000, v5, OS_LOG_TYPE_DEFAULT, "calling softRefreshEventsWithRefreshVariant completed", v6, 2u);
  }
}

uint64_t __87__MOPromptManager_softRefreshEventsWithRefreshVariant_andIgnoreLastTrigger_andHandler___block_invoke_246(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)uploadFeedbackWithDBStateToServer:(id)server handler:(id)handler
{
  serverCopy = server;
  handlerCopy = handler;
  v8 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D8C5000, v8, OS_LOG_TYPE_DEFAULT, "calling dataDumpAndUploadWithFeedback", buf, 2u);
  }

  connectionManager = self->connectionManager;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__MOPromptManager_uploadFeedbackWithDBStateToServer_handler___block_invoke;
  v16[3] = &unk_278775C00;
  v17 = serverCopy;
  v18 = handlerCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__MOPromptManager_uploadFeedbackWithDBStateToServer_handler___block_invoke_248;
  v14[3] = &unk_278773648;
  v15 = v18;
  v10 = v18;
  v11 = serverCopy;
  [(MOConnectionManager *)connectionManager callAsyncProxyUsingBlock:v16 onError:v14];
  v12 = self->connectionManager != 0;

  return v12;
}

void __61__MOPromptManager_uploadFeedbackWithDBStateToServer_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__MOPromptManager_uploadFeedbackWithDBStateToServer_handler___block_invoke_2;
  v8[3] = &unk_2787735F8;
  v9 = v5;
  v6 = *(a1 + 32);
  v10 = *(a1 + 40);
  v7 = v5;
  [a2 checkElegibilityAndRequestDataExportForTrigger:5 withFeedback:v6 requestUpload:1 reply:v8];
}

void __61__MOPromptManager_uploadFeedbackWithDBStateToServer_handler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ((*(*(a1 + 32) + 16))())
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, v4);
    }
  }

  v6 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_22D8C5000, v6, OS_LOG_TYPE_DEFAULT, "calling dataDumpAndUploadWithFeedback completed", v7, 2u);
  }
}

uint64_t __61__MOPromptManager_uploadFeedbackWithDBStateToServer_handler___block_invoke_248(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_buildMetadataOnlyForEventBundles:(id)bundles
{
  v26 = *MEMORY[0x277D85DE8];
  bundlesCopy = bundles;
  v4 = objc_autoreleasePoolPush();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = bundlesCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [MOEventBundleMetaDataUtility buildMetaDataForEventBundle:v11, v17];
        [v11 setMetaData:v12];

        metaData = [v11 metaData];
        if ([metaData count])
        {
          ++v8;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v14 = _mo_log_facility_get_os_log(MOLogFacilityFramework);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v5 count];
    *buf = 134218240;
    v22 = v8;
    v23 = 2048;
    v24 = v15;
    _os_log_impl(&dword_22D8C5000, v14, OS_LOG_TYPE_DEFAULT, "build metadata only, count, %lu, of, %lu", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)buildLabelsForEventBundles:(id)bundles
{
  v78 = *MEMORY[0x277D85DE8];
  bundlesCopy = bundles;
  context = objc_autoreleasePoolPush();
  v51 = objc_alloc_init(MOEventBundleLabelFormatter);
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = bundlesCopy;
  v59 = [obj countByEnumeratingWithState:&v64 objects:v77 count:16];
  if (v59)
  {
    v58 = *v65;
    do
    {
      for (i = 0; i != v59; ++i)
      {
        if (*v65 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v64 + 1) + 8 * i);
        if ([v5 bundleSuperType] == 11)
        {
          [v5 setLabels:&unk_284100678];
          v6 = objc_opt_new();
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          resources = [v5 resources];
          v8 = [resources countByEnumeratingWithState:&v60 objects:v76 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v61;
            do
            {
              for (j = 0; j != v9; ++j)
              {
                if (*v61 != v10)
                {
                  objc_enumerationMutation(resources);
                }

                v12 = *(*(&v60 + 1) + 8 * j);
                name = [v12 name];

                if (name)
                {
                  name2 = [v12 name];
                  [v6 addObject:name2];
                }
              }

              v9 = [resources countByEnumeratingWithState:&v60 objects:v76 count:16];
            }

            while (v9);
          }

          [v5 setPromptLanguages:v6];
          v15 = _mo_log_facility_get_os_log(MOLogFacilityFramework);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            labels = [v5 labels];
            v52 = [labels count];
            labels2 = [v5 labels];
            firstObject = [labels2 firstObject];
            mask = [firstObject mask];
            promptLanguages = [v5 promptLanguages];
            v19 = [promptLanguages count];
            promptLanguages2 = [v5 promptLanguages];
            firstObject2 = [promptLanguages2 firstObject];
            mask2 = [firstObject2 mask];
            *buf = 134218754;
            v69 = v52;
            v70 = 2112;
            v71 = mask;
            v72 = 2048;
            v73 = v19;
            v74 = 2112;
            v75 = mask2;
            _os_log_impl(&dword_22D8C5000, v15, OS_LOG_TYPE_INFO, "build labels, labels, %lu, label, %@, prompts, %lu, prompt, %@", buf, 0x2Au);
          }
        }

        else
        {
          v23 = [MOEventBundleMetaDataUtility buildMetaDataForEventBundle:v5];
          [v5 setMetaData:v23];

          metaData = [v5 metaData];

          v25 = _mo_log_facility_get_os_log(MOLogFacilityFramework);
          v6 = v25;
          if (metaData)
          {
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              getBundleType = [v5 getBundleType];
              *buf = 138412546;
              v69 = getBundleType;
              v70 = 2112;
              v71 = v5;
              _os_log_impl(&dword_22D8C5000, v6, OS_LOG_TYPE_INFO, "build labels, bundleType, %@, event bundle, %@", buf, 0x16u);
            }

            v27 = _mo_log_facility_get_os_log(MOLogFacilityFramework);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              metaData2 = [v5 metaData];
              allKeys = [metaData2 allKeys];
              *buf = 138412290;
              v69 = allKeys;
              _os_log_impl(&dword_22D8C5000, v27, OS_LOG_TYPE_INFO, "build labels, meta data, %@", buf, 0xCu);
            }

            metaData3 = [v5 metaData];
            getBundleType2 = [v5 getBundleType];
            v32 = [(MOEventBundleLabelFormatter *)v51 formattedBundleLabelsForMetaData:metaData3 bundleType:getBundleType2];
            [v5 setLabels:v32];

            metaData4 = [v5 metaData];
            getBundleType3 = [v5 getBundleType];
            v35 = [(MOEventBundleLabelFormatter *)v51 formattedBundlePromptsForMetaData:metaData4 bundleType:getBundleType3];
            [v5 setPromptLanguages:v35];

            labels3 = [v5 labels];
            v37 = [labels3 count];

            if (v37)
            {
              labels4 = [v5 labels];
              firstObject3 = [labels4 firstObject];
              [v5 setPromptLanguage:firstObject3];
            }

            v6 = _mo_log_facility_get_os_log(MOLogFacilityFramework);
            if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
            {
              labels5 = [v5 labels];
              v40 = [labels5 count];
              labels6 = [v5 labels];
              firstObject4 = [labels6 firstObject];
              mask3 = [firstObject4 mask];
              promptLanguages3 = [v5 promptLanguages];
              v44 = [promptLanguages3 count];
              promptLanguages4 = [v5 promptLanguages];
              firstObject5 = [promptLanguages4 firstObject];
              mask4 = [firstObject5 mask];
              *buf = 134218754;
              v69 = v40;
              v70 = 2112;
              v71 = mask3;
              v72 = 2048;
              v73 = v44;
              v74 = 2112;
              v75 = mask4;
              _os_log_impl(&dword_22D8C5000, v6, OS_LOG_TYPE_INFO, "build labels, labels, %lu, label, %@, prompts, %lu, prompt, %@", buf, 0x2Au);
            }
          }

          else if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            getBundleType4 = [v5 getBundleType];
            *buf = 138412546;
            v69 = v5;
            v70 = 2112;
            v71 = getBundleType4;
            _os_log_error_impl(&dword_22D8C5000, v6, OS_LOG_TYPE_ERROR, "build labels, nil meta data, event bundle, %@, bundleType, %@", buf, 0x16u);
          }
        }
      }

      v59 = [obj countByEnumeratingWithState:&v64 objects:v77 count:16];
    }

    while (v59);
  }

  objc_autoreleasePoolPop(context);
  v49 = *MEMORY[0x277D85DE8];
}

- (void)printEvergreenBundlesWithSeed:(unint64_t)seed handler:(id)handler
{
  handlerCopy = handler;
  v7 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D8C5000, v7, OS_LOG_TYPE_DEFAULT, "calling printEvergreenBundlesWithSeed:handler", buf, 2u);
  }

  connectionManager = self->connectionManager;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__MOPromptManager_printEvergreenBundlesWithSeed_handler___block_invoke;
  v12[3] = &unk_278775CC8;
  seedCopy = seed;
  v12[4] = self;
  v13 = handlerCopy;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__MOPromptManager_printEvergreenBundlesWithSeed_handler___block_invoke_255;
  v10[3] = &unk_278773648;
  v11 = v13;
  v9 = v13;
  [(MOConnectionManager *)connectionManager callAsyncProxyUsingBlock:v12 onError:v10];
}

void __57__MOPromptManager_printEvergreenBundlesWithSeed_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__MOPromptManager_printEvergreenBundlesWithSeed_handler___block_invoke_2;
  v10[3] = &unk_278775CA0;
  v11 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v12 = v7;
  v10[4] = v8;
  v9 = v5;
  [a2 printEvergreenBundlesWithSeed:v6 handler:v10];
}

void __57__MOPromptManager_printEvergreenBundlesWithSeed_handler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_22D8C5000, v7, OS_LOG_TYPE_DEFAULT, "calling printEvergreenBundlesWithSeed:handler completed", v8, 2u);
  }

  if ((*(*(a1 + 40) + 16))() && *(a1 + 48))
  {
    [*(a1 + 32) buildLabelsForEventBundles:v5];
    (*(*(a1 + 48) + 16))();
  }
}

uint64_t __57__MOPromptManager_printEvergreenBundlesWithSeed_handler___block_invoke_255(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (BOOL)getDiagnosticReporterConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __54__MOPromptManager_getDiagnosticReporterConfiguration___block_invoke;
  v18[3] = &unk_278775CF0;
  v20 = &v21;
  v5 = configurationCopy;
  v19 = v5;
  v6 = MEMORY[0x2318D5790](v18);
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  connectionManager = self->connectionManager;
  getSyncProxyProvider = [(MOConnectionManager *)connectionManager getSyncProxyProvider];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__MOPromptManager_getDiagnosticReporterConfiguration___block_invoke_2;
  v13[3] = &unk_278775D40;
  v15 = v16;
  v14 = v6;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__MOPromptManager_getDiagnosticReporterConfiguration___block_invoke_258;
  v11[3] = &unk_278773648;
  v9 = v14;
  v12 = v9;
  [(MOConnectionManager *)connectionManager withProxyProvider:getSyncProxyProvider proxyHandler:v13 onError:v11];

  LOBYTE(getSyncProxyProvider) = *(v22 + 24);
  _Block_object_dispose(v16, 8);

  _Block_object_dispose(&v21, 8);
  return (getSyncProxyProvider & 1) == 0;
}

void __54__MOPromptManager_getDiagnosticReporterConfiguration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(*(a1 + 40) + 8);
  if (*(v6 + 24) == 1)
  {
    *(v6 + 24) = 0;
    v7 = *(a1 + 32);
    if (v7)
    {
      (*(v7 + 16))(v7, v8, v5);
    }
  }
}

void __54__MOPromptManager_getDiagnosticReporterConfiguration___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 24) + 1;
    *(v5 + 24) = v6;
    *buf = 67109120;
    v11 = v6;
    _os_log_impl(&dword_22D8C5000, v4, OS_LOG_TYPE_DEFAULT, "MOPromptManager: calling(%d) getDiagnosticReporterConfiguration:handler", buf, 8u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__MOPromptManager_getDiagnosticReporterConfiguration___block_invoke_256;
  v8[3] = &unk_278775D18;
  v9 = *(a1 + 32);
  [v3 getDiagnosticReporterConfiguration:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __54__MOPromptManager_getDiagnosticReporterConfiguration___block_invoke_256(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_22D8C5000, v7, OS_LOG_TYPE_DEFAULT, "completed: getDiagnosticReporterConfiguration:handler", v8, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)dumpDBStateWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D8C5000, v5, OS_LOG_TYPE_DEFAULT, "calling dataDumpWithFeedback", buf, 2u);
  }

  connectionManager = self->connectionManager;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__MOPromptManager_dumpDBStateWithHandler___block_invoke;
  v10[3] = &unk_278775D68;
  v11 = handlerCopy;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__MOPromptManager_dumpDBStateWithHandler___block_invoke_260;
  v8[3] = &unk_278773648;
  v9 = v11;
  v7 = v11;
  [(MOConnectionManager *)connectionManager callAsyncProxyUsingBlock:v10 onError:v8];
}

void __42__MOPromptManager_dumpDBStateWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__MOPromptManager_dumpDBStateWithHandler___block_invoke_2;
  v7[3] = &unk_2787735F8;
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  [a2 checkElegibilityAndRequestDataExportForTrigger:1 withFeedback:0 requestUpload:0 reply:v7];
}

void __42__MOPromptManager_dumpDBStateWithHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_22D8C5000, v7, OS_LOG_TYPE_DEFAULT, "calling dataDumpWithFeedback completed", v14, 2u);
  }

  if (v5 && ([v5 objectForKeyedSubscript:@"kMODataDumpFilePath"], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [MODataExportResults alloc];
    v10 = [v5 objectForKeyedSubscript:@"kMODataDumpFilePath"];
    v11 = [v5 objectForKeyedSubscript:@"kMODataDumpKVPairs"];
    v12 = [(MODataExportResults *)v9 initWithFilePath:v10 kvPairs:v11];
  }

  else
  {
    v12 = 0;
  }

  if ((*(*(a1 + 32) + 16))())
  {
    v13 = *(a1 + 40);
    if (v13)
    {
      (*(v13 + 16))(v13, v12, v6);
    }
  }
}

uint64_t __42__MOPromptManager_dumpDBStateWithHandler___block_invoke_260(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)getSnapshotDictionaryForAnalyticsWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D8C5000, v5, OS_LOG_TYPE_DEFAULT, "calling getSnapshotDictionaryForAnalyticsWithHandler", buf, 2u);
  }

  connectionManager = self->connectionManager;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__MOPromptManager_getSnapshotDictionaryForAnalyticsWithHandler___block_invoke;
  v10[3] = &unk_278775D68;
  v11 = handlerCopy;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__MOPromptManager_getSnapshotDictionaryForAnalyticsWithHandler___block_invoke_261;
  v8[3] = &unk_278773648;
  v9 = v11;
  v7 = v11;
  [(MOConnectionManager *)connectionManager callAsyncProxyUsingBlock:v10 onError:v8];
}

void __64__MOPromptManager_getSnapshotDictionaryForAnalyticsWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__MOPromptManager_getSnapshotDictionaryForAnalyticsWithHandler___block_invoke_2;
  v7[3] = &unk_2787735F8;
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  [a2 getSnapshotDictionaryForAnalyticsWithHandler:v7];
}

void __64__MOPromptManager_getSnapshotDictionaryForAnalyticsWithHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_22D8C5000, v7, OS_LOG_TYPE_DEFAULT, "calling getSnapshotDictionaryForAnalyticsWithHandler completed", v8, 2u);
  }

  if ((*(*(a1 + 32) + 16))())
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __64__MOPromptManager_getSnapshotDictionaryForAnalyticsWithHandler___block_invoke_261(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (BOOL)testNotificationAnalyticsWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D8C5000, v5, OS_LOG_TYPE_DEFAULT, "calling testNotificationAnalyticsWithHandler", buf, 2u);
  }

  connectionManager = self->connectionManager;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__MOPromptManager_testNotificationAnalyticsWithHandler___block_invoke;
  v11[3] = &unk_278775C00;
  v11[4] = self;
  v12 = handlerCopy;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__MOPromptManager_testNotificationAnalyticsWithHandler___block_invoke_3;
  v9[3] = &unk_278773648;
  v10 = v12;
  v7 = v12;
  [(MOConnectionManager *)connectionManager callAsyncProxyUsingBlock:v11 onError:v9];

  return 1;
}

void __56__MOPromptManager_testNotificationAnalyticsWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 context];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__MOPromptManager_testNotificationAnalyticsWithHandler___block_invoke_2;
  v10[3] = &unk_278775A98;
  v11 = v5;
  v12 = *(a1 + 40);
  v9 = v5;
  [v7 testNotificationAnalyticsWithContext:v8 andHandler:v10];
}

void __56__MOPromptManager_testNotificationAnalyticsWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      (*(v3 + 16))(v3, v4);
    }
  }
}

uint64_t __56__MOPromptManager_testNotificationAnalyticsWithHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)printSettingValue:(id)value withType:(id)type handler:(id)handler
{
  valueCopy = value;
  typeCopy = type;
  handlerCopy = handler;
  v11 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D8C5000, v11, OS_LOG_TYPE_DEFAULT, "calling printSettingValue", buf, 2u);
  }

  connectionManager = self->connectionManager;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __54__MOPromptManager_printSettingValue_withType_handler___block_invoke;
  v20[3] = &unk_278775AC0;
  v21 = valueCopy;
  v22 = typeCopy;
  v23 = handlerCopy;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __54__MOPromptManager_printSettingValue_withType_handler___block_invoke_262;
  v18[3] = &unk_278773648;
  v19 = v23;
  v13 = v23;
  v14 = typeCopy;
  v15 = valueCopy;
  [(MOConnectionManager *)connectionManager callAsyncProxyUsingBlock:v20 onError:v18];
  v16 = self->connectionManager != 0;

  return v16;
}

void __54__MOPromptManager_printSettingValue_withType_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__MOPromptManager_printSettingValue_withType_handler___block_invoke_2;
  v9[3] = &unk_278775A98;
  v10 = v5;
  v11 = *(a1 + 48);
  v8 = v5;
  [a2 printSettingValue:v6 withType:v7 handler:v9];
}

void __54__MOPromptManager_printSettingValue_withType_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }
  }

  v5 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22D8C5000, v5, OS_LOG_TYPE_DEFAULT, "calling printSettingValue completed", v6, 2u);
  }
}

uint64_t __54__MOPromptManager_printSettingValue_withType_handler___block_invoke_262(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)printOnboardingStatusAnalytics:(id)analytics
{
  analyticsCopy = analytics;
  v5 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D8C5000, v5, OS_LOG_TYPE_DEFAULT, "calling printOnboardingStatusAnalytics", buf, 2u);
  }

  connectionManager = self->connectionManager;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__MOPromptManager_printOnboardingStatusAnalytics___block_invoke;
  v10[3] = &unk_278775D68;
  v11 = analyticsCopy;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__MOPromptManager_printOnboardingStatusAnalytics___block_invoke_263;
  v8[3] = &unk_278773648;
  v9 = v11;
  v7 = v11;
  [(MOConnectionManager *)connectionManager callAsyncProxyUsingBlock:v10 onError:v8];
}

void __50__MOPromptManager_printOnboardingStatusAnalytics___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__MOPromptManager_printOnboardingStatusAnalytics___block_invoke_2;
  v7[3] = &unk_278775A98;
  v8 = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  [a2 printOnboardingStatusAnalytics:v7];
}

void __50__MOPromptManager_printOnboardingStatusAnalytics___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22D8C5000, v4, OS_LOG_TYPE_DEFAULT, "calling printOnboardingStatusAnalytics completed", v6, 2u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __50__MOPromptManager_printOnboardingStatusAnalytics___block_invoke_263(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)localizedStringForKey:(id)key
{
  if (key)
  {
    v4 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)localizedString:(id)string withTable:(id)table
{
  if (string)
  {
    v5 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:string withTable:table];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)testMomentsNotificationsWithOptions:(id)options handler:(id)handler
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277CCA5B8];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = @"Test notifications Moments command deprecated and moved to MomentsUI";
  v7 = MEMORY[0x277CBEAC0];
  handlerCopy = handler;
  v9 = [v7 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [v5 errorWithDomain:v6 code:1 userInfo:v9];
  (*(handler + 2))(handlerCopy, v10);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)triggerFeedbackAssistantFlow:(id)flow handler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  handlerCopy = handler;
  v8 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = flowCopy;
    _os_log_impl(&dword_22D8C5000, v8, OS_LOG_TYPE_DEFAULT, "calling triggerFeedbackAssistantFlow:%@", buf, 0xCu);
  }

  connectionManager = self->connectionManager;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__MOPromptManager_triggerFeedbackAssistantFlow_handler___block_invoke;
  v15[3] = &unk_278775C00;
  v16 = flowCopy;
  v17 = handlerCopy;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__MOPromptManager_triggerFeedbackAssistantFlow_handler___block_invoke_268;
  v13[3] = &unk_278773648;
  v14 = v17;
  v10 = v17;
  v11 = flowCopy;
  [(MOConnectionManager *)connectionManager callAsyncProxyUsingBlock:v15 onError:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __56__MOPromptManager_triggerFeedbackAssistantFlow_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__MOPromptManager_triggerFeedbackAssistantFlow_handler___block_invoke_2;
  v8[3] = &unk_278775A98;
  v9 = v5;
  v6 = *(a1 + 32);
  v10 = *(a1 + 40);
  v7 = v5;
  [a2 triggerFeedbackAssistantFlow:v6 handler:v8];
}

void __56__MOPromptManager_triggerFeedbackAssistantFlow_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }
  }

  v5 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22D8C5000, v5, OS_LOG_TYPE_DEFAULT, "calling triggerFeedbackAssistantFlow completed", v6, 2u);
  }
}

uint64_t __56__MOPromptManager_triggerFeedbackAssistantFlow_handler___block_invoke_268(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)generateAvailabilityPredictionsWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D8C5000, v5, OS_LOG_TYPE_DEFAULT, "calling generateAvailabilityPredictionsWithHandler", buf, 2u);
  }

  connectionManager = self->connectionManager;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__MOPromptManager_generateAvailabilityPredictionsWithHandler___block_invoke;
  v10[3] = &unk_278775D68;
  v11 = handlerCopy;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__MOPromptManager_generateAvailabilityPredictionsWithHandler___block_invoke_269;
  v8[3] = &unk_278773648;
  v9 = v11;
  v7 = v11;
  [(MOConnectionManager *)connectionManager callAsyncProxyUsingBlock:v10 onError:v8];
}

void __62__MOPromptManager_generateAvailabilityPredictionsWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__MOPromptManager_generateAvailabilityPredictionsWithHandler___block_invoke_2;
  v7[3] = &unk_278775A98;
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  [a2 generateAvailabilityPredictionsWithHandler:v7];
}

void __62__MOPromptManager_generateAvailabilityPredictionsWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }
  }

  v5 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22D8C5000, v5, OS_LOG_TYPE_DEFAULT, "calling generateAvailabilityPredictionsWithHandler completed", v6, 2u);
  }
}

uint64_t __62__MOPromptManager_generateAvailabilityPredictionsWithHandler___block_invoke_269(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)generateAvailabilityPredictionsAndRegisterTimerWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D8C5000, v5, OS_LOG_TYPE_DEFAULT, "calling generateAvailabilityPredictionsAndRegisterTimerWithHandler", buf, 2u);
  }

  connectionManager = self->connectionManager;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__MOPromptManager_generateAvailabilityPredictionsAndRegisterTimerWithHandler___block_invoke;
  v10[3] = &unk_278775D68;
  v11 = handlerCopy;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__MOPromptManager_generateAvailabilityPredictionsAndRegisterTimerWithHandler___block_invoke_270;
  v8[3] = &unk_278773648;
  v9 = v11;
  v7 = v11;
  [(MOConnectionManager *)connectionManager callAsyncProxyUsingBlock:v10 onError:v8];
}

void __78__MOPromptManager_generateAvailabilityPredictionsAndRegisterTimerWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__MOPromptManager_generateAvailabilityPredictionsAndRegisterTimerWithHandler___block_invoke_2;
  v7[3] = &unk_278775A98;
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  [a2 generateAvailabilityPredictionsAndRegisterTimerWithHandler:v7];
}

void __78__MOPromptManager_generateAvailabilityPredictionsAndRegisterTimerWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }
  }

  v5 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22D8C5000, v5, OS_LOG_TYPE_DEFAULT, "calling generateAvailabilityPredictionsAndRegisterTimerWithHandler completed", v6, 2u);
  }
}

uint64_t __78__MOPromptManager_generateAvailabilityPredictionsAndRegisterTimerWithHandler___block_invoke_270(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setUpNotificationTimerWithFireDate:(id)date
{
  dateCopy = date;
  v5 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D8C5000, v5, OS_LOG_TYPE_DEFAULT, "calling setUpNotificationTimerWithFireDate", buf, 2u);
  }

  connectionManager = self->connectionManager;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__MOPromptManager_setUpNotificationTimerWithFireDate___block_invoke;
  v8[3] = &unk_278775D90;
  v9 = dateCopy;
  v7 = dateCopy;
  [(MOConnectionManager *)connectionManager callSyncProxyUsingBlock:v8 onError:&__block_literal_global_273];
}

void __54__MOPromptManager_setUpNotificationTimerWithFireDate___block_invoke(uint64_t a1, void *a2)
{
  [a2 setUpNotificationTimerWithFireDate:*(a1 + 32)];
  v2 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_22D8C5000, v2, OS_LOG_TYPE_DEFAULT, "calling setUpNotificationTimerWithFireDate completed", v3, 2u);
  }
}

void __54__MOPromptManager_setUpNotificationTimerWithFireDate___block_invoke_271(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __54__MOPromptManager_setUpNotificationTimerWithFireDate___block_invoke_271_cold_1(v2, v3);
  }
}

- (void)fetchEligiblePOICategoriesWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D8C5000, v5, OS_LOG_TYPE_DEFAULT, "calling fetchEligiblePOICategoriesWithHandler", buf, 2u);
  }

  connectionManager = self->connectionManager;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__MOPromptManager_fetchEligiblePOICategoriesWithHandler___block_invoke;
  v10[3] = &unk_278775D68;
  v11 = handlerCopy;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__MOPromptManager_fetchEligiblePOICategoriesWithHandler___block_invoke_274;
  v8[3] = &unk_278773648;
  v9 = v11;
  v7 = v11;
  [(MOConnectionManager *)connectionManager callAsyncProxyUsingBlock:v10 onError:v8];
}

void __57__MOPromptManager_fetchEligiblePOICategoriesWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__MOPromptManager_fetchEligiblePOICategoriesWithHandler___block_invoke_2;
  v7[3] = &unk_278775AE8;
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  [a2 fetchEligiblePOICategoriesWithHandler:v7];
}

void __57__MOPromptManager_fetchEligiblePOICategoriesWithHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ((*(*(a1 + 32) + 16))())
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, v5, v6);
    }
  }

  v8 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_22D8C5000, v8, OS_LOG_TYPE_DEFAULT, "calling fetchEligiblePOICategoriesWithHandler completed", v9, 2u);
  }
}

uint64_t __57__MOPromptManager_fetchEligiblePOICategoriesWithHandler___block_invoke_274(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)acquireBackgroundProcessingPermissionsForMomentsWithHander:(id)hander
{
  handerCopy = hander;
  connectionManager = self->connectionManager;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__MOPromptManager_acquireBackgroundProcessingPermissionsForMomentsWithHander___block_invoke;
  v9[3] = &unk_278775D68;
  v10 = handerCopy;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__MOPromptManager_acquireBackgroundProcessingPermissionsForMomentsWithHander___block_invoke_276;
  v7[3] = &unk_278773648;
  v8 = v10;
  v6 = v10;
  [(MOConnectionManager *)connectionManager callAsyncProxyUsingBlock:v9 onError:v7];
}

void __78__MOPromptManager_acquireBackgroundProcessingPermissionsForMomentsWithHander___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__MOPromptManager_acquireBackgroundProcessingPermissionsForMomentsWithHander___block_invoke_2;
  v7[3] = &unk_278775DB8;
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  [a2 acquireBackgroundProcessingPermissionsForMomentsWithHander:v7];
}

void __78__MOPromptManager_acquireBackgroundProcessingPermissionsForMomentsWithHander___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 + 32) + 16))())
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, a2);
    }
  }

  v5 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22D8C5000, v5, OS_LOG_TYPE_DEFAULT, "calling acquireBackgroundProcessingPermissionsForMoments completed", v6, 2u);
  }
}

uint64_t __78__MOPromptManager_acquireBackgroundProcessingPermissionsForMomentsWithHander___block_invoke_276(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 != 0);
  }

  return result;
}

void __54__MOPromptManager_setUpNotificationTimerWithFireDate___block_invoke_271_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22D8C5000, a2, OS_LOG_TYPE_ERROR, "calling setUpNotificationTimerWithFireDate hit error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end