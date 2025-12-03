@interface HMDMainDriver
+ (id)driver;
+ (id)getLocalStoreFrom:(id)from;
+ (id)loadHomeDataFromDemoModeStore:(id *)store;
+ (id)loadHomeDataFromLocalStore:(id *)store decryptionFailed:(BOOL *)failed;
+ (id)loadSQLArchiveWithDecryptionFail:(BOOL *)fail fromLocation:(id)location forHH2Migration:(BOOL)migration error:(id *)error;
+ (id)logCategory;
- (HMDMainDriver)init;
- (NSString)cachedLocaleIdentifier;
- (id)currentWiFiNetworkInfo;
- (id)currentWiFiNetworkRSSI;
- (void)detectNearbyAccessoriesOnMismatchNetworkWithCompletionHandler:(id)handler;
- (void)initiateLocaleMonitoring;
- (void)localeChanged;
- (void)registerXPCEventStreamHandlers;
- (void)relaunch;
- (void)relaunchAfterDelay:(double)delay;
- (void)relaunchHomed;
- (void)removeCurrentAccessorySetupMetricDispatcherIfNeeded;
- (void)setCachedLocaleIdentifier:(id)identifier;
- (void)start;
@end

@implementation HMDMainDriver

- (void)registerXPCEventStreamHandlers
{
  selfCopy = self;
  sub_253276E48();
}

- (void)detectNearbyAccessoriesOnMismatchNetworkWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  homeManager = [(HMDMainDriver *)self homeManager];
  currentWiFiNetworkInfo = [(HMDMainDriver *)self currentWiFiNetworkInfo];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__HMDMainDriver_detectNearbyAccessoriesOnMismatchNetworkWithCompletionHandler___block_invoke;
  v8[3] = &unk_279721A88;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [homeManager findAccessoriesNotOnWiFiWithCurrentWiFi:currentWiFiNetworkInfo completionHandler:v8];
}

void __79__HMDMainDriver_detectNearbyAccessoriesOnMismatchNetworkWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@wifi mismatch accessories %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (id)currentWiFiNetworkRSSI
{
  mEMORY[0x277D0F950] = [MEMORY[0x277D0F950] sharedManager];
  currentNetworkRSSI = [mEMORY[0x277D0F950] currentNetworkRSSI];

  return currentNetworkRSSI;
}

- (id)currentWiFiNetworkInfo
{
  mEMORY[0x277D0F950] = [MEMORY[0x277D0F950] sharedManager];
  mACAddress = [mEMORY[0x277D0F950] MACAddress];
  currentNetworkSSID = [mEMORY[0x277D0F950] currentNetworkSSID];
  currentNetworkAssociation = [mEMORY[0x277D0F950] currentNetworkAssociation];
  v6 = objc_alloc(MEMORY[0x277D0F958]);
  bSSID = [currentNetworkAssociation BSSID];
  formattedString = [bSSID formattedString];
  gatewayIPAddress = [currentNetworkAssociation gatewayIPAddress];
  gatewayMACAddress = [currentNetworkAssociation gatewayMACAddress];
  formattedString2 = [gatewayMACAddress formattedString];
  v12 = [v6 initWithMACAddress:mACAddress SSID:currentNetworkSSID BSSID:formattedString gatewayIPAddress:gatewayIPAddress gatewayMACAddress:formattedString2];

  return v12;
}

- (void)removeCurrentAccessorySetupMetricDispatcherIfNeeded
{
  v18 = *MEMORY[0x277D85DE8];
  homeManager = [(HMDMainDriver *)self homeManager];
  currentAccessorySetupMetricDispatcher = [homeManager currentAccessorySetupMetricDispatcher];

  if (currentAccessorySetupMetricDispatcher)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing current accessory setup metric dispatcher from home manager", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    homeManager2 = [(HMDMainDriver *)selfCopy homeManager];
    [homeManager2 setCurrentAccessorySetupMetricDispatcher:0];
  }

  currentAccessorySetupMetricDispatcher2 = [(HMDMainDriver *)self currentAccessorySetupMetricDispatcher];

  if (currentAccessorySetupMetricDispatcher2)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Removing current accessory setup metric dispatcher from main driver", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDMainDriver *)selfCopy2 setCurrentAccessorySetupMetricDispatcher:0];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)relaunchAfterDelay:(double)delay
{
  v4 = dispatch_time(0, (delay * 1000000000.0));
  workQueue = [(HMDMainDriver *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__HMDMainDriver_relaunchAfterDelay___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_after(v4, workQueue, block);
}

- (void)relaunch
{
  workQueue = [(HMDMainDriver *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__HMDMainDriver_relaunch__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_sync(workQueue, block);
}

- (void)relaunchHomed
{
  v13 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDMainDriver *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = +[HMDLaunchHandler sharedHandler];
  v5 = objc_alloc(MEMORY[0x277CCAD78]);
  v6 = [v5 initWithUUIDString:*MEMORY[0x277CD23C8]];
  [v4 registerRelaunchClientWithUUID:v6];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v10;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Exiting...", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  _Exit(0);
}

- (void)start
{
  v392[1] = *MEMORY[0x277D85DE8];
  v346 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"HMDMainDriver.start" parent:0 options:1];
  if (isFirstLaunchAfterBoot_onceToken != -1)
  {
    dispatch_once(&isFirstLaunchAfterBoot_onceToken, &__block_literal_global_826);
  }

  v343 = [[HMDLaunchEvent alloc] initWithFirstLaunchAfterBoot:isFirstLaunchAfterBoot_firstLaunchAfterBoot];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    *&buf[4] = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@homed launched with ROAR Disabled", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = objc_autoreleasePoolPush();
  v8 = selfCopy;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HMFBooleanToString();
    v12 = HMFBooleanToString();
    *buf = 138545410;
    *&buf[4] = v10;
    *&buf[12] = 2114;
    *&buf[14] = @"mainDriverStart";
    *&buf[22] = 2112;
    v365 = @"Starting homed";
    *v366 = 2114;
    *&v366[2] = @"state";
    v367 = 2112;
    v368 = @"start";
    v369 = 2114;
    v370 = @"isHH2";
    v371 = 2112;
    v372 = v11;
    v373 = 2114;
    v374 = @"isFirstLaunchAfterBoot";
    v375 = 2112;
    v376 = v12;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x5Cu);
  }

  objc_autoreleasePoolPop(v7);
  mEMORY[0x277D17DE8] = [MEMORY[0x277D17DE8] sharedInstance];
  v14 = objc_alloc(MEMORY[0x277D17DF8]);
  v15 = HMFBooleanToString();
  v16 = HMFBooleanToString();
  v17 = HMDTaggedLoggingCreateDictionary();
  v18 = [v14 initWithTag:@"mainDriverStart" data:{v17, @"state", @"start", @"isHH2", v15, @"isFirstLaunchAfterBoot", v16}];
  tagProcessorList = [v346 tagProcessorList];
  [mEMORY[0x277D17DE8] submitTaggedEvent:v18 processorList:tagProcessorList];

  v20 = v8[1];
  if (os_signpost_enabled(v20))
  {
    v21 = HMFBooleanToString();
    *buf = 138412290;
    *&buf[4] = v21;
    _os_signpost_emit_with_name_impl(&dword_2531F8000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MainDriverStart", "isRoarEnabled=%{signpost.description:attribute}@ ", buf, 0xCu);
  }

  v344 = +[HMDFeaturesDataSource defaultDataSource];
  if (![v344 isDemoModeV2Enabled])
  {
    goto LABEL_15;
  }

  v22 = *MEMORY[0x277CBF030];
  v23 = CFPreferencesCopyValue(@"demoModeTypeV2", @"com.apple.homed", @"mobile", *MEMORY[0x277CBF030]);
  if (!v23)
  {
    goto LABEL_15;
  }

  if (demoModeV2Types_onceToken != -1)
  {
    dispatch_once(&demoModeV2Types_onceToken, &__block_literal_global_896);
  }

  v24 = [demoModeV2Types_demoModeV2Types containsObject:v23];

  if (v24)
  {
    v25 = CFPreferencesCopyValue(@"demoModeRequiresCloudKit", @"com.apple.homed", @"mobile", v22);
    bOOLValue = [v25 BOOLValue];

    v27 = bOOLValue ^ 1;
  }

  else
  {
LABEL_15:
    v27 = 0;
  }

  signal(15, 0);
  if (isInternalBuild())
  {
    +[HMDMemoryDiagnostic configureMemoryDiagnostic];
  }

  v28 = objc_autoreleasePoolPush();
  HMFUptime();
  v30 = v29;
  v31 = objc_autoreleasePoolPush();
  v32 = v8;
  v33 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    v34 = HMFGetLogIdentifier();
    *buf = 138544386;
    *&buf[4] = v34;
    *&buf[12] = 2114;
    *&buf[14] = @"mainDriverStart";
    *&buf[22] = 2112;
    v365 = @"Config cleanup start";
    *v366 = 2114;
    *&v366[2] = @"state";
    v367 = 2112;
    v368 = @"mainDriverConfigCleanup";
    _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_DEBUG, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v31);
  mEMORY[0x277D17DE8]2 = [MEMORY[0x277D17DE8] sharedInstance];
  v36 = objc_alloc(MEMORY[0x277D17DF8]);
  v391 = @"state";
  v392[0] = @"mainDriverConfigCleanup";
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v392 forKeys:&v391 count:1];
  v38 = [v36 initWithTag:@"mainDriverStart" data:v37];
  tagProcessorList2 = [v346 tagProcessorList];
  [mEMORY[0x277D17DE8]2 submitTaggedEvent:v38 processorList:tagProcessorList2];

  +[HMDResetConfigPostCleanup performAnyPostCleanupStepsIfNecessary];
  v40 = objc_autoreleasePoolPush();
  v41 = v32;
  v42 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    v43 = HMFGetLogIdentifier();
    v44 = MEMORY[0x277CCACA8];
    HMFUptime();
    v46 = [v44 stringWithFormat:@"%.3f", v45 - v30];
    *buf = 138544898;
    *&buf[4] = v43;
    *&buf[12] = 2114;
    *&buf[14] = @"mainDriverStart";
    *&buf[22] = 2112;
    v365 = @"Config cleanup done";
    *v366 = 2114;
    *&v366[2] = @"state";
    v367 = 2112;
    v368 = @"mainDriverConfigCleanupDone";
    v369 = 2114;
    v370 = @"duration";
    v371 = 2112;
    v372 = v46;
    _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@", buf, 0x48u);
  }

  objc_autoreleasePoolPop(v40);
  mEMORY[0x277D17DE8]3 = [MEMORY[0x277D17DE8] sharedInstance];
  v48 = objc_alloc(MEMORY[0x277D17DF8]);
  v49 = MEMORY[0x277CCACA8];
  HMFUptime();
  v51 = [v49 stringWithFormat:@"%.3f", v50 - v30];
  v52 = HMDTaggedLoggingCreateDictionary();
  v53 = [v48 initWithTag:@"mainDriverStart" data:{v52, @"state", @"mainDriverConfigCleanupDone", @"duration", v51}];
  tagProcessorList3 = [v346 tagProcessorList];
  [mEMORY[0x277D17DE8]3 submitTaggedEvent:v53 processorList:tagProcessorList3];

  objc_autoreleasePoolPop(v28);
  HMFUptime();
  v56 = v55;
  v57 = objc_autoreleasePoolPush();
  v58 = v41;
  v59 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
  {
    v60 = HMFGetLogIdentifier();
    *buf = 138544386;
    *&buf[4] = v60;
    *&buf[12] = 2114;
    *&buf[14] = @"mainDriverStart";
    *&buf[22] = 2112;
    v365 = @"Initialize paths and utilities";
    *v366 = 2114;
    *&v366[2] = @"state";
    v367 = 2112;
    v368 = @"mainDriverSetupPaths";
    _os_log_impl(&dword_2531F8000, v59, OS_LOG_TYPE_DEBUG, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v57);
  mEMORY[0x277D17DE8]4 = [MEMORY[0x277D17DE8] sharedInstance];
  v62 = objc_alloc(MEMORY[0x277D17DF8]);
  v389 = @"state";
  v390 = @"mainDriverSetupPaths";
  v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v390 forKeys:&v389 count:1];
  v64 = [v62 initWithTag:@"mainDriverStart" data:v63];
  tagProcessorList4 = [v346 tagProcessorList];
  [mEMORY[0x277D17DE8]4 submitTaggedEvent:v64 processorList:tagProcessorList4];

  [v58 registerXPCEventStreamHandlers];
  v66 = +[HMDBackgroundTaskManager sharedManager];
  [v66 configure];

  if (MKBDeviceUnlockedSinceBoot())
  {
    [MEMORY[0x277D0F8B0] setClassMappingForNSCoder];
    [v58 initiateLocaleMonitoring];
    if (initializePaths_onceToken == -1)
    {
      if (v27)
      {
LABEL_27:
        v67 = objc_autoreleasePoolPush();
        v68 = v58;
        v69 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
        {
          v70 = HMFGetLogIdentifier();
          *buf = 138543362;
          *&buf[4] = v70;
          _os_log_impl(&dword_2531F8000, v69, OS_LOG_TYPE_INFO, "%{public}@[DemoMode] Forcing relaunch into HH2", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v67);
        [HMDHH2FrameworkSwitch setHH2EnablementPreferenceKey:1];
        [v68 relaunch];
        goto LABEL_118;
      }
    }

    else
    {
      dispatch_once(&initializePaths_onceToken, &__block_literal_global_51039);
      if (v27)
      {
        goto LABEL_27;
      }
    }

    +[HMDDatabase registerQueries];
    +[HMDHomeData configureKeyedArchiverClassMappings];
    v77 = objc_autoreleasePoolPush();
    v78 = v58;
    v79 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
    {
      v80 = HMFGetLogIdentifier();
      v81 = MEMORY[0x277CCACA8];
      HMFUptime();
      v83 = [v81 stringWithFormat:@"%.3f", v82 - v56];
      *buf = 138544898;
      *&buf[4] = v80;
      *&buf[12] = 2114;
      *&buf[14] = @"mainDriverStart";
      *&buf[22] = 2112;
      v365 = @"Initialized paths and utilities";
      *v366 = 2114;
      *&v366[2] = @"state";
      v367 = 2112;
      v368 = @"mainDriverSetupPathsDone";
      v369 = 2114;
      v370 = @"duration";
      v371 = 2112;
      v372 = v83;
      _os_log_impl(&dword_2531F8000, v79, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@", buf, 0x48u);
    }

    objc_autoreleasePoolPop(v77);
    mEMORY[0x277D17DE8]5 = [MEMORY[0x277D17DE8] sharedInstance];
    v85 = objc_alloc(MEMORY[0x277D17DF8]);
    v86 = MEMORY[0x277CCACA8];
    HMFUptime();
    v88 = [v86 stringWithFormat:@"%.3f", v87 - v56];
    v89 = HMDTaggedLoggingCreateDictionary();
    v90 = [v85 initWithTag:@"mainDriverStart" data:{v89, @"state", @"mainDriverSetupPathsDone", @"duration", v88}];
    tagProcessorList5 = [v346 tagProcessorList];
    [mEMORY[0x277D17DE8]5 submitTaggedEvent:v90 processorList:tagProcessorList5];

    HMFUptime();
    v93 = v92;
    v94 = objc_autoreleasePoolPush();
    v95 = v78;
    v96 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
    {
      v97 = HMFGetLogIdentifier();
      *buf = 138544386;
      *&buf[4] = v97;
      *&buf[12] = 2114;
      *&buf[14] = @"mainDriverStart";
      *&buf[22] = 2112;
      v365 = @"Init capabilities";
      *v366 = 2114;
      *&v366[2] = @"state";
      v367 = 2112;
      v368 = @"mainDriverSetupCapabilities";
      _os_log_impl(&dword_2531F8000, v96, OS_LOG_TYPE_DEBUG, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v94);
    mEMORY[0x277D17DE8]6 = [MEMORY[0x277D17DE8] sharedInstance];
    v99 = objc_alloc(MEMORY[0x277D17DF8]);
    v385 = @"state";
    v386 = @"mainDriverSetupCapabilities";
    v100 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v386 forKeys:&v385 count:1];
    v101 = [v99 initWithTag:@"mainDriverStart" data:v100];
    tagProcessorList6 = [v346 tagProcessorList];
    [mEMORY[0x277D17DE8]6 submitTaggedEvent:v101 processorList:tagProcessorList6];

    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __initializeCapabilitiesAndTimeouts_block_invoke;
    v365 = &unk_2797348C0;
    *v366 = 0;
    if (initializeCapabilitiesAndTimeouts_onceToken != -1)
    {
      dispatch_once(&initializeCapabilitiesAndTimeouts_onceToken, buf);
    }

    initializeMappingsAndPaths();
    v103 = HMCreateHomeKitCacheDirectory();
    v104 = objc_autoreleasePoolPush();
    v105 = v95;
    v106 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
    {
      v107 = HMFGetLogIdentifier();
      v108 = MEMORY[0x277CCACA8];
      HMFUptime();
      v110 = [v108 stringWithFormat:@"%.3f", v109 - v93];
      *buf = 138544898;
      *&buf[4] = v107;
      *&buf[12] = 2114;
      *&buf[14] = @"mainDriverStart";
      *&buf[22] = 2112;
      v365 = @"Init capabilities done";
      *v366 = 2114;
      *&v366[2] = @"state";
      v367 = 2112;
      v368 = @"mainDriverSetupCapabilitiesDone";
      v369 = 2114;
      v370 = @"duration";
      v371 = 2112;
      v372 = v110;
      _os_log_impl(&dword_2531F8000, v106, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@", buf, 0x48u);
    }

    objc_autoreleasePoolPop(v104);
    mEMORY[0x277D17DE8]7 = [MEMORY[0x277D17DE8] sharedInstance];
    v112 = objc_alloc(MEMORY[0x277D17DF8]);
    v113 = MEMORY[0x277CCACA8];
    HMFUptime();
    v115 = [v113 stringWithFormat:@"%.3f", v114 - v93];
    v116 = HMDTaggedLoggingCreateDictionary();
    v117 = [v112 initWithTag:@"mainDriverStart" data:{v116, @"state", @"mainDriverSetupCapabilitiesDone", @"duration", v115}];
    tagProcessorList7 = [v346 tagProcessorList];
    [mEMORY[0x277D17DE8]7 submitTaggedEvent:v117 processorList:tagProcessorList7];

    v119 = objc_autoreleasePoolPush();
    v120 = v105;
    v121 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
    {
      v122 = HMFGetLogIdentifier();
      mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
      *buf = 138543618;
      *&buf[4] = v122;
      *&buf[12] = 2112;
      *&buf[14] = mEMORY[0x277D0F8D0];
      _os_log_impl(&dword_2531F8000, v121, OS_LOG_TYPE_DEBUG, "%{public}@Preferences: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v119);
    v341 = +[HMDRegistry installGlobalRegistryForDaemon];
    HMFUptime();
    v125 = v124;
    v126 = objc_autoreleasePoolPush();
    v127 = v120;
    v128 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v128, OS_LOG_TYPE_DEBUG))
    {
      v129 = HMFGetLogIdentifier();
      *buf = 138544386;
      *&buf[4] = v129;
      *&buf[12] = 2114;
      *&buf[14] = @"mainDriverStart";
      *&buf[22] = 2112;
      v365 = @"Init accounts and transports";
      *v366 = 2114;
      *&v366[2] = @"state";
      v367 = 2112;
      v368 = @"mainDriverSetupAccountManagers";
      _os_log_impl(&dword_2531F8000, v128, OS_LOG_TYPE_DEBUG, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v126);
    mEMORY[0x277D17DE8]8 = [MEMORY[0x277D17DE8] sharedInstance];
    v131 = objc_alloc(MEMORY[0x277D17DF8]);
    v383 = @"state";
    v384 = @"mainDriverSetupAccountManagers";
    v132 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v384 forKeys:&v383 count:1];
    v133 = [v131 initWithTag:@"mainDriverStart" data:v132];
    tagProcessorList8 = [v346 tagProcessorList];
    [mEMORY[0x277D17DE8]8 submitTaggedEvent:v133 processorList:tagProcessorList8];

    idsServiceManager = [v341 idsServiceManager];
    appleAccountManager = [v341 appleAccountManager];
    [v341 remoteAccountManager];

    accountRegistry = [v341 accountRegistry];
    [v346 markWithReason:@"Creating Message Transports"];
    v329 = +[HMDXPCMessageTransport defaultTransport];
    v328 = +[HMDSecureRemoteMessageTransport defaultTransport];
    v342 = +[HMDMessageDispatcher defaultDispatcher];
    v334 = +[HMDBulletinBoard sharedBulletinBoard];
    [v346 markWithReason:@"Initialize Metrics Manager"];
    v135 = [HMDMetricsManager alloc];
    notificationCenterSettingsProvider = [v334 notificationCenterSettingsProvider];
    v137 = [(HMDMetricsManager *)v135 initWithMessageDispatcher:v342 accountManager:appleAccountManager notificationSettingsProvider:notificationCenterSettingsProvider];
    [v127 setMetricsManager:v137];

    metricsManager = [v127 metricsManager];
    [metricsManager start];

    metricsManager2 = [v127 metricsManager];
    logEventSubmitter = [metricsManager2 logEventSubmitter];
    [logEventSubmitter submitLogEvent:v343];

    v141 = [HMDHelper alloc];
    v142 = objc_alloc_init(HMDHelperExternalProtocolImpl);
    v333 = [(HMDHelper *)v141 initWithExternalProtocol:v142];

    [HMDHelper setSharedHelper:v333];
    v143 = objc_autoreleasePoolPush();
    v144 = v127;
    v145 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
    {
      v146 = HMFGetLogIdentifier();
      v147 = MEMORY[0x277CCACA8];
      HMFUptime();
      v125 = [v147 stringWithFormat:@"%.3f", v148 - v125];
      *buf = 138544898;
      *&buf[4] = v146;
      *&buf[12] = 2114;
      *&buf[14] = @"mainDriverStart";
      *&buf[22] = 2112;
      v365 = @"Init accounts and transports done";
      *v366 = 2114;
      *&v366[2] = @"state";
      v367 = 2112;
      v368 = @"mainDriverSetupAccountManagersDone";
      v369 = 2114;
      v370 = @"duration";
      v371 = 2112;
      v372 = v125;
      _os_log_impl(&dword_2531F8000, v145, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@", buf, 0x48u);
    }

    objc_autoreleasePoolPop(v143);
    mEMORY[0x277D17DE8]9 = [MEMORY[0x277D17DE8] sharedInstance];
    v151 = objc_alloc(MEMORY[0x277D17DF8]);
    v152 = MEMORY[0x277CCACA8];
    HMFUptime();
    v1252 = [v152 stringWithFormat:@"%.3f", v153 - v125];
    v155 = HMDTaggedLoggingCreateDictionary();
    v156 = [v151 initWithTag:@"mainDriverStart" data:{v155, @"state", @"mainDriverSetupAccountManagersDone", @"duration", v1252}];
    tagProcessorList9 = [v346 tagProcessorList];
    [mEMORY[0x277D17DE8]9 submitTaggedEvent:v156 processorList:tagProcessorList9];

    [v346 markWithReason:@"Initiating Backing Store"];
    +[HMDBackingStore start];
    [v346 markWithReason:@"Initiating Clips Quota Manager"];
    v158 = objc_autoreleasePoolPush();
    v159 = +[HMDCameraClipsQuotaManager defaultManager];
    [v159 synchronize];

    objc_autoreleasePoolPop(v158);
    if (enableNetworkLogging == 1)
    {
      v160 = objc_autoreleasePoolPush();
      v161 = v144;
      v162 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v162, OS_LOG_TYPE_INFO))
      {
        v163 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v163;
        _os_log_impl(&dword_2531F8000, v162, OS_LOG_TYPE_INFO, "%{public}@Enabling CFNetwork diagnostics", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v160);
      setenv("CFNETWORK_DIAGNOSTICS", "3", 1);
    }

    [v346 markWithReason:@"Loading Persistent Store"];
    v164 = objc_opt_class();
    v165 = objc_opt_class();
    v166 = NSStringFromClass(v165);
    [HMDBackingStoreSingleton setClass:v164 forClassName:v166];

    v387[0] = 0;
    HMFUptime();
    v168 = v167;
    v169 = objc_autoreleasePoolPush();
    v170 = v144;
    v171 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v171, OS_LOG_TYPE_INFO))
    {
      v172 = HMFGetLogIdentifier();
      *buf = 138544386;
      *&buf[4] = v172;
      *&buf[12] = 2114;
      *&buf[14] = @"mainDriverStart";
      *&buf[22] = 2112;
      v365 = @"Load Persistent Store";
      *v366 = 2114;
      *&v366[2] = @"state";
      v367 = 2112;
      v368 = @"mainDriverLoadPersistentStore";
      _os_log_impl(&dword_2531F8000, v171, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v169);
    mEMORY[0x277D17DE8]10 = [MEMORY[0x277D17DE8] sharedInstance];
    v174 = objc_alloc(MEMORY[0x277D17DF8]);
    v381 = @"state";
    v382 = @"mainDriverLoadPersistentStore";
    v175 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v382 forKeys:&v381 count:1];
    v176 = [v174 initWithTag:@"mainDriverStart" data:v175];
    tagProcessorList10 = [v346 tagProcessorList];
    [mEMORY[0x277D17DE8]10 submitTaggedEvent:v176 processorList:tagProcessorList10];

    v178 = objc_autoreleasePoolPush();
    +[HMDPersistentStore removeTransactionJournal];
    +[HMDHAPMetadata prepareMetadata];
    v339 = enableRetailDemoSetup;
    if (enableRetailDemoSetup == 1)
    {
      if ([0 demoFinalized])
      {
        v179 = 0;
      }

      else
      {
        v357 = 0;
        v180 = [objc_opt_class() loadHomeDataFromDemoModeStore:&v357];
        v179 = v357;
      }

      v345 = v179;
      if ([v179 demoFinalized])
      {
        v181 = 0;
LABEL_62:
        v183 = objc_autoreleasePoolPush();
        v184 = v170;
        v185 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v185, OS_LOG_TYPE_INFO))
        {
          v186 = HMFGetLogIdentifier();
          v187 = MEMORY[0x277CCACA8];
          HMFUptime();
          v168 = [v187 stringWithFormat:@"%.3f", v188 - v168];
          domain = [v181 domain];
          v191 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v181, "code")}];
          *buf = 138545922;
          *&buf[4] = v186;
          *&buf[12] = 2114;
          *&buf[14] = @"mainDriverStart";
          *&buf[22] = 2112;
          v365 = @"Loaded Persistent Store";
          *v366 = 2114;
          *&v366[2] = @"state";
          v367 = 2112;
          v368 = @"mainDriverLoadedPersistentStore";
          v369 = 2114;
          v370 = @"duration";
          v371 = 2112;
          v372 = v168;
          v373 = 2114;
          v374 = @"errorDomain";
          v375 = 2112;
          v376 = domain;
          v377 = 2114;
          v378 = @"errorCode";
          v379 = 2112;
          v380 = v191;
          _os_log_impl(&dword_2531F8000, v185, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x70u);
        }

        objc_autoreleasePoolPop(v183);
        mEMORY[0x277D17DE8]11 = [MEMORY[0x277D17DE8] sharedInstance];
        v193 = objc_alloc(MEMORY[0x277D17DF8]);
        v194 = MEMORY[0x277CCACA8];
        HMFUptime();
        v1682 = [v194 stringWithFormat:@"%.3f", v195 - v168];
        domain2 = [v181 domain];
        v198 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v181, "code")}];
        v199 = HMDTaggedLoggingCreateDictionary();
        v200 = [v193 initWithTag:@"mainDriverStart" data:{v199, @"state", @"mainDriverLoadedPersistentStore", @"duration", v1682, @"errorDomain", domain2, @"errorCode", v198}];
        tagProcessorList11 = [v346 tagProcessorList];
        [mEMORY[0x277D17DE8]11 submitTaggedEvent:v200 processorList:tagProcessorList11];

        if (v181)
        {
          v202 = objc_autoreleasePoolPush();
          v203 = v184;
          v204 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v204, OS_LOG_TYPE_ERROR))
          {
            v205 = HMFGetLogIdentifier();
            *buf = 138543618;
            *&buf[4] = v205;
            *&buf[12] = 2112;
            *&buf[14] = v181;
            _os_log_impl(&dword_2531F8000, v204, OS_LOG_TYPE_ERROR, "%{public}@Unable to load home data configuration: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v202);
        }

        else if ((v387[0] & 1) == 0 && v345 && (v339 & 1) == 0)
        {
          systemStore = [MEMORY[0x277CFEC78] systemStore];
          [systemStore ensureControllerKeyExistsForAllViews];
        }

        objc_autoreleasePoolPop(v178);
        v207 = objc_alloc_init(HMDDeviceSetupConfiguringController);
        [v184 setConfiguringStateController:v207];

        configuringStateController = [v184 configuringStateController];
        [configuringStateController setupRPClient];

        v209 = objc_alloc_init(HMDNetworkInfoController);
        [v184 setNetworkInfoController:v209];

        networkInfoController = [v184 networkInfoController];
        [networkInfoController start];

        v337 = [[HMDDiscoveryController alloc] initWithDiscoveryNeedsAssertion:1];
        [v184 setDiscoveryController:v337];
        [(HMDDiscoveryController *)v337 start];
        v211 = [[HMDSymptomManager alloc] initWithDataSource:v184];
        [v184 setSymptomManager:v211];

        [v346 markWithReason:@"Loading Accounts"];
        account = [v345 account];
        if (account)
        {
          account2 = [v345 account];
          isCurrentAccount = [account2 isCurrentAccount];

          if (isCurrentAccount)
          {
            account3 = [v345 account];
            [appleAccountManager setAccount:account3];
          }
        }

        v330 = +[HMDRemoteAccountManager sharedManager];
        remoteAccounts = [v345 remoteAccounts];
        v217 = [remoteAccounts count];

        if (v217)
        {
          remoteAccounts2 = [v345 remoteAccounts];
          [v330 setAccounts:remoteAccounts2];
        }

        metricsManager3 = [v184 metricsManager];
        logEventSubmitter2 = [metricsManager3 logEventSubmitter];
        v221 = objc_alloc_init(HMDDeviceAccountResolvedLogEvent);
        [logEventSubmitter2 submitLogEvent:v221 error:0];

        pendingUserManagementOperations = [v345 pendingUserManagementOperations];

        if (pendingUserManagementOperations)
        {
          [v346 markWithReason:@"Loading User Management Operations"];
          v223 = [HMDUserManagementOperationManager alloc];
          pendingUserManagementOperations2 = [v345 pendingUserManagementOperations];
          v225 = [(HMDUserManagementOperationManager *)v223 initWithOperations:pendingUserManagementOperations2];

          [HMDUserManagementOperationManager setSharedManager:v225];
        }

        [v346 markWithReason:@"Creating Accessory Browser"];
        v226 = [[HMDAccessoryBrowser alloc] initWithMessageDispatcher:v342];
        [v184 setAccessoryBrowser:v226];

        metricsManager4 = [v184 metricsManager];
        mEMORY[0x277CFEBB8] = [MEMORY[0x277CFEBB8] sharedInstance];
        [metricsManager4 configureHAPMetricsDispatcher:mEMORY[0x277CFEBB8]];

        if ((enableRetailDemoSetup & 1) != 0 || [v345 demoFinalized])
        {
          [v346 markWithReason:@"Loading Demo Mode V1"];
          accessoryBrowser = [v184 accessoryBrowser];
          demoAccessories = [v345 demoAccessories];
          [accessoryBrowser configureDemoBrowserWithDemoAccessories:demoAccessories finalized:{objc_msgSend(v345, "demoFinalized")}];
        }

        array = [MEMORY[0x277CBEA60] array];
        v231 = +[HMDBackingStoreSingleton sharedInstance];
        local = [v231 local];

        if (local)
        {
          v232 = objc_autoreleasePoolPush();
          v233 = v184;
          v234 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v234, OS_LOG_TYPE_DEFAULT))
          {
            v235 = HMFGetLogIdentifier();
            *buf = 138543362;
            *&buf[4] = v235;
            _os_log_impl(&dword_2531F8000, v234, OS_LOG_TYPE_DEFAULT, "%{public}@Checking backing store for uncommitted transactions...", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v232);
          _numUncommittedTransactions = [local _numUncommittedTransactions];
          if (_numUncommittedTransactions < 1)
          {
            _numUncommittedTransactions2 = 0;
          }

          else
          {
            v237 = objc_autoreleasePoolPush();
            v238 = v233;
            v239 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v239, OS_LOG_TYPE_ERROR))
            {
              v240 = HMFGetLogIdentifier();
              *buf = 138543362;
              *&buf[4] = v240;
              _os_log_impl(&dword_2531F8000, v239, OS_LOG_TYPE_ERROR, "%{public}@Dropped transactions that were not pushed and not committed to disk.", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v237);
            _dropUncommittedUnpushedTransactions = [local _dropUncommittedUnpushedTransactions];
            _numUncommittedTransactions2 = [local _numUncommittedTransactions];
            if (_numUncommittedTransactions2 >= 1)
            {
              mEMORY[0x277D0F8D0]2 = [MEMORY[0x277D0F8D0] sharedPreferences];
              v244 = [mEMORY[0x277D0F8D0]2 preferenceForKey:@"shouldRunUncommittedTransactions"];
              bOOLValue2 = [v244 BOOLValue];

              if (bOOLValue2)
              {
                _fetchUncommittedAndPushedTransactions = [local _fetchUncommittedAndPushedTransactions];

                v247 = objc_autoreleasePoolPush();
                v248 = v238;
                v249 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v249, OS_LOG_TYPE_ERROR))
                {
                  v250 = HMFGetLogIdentifier();
                  v251 = isInternalBuild();
                  v252 = _fetchUncommittedAndPushedTransactions;
                  if ((v251 & 1) == 0)
                  {
                    v252 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(_fetchUncommittedAndPushedTransactions, "count")}];
                  }

                  *buf = 138543618;
                  *&buf[4] = v250;
                  *&buf[12] = 2112;
                  *&buf[14] = v252;
                  _os_log_impl(&dword_2531F8000, v249, OS_LOG_TYPE_ERROR, "%{public}@Have uncommitted transactions that were pushed %@.", buf, 0x16u);
                  if ((v251 & 1) == 0)
                  {
                  }
                }
              }

              else
              {
                v247 = objc_autoreleasePoolPush();
                v253 = v238;
                v249 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v249, OS_LOG_TYPE_ERROR))
                {
                  v254 = HMFGetLogIdentifier();
                  *buf = 138543362;
                  *&buf[4] = v254;
                  _os_log_impl(&dword_2531F8000, v249, OS_LOG_TYPE_ERROR, "%{public}@Ignoring uncommitted transactions, in data loss state", buf, 0xCu);
                }

                _fetchUncommittedAndPushedTransactions = array;
              }

              objc_autoreleasePoolPop(v247);
              array = _fetchUncommittedAndPushedTransactions;
            }
          }
        }

        else
        {
          _numUncommittedTransactions2 = 0;
          _numUncommittedTransactions = 0;
        }

        v331 = [[HMDTransactionArchiveReplayLogEvent alloc] initWithNumUncommittedRecords:_numUncommittedTransactions numUncommittedAndPushedRecords:_numUncommittedTransactions2];
        metricsManager5 = [v184 metricsManager];
        logEventSubmitter3 = [metricsManager5 logEventSubmitter];
        [logEventSubmitter3 submitLogEvent:v331];

        HMFUptime();
        v258 = v257;
        v259 = objc_autoreleasePoolPush();
        v260 = v184;
        v261 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v261, OS_LOG_TYPE_DEBUG))
        {
          v262 = HMFGetLogIdentifier();
          *buf = 138544386;
          *&buf[4] = v262;
          *&buf[12] = 2114;
          *&buf[14] = @"mainDriverStart";
          *&buf[22] = 2112;
          v365 = @"Initializing Home Manager";
          *v366 = 2114;
          *&v366[2] = @"state";
          v367 = 2112;
          v368 = @"mainDriverInitHomeManager";
          _os_log_impl(&dword_2531F8000, v261, OS_LOG_TYPE_DEBUG, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);
        }

        objc_autoreleasePoolPop(v259);
        mEMORY[0x277D17DE8]12 = [MEMORY[0x277D17DE8] sharedInstance];
        v264 = objc_alloc(MEMORY[0x277D17DF8]);
        v362 = @"state";
        v363 = @"mainDriverInitHomeManager";
        v265 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v363 forKeys:&v362 count:1];
        v266 = [v264 initWithTag:@"mainDriverStart" data:v265];
        tagProcessorList12 = [v346 tagProcessorList];
        [mEMORY[0x277D17DE8]12 submitTaggedEvent:v266 processorList:tagProcessorList12];

        v268 = [HMDHomeManager alloc];
        accessoryBrowser2 = [v260 accessoryBrowser];
        messageFilterChain = [v342 messageFilterChain];
        v271 = v387[0];
        v272 = +[HMDIdentityRegistry sharedRegistry];
        metricsManager6 = [v260 metricsManager];
        configuringStateController2 = [v260 configuringStateController];
        appleMediaAccessoryDiagnosticInfoController = [v260 appleMediaAccessoryDiagnosticInfoController];
        currentAccessorySetupMetricDispatcher = [v260 currentAccessorySetupMetricDispatcher];
        v277 = [(HMDHomeManager *)v268 initWithMessageDispatcher:v342 accessoryBrowser:accessoryBrowser2 messageFilterChain:messageFilterChain homeData:v345 localDataDecryptionFailed:v271 & 1 identityRegistry:v272 accountRegistry:accountRegistry metricsManager:metricsManager6 configuringStateController:configuringStateController2 diagnosticInfoController:appleMediaAccessoryDiagnosticInfoController currentAccessorySetupMetricDispatcher:currentAccessorySetupMetricDispatcher uncommittedTransactions:array featuresDataSource:v344];
        [v260 setHomeManager:v277];

        v278 = objc_autoreleasePoolPush();
        v279 = v260;
        v280 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v280, OS_LOG_TYPE_INFO))
        {
          v281 = HMFGetLogIdentifier();
          v282 = MEMORY[0x277CCACA8];
          HMFUptime();
          v258 = [v282 stringWithFormat:@"%.3f", v283 - v258];
          *buf = 138544898;
          *&buf[4] = v281;
          *&buf[12] = 2114;
          *&buf[14] = @"mainDriverStart";
          *&buf[22] = 2112;
          v365 = @"Initialized Home Manager";
          *v366 = 2114;
          *&v366[2] = @"state";
          v367 = 2112;
          v368 = @"mainDriverInitializedHomeManager";
          v369 = 2114;
          v370 = @"duration";
          v371 = 2112;
          v372 = v258;
          _os_log_impl(&dword_2531F8000, v280, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@", buf, 0x48u);
        }

        objc_autoreleasePoolPop(v278);
        mEMORY[0x277D17DE8]13 = [MEMORY[0x277D17DE8] sharedInstance];
        v286 = objc_alloc(MEMORY[0x277D17DF8]);
        v287 = MEMORY[0x277CCACA8];
        HMFUptime();
        v2582 = [v287 stringWithFormat:@"%.3f", v288 - v258];
        v290 = HMDTaggedLoggingCreateDictionary();
        v291 = [v286 initWithTag:@"mainDriverStart" data:{v290, @"state", @"mainDriverInitializedHomeManager", @"duration", v2582}];
        tagProcessorList13 = [v346 tagProcessorList];
        [mEMORY[0x277D17DE8]13 submitTaggedEvent:v291 processorList:tagProcessorList13];

        [v346 markWithReason:@"Starting Account registry and managers"];
        [accountRegistry start];
        [v346 markWithReason:@"Initialize Presence Monitor"];
        v293 = [HMDIDSActivityMonitorHomeManagerDataSource alloc];
        homeManager = [v279 homeManager];
        v295 = [(HMDIDSActivityMonitorHomeManagerDataSource *)v293 initWithHomeManager:homeManager appleAccountManager:appleAccountManager];

        [idsServiceManager setActivityMonitorDataSource:v295];
        if (isInternalBuild() && enableRetailDemoSetup == 1)
        {
          [v346 markWithReason:@"Creating Retail Demo Mode Request Handler"];
          v296 = objc_autoreleasePoolPush();
          v297 = v279;
          v298 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v298, OS_LOG_TYPE_INFO))
          {
            v299 = HMFGetLogIdentifier();
            *buf = 138543362;
            *&buf[4] = v299;
            _os_log_impl(&dword_2531F8000, v298, OS_LOG_TYPE_INFO, "%{public}@Creating Retail Demo Mode Request Handler", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v296);
          v300 = [HMDRetailDemoModeRequestHandler alloc];
          homeManager2 = [v297 homeManager];
          v302 = [(HMDRetailDemoModeRequestHandler *)v300 initWithHomeManager:homeManager2 messageDispatcher:v342 relaunchHandler:v297];
          [v297 setRetailDemoModeRequestHandler:v302];

          retailDemoModeRequestHandler = [v297 retailDemoModeRequestHandler];
          [retailDemoModeRequestHandler configure];
        }

        if ([v344 isPlannerSupportEnabled])
        {
          v304 = objc_autoreleasePoolPush();
          v305 = v279;
          v306 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v306, OS_LOG_TYPE_INFO))
          {
            v307 = HMFGetLogIdentifier();
            *buf = 138543362;
            *&buf[4] = v307;
            _os_log_impl(&dword_2531F8000, v306, OS_LOG_TYPE_INFO, "%{public}@Initializing and registering with linkd", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v304);
          v308 = objc_alloc(MEMORY[0x277CBA598]);
          v309 = [v308 initWithBundleIdentifier:*MEMORY[0x277CD0020]];
          [v305 setLinkdConnectionListener:v309];
        }

        HMFUptime();
        v311 = v310;
        v312 = objc_autoreleasePoolPush();
        v313 = v279;
        v314 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v314, OS_LOG_TYPE_DEBUG))
        {
          v315 = HMFGetLogIdentifier();
          *buf = 138544386;
          *&buf[4] = v315;
          *&buf[12] = 2114;
          *&buf[14] = @"mainDriverStart";
          *&buf[22] = 2112;
          v365 = @"Starting Home Manager";
          *v366 = 2114;
          *&v366[2] = @"state";
          v367 = 2112;
          v368 = @"mainDriverStartHomeManager";
          _os_log_impl(&dword_2531F8000, v314, OS_LOG_TYPE_DEBUG, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);
        }

        objc_autoreleasePoolPop(v312);
        mEMORY[0x277D17DE8]14 = [MEMORY[0x277D17DE8] sharedInstance];
        v317 = objc_alloc(MEMORY[0x277D17DF8]);
        v360 = @"state";
        v361 = @"mainDriverStartHomeManager";
        v318 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v361 forKeys:&v360 count:1];
        v319 = [v317 initWithTag:@"mainDriverStart" data:v318];
        tagProcessorList14 = [v346 tagProcessorList];
        [mEMORY[0x277D17DE8]14 submitTaggedEvent:v319 processorList:tagProcessorList14];

        homeManager3 = [v313 homeManager];
        v347[0] = MEMORY[0x277D85DD0];
        v347[1] = 3221225472;
        v347[2] = __22__HMDMainDriver_start__block_invoke_307;
        v347[3] = &unk_279722EC0;
        v348 = v346;
        v349 = v313;
        v355 = v311;
        v322 = v342;
        v350 = v322;
        v323 = v328;
        v351 = v323;
        v324 = v334;
        v352 = v324;
        v325 = v329;
        v353 = v325;
        v326 = v295;
        v354 = v326;
        [homeManager3 startWithCompletionHandler:v347];

        goto LABEL_118;
      }
    }

    else
    {
      v345 = 0;
    }

    v356 = v345;
    v181 = [objc_opt_class() loadHomeDataFromLocalStore:&v356 decryptionFailed:v387];
    v182 = v356;

    v345 = v182;
    goto LABEL_62;
  }

  out_token = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v365) = 0;
  v71 = objc_autoreleasePoolPush();
  v72 = v58;
  v73 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
  {
    v74 = HMFGetLogIdentifier();
    *v387 = 138543362;
    v388 = v74;
    _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_INFO, "%{public}@Can't load data until unlocked -- stopping", v387, 0xCu);
  }

  objc_autoreleasePoolPop(v71);
  v75 = MEMORY[0x277D85CD0];
  v76 = MEMORY[0x277D85CD0];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __22__HMDMainDriver_start__block_invoke;
  handler[3] = &unk_2797231A0;
  handler[4] = v72;
  handler[5] = buf;
  notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &out_token, v75, handler);

  _Block_object_dispose(buf, 8);
LABEL_118:

  v327 = *MEMORY[0x277D85DE8];
}

uint64_t __22__HMDMainDriver_start__block_invoke(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  result = MKBDeviceUnlockedSinceBoot();
  if (result)
  {
    v5 = *(*(a1 + 40) + 8);
    if ((*(v5 + 24) & 1) == 0)
    {
      *(v5 + 24) = 1;
      v6 = objc_autoreleasePoolPush();
      v7 = *(a1 + 32);
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v11 = 138543362;
        v12 = v9;
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Notified that device has been unlocked for the first time", &v11, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      [*(a1 + 32) start];
      result = notify_cancel(a2);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void __22__HMDMainDriver_start__block_invoke_307(uint64_t a1)
{
  [*(a1 + 32) markWithReason:@"Started Home Manager"];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __22__HMDMainDriver_start__block_invoke_2;
  block[3] = &unk_279722EC0;
  v15 = *(a1 + 88);
  v9 = *(a1 + 32);
  v2 = v9.i64[0];
  v11 = vextq_s8(v9, v9, 8uLL);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v12 = v8;
  v13 = v7;
  v14 = *(a1 + 80);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __22__HMDMainDriver_start__block_invoke_2(uint64_t a1)
{
  v98 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  v5 = 0x277CCA000;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = MEMORY[0x277CCACA8];
    HMFUptime();
    v9 = [v7 stringWithFormat:@"%.3f", v8 - *(a1 + 88)];
    *buf = 138544898;
    v85 = v6;
    v86 = 2114;
    v87 = @"mainDriverStart";
    v88 = 2112;
    v89 = @"Home manager started. Configuring ...";
    v90 = 2114;
    v91 = @"state";
    v92 = 2112;
    v93 = @"mainDriverStartedHomeManager";
    v94 = 2114;
    v95 = @"duration";
    v96 = 2112;
    v97 = v9;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@", buf, 0x48u);

    v5 = 0x277CCA000uLL;
  }

  objc_autoreleasePoolPop(v2);
  v10 = [MEMORY[0x277D17DE8] sharedInstance];
  v11 = objc_alloc(MEMORY[0x277D17DF8]);
  v12 = *(v5 + 3240);
  HMFUptime();
  v14 = [v12 stringWithFormat:@"%.3f", v13 - *(a1 + 88)];
  v15 = HMDTaggedLoggingCreateDictionary();
  v16 = [v11 initWithTag:@"mainDriverStart" data:{v15, @"state", @"mainDriverStartedHomeManager", @"duration", v14}];
  v17 = [*(a1 + 40) tagProcessorList];
  [v10 submitTaggedEvent:v16 processorList:v17];

  v18 = *(a1 + 48);
  v19 = [*(a1 + 32) homeManager];
  [v18 configureHomeManager:v19];

  v20 = *(a1 + 56);
  v21 = [*(a1 + 32) homeManager];
  v22 = [v21 cloudDataSyncStateFilter];
  v23 = [*(a1 + 32) homeManager];
  [v20 configureWithCloudDataSyncStateFilter:v22 homeMembershipVerifier:v23];

  v24 = [*(a1 + 32) accessoryBrowser];
  v25 = [*(a1 + 32) homeManager];
  [v24 configureWithHomeManager:v25];

  v26 = *(a1 + 64);
  v27 = [*(a1 + 32) homeManager];
  [v26 configureWithHomeManager:v27];

  [*(a1 + 64) refreshHomeBadgeNumber];
  HMFUptime();
  v29 = v28;
  v30 = objc_autoreleasePoolPush();
  v31 = *(a1 + 32);
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    v33 = HMFGetLogIdentifier();
    *buf = 138544386;
    v85 = v33;
    v86 = 2114;
    v87 = @"mainDriverStart";
    v88 = 2112;
    v89 = @"Starting XPC message transport";
    v90 = 2114;
    v91 = @"state";
    v92 = 2112;
    v93 = @"mainDriverStartXPCTransport";
    _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_DEBUG, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v30);
  v34 = [MEMORY[0x277D17DE8] sharedInstance];
  v35 = objc_alloc(MEMORY[0x277D17DF8]);
  v82 = @"state";
  v83 = @"mainDriverStartXPCTransport";
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
  v37 = [v35 initWithTag:@"mainDriverStart" data:v36];
  v38 = [*(a1 + 40) tagProcessorList];
  [v34 submitTaggedEvent:v37 processorList:v38];

  [*(a1 + 72) start];
  v39 = +[HMDXPCMessageTransport accessorySetupTransport];
  [v39 start];

  v40 = objc_autoreleasePoolPush();
  v41 = *(a1 + 32);
  v42 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    v43 = HMFGetLogIdentifier();
    v44 = MEMORY[0x277CCACA8];
    HMFUptime();
    v46 = [v44 stringWithFormat:@"%.3f", v45 - v29];
    *buf = 138544898;
    v85 = v43;
    v86 = 2114;
    v87 = @"mainDriverStart";
    v88 = 2112;
    v89 = @"Started XPC message transport";
    v90 = 2114;
    v91 = @"state";
    v92 = 2112;
    v93 = @"mainDriverStartXPCTransportDone";
    v94 = 2114;
    v95 = @"duration";
    v96 = 2112;
    v97 = v46;
    _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@", buf, 0x48u);
  }

  objc_autoreleasePoolPop(v40);
  v47 = [MEMORY[0x277D17DE8] sharedInstance];
  v48 = objc_alloc(MEMORY[0x277D17DF8]);
  v49 = MEMORY[0x277CCACA8];
  HMFUptime();
  v51 = [v49 stringWithFormat:@"%.3f", v50 - v29];
  v52 = HMDTaggedLoggingCreateDictionary();
  v53 = [v48 initWithTag:@"mainDriverStart" data:{v52, @"state", @"mainDriverStartXPCTransportDone", @"duration", v51}];
  v54 = [*(a1 + 40) tagProcessorList];
  [v47 submitTaggedEvent:v53 processorList:v54];

  v55 = [*(a1 + 32) metricsManager];
  v56 = [v55 logEventSubmitter];
  v57 = objc_alloc_init(HMDXPCTransportStartedLogEvent);
  [v56 submitLogEvent:v57];

  [*(a1 + 80) start];
  v58 = +[HMDIdentityRegistry sharedRegistry];
  v59 = [*(a1 + 32) homeManager];
  [v58 configureWithHomeManager:v59];

  HMFUptime();
  v61 = v60;
  v62 = objc_autoreleasePoolPush();
  v63 = *(a1 + 32);
  v64 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
  {
    v65 = HMFGetLogIdentifier();
    *buf = 138544386;
    v85 = v65;
    v86 = 2114;
    v87 = @"mainDriverStart";
    v88 = 2112;
    v89 = @"Starting remote message transports";
    v90 = 2114;
    v91 = @"state";
    v92 = 2112;
    v93 = @"mainDriverStartRemoteTransports";
    _os_log_impl(&dword_2531F8000, v64, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v62);
  v66 = [MEMORY[0x277D17DE8] sharedInstance];
  v67 = objc_alloc(MEMORY[0x277D17DF8]);
  v80 = @"state";
  v81 = @"mainDriverStartRemoteTransports";
  v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
  v69 = [v67 initWithTag:@"mainDriverStart" data:v68];
  v70 = [*(a1 + 40) tagProcessorList];
  [v66 submitTaggedEvent:v69 processorList:v70];

  v71 = [*(a1 + 56) start];
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __22__HMDMainDriver_start__block_invoke_324;
  v77[3] = &unk_279721A38;
  v72 = *(a1 + 40);
  v77[4] = *(a1 + 32);
  v79 = v61;
  v78 = v72;
  v73 = [v71 then:v77];
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __22__HMDMainDriver_start__block_invoke_329;
  v76[3] = &unk_279721A60;
  v76[4] = *(a1 + 32);
  v74 = [v73 finally:v76];

  v75 = *MEMORY[0x277D85DE8];
}

uint64_t __22__HMDMainDriver_start__block_invoke_324(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = MEMORY[0x277CCACA8];
    HMFUptime();
    v10 = [v8 stringWithFormat:@"%.3f", v9 - *(a1 + 48)];
    *buf = 138544898;
    v22 = v7;
    v23 = 2114;
    v24 = @"mainDriverStarted";
    v25 = 2112;
    v26 = @"Started remote message transports. Started homed.";
    v27 = 2114;
    v28 = @"state";
    v29 = 2112;
    v30 = @"end";
    v31 = 2114;
    v32 = @"duration";
    v33 = 2112;
    v34 = v10;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@", buf, 0x48u);
  }

  objc_autoreleasePoolPop(v4);
  v11 = [MEMORY[0x277D17DE8] sharedInstance];
  v12 = objc_alloc(MEMORY[0x277D17DF8]);
  v13 = MEMORY[0x277CCACA8];
  HMFUptime();
  v15 = [v13 stringWithFormat:@"%.3f", v14 - *(a1 + 48)];
  v16 = HMDTaggedLoggingCreateDictionary();
  v17 = [v12 initWithTag:@"mainDriverStarted" data:{v16, @"state", @"end", @"duration", v15}];
  v18 = [*(a1 + 40) tagProcessorList];
  [v11 submitTaggedEvent:v17 processorList:v18];

  [*(a1 + 40) invalidate];
  v19 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __22__HMDMainDriver_start__block_invoke_329(uint64_t a1)
{
  v2 = [*(a1 + 32) homeManager];
  [v2 setHasFinishedStartingUp:1];

  v3 = [*(a1 + 32) homeManager];
  logAndPostNotification(@"HMDHomeManagerHasFinishedStartingUpNotification", v3, 0);

  v4 = *(a1 + 32);
  v5 = [v4 homeManager];
  [HMDMainDriverUtilities mainDriver:v4 finishDelayedHomeManager:v5];

  v6 = dispatch_time(0, 60000000000);
  v7 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __22__HMDMainDriver_start__block_invoke_2_331;
  block[3] = &unk_279735D00;
  block[4] = *(a1 + 32);
  dispatch_after(v6, v7, block);

  return 1;
}

void __22__HMDMainDriver_start__block_invoke_2_331(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@It has now been one minute since the home manager finished starting up", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) homeManager];
  [v6 setHasBeenOneMinuteSinceFinishedStartingUp:1];

  v7 = [*(a1 + 32) homeManager];
  logAndPostNotification(@"HMDOneMinuteSinceHomeManagerFinishedStartingUpNotification", v7, 0);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)localeChanged
{
  workQueue = [(HMDMainDriver *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__HMDMainDriver_localeChanged__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __30__HMDMainDriver_localeChanged__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  v3 = [v2 localeIdentifier];

  v4 = [*(a1 + 32) cachedLocaleIdentifier];
  v5 = [(__CFString *)v3 isEqualToString:v4];
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v10;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Locale notification received but locale identifier unchanged (%@), skipping restart", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    if (v9)
    {
      v11 = HMFGetLogIdentifier();
      v12 = @"(unknown)";
      *buf = 138543874;
      v18 = v11;
      if (v4)
      {
        v12 = v4;
      }

      v19 = 2112;
      v20 = v12;
      v21 = 2112;
      v22 = v3;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Locale changed from %@ to %@ - clearing followup items before restarting", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    [*(a1 + 32) setCachedLocaleIdentifier:v3];
    v13 = +[HMDDeviceSetupManager sharedManager];
    v14 = [v13 followUpManager];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __30__HMDMainDriver_localeChanged__block_invoke_169;
    v16[3] = &unk_279732800;
    v16[4] = *(a1 + 32);
    [v14 removeAllFollowUpItemsWithCompletion:v16];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __30__HMDMainDriver_localeChanged__block_invoke_169(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Locale changed - restarting", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [*(a1 + 32) relaunch];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)initiateLocaleMonitoring
{
  if (+[HMDDeviceCapabilities supportsLocalization])
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];
    [(HMDMainDriver *)self setCachedLocaleIdentifier:localeIdentifier];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, __languageChanged, @"AppleLanguagePreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

- (void)setCachedLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(NSLock *)self->_lock lock];
  lock = self->_lock;
  cachedLocaleIdentifier = self->_cachedLocaleIdentifier;
  self->_cachedLocaleIdentifier = identifierCopy;
  v7 = identifierCopy;

  [(NSLock *)lock unlock];
}

- (NSString)cachedLocaleIdentifier
{
  [(NSLock *)self->_lock lock];
  lock = self->_lock;
  v4 = self->_cachedLocaleIdentifier;
  [(NSLock *)lock unlock];

  return v4;
}

- (HMDMainDriver)init
{
  v11.receiver = self;
  v11.super_class = HMDMainDriver;
  v2 = [(HMDMainDriver *)&v11 init];
  if (v2)
  {
    v3 = HMFGetOSLogHandle();
    logger = v2->_logger;
    v2->_logger = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.hmd.mdrv", v5);
    workQueue = v2->_workQueue;
    v2->_workQueue = v6;

    v8 = objc_opt_new();
    lock = v2->_lock;
    v2->_lock = v8;
  }

  return v2;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t41 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t41, &__block_literal_global_336);
  }

  v3 = logCategory__hmf_once_v42;

  return v3;
}

uint64_t __28__HMDMainDriver_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v42 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

+ (id)driver
{
  if (driver_onceToken != -1)
  {
    dispatch_once(&driver_onceToken, &__block_literal_global_6640);
  }

  v3 = driver_singletonDriver;

  return v3;
}

uint64_t __23__HMDMainDriver_driver__block_invoke()
{
  driver_singletonDriver = objc_alloc_init(HMDMainDriver);

  return MEMORY[0x2821F96F8]();
}

+ (id)getLocalStoreFrom:(id)from
{
  v3 = +[HMDBackingStoreSingleton sharedInstance];
  local = [v3 local];

  return local;
}

+ (id)loadSQLArchiveWithDecryptionFail:(BOOL *)fail fromLocation:(id)location forHH2Migration:(BOOL)migration error:(id *)error
{
  migrationCopy = migration;
  v76 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v73 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Loading Home data from table.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [objc_opt_class() getLocalStoreFrom:locationCopy];
  v70 = 0;
  v71 = 0;
  v69 = 0;
  v13 = [v12 _selectArchiveWithIdentifier:@"homedata" archive:&v71 controllerUserName:&v70 error:&v69];
  v14 = v71;
  v15 = v70;
  v16 = v69;

  v17 = objc_autoreleasePoolPush();
  v18 = selfCopy;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543618;
    v73 = v20;
    v74 = 2112;
    v75 = v15;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Controller user name : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  v21 = 0;
  if (v14)
  {
    v22 = v13;
  }

  else
  {
    v22 = 0;
  }

  v23 = 0x277D0F000;
  if (v22 == 1 && v15)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = v18;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = HMFGetLogIdentifier();
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "length")}];
      *buf = 138543618;
      v73 = v27;
      v74 = 2112;
      v75 = v28;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Loaded Home data from table size: %@", buf, 0x16u);

      v23 = 0x277D0F000uLL;
    }

    objc_autoreleasePoolPop(v24);
    v68 = v16;
    v29 = [HMDPersistentStore hasControllerKeyWithUsername:v15 error:&v68];
    v30 = v68;

    if (v29)
    {
      v31 = objc_autoreleasePoolPush();
      v32 = v25;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543362;
        v73 = v34;
        _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@Found controller key for loaded home data", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v31);
      systemStore = [MEMORY[0x277CFEC78] systemStore];
      [systemStore updateActiveControllerPairingIdentifier:v15];

      v67 = 0;
      [HMDPersistentStore deserializeHomeData:&v67 usingLocalStorage:1 fromData:v14 forHH2Migration:migrationCopy];
      v36 = v67;
      if (v36)
      {
        v21 = v36;
        v37 = v23;
        sharedPreferences = [*(v23 + 2256) sharedPreferences];
        v39 = [sharedPreferences preferenceForKey:@"CreateArchiveShadowCopy"];
        bOOLValue = [v39 BOOLValue];

        if (bOOLValue && isInternalBuild())
        {
          v41 = [HMDPersistentStore archiveHomeDataLegacy:v21 toLocation:@"/tmp/legacyhomedatashadow.data"];
        }

        v23 = v37;
      }

      else
      {
        v47 = objc_autoreleasePoolPush();
        v48 = v32;
        v49 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v50 = HMFGetLogIdentifier();
          *buf = 138543362;
          v73 = v50;
          _os_log_impl(&dword_2531F8000, v49, OS_LOG_TYPE_ERROR, "%{public}@Have home archive in table but could not decrypt. Home archive is corrupt.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v47);
        v51 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];

        v21 = 0;
        *fail = 1;
        v30 = v51;
        v23 = 0x277D0F000uLL;
      }
    }

    else
    {
      if (!v30)
      {
        v42 = v23;
        v43 = objc_autoreleasePoolPush();
        v44 = v25;
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = HMFGetLogIdentifier();
          *buf = 138543362;
          v73 = v46;
          _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_ERROR, "%{public}@No error while finding controller key but couldn't find controller key", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v43);
        v30 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        v23 = v42;
      }

      v21 = 0;
      *fail = 1;
    }
  }

  else
  {
    v30 = v16;
  }

  sharedPreferences2 = [*(v23 + 2256) sharedPreferences];
  v53 = [sharedPreferences2 preferenceForKey:@"ForceDecryptionFailed"];
  bOOLValue2 = [v53 BOOLValue];

  if (bOOLValue2 && isInternalBuild())
  {
    v55 = objc_autoreleasePoolPush();
    v56 = v18;
    v57 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      v58 = HMFGetLogIdentifier();
      *buf = 138543362;
      v73 = v58;
      _os_log_impl(&dword_2531F8000, v57, OS_LOG_TYPE_ERROR, "%{public}@Forcing decryption failed state due to preference.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v55);
    v59 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];

    v21 = 0;
    *fail = 1;
    v30 = v59;
  }

  v60 = v30;
  *error = v30;
  v61 = v21;

  v62 = *MEMORY[0x277D85DE8];
  return v21;
}

+ (id)loadHomeDataFromDemoModeStore:(id *)store
{
  v34[4] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEA90];
  v6 = HMDHomeKitDaemonDemoModePersistencePath();
  v29 = 0;
  v7 = [v5 dataWithContentsOfURL:v6 options:0 error:&v29];
  v8 = v29;

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Could not read demo accessory data.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v13 = v8;
  }

  else
  {
    v14 = MEMORY[0x277CBEB98];
    v34[0] = objc_opt_class();
    v34[1] = objc_opt_class();
    v34[2] = objc_opt_class();
    v34[3] = objc_opt_class();
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
    v16 = [v14 setWithArray:v15];

    v28 = 0;
    v17 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v16 fromData:v7 error:&v28];
    v13 = v28;
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    v21 = v20;
    if (v13 || !v17)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v24;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@No demo accessory data.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v18);
      v25 = v13;
    }

    else
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543618;
        v31 = v22;
        v32 = 2112;
        v33 = v17;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Decoded demo accessories: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      v23 = objc_alloc_init(HMDMutableHomeData);
      [(HMDHomeData *)v23 setDemoAccessories:v17];
      *store = [(HMDMutableHomeData *)v23 copy];
    }
  }

  v26 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)loadHomeDataFromLocalStore:(id *)store decryptionFailed:(BOOL *)failed
{
  v6 = objc_opt_class();

  return [v6 loadHomeDataFromLocalStore:store fromLocation:0 decryptionFailed:failed forHH2Migration:0];
}

@end