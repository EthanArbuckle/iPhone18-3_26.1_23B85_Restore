@interface MOOnboardingAndSettingsManager
+ (id)_getKeyNameForSetting:(unint64_t)setting;
+ (id)sharedInstance;
- (BOOL)getStateForSetting:(unint64_t)setting;
- (BOOL)isApplicationUsingDataAccess:(id)access;
- (BOOL)isClientUsingDataAccess:(id)access;
- (MOOnboardingAndSettingsManager)init;
- (id)makeNewConnectionWithInterfaceFor:(id)for;
- (unint64_t)getExtendedOnboardingFlowCompletionStatus;
- (unint64_t)getOnboardingFlowCompletionStatus;
- (unint64_t)getOnboardingFlowRefreshCompletionStatus;
- (void)_getExtendedOnboardingFlowCompletionStatusWithHandler:(id)handler;
- (void)_getOnboardingFlowCompletionStatusWithHandler:(id)handler;
- (void)_getOnboardingFlowRefreshCompletionStatusWithHandler:(id)handler;
- (void)_getStateForSetting:(unint64_t)setting withHandler:(id)handler;
- (void)_getStateForSettingFast:(unint64_t)fast withHandler:(id)handler;
- (void)_updateOnboardingCacheAndNotifyForKey:(id)key andState:(unint64_t)state isComplete:(BOOL)complete;
- (void)getApplicationsWithDataAccess:(id)access;
- (void)getClientsWithDataAccess:(id)access;
- (void)getDiagnosticReporterConfiguration:(id)configuration;
- (void)getOnboardingFlowCompletionStatus;
- (void)getOnboardingFlowRefreshCompletionStatus;
- (void)onEventStreamsUpdated;
- (void)refreshCacheWithExtendedStatusOnly:(BOOL)only;
- (void)registerClientsForDataAccess:(id)access;
- (void)setOnboardingFlowCompletionStatus:(unint64_t)status;
@end

@implementation MOOnboardingAndSettingsManager

- (MOOnboardingAndSettingsManager)init
{
  v3 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25A200000, v3, OS_LOG_TYPE_DEFAULT, "new MOOnboardingAndSettingsManager", buf, 2u);
  }

  v33.receiver = self;
  v33.super_class = MOOnboardingAndSettingsManager;
  v4 = [(MOOnboardingAndSettingsManager *)&v33 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("MOOnboardingAndSettingsManager", v5);
    queue = v4->queue;
    v4->queue = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("MOOnboardingAndSettingsManagerProxy", v8);
    proxyQueue = v4->proxyQueue;
    v4->proxyQueue = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("MOOnboardingAndSettingsManagerCache", v11);
    cacheQueue = v4->cacheQueue;
    v4->cacheQueue = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("MOOnboardingAndSettingsManagerClient", v14);
    clientQueue = v4->clientQueue;
    v4->clientQueue = v15;

    v17 = objc_opt_new();
    stateCache = v4->stateCache;
    v4->stateCache = v17;

    v19 = objc_opt_new();
    settingsManagerDelegate = v4->_settingsManagerDelegate;
    v4->_settingsManagerDelegate = v19;

    v21 = objc_opt_new();
    onboardingManagerDelegate = v4->_onboardingManagerDelegate;
    v4->_onboardingManagerDelegate = v21;

    v23 = [[MODefaultsManager alloc] initWithSuiteName:@"com.apple.momentsd"];
    defaultManager = v4->_defaultManager;
    v4->_defaultManager = v23;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v4, onEventStreamsUpdated_bounce, @"com.apple.momentsd.event-streams-updated", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v26 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v26, v4, onEventStreamsUpdated_bounce, @"com.apple.momentsd.onboarding-status-updated", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v27 = [[MOConnectionManager alloc] initWithName:@"MOOnboardingAndSettingsManager" usingDelegate:v4];
    connectionManager = v4->_connectionManager;
    v4->_connectionManager = v27;

    v29 = +[MODiagnosticReporter defaultReporter];
    [v29 configureWithOnboardingAndSettingsManager:v4];

    v30 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25A200000, v30, OS_LOG_TYPE_DEFAULT, "MOOnboardingAndSettingsManager initiate client", buf, 2u);
    }

    [(MOOnboardingAndSettingsManager *)v4 refreshCache];
    v31 = v4;
  }

  return v4;
}

- (id)makeNewConnectionWithInterfaceFor:(id)for
{
  v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286C13860];
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v3 setClasses:v4 forSelector:sel_getOnboardingFlowCompletionStatusWithHandler_ argumentIndex:0 ofReply:1];

  v5 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v3 setClasses:v5 forSelector:sel_setOnboardingFlowCompletionStatus_ argumentIndex:0 ofReply:0];

  v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v3 setClasses:v6 forSelector:sel_getStateForSetting_withHandler_ argumentIndex:0 ofReply:1];

  v7 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v3 setClasses:v7 forSelector:sel_getStateForSettingFast_withHandler_ argumentIndex:0 ofReply:1];

  v8 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v3 setClasses:v8 forSelector:sel_setState_forSetting_ argumentIndex:0 ofReply:0];

  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  [v3 setClasses:v11 forSelector:sel_getDiagnosticReporterConfiguration_ argumentIndex:0 ofReply:0];

  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v12 setWithObjects:{v13, v14, objc_opt_class(), 0}];
  [v3 setClasses:v15 forSelector:sel_getApplicationsWithDataAccess_ argumentIndex:0 ofReply:0];

  v16 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.momentsd" options:0];
  [v16 setRemoteObjectInterface:v3];

  return v16;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__MOOnboardingAndSettingsManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_shared;

  return v2;
}

uint64_t __48__MOOnboardingAndSettingsManager_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_shared = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (void)onEventStreamsUpdated
{
  v3 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25A200000, v3, OS_LOG_TYPE_DEFAULT, "onEventStreamsUpdated", v4, 2u);
  }

  [(MOOnboardingAndSettingsManager *)self refreshCache];
}

- (void)_updateOnboardingCacheAndNotifyForKey:(id)key andState:(unint64_t)state isComplete:(BOOL)complete
{
  keyCopy = key;
  v9 = [(NSMutableDictionary *)self->stateCache objectForKeyedSubscript:keyCopy];
  if (self->_onboardingManagerDelegate)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
    v11 = v10;
    if (v9)
    {
      v12 = [v10 isEqualToNumber:v9];

      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
      [(NSMutableDictionary *)self->stateCache setObject:v13 forKeyedSubscript:keyCopy];

      if (v12)
      {
        goto LABEL_8;
      }
    }

    else
    {
      [(NSMutableDictionary *)self->stateCache setObject:v10 forKeyedSubscript:keyCopy];
    }

    clientQueue = self->clientQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __92__MOOnboardingAndSettingsManager__updateOnboardingCacheAndNotifyForKey_andState_isComplete___block_invoke;
    block[3] = &unk_27991EAC8;
    block[4] = self;
    block[5] = state;
    completeCopy = complete;
    dispatch_async(clientQueue, block);
  }

  else
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
    [(NSMutableDictionary *)self->stateCache setObject:v14 forKeyedSubscript:keyCopy];
  }

LABEL_8:
}

- (void)refreshCacheWithExtendedStatusOnly:(BOOL)only
{
  queue = self->queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke;
  v4[3] = &unk_27991EB90;
  onlyCopy = only;
  v4[4] = self;
  dispatch_async(queue, v4);
}

void __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke(uint64_t a1)
{
  v149 = *MEMORY[0x277D85DE8];
  v146[0] = 0;
  v146[1] = v146;
  v146[2] = 0x2020000000;
  v146[3] = 4;
  v145[0] = 0;
  v145[1] = v145;
  v145[2] = 0x2020000000;
  v145[3] = 4;
  v143[0] = 0;
  v143[1] = v143;
  v143[2] = 0x2020000000;
  v144 = 0;
  v141[0] = 0;
  v141[1] = v141;
  v141[2] = 0x2020000000;
  v142 = 0;
  v139[0] = 0;
  v139[1] = v139;
  v139[2] = 0x2020000000;
  v140 = 0;
  v137[0] = 0;
  v137[1] = v137;
  v137[2] = 0x2020000000;
  v138 = 0;
  v135[0] = 0;
  v135[1] = v135;
  v135[2] = 0x2020000000;
  v136 = 0;
  v133[0] = 0;
  v133[1] = v133;
  v133[2] = 0x2020000000;
  v134 = 0;
  v131[0] = 0;
  v131[1] = v131;
  v131[2] = 0x2020000000;
  v132 = 0;
  v129[0] = 0;
  v129[1] = v129;
  v129[2] = 0x2020000000;
  v130 = 0;
  v127[0] = 0;
  v127[1] = v127;
  v127[2] = 0x2020000000;
  v128 = 0;
  v125[0] = 0;
  v125[1] = v125;
  v125[2] = 0x2020000000;
  v126 = 0;
  v123[0] = 0;
  v123[1] = v123;
  v123[2] = 0x2020000000;
  v124 = 0;
  v121[0] = 0;
  v121[1] = v121;
  v121[2] = 0x2020000000;
  v122 = 0;
  v119[0] = 0;
  v119[1] = v119;
  v119[2] = 0x3032000000;
  v119[3] = __Block_byref_object_copy_;
  v119[4] = __Block_byref_object_dispose_;
  v120 = 0;
  v117[0] = 0;
  v117[1] = v117;
  v117[2] = 0x3032000000;
  v117[3] = __Block_byref_object_copy_;
  v115 = 0x2020000000;
  v117[4] = __Block_byref_object_dispose_;
  v118 = 0;
  v113 = 0;
  v114 = &v113;
  v116 = 1;
  v2 = 2;
  do
  {
    v3 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v148 = v2;
      _os_log_impl(&dword_25A200000, v3, OS_LOG_TYPE_DEFAULT, "Refreshing cache (%d)", buf, 8u);
    }

    *(v114 + 24) = 1;
    v4 = dispatch_group_create();
    if ((*(a1 + 40) & 1) == 0 && ([MEMORY[0x277D75418] currentDevice], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "userInterfaceIdiom") == 0, v5, v6))
    {
      dispatch_group_enter(v4);
      v13 = *(a1 + 32);
      v109[0] = MEMORY[0x277D85DD0];
      v109[1] = 3221225472;
      v109[2] = __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_2;
      v109[3] = &unk_27991EAF0;
      v110[1] = v146;
      v110[2] = &v113;
      v14 = v4;
      v110[0] = v14;
      [v13 _getOnboardingFlowCompletionStatusWithHandler:v109];
      dispatch_group_enter(v14);
      v15 = *(a1 + 32);
      v105[0] = MEMORY[0x277D85DD0];
      v105[1] = 3221225472;
      v105[2] = __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_3;
      v105[3] = &unk_27991EAF0;
      v107 = v145;
      v108 = &v113;
      v16 = v14;
      v106 = v16;
      [v15 _getOnboardingFlowRefreshCompletionStatusWithHandler:v105];
      dispatch_group_enter(v16);
      v17 = *(a1 + 32);
      v101[0] = MEMORY[0x277D85DD0];
      v101[1] = 3221225472;
      v101[2] = __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_4;
      v101[3] = &unk_27991EB18;
      v103 = v143;
      v104 = &v113;
      v18 = v16;
      v102 = v18;
      [v17 _getStateForSetting:0 withHandler:v101];
      dispatch_group_enter(v18);
      v19 = *(a1 + 32);
      v97[0] = MEMORY[0x277D85DD0];
      v97[1] = 3221225472;
      v97[2] = __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_5;
      v97[3] = &unk_27991EB18;
      v99 = v141;
      v100 = &v113;
      v20 = v18;
      v98 = v20;
      [v19 _getStateForSetting:1 withHandler:v97];
      dispatch_group_enter(v20);
      v21 = *(a1 + 32);
      v93[0] = MEMORY[0x277D85DD0];
      v93[1] = 3221225472;
      v93[2] = __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_6;
      v93[3] = &unk_27991EB18;
      v95 = v139;
      v96 = &v113;
      v22 = v20;
      v94 = v22;
      [v21 _getStateForSetting:2 withHandler:v93];
      dispatch_group_enter(v22);
      v23 = *(a1 + 32);
      v89[0] = MEMORY[0x277D85DD0];
      v89[1] = 3221225472;
      v89[2] = __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_7;
      v89[3] = &unk_27991EB18;
      v91 = v137;
      v92 = &v113;
      v24 = v22;
      v90 = v24;
      [v23 _getStateForSetting:3 withHandler:v89];
      dispatch_group_enter(v24);
      v25 = *(a1 + 32);
      v85[0] = MEMORY[0x277D85DD0];
      v85[1] = 3221225472;
      v85[2] = __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_8;
      v85[3] = &unk_27991EB18;
      v87 = v135;
      v88 = &v113;
      v26 = v24;
      v86 = v26;
      [v25 _getStateForSetting:4 withHandler:v85];
      dispatch_group_enter(v26);
      v27 = *(a1 + 32);
      v81[0] = MEMORY[0x277D85DD0];
      v81[1] = 3221225472;
      v81[2] = __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_9;
      v81[3] = &unk_27991EB18;
      v83 = v133;
      v84 = &v113;
      v28 = v26;
      v82 = v28;
      [v27 _getStateForSettingFast:5 withHandler:v81];
      dispatch_group_enter(v28);
      v29 = *(a1 + 32);
      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 3221225472;
      v77[2] = __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_10;
      v77[3] = &unk_27991EB18;
      v79 = v131;
      v80 = &v113;
      v30 = v28;
      v78 = v30;
      [v29 _getStateForSettingFast:11 withHandler:v77];
      dispatch_group_enter(v30);
      v31 = *(a1 + 32);
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_11;
      v73[3] = &unk_27991EB18;
      v75 = v129;
      v76 = &v113;
      v32 = v30;
      v74 = v32;
      [v31 _getStateForSetting:6 withHandler:v73];
      dispatch_group_enter(v32);
      v33 = *(a1 + 32);
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_12;
      v69[3] = &unk_27991EB18;
      v71 = v123;
      v72 = &v113;
      v34 = v32;
      v70 = v34;
      [v33 _getStateForSetting:7 withHandler:v69];
      dispatch_group_enter(v34);
      v35 = *(a1 + 32);
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_13;
      v65[3] = &unk_27991EB18;
      v67 = v121;
      v68 = &v113;
      v36 = v34;
      v66 = v36;
      [v35 _getStateForSetting:8 withHandler:v65];
      dispatch_group_enter(v36);
      v37 = *(a1 + 32);
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_14;
      v61[3] = &unk_27991EB18;
      v63 = v127;
      v64 = &v113;
      v38 = v36;
      v62 = v38;
      [v37 _getStateForSetting:9 withHandler:v61];
      dispatch_group_enter(v38);
      v39 = *(a1 + 32);
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_15;
      v57[3] = &unk_27991EB18;
      v59 = v125;
      v60 = &v113;
      v40 = v38;
      v58 = v40;
      [v39 _getStateForSetting:10 withHandler:v57];
      dispatch_group_enter(v40);
      v41 = *(a1 + 32);
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_16;
      v53[3] = &unk_27991EB40;
      v55 = v119;
      v56 = &v113;
      v42 = v40;
      v54 = v42;
      [v41 getApplicationsWithDataAccess:v53];
      dispatch_group_enter(v42);
      v43 = *(a1 + 32);
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_17;
      v49[3] = &unk_27991EB40;
      v51 = v117;
      v52 = &v113;
      v50 = v42;
      [v43 getClientsWithDataAccess:v49];

      v8 = v110;
    }

    else
    {
      dispatch_group_enter(v4);
      v7 = *(a1 + 32);
      v111[0] = MEMORY[0x277D85DD0];
      v111[1] = 3221225472;
      v111[2] = __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_130;
      v111[3] = &unk_27991EAF0;
      v112[1] = v146;
      v112[2] = &v113;
      v112[0] = v4;
      [v7 _getExtendedOnboardingFlowCompletionStatusWithHandler:v111];
      v8 = v112;
    }

    v9 = dispatch_time(0, 60000000000);
    v10 = dispatch_group_wait(v4, v9);
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(v114 + 24);
    }

    *(v114 + 24) = v11 & 1;

    if (v114[3])
    {
      break;
    }
  }

  while (v2-- > 1);
  if (*(v114 + 24))
  {
    v44 = *(a1 + 32);
    v45 = *(v44 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_18;
    block[3] = &unk_27991EB68;
    block[4] = v44;
    block[5] = v145;
    block[6] = v146;
    block[7] = v143;
    block[8] = v141;
    block[9] = v139;
    block[10] = v137;
    block[11] = v135;
    block[12] = v133;
    block[13] = v131;
    block[14] = v129;
    block[15] = v123;
    block[16] = v121;
    block[17] = v127;
    block[18] = v125;
    block[19] = v119;
    block[20] = v117;
    dispatch_async(v45, block);
  }

  else
  {
    if (v10)
    {
      v46 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
      {
        __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_cold_1();
      }
    }

    else
    {
      v46 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
      {
        __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_cold_2();
      }
    }
  }

  _Block_object_dispose(&v113, 8);
  _Block_object_dispose(v117, 8);

  _Block_object_dispose(v119, 8);
  _Block_object_dispose(v121, 8);
  _Block_object_dispose(v123, 8);
  _Block_object_dispose(v125, 8);
  _Block_object_dispose(v127, 8);
  _Block_object_dispose(v129, 8);
  _Block_object_dispose(v131, 8);
  _Block_object_dispose(v133, 8);
  _Block_object_dispose(v135, 8);
  _Block_object_dispose(v137, 8);
  _Block_object_dispose(v139, 8);
  _Block_object_dispose(v141, 8);
  _Block_object_dispose(v143, 8);
  _Block_object_dispose(v145, 8);
  _Block_object_dispose(v146, 8);
  v47 = *MEMORY[0x277D85DE8];
}

void __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_130(uint64_t a1, uint64_t a2, char a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  *(*(*(a1 + 48) + 8) + 24) &= a3;
  dispatch_group_leave(*(a1 + 32));
}

void __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_2(uint64_t a1, uint64_t a2, char a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  *(*(*(a1 + 48) + 8) + 24) &= a3;
  dispatch_group_leave(*(a1 + 32));
}

void __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_3(uint64_t a1, uint64_t a2, char a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  *(*(*(a1 + 48) + 8) + 24) &= a3;
  dispatch_group_leave(*(a1 + 32));
}

void __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_4(uint64_t a1, char a2, char a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  *(*(*(a1 + 48) + 8) + 24) &= a3;
  dispatch_group_leave(*(a1 + 32));
}

void __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_5(uint64_t a1, char a2, char a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  *(*(*(a1 + 48) + 8) + 24) &= a3;
  dispatch_group_leave(*(a1 + 32));
}

void __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_6(uint64_t a1, char a2, char a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  *(*(*(a1 + 48) + 8) + 24) &= a3;
  dispatch_group_leave(*(a1 + 32));
}

void __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_7(uint64_t a1, char a2, char a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  *(*(*(a1 + 48) + 8) + 24) &= a3;
  dispatch_group_leave(*(a1 + 32));
}

void __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_8(uint64_t a1, char a2, char a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  *(*(*(a1 + 48) + 8) + 24) &= a3;
  dispatch_group_leave(*(a1 + 32));
}

void __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_9(uint64_t a1, char a2, char a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  *(*(*(a1 + 48) + 8) + 24) &= a3;
  dispatch_group_leave(*(a1 + 32));
}

void __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_10(uint64_t a1, char a2, char a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  *(*(*(a1 + 48) + 8) + 24) &= a3;
  dispatch_group_leave(*(a1 + 32));
}

void __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_11(uint64_t a1, char a2, char a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  *(*(*(a1 + 48) + 8) + 24) &= a3;
  dispatch_group_leave(*(a1 + 32));
}

void __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_12(uint64_t a1, char a2, char a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  *(*(*(a1 + 48) + 8) + 24) &= a3;
  dispatch_group_leave(*(a1 + 32));
}

void __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_13(uint64_t a1, char a2, char a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  *(*(*(a1 + 48) + 8) + 24) &= a3;
  dispatch_group_leave(*(a1 + 32));
}

void __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_14(uint64_t a1, char a2, char a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  *(*(*(a1 + 48) + 8) + 24) &= a3;
  dispatch_group_leave(*(a1 + 32));
}

void __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_15(uint64_t a1, char a2, char a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  *(*(*(a1 + 48) + 8) + 24) &= a3;
  dispatch_group_leave(*(a1 + 32));
}

void __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_16(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;
  v9 = a3;

  *(*(*(a1 + 48) + 8) + 24) &= a3 == 0;
  dispatch_group_leave(*(a1 + 32));
}

void __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_17(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;
  v9 = a3;

  *(*(*(a1 + 48) + 8) + 24) &= a3 == 0;
  dispatch_group_leave(*(a1 + 32));
}

void __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_18(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _updateOnboardingCacheAndNotifyForKey:@"MOStateOnboardingRefreshStatus" andState:*(*(*(a1 + 40) + 8) + 24) isComplete:0];
  [*(a1 + 32) _updateOnboardingCacheAndNotifyForKey:@"MOStateOnboardingStatus" andState:*(*(*(a1 + 48) + 8) + 24) isComplete:1];
  [*(a1 + 32) _updateSettingCacheAndNotifyForKey:@"MOStateSettingTopLevelSwitch" andState:*(*(*(a1 + 56) + 8) + 24) setting:0];
  [*(a1 + 32) _updateSettingCacheAndNotifyForKey:@"MOStateSettingActivity" andState:*(*(*(a1 + 64) + 8) + 24) setting:1];
  [*(a1 + 32) _updateSettingCacheAndNotifyForKey:@"MOStateSettingMedia" andState:*(*(*(a1 + 72) + 8) + 24) setting:2];
  [*(a1 + 32) _updateSettingCacheAndNotifyForKey:@"MOStateSettingCommunications" andState:*(*(*(a1 + 80) + 8) + 24) setting:3];
  [*(a1 + 32) _updateSettingCacheAndNotifyForKey:@"MOStateSettingPhotos" andState:*(*(*(a1 + 88) + 8) + 24) setting:4];
  [*(a1 + 32) _updateSettingCacheAndNotifyForKey:@"MOStateSettingSignificantLocation" andState:*(*(*(a1 + 96) + 8) + 24) setting:5];
  [*(a1 + 32) _updateSettingCacheAndNotifyForKey:@"kMOStateSettingSystemSignificantLocationReadOnly" andState:*(*(*(a1 + 104) + 8) + 24) setting:11];
  [*(a1 + 32) _updateSettingCacheAndNotifyForKey:@"MOStateSettingNearbyPeople" andState:*(*(*(a1 + 112) + 8) + 24) setting:6];
  [*(a1 + 32) _updateSettingCacheAndNotifyForKey:@"MOStateSettingAlwaysPreviewItems" andState:*(*(*(a1 + 120) + 8) + 24) setting:7];
  [*(a1 + 32) _updateSettingCacheAndNotifyForKey:@"MOStateSettingDiscoverableByNearbyContacts" andState:*(*(*(a1 + 128) + 8) + 24) setting:8];
  [*(a1 + 32) _updateSettingCacheAndNotifyForKey:@"MOStateSettingStateOfMind" andState:*(*(*(a1 + 136) + 8) + 24) setting:9];
  [*(a1 + 32) _updateSettingCacheAndNotifyForKey:@"MOStateSettingReflection" andState:*(*(*(a1 + 144) + 8) + 24) setting:10];
  [*(*(a1 + 32) + 8) setObject:*(*(*(a1 + 152) + 8) + 40) forKeyedSubscript:@"MOStateApplicationsWithDataAccess"];
  [*(*(a1 + 32) + 8) setObject:*(*(*(a1 + 160) + 8) + 40) forKeyedSubscript:@"MOStateClientsWithDataAccess"];
  v2 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 8);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_25A200000, v2, OS_LOG_TYPE_INFO, "Refreshed cache %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

+ (id)_getKeyNameForSetting:(unint64_t)setting
{
  if (setting > 0xB)
  {
    return 0;
  }

  else
  {
    return off_27991EEB0[setting];
  }
}

- (unint64_t)getOnboardingFlowCompletionStatus
{
  v22 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v3 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25A200000, v3, OS_LOG_TYPE_INFO, "Client is retrieving onboarding status...", buf, 2u);
  }

  [(MOOnboardingAndSettingsManager *)self waitForRefresh];
  cacheQueue = self->cacheQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__MOOnboardingAndSettingsManager_getOnboardingFlowCompletionStatus__block_invoke;
  v11[3] = &unk_27991EBB8;
  v11[4] = self;
  v11[5] = &v12;
  dispatch_sync(cacheQueue, v11);
  v5 = v13[5];
  if (v5)
  {
    unsignedIntegerValue = [v5 unsignedIntegerValue];
    v7 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
      *buf = 138412546;
      v19 = @"MOStateOnboardingStatus";
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_25A200000, v7, OS_LOG_TYPE_INFO, "Retrieved cached state for key %@: %@", buf, 0x16u);
    }
  }

  else
  {
    v7 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [MOOnboardingAndSettingsManager getOnboardingFlowCompletionStatus];
    }

    unsignedIntegerValue = 4;
  }

  _Block_object_dispose(&v12, 8);
  v9 = *MEMORY[0x277D85DE8];
  return unsignedIntegerValue;
}

void __67__MOOnboardingAndSettingsManager_getOnboardingFlowCompletionStatus__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 8) objectForKey:@"MOStateOnboardingStatus"];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (unint64_t)getExtendedOnboardingFlowCompletionStatus
{
  [(MOOnboardingAndSettingsManager *)self waitForRefresh];
  [(MOOnboardingAndSettingsManager *)self refreshCacheWithExtendedStatusOnly:1];

  return [(MOOnboardingAndSettingsManager *)self getOnboardingFlowCompletionStatus];
}

- (void)_getExtendedOnboardingFlowCompletionStatusWithHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_opt_new();
  v5 = xpc_copy_entitlement_for_self();
  if (!v5)
  {
    v6 = 0;
LABEL_6:
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __88__MOOnboardingAndSettingsManager__getExtendedOnboardingFlowCompletionStatusWithHandler___block_invoke_2;
    v10[3] = &unk_27991EBE0;
    v7 = &v11;
    v11 = handlerCopy;
    v9 = handlerCopy;
    [v4 retrieveOnboardingStateWithCompletionHandler:v10];
    goto LABEL_7;
  }

  v6 = _CFXPCCreateCFObjectFromXPCObject();
  if (!v6 || ![@"com.apple.MomentsUIService" isEqualToString:v6])
  {
    goto LABEL_6;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__MOOnboardingAndSettingsManager__getExtendedOnboardingFlowCompletionStatusWithHandler___block_invoke;
  v12[3] = &unk_27991EBE0;
  v7 = &v13;
  v13 = handlerCopy;
  v8 = handlerCopy;
  [v4 retrieveOnboardingStateLocalWithCompletionHandler:v12];
LABEL_7:
}

- (void)_getOnboardingFlowCompletionStatusWithHandler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  defaultManager = [(MOOnboardingAndSettingsManager *)self defaultManager];
  v6 = [defaultManager objectForKey:@"OnboardingStatus"];

  if (v6)
  {
    v7 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_25A200000, v7, OS_LOG_TYPE_INFO, "Retrieved onboarding state from defaults: %@", buf, 0xCu);
    }

    handlerCopy[2](handlerCopy, [v6 integerValue], 1);
  }

  else
  {
    proxyQueue = self->proxyQueue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __80__MOOnboardingAndSettingsManager__getOnboardingFlowCompletionStatusWithHandler___block_invoke;
    v10[3] = &unk_27991EC80;
    v10[4] = self;
    v11 = handlerCopy;
    dispatch_async(proxyQueue, v10);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __80__MOOnboardingAndSettingsManager__getOnboardingFlowCompletionStatusWithHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionManager];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __80__MOOnboardingAndSettingsManager__getOnboardingFlowCompletionStatusWithHandler___block_invoke_2;
  v5[3] = &unk_27991EC30;
  v6 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __80__MOOnboardingAndSettingsManager__getOnboardingFlowCompletionStatusWithHandler___block_invoke_147;
  v3[3] = &unk_27991EC58;
  v4 = *(a1 + 40);
  [v2 callAsyncProxyUsingBlock:v5 onError:v3];
}

void __80__MOOnboardingAndSettingsManager__getOnboardingFlowCompletionStatusWithHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__MOOnboardingAndSettingsManager__getOnboardingFlowCompletionStatusWithHandler___block_invoke_3;
  v7[3] = &unk_27991EC08;
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  [a2 getOnboardingFlowCompletionStatusWithHandler:v7];
}

void __80__MOOnboardingAndSettingsManager__getOnboardingFlowCompletionStatusWithHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((*(*(a1 + 32) + 16))())
  {
    (*(*(a1 + 40) + 16))();
  }

  v4 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_25A200000, v4, OS_LOG_TYPE_INFO, "Retrieved onboarding state from daemon: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __80__MOOnboardingAndSettingsManager__getOnboardingFlowCompletionStatusWithHandler___block_invoke_147(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __80__MOOnboardingAndSettingsManager__getOnboardingFlowCompletionStatusWithHandler___block_invoke_147_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)setOnboardingFlowCompletionStatus:(unint64_t)status
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:status];
    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&dword_25A200000, v5, OS_LOG_TYPE_INFO, "Setting onboarding state in cache: %@", buf, 0xCu);
  }

  cacheQueue = self->cacheQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__MOOnboardingAndSettingsManager_setOnboardingFlowCompletionStatus___block_invoke;
  v9[3] = &unk_27991ECE8;
  v9[4] = self;
  v9[5] = status;
  dispatch_async(cacheQueue, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __68__MOOnboardingAndSettingsManager_setOnboardingFlowCompletionStatus___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _updateOnboardingCacheAndNotifyForKey:@"MOStateOnboardingStatus" andState:*(a1 + 40) isComplete:1];
  v2 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&dword_25A200000, v2, OS_LOG_TYPE_INFO, "Passing onboarding state to daemon: %@", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__MOOnboardingAndSettingsManager_setOnboardingFlowCompletionStatus___block_invoke_149;
  v8[3] = &unk_27991ECE8;
  v6 = *(a1 + 40);
  v8[4] = v4;
  v8[5] = v6;
  dispatch_async(v5, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __68__MOOnboardingAndSettingsManager_setOnboardingFlowCompletionStatus___block_invoke_149(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionManager];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __68__MOOnboardingAndSettingsManager_setOnboardingFlowCompletionStatus___block_invoke_2;
  v4[3] = &__block_descriptor_40_e46_v16__0___MOOnboardingAndSettingsXPCProtocol__8l;
  v5 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __68__MOOnboardingAndSettingsManager_setOnboardingFlowCompletionStatus___block_invoke_152;
  v3[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v3[4] = v5;
  [v2 postAsyncProxyUsingBlock:v4 onError:v3];
}

void __68__MOOnboardingAndSettingsManager_setOnboardingFlowCompletionStatus___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  [a2 setOnboardingFlowCompletionStatus:*(a1 + 32)];
  v3 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 32)];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_25A200000, v3, OS_LOG_TYPE_INFO, "Completed onboarding state configuration: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __68__MOOnboardingAndSettingsManager_setOnboardingFlowCompletionStatus___block_invoke_152(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__MOOnboardingAndSettingsManager_setOnboardingFlowCompletionStatus___block_invoke_152_cold_1(v3, a1);
  }
}

- (unint64_t)getOnboardingFlowRefreshCompletionStatus
{
  v22 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v3 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25A200000, v3, OS_LOG_TYPE_INFO, "Client is retrieving onboarding status...", buf, 2u);
  }

  [(MOOnboardingAndSettingsManager *)self waitForRefresh];
  cacheQueue = self->cacheQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__MOOnboardingAndSettingsManager_getOnboardingFlowRefreshCompletionStatus__block_invoke;
  v11[3] = &unk_27991EBB8;
  v11[4] = self;
  v11[5] = &v12;
  dispatch_sync(cacheQueue, v11);
  v5 = v13[5];
  if (v5)
  {
    unsignedIntegerValue = [v5 unsignedIntegerValue];
    v7 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
      *buf = 138412546;
      v19 = @"MOStateOnboardingRefreshStatus";
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_25A200000, v7, OS_LOG_TYPE_INFO, "Retrieved cached state for key %@: %@", buf, 0x16u);
    }
  }

  else
  {
    v7 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [MOOnboardingAndSettingsManager getOnboardingFlowRefreshCompletionStatus];
    }

    unsignedIntegerValue = 4;
  }

  _Block_object_dispose(&v12, 8);
  v9 = *MEMORY[0x277D85DE8];
  return unsignedIntegerValue;
}

void __74__MOOnboardingAndSettingsManager_getOnboardingFlowRefreshCompletionStatus__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 8) objectForKey:@"MOStateOnboardingRefreshStatus"];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_getOnboardingFlowRefreshCompletionStatusWithHandler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  defaultManager = [(MOOnboardingAndSettingsManager *)self defaultManager];
  v6 = [defaultManager objectForKey:@"OnboardingRefreshStatus"];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_25A200000, v7, OS_LOG_TYPE_INFO, "Retrieved onboarding refresh state from defaults: %@", buf, 0xCu);
    }

    handlerCopy[2](handlerCopy, [v6 integerValue], 1);
  }

  else
  {
    proxyQueue = self->proxyQueue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __87__MOOnboardingAndSettingsManager__getOnboardingFlowRefreshCompletionStatusWithHandler___block_invoke;
    v10[3] = &unk_27991EC80;
    v10[4] = self;
    v11 = handlerCopy;
    dispatch_async(proxyQueue, v10);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __87__MOOnboardingAndSettingsManager__getOnboardingFlowRefreshCompletionStatusWithHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionManager];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __87__MOOnboardingAndSettingsManager__getOnboardingFlowRefreshCompletionStatusWithHandler___block_invoke_2;
  v5[3] = &unk_27991EC30;
  v6 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __87__MOOnboardingAndSettingsManager__getOnboardingFlowRefreshCompletionStatusWithHandler___block_invoke_157;
  v3[3] = &unk_27991EC58;
  v4 = *(a1 + 40);
  [v2 callAsyncProxyUsingBlock:v5 onError:v3];
}

void __87__MOOnboardingAndSettingsManager__getOnboardingFlowRefreshCompletionStatusWithHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __87__MOOnboardingAndSettingsManager__getOnboardingFlowRefreshCompletionStatusWithHandler___block_invoke_3;
  v7[3] = &unk_27991EC08;
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  [a2 getOnboardingFlowRefreshCompletionStatusWithHandler:v7];
}

void __87__MOOnboardingAndSettingsManager__getOnboardingFlowRefreshCompletionStatusWithHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((*(*(a1 + 32) + 16))())
  {
    (*(*(a1 + 40) + 16))();
  }

  v4 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_25A200000, v4, OS_LOG_TYPE_INFO, "Retrieved onboarding refresh state from daemon: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __87__MOOnboardingAndSettingsManager__getOnboardingFlowRefreshCompletionStatusWithHandler___block_invoke_157(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __80__MOOnboardingAndSettingsManager__getOnboardingFlowCompletionStatusWithHandler___block_invoke_147_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, 0);
  }
}

- (BOOL)getStateForSetting:(unint64_t)setting
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:setting];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_25A200000, v6, OS_LOG_TYPE_INFO, "Client is retrieving setting %@...", &buf, 0xCu);
  }

  if (setting == 8)
  {
    v8 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MOOnboardingAndSettingsManager getStateForSetting:];
    }
  }

  [(MOOnboardingAndSettingsManager *)self waitForRefresh];
  v9 = [MOOnboardingAndSettingsManager _getKeyNameForSetting:setting];
  if (!v9)
  {
    v10 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MOOnboardingAndSettingsManager getStateForSetting:setting];
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:setting];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MOOnboardingAndSettingsManager.m" lineNumber:645 description:{@"Unhandled setting %@ (in %s:%d)", v12, "-[MOOnboardingAndSettingsManager getStateForSetting:]", 645}];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy_;
  v32 = __Block_byref_object_dispose_;
  v33 = 0;
  cacheQueue = self->cacheQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__MOOnboardingAndSettingsManager_getStateForSetting___block_invoke;
  block[3] = &unk_27991ED10;
  p_buf = &buf;
  block[4] = self;
  v14 = v9;
  v23 = v14;
  dispatch_sync(cacheQueue, block);
  v15 = *(*(&buf + 1) + 40);
  if (v15)
  {
    bOOLValue = [v15 BOOLValue];
    v17 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
      *v25 = 138412546;
      v26 = v14;
      v27 = 2112;
      v28 = v18;
      _os_log_impl(&dword_25A200000, v17, OS_LOG_TYPE_INFO, "Retrieved cached state for key %@: %@", v25, 0x16u);
    }
  }

  else
  {
    v17 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:setting];
      [(MOOnboardingAndSettingsManager *)v19 getStateForSetting:v25, v17];
    }

    LOBYTE(bOOLValue) = 0;
  }

  _Block_object_dispose(&buf, 8);
  v20 = *MEMORY[0x277D85DE8];
  return bOOLValue;
}

void __53__MOOnboardingAndSettingsManager_getStateForSetting___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 8) objectForKey:a1[5]];
  v2 = [v5 copy];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_getStateForSetting:(unint64_t)setting withHandler:(id)handler
{
  handlerCopy = handler;
  proxyQueue = self->proxyQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__MOOnboardingAndSettingsManager__getStateForSetting_withHandler___block_invoke;
  block[3] = &unk_27991ED88;
  v10 = handlerCopy;
  settingCopy = setting;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_async(proxyQueue, block);
}

void __66__MOOnboardingAndSettingsManager__getStateForSetting_withHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionManager];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__MOOnboardingAndSettingsManager__getStateForSetting_withHandler___block_invoke_2;
  v6[3] = &unk_27991ED60;
  v3 = *(a1 + 40);
  v8 = *(a1 + 48);
  v7 = v3;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__MOOnboardingAndSettingsManager__getStateForSetting_withHandler___block_invoke_167;
  v4[3] = &unk_27991EC58;
  v5 = *(a1 + 40);
  [v2 callAsyncProxyUsingBlock:v6 onError:v4];
}

void __66__MOOnboardingAndSettingsManager__getStateForSetting_withHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__MOOnboardingAndSettingsManager__getStateForSetting_withHandler___block_invoke_3;
  v10[3] = &unk_27991ED38;
  v11 = v5;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v7;
  v13 = v8;
  v9 = v5;
  [a2 getStateForSetting:v6 withHandler:v10];
}

void __66__MOOnboardingAndSettingsManager__getStateForSetting_withHandler___block_invoke_3(void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if ((*(a1[4] + 16))())
  {
    (*(a1[5] + 16))();
  }

  v4 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[6]];
    v6 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_25A200000, v4, OS_LOG_TYPE_INFO, "Retrieved setting state from daemon %@: %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __66__MOOnboardingAndSettingsManager__getStateForSetting_withHandler___block_invoke_167(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __80__MOOnboardingAndSettingsManager__getOnboardingFlowCompletionStatusWithHandler___block_invoke_147_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, 0);
  }
}

- (void)_getStateForSettingFast:(unint64_t)fast withHandler:(id)handler
{
  handlerCopy = handler;
  proxyQueue = self->proxyQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__MOOnboardingAndSettingsManager__getStateForSettingFast_withHandler___block_invoke;
  block[3] = &unk_27991ED88;
  v10 = handlerCopy;
  fastCopy = fast;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_async(proxyQueue, block);
}

void __70__MOOnboardingAndSettingsManager__getStateForSettingFast_withHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionManager];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__MOOnboardingAndSettingsManager__getStateForSettingFast_withHandler___block_invoke_2;
  v6[3] = &unk_27991ED60;
  v3 = *(a1 + 40);
  v8 = *(a1 + 48);
  v7 = v3;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __70__MOOnboardingAndSettingsManager__getStateForSettingFast_withHandler___block_invoke_168;
  v4[3] = &unk_27991EC58;
  v5 = *(a1 + 40);
  [v2 callAsyncProxyUsingBlock:v6 onError:v4];
}

void __70__MOOnboardingAndSettingsManager__getStateForSettingFast_withHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__MOOnboardingAndSettingsManager__getStateForSettingFast_withHandler___block_invoke_3;
  v10[3] = &unk_27991ED38;
  v11 = v5;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v7;
  v13 = v8;
  v9 = v5;
  [a2 getStateForSettingFast:v6 withHandler:v10];
}

void __70__MOOnboardingAndSettingsManager__getStateForSettingFast_withHandler___block_invoke_3(void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if ((*(a1[4] + 16))())
  {
    (*(a1[5] + 16))();
  }

  v4 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[6]];
    v6 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_25A200000, v4, OS_LOG_TYPE_INFO, "(Fast) Retrieved setting state from daemon %@: %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __70__MOOnboardingAndSettingsManager__getStateForSettingFast_withHandler___block_invoke_168(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __80__MOOnboardingAndSettingsManager__getOnboardingFlowCompletionStatusWithHandler___block_invoke_147_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, 0);
  }
}

void __54__MOOnboardingAndSettingsManager_setState_forSetting___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _updateSettingCacheAndNotifyForKey:*(a1 + 40) andState:*(a1 + 56) setting:*(a1 + 48)];
  v2 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
    v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
    *buf = 138412546;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_25A200000, v2, OS_LOG_TYPE_INFO, "Passing setting state to daemon: %@: %@", buf, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__MOOnboardingAndSettingsManager_setState_forSetting___block_invoke_169;
  block[3] = &unk_27991EAC8;
  v10 = *(a1 + 56);
  v7 = *(a1 + 48);
  block[4] = v5;
  block[5] = v7;
  dispatch_async(v6, block);
  v8 = *MEMORY[0x277D85DE8];
}

void __54__MOOnboardingAndSettingsManager_setState_forSetting___block_invoke_169(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionManager];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__MOOnboardingAndSettingsManager_setState_forSetting___block_invoke_2;
  v5[3] = &__block_descriptor_41_e46_v16__0___MOOnboardingAndSettingsXPCProtocol__8l;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__MOOnboardingAndSettingsManager_setState_forSetting___block_invoke_171;
  v3[3] = &__block_descriptor_41_e17_v16__0__NSError_8l;
  v3[4] = v6;
  v4 = v7;
  [v2 postAsyncProxyUsingBlock:v5 onError:v3];
}

void __54__MOOnboardingAndSettingsManager_setState_forSetting___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  [a2 setState:*(a1 + 40) forSetting:*(a1 + 32)];
  v3 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 32)];
    v5 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_25A200000, v3, OS_LOG_TYPE_INFO, "Completed setting state configuration: %@: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __54__MOOnboardingAndSettingsManager_setState_forSetting___block_invoke_171(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__MOOnboardingAndSettingsManager_setState_forSetting___block_invoke_171_cold_1(v3, a1, v4);
  }
}

- (void)getDiagnosticReporterConfiguration:(id)configuration
{
  configurationCopy = configuration;
  proxyQueue = self->proxyQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__MOOnboardingAndSettingsManager_getDiagnosticReporterConfiguration___block_invoke;
  v7[3] = &unk_27991EC80;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  dispatch_async(proxyQueue, v7);
}

void __69__MOOnboardingAndSettingsManager_getDiagnosticReporterConfiguration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionManager];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__MOOnboardingAndSettingsManager_getDiagnosticReporterConfiguration___block_invoke_2;
  v5[3] = &unk_27991EC30;
  v6 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __69__MOOnboardingAndSettingsManager_getDiagnosticReporterConfiguration___block_invoke_174;
  v3[3] = &unk_27991EC58;
  v4 = *(a1 + 40);
  [v2 callAsyncProxyUsingBlock:v5 onError:v3];
}

void __69__MOOnboardingAndSettingsManager_getDiagnosticReporterConfiguration___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25A200000, v7, OS_LOG_TYPE_INFO, "calling getDiagnosticReporterConfiguration:handler", buf, 2u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__MOOnboardingAndSettingsManager_getDiagnosticReporterConfiguration___block_invoke_173;
  v9[3] = &unk_27991EE18;
  v10 = v5;
  v11 = *(a1 + 32);
  v8 = v5;
  [v6 getDiagnosticReporterConfiguration:v9];
}

void __69__MOOnboardingAndSettingsManager_getDiagnosticReporterConfiguration___block_invoke_173(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ((*(*(a1 + 32) + 16))())
  {
    (*(*(a1 + 40) + 16))();
    v7 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 134217984;
      v10 = [v5 count];
      _os_log_impl(&dword_25A200000, v7, OS_LOG_TYPE_INFO, "getDiagnosticReporterConfiguration, count, %lu", &v9, 0xCu);
    }
  }

  else
  {
    v7 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __69__MOOnboardingAndSettingsManager_getDiagnosticReporterConfiguration___block_invoke_173_cold_1();
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __69__MOOnboardingAndSettingsManager_getDiagnosticReporterConfiguration___block_invoke_174(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __69__MOOnboardingAndSettingsManager_getDiagnosticReporterConfiguration___block_invoke_174_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, MEMORY[0x277CBEC10], v3);
  }
}

- (BOOL)isApplicationUsingDataAccess:(id)access
{
  v20 = *MEMORY[0x277D85DE8];
  accessCopy = access;
  v5 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = accessCopy;
    _os_log_impl(&dword_25A200000, v5, OS_LOG_TYPE_INFO, "Client is checking data access usage for: %@", &buf, 0xCu);
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    v8 = [(MODefaultsManager *)self->_defaultManager objectForKey:@"ApplicationsWithDataAccess"];
    v9 = [v8 objectForKey:accessCopy];
    v10 = v9 != 0;
  }

  else
  {
    [(MOOnboardingAndSettingsManager *)self waitForRefresh];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v18 = 0x2020000000;
    v19 = 0;
    cacheQueue = self->cacheQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__MOOnboardingAndSettingsManager_isApplicationUsingDataAccess___block_invoke;
    block[3] = &unk_27991EE40;
    block[4] = self;
    p_buf = &buf;
    v15 = accessCopy;
    dispatch_sync(cacheQueue, block);
    v10 = *(*(&buf + 1) + 24);

    _Block_object_dispose(&buf, 8);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

void __63__MOOnboardingAndSettingsManager_isApplicationUsingDataAccess___block_invoke(void *a1)
{
  v3 = [*(a1[4] + 8) objectForKey:@"MOStateApplicationsWithDataAccess"];
  v2 = [v3 objectForKey:a1[5]];
  *(*(a1[6] + 8) + 24) = v2 != 0;
}

- (void)getApplicationsWithDataAccess:(id)access
{
  defaultManager = self->_defaultManager;
  accessCopy = access;
  v5 = [(MODefaultsManager *)defaultManager objectForKey:@"ApplicationsWithDataAccess"];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x277CBEC10];
  }

  v7 = v6;
  accessCopy[2](accessCopy);
}

- (BOOL)isClientUsingDataAccess:(id)access
{
  accessCopy = access;
  v5 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25A200000, v5, OS_LOG_TYPE_INFO, "Client is checking data access usage...", buf, 2u);
  }

  [(MOOnboardingAndSettingsManager *)self waitForRefresh];
  *buf = 0;
  v14 = buf;
  v15 = 0x2020000000;
  v16 = 0;
  cacheQueue = self->cacheQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__MOOnboardingAndSettingsManager_isClientUsingDataAccess___block_invoke;
  block[3] = &unk_27991EE40;
  v11 = accessCopy;
  v12 = buf;
  block[4] = self;
  v7 = accessCopy;
  dispatch_sync(cacheQueue, block);
  v8 = v14[24];

  _Block_object_dispose(buf, 8);
  return v8;
}

void __58__MOOnboardingAndSettingsManager_isClientUsingDataAccess___block_invoke(void *a1)
{
  v3 = [*(a1[4] + 8) objectForKey:@"MOStateClientsWithDataAccess"];
  v2 = [v3 objectForKey:a1[5]];
  *(*(a1[6] + 8) + 24) = v2 != 0;
}

- (void)getClientsWithDataAccess:(id)access
{
  accessCopy = access;
  proxyQueue = self->proxyQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__MOOnboardingAndSettingsManager_getClientsWithDataAccess___block_invoke;
  v7[3] = &unk_27991EC80;
  v7[4] = self;
  v8 = accessCopy;
  v6 = accessCopy;
  dispatch_async(proxyQueue, v7);
}

void __59__MOOnboardingAndSettingsManager_getClientsWithDataAccess___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionManager];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__MOOnboardingAndSettingsManager_getClientsWithDataAccess___block_invoke_2;
  v5[3] = &unk_27991EC30;
  v6 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__MOOnboardingAndSettingsManager_getClientsWithDataAccess___block_invoke_178;
  v3[3] = &unk_27991EC58;
  v4 = *(a1 + 40);
  [v2 callAsyncProxyUsingBlock:v5 onError:v3];
}

void __59__MOOnboardingAndSettingsManager_getClientsWithDataAccess___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__MOOnboardingAndSettingsManager_getClientsWithDataAccess___block_invoke_3;
  v7[3] = &unk_27991EE18;
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  [a2 getClientsWithDataAccess:v7];
}

void __59__MOOnboardingAndSettingsManager_getClientsWithDataAccess___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ((*(*(a1 + 32) + 16))())
  {
    (*(*(a1 + 40) + 16))();
    v7 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 134217984;
      v10 = [v5 count];
      _os_log_impl(&dword_25A200000, v7, OS_LOG_TYPE_INFO, "getClientsWithDataAccess, count, %lu", &v9, 0xCu);
    }
  }

  else
  {
    v7 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __59__MOOnboardingAndSettingsManager_getClientsWithDataAccess___block_invoke_3_cold_1();
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __59__MOOnboardingAndSettingsManager_getClientsWithDataAccess___block_invoke_178(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __59__MOOnboardingAndSettingsManager_getClientsWithDataAccess___block_invoke_178_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)registerClientsForDataAccess:(id)access
{
  v18 = *MEMORY[0x277D85DE8];
  accessCopy = access;
  v5 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v17 = accessCopy;
    _os_log_impl(&dword_25A200000, v5, OS_LOG_TYPE_INFO, "Registering client for data access: %@", buf, 0xCu);
  }

  connectionManager = [(MOOnboardingAndSettingsManager *)self connectionManager];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__MOOnboardingAndSettingsManager_registerClientsForDataAccess___block_invoke;
  v14[3] = &unk_27991EE68;
  v15 = accessCopy;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __63__MOOnboardingAndSettingsManager_registerClientsForDataAccess___block_invoke_179;
  v12 = &unk_27991EE90;
  v13 = v15;
  v7 = v15;
  [connectionManager postAsyncProxyUsingBlock:v14 onError:&v9];

  [(MOOnboardingAndSettingsManager *)self refreshCache:v9];
  v8 = *MEMORY[0x277D85DE8];
}

void __63__MOOnboardingAndSettingsManager_registerClientsForDataAccess___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  [a2 registerClientsForDataAccess:*(a1 + 32)];
  v3 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_25A200000, v3, OS_LOG_TYPE_INFO, "Done registering client for data access: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __63__MOOnboardingAndSettingsManager_registerClientsForDataAccess___block_invoke_179(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__MOOnboardingAndSettingsManager_registerClientsForDataAccess___block_invoke_179_cold_1(v3, a1);
  }
}

void __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __69__MOOnboardingAndSettingsManager_refreshCacheWithExtendedStatusOnly___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getOnboardingFlowCompletionStatus
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __80__MOOnboardingAndSettingsManager__getOnboardingFlowCompletionStatusWithHandler___block_invoke_147_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __68__MOOnboardingAndSettingsManager_setOnboardingFlowCompletionStatus___block_invoke_152_cold_1(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a2 + 32)];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)getOnboardingFlowRefreshCompletionStatus
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getStateForSetting:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getStateForSetting:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)getStateForSetting:(os_log_t)log .cold.3(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_fault_impl(&dword_25A200000, log, OS_LOG_TYPE_FAULT, "Missing cached state for key %@", buf, 0xCu);
}

- (void)setState:forSetting:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setState:forSetting:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setState:(uint64_t)a1 forSetting:.cold.3(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);

  v7 = *MEMORY[0x277D85DE8];
}

void __54__MOOnboardingAndSettingsManager_setState_forSetting___block_invoke_171_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = [a1 localizedDescription];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a2 + 32)];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:*(a2 + 40)];
  v9 = 138412802;
  v10 = v5;
  v11 = 2112;
  v12 = v6;
  v13 = 2112;
  v14 = v7;
  _os_log_error_impl(&dword_25A200000, a3, OS_LOG_TYPE_ERROR, "Error '%@' setting state configuration: %@: %@", &v9, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

void __69__MOOnboardingAndSettingsManager_getDiagnosticReporterConfiguration___block_invoke_173_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __69__MOOnboardingAndSettingsManager_getDiagnosticReporterConfiguration___block_invoke_174_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __59__MOOnboardingAndSettingsManager_getClientsWithDataAccess___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__MOOnboardingAndSettingsManager_getClientsWithDataAccess___block_invoke_178_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __63__MOOnboardingAndSettingsManager_registerClientsForDataAccess___block_invoke_179_cold_1(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v4 = *(a2 + 32);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

@end