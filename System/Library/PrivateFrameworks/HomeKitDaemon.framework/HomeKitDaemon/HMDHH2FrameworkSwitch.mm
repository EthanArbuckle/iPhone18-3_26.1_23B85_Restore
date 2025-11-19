@interface HMDHH2FrameworkSwitch
+ (id)errorFromHMDCKAccountStatus:(int64_t)a3;
+ (id)logCategory;
+ (void)removeHH2EnablementPreferenceKey;
+ (void)setHH2EnablementPreferenceKey:(BOOL)a3;
+ (void)switchBackToHH1AndDoNotLaunchDueToPrimaryAccountRemoval;
- (BOOL)_areWeRunningInRightEnvironment:(BOOL)a3;
- (BOOL)checkExistenceOfHH2SentinelZone;
- (BOOL)switchToSetupMode:(unint64_t)a3;
- (BOOL)waitForHH2SentinelZoneToBeCreated:(double)a3 error:(id *)a4;
- (BOOL)waitForHH2SentinelZoneToBeFetchedFromCloud;
- (HMDHH2FrameworkSwitch)initWithAutoSwitch:(BOOL)a3 homeManager:(id)a4 dataSource:(id)a5 callBeforeFrameworkSwitch:(id)a6;
- (HMDHomeManager)homeManager;
- (void)_clearSetupModeIfNeeded;
- (void)cloudDatabase:(id)a3 didCreateZoneWithID:(id)a4;
- (void)createHH2CloudDatabaseAndStartSyncing;
- (void)createHH2SentinelZoneWithCompletionHandler:(id)a3;
- (void)forceFetchSentinelZone;
- (void)handleTapToSetupFinished:(id)a3;
- (void)makeSureWeAreRunningInRightEnvironment:(BOOL)a3;
- (void)performInitialSync:(id)a3;
- (void)performInitialSyncAndSwitchFrameworkIfRequired;
- (void)removeHH2SentinelZoneWithCompletion:(id)a3;
- (void)switchBackToHH1AndRelaunch;
- (void)switchBackToHH1AndRelaunchDueToHH2MigrationFailed;
- (void)switchToHH2AfterPerformingHH2PreRebootTask;
- (void)switchToHH2AndRelaunchHomed;
- (void)switchToHH2AndRelaunchHomedToPerformHH2Migration;
- (void)waitForCloudKitAccountToBeAvailable;
- (void)waitForHH2SentinelZoneToBeRemoved;
@end

@implementation HMDHH2FrameworkSwitch

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)handleTapToSetupFinished:(id)a3
{
  v4 = a3;
  v5 = [(HMDHH2FrameworkSwitch *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HMDHH2FrameworkSwitch_handleTapToSetupFinished___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __50__HMDHH2FrameworkSwitch_handleTapToSetupFinished___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"TTSU.error"];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 40);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v7;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Got TTSU finished notification with error: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 40);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Ignoring TTSU notification as either this is on a non-tvOS device or TTSU finished with error: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)waitForCloudKitAccountToBeAvailable
{
  v3 = [(HMDHH2FrameworkSwitch *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HMDHH2FrameworkSwitch_waitForCloudKitAccountToBeAvailable__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

void __60__HMDHH2FrameworkSwitch_waitForCloudKitAccountToBeAvailable__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v15 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Wait for the CloudKit account to be available.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 32);
  v6 = (a1 + 32);
  v8 = [v7 cloudDatabaseToDetectHH2Zone];
  v9 = [v8 waitForAccountAvailability];

  objc_initWeak(buf, *v6);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__HMDHH2FrameworkSwitch_waitForCloudKitAccountToBeAvailable__block_invoke_135;
  v12[3] = &unk_27867E1D8;
  v12[4] = *v6;
  objc_copyWeak(&v13, buf);
  v10 = [v9 addCompletionBlock:v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);

  v11 = *MEMORY[0x277D85DE8];
}

void __60__HMDHH2FrameworkSwitch_waitForCloudKitAccountToBeAvailable__block_invoke_135(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v21 = v10;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Looks like CloudKit account is now available. Performing cloud sync. [%@]", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = WeakRetained;
  if (v6 || !WeakRetained)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v12;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543874;
      v21 = v17;
      v22 = 2112;
      v23 = v15;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Error occurred : %@ / %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
  }

  else
  {
    [WeakRetained _fastBootToHH2IfRequiredForTTSU];
    v13 = [v12 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__HMDHH2FrameworkSwitch_waitForCloudKitAccountToBeAvailable__block_invoke_136;
    block[3] = &unk_27868A728;
    block[4] = v12;
    dispatch_async(v13, block);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)switchToSetupMode:(unint64_t)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = [(HMDHH2FrameworkSwitch *)self dataSource];
  v6 = [v5 setupMode];

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v21 = 138543874;
    v22 = v10;
    v23 = 2048;
    v24 = a3;
    v25 = 2048;
    v26 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Switching to setup mode: %lu, current mode: %lu", &v21, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  if (v6 == a3 || a3 == 2 && !v6)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = v8;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Already in requested setup mode", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    result = 1;
  }

  else
  {
    LOBYTE(v21) = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"HHTTSUMode", @"com.apple.homed", &v21);
    if (v21)
    {
      v17 = AppIntegerValue == 0;
    }

    else
    {
      v17 = 1;
    }

    v18 = v17;
    if (a3 != 2 || (v18 & 1) == 0)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
      CFPreferencesSetAppValue(@"HHTTSUMode", v19, @"com.apple.homed");
    }

    [(HMDHH2FrameworkSwitch *)v8 relaunchHomedAfterSettingEnvironmentTo:a3 == 1 blockToExecuteBeforeReLaunch:0];
    result = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)switchToHH2AfterPerformingHH2PreRebootTask
{
  v3 = [(HMDHH2FrameworkSwitch *)self blockToBeCalledBeforeSwitchingFramework];
  [(HMDHH2FrameworkSwitch *)self relaunchHomedAfterSettingEnvironmentTo:1 blockToExecuteBeforeReLaunch:v3];
}

- (void)switchToHH2AndRelaunchHomedToPerformHH2Migration
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Switching to HH2 framework and relaunching homed in order to perform HH2 migration", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDHH2FrameworkSwitch *)v4 switchToHH2AfterPerformingHH2PreRebootTask];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)switchToHH2AndRelaunchHomed
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Switching to HH2 framework and relaunching homed", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDHH2FrameworkSwitch *)v4 relaunchHomedAfterSettingEnvironmentTo:1 blockToExecuteBeforeReLaunch:0];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)switchBackToHH1AndRelaunch
{
  [objc_opt_class() setHH2SettingsMigrationKey:0];

  [(HMDHH2FrameworkSwitch *)self relaunchHomedAfterSettingEnvironmentTo:0 blockToExecuteBeforeReLaunch:0];
}

- (void)switchBackToHH1AndRelaunchDueToHH2MigrationFailed
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Switching back to HK 1.0 framework as migration to HH2 failed", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDHH2FrameworkSwitch *)v4 switchBackToHH1AndRelaunch];
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __93__HMDHH2FrameworkSwitch_relaunchHomedAfterSettingEnvironmentTo_blockToExecuteBeforeReLaunch___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSource];
  [v2 initiateDaemonRelaunchToHH2:*(a1 + 40)];

  return 1;
}

uint64_t __93__HMDHH2FrameworkSwitch_relaunchHomedAfterSettingEnvironmentTo_blockToExecuteBeforeReLaunch___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSource];
  [v2 initiateDaemonRelaunchToHH2:*(a1 + 40)];

  return 1;
}

- (void)_clearSetupModeIfNeeded
{
  v2 = [(HMDHH2FrameworkSwitch *)self workQueue];
  dispatch_assert_queue_V2(v2);
}

- (void)removeHH2SentinelZoneWithCompletion:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v35 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Request to remove HH2 sentinel zone received", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDHH2FrameworkSwitch *)v6 cloudDatabaseToDetectHH2Zone];
  v10 = v9 == 0;

  if (v10)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v6;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Cloud database is nil. Cannot perform initial sync. (c)", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    if (v4)
    {
      v4[2](v4, v13);
    }
  }

  else
  {
    v11 = [(HMDHH2FrameworkSwitch *)v6 cloudDatabaseToDetectHH2Zone];
    v12 = [v11 privateZoneIDs];
    v13 = [v12 na_firstObjectPassingTest:&__block_literal_global_189939];

    if (v13)
    {
      v14 = [(HMDHH2FrameworkSwitch *)v6 cloudDatabaseToDetectHH2Zone];
      v15 = [v14 removePrivateZoneWithID:v13];

      objc_initWeak(buf, v6);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __61__HMDHH2FrameworkSwitch_removeHH2SentinelZoneWithCompletion___block_invoke_115;
      v31[3] = &unk_27867E0F0;
      objc_copyWeak(&v33, buf);
      v16 = v4;
      v32 = v16;
      v17 = [v15 addSuccessBlock:v31];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __61__HMDHH2FrameworkSwitch_removeHH2SentinelZoneWithCompletion___block_invoke_119;
      v28[3] = &unk_278686D60;
      objc_copyWeak(&v30, buf);
      v29 = v16;
      v18 = [v15 addFailureBlock:v28];

      objc_destroyWeak(&v30);
      objc_destroyWeak(&v33);
      objc_destroyWeak(buf);
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = v6;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543362;
        v35 = v26;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@HH2 Sentinel zone does not exist", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v23);
      v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
      if (v4)
      {
        v4[2](v4, v15);
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __61__HMDHH2FrameworkSwitch_removeHH2SentinelZoneWithCompletion___block_invoke_115(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    _HMFPreconditionFailure();
  }

  v5 = WeakRetained;
  v6 = objc_autoreleasePoolPush();
  v7 = v5;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@HH2 sentinel zone removed successfully.", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  [v7 waitForCloudKitAccountToBeAvailable];
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, 0);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __61__HMDHH2FrameworkSwitch_removeHH2SentinelZoneWithCompletion___block_invoke_119(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    _HMFPreconditionFailure();
  }

  v5 = WeakRetained;
  v6 = objc_autoreleasePoolPush();
  v7 = v5;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unable to delete HH2 sentinel zone from cloud database.", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  [v7 waitForCloudKitAccountToBeAvailable];
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v3);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __61__HMDHH2FrameworkSwitch_removeHH2SentinelZoneWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 zoneID];
  v3 = [v2 zoneName];
  v4 = [v3 isEqualToString:@"HH2-CD9D5508-EAED-4462-A7CB-AFB779F35A71"];

  return v4;
}

- (void)waitForHH2SentinelZoneToBeRemoved
{
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__HMDHH2FrameworkSwitch_waitForHH2SentinelZoneToBeRemoved__block_invoke;
  v5[3] = &unk_27868A1D8;
  v5[4] = self;
  v6 = v3;
  v4 = v3;
  [(HMDHH2FrameworkSwitch *)self removeHH2SentinelZoneWithCompletion:v5];
  dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
}

void __58__HMDHH2FrameworkSwitch_waitForHH2SentinelZoneToBeRemoved__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@HH2 sentinel zone removal status : %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  dispatch_group_leave(*(a1 + 40));

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_areWeRunningInRightEnvironment:(BOOL)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = [(HMDHH2FrameworkSwitch *)self dataSource];
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = a3 || [(HMDHH2FrameworkSwitch *)self checkExistenceOfHH2SentinelZone];
  v7 = [v5 isHH2Enabled];
  v8 = [v5 setupMode];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = HMFBooleanToString();
    v14 = HMFBooleanToString();
    v24 = v6;
    if (v8 > 2)
    {
      v15 = @"Unexpected mode read";
    }

    else
    {
      v15 = off_278676960[v8];
    }

    v16 = v15;
    *buf = 138544130;
    v26 = v12;
    v27 = 2112;
    v28 = v13;
    v29 = 2112;
    v30 = v14;
    v31 = 2112;
    v32 = v16;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Going to check our current environment: [doesSentinelZoneExist = %@] [current User HK Preference = %@] [setupMode = %@]", buf, 0x2Au);

    v6 = v24;
  }

  objc_autoreleasePoolPop(v9);
  if (((v8 == 1) & v7) == 0 && (((v8 != 1) & ~v6) != 0 || v6 != v7))
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v10;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Looks like we are in wrong world. Let's make things right.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v17 = 0;
  }

  else
  {
LABEL_13:
    v17 = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)makeSureWeAreRunningInRightEnvironment:(BOOL)a3
{
  v5 = [(HMDHH2FrameworkSwitch *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__HMDHH2FrameworkSwitch_makeSureWeAreRunningInRightEnvironment___block_invoke;
  v6[3] = &unk_278688650;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

- (void)cloudDatabase:(id)a3 didCreateZoneWithID:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 zoneID];
  v9 = [v8 zoneName];
  v10 = [v9 isEqualToString:@"HH2-CD9D5508-EAED-4462-A7CB-AFB779F35A71"];

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@created / synced HH2 sentinel zone", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [(HMDHH2FrameworkSwitch *)v12 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__HMDHH2FrameworkSwitch_cloudDatabase_didCreateZoneWithID___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = v12;
    dispatch_async(v15, block);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __59__HMDHH2FrameworkSwitch_cloudDatabase_didCreateZoneWithID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _clearSetupModeIfNeeded];
  [*(a1 + 32) _makeSureWeAreRunningInRightEnvironment:1];
  v2 = *(a1 + 32);

  logAndPostNotification(@"HMDHomeManagerHH2SentinelZonePresent", v2, 0);
}

- (BOOL)checkExistenceOfHH2SentinelZone
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(HMDHH2FrameworkSwitch *)self cloudDatabaseToDetectHH2Zone];
  v5 = [v4 privateZoneIDs];

  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v16 + 1) + 8 * i) zoneID];
        v11 = [v10 zoneName];
        v12 = [v11 isEqualToString:@"HH2-CD9D5508-EAED-4462-A7CB-AFB779F35A71"];

        if (v12)
        {
          v13 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  objc_autoreleasePoolPop(v3);
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)waitForHH2SentinelZoneToBeCreated:(double)a3 error:(id *)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Going to create sentinel Zone", &buf, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__189958;
  v43 = __Block_byref_object_dispose__189959;
  v44 = 0;
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __65__HMDHH2FrameworkSwitch_waitForHH2SentinelZoneToBeCreated_error___block_invoke;
  v33 = &unk_27867E140;
  v12 = v11;
  v34 = v12;
  p_buf = &buf;
  [(HMDHH2FrameworkSwitch *)v8 createHH2SentinelZoneWithCompletionHandler:&v30];
  v13 = dispatch_time(0, a3);
  if (dispatch_group_wait(v12, v13))
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v8;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *v36 = 138543362;
      v37 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Timed out while creating the HH2 sentinel zone.", v36, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    if (a4)
    {
      v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:{8, v30, v31, v32, v33}];
LABEL_13:
      v25 = 0;
      *a4 = v18;
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v19 = *(*(&buf + 1) + 40) == 0;
  v20 = objc_autoreleasePoolPush();
  v21 = v8;
  if (!v19)
  {
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = *(*(&buf + 1) + 40);
      *v36 = 138543618;
      v37 = v23;
      v38 = 2112;
      v39 = v24;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Unable to create Sentinel zone due to %@", v36, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    if (a4)
    {
      v18 = *(*(&buf + 1) + 40);
      goto LABEL_13;
    }

LABEL_14:
    v25 = 0;
    goto LABEL_18;
  }

  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = HMFGetLogIdentifier();
    *v36 = 138543362;
    v37 = v27;
    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Successfully created sentinel Zone", v36, 0xCu);
  }

  objc_autoreleasePoolPop(v20);
  v25 = 1;
LABEL_18:

  _Block_object_dispose(&buf, 8);
  v28 = *MEMORY[0x277D85DE8];
  return v25;
}

void __65__HMDHH2FrameworkSwitch_waitForHH2SentinelZoneToBeCreated_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_leave(*(a1 + 32));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)createHH2SentinelZoneWithCompletionHandler:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHH2FrameworkSwitch *)self cloudDatabaseToDetectHH2Zone];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBC5F8]);
    v7 = [v6 initWithZoneName:@"HH2-CD9D5508-EAED-4462-A7CB-AFB779F35A71" ownerName:*MEMORY[0x277CBBF28]];
    v8 = objc_alloc(MEMORY[0x277D17070]);
    v9 = [(HMDHH2FrameworkSwitch *)self cloudDatabaseToDetectHH2Zone];
    v10 = [v9 containerID];
    v11 = [v8 initWithContainerID:v10 scope:2 zoneID:v7];

    v12 = [(HMDHH2FrameworkSwitch *)self cloudDatabaseToDetectHH2Zone];
    v13 = [v12 createPrivateZoneWithID:v11];

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __68__HMDHH2FrameworkSwitch_createHH2SentinelZoneWithCompletionHandler___block_invoke;
    v24[3] = &unk_27867E118;
    v14 = v4;
    v25 = v14;
    v15 = [v13 addSuccessBlock:v24];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __68__HMDHH2FrameworkSwitch_createHH2SentinelZoneWithCompletionHandler___block_invoke_2;
    v22[3] = &unk_278688DD0;
    v23 = v14;
    v16 = [v13 addFailureBlock:v22];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Cloud database is nil. Cannot perform initial sync. (b)", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    if (v4)
    {
      (*(v4 + 2))(v4, v7);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __68__HMDHH2FrameworkSwitch_createHH2SentinelZoneWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __68__HMDHH2FrameworkSwitch_createHH2SentinelZoneWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)performInitialSync:(id)a3
{
  location[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHH2FrameworkSwitch *)self cloudDatabaseToDetectHH2Zone];

  if (v5)
  {
    v6 = [(HMDHH2FrameworkSwitch *)self cloudDatabaseToDetectHH2Zone];
    v7 = [v6 performInitialCloudSync];

    objc_initWeak(location, self);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __44__HMDHH2FrameworkSwitch_performInitialSync___block_invoke;
    v19[3] = &unk_27867E0F0;
    objc_copyWeak(&v21, location);
    v8 = v4;
    v20 = v8;
    v9 = [v7 addSuccessBlock:v19];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __44__HMDHH2FrameworkSwitch_performInitialSync___block_invoke_113;
    v16[3] = &unk_278686D60;
    objc_copyWeak(&v18, location);
    v17 = v8;
    v10 = [v7 addFailureBlock:v16];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v21);
    objc_destroyWeak(location);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Cloud database is nil. Cannot perform initial sync. (a)", location, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    if (v4)
    {
      (*(v4 + 2))(v4, v7);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __44__HMDHH2FrameworkSwitch_performInitialSync___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Initial cloud sync finished on HH2 cloud database.", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, 0);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __44__HMDHH2FrameworkSwitch_performInitialSync___block_invoke_113(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Unable to perform initial sync on cloud database to determine sentinel zone.", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)waitForHH2SentinelZoneToBeFetchedFromCloud
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = dispatch_group_create();
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Waiting for Initial sync to finish... Start", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  dispatch_group_enter(v3);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __67__HMDHH2FrameworkSwitch_waitForHH2SentinelZoneToBeFetchedFromCloud__block_invoke;
  v21[3] = &unk_27868A1D8;
  v21[4] = v5;
  v8 = v3;
  v22 = v8;
  [(HMDHH2FrameworkSwitch *)v5 performInitialSync:v21];
  v9 = dispatch_time(0, 60000000000);
  v10 = dispatch_group_wait(v8, v9);
  v11 = objc_autoreleasePoolPush();
  v12 = v5;
  v13 = HMFGetOSLogHandle();
  v14 = v13;
  if (v10)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v15;
      v16 = "%{public}@Could not finish initial sync and timed out.";
      v17 = v14;
      v18 = OS_LOG_TYPE_ERROR;
LABEL_8:
      _os_log_impl(&dword_229538000, v17, v18, v16, buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v15;
    v16 = "%{public}@Waiting for Initial sync to finish... End";
    v17 = v14;
    v18 = OS_LOG_TYPE_INFO;
    goto LABEL_8;
  }

  objc_autoreleasePoolPop(v11);
  v19 = *MEMORY[0x277D85DE8];
  return v10 == 0;
}

void __67__HMDHH2FrameworkSwitch_waitForHH2SentinelZoneToBeFetchedFromCloud__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@HH2 sentinel zone removal status : %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  dispatch_group_leave(*(a1 + 40));

  v8 = *MEMORY[0x277D85DE8];
}

- (void)forceFetchSentinelZone
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v20 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Force fetching sentinel zone", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = objc_alloc(MEMORY[0x277CBC5F8]);
  v8 = [v7 initWithZoneName:@"HH2-CD9D5508-EAED-4462-A7CB-AFB779F35A71" ownerName:*MEMORY[0x277CBBF28]];
  v9 = objc_alloc(MEMORY[0x277D17070]);
  v10 = [(HMDHH2FrameworkSwitch *)v4 cloudDatabaseToDetectHH2Zone];
  v11 = [v10 containerID];
  v12 = [v9 initWithContainerID:v11 scope:2 zoneID:v8];

  v13 = [(HMDHH2FrameworkSwitch *)v4 cloudDatabaseToDetectHH2Zone];
  v14 = [MEMORY[0x277CBEB98] setWithObject:v12];
  v15 = [v13 synchronizeZoneStateForZoneIDs:v14];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __47__HMDHH2FrameworkSwitch_forceFetchSentinelZone__block_invoke;
  v18[3] = &unk_278687CC0;
  v18[4] = v4;
  v16 = [v15 addCompletionBlock:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __47__HMDHH2FrameworkSwitch_forceFetchSentinelZone__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v10;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Force fetch sentinel zone on HH1 container finished with error: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [*(a1 + 32) makeSureWeAreRunningInRightEnvironment:0];
  if (v5)
  {
    v11 = [*(a1 + 32) fetchSentinelZoneDidFinishFuture];
    [v11 finishWithNoResult];
  }

  if (v6)
  {
    v12 = [*(a1 + 32) homeManager];
    v13 = [v12 currentAccessorySetupMetricDispatcher];
    [v13 markSetupEndStage:9 error:v6];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)performInitialSyncAndSwitchFrameworkIfRequired
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __71__HMDHH2FrameworkSwitch_performInitialSyncAndSwitchFrameworkIfRequired__block_invoke;
  v2[3] = &unk_27868A250;
  v2[4] = self;
  [(HMDHH2FrameworkSwitch *)self performInitialSync:v2];
}

void __71__HMDHH2FrameworkSwitch_performInitialSyncAndSwitchFrameworkIfRequired__block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v26 = v7;
    v27 = 2112;
    v28 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Initial sync on HH1 container finished with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  if (v3)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v11;
      v27 = 2112;
      v28 = v3;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not perform initial sync : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [v3 domain];
    v13 = *MEMORY[0x277CBBF50];
    v14 = HMFEqualObjects();

    if (v14 && [v3 code] == 1)
    {
      v15 = dispatch_time(0, 3600000000000);
      v16 = [*(a1 + 32) workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__HMDHH2FrameworkSwitch_performInitialSyncAndSwitchFrameworkIfRequired__block_invoke_106;
      block[3] = &unk_27868A728;
      block[4] = *(a1 + 32);
      dispatch_after(v15, v16, block);
    }

    else
    {
      [*(a1 + 32) waitForCloudKitAccountToBeAvailable];
    }

    v17 = [*(a1 + 32) homeManager];
    v18 = [v17 currentAccessorySetupMetricDispatcher];
    [v18 markSetupEndStage:9 error:v3];
  }

  else
  {
    if (![*(a1 + 32) autoFrameworkSwitch])
    {
      goto LABEL_18;
    }

    if (![*(a1 + 32) checkExistenceOfHH2SentinelZone])
    {
      [*(a1 + 32) forceFetchSentinelZone];
      goto LABEL_18;
    }

    v19 = objc_autoreleasePoolPush();
    v20 = *(a1 + 32);
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Skip force fetching sentinel zone from the cloud since it is already in the local database", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v17 = [*(a1 + 32) fetchSentinelZoneDidFinishFuture];
    [v17 finishWithNoResult];
  }

LABEL_18:
  v23 = *MEMORY[0x277D85DE8];
}

- (void)createHH2CloudDatabaseAndStartSyncing
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    [(HMDHH2FrameworkSwitch *)v4 autoFrameworkSwitch];
    v7 = HMFBooleanToString();
    v23 = 138543618;
    v24 = v6;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Creating the Cloud database to detect HH2 cloud zone & will start sync after that. [Auto Switch: %@]", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = objc_alloc(MEMORY[0x277CBC220]);
  v9 = [v8 initWithContainerIdentifier:@"com.apple.willow.config" environment:cloudKitContainerEnvironment];
  v10 = [(HMDHH2FrameworkSwitch *)v4 dataSource];
  v11 = [v10 controller:v4 cloudDatabaseWithContainerID:v9];

  if (v11)
  {
    [(HMDHH2FrameworkSwitch *)v4 setCloudDatabaseToDetectHH2Zone:v11];
    v12 = [(HMDHH2FrameworkSwitch *)v4 cloudDatabaseToDetectHH2Zone];
    [v12 setDelegate:v4];

    v13 = [(HMDHH2FrameworkSwitch *)v4 cloudDatabaseToDetectHH2Zone];
    v14 = [v13 registerPrivateSubscriptionForExternalRecordType:0];

    [(HMDHH2FrameworkSwitch *)v4 performInitialSyncAndSwitchFrameworkIfRequired];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v4;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v18 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v18;
      v25 = 2114;
      v26 = v9;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_FAULT, "%{public}@Failed to create cloud database with containerID %{public}@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2 reason:@"Failed to create cloud database"];
    v20 = [(HMDHH2FrameworkSwitch *)v16 homeManager];
    v21 = [v20 currentAccessorySetupMetricDispatcher];
    [v21 markSetupEndStage:9 error:v19];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (HMDHH2FrameworkSwitch)initWithAutoSwitch:(BOOL)a3 homeManager:(id)a4 dataSource:(id)a5 callBeforeFrameworkSwitch:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v28.receiver = self;
  v28.super_class = HMDHH2FrameworkSwitch;
  v13 = [(HMDHH2FrameworkSwitch *)&v28 init];
  if (v13)
  {
    v14 = HMFGetOSLogHandle();
    logger = v13->_logger;
    v13->_logger = v14;

    v13->_autoFrameworkSwitch = a3;
    objc_storeWeak(&v13->_homeManager, v10);
    v16 = v11;
    if (!v11)
    {
      v16 = objc_alloc_init(HMDHH2FrameworkSwitchDefaultDataSource);
    }

    objc_storeStrong(&v13->_dataSource, v16);
    if (!v11)
    {
    }

    v17 = _Block_copy(v12);
    blockToBeCalledBeforeSwitchingFramework = v13->_blockToBeCalledBeforeSwitchingFramework;
    v13->_blockToBeCalledBeforeSwitchingFramework = v17;

    v19 = HMDispatchQueueNameString();
    v20 = [v19 UTF8String];
    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_create(v20, v21);
    workQueue = v13->_workQueue;
    v13->_workQueue = v22;

    v24 = objc_alloc_init(MEMORY[0x277D2C900]);
    fetchSentinelZoneDidFinishFuture = v13->_fetchSentinelZoneDidFinishFuture;
    v13->_fetchSentinelZoneDidFinishFuture = v24;

    if (v10)
    {
      v26 = [MEMORY[0x277CCAB98] defaultCenter];
      [v26 addObserver:v13 selector:sel_handleTapToSetupFinished_ name:@"TTSU.Finished.NotificationKey" object:0];
    }

    [(HMDHH2FrameworkSwitch *)v13 createHH2CloudDatabaseAndStartSyncing];
  }

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t48 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t48, &__block_literal_global_131_190036);
  }

  v3 = logCategory__hmf_once_v49;

  return v3;
}

void __36__HMDHH2FrameworkSwitch_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v49;
  logCategory__hmf_once_v49 = v1;
}

+ (id)errorFromHMDCKAccountStatus:(int64_t)a3
{
  if ((a3 - 2) > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:{qword_22A587B10[a3 - 2], v3}];
  }

  return v5;
}

+ (void)switchBackToHH1AndDoNotLaunchDueToPrimaryAccountRemoval
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = a1;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Switching back to HK 1.0 framework as primary account got removed. HomeKitDaemon will not be relaunched.", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [objc_opt_class() removeHH2EnablementPreferenceKey];
  [objc_opt_class() setHH2SettingsMigrationKey:0];
  v7 = *MEMORY[0x277D85DE8];
}

+ (void)removeHH2EnablementPreferenceKey
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = a1;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Removing HH2 preference", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  CFPreferencesSetAppValue(@"isHH2Enabled", 0, *MEMORY[0x277CD0030]);
  v7 = *MEMORY[0x277D85DE8];
}

+ (void)setHH2EnablementPreferenceKey:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = a1;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMFBooleanToString();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Setting HH2 preference value to %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = MEMORY[0x277CBED28];
  if (!v3)
  {
    v10 = MEMORY[0x277CBED10];
  }

  CFPreferencesSetAppValue(@"isHH2Enabled", *v10, *MEMORY[0x277CD0030]);
  v11 = *MEMORY[0x277D85DE8];
}

@end