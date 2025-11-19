@interface NTKDArgonService
+ (id)sharedService;
+ (void)cleanUpStaleBundlesEventually;
- (BOOL)_argonIsComplete;
- (BOOL)_handleDailyQuery;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)_baseCriteriaForArgonActivities;
- (id)_criteriaForDailyRefreshActiviy;
- (id)_criteriaForFirstQueryActivity;
- (id)_init;
- (void)_checkInForDailyQueryActivity;
- (void)_checkInForFirstQueryActivity;
- (void)_handleFirstQuery;
- (void)_push_sendNotificationForContent:(id)a3 requestIdentifier:(id)a4 toNotificationCenter:(id)a5 identifier:(id)a6 bundle:(id)a7 completion:(id)a8;
- (void)_push_userNotification_faceBundleManagerDidUpdate:(id)a3;
- (void)_queue_push_userNotification_processWaitingNotifications;
- (void)_recordEventOfNotification:(id)a3 action:(int64_t)a4;
- (void)_setupUserNotificationCenter;
- (void)argonManager:(id)a3 didExtractKeyDescriptor:(id)a4 toPath:(id)a5;
- (void)argonManager:(id)a3 didRemoveExtractedArgonFolderAtPath:(id)a4;
- (void)argonManager:(id)a3 failedToExtractKeyDescriptor:(id)a4 error:(id)a5;
- (void)argonManagerDidRefresh:(id)a3;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)ingestKeyDescriptor:(id)a3 withMethod:(unint64_t)a4 completion:(id)a5;
- (void)knownKeyDescriptors:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)push_postNotificationForKeyDescriptor:(id)a3 completion:(id)a4;
- (void)push_updatePushConnection;
- (void)queryForNewFaces:(id)a3;
- (void)requestCurrentEnvironment:(id)a3;
- (void)requestResetOnNextLaunch:(id)a3;
- (void)setCurrentEnvironment:(int64_t)a3 completion:(id)a4;
- (void)start;
@end

@implementation NTKDArgonService

+ (id)sharedService
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__NTKDArgonService_sharedService__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedService_onceToken != -1)
  {
    dispatch_once(&sharedService_onceToken, block);
  }

  v2 = sharedService_service;

  return v2;
}

void __33__NTKDArgonService_sharedService__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _init];
  v2 = sharedService_service;
  sharedService_service = v1;
}

- (id)_init
{
  v64 = *MEMORY[0x277D85DE8];
  v59.receiver = self;
  v59.super_class = NTKDArgonService;
  v2 = [(NTKDArgonService *)&v59 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v3 addObserver:v2 selector:sel__addFaceActionTappedFromNotification_ name:@"NTKFaceSupportAddFaceNotification" object:0];

    v4 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v4 addObserver:v2 selector:sel__viewFaceActionTappedFromNotification_ name:@"NTKFaceSupportViewFaceNotification" object:0];

    v5 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v5 addObserver:v2 selector:sel__viewWhatsNewActionTappedFromNotification_ name:@"NTKFaceSupportViewWhatsNewNotification" object:0];

    v52 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.NanoTimeKit.face"];
    [v52 registerDefaults:&unk_2841899F8];
    [(NTKDArgonService *)v2 setUserDefaults:v52];
    v6 = [(NTKDArgonService *)v2 userDefaults];
    v7 = [v6 BOOLForKey:@"ResetFaceSupportOnNextLaunch"];

    if (v7)
    {
      v8 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "Reset requested.", buf, 2u);
      }

      v9 = [(NTKDArgonService *)v2 userDefaults];
      [v9 removeObjectForKey:@"ResetFaceSupportOnNextLaunch"];
    }

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.nanotimekit.facesupport.service.usernotificationqueue", v10);
    [(NTKDArgonService *)v2 setUserNotificationQueue:v11];

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NTKDArgonService *)v2 setKeyDescriptorsAwaitingUserNotifications:v12];

    v13 = BSCurrentUserDirectory();
    v14 = [v13 stringByAppendingPathComponent:@"/Library/NanoTimeKit/FaceSupport/DateDatabase.db"];
    v15 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v61 = v14;
      _os_log_impl(&dword_22D9C5000, v15, OS_LOG_TYPE_DEFAULT, "Push date storage at %@", buf, 0xCu);
    }

    if (v7)
    {
      v16 = [MEMORY[0x277CCAA00] defaultManager];
      [v16 removeItemAtPath:v14 error:0];
    }

    v17 = [[NTKFaceSupportNotificationActionEventRecorder alloc] initWithFilePath:v14];
    actionRecorder = v2->_actionRecorder;
    v2->_actionRecorder = v17;

    v19 = BSCurrentUserDirectory();
    v50 = [v19 stringByAppendingPathComponent:@"/Library/NanoTimeKit/FaceSupport/KeyDatabase"];
    v20 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v61 = v50;
      _os_log_impl(&dword_22D9C5000, v20, OS_LOG_TYPE_DEFAULT, "Key storage at %@", buf, 0xCu);
    }

    if (v7)
    {
      v21 = [MEMORY[0x277CCAA00] defaultManager];
      [v21 removeItemAtPath:v50 error:0];
    }

    v49 = NTKFaceSupportArchiveSourceDirectory();
    v22 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v61 = v49;
      _os_log_impl(&dword_22D9C5000, v22, OS_LOG_TYPE_DEFAULT, "Extracting from %@", buf, 0xCu);
    }

    if (v7)
    {
      v23 = [MEMORY[0x277CCAA00] defaultManager];
      [v23 removeItemAtPath:v49 error:0];
    }

    v24 = NTKArgonExtractorBasePath();
    v25 = NTKArgonExtractorBuildVersion();
    v48 = [v24 stringByAppendingPathComponent:v25];
    v51 = [v24 stringByAppendingPathComponent:@"ExtractionInProgress"];
    v26 = [MEMORY[0x277CCAA00] defaultManager];
    [v26 removeItemAtPath:v51 error:0];

    v27 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v61 = v48;
      v62 = 2112;
      v63 = v51;
      _os_log_impl(&dword_22D9C5000, v27, OS_LOG_TYPE_DEFAULT, "Extracting to %@ - using %@ for in-progress extractions", buf, 0x16u);
    }

    if (v7)
    {
      v28 = [MEMORY[0x277CCAA00] defaultManager];
      [v28 removeItemAtPath:v48 error:0];
    }

    v29 = BSCurrentUserDirectory();
    v47 = [v29 stringByAppendingPathComponent:@"/Library/NanoTimeKit/FaceSupport/Assets"];

    v30 = [MEMORY[0x277CCAA00] defaultManager];
    v31 = [v30 removeItemAtPath:v47 error:0];

    if (v31)
    {
      v32 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22D9C5000, v32, OS_LOG_TYPE_DEFAULT, "Cleaned up obsolete asset database.", buf, 2u);
      }
    }

    v45 = NTKFaceSupportDatabase();
    v33 = [[NTKArgonCloudKitClient alloc] initWithCloudKitDatabase:v45 zoneName:@"FaceSupport"];
    v34 = [MEMORY[0x277CBEA60] arrayWithObject:v33];
    if (_os_feature_enabled_impl())
    {
      v35 = objc_alloc_init(NTKDArgonInternalKeyFetcher);
      v36 = [v34 arrayByAddingObject:v35];

      v34 = v36;
    }

    v37 = [[NTKArgonLocalKeyDatabase alloc] initWithKeyStoragePath:v50];
    v38 = [[NTKArgonExtractor alloc] initWithSourcePath:v49 inProgressPath:v51 extractionPath:v48];
    v39 = [[NTKArgonManager alloc] initWithKeyDatabase:v37 fetchers:v34 extractor:v38];
    [(NTKArgonManager *)v39 addArgonManagerObserver:v2];
    objc_storeStrong(&v2->_manager, v39);
    [(NTKDArgonService *)v2 _setupUserNotificationCenter];
    if (_os_feature_enabled_impl())
    {
      objc_initWeak(buf, v2);
      if (_init_onceToken_0 != -1)
      {
        [NTKDArgonService _init];
      }

      v40 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *v58 = 0;
        _os_log_impl(&dword_22D9C5000, v40, OS_LOG_TYPE_DEFAULT, "Demo: Setting up pings.", v58, 2u);
      }

      v2->_notifyToken = -1;
      v41 = _init_queue;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __25__NTKDArgonService__init__block_invoke_154;
      handler[3] = &unk_27877E868;
      objc_copyWeak(&v57, buf);
      notify_register_dispatch("com.apple.nanotimekit.argon.demo.ping", &v2->_notifyToken, v41, handler);
      v2->_pushToken = -1;
      v42 = _init_queue;
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __25__NTKDArgonService__init__block_invoke_161;
      v53[3] = &unk_27877E908;
      objc_copyWeak(&v55, buf);
      v54 = v37;
      notify_register_dispatch("com.apple.nanotimekit.argon.demo.push", &v2->_pushToken, v42, v53);

      objc_destroyWeak(&v55);
      objc_destroyWeak(&v57);
      objc_destroyWeak(buf);
    }

    else
    {
      [(NTKDArgonService *)v2 _checkInForFirstQueryActivity];
      [(NTKDArgonService *)v2 _checkInForDailyQueryActivity];
    }

    [v52 addObserver:v2 forKeyPath:@"FaceSupportNotifications" options:0 context:{&NTKDArgonServiceKVOContext, v45}];
    v43 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v43 addObserver:v2 selector:sel__push_userNotification_faceBundleManagerDidUpdate_ name:@"NTKFaceBundleManagerDidUpdateBundlesNotificationName" object:0];
  }

  return v2;
}

void __25__NTKDArgonService__init__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.nanotimekit.argon.demo", 0);
  v1 = _init_queue;
  _init_queue = v0;
}

void __25__NTKDArgonService__init__block_invoke_154(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "NTKDArgonService: notify ping!", v3, 2u);
    }

    [WeakRetained queryForNewFaces:&__block_literal_global_158];
  }
}

void __25__NTKDArgonService__init__block_invoke_155(uint64_t a1, int a2)
{
  v3 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v4)
    {
      v8 = 0;
      v5 = "Demo: Querying for new faces.";
      v6 = &v8;
LABEL_6:
      _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    }
  }

  else if (v4)
  {
    v7 = 0;
    v5 = "Demo: NOT querying for new faces.";
    v6 = &v7;
    goto LABEL_6;
  }
}

void __25__NTKDArgonService__init__block_invoke_161(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "NTKDArgonService: push ping!", buf, 2u);
    }

    v4 = [MEMORY[0x277CBEB58] set];
    v5 = [MEMORY[0x277CBBAE8] currentDevice];
    v6 = +[NTKFaceBundleManager sharedManager];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __25__NTKDArgonService__init__block_invoke_164;
    v22[3] = &unk_27877E890;
    v7 = v4;
    v23 = v7;
    [v6 enumerateFaceBundlesOnDevice:v5 includingLegacy:1 withBlock:v22];

    v8 = *(a1 + 32);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __25__NTKDArgonService__init__block_invoke_2;
    v20[3] = &unk_27877E8B8;
    v9 = v7;
    v21 = v9;
    [v8 enumerateKeyDescriptors:v20];
    if (![v9 count])
    {
      v10 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __25__NTKDArgonService__init__block_invoke_161_cold_1(v10);
      }
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = [v9 copy];
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [WeakRetained push_postNotificationForKeyDescriptor:? completion:?];
        }

        v13 = [v11 countByEnumeratingWithState:&v16 objects:v25 count:16];
      }

      while (v13);
    }
  }
}

void __25__NTKDArgonService__init__block_invoke_164(uint64_t a1)
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v2 = [NTKArgonKeyDescriptor unfilteredKeyDescriptorFromBundle:?];
  if (v2)
  {
    [*(a1 + 32) addObject:v2];
  }
}

void __25__NTKDArgonService__init__block_invoke_167(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) fileName];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "NTKDArgonService: Successful user notification for %@", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __25__NTKDArgonService__init__block_invoke_167_cold_1();
  }
}

- (void)start
{
  v3 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "Argon service is starting…", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__NTKDArgonService_start__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  if (start_onceToken != -1)
  {
    dispatch_once(&start_onceToken, block);
  }

  [(NTKDArgonService *)self push_updatePushConnection];
  [objc_opt_class() cleanUpStaleBundlesEventually];
  v4 = dispatch_semaphore_create(0);
  v5 = [(NTKDArgonService *)self manager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __25__NTKDArgonService_start__block_invoke_172;
  v7[3] = &unk_27877DB10;
  v8 = v4;
  v6 = v4;
  [v5 extractKnownKeyDescriptorsIfNeededWithCompletion:v7];

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
}

void __25__NTKDArgonService_start__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.nanotimekit.facesupportserver"];
  v3 = start_listener;
  start_listener = v2;

  [start_listener setDelegate:*(a1 + 32)];
  [start_listener resume];
  v4 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "Started XPC listener for argon service…", v5, 2u);
  }
}

+ (void)cleanUpStaleBundlesEventually
{
  if (cleanUpStaleBundlesEventually_token != -1)
  {
    +[NTKDArgonService cleanUpStaleBundlesEventually];
  }

  v2 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_BACKGROUND, 0, &__block_literal_global_177);
  dispatch_async(cleanUpStaleBundlesEventually_fileQueue, v2);
}

void __49__NTKDArgonService_cleanUpStaleBundlesEventually__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.nanotimekit.facesupport.service.files", v2);
  v1 = cleanUpStaleBundlesEventually_fileQueue;
  cleanUpStaleBundlesEventually_fileQueue = v0;
}

void __49__NTKDArgonService_cleanUpStaleBundlesEventually__block_invoke_2()
{
  v45 = *MEMORY[0x277D85DE8];
  v28 = NTKArgonExtractorBuildVersion();
  v0 = NTKArgonExtractorBasePath();
  v1 = [MEMORY[0x277CCAA00] defaultManager];
  v38 = 0;
  v26 = v0;
  v2 = [v1 contentsOfDirectoryAtPath:v0 error:&v38];
  v3 = v38;

  if (v2)
  {
    v24 = v3;
    v27 = [MEMORY[0x277CBEB18] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v25 = v2;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v34 objects:v44 count:16];
    if (!v5)
    {
      goto LABEL_19;
    }

    v6 = v5;
    v7 = *v35;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v34 + 1) + 8 * i);
        v10 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v41 = v9;
          _os_log_impl(&dword_22D9C5000, v10, OS_LOG_TYPE_DEFAULT, "Checking %@…", buf, 0xCu);
        }

        if ([v9 isEqualToString:@"ExtractionInProgress"])
        {
          v11 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v41 = v9;
            _os_log_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_DEFAULT, "Skipping scratch directory %@…", buf, 0xCu);
          }
        }

        else
        {
          if ([v9 isEqual:v28])
          {
            continue;
          }

          v11 = [v26 stringByAppendingPathComponent:v9];
          v12 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v41 = v9;
            v42 = 2112;
            v43 = v11;
            _os_log_impl(&dword_22D9C5000, v12, OS_LOG_TYPE_DEFAULT, "Adding stale content for %@ at %@", buf, 0x16u);
          }

          [v27 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v34 objects:v44 count:16];
      if (!v6)
      {
LABEL_19:

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v13 = [v27 copy];
        v14 = [v13 countByEnumeratingWithState:&v30 objects:v39 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v31;
          do
          {
            v17 = 0;
            do
            {
              if (*v31 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v30 + 1) + 8 * v17);
              v19 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v41 = v18;
                _os_log_impl(&dword_22D9C5000, v19, OS_LOG_TYPE_DEFAULT, "Removing stale content at %@", buf, 0xCu);
              }

              v20 = [MEMORY[0x277CCAA00] defaultManager];
              v29 = 0;
              v21 = [v20 removeItemAtPath:v18 error:&v29];
              v22 = v29;

              if ((v21 & 1) == 0)
              {
                v23 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v41 = v18;
                  v42 = 2112;
                  v43 = v22;
                  _os_log_error_impl(&dword_22D9C5000, v23, OS_LOG_TYPE_ERROR, "Cleanup of %@ failed - %@", buf, 0x16u);
                }
              }

              ++v17;
            }

            while (v15 != v17);
            v15 = [v13 countByEnumeratingWithState:&v30 objects:v39 count:16];
          }

          while (v15);
        }

        v3 = v24;
        v2 = v25;
        goto LABEL_35;
      }
    }
  }

  v27 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    __49__NTKDArgonService_cleanUpStaleBundlesEventually__block_invoke_2_cold_1();
  }

LABEL_35:
}

- (void)requestResetOnNextLaunch:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NTKDArgonService *)self userDefaults];
  [v5 setBool:1 forKey:@"ResetFaceSupportOnNextLaunch"];

  v6 = NTKArgonExtractorBuildVersion();
  v7 = NTKArgonExtractorBasePath();
  v8 = [v7 stringByAppendingPathComponent:v6];
  v9 = MEMORY[0x277CCACA8];
  v10 = [MEMORY[0x277CCAD78] UUID];
  v11 = [v10 UUIDString];
  v12 = [v9 stringWithFormat:@"reset.%@.%@", v6, v11];

  v13 = [v7 stringByAppendingPathComponent:v12];
  v14 = [MEMORY[0x277CCAA00] defaultManager];
  v19 = 0;
  v15 = [v14 moveItemAtPath:v8 toPath:v13 error:&v19];
  v16 = v19;

  v17 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  v18 = v17;
  if (v15)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [NTKDArgonService requestResetOnNextLaunch:];
    }
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    v21 = v8;
    v22 = 2114;
    v23 = v13;
    v24 = 2114;
    v25 = v16;
    _os_log_error_impl(&dword_22D9C5000, v18, OS_LOG_TYPE_ERROR, "Reset: Failed to rename %{public}@ to %{public}@: %{public}@", buf, 0x20u);
  }

  v4[2](v4, v15);
}

- (void)knownKeyDescriptors:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = [v4 array];
  v7 = [(NTKDArgonService *)self manager];
  v8 = [v7 keyDatabase];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__NTKDArgonService_knownKeyDescriptors___block_invoke;
  v11[3] = &unk_27877E8B8;
  v12 = v6;
  v9 = v6;
  [v8 enumerateKeyDescriptors:v11];

  v10 = [v9 copy];
  v5[2](v5, v10);
}

- (void)requestCurrentEnvironment:(id)a3
{
  v4 = a3;
  if (CFPreferencesGetAppBooleanValue(@"ArgonSandbox", @"com.apple.NanoTimeKit.face", 0))
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4[2](v4, v3, 0);
}

- (void)setCurrentEnvironment:(int64_t)a3 completion:(id)a4
{
  v4 = MEMORY[0x277CBED28];
  if (a3 != 2)
  {
    v4 = MEMORY[0x277CBED10];
  }

  v5 = *v4;
  v6 = a4;
  CFPreferencesSetAppValue(@"ArgonSandbox", v5, @"com.apple.NanoTimeKit.face");
  v6[2](v6, 1, 0);
}

- (void)argonManagerDidRefresh:(id)a3
{
  v3 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "Argon did refresh", v5, 2u);
  }

  v4 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v4 postNotificationName:@"NTKArgonManagerDidRefreshNotificationName" object:0];
}

- (void)argonManager:(id)a3 didExtractKeyDescriptor:(id)a4 toPath:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a5;
  v8 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 fileName];
    *buf = 138412546;
    v18 = v9;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "Argon extracted descriptor %@ to path %@", buf, 0x16u);
  }

  v10 = [v6 fileName];
  v11 = +[NTKFaceSupportUnlockAttemptEventRecorder sharedRecorder];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__NTKDArgonService_argonManager_didExtractKeyDescriptor_toPath___block_invoke;
  v15[3] = &unk_27877E938;
  v16 = v10;
  v12 = v10;
  [v11 endRecordingForIdentifier:v12 status:1 errorCode:0 completion:v15];
  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  [v13 postNotificationName:@"NTKArgonManagerDidUpdateNotificationName" object:0];

  v14 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v14 postNotificationName:@"NTKArgonManagerDidUpdateNotificationName" object:0];
}

void __64__NTKDArgonService_argonManager_didExtractKeyDescriptor_toPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __64__NTKDArgonService_argonManager_didExtractKeyDescriptor_toPath___block_invoke_cold_1();
    }
  }

  else
  {
    NTKSubmitFaceSupportMessage(a2);
  }
}

- (void)argonManager:(id)a3 failedToExtractKeyDescriptor:(id)a4 error:(id)a5
{
  v6 = a5;
  v7 = [a4 fileName];
  v8 = +[NTKFaceSupportUnlockAttemptEventRecorder sharedRecorder];
  v9 = [v6 code];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__NTKDArgonService_argonManager_failedToExtractKeyDescriptor_error___block_invoke;
  v11[3] = &unk_27877E938;
  v12 = v7;
  v10 = v7;
  [v8 endRecordingForIdentifier:v10 status:3 errorCode:v9 completion:v11];
}

void __68__NTKDArgonService_argonManager_failedToExtractKeyDescriptor_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __64__NTKDArgonService_argonManager_didExtractKeyDescriptor_toPath___block_invoke_cold_1();
    }
  }

  else
  {
    NTKSubmitFaceSupportMessage(a2);
  }
}

- (void)argonManager:(id)a3 didRemoveExtractedArgonFolderAtPath:(id)a4
{
  v4 = a4;
  v5 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [NTKDArgonService argonManager:didRemoveExtractedArgonFolderAtPath:];
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "Getting XPC connection request for argon service…", buf, 2u);
  }

  v8 = NTKFaceSupportServerInterface();
  [v6 setExportedInterface:v8];

  v9 = +[NTKDArgonServiceXPCWrapper sharedXPCWrapper];
  [v6 setExportedObject:v9];

  objc_initWeak(buf, v6);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__NTKDArgonService_listener_shouldAcceptNewConnection___block_invoke;
  v11[3] = &unk_27877DC58;
  objc_copyWeak(&v12, buf);
  [v6 setInvalidationHandler:v11];
  [v6 resume];
  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);

  return 1;
}

void __55__NTKDArgonService_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setExportedObject:0];
}

- (void)queryForNewFaces:(id)a3
{
  v4 = a3;
  v5 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to query new faces…", v7, 2u);
  }

  if ([(NTKDArgonService *)self _argonIsComplete])
  {
    v4[2](v4, 0);
  }

  else
  {
    v6 = [(NTKDArgonService *)self manager];
    [v6 refreshWithReason:3];

    if (v4)
    {
      v4[2](v4, 1);
    }
  }
}

- (void)ingestKeyDescriptor:(id)a3 withMethod:(unint64_t)a4 completion:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v29 = v8;
    v30 = 2048;
    v31 = a4;
    _os_log_impl(&dword_22D9C5000, v10, OS_LOG_TYPE_DEFAULT, "Ingesting key descriptor %@ with method %lu…", buf, 0x16u);
  }

  v11 = [(NTKDArgonService *)self manager];
  v12 = [v11 keyDatabase];
  v27 = 0;
  v13 = [v12 addKeyDescriptor:v8 error:&v27];
  v14 = v27;
  v15 = v14;
  if (v13)
  {
    v16 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v8;
      _os_log_impl(&dword_22D9C5000, v16, OS_LOG_TYPE_DEFAULT, "Key was added %@", buf, 0xCu);
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __62__NTKDArgonService_ingestKeyDescriptor_withMethod_completion___block_invoke;
    v25[3] = &unk_27877E960;
    v26 = v9;
    [v11 extractKnownKeyDescriptorsIfNeededWithCompletion:v25];
  }

  else
  {
    v17 = [v14 code];
    v18 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17 == 1)
    {
      if (v19)
      {
        *buf = 138412290;
        v29 = v8;
        _os_log_impl(&dword_22D9C5000, v18, OS_LOG_TYPE_DEFAULT, "Key was already added %@", buf, 0xCu);
      }
    }

    else
    {
      if (v19)
      {
        *buf = 138412546;
        v29 = v8;
        v30 = 2112;
        v31 = v15;
        _os_log_impl(&dword_22D9C5000, v18, OS_LOG_TYPE_DEFAULT, "Key was NOT added %@ - %@", buf, 0x16u);
      }

      v18 = +[NTKFaceSupportUnlockAttemptEventRecorder sharedRecorder];
      v20 = [v8 fileName];
      v21 = [v15 code];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __62__NTKDArgonService_ingestKeyDescriptor_withMethod_completion___block_invoke_186;
      v23[3] = &unk_27877E938;
      v24 = v20;
      v22 = v20;
      [v18 endRecordingForIdentifier:v22 status:4 errorCode:v21 completion:v23];
    }

    if (v9)
    {
      (*(v9 + 2))(v9, v17 == 1, v15);
    }
  }
}

uint64_t __62__NTKDArgonService_ingestKeyDescriptor_withMethod_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

void __62__NTKDArgonService_ingestKeyDescriptor_withMethod_completion___block_invoke_186(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __62__NTKDArgonService_ingestKeyDescriptor_withMethod_completion___block_invoke_186_cold_1();
    }
  }

  else
  {
    NTKSubmitFaceSupportMessage(a2);
  }
}

- (void)_setupUserNotificationCenter
{
  v3 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.Bridge"];
  userNotificationCenter = self->_userNotificationCenter;
  self->_userNotificationCenter = v3;
}

- (void)_checkInForFirstQueryActivity
{
  v3 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "Checking in for first-run activity…", buf, 2u);
  }

  v4 = [(NTKDArgonService *)self _criteriaForFirstQueryActivity];
  objc_initWeak(buf, self);
  v5 = [@"com.apple.nanotimekit.facesupport.launchQuery" UTF8String];
  v6 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __49__NTKDArgonService__checkInForFirstQueryActivity__block_invoke;
  handler[3] = &unk_27877E988;
  v9 = @"com.apple.nanotimekit.facesupport.launchQuery";
  v7 = v4;
  v10 = v7;
  objc_copyWeak(&v11, buf);
  xpc_activity_register(v5, v6, handler);
  objc_destroyWeak(&v11);

  objc_destroyWeak(buf);
}

void __49__NTKDArgonService__checkInForFirstQueryActivity__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    v9 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v15 = 138543362;
      v16 = v10;
      _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_DEFAULT, "Running XPC activity %{public}@", &v15, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _handleFirstQuery];
    if (!xpc_activity_set_state(v3, 5))
    {
      v12 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __49__NTKDArgonService__checkInForFirstQueryActivity__block_invoke_cold_1();
      }
    }
  }

  else if (!state)
  {
    v6 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v15 = 138543362;
      v16 = v7;
      _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "Checking in for XPC activity %{public}@", &v15, 0xCu);
    }

    v8 = xpc_activity_copy_criteria(v3);
    if (v8)
    {
    }

    else
    {
      v13 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v15 = 138543362;
        v16 = v14;
        _os_log_impl(&dword_22D9C5000, v13, OS_LOG_TYPE_DEFAULT, "Updating XPC activity criteria for %{public}@", &v15, 0xCu);
      }

      xpc_activity_set_criteria(v3, *(a1 + 40));
    }
  }

  objc_autoreleasePoolPop(v4);
}

- (void)_checkInForDailyQueryActivity
{
  v3 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "Checking in for first-daily activity…", buf, 2u);
  }

  v4 = [(NTKDArgonService *)self _criteriaForDailyRefreshActiviy];
  objc_initWeak(buf, self);
  v5 = [@"com.apple.nanotimekit.facesupport.dailyQuery" UTF8String];
  v6 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __49__NTKDArgonService__checkInForDailyQueryActivity__block_invoke;
  handler[3] = &unk_27877E988;
  v9 = @"com.apple.nanotimekit.facesupport.dailyQuery";
  v7 = v4;
  v10 = v7;
  objc_copyWeak(&v11, buf);
  xpc_activity_register(v5, v6, handler);
  objc_destroyWeak(&v11);

  objc_destroyWeak(buf);
}

void __49__NTKDArgonService__checkInForDailyQueryActivity__block_invoke(id *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    v9 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[4];
      v15 = 138543362;
      v16 = v10;
      _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_DEFAULT, "Running XPC daily activity %{public}@", &v15, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(a1 + 6);
    if ([WeakRetained _handleDailyQuery])
    {
      if (!xpc_activity_set_state(v3, 5))
      {
        v12 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          __49__NTKDArgonService__checkInForDailyQueryActivity__block_invoke_cold_1();
        }
      }
    }

    else
    {
      xpc_activity_unregister([a1[4] UTF8String]);
    }
  }

  else if (!state)
  {
    v6 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      v15 = 138543362;
      v16 = v7;
      _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "Checking in for XPC daily activity %{public}@", &v15, 0xCu);
    }

    v8 = xpc_activity_copy_criteria(v3);
    if (v8)
    {
    }

    else
    {
      v13 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = a1[4];
        v15 = 138543362;
        v16 = v14;
        _os_log_impl(&dword_22D9C5000, v13, OS_LOG_TYPE_DEFAULT, "Updating XPC daily activity criteria for %{public}@", &v15, 0xCu);
      }

      xpc_activity_set_criteria(v3, a1[5]);
    }
  }

  objc_autoreleasePoolPop(v4);
}

- (id)_baseCriteriaForArgonActivities
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86380], 1);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86368], 1);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86398], 1);
  xpc_dictionary_set_int64(v2, *MEMORY[0x277D86270], *MEMORY[0x277D86290]);
  xpc_dictionary_set_int64(v2, *MEMORY[0x277D86358], 900);
  xpc_dictionary_set_int64(v2, *MEMORY[0x277D862E8], 10240);
  xpc_dictionary_set_int64(v2, *MEMORY[0x277D86268], *MEMORY[0x277D862A8]);
  xpc_dictionary_set_string(v2, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);

  return v2;
}

- (id)_criteriaForFirstQueryActivity
{
  v2 = [(NTKDArgonService *)self _baseCriteriaForArgonActivities];
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86360], 0);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86230], 1);

  return v2;
}

- (id)_criteriaForDailyRefreshActiviy
{
  v2 = [(NTKDArgonService *)self _baseCriteriaForArgonActivities];
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86288], *MEMORY[0x277D86298] != 0);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86360], 1);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86230], 0);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D863A8], 1);

  return v2;
}

- (void)_handleFirstQuery
{
  v3 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "Performing first Argon download…", buf, 2u);
  }

  if ([(NTKDArgonService *)self _argonIsComplete])
  {
    v4 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "Skipping first Argon download - already complete!", v5, 2u);
    }
  }

  else
  {
    v4 = [(NTKDArgonService *)self manager];
    [v4 refreshWithReason:1];
  }
}

- (BOOL)_handleDailyQuery
{
  v3 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "Performing periodic Argon download…", buf, 2u);
  }

  v4 = [(NTKDArgonService *)self _argonIsComplete];
  if (v4)
  {
    v5 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "Skipping Argon download - it's done!", v9, 2u);
    }
  }

  else
  {
    v5 = [MEMORY[0x277CBBAE8] currentDevice];
    if (([v5 isPaired]& 1) != 0)
    {
      v6 = [(NTKDArgonService *)self manager];
      [v6 refreshWithReason:2];
    }

    else
    {
      v6 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "Skipping Argon download - no device paired!", v8, 2u);
      }
    }
  }

  return !v4;
}

- (BOOL)_argonIsComplete
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = [(NTKDArgonService *)self manager];
  v6 = [v5 extractor];
  v7 = [v6 sourcePath];
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v35 = 0;
  v9 = [v8 contentsOfDirectoryAtPath:v7 error:&v35];
  v10 = v35;

  if (v9)
  {
    v24 = v10;
    v25 = v7;
    v26 = v6;
    v27 = v5;
    v28 = v4;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v32;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v31 + 1) + 8 * i);
          v17 = [v16 pathExtension];
          v18 = [v17 isEqualToString:@"aea"];

          if (v18)
          {
            [v3 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v13);
    }

    v19 = [MEMORY[0x277CBBAE8] currentDevice];
    v20 = +[NTKFaceBundleManager sharedManager];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __36__NTKDArgonService__argonIsComplete__block_invoke;
    v29[3] = &unk_27877E890;
    v4 = v28;
    v21 = v28;
    v30 = v21;
    [v20 enumerateFaceBundlesOnDevice:v19 withBlock:v29];

    [v3 minusSet:v21];
    v22 = [v3 count] == 0;

    v6 = v26;
    v5 = v27;
    v10 = v24;
    v7 = v25;
  }

  else
  {
    v19 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [NTKDArgonService _argonIsComplete];
    }

    v22 = 1;
  }

  return v22;
}

void __36__NTKDArgonService__argonIsComplete__block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v2 = [v5 infoDictionary];
  v3 = [v2 objectForKey:@"Argon"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKey:@"FileName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) addObject:v4];
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == &NTKDArgonServiceKVOContext)
  {

    [(NTKDArgonService *)self push_updatePushConnection:a3];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = NTKDArgonService;
    [(NTKDArgonService *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)_recordEventOfNotification:(id)a3 action:(int64_t)a4
{
  v6 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [MEMORY[0x277CBBAE8] currentDevice];
    v8 = +[NTKFaceBundleManager sharedManager];
    v9 = [v8 faceBundleForBundleIdentifier:v6 onDevice:v7];
    if (v9)
    {
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [NTKArgonKeyDescriptor unfilteredKeyDescriptorFromBundle:v10];
      v12 = v11;
      if (v11)
      {
        v13 = [v11 fileName];
        v14 = [(NTKDArgonService *)self actionRecorder];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __54__NTKDArgonService__recordEventOfNotification_action___block_invoke;
        v16[3] = &unk_27877E9B0;
        v17 = v13;
        v15 = v13;
        [v14 endPresentationForIdentifier:v15 withAction:a4 completion:v16];
      }

      else
      {
        v14 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [NTKDArgonService _recordEventOfNotification:action:];
        }
      }
    }

    else
    {
      v10 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [NTKDArgonService _recordEventOfNotification:action:];
      }
    }
  }

  else
  {
    v7 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [NTKDArgonService _recordEventOfNotification:action:];
    }
  }
}

void __54__NTKDArgonService__recordEventOfNotification_action___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __54__NTKDArgonService__recordEventOfNotification_action___block_invoke_cold_1();
    }
  }

  else
  {
    NTKSubmitFaceSupportMessage(a2);
  }
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v4 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "Argon received a public token.", v5, 2u);
  }
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v22 = a3;
  v5 = a4;
  v6 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "Argon recieved a push message.", buf, 2u);
  }

  v7 = [v5 userInfo];
  v8 = [v7 objectForKey:@"d"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [NTKArgonKeyDescriptor alloc];
    v10 = [(NTKArgonKeyDescriptor *)v9 argon_initWithJSONRepresentation:v8];

    if (v10)
    {
      v11 = [v10 fileName];
      v12 = +[NTKFaceSupportUnlockAttemptEventRecorder sharedRecorder];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __57__NTKDArgonService_connection_didReceiveIncomingMessage___block_invoke;
      v28[3] = &unk_27877E820;
      v13 = v11;
      v29 = v13;
      [v12 beginRecordingForIdentifier:v13 method:1 completion:v28];

      v14 = +[NTKFaceSupportNotificationPresentationEventRecorder sharedRecorder];
      v15 = [v10 fileName];
      v16 = [v7 objectForKey:@"t"];
      [v16 doubleValue];
      v17 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __57__NTKDArgonService_connection_didReceiveIncomingMessage___block_invoke_213;
      v26[3] = &unk_27877E820;
      v27 = v15;
      v18 = v15;
      [v14 beginPresentationForIdentifier:v18 pushDate:v17 completion:v26];

      v19 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v10 fileName];
        *buf = 138412290;
        v31 = v20;
        _os_log_impl(&dword_22D9C5000, v19, OS_LOG_TYPE_DEFAULT, "Argon found a key descriptor in message named %@.", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __57__NTKDArgonService_connection_didReceiveIncomingMessage___block_invoke_214;
      v23[3] = &unk_27877E9D8;
      v24 = v10;
      objc_copyWeak(&v25, buf);
      [(NTKDArgonService *)self ingestKeyDescriptor:v24 withMethod:1 completion:v23];
      objc_destroyWeak(&v25);

      objc_destroyWeak(buf);
    }

    else
    {
      v13 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [NTKDArgonService connection:didReceiveIncomingMessage:];
      }
    }
  }

  else
  {
    v10 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [NTKDArgonService connection:didReceiveIncomingMessage:];
    }
  }
}

void __57__NTKDArgonService_connection_didReceiveIncomingMessage___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __57__NTKDArgonService_connection_didReceiveIncomingMessage___block_invoke_cold_1();
    }
  }
}

void __57__NTKDArgonService_connection_didReceiveIncomingMessage___block_invoke_213(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __57__NTKDArgonService_connection_didReceiveIncomingMessage___block_invoke_213_cold_1();
  }
}

void __57__NTKDArgonService_connection_didReceiveIncomingMessage___block_invoke_214(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  WeakRetained = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) fileName];
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&dword_22D9C5000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Argon ingested key descriptor in message named %@.", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = *(a1 + 32);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __57__NTKDArgonService_connection_didReceiveIncomingMessage___block_invoke_215;
    v10[3] = &unk_27877E8E0;
    v11 = v9;
    [WeakRetained push_postNotificationForKeyDescriptor:v11 completion:v10];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __57__NTKDArgonService_connection_didReceiveIncomingMessage___block_invoke_214_cold_1();
  }
}

void __57__NTKDArgonService_connection_didReceiveIncomingMessage___block_invoke_215(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) fileName];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "Argon displayed user notification for %@.", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __57__NTKDArgonService_connection_didReceiveIncomingMessage___block_invoke_215_cold_1();
  }
}

- (void)_push_userNotification_faceBundleManagerDidUpdate:(id)a3
{
  v4 = [(NTKDArgonService *)self userNotificationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__NTKDArgonService__push_userNotification_faceBundleManagerDidUpdate___block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)_queue_push_userNotification_processWaitingNotifications
{
  OUTLINED_FUNCTION_8();
  v1 = [v0 fileName];
  v7 = [objc_opt_class() identifier];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __76__NTKDArgonService__queue_push_userNotification_processWaitingNotifications__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:{objc_msgSend(v7, "faceClass")}];
  v4 = [NTKArgonKeyDescriptor unfilteredKeyDescriptorFromBundle:v3];
  if (v4)
  {
    v5 = [*(a1 + 32) keyDescriptorsAwaitingUserNotifications];
    v6 = [v5 objectForKey:v4];

    if (v6)
    {
      [*(a1 + 40) addObject:v7];
    }
  }
}

void __76__NTKDArgonService__queue_push_userNotification_processWaitingNotifications__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

void __76__NTKDArgonService__queue_push_userNotification_processWaitingNotifications__block_invoke_227(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __76__NTKDArgonService__queue_push_userNotification_processWaitingNotifications__block_invoke_227_cold_1();
    }
  }

  else
  {
    NTKSubmitFaceSupportMessage(a2);
  }
}

void __76__NTKDArgonService__queue_push_userNotification_processWaitingNotifications__block_invoke_236(uint64_t a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v26 = v8;
      v27 = 2114;
      v28 = v7;
      _os_log_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_DEFAULT, "Notification content prepared. Request identifier: %{public}@ - Content %{public}@", buf, 0x16u);
    }

    v12 = *(a1 + 56);
    v13 = *(a1 + 64);
    v14 = [*(a1 + 32) fileName];
    v15 = *(a1 + 40);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __76__NTKDArgonService__queue_push_userNotification_processWaitingNotifications__block_invoke_238;
    v21[3] = &unk_27877EA50;
    v22 = *(a1 + 72);
    [v12 _push_sendNotificationForContent:v7 requestIdentifier:v8 toNotificationCenter:v13 identifier:v14 bundle:v15 completion:v21];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __76__NTKDArgonService__queue_push_userNotification_processWaitingNotifications__block_invoke_236_cold_1();
    }

    v16 = [0 argon_artworkUsed];
    v17 = +[NTKFaceSupportNotificationPresentationEventRecorder sharedRecorder];
    v18 = *(a1 + 48);
    v19 = [v9 code];
    v20 = *(a1 + 80);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __76__NTKDArgonService__queue_push_userNotification_processWaitingNotifications__block_invoke_237;
    v23[3] = &unk_27877EA28;
    v24 = *(a1 + 48);
    [v17 endPresentationForIdentifier:v18 status:4 artworkUsed:v16 errorCode:v19 optOutStatus:v20 completion:v23];

    (*(*(a1 + 72) + 16))();
  }
}

void __76__NTKDArgonService__queue_push_userNotification_processWaitingNotifications__block_invoke_237(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __76__NTKDArgonService__queue_push_userNotification_processWaitingNotifications__block_invoke_227_cold_1();
    }
  }

  else
  {
    NTKSubmitFaceSupportMessage(a2);
  }
}

- (void)push_postNotificationForKeyDescriptor:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NTKDArgonService *)self userNotificationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__NTKDArgonService_push_postNotificationForKeyDescriptor_completion___block_invoke;
  block[3] = &unk_27877EAA0;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __69__NTKDArgonService_push_postNotificationForKeyDescriptor_completion___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D75128] isRunningInStoreDemoMode];
  v3 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = [*(a1 + 32) fileName];
      v15 = 138543362;
      v16 = v5;
      _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "Skipping user notification for %{public}@ - store demo mode", &v15, 0xCu);
    }

    v6 = *(a1 + 48);
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:&unk_284189A70];
    (*(v6 + 16))(v6, 0, v7);
  }

  else
  {
    if (v4)
    {
      v8 = [*(a1 + 32) fileName];
      v15 = 138543362;
      v16 = v8;
      _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "Will attempt user notification for %{public}@ shortly", &v15, 0xCu);
    }

    v9 = [*(a1 + 40) keyDescriptorsAwaitingUserNotifications];
    v7 = [v9 objectForKey:*(a1 + 32)];

    if (!v7)
    {
      v10 = [*(a1 + 40) keyDescriptorsAwaitingUserNotifications];
      v11 = [MEMORY[0x277CBEB18] array];
      [v10 setObject:v11 forKey:*(a1 + 32)];
    }

    v12 = [*(a1 + 40) keyDescriptorsAwaitingUserNotifications];
    v13 = [v12 objectForKey:*(a1 + 32)];
    v14 = _Block_copy(*(a1 + 48));
    [v13 addObject:v14];

    [*(a1 + 40) _queue_push_userNotification_processWaitingNotifications];
  }
}

- (void)push_updatePushConnection
{
  v24[1] = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__NTKDArgonService_push_updatePushConnection__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = v2;
  if (push_updatePushConnection_onceToken != -1)
  {
    dispatch_once(&push_updatePushConnection_onceToken, block);
  }

  v3 = [(NTKDArgonService *)v2 pushQueue];
  if (!v3)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v3 = dispatch_queue_create("com.apple.nanotimekit.facesupport.service.push", v4);

    [(NTKDArgonService *)v2 setPushQueue:v3];
  }

  v5 = [(NTKDArgonService *)v2 pushConnection];
  if (!v5)
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ArgonSandbox", @"com.apple.NanoTimeKit.face", 0);
    v7 = MEMORY[0x277CEE9F0];
    if (AppBooleanValue)
    {
      v7 = MEMORY[0x277CEE9E8];
    }

    v8 = *v7;
    v5 = [objc_alloc(MEMORY[0x277CEEA10]) initWithEnvironmentName:v8 namedDelegatePort:@"com.apple.aps.nanotimekit.facesupport" queue:v3];
    [v5 setDelegate:v2];
    [(NTKDArgonService *)v2 setPushConnection:v5];
  }

  v9 = +[NTKArgonChannelID currentChannelID];
  v10 = [objc_alloc(MEMORY[0x277CD9D98]) initWithChannelID:v9];
  v24[0] = @"com.apple.aps.nanotimekit.facesupport";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  [v5 setEnabledTopics:v11 ignoredTopics:MEMORY[0x277CBEBF8]];

  v12 = [MEMORY[0x277CBBAE8] currentDevice];
  if ([v12 isPaired])
  {
    v13 = [v12 supportsPDRCapability:4094027452];
  }

  else
  {
    v13 = 0;
  }

  v14 = [(NTKDArgonService *)v2 userDefaults];
  v15 = [v14 BOOLForKey:@"FaceSupportNotifications"];
  if (v13)
  {
    [v5 subscribeToChannel:v10 forTopic:@"com.apple.aps.nanotimekit.facesupport"];
    v16 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v21 = @"com.apple.aps.nanotimekit.facesupport";
      v22 = 2114;
      v23 = v10;
      v17 = "Started push listener for Argon service on topic %{public}@ and channel %{public}@…";
LABEL_20:
      _os_log_impl(&dword_22D9C5000, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 0x16u);
    }
  }

  else
  {
    v18 = v15;
    [v5 unsubscribeFromChannel:v10 forTopic:@"com.apple.aps.nanotimekit.facesupport"];
    if (v18)
    {
      v16 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v21 = @"com.apple.aps.nanotimekit.facesupport";
        v22 = 2114;
        v23 = v10;
        v17 = "Pausing push listener for Argon service on topic %{public}@ and channel %{public}@ - unpaired";
        goto LABEL_20;
      }
    }

    else
    {
      v16 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v21 = @"com.apple.aps.nanotimekit.facesupport";
        v22 = 2114;
        v23 = v10;
        v17 = "Pausing push listener for Argon service on topic %{public}@ and channel %{public}@ - opt out";
        goto LABEL_20;
      }
    }
  }

  objc_sync_exit(v2);
}

void __45__NTKDArgonService_push_updatePushConnection__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:sel_push_deviceChanged_ name:*MEMORY[0x277CBB640] object:0];
}

- (void)_push_sendNotificationForContent:(id)a3 requestIdentifier:(id)a4 toNotificationCenter:(id)a5 identifier:(id)a6 bundle:(id)a7 completion:(id)a8
{
  v14 = a4;
  v15 = a6;
  v16 = a8;
  v17 = a7;
  v18 = a5;
  v19 = [a3 mutableCopy];
  v20 = [objc_opt_class() identifier];
  v21 = [v19 userInfo];
  v22 = v21;
  if (!v21)
  {
    v21 = MEMORY[0x277CBEC10];
  }

  v23 = [v21 mutableCopy];

  [v23 setObject:v20 forKey:@"bid"];
  v24 = objc_opt_class();

  v25 = [v24 argon_defaultNotificationAction];
  if (v25)
  {
    if (v25 != 1)
    {
      goto LABEL_8;
    }

    v26 = @"whatsnew";
  }

  else
  {
    v26 = @"detail";
  }

  [v23 setObject:v26 forKey:@"defaultaction"];
LABEL_8:
  v27 = [v23 copy];
  [v19 setUserInfo:v27];

  v28 = [MEMORY[0x277CE2020] triggerWithTimeInterval:0 repeats:1.0];
  if (!v14)
  {
    v29 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [NTKDArgonService _push_sendNotificationForContent:v29 requestIdentifier:? toNotificationCenter:? identifier:? bundle:? completion:?];
    }

    v30 = [MEMORY[0x277CCAD78] UUID];
    v14 = [v30 UUIDString];
  }

  v31 = [MEMORY[0x277CE1FC0] requestWithIdentifier:v14 content:v19 trigger:v28];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __121__NTKDArgonService__push_sendNotificationForContent_requestIdentifier_toNotificationCenter_identifier_bundle_completion___block_invoke;
  v35[3] = &unk_27877EAC8;
  v36 = v15;
  v37 = v19;
  v38 = self;
  v39 = v16;
  v32 = v16;
  v33 = v19;
  v34 = v15;
  [v18 addNotificationRequest:v31 withCompletionHandler:v35];
}

void __121__NTKDArgonService__push_sendNotificationForContent_requestIdentifier_toNotificationCenter_identifier_bundle_completion___block_invoke(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __121__NTKDArgonService__push_sendNotificationForContent_requestIdentifier_toNotificationCenter_identifier_bundle_completion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *buf = 138412290;
    v41 = v6;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "Scheduled user notification for %@", buf, 0xCu);
  }

  v29 = v3;

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v28 = a1;
  v7 = [*(a1 + 40) attachments];
  v8 = [v7 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v37;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v36 + 1) + 8 * i) URL];
        v35 = 0;
        v13 = NTKMarkFileAtURLAsPurgeable(v12, &v35);
        v14 = v35;
        if ((v13 & 1) == 0)
        {
          v15 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v41 = v12;
            v42 = 2112;
            v43 = v14;
            _os_log_error_impl(&dword_22D9C5000, v15, OS_LOG_TYPE_ERROR, "Couldn't cache delete mark file at %@ - %@", buf, 0x16u);
          }
        }

        v16 = [MEMORY[0x277CCAA00] defaultManager];
        v34 = 0;
        v17 = [v16 removeItemAtURL:v12 error:&v34];
        v18 = v34;

        if ((v17 & 1) == 0)
        {
          v19 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v41 = v12;
            v42 = 2112;
            v43 = v18;
            _os_log_error_impl(&dword_22D9C5000, v19, OS_LOG_TYPE_ERROR, "Couldn't remove file at %@ - %@", buf, 0x16u);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v9);
  }

  if (v29)
  {
    v20 = 2;
  }

  else
  {
    v20 = 1;
  }

  v21 = [*(v28 + 40) argon_artworkUsed];
  v22 = +[NTKFaceSupportNotificationPresentationEventRecorder sharedRecorder];
  v23 = *(v28 + 32);
  v24 = [v29 code];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __121__NTKDArgonService__push_sendNotificationForContent_requestIdentifier_toNotificationCenter_identifier_bundle_completion___block_invoke_268;
  v32[3] = &unk_27877EA28;
  v33 = *(v28 + 32);
  [v22 endPresentationForIdentifier:v23 status:v20 artworkUsed:v21 errorCode:v24 optOutStatus:0 completion:v32];

  v25 = [*(v28 + 48) actionRecorder];
  v26 = *(v28 + 32);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __121__NTKDArgonService__push_sendNotificationForContent_requestIdentifier_toNotificationCenter_identifier_bundle_completion___block_invoke_269;
  v30[3] = &unk_27877E820;
  v31 = v26;
  [v25 beginPresentationForIdentifier:v31 completion:v30];

  v27 = *(v28 + 56);
  if (v27)
  {
    (*(v27 + 16))(v27, v29 == 0, v29);
  }
}

void __121__NTKDArgonService__push_sendNotificationForContent_requestIdentifier_toNotificationCenter_identifier_bundle_completion___block_invoke_268(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __76__NTKDArgonService__queue_push_userNotification_processWaitingNotifications__block_invoke_227_cold_1();
    }
  }

  else
  {
    NTKSubmitFaceSupportMessage(a2);
  }
}

void __121__NTKDArgonService__push_sendNotificationForContent_requestIdentifier_toNotificationCenter_identifier_bundle_completion___block_invoke_269(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __121__NTKDArgonService__push_sendNotificationForContent_requestIdentifier_toNotificationCenter_identifier_bundle_completion___block_invoke_269_cold_1();
  }
}

void __25__NTKDArgonService__init__block_invoke_167_cold_1()
{
  OUTLINED_FUNCTION_8();
  v1 = [*(v0 + 32) fileName];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)requestResetOnNextLaunch:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = 2114;
  v4 = v0;
  _os_log_debug_impl(&dword_22D9C5000, v1, OS_LOG_TYPE_DEBUG, "Reset: Renamed %{public}@ to %{public}@ to trigger stale content removal on next launch", v2, 0x16u);
}

void __64__NTKDArgonService_argonManager_didExtractKeyDescriptor_toPath___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2(&dword_22D9C5000, v0, v1, "Failed to record success for %@ - %@");
}

void __62__NTKDArgonService_ingestKeyDescriptor_withMethod_completion___block_invoke_186_cold_1()
{
  OUTLINED_FUNCTION_5(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2(&dword_22D9C5000, v0, v1, "Event failure for %@ - %@");
}

void __54__NTKDArgonService__recordEventOfNotification_action___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2(&dword_22D9C5000, v0, v1, "Face action not made for %@ - %@");
}

void __57__NTKDArgonService_connection_didReceiveIncomingMessage___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2(&dword_22D9C5000, v0, v1, "Couldn't record push event for %@ - %@");
}

void __57__NTKDArgonService_connection_didReceiveIncomingMessage___block_invoke_213_cold_1()
{
  OUTLINED_FUNCTION_5(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2(&dword_22D9C5000, v0, v1, "Couldn't record presentation event for %@ - %@");
}

void __57__NTKDArgonService_connection_didReceiveIncomingMessage___block_invoke_214_cold_1()
{
  OUTLINED_FUNCTION_8();
  v1 = [*(v0 + 32) fileName];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __57__NTKDArgonService_connection_didReceiveIncomingMessage___block_invoke_215_cold_1()
{
  OUTLINED_FUNCTION_8();
  v1 = [*(v0 + 32) fileName];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __76__NTKDArgonService__queue_push_userNotification_processWaitingNotifications__block_invoke_227_cold_1()
{
  OUTLINED_FUNCTION_5(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2(&dword_22D9C5000, v0, v1, "Couldn't record end presentation for %@ - %@");
}

void __76__NTKDArgonService__queue_push_userNotification_processWaitingNotifications__block_invoke_236_cold_1()
{
  OUTLINED_FUNCTION_8();
  v1 = [*(v0 + 32) fileName];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __121__NTKDArgonService__push_sendNotificationForContent_requestIdentifier_toNotificationCenter_identifier_bundle_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2(&dword_22D9C5000, v0, v1, "Couldn't schedule user notification for %@ - %@");
}

void __121__NTKDArgonService__push_sendNotificationForContent_requestIdentifier_toNotificationCenter_identifier_bundle_completion___block_invoke_269_cold_1()
{
  OUTLINED_FUNCTION_5(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2(&dword_22D9C5000, v0, v1, "Couldn't record begin action for %@ - %@");
}

@end