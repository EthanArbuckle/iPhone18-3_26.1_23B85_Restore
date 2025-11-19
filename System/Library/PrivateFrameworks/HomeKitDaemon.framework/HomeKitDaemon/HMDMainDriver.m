@interface HMDMainDriver
+ (id)driver;
+ (id)getLocalStoreFrom:(id)a3;
+ (id)loadHomeDataFromLocalStore:(id *)a3 decryptionFailed:(BOOL *)a4;
+ (id)logCategory;
- (BOOL)cloudTransform:(id)a3 isPermittedForHomeWithModelID:(id)a4 isImport:(BOOL)a5;
- (HMDMainDriver)init;
- (NSString)cachedLocaleIdentifier;
- (id)currentWiFiNetworkInfo;
- (id)currentWiFiNetworkRSSI;
- (void)detectNearbyAccessoriesOnMismatchNetworkWithCompletionHandler:(id)a3;
- (void)initiateLocaleMonitoring;
- (void)localeChanged;
- (void)registerXPCEventStreamHandlers;
- (void)relaunch;
- (void)relaunchAfterDelay:(double)a3;
- (void)relaunchHomed;
- (void)removeCurrentAccessorySetupMetricDispatcherIfNeeded;
- (void)setCachedLocaleIdentifier:(id)a3;
- (void)start;
@end

@implementation HMDMainDriver

+ (id)driver
{
  if (driver_onceToken != -1)
  {
    dispatch_once(&driver_onceToken, &__block_literal_global_8634);
  }

  v3 = driver_singletonDriver;

  return v3;
}

- (void)registerXPCEventStreamHandlers
{
  v2 = self;
  sub_2297A1368();
}

- (void)detectNearbyAccessoriesOnMismatchNetworkWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(HMDMainDriver *)self homeManager];
  v6 = [(HMDMainDriver *)self currentWiFiNetworkInfo];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__HMDMainDriver_detectNearbyAccessoriesOnMismatchNetworkWithCompletionHandler___block_invoke;
  v8[3] = &unk_27866EE78;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v5 findAccessoriesNotOnWiFiWithCurrentWiFi:v6 completionHandler:v8];
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@wifi mismatch accessories %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (id)currentWiFiNetworkRSSI
{
  v2 = [MEMORY[0x277D0F950] sharedManager];
  v3 = [v2 currentNetworkRSSI];

  return v3;
}

- (id)currentWiFiNetworkInfo
{
  v2 = [MEMORY[0x277D0F950] sharedManager];
  v3 = [v2 MACAddress];
  v4 = [v2 currentNetworkSSID];
  v5 = [v2 currentNetworkAssociation];
  v6 = objc_alloc(MEMORY[0x277D0F958]);
  v7 = [v5 BSSID];
  v8 = [v7 formattedString];
  v9 = [v5 gatewayIPAddress];
  v10 = [v5 gatewayMACAddress];
  v11 = [v10 formattedString];
  v12 = [v6 initWithMACAddress:v3 SSID:v4 BSSID:v8 gatewayIPAddress:v9 gatewayMACAddress:v11];

  return v12;
}

- (void)removeCurrentAccessorySetupMetricDispatcherIfNeeded
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMainDriver *)self homeManager];
  v4 = [v3 currentAccessorySetupMetricDispatcher];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing current accessory setup metric dispatcher from home manager", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [(HMDMainDriver *)v6 homeManager];
    [v9 setCurrentAccessorySetupMetricDispatcher:0];
  }

  v10 = [(HMDMainDriver *)self currentAccessorySetupMetricDispatcher];

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Removing current accessory setup metric dispatcher from main driver", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDMainDriver *)v12 setCurrentAccessorySetupMetricDispatcher:0];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)cloudTransform:(id)a3 isPermittedForHomeWithModelID:(id)a4 isImport:(BOOL)a5
{
  v5 = a5;
  v49 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(HMDMainDriver *)self homeManager];
  v11 = v10;
  if (!v10)
  {
    v13 = +[HMDHH2MigratorRecord singleRecord];
    v24 = [v13 isMigrationInProgress];
    v25 = objc_autoreleasePoolPush();
    v26 = v8;
    v27 = HMFGetOSLogHandle();
    v28 = v27;
    if (!v24)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543362;
        v46 = v35;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Denying cloud transform, no home manager", buf, 0xCu);
      }

      v23 = 0;
      goto LABEL_30;
    }

    v23 = 1;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v46 = v29;
      v30 = "%{public}@Allowing cloud transform, no home manager";
      v31 = v28;
      v32 = 12;
LABEL_29:
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, v30, buf, v32);
    }

LABEL_30:

    objc_autoreleasePoolPop(v25);
    goto LABEL_31;
  }

  v12 = [v10 _homeWithUUID:v9];
  if (!v12)
  {
    v25 = objc_autoreleasePoolPush();
    v33 = v8;
    v28 = HMFGetOSLogHandle();
    v23 = 1;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v34;
      v47 = 2112;
      v48 = v9;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Allowing cloud transform, no known home with modelID: %@", buf, 0x16u);
    }

    v13 = 0;
    goto LABEL_30;
  }

  v43 = v5;
  v13 = v12;
  v14 = v8;
  v15 = [v13 residentDeviceManager];
  v16 = [v15 residentDevices];
  if ([v16 count])
  {
    v17 = [v15 isCurrentDeviceConfirmedPrimaryResident];
    context = objc_autoreleasePoolPush();
    v18 = v14;
    v19 = HMFGetOSLogHandle();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
    if (v17)
    {
      if (!v20)
      {
        v23 = 1;
        goto LABEL_23;
      }

      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v21;
      v47 = 2112;
      v48 = v13;
      v22 = "%{public}@Allowing cloud operations, current device is the primary resident for home: %@";
      v23 = 1;
      goto LABEL_18;
    }

    if (v20)
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v37;
      v47 = 2112;
      v48 = v13;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Denying cloud operations, current device is not the primary resident for home: %@", buf, 0x16u);
    }

    v23 = 0;
  }

  else
  {
    context = objc_autoreleasePoolPush();
    v36 = v14;
    v19 = HMFGetOSLogHandle();
    v23 = 1;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v21;
      v47 = 2112;
      v48 = v13;
      v22 = "%{public}@Allowing cloud operations, no residents for home: %@";
LABEL_18:
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, v22, buf, 0x16u);
    }
  }

LABEL_23:

  objc_autoreleasePoolPop(context);
  if (!v23 && v43)
  {
    v38 = [v13 residentDeviceManager];
    v39 = [v38 primaryResidentDevice];

    if (v39)
    {
      v23 = 0;
      goto LABEL_31;
    }

    v25 = objc_autoreleasePoolPush();
    v40 = v14;
    v28 = HMFGetOSLogHandle();
    v23 = 1;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v29;
      v47 = 2112;
      v48 = v9;
      v30 = "%{public}@Actually allowing cloud transform for import because the primary resident is unknown for modelID: %@";
      v31 = v28;
      v32 = 22;
      goto LABEL_29;
    }

    goto LABEL_30;
  }

LABEL_31:

  v41 = *MEMORY[0x277D85DE8];
  return v23;
}

- (void)relaunchAfterDelay:(double)a3
{
  v4 = dispatch_time(0, (a3 * 1000000000.0));
  v5 = [(HMDMainDriver *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__HMDMainDriver_relaunchAfterDelay___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_after(v4, v5, block);
}

- (void)relaunch
{
  v3 = [(HMDMainDriver *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__HMDMainDriver_relaunch__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)relaunchHomed
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMainDriver *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = +[HMDLaunchHandler sharedHandler];
  v5 = objc_alloc(MEMORY[0x277CCAD78]);
  v6 = [v5 initWithUUIDString:*MEMORY[0x277CD23C8]];
  [v4 registerRelaunchClientWithUUID:v6];

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v10;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Exiting...", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  _Exit(0);
}

- (void)start
{
  v547[1] = *MEMORY[0x277D85DE8];
  v489 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"HMDMainDriver.start" parent:0 options:1];
  if (isFirstLaunchAfterBoot_onceToken != -1)
  {
    dispatch_once(&isFirstLaunchAfterBoot_onceToken, &__block_literal_global_834);
  }

  v479 = [[HMDLaunchEvent alloc] initWithFirstLaunchAfterBoot:isFirstLaunchAfterBoot_firstLaunchAfterBoot];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    *&buf[4] = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@homed launched with ROAR Enabled", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = objc_autoreleasePoolPush();
  v487 = v4;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = HMFBooleanToString();
    v11 = HMFBooleanToString();
    *buf = 138545410;
    *&buf[4] = v9;
    *&buf[12] = 2114;
    *&buf[14] = @"mainDriverStart";
    *&buf[22] = 2112;
    v507 = @"Starting homed";
    *v508 = 2114;
    *&v508[2] = @"state";
    v509 = 2112;
    v510 = @"start";
    v511 = 2114;
    v512 = @"isHH2";
    v513 = 2112;
    v514 = v10;
    v515 = 2114;
    v516 = @"isFirstLaunchAfterBoot";
    v517 = 2112;
    v518 = v11;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x5Cu);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [MEMORY[0x277D17DE8] sharedInstance];
  v13 = objc_alloc(MEMORY[0x277D17DF8]);
  v14 = HMFBooleanToString();
  v15 = HMFBooleanToString();
  v16 = HMDTaggedLoggingCreateDictionary();
  v17 = [v13 initWithTag:@"mainDriverStart" data:{v16, @"state", @"start", @"isHH2", v14, @"isFirstLaunchAfterBoot", v15}];
  v18 = [v489 tagProcessorList];
  [v12 submitTaggedEvent:v17 processorList:v18];

  v19 = v487[1];
  if (os_signpost_enabled(v19))
  {
    v20 = HMFBooleanToString();
    *buf = 138412290;
    *&buf[4] = v20;
    _os_signpost_emit_with_name_impl(&dword_229538000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MainDriverStart", "isRoarEnabled=%{signpost.description:attribute}@ ", buf, 0xCu);
  }

  v484 = +[HMDFeaturesDataSource defaultDataSource];
  if ([v484 isDemoModeV2Enabled] && isDemoModeV2Active())
  {
    v475 = isCloudKitRequiredForDemoModeV2() ^ 1;
    v21 = 1;
  }

  else
  {
    v21 = 0;
    v475 = 0;
  }

  signal(15, 0);
  if (isInternalBuild())
  {
    +[HMDMemoryDiagnostic configureMemoryDiagnostic];
  }

  v22 = objc_autoreleasePoolPush();
  HMFUptime();
  v24 = v23;
  v25 = objc_autoreleasePoolPush();
  v26 = v487;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v28 = HMFGetLogIdentifier();
    *buf = 138544386;
    *&buf[4] = v28;
    *&buf[12] = 2114;
    *&buf[14] = @"mainDriverStart";
    *&buf[22] = 2112;
    v507 = @"Config cleanup start";
    *v508 = 2114;
    *&v508[2] = @"state";
    v509 = 2112;
    v510 = @"mainDriverConfigCleanup";
    _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEBUG, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v25);
  v29 = [MEMORY[0x277D17DE8] sharedInstance];
  v30 = objc_alloc(MEMORY[0x277D17DF8]);
  v546 = @"state";
  v547[0] = @"mainDriverConfigCleanup";
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v547 forKeys:&v546 count:1];
  v32 = [v30 initWithTag:@"mainDriverStart" data:v31];
  v33 = [v489 tagProcessorList];
  [v29 submitTaggedEvent:v32 processorList:v33];

  +[HMDResetConfigPostCleanup performAnyPostCleanupStepsIfNecessary];
  v34 = objc_autoreleasePoolPush();
  v35 = v26;
  v36 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    v37 = HMFGetLogIdentifier();
    v38 = MEMORY[0x277CCACA8];
    HMFUptime();
    v40 = [v38 stringWithFormat:@"%.3f", v39 - v24];
    *buf = 138544898;
    *&buf[4] = v37;
    *&buf[12] = 2114;
    *&buf[14] = @"mainDriverStart";
    *&buf[22] = 2112;
    v507 = @"Config cleanup done";
    *v508 = 2114;
    *&v508[2] = @"state";
    v509 = 2112;
    v510 = @"mainDriverConfigCleanupDone";
    v511 = 2114;
    v512 = @"duration";
    v513 = 2112;
    v514 = v40;
    _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@", buf, 0x48u);
  }

  objc_autoreleasePoolPop(v34);
  v41 = [MEMORY[0x277D17DE8] sharedInstance];
  v42 = objc_alloc(MEMORY[0x277D17DF8]);
  v43 = MEMORY[0x277CCACA8];
  HMFUptime();
  v45 = [v43 stringWithFormat:@"%.3f", v44 - v24];
  v46 = HMDTaggedLoggingCreateDictionary();
  v47 = [v42 initWithTag:@"mainDriverStart" data:{v46, @"state", @"mainDriverConfigCleanupDone", @"duration", v45}];
  v48 = [v489 tagProcessorList];
  [v41 submitTaggedEvent:v47 processorList:v48];

  objc_autoreleasePoolPop(v22);
  HMFUptime();
  v50 = v49;
  v51 = objc_autoreleasePoolPush();
  v52 = v35;
  v53 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
  {
    v54 = HMFGetLogIdentifier();
    *buf = 138544386;
    *&buf[4] = v54;
    *&buf[12] = 2114;
    *&buf[14] = @"mainDriverStart";
    *&buf[22] = 2112;
    v507 = @"Initialize paths and utilities";
    *v508 = 2114;
    *&v508[2] = @"state";
    v509 = 2112;
    v510 = @"mainDriverSetupPaths";
    _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_DEBUG, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v51);
  v55 = [MEMORY[0x277D17DE8] sharedInstance];
  v56 = objc_alloc(MEMORY[0x277D17DF8]);
  v544 = @"state";
  v545 = @"mainDriverSetupPaths";
  v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v545 forKeys:&v544 count:1];
  v58 = [v56 initWithTag:@"mainDriverStart" data:v57];
  v59 = [v489 tagProcessorList];
  [v55 submitTaggedEvent:v58 processorList:v59];

  [v52 registerXPCEventStreamHandlers];
  v60 = +[HMDBackgroundTaskManager sharedManager];
  [v60 configure];

  if (MKBDeviceUnlockedSinceBoot())
  {
    [MEMORY[0x277D0F8B0] setClassMappingForNSCoder];
    [v52 initiateLocaleMonitoring];
    if (initializePaths_onceToken == -1)
    {
      if (!v21)
      {
        goto LABEL_26;
      }
    }

    else
    {
      dispatch_once(&initializePaths_onceToken, &__block_literal_global_82738);
      if (!v21)
      {
        goto LABEL_26;
      }
    }

    if (shouldLoadDemoModeFromBackup())
    {
      +[HMDDemoModeManagerFactory loadDemoModeConfiguration];
    }

LABEL_26:
    +[HMDDatabase registerQueries];
    +[HMDHomeData configureKeyedArchiverClassMappings];
    v61 = objc_autoreleasePoolPush();
    v62 = v52;
    v63 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
    {
      v64 = HMFGetLogIdentifier();
      v65 = MEMORY[0x277CCACA8];
      HMFUptime();
      v67 = [v65 stringWithFormat:@"%.3f", v66 - v50];
      *buf = 138544898;
      *&buf[4] = v64;
      *&buf[12] = 2114;
      *&buf[14] = @"mainDriverStart";
      *&buf[22] = 2112;
      v507 = @"Initialized paths and utilities";
      *v508 = 2114;
      *&v508[2] = @"state";
      v509 = 2112;
      v510 = @"mainDriverSetupPathsDone";
      v511 = 2114;
      v512 = @"duration";
      v513 = 2112;
      v514 = v67;
      _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@", buf, 0x48u);
    }

    objc_autoreleasePoolPop(v61);
    v68 = [MEMORY[0x277D17DE8] sharedInstance];
    v69 = objc_alloc(MEMORY[0x277D17DF8]);
    v70 = MEMORY[0x277CCACA8];
    HMFUptime();
    v72 = [v70 stringWithFormat:@"%.3f", v71 - v50];
    v73 = HMDTaggedLoggingCreateDictionary();
    v74 = [v69 initWithTag:@"mainDriverStart" data:{v73, @"state", @"mainDriverSetupPathsDone", @"duration", v72}];
    v75 = [v489 tagProcessorList];
    [v68 submitTaggedEvent:v74 processorList:v75];

    if (isInternalBuild())
    {
      v76 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v541 = @"com.apple.CoreData.ConcurrencyDebug";
      v542 = MEMORY[0x277CBEC38];
      v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v542 forKeys:&v541 count:1];
      [v76 registerDefaults:v77];
    }

    HMFUptime();
    v79 = v78;
    v80 = objc_autoreleasePoolPush();
    v81 = v62;
    v82 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
    {
      v83 = HMFGetLogIdentifier();
      *buf = 138544386;
      *&buf[4] = v83;
      *&buf[12] = 2114;
      *&buf[14] = @"mainDriverStart";
      *&buf[22] = 2112;
      v507 = @"Checked migration record";
      *v508 = 2114;
      *&v508[2] = @"state";
      v509 = 2112;
      v510 = @"mainDriverCheckMigrationRecord";
      _os_log_impl(&dword_229538000, v82, OS_LOG_TYPE_DEBUG, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v80);
    v84 = [MEMORY[0x277D17DE8] sharedInstance];
    v85 = objc_alloc(MEMORY[0x277D17DF8]);
    v539 = @"state";
    v540 = @"mainDriverCheckMigrationRecord";
    v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v540 forKeys:&v539 count:1];
    v87 = [v85 initWithTag:@"mainDriverStart" data:v86];
    v88 = [v489 tagProcessorList];
    [v84 submitTaggedEvent:v87 processorList:v88];

    v482 = +[HMDHH2MigratorRecord singleRecord];
    v89 = [v482 isMigrationInProgress];
    if (v475)
    {
      v90 = objc_autoreleasePoolPush();
      v91 = v81;
      v92 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
      {
        v93 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v93;
        _os_log_impl(&dword_229538000, v92, OS_LOG_TYPE_INFO, "%{public}@[DemoMode] Using CoreData without live CK", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v90);
    }

    else
    {
      if (!v89)
      {
        v485 = 0;
        goto LABEL_45;
      }

      if (([v482 dryRun] & 1) == 0 && !objc_msgSend(v482, "migrateFromTestDirectory"))
      {
        v102 = 1;
        goto LABEL_43;
      }
    }

    v100 = +[HMDCoreData sharedInstanceWithoutLiveCloudKit];
    v101 = v81[7];
    v81[7] = v100;

    v102 = v475 ^ 1;
LABEL_43:
    v485 = v102;
LABEL_45:
    v103 = objc_autoreleasePoolPush();
    v104 = v81;
    v105 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
    {
      v106 = HMFGetLogIdentifier();
      v107 = MEMORY[0x277CCACA8];
      HMFUptime();
      v109 = [v107 stringWithFormat:@"%.3f", v108 - v79];
      v110 = HMFBooleanToString();
      *buf = 138545410;
      *&buf[4] = v106;
      *&buf[12] = 2114;
      *&buf[14] = @"mainDriverStart";
      *&buf[22] = 2112;
      v507 = @"Checked migration record";
      *v508 = 2114;
      *&v508[2] = @"state";
      v509 = 2112;
      v510 = @"mainDriverCheckedMigrationRecord";
      v511 = 2114;
      v512 = @"duration";
      v513 = 2112;
      v514 = v109;
      v515 = 2114;
      v516 = @"migrationInProgress";
      v517 = 2112;
      v518 = v110;
      _os_log_impl(&dword_229538000, v105, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x5Cu);
    }

    objc_autoreleasePoolPop(v103);
    v111 = [MEMORY[0x277D17DE8] sharedInstance];
    v112 = objc_alloc(MEMORY[0x277D17DF8]);
    v113 = MEMORY[0x277CCACA8];
    HMFUptime();
    v115 = [v113 stringWithFormat:@"%.3f", v114 - v79];
    v116 = HMFBooleanToString();
    v117 = HMDTaggedLoggingCreateDictionary();
    v118 = [v112 initWithTag:@"mainDriverStart" data:{v117, @"state", @"mainDriverCheckedMigrationRecord", @"duration", v115, @"migrationInProgress", v116}];
    v119 = [v489 tagProcessorList];
    [v111 submitTaggedEvent:v118 processorList:v119];

    if (!v104[7])
    {
      HMFUptime();
      v121 = v120;
      v122 = objc_autoreleasePoolPush();
      v123 = v104;
      v124 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v124, OS_LOG_TYPE_DEBUG))
      {
        v125 = HMFGetLogIdentifier();
        *buf = 138544386;
        *&buf[4] = v125;
        *&buf[12] = 2114;
        *&buf[14] = @"mainDriverStart";
        *&buf[22] = 2112;
        v507 = @"Setup CoreData";
        *v508 = 2114;
        *&v508[2] = @"state";
        v509 = 2112;
        v510 = @"mainDriverSetupCDDone";
        _os_log_impl(&dword_229538000, v124, OS_LOG_TYPE_DEBUG, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);
      }

      objc_autoreleasePoolPop(v122);
      v126 = [MEMORY[0x277D17DE8] sharedInstance];
      v127 = objc_alloc(MEMORY[0x277D17DF8]);
      v537 = @"state";
      v538 = @"mainDriverSetupCDDone";
      v128 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v538 forKeys:&v537 count:1];
      v129 = [v127 initWithTag:@"mainDriverStart" data:v128];
      v130 = [v489 tagProcessorList];
      [v126 submitTaggedEvent:v129 processorList:v130];

      v131 = +[HMDCoreData sharedInstance];
      v132 = v104[7];
      v104[7] = v131;

      v133 = objc_autoreleasePoolPush();
      v134 = v123;
      v135 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v135, OS_LOG_TYPE_INFO))
      {
        v136 = HMFGetLogIdentifier();
        v137 = MEMORY[0x277CCACA8];
        HMFUptime();
        v139 = [v137 stringWithFormat:@"%.3f", v138 - v121];
        *buf = 138544898;
        *&buf[4] = v136;
        *&buf[12] = 2114;
        *&buf[14] = @"mainDriverStart";
        *&buf[22] = 2112;
        v507 = @"Setup CoreData done";
        *v508 = 2114;
        *&v508[2] = @"state";
        v509 = 2112;
        v510 = @"mainDriverSetupCDDone";
        v511 = 2114;
        v512 = @"duration";
        v513 = 2112;
        v514 = v139;
        _os_log_impl(&dword_229538000, v135, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@", buf, 0x48u);
      }

      objc_autoreleasePoolPop(v133);
      v140 = [MEMORY[0x277D17DE8] sharedInstance];
      v141 = objc_alloc(MEMORY[0x277D17DF8]);
      v142 = MEMORY[0x277CCACA8];
      HMFUptime();
      v144 = [v142 stringWithFormat:@"%.3f", v143 - v121];
      v145 = HMDTaggedLoggingCreateDictionary();
      v146 = [v141 initWithTag:@"mainDriverStart" data:{v145, @"state", @"mainDriverSetupCDDone", @"duration", v144}];
      v147 = [v489 tagProcessorList];
      [v140 submitTaggedEvent:v146 processorList:v147];
    }

    HMFUptime();
    v149 = v148;
    v150 = objc_autoreleasePoolPush();
    v151 = v104;
    v152 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v152, OS_LOG_TYPE_DEBUG))
    {
      v153 = HMFGetLogIdentifier();
      *buf = 138544386;
      *&buf[4] = v153;
      *&buf[12] = 2114;
      *&buf[14] = @"mainDriverStart";
      *&buf[22] = 2112;
      v507 = @"Check working store for Home Manager";
      *v508 = 2114;
      *&v508[2] = @"state";
      v509 = 2112;
      v510 = @"mainDriverCheckWorkingStore";
      _os_log_impl(&dword_229538000, v152, OS_LOG_TYPE_DEBUG, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v150);
    v154 = [MEMORY[0x277D17DE8] sharedInstance];
    v155 = objc_alloc(MEMORY[0x277D17DF8]);
    v535 = @"state";
    v536 = @"mainDriverCheckWorkingStore";
    v156 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v536 forKeys:&v535 count:1];
    v157 = [v155 initWithTag:@"mainDriverStart" data:v156];
    v158 = [v489 tagProcessorList];
    [v154 submitTaggedEvent:v157 processorList:v158];

    [HMDHomeManager makeSureHomeManagerExistInWorkingStore:v104[7]];
    v159 = objc_autoreleasePoolPush();
    v160 = v151;
    v161 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v161, OS_LOG_TYPE_INFO))
    {
      v162 = HMFGetLogIdentifier();
      v163 = MEMORY[0x277CCACA8];
      HMFUptime();
      v165 = [v163 stringWithFormat:@"%.3f", v164 - v149];
      *buf = 138544898;
      *&buf[4] = v162;
      *&buf[12] = 2114;
      *&buf[14] = @"mainDriverStart";
      *&buf[22] = 2112;
      v507 = @"Checked working store for Home Manager";
      *v508 = 2114;
      *&v508[2] = @"state";
      v509 = 2112;
      v510 = @"mainDriverCheckWorkingStoreDone";
      v511 = 2114;
      v512 = @"duration";
      v513 = 2112;
      v514 = v165;
      _os_log_impl(&dword_229538000, v161, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@", buf, 0x48u);
    }

    objc_autoreleasePoolPop(v159);
    v166 = [MEMORY[0x277D17DE8] sharedInstance];
    v167 = objc_alloc(MEMORY[0x277D17DF8]);
    v168 = MEMORY[0x277CCACA8];
    HMFUptime();
    v170 = [v168 stringWithFormat:@"%.3f", v169 - v149];
    v171 = HMDTaggedLoggingCreateDictionary();
    v172 = [v167 initWithTag:@"mainDriverStart" data:{v171, @"state", @"mainDriverCheckWorkingStoreDone", @"duration", v170}];
    v173 = [v489 tagProcessorList];
    [v166 submitTaggedEvent:v172 processorList:v173];

    v174 = [v160 coreData];
    [v174 applyInitialImportVoucherIfNeeded];

    v175 = objc_autoreleasePoolPush();
    if (v485)
    {
      v480 = +[HMDCoreDataCloudTransform sharedInstance];
      [v480 setDelegate:v160];
      HMFUptime();
      v177 = v176;
      v178 = objc_autoreleasePoolPush();
      v179 = v160;
      v180 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v180, OS_LOG_TYPE_DEBUG))
      {
        v181 = HMFGetLogIdentifier();
        *buf = 138544386;
        *&buf[4] = v181;
        *&buf[12] = 2114;
        *&buf[14] = @"mainDriverStart";
        *&buf[22] = 2112;
        v507 = @"Check for migration status";
        *v508 = 2114;
        *&v508[2] = @"state";
        v509 = 2112;
        v510 = @"mainDriverCheckMigrationStatus";
        _os_log_impl(&dword_229538000, v180, OS_LOG_TYPE_DEBUG, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);
      }

      objc_autoreleasePoolPop(v178);
      v182 = [MEMORY[0x277D17DE8] sharedInstance];
      v183 = objc_alloc(MEMORY[0x277D17DF8]);
      v533 = @"state";
      v534 = @"mainDriverCheckMigrationStatus";
      v184 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v534 forKeys:&v533 count:1];
      v185 = [v183 initWithTag:@"mainDriverStart" data:v184];
      v186 = [v489 tagProcessorList];
      [v182 submitTaggedEvent:v185 processorList:v186];

      v187 = objc_alloc_init(HMDHH2Migrator);
      if (![(HMDHH2Migrator *)v187 startMigrationIfNeeded])
      {
        [HMDHH2MigrationStateLogger recordMigrationEnd:0];
        [HMDResetConfigPostCleanup writePostCleanupRecordToRemoveAllCoreDataFilesWithReason:3];
        v467 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2711];
        [HMDHH2MigratorRecord recordMigrationFailureWithError:v467];

        _Exit(2);
      }

      v188 = [v179 coreData];
      [v188 expireStoreSetupVouchers];

      v189 = objc_autoreleasePoolPush();
      v190 = v179;
      v191 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v191, OS_LOG_TYPE_INFO))
      {
        v192 = HMFGetLogIdentifier();
        v193 = MEMORY[0x277CCACA8];
        HMFUptime();
        v195 = [v193 stringWithFormat:@"%.3f", v194 - v177];
        v196 = [MEMORY[0x277CCABB0] numberWithBool:1];
        *buf = 138545410;
        *&buf[4] = v192;
        *&buf[12] = 2114;
        *&buf[14] = @"mainDriverStart";
        *&buf[22] = 2112;
        v507 = @"Checked for migration status";
        *v508 = 2114;
        *&v508[2] = @"state";
        v509 = 2112;
        v510 = @"mainDriverCheckedMigrationStatus";
        v511 = 2114;
        v512 = @"duration";
        v513 = 2112;
        v514 = v195;
        v515 = 2114;
        v516 = @"success";
        v517 = 2112;
        v518 = v196;
        _os_log_impl(&dword_229538000, v191, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x5Cu);
      }

      objc_autoreleasePoolPop(v189);
      v197 = [MEMORY[0x277D17DE8] sharedInstance];
      v198 = objc_alloc(MEMORY[0x277D17DF8]);
      v199 = MEMORY[0x277CCACA8];
      HMFUptime();
      v201 = [v199 stringWithFormat:@"%.3f", v200 - v177];
      v202 = [MEMORY[0x277CCABB0] numberWithBool:1];
      v203 = HMDTaggedLoggingCreateDictionary();
      v204 = [v198 initWithTag:@"mainDriverStart" data:{v203, @"state", @"mainDriverCheckedMigrationStatus", @"duration", v201, @"success", v202}];
      v205 = [v489 tagProcessorList];
      [v197 submitTaggedEvent:v204 processorList:v205];
    }

    else
    {
      v480 = 0;
    }

    objc_autoreleasePoolPop(v175);

    HMFUptime();
    v207 = v206;
    v208 = objc_autoreleasePoolPush();
    v209 = v160;
    v210 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v210, OS_LOG_TYPE_DEBUG))
    {
      v211 = HMFGetLogIdentifier();
      *buf = 138544386;
      *&buf[4] = v211;
      *&buf[12] = 2114;
      *&buf[14] = @"mainDriverStart";
      *&buf[22] = 2112;
      v507 = @"Init capabilities";
      *v508 = 2114;
      *&v508[2] = @"state";
      v509 = 2112;
      v510 = @"mainDriverSetupCapabilities";
      _os_log_impl(&dword_229538000, v210, OS_LOG_TYPE_DEBUG, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v208);
    v212 = [MEMORY[0x277D17DE8] sharedInstance];
    v213 = objc_alloc(MEMORY[0x277D17DF8]);
    v531 = @"state";
    v532 = @"mainDriverSetupCapabilities";
    v214 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v532 forKeys:&v531 count:1];
    v215 = [v213 initWithTag:@"mainDriverStart" data:v214];
    v216 = [v489 tagProcessorList];
    [v212 submitTaggedEvent:v215 processorList:v216];

    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __initializeCapabilitiesAndTimeouts_block_invoke;
    v507 = &unk_278688B80;
    *v508 = 0;
    if (initializeCapabilitiesAndTimeouts_onceToken != -1)
    {
      dispatch_once(&initializeCapabilitiesAndTimeouts_onceToken, buf);
    }

    initializeMappingsAndPaths();
    v217 = HMCreateHomeKitCacheDirectory();
    v218 = objc_autoreleasePoolPush();
    v219 = v209;
    v220 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v220, OS_LOG_TYPE_INFO))
    {
      v221 = HMFGetLogIdentifier();
      v222 = MEMORY[0x277CCACA8];
      HMFUptime();
      v224 = [v222 stringWithFormat:@"%.3f", v223 - v207];
      *buf = 138544898;
      *&buf[4] = v221;
      *&buf[12] = 2114;
      *&buf[14] = @"mainDriverStart";
      *&buf[22] = 2112;
      v507 = @"Init capabilities done";
      *v508 = 2114;
      *&v508[2] = @"state";
      v509 = 2112;
      v510 = @"mainDriverSetupCapabilitiesDone";
      v511 = 2114;
      v512 = @"duration";
      v513 = 2112;
      v514 = v224;
      _os_log_impl(&dword_229538000, v220, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@", buf, 0x48u);
    }

    objc_autoreleasePoolPop(v218);
    v225 = [MEMORY[0x277D17DE8] sharedInstance];
    v226 = objc_alloc(MEMORY[0x277D17DF8]);
    v227 = MEMORY[0x277CCACA8];
    HMFUptime();
    v229 = [v227 stringWithFormat:@"%.3f", v228 - v207];
    v230 = HMDTaggedLoggingCreateDictionary();
    v231 = [v226 initWithTag:@"mainDriverStart" data:{v230, @"state", @"mainDriverSetupCapabilitiesDone", @"duration", v229}];
    v232 = [v489 tagProcessorList];
    [v225 submitTaggedEvent:v231 processorList:v232];

    v233 = objc_autoreleasePoolPush();
    v234 = v219;
    v235 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v235, OS_LOG_TYPE_DEBUG))
    {
      v236 = HMFGetLogIdentifier();
      v237 = [MEMORY[0x277D0F8D0] sharedPreferences];
      *buf = 138543618;
      *&buf[4] = v236;
      *&buf[12] = 2112;
      *&buf[14] = v237;
      _os_log_impl(&dword_229538000, v235, OS_LOG_TYPE_DEBUG, "%{public}@Preferences: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v233);
    v483 = +[HMDRegistry installGlobalRegistryForDaemon];
    HMFUptime();
    v239 = v238;
    v240 = objc_autoreleasePoolPush();
    v241 = v234;
    v242 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v242, OS_LOG_TYPE_DEBUG))
    {
      v243 = HMFGetLogIdentifier();
      *buf = 138544386;
      *&buf[4] = v243;
      *&buf[12] = 2114;
      *&buf[14] = @"mainDriverStart";
      *&buf[22] = 2112;
      v507 = @"Init accounts and transports";
      *v508 = 2114;
      *&v508[2] = @"state";
      v509 = 2112;
      v510 = @"mainDriverSetupAccountManagers";
      _os_log_impl(&dword_229538000, v242, OS_LOG_TYPE_DEBUG, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v240);
    v244 = [MEMORY[0x277D17DE8] sharedInstance];
    v245 = objc_alloc(MEMORY[0x277D17DF8]);
    v529 = @"state";
    v530 = @"mainDriverSetupAccountManagers";
    v246 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v530 forKeys:&v529 count:1];
    v247 = [v245 initWithTag:@"mainDriverStart" data:v246];
    v248 = [v489 tagProcessorList];
    [v244 submitTaggedEvent:v247 processorList:v248];

    v471 = [v483 idsServiceManager];
    v486 = [v483 appleAccountManager];
    [v483 remoteAccountManager];

    v477 = [v483 accountRegistry];
    [v489 markWithReason:@"Creating Message Transports"];
    v470 = +[HMDXPCMessageTransport defaultTransport];
    v469 = +[HMDSecureRemoteMessageTransport defaultTransport];
    v481 = +[HMDMessageDispatcher defaultDispatcher];
    v474 = +[HMDBulletinBoard sharedBulletinBoard];
    [v489 markWithReason:@"Initialize Metrics Manager"];
    v249 = [HMDMetricsManager alloc];
    v250 = [v474 notificationCenterSettingsProvider];
    v251 = [(HMDMetricsManager *)v249 initWithMessageDispatcher:v481 accountManager:v486 notificationSettingsProvider:v250];
    [v241 setMetricsManager:v251];

    v252 = [v241 metricsManager];
    [v252 start];

    v253 = [v241 metricsManager];
    v254 = [v253 logEventSubmitter];
    [v254 submitLogEvent:v479];

    v255 = [HMDHelper alloc];
    v256 = objc_alloc_init(HMDHelperExternalProtocolImpl);
    v473 = [(HMDHelper *)v255 initWithExternalProtocol:v256];

    [HMDHelper setSharedHelper:v473];
    v257 = objc_autoreleasePoolPush();
    v258 = v241;
    v259 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v259, OS_LOG_TYPE_INFO))
    {
      v260 = HMFGetLogIdentifier();
      v261 = MEMORY[0x277CCACA8];
      HMFUptime();
      v263 = [v261 stringWithFormat:@"%.3f", v262 - v239];
      *buf = 138544898;
      *&buf[4] = v260;
      *&buf[12] = 2114;
      *&buf[14] = @"mainDriverStart";
      *&buf[22] = 2112;
      v507 = @"Init accounts and transports done";
      *v508 = 2114;
      *&v508[2] = @"state";
      v509 = 2112;
      v510 = @"mainDriverSetupAccountManagersDone";
      v511 = 2114;
      v512 = @"duration";
      v513 = 2112;
      v514 = v263;
      _os_log_impl(&dword_229538000, v259, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@", buf, 0x48u);
    }

    objc_autoreleasePoolPop(v257);
    v264 = [MEMORY[0x277D17DE8] sharedInstance];
    v265 = objc_alloc(MEMORY[0x277D17DF8]);
    v266 = MEMORY[0x277CCACA8];
    HMFUptime();
    v268 = [v266 stringWithFormat:@"%.3f", v267 - v239];
    v269 = HMDTaggedLoggingCreateDictionary();
    v270 = [v265 initWithTag:@"mainDriverStart" data:{v269, @"state", @"mainDriverSetupAccountManagersDone", @"duration", v268}];
    v271 = [v489 tagProcessorList];
    [v264 submitTaggedEvent:v270 processorList:v271];

    +[HMDThreadMonitor start];
    [v489 markWithReason:@"Initiating Clips Quota Manager"];
    v272 = objc_autoreleasePoolPush();
    v273 = +[HMDCameraClipsQuotaManager defaultManager];
    [v273 synchronize];

    objc_autoreleasePoolPop(v272);
    if (enableNetworkLogging == 1)
    {
      v274 = objc_autoreleasePoolPush();
      v275 = v258;
      v276 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v276, OS_LOG_TYPE_INFO))
      {
        v277 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v277;
        _os_log_impl(&dword_229538000, v276, OS_LOG_TYPE_INFO, "%{public}@Enabling CFNetwork diagnostics", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v274);
      setenv("CFNETWORK_DIAGNOSTICS", "3", 1);
    }

    [v489 markWithReason:@"Loading Persistent Store"];
    v278 = objc_opt_class();
    v279 = objc_opt_class();
    v280 = NSStringFromClass(v279);
    [HMDBackingStoreSingleton setClass:v278 forClassName:v280];

    HMFUptime();
    v282 = v281;
    v283 = objc_autoreleasePoolPush();
    v284 = v258;
    v285 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v285, OS_LOG_TYPE_INFO))
    {
      v286 = HMFGetLogIdentifier();
      *buf = 138544386;
      *&buf[4] = v286;
      *&buf[12] = 2114;
      *&buf[14] = @"mainDriverStart";
      *&buf[22] = 2112;
      v507 = @"Load Persistent Store";
      *v508 = 2114;
      *&v508[2] = @"state";
      v509 = 2112;
      v510 = @"mainDriverLoadPersistentStore";
      _os_log_impl(&dword_229538000, v285, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v283);
    v287 = [MEMORY[0x277D17DE8] sharedInstance];
    v288 = objc_alloc(MEMORY[0x277D17DF8]);
    v527 = @"state";
    v528 = @"mainDriverLoadPersistentStore";
    v289 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v528 forKeys:&v527 count:1];
    v290 = [v288 initWithTag:@"mainDriverStart" data:v289];
    v291 = [v489 tagProcessorList];
    [v287 submitTaggedEvent:v290 processorList:v291];

    v292 = objc_autoreleasePoolPush();
    +[HMDPersistentStore removeTransactionJournal];
    +[HMDHAPMetadata prepareMetadata];
    v293 = objc_autoreleasePoolPush();
    v294 = v284;
    v295 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v295, OS_LOG_TYPE_INFO))
    {
      v296 = HMFGetLogIdentifier();
      v297 = MEMORY[0x277CCACA8];
      HMFUptime();
      v299 = [v297 stringWithFormat:@"%.3f", v298 - v282];
      v300 = [0 domain];
      v301 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(0, "code")}];
      *buf = 138545922;
      *&buf[4] = v296;
      *&buf[12] = 2114;
      *&buf[14] = @"mainDriverStart";
      *&buf[22] = 2112;
      v507 = @"Loaded Persistent Store";
      *v508 = 2114;
      *&v508[2] = @"state";
      v509 = 2112;
      v510 = @"mainDriverLoadedPersistentStore";
      v511 = 2114;
      v512 = @"duration";
      v513 = 2112;
      v514 = v299;
      v515 = 2114;
      v516 = @"errorDomain";
      v517 = 2112;
      v518 = v300;
      v519 = 2114;
      v520 = @"errorCode";
      v521 = 2112;
      v522 = v301;
      _os_log_impl(&dword_229538000, v295, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x70u);
    }

    objc_autoreleasePoolPop(v293);
    v302 = [MEMORY[0x277D17DE8] sharedInstance];
    v303 = objc_alloc(MEMORY[0x277D17DF8]);
    v304 = MEMORY[0x277CCACA8];
    HMFUptime();
    v306 = [v304 stringWithFormat:@"%.3f", v305 - v282];
    v307 = [0 domain];
    v308 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(0, "code")}];
    v309 = HMDTaggedLoggingCreateDictionary();
    v310 = [v303 initWithTag:@"mainDriverStart" data:{v309, @"state", @"mainDriverLoadedPersistentStore", @"duration", v306, @"errorDomain", v307, @"errorCode", v308}];
    v311 = [v489 tagProcessorList];
    [v302 submitTaggedEvent:v310 processorList:v311];

    objc_autoreleasePoolPop(v292);
    v312 = objc_alloc_init(HMDDeviceSetupConfiguringController);
    [v294 setConfiguringStateController:v312];

    v313 = [v294 configuringStateController];
    [v313 setupRPClient];

    v314 = objc_alloc_init(HMDNetworkInfoController);
    [v294 setNetworkInfoController:v314];

    v315 = [v294 networkInfoController];
    [v315 start];

    v478 = [[HMDDiscoveryController alloc] initWithDiscoveryNeedsAssertion:1];
    [v294 setDiscoveryController:v478];
    [(HMDDiscoveryController *)v478 start];
    v316 = [[HMDSymptomManager alloc] initWithDataSource:v294];
    [v294 setSymptomManager:v316];

    [v489 markWithReason:@"Loading Accounts"];
    v500 = 0;
    v472 = [HMDBackingStore cdlsBackingStoreForHomeManagerWithError:&v500];
    v317 = v500;
    *v543 = v317;
    if (!v472)
    {
      v463 = objc_autoreleasePoolPush();
      v464 = v294;
      v465 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v465, OS_LOG_TYPE_ERROR))
      {
        v466 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v466;
        *&buf[12] = 2112;
        *&buf[14] = v317;
        _os_log_impl(&dword_229538000, v465, OS_LOG_TYPE_ERROR, "%{public}@Unable to open Home Manager BackingStore zone. Unsurvivable: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v463);
      _Exit(1);
    }

    [v486 configureWithBackingStore:?];
    [v489 markWithReason:@"Start Account registry and managers"];
    [v477 start];
    v318 = [v486 isLoggedInToPrimaryAccount];
    v319 = objc_autoreleasePoolPush();
    v320 = v294;
    v321 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v321, OS_LOG_TYPE_INFO))
    {
      v322 = HMFGetLogIdentifier();
      v323 = [MEMORY[0x277CCABB0] numberWithBool:v318];
      *buf = 138544898;
      *&buf[4] = v322;
      *&buf[12] = 2114;
      *&buf[14] = @"mainDriverStart";
      *&buf[22] = 2112;
      v507 = @"Load accounts";
      *v508 = 2114;
      *&v508[2] = @"state";
      v509 = 2112;
      v510 = @"mainDriverLoadAccounts";
      v511 = 2114;
      v512 = @"status";
      v513 = 2112;
      v514 = v323;
      _os_log_impl(&dword_229538000, v321, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@", buf, 0x48u);
    }

    objc_autoreleasePoolPop(v319);
    v324 = [MEMORY[0x277D17DE8] sharedInstance];
    v325 = objc_alloc(MEMORY[0x277D17DF8]);
    v326 = [MEMORY[0x277CCABB0] numberWithBool:v318];
    v327 = HMDTaggedLoggingCreateDictionary();
    v328 = [v325 initWithTag:@"mainDriverStart" data:{v327, @"state", @"mainDriverLoadAccounts", @"status", v326}];
    v329 = [v489 tagProcessorList];
    [v324 submitTaggedEvent:v328 processorList:v329];

    if (v318)
    {
      v330 = v487[1];
      if (os_signpost_enabled(v330))
      {
        *buf = 138412290;
        *&buf[4] = @"AccountDeviceSettled";
        _os_signpost_emit_with_name_impl(&dword_229538000, v330, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AccountDeviceSettled", "reason=%{signpost.description:attribute}@ ", buf, 0xCu);
      }

      [v489 markWithReason:@"Waiting for account to fully settle"];
      v331 = objc_autoreleasePoolPush();
      v332 = v320;
      v333 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v333, OS_LOG_TYPE_DEFAULT))
      {
        v334 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v334;
        _os_log_impl(&dword_229538000, v333, OS_LOG_TYPE_DEFAULT, "%{public}@Waiting for account to fully settle", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v331);
      *out_token = 0;
      HMFUptime();
      v336 = v335;
      v337 = [v486 deviceAccountSettled];
      v468 = [v337 waitForResult:out_token orError:v543 withTimeout:1.79769313e308];

      v338 = objc_autoreleasePoolPush();
      v339 = v332;
      v340 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v340, OS_LOG_TYPE_INFO))
      {
        v341 = HMFGetLogIdentifier();
        v342 = MEMORY[0x277CCACA8];
        HMFUptime();
        v344 = [v342 stringWithFormat:@"%.3f", v343 - v336];
        v345 = [MEMORY[0x277CCABB0] numberWithBool:v468];
        v346 = [*v543 domain];
        v347 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*v543, "code")}];
        *buf = 138546434;
        *&buf[4] = v341;
        *&buf[12] = 2114;
        *&buf[14] = @"mainDriverStart";
        *&buf[22] = 2112;
        v507 = @"Settled account";
        *v508 = 2114;
        *&v508[2] = @"state";
        v509 = 2112;
        v510 = @"mainDriverSettledAccount";
        v511 = 2114;
        v512 = @"duration";
        v513 = 2112;
        v514 = v344;
        v515 = 2114;
        v516 = @"success";
        v517 = 2112;
        v518 = v345;
        v519 = 2114;
        v520 = @"errorDomain";
        v521 = 2112;
        v522 = v346;
        v523 = 2114;
        v524 = @"errorCode";
        v525 = 2112;
        v526 = v347;
        _os_log_impl(&dword_229538000, v340, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x84u);
      }

      objc_autoreleasePoolPop(v338);
      v348 = [MEMORY[0x277D17DE8] sharedInstance];
      v349 = objc_alloc(MEMORY[0x277D17DF8]);
      v350 = MEMORY[0x277CCACA8];
      HMFUptime();
      v352 = [v350 stringWithFormat:@"%.3f", v351 - v336];
      v353 = [MEMORY[0x277CCABB0] numberWithBool:v468];
      v354 = [*v543 domain];
      v355 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*v543, "code")}];
      v356 = HMDTaggedLoggingCreateDictionary();
      v357 = [v349 initWithTag:@"mainDriverStart" data:{v356, @"state", @"mainDriverSettledAccount", @"duration", v352, @"success", v353, @"errorDomain", v354, @"errorCode", v355}];
      v358 = [v489 tagProcessorList];
      [v348 submitTaggedEvent:v357 processorList:v358];

      v359 = objc_autoreleasePoolPush();
      v360 = v339;
      v361 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v361, OS_LOG_TYPE_DEFAULT))
      {
        v362 = HMFGetLogIdentifier();
        v363 = HMFBooleanToString();
        *buf = 138543874;
        *&buf[4] = v362;
        *&buf[12] = 2112;
        *&buf[14] = v363;
        *&buf[22] = 2112;
        v507 = *v543;
        _os_log_impl(&dword_229538000, v361, OS_LOG_TYPE_DEFAULT, "%{public}@Did account settle: %@ error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v359);
      if (v475)
      {
        v364 = 30.0;
      }

      else
      {
        v364 = 1.79769313e308;
      }

      HMFUptime();
      v366 = v365;
      v367 = [v486 currentDeviceSettled];
      v476 = [v367 waitForResult:out_token orError:v543 withTimeout:v364];

      v368 = objc_autoreleasePoolPush();
      v369 = v360;
      v370 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v370, OS_LOG_TYPE_INFO))
      {
        v371 = HMFGetLogIdentifier();
        v372 = MEMORY[0x277CCACA8];
        HMFUptime();
        v374 = [v372 stringWithFormat:@"%.3f", v373 - v366];
        v375 = [MEMORY[0x277CCABB0] numberWithBool:v476];
        v376 = [*v543 domain];
        v377 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*v543, "code")}];
        *buf = 138546434;
        *&buf[4] = v371;
        *&buf[12] = 2114;
        *&buf[14] = @"mainDriverStart";
        *&buf[22] = 2112;
        v507 = @"Settled device";
        *v508 = 2114;
        *&v508[2] = @"state";
        v509 = 2112;
        v510 = @"mainDriverSettledDevice";
        v511 = 2114;
        v512 = @"duration";
        v513 = 2112;
        v514 = v374;
        v515 = 2114;
        v516 = @"success";
        v517 = 2112;
        v518 = v375;
        v519 = 2114;
        v520 = @"errorDomain";
        v521 = 2112;
        v522 = v376;
        v523 = 2114;
        v524 = @"errorCode";
        v525 = 2112;
        v526 = v377;
        _os_log_impl(&dword_229538000, v370, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x84u);
      }

      objc_autoreleasePoolPop(v368);
      v378 = [MEMORY[0x277D17DE8] sharedInstance];
      v379 = objc_alloc(MEMORY[0x277D17DF8]);
      v380 = MEMORY[0x277CCACA8];
      HMFUptime();
      v382 = [v380 stringWithFormat:@"%.3f", v381 - v366];
      v383 = [MEMORY[0x277CCABB0] numberWithBool:v476];
      v384 = [*v543 domain];
      v385 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*v543, "code")}];
      v386 = HMDTaggedLoggingCreateDictionary();
      v387 = [v379 initWithTag:@"mainDriverStart" data:{v386, @"state", @"mainDriverSettledDevice", @"duration", v382, @"success", v383, @"errorDomain", v384, @"errorCode", v385}];
      v388 = [v489 tagProcessorList];
      [v378 submitTaggedEvent:v387 processorList:v388];

      v389 = objc_autoreleasePoolPush();
      v390 = v369;
      v391 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v391, OS_LOG_TYPE_DEFAULT))
      {
        v392 = HMFGetLogIdentifier();
        v393 = HMFBooleanToString();
        *buf = 138543874;
        *&buf[4] = v392;
        *&buf[12] = 2112;
        *&buf[14] = v393;
        *&buf[22] = 2112;
        v507 = *v543;
        _os_log_impl(&dword_229538000, v391, OS_LOG_TYPE_DEFAULT, "%{public}@Did current device settle: %@ error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v389);
      v394 = v487[1];
      if (os_signpost_enabled(v394))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_229538000, v394, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AccountDeviceSettled", "", buf, 2u);
      }
    }

    v395 = [v320 metricsManager];
    v396 = [v395 logEventSubmitter];
    v397 = objc_alloc_init(HMDDeviceAccountResolvedLogEvent);
    [v396 submitLogEvent:v397 error:*v543];

    [v489 markWithReason:@"Creating Accessory Browser"];
    v398 = [[HMDAccessoryBrowser alloc] initWithMessageDispatcher:v481];
    [v320 setAccessoryBrowser:v398];

    v399 = [v320 metricsManager];
    v400 = [MEMORY[0x277CFEBB8] sharedInstance];
    [v399 configureHAPMetricsDispatcher:v400];

    v488 = [MEMORY[0x277CBEA60] array];
    HMFUptime();
    v402 = v401;
    v403 = objc_autoreleasePoolPush();
    v404 = v320;
    v405 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v405, OS_LOG_TYPE_DEBUG))
    {
      v406 = HMFGetLogIdentifier();
      *buf = 138544386;
      *&buf[4] = v406;
      *&buf[12] = 2114;
      *&buf[14] = @"mainDriverStart";
      *&buf[22] = 2112;
      v507 = @"Initializing Home Manager";
      *v508 = 2114;
      *&v508[2] = @"state";
      v509 = 2112;
      v510 = @"mainDriverInitHomeManager";
      _os_log_impl(&dword_229538000, v405, OS_LOG_TYPE_DEBUG, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v403);
    v407 = [MEMORY[0x277D17DE8] sharedInstance];
    v408 = objc_alloc(MEMORY[0x277D17DF8]);
    v504 = @"state";
    v505 = @"mainDriverInitHomeManager";
    v409 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v505 forKeys:&v504 count:1];
    v410 = [v408 initWithTag:@"mainDriverStart" data:v409];
    v411 = [v489 tagProcessorList];
    [v407 submitTaggedEvent:v410 processorList:v411];

    v412 = [HMDHomeManager alloc];
    v413 = [v404 accessoryBrowser];
    v414 = [v481 messageFilterChain];
    v415 = +[HMDIdentityRegistry sharedRegistry];
    v416 = [v404 metricsManager];
    v417 = [v404 configuringStateController];
    v418 = [v404 appleMediaAccessoryDiagnosticInfoController];
    v419 = [v404 currentAccessorySetupMetricDispatcher];
    v420 = [(HMDHomeManager *)v412 initWithMessageDispatcher:v481 accessoryBrowser:v413 messageFilterChain:v414 homeData:0 localDataDecryptionFailed:0 identityRegistry:v415 accountRegistry:v477 metricsManager:v416 configuringStateController:v417 diagnosticInfoController:v418 currentAccessorySetupMetricDispatcher:v419 uncommittedTransactions:v488 featuresDataSource:v484];
    [v404 setHomeManager:v420];

    v421 = objc_autoreleasePoolPush();
    v422 = v404;
    v423 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v423, OS_LOG_TYPE_INFO))
    {
      v424 = HMFGetLogIdentifier();
      v425 = MEMORY[0x277CCACA8];
      HMFUptime();
      v427 = [v425 stringWithFormat:@"%.3f", v426 - v402];
      *buf = 138544898;
      *&buf[4] = v424;
      *&buf[12] = 2114;
      *&buf[14] = @"mainDriverStart";
      *&buf[22] = 2112;
      v507 = @"Initialized Home Manager";
      *v508 = 2114;
      *&v508[2] = @"state";
      v509 = 2112;
      v510 = @"mainDriverInitializedHomeManager";
      v511 = 2114;
      v512 = @"duration";
      v513 = 2112;
      v514 = v427;
      _os_log_impl(&dword_229538000, v423, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@", buf, 0x48u);
    }

    objc_autoreleasePoolPop(v421);
    v428 = [MEMORY[0x277D17DE8] sharedInstance];
    v429 = objc_alloc(MEMORY[0x277D17DF8]);
    v430 = MEMORY[0x277CCACA8];
    HMFUptime();
    v432 = [v430 stringWithFormat:@"%.3f", v431 - v402];
    v433 = HMDTaggedLoggingCreateDictionary();
    v434 = [v429 initWithTag:@"mainDriverStart" data:{v433, @"state", @"mainDriverInitializedHomeManager", @"duration", v432}];
    v435 = [v489 tagProcessorList];
    [v428 submitTaggedEvent:v434 processorList:v435];

    if (!v480)
    {
      v480 = +[HMDCoreDataCloudTransform sharedInstance];
      [v480 setDelegate:v422];
    }

    [v489 markWithReason:@"Initialize Presence Monitor"];
    v436 = [HMDIDSActivityMonitorHomeManagerDataSource alloc];
    v437 = [v422 homeManager];
    v438 = [(HMDIDSActivityMonitorHomeManagerDataSource *)v436 initWithHomeManager:v437 appleAccountManager:v486];

    [v471 setActivityMonitorDataSource:v438];
    if ([v484 isPlannerSupportEnabled])
    {
      v439 = objc_autoreleasePoolPush();
      v440 = v422;
      v441 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v441, OS_LOG_TYPE_INFO))
      {
        v442 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v442;
        _os_log_impl(&dword_229538000, v441, OS_LOG_TYPE_INFO, "%{public}@Initializing and registering with linkd", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v439);
      v443 = objc_alloc(MEMORY[0x277CBA598]);
      v444 = [v443 initWithBundleIdentifier:*MEMORY[0x277CD0020]];
      [v440 setLinkdConnectionListener:v444];
    }

    HMFUptime();
    v446 = v445;
    v447 = objc_autoreleasePoolPush();
    v448 = v422;
    v449 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v449, OS_LOG_TYPE_DEBUG))
    {
      v450 = HMFGetLogIdentifier();
      *buf = 138544386;
      *&buf[4] = v450;
      *&buf[12] = 2114;
      *&buf[14] = @"mainDriverStart";
      *&buf[22] = 2112;
      v507 = @"Starting Home Manager";
      *v508 = 2114;
      *&v508[2] = @"state";
      v509 = 2112;
      v510 = @"mainDriverStartHomeManager";
      _os_log_impl(&dword_229538000, v449, OS_LOG_TYPE_DEBUG, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v447);
    v451 = [MEMORY[0x277D17DE8] sharedInstance];
    v452 = objc_alloc(MEMORY[0x277D17DF8]);
    v502 = @"state";
    v503 = @"mainDriverStartHomeManager";
    v453 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v503 forKeys:&v502 count:1];
    v454 = [v452 initWithTag:@"mainDriverStart" data:v453];
    v455 = [v489 tagProcessorList];
    [v451 submitTaggedEvent:v454 processorList:v455];

    v456 = [v448 homeManager];
    v490[0] = MEMORY[0x277D85DD0];
    v490[1] = 3221225472;
    v490[2] = __22__HMDMainDriver_start__block_invoke_360;
    v490[3] = &unk_278670A80;
    v491 = v489;
    v492 = v448;
    v498 = v446;
    v457 = v481;
    v493 = v457;
    v458 = v469;
    v494 = v458;
    v459 = v474;
    v495 = v459;
    v460 = v470;
    v496 = v460;
    v461 = v438;
    v497 = v461;
    [v456 startWithCompletionHandler:v490];

    goto LABEL_120;
  }

  out_token[0] = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v507) = 0;
  v94 = objc_autoreleasePoolPush();
  v95 = v52;
  v96 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
  {
    v97 = HMFGetLogIdentifier();
    *v543 = 138543362;
    *&v543[4] = v97;
    _os_log_impl(&dword_229538000, v96, OS_LOG_TYPE_INFO, "%{public}@Can't load data until unlocked -- stopping", v543, 0xCu);
  }

  objc_autoreleasePoolPop(v94);
  v98 = MEMORY[0x277D85CD0];
  v99 = MEMORY[0x277D85CD0];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __22__HMDMainDriver_start__block_invoke;
  handler[3] = &unk_2786711A8;
  handler[4] = v95;
  handler[5] = buf;
  notify_register_dispatch("com.apple.mobile.keybagd.lock_status", out_token, v98, handler);

  _Block_object_dispose(buf, 8);
LABEL_120:

  v462 = *MEMORY[0x277D85DE8];
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
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Notified that device has been unlocked for the first time", &v11, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      [*(a1 + 32) start];
      result = notify_cancel(a2);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void __22__HMDMainDriver_start__block_invoke_360(uint64_t a1)
{
  [*(a1 + 32) markWithReason:@"Started Home Manager"];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __22__HMDMainDriver_start__block_invoke_2;
  block[3] = &unk_278670A80;
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
  v103 = *MEMORY[0x277D85DE8];
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
    v90 = v6;
    v91 = 2114;
    v92 = @"mainDriverStart";
    v93 = 2112;
    v94 = @"Home manager started. Configuring ...";
    v95 = 2114;
    v96 = @"state";
    v97 = 2112;
    v98 = @"mainDriverStartedHomeManager";
    v99 = 2114;
    v100 = @"duration";
    v101 = 2112;
    v102 = v9;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@", buf, 0x48u);

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

  v24 = *(a1 + 56);
  v25 = [*(a1 + 32) homeManager];
  v26 = [v25 userDeviceCapabilitiesRequestManager];
  v27 = [*(a1 + 32) homeManager];
  v28 = [*(a1 + 32) homeManager];
  [v24 configureWithUserDeviceCapabilitiesRequestManager:v26 deviceResidencyProvider:v27 remoteMessageListener:v28];

  v29 = [*(a1 + 32) accessoryBrowser];
  v30 = [*(a1 + 32) homeManager];
  [v29 configureWithHomeManager:v30];

  v31 = *(a1 + 64);
  v32 = [*(a1 + 32) homeManager];
  [v31 configureWithHomeManager:v32];

  [*(a1 + 64) refreshHomeBadgeNumber];
  HMFUptime();
  v34 = v33;
  v35 = objc_autoreleasePoolPush();
  v36 = *(a1 + 32);
  v37 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    v38 = HMFGetLogIdentifier();
    *buf = 138544386;
    v90 = v38;
    v91 = 2114;
    v92 = @"mainDriverStart";
    v93 = 2112;
    v94 = @"Starting XPC message transport";
    v95 = 2114;
    v96 = @"state";
    v97 = 2112;
    v98 = @"mainDriverStartXPCTransport";
    _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_DEBUG, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v35);
  v39 = [MEMORY[0x277D17DE8] sharedInstance];
  v40 = objc_alloc(MEMORY[0x277D17DF8]);
  v87 = @"state";
  v88 = @"mainDriverStartXPCTransport";
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
  v42 = [v40 initWithTag:@"mainDriverStart" data:v41];
  v43 = [*(a1 + 40) tagProcessorList];
  [v39 submitTaggedEvent:v42 processorList:v43];

  [*(a1 + 72) start];
  v44 = +[HMDXPCMessageTransport accessorySetupTransport];
  [v44 start];

  v45 = objc_autoreleasePoolPush();
  v46 = *(a1 + 32);
  v47 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
  {
    v48 = HMFGetLogIdentifier();
    v49 = MEMORY[0x277CCACA8];
    HMFUptime();
    v51 = [v49 stringWithFormat:@"%.3f", v50 - v34];
    *buf = 138544898;
    v90 = v48;
    v91 = 2114;
    v92 = @"mainDriverStart";
    v93 = 2112;
    v94 = @"Started XPC message transport";
    v95 = 2114;
    v96 = @"state";
    v97 = 2112;
    v98 = @"mainDriverStartXPCTransportDone";
    v99 = 2114;
    v100 = @"duration";
    v101 = 2112;
    v102 = v51;
    _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@", buf, 0x48u);
  }

  objc_autoreleasePoolPop(v45);
  v52 = [MEMORY[0x277D17DE8] sharedInstance];
  v53 = objc_alloc(MEMORY[0x277D17DF8]);
  v54 = MEMORY[0x277CCACA8];
  HMFUptime();
  v56 = [v54 stringWithFormat:@"%.3f", v55 - v34];
  v57 = HMDTaggedLoggingCreateDictionary();
  v58 = [v53 initWithTag:@"mainDriverStart" data:{v57, @"state", @"mainDriverStartXPCTransportDone", @"duration", v56}];
  v59 = [*(a1 + 40) tagProcessorList];
  [v52 submitTaggedEvent:v58 processorList:v59];

  v60 = [*(a1 + 32) metricsManager];
  v61 = [v60 logEventSubmitter];
  v62 = objc_alloc_init(HMDXPCTransportStartedLogEvent);
  [v61 submitLogEvent:v62];

  [*(a1 + 80) start];
  v63 = +[HMDIdentityRegistry sharedRegistry];
  v64 = [*(a1 + 32) homeManager];
  [v63 configureWithHomeManager:v64];

  HMFUptime();
  v66 = v65;
  v67 = objc_autoreleasePoolPush();
  v68 = *(a1 + 32);
  v69 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
  {
    v70 = HMFGetLogIdentifier();
    *buf = 138544386;
    v90 = v70;
    v91 = 2114;
    v92 = @"mainDriverStart";
    v93 = 2112;
    v94 = @"Starting remote message transports";
    v95 = 2114;
    v96 = @"state";
    v97 = 2112;
    v98 = @"mainDriverStartRemoteTransports";
    _os_log_impl(&dword_229538000, v69, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v67);
  v71 = [MEMORY[0x277D17DE8] sharedInstance];
  v72 = objc_alloc(MEMORY[0x277D17DF8]);
  v85 = @"state";
  v86 = @"mainDriverStartRemoteTransports";
  v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
  v74 = [v72 initWithTag:@"mainDriverStart" data:v73];
  v75 = [*(a1 + 40) tagProcessorList];
  [v71 submitTaggedEvent:v74 processorList:v75];

  v76 = [*(a1 + 56) start];
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = __22__HMDMainDriver_start__block_invoke_377;
  v82[3] = &unk_27866EE50;
  v77 = *(a1 + 40);
  v82[4] = *(a1 + 32);
  v84 = v66;
  v83 = v77;
  v78 = [v76 then:v82];
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = __22__HMDMainDriver_start__block_invoke_382;
  v81[3] = &unk_27868A700;
  v81[4] = *(a1 + 32);
  v79 = [v78 finally:v81];

  v80 = *MEMORY[0x277D85DE8];
}

uint64_t __22__HMDMainDriver_start__block_invoke_377(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@", buf, 0x48u);
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

uint64_t __22__HMDMainDriver_start__block_invoke_382(uint64_t a1)
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
  block[2] = __22__HMDMainDriver_start__block_invoke_2_384;
  block[3] = &unk_27868A728;
  block[4] = *(a1 + 32);
  dispatch_after(v6, v7, block);

  return 1;
}

void __22__HMDMainDriver_start__block_invoke_2_384(uint64_t a1)
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@It has now been one minute since the home manager finished starting up", &v9, 0xCu);
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
  v3 = [(HMDMainDriver *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__HMDMainDriver_localeChanged__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
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
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Locale notification received but locale identifier unchanged (%@), skipping restart", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Locale changed from %@ to %@ - clearing followup items before restarting", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    [*(a1 + 32) setCachedLocaleIdentifier:v3];
    v13 = +[HMDDeviceSetupManager sharedManager];
    v14 = [v13 followUpManager];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __30__HMDMainDriver_localeChanged__block_invoke_190;
    v16[3] = &unk_278686028;
    v16[4] = *(a1 + 32);
    [v14 removeAllFollowUpItemsWithCompletion:v16];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __30__HMDMainDriver_localeChanged__block_invoke_190(uint64_t a1, uint64_t a2, void *a3)
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
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Locale changed - restarting", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [*(a1 + 32) relaunch];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)initiateLocaleMonitoring
{
  if (+[HMDDeviceCapabilities supportsLocalization])
  {
    v3 = [MEMORY[0x277CBEAF8] currentLocale];
    v4 = [v3 localeIdentifier];
    [(HMDMainDriver *)self setCachedLocaleIdentifier:v4];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, __languageChanged, @"AppleLanguagePreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

- (void)setCachedLocaleIdentifier:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_lock lock];
  lock = self->_lock;
  cachedLocaleIdentifier = self->_cachedLocaleIdentifier;
  self->_cachedLocaleIdentifier = v4;
  v7 = v4;

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
  if (logCategory__hmf_once_t56 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t56, &__block_literal_global_389);
  }

  v3 = logCategory__hmf_once_v57;

  return v3;
}

void __28__HMDMainDriver_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v57;
  logCategory__hmf_once_v57 = v1;
}

void __23__HMDMainDriver_driver__block_invoke()
{
  v0 = objc_alloc_init(HMDMainDriver);
  v1 = driver_singletonDriver;
  driver_singletonDriver = v0;
}

+ (id)getLocalStoreFrom:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = a1;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = sqlitePath;
      v21 = 138543618;
      v22 = v8;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Going to use default location : %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v4 = sqlitePath;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = a1;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v21 = 138543618;
    v22 = v13;
    v23 = 2112;
    v24 = v4;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Using archive from %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = [[HMDBackingStoreLocal alloc] initWithDatastore:v4];
  if (!v14)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v11;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v18;
      v23 = 2112;
      v24 = v4;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unable to create our local storage from path [%@]", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)loadHomeDataFromLocalStore:(id *)a3 decryptionFailed:(BOOL *)a4
{
  v6 = objc_opt_class();

  return [v6 loadHomeDataFromLocalStore:a3 fromLocation:0 decryptionFailed:a4 forHH2Migration:0];
}

@end