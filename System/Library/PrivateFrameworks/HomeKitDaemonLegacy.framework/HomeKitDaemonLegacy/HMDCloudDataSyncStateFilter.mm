@interface HMDCloudDataSyncStateFilter
+ (BOOL)isAllowedMessage:(id)a3;
+ (id)logCategory;
- (BOOL)_cloudSyncinProgressCheck:(id)a3 supressPopup:(BOOL)a4 sendCanceledError:(BOOL *)a5 dataSyncState:(unint64_t *)a6;
- (BOOL)_verifyAccountStatusForMigration;
- (BOOL)acceptMessage:(id)a3 target:(id)a4 errorReason:(id *)a5;
- (BOOL)areWeAllowedToAutoMigrateEmptyAccountsToHH2;
- (BOOL)dataSyncInProgressWithState:(unint64_t *)a3 withMessage:(id)a4;
- (BOOL)decryptionFailed;
- (BOOL)isKeychainSyncSwitchEnabled;
- (BOOL)isLocalDataDecryptionFailed;
- (BOOL)isiCloudSwitchEnabled;
- (BOOL)shouldCloudSyncData;
- (HMDCloudDataSyncStateFilter)initWithName:(id)a3 homeManager:(id)a4 messageDispatcher:(id)a5 serverTokenAvailable:(BOOL)a6 homeDataHasBeenDecrypted:(BOOL)a7 homeManagerServerTokenAvailable:(BOOL)a8 localDataDecryptionFailed:(BOOL)a9 totalHomes:(int64_t)a10 currentAccount:(id)a11;
- (HMDHomeManager)homeManager;
- (void)_clearResetConfigDisplayTimer;
- (void)_detectAndMigrateSharedUserWithEmptyOwnedHomes;
- (void)_evaluateMoveToHH2;
- (void)_handleCloudZoneReadyNotification:(id)a3;
- (void)_markHH1FirstCloudSyncComplete;
- (void)_moveDirectlyToHH2IfAccountIsEmpty;
- (void)_postNotificationForDataSyncInProgress:(BOOL)a3 dataSyncState:(unint64_t)a4 forcePost:(BOOL)a5;
- (void)_resetCloudDataSyncTimer;
- (void)_stallCloudDataSyncTimer;
- (void)_stallResetConfigDisplayTimer;
- (void)_startCloudDataSyncTimer;
- (void)_startDataConfigResetTimers;
- (void)_startPopupTimer;
- (void)_startResetConfigDisplayTimer;
- (void)_startiCloudSwitchPopupTimer;
- (void)_stopCloudDataSyncTimer;
- (void)_stopDataConfigResetTimers;
- (void)_stopPopupTimer;
- (void)_stopResetConfigDisplayTimer;
- (void)_stopiCloudSwitchPopupTimer;
- (void)_updateCurrentAccount:(id)a3;
- (void)dealloc;
- (void)evaluateMoveToHH2;
- (void)handleKeychainSyncStateChangedNotification:(id)a3;
- (void)kickResetConfigDisplayTimer;
- (void)moveDirectlyToHH2IfAccountOnlyHasUpgradedSharedHomesAllowEmptyOwnedHomes:(BOOL)a3;
- (void)resetConfiguration;
- (void)setDecryptionFailed:(BOOL)a3;
- (void)startDataConfigResetTimers;
- (void)timerDidFire:(id)a3;
- (void)totalHomesInCloudZones:(id)a3;
- (void)updateCloudDataSyncState:(BOOL)a3;
- (void)updateCurrentAccount:(id)a3;
- (void)updateLocalDataDecryptionFailed:(BOOL)a3;
- (void)updateNetworkConnectivity:(BOOL)a3;
- (void)updateServerTokenAvailable:(BOOL)a3;
- (void)updateTotalHomes:(int64_t)a3;
- (void)updateWithoutDataSynCheckServerTokenAvailable:(BOOL)a3;
- (void)updateiCloudAccountActive:(BOOL)a3;
- (void)updateiCloudSwitchState:(BOOL)a3;
@end

@implementation HMDCloudDataSyncStateFilter

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (BOOL)shouldCloudSyncData
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(HMDMessageFilter *)self workQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__HMDCloudDataSyncStateFilter_shouldCloudSyncData__block_invoke;
  v5[3] = &unk_279734898;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __50__HMDCloudDataSyncStateFilter_shouldCloudSyncData__block_invoke(uint64_t a1)
{
  v2 = +[HMDDeviceCapabilities deviceCapabilities];
  v3 = [v2 supportsStandaloneMode];

  result = [*(a1 + 32) iCloudAccountActive];
  if (v3)
  {
    if (result)
    {
      if (([*(a1 + 32) keychainSyncEnabled] & 1) != 0 || (result = objc_msgSend(*(a1 + 32), "isCloudDataSyncPeerAvailable"), result))
      {
        result = [*(a1 + 32) iCloudSwitchStateEnabled];
      }
    }
  }

  else if (result)
  {
    result = [*(a1 + 32) keychainSyncEnabled];
    if (result)
    {
      result = [*(a1 + 32) iCloudSwitchStateEnabled];
      if (result)
      {
        result = *(*(a1 + 32) + 37) == 0;
      }
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)resetConfiguration
{
  v3 = [(HMDMessageFilter *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HMDCloudDataSyncStateFilter_resetConfiguration__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_sync(v3, block);
}

uint64_t __49__HMDCloudDataSyncStateFilter_resetConfiguration__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setServerTokenAvailable:0];
  [*(a1 + 32) setCloudDataSyncCompleted:0];
  v2 = +[HMDDeviceCapabilities deviceCapabilities];
  *(*(a1 + 32) + 37) = [v2 supportsStandaloneMode] ^ 1;

  [*(a1 + 32) setLocalDataDecryptionFailed:0];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@HomeKit configuration got reset, stopping data reset timers", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  result = [*(a1 + 32) _stopDataConfigResetTimers];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)updateiCloudAccountActive:(BOOL)a3
{
  v5 = [(HMDMessageFilter *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__HMDCloudDataSyncStateFilter_updateiCloudAccountActive___block_invoke;
  v6[3] = &unk_279735D28;
  v6[4] = self;
  v7 = a3;
  dispatch_sync(v5, v6);
}

uint64_t __57__HMDCloudDataSyncStateFilter_updateiCloudAccountActive___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) iCloudAccountActive];
  if (*(a1 + 40) != result)
  {
    v10 = 0;
    v3 = [*(a1 + 32) _cloudSyncinProgressCheck:0 supressPopup:1 sendCanceledError:0 dataSyncState:&v10];
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      *buf = 138543618;
      v12 = v7;
      v13 = 1024;
      v14 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Updating iCloud account active to %{BOOL}d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) setICloudAccountActive:*(a1 + 40)];
    if (([*(a1 + 32) iCloudAccountActive] & 1) != 0 || !objc_msgSend(*(a1 + 32), "cloudDataSyncCompleted"))
    {
      result = [*(a1 + 32) _postNotificationForDataSyncInProgress:v3 dataSyncState:v10 forcePost:0];
    }

    else
    {
      result = [*(a1 + 32) _updateCloudDataSyncState:0];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isLocalDataDecryptionFailed
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(HMDMessageFilter *)self queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__HMDCloudDataSyncStateFilter_isLocalDataDecryptionFailed__block_invoke;
  v5[3] = &unk_279734898;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __58__HMDCloudDataSyncStateFilter_isLocalDataDecryptionFailed__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) localDataDecryptionFailed];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)updateLocalDataDecryptionFailed:(BOOL)a3
{
  v5 = [(HMDMessageFilter *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__HMDCloudDataSyncStateFilter_updateLocalDataDecryptionFailed___block_invoke;
  v6[3] = &unk_279735D28;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

uint64_t __63__HMDCloudDataSyncStateFilter_updateLocalDataDecryptionFailed___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) localDataDecryptionFailed];
  if (*(a1 + 40) != result)
  {
    v11 = 0;
    v3 = [*(a1 + 32) _cloudSyncinProgressCheck:0 supressPopup:1 sendCanceledError:0 dataSyncState:&v11];
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = v7;
      v9 = "NO";
      if (*(a1 + 40))
      {
        v9 = "YES";
      }

      *buf = 138543618;
      v13 = v7;
      v14 = 2080;
      v15 = v9;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Updating local data decryption fail state to: %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) setLocalDataDecryptionFailed:*(a1 + 40)];
    result = [*(a1 + 32) _postNotificationForDataSyncInProgress:v3 dataSyncState:v11 forcePost:0];
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isKeychainSyncSwitchEnabled
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(HMDMessageFilter *)self queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__HMDCloudDataSyncStateFilter_isKeychainSyncSwitchEnabled__block_invoke;
  v5[3] = &unk_279734898;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __58__HMDCloudDataSyncStateFilter_isKeychainSyncSwitchEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) keychainSyncEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isiCloudSwitchEnabled
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(HMDMessageFilter *)self queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__HMDCloudDataSyncStateFilter_isiCloudSwitchEnabled__block_invoke;
  v5[3] = &unk_279734898;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __52__HMDCloudDataSyncStateFilter_isiCloudSwitchEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) iCloudSwitchStateEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)updateiCloudSwitchState:(BOOL)a3
{
  v5 = [(HMDMessageFilter *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__HMDCloudDataSyncStateFilter_updateiCloudSwitchState___block_invoke;
  v6[3] = &unk_279735D28;
  v6[4] = self;
  v7 = a3;
  dispatch_sync(v5, v6);
}

uint64_t __55__HMDCloudDataSyncStateFilter_updateiCloudSwitchState___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) iCloudSwitchStateEnabled];
  if (*(a1 + 40) != result)
  {
    v11 = 0;
    v3 = [*(a1 + 32) _cloudSyncinProgressCheck:0 supressPopup:1 sendCanceledError:0 dataSyncState:&v11];
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = v7;
      v9 = "not ";
      if (*(a1 + 40))
      {
        v9 = "";
      }

      *buf = 138543618;
      v13 = v7;
      v14 = 2080;
      v15 = v9;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Updating iCloud Switch state to: %senabled", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) setICloudSwitchStateEnabled:*(a1 + 40)];
    result = [*(a1 + 32) _postNotificationForDataSyncInProgress:v3 dataSyncState:v11 forcePost:0];
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)updateServerTokenAvailable:(BOOL)a3
{
  v5 = [(HMDMessageFilter *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__HMDCloudDataSyncStateFilter_updateServerTokenAvailable___block_invoke;
  v6[3] = &unk_279735D28;
  v6[4] = self;
  v7 = a3;
  dispatch_sync(v5, v6);
}

uint64_t __58__HMDCloudDataSyncStateFilter_updateServerTokenAvailable___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) serverTokenAvailable];
  if (*(a1 + 40) != result)
  {
    v11 = 0;
    v3 = [*(a1 + 32) _cloudSyncinProgressCheck:0 supressPopup:1 sendCanceledError:0 dataSyncState:&v11];
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = v7;
      v9 = "not ";
      if (*(a1 + 40))
      {
        v9 = "";
      }

      *buf = 138543618;
      v13 = v7;
      v14 = 2080;
      v15 = v9;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Updating cloud server token available state to %savailable", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) setServerTokenAvailable:*(a1 + 40)];
    result = [*(a1 + 32) _postNotificationForDataSyncInProgress:v3 dataSyncState:v11 forcePost:0];
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)updateWithoutDataSynCheckServerTokenAvailable:(BOOL)a3
{
  v5 = [(HMDMessageFilter *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__HMDCloudDataSyncStateFilter_updateWithoutDataSynCheckServerTokenAvailable___block_invoke;
  v6[3] = &unk_279735D28;
  v6[4] = self;
  v7 = a3;
  dispatch_sync(v5, v6);
}

uint64_t __77__HMDCloudDataSyncStateFilter_updateWithoutDataSynCheckServerTokenAvailable___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) serverTokenAvailable];
  if (*(a1 + 40) != result)
  {
    v3 = *(a1 + 32);

    return [v3 setServerTokenAvailable:?];
  }

  return result;
}

- (void)_markHH1FirstCloudSyncComplete
{
  os_unfair_lock_lock_with_options();
  if (!self->_hh1FirstCloudSyncComplete)
  {
    self->_hh1FirstCloudSyncComplete = 1;
    logger = self->_logger;
    if (os_signpost_enabled(logger))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_2531F8000, logger, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HH1FirstCloudSyncComplete", "", v4, 2u);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateCloudDataSyncState:(BOOL)a3
{
  v5 = [(HMDMessageFilter *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__HMDCloudDataSyncStateFilter_updateCloudDataSyncState___block_invoke;
  v6[3] = &unk_279735D28;
  v6[4] = self;
  v7 = a3;
  dispatch_sync(v5, v6);
}

- (BOOL)_cloudSyncinProgressCheck:(id)a3 supressPopup:(BOOL)a4 sendCanceledError:(BOOL *)a5 dataSyncState:(unint64_t *)a6
{
  v8 = a4;
  v91 = *MEMORY[0x277D85DE8];
  v10 = a3;
  if (_cloudSyncinProgressCheck_supressPopup_sendCanceledError_dataSyncState__onceToken == -1)
  {
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  dispatch_once(&_cloudSyncinProgressCheck_supressPopup_sendCanceledError_dataSyncState__onceToken, &__block_literal_global_166);
  if (a5)
  {
LABEL_3:
    *a5 = 0;
  }

LABEL_4:
  if (a6)
  {
    *a6 = 1;
  }

  v11 = +[HMDDeviceCapabilities deviceCapabilities];
  if ([v11 supportsKeychainSync] && -[HMDCloudDataSyncStateFilter iCloudAccountActive](self, "iCloudAccountActive") && !-[HMDCloudDataSyncStateFilter keychainSyncEnabled](self, "keychainSyncEnabled"))
  {
    if ([(HMDCloudDataSyncStateFilter *)self isKeychainSyncPeerAvailable])
    {
    }

    else
    {
      decryptionFailed = self->_decryptionFailed;

      if (!decryptionFailed)
      {
        goto LABEL_10;
      }
    }

    v68 = [v10 name];

    if (v68)
    {
      if ([v10 isEntitledForSPIAccess] && (v69 = _cloudSyncinProgressCheck_supressPopup_sendCanceledError_dataSyncState___allowedMessages, objc_msgSend(v10, "name"), v70 = objc_claimAutoreleasedReturnValue(), LODWORD(v69) = objc_msgSend(v69, "containsObject:", v70), v70, v69))
      {
        v71 = objc_autoreleasePoolPush();
        v72 = self;
        v73 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
        {
          v74 = HMFGetLogIdentifier();
          v75 = [v10 name];
          *buf = 138543618;
          v88 = v74;
          v89 = 2112;
          v90 = v75;
          _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_INFO, "%{public}@Allowing the message %@ though Keychain is not enabled", buf, 0x16u);
        }

        v28 = 0;
      }

      else
      {
        v71 = objc_autoreleasePoolPush();
        v76 = self;
        v73 = HMFGetOSLogHandle();
        v28 = 1;
        if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
        {
          v77 = HMFGetLogIdentifier();
          v78 = [v10 name];
          *buf = 138543618;
          v88 = v77;
          v89 = 2112;
          v90 = v78;
          _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_INFO, "%{public}@Rejecting message %@ since Keychain is not enabled and there are peers", buf, 0x16u);

          v28 = 1;
        }
      }

      objc_autoreleasePoolPop(v71);
      if (!a6)
      {
        goto LABEL_102;
      }
    }

    else
    {
      v28 = 1;
      if (!a6)
      {
        goto LABEL_102;
      }
    }

    v79 = objc_autoreleasePoolPush();
    v80 = self;
    v81 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
    {
      v82 = HMFGetLogIdentifier();
      *buf = 138543362;
      v88 = v82;
      _os_log_impl(&dword_2531F8000, v81, OS_LOG_TYPE_INFO, "%{public}@Setting data sync state to keychain not enabled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v79);
    v66 = 2;
LABEL_101:
    *a6 = v66;
    goto LABEL_102;
  }

LABEL_10:
  if ([(HMDCloudDataSyncStateFilter *)self iCloudAccountActive]&& ![(HMDCloudDataSyncStateFilter *)self iCloudSwitchStateEnabled])
  {
    v20 = [v10 name];

    if (v20)
    {
      if ([v10 isEntitledForSPIAccess] && (v21 = _cloudSyncinProgressCheck_supressPopup_sendCanceledError_dataSyncState___allowedMessages, objc_msgSend(v10, "name"), v22 = objc_claimAutoreleasedReturnValue(), LODWORD(v21) = objc_msgSend(v21, "containsObject:", v22), v22, v21))
      {
        v23 = objc_autoreleasePoolPush();
        v24 = self;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = HMFGetLogIdentifier();
          v27 = [v10 name];
          *buf = 138543618;
          v88 = v26;
          v89 = 2112;
          v90 = v27;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Allowing message %@ though iCloud Switch is not enabled", buf, 0x16u);
        }

        v28 = 0;
      }

      else
      {
        v23 = objc_autoreleasePoolPush();
        v39 = self;
        v25 = HMFGetOSLogHandle();
        v28 = 1;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v40 = HMFGetLogIdentifier();
          v41 = [v10 name];
          *buf = 138543618;
          v88 = v40;
          v89 = 2112;
          v90 = v41;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Rejecting message %@ since iCloud Switch is not enabled", buf, 0x16u);

          v28 = 1;
        }
      }

      objc_autoreleasePoolPop(v23);
      if (!v10)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v28 = 1;
      if (!v10)
      {
LABEL_84:
        if (!a6)
        {
          goto LABEL_102;
        }

        v66 = 3;
        goto LABEL_101;
      }
    }

    if (([v10 isEntitledForSPIAccess] & 1) == 0 && !-[HMDCloudDataSyncStateFilter iCloudSwitchRequiredPopShown](self, "iCloudSwitchRequiredPopShown") && !v8)
    {
      v60 = objc_autoreleasePoolPush();
      v61 = self;
      v62 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v63 = HMFGetLogIdentifier();
        *buf = 138543362;
        v88 = v63;
        _os_log_impl(&dword_2531F8000, v62, OS_LOG_TYPE_DEFAULT, "%{public}@Presenting dialog about iCloud Switch being required", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v60);
      [(HMDCloudDataSyncStateFilter *)v61 setICloudSwitchRequiredPopShown:1];
      if (a5)
      {
        *a5 = 1;
      }

      v64 = +[HMDUIDialogPresenter sharedUIDialogPresenter];
      objc_initWeak(buf, v61);
      v65 = [(HMDMessageFilter *)v61 workQueue];
      v85[0] = MEMORY[0x277D85DD0];
      v85[1] = 3221225472;
      v85[2] = __102__HMDCloudDataSyncStateFilter__cloudSyncinProgressCheck_supressPopup_sendCanceledError_dataSyncState___block_invoke_169;
      v85[3] = &unk_2797296D8;
      objc_copyWeak(&v86, buf);
      v85[4] = v61;
      [v64 displayiCloudSwitchWithContext:v61 queue:v65 completionHandler:v85];

      objc_destroyWeak(&v86);
      objc_destroyWeak(buf);
    }

    goto LABEL_84;
  }

  if (isWatch())
  {
    v12 = +[HMDDeviceCapabilities deviceCapabilities];
    if ([v12 supportsCloudDataSync])
    {
      v13 = _cloudSyncinProgressCheck_supressPopup_sendCanceledError_dataSyncState__watchAllowedCommands;
      v14 = [v10 name];
      LODWORD(v13) = [v13 containsObject:v14];

      if (v13)
      {
        v15 = objc_autoreleasePoolPush();
        v16 = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          v19 = [v10 name];
          *buf = 138543618;
          v88 = v18;
          v89 = 2112;
          v90 = v19;
          _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Allowing configuration message (%@) on watch supporting cloud data sync", buf, 0x16u);
        }

LABEL_74:

        objc_autoreleasePoolPop(v15);
        v28 = 0;
        goto LABEL_102;
      }
    }

    else
    {
    }
  }

  if ([(HMDCloudDataSyncStateFilter *)self iCloudAccountActive]&& ![(HMDCloudDataSyncStateFilter *)self cloudDataSyncCompleted]&& ![(HMDCloudDataSyncStateFilter *)self serverTokenAvailable]&& [(HMDCloudDataSyncStateFilter *)self isCloudDataSyncPeerAvailable])
  {
    v29 = objc_autoreleasePoolPush();
    v30 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543618;
      v88 = v32;
      v89 = 2112;
      v90 = v10;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Rejecting message %@ since server token unavailable and cloud sync not completed and transient devices present", buf, 0x16u);
    }

LABEL_54:

    objc_autoreleasePoolPop(v29);
    if (a6)
    {
      if ([(HMDCloudDataSyncStateFilter *)self resetConfigDisplayTimeHasElapsed])
      {
        *a6 = 5;
        v44 = objc_autoreleasePoolPush();
        v45 = self;
        v46 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          v47 = HMFGetLogIdentifier();
          *buf = 138543362;
          v88 = v47;
          _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_INFO, "%{public}@Setting data sync state to requiring configuration reset", buf, 0xCu);
        }
      }

      else
      {
        *a6 = 4;
        v44 = objc_autoreleasePoolPush();
        v48 = self;
        v46 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          v49 = HMFGetLogIdentifier();
          *buf = 138543362;
          v88 = v49;
          _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_INFO, "%{public}@Setting data sync state to waiting for cloud data", buf, 0xCu);
        }
      }

      objc_autoreleasePoolPop(v44);
    }

    v28 = 1;
    goto LABEL_62;
  }

  if ([(HMDCloudDataSyncStateFilter *)self iCloudAccountActive]&& ![(HMDCloudDataSyncStateFilter *)self serverTokenAvailable])
  {
    v29 = objc_autoreleasePoolPush();
    v30 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v37 = HMFGetLogIdentifier();
      v38 = [v10 name];
      *buf = 138543618;
      v88 = v37;
      v89 = 2112;
      v90 = v38;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Rejecting message %@ since signed into cloud, no valid server token", buf, 0x16u);
    }

    goto LABEL_54;
  }

  if ([(HMDCloudDataSyncStateFilter *)self iCloudAccountActive]&& ![(HMDCloudDataSyncStateFilter *)self cloudDataSyncCompleted])
  {
    v29 = objc_autoreleasePoolPush();
    v30 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v42 = HMFGetLogIdentifier();
      v43 = [v10 name];
      *buf = 138543618;
      v88 = v42;
      v89 = 2112;
      v90 = v43;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Rejecting message %@ since signed into cloud, but initial sync is not complete", buf, 0x16u);
    }

    goto LABEL_54;
  }

  if ([(HMDCloudDataSyncStateFilter *)self iCloudAccountActive]&& [(HMDCloudDataSyncStateFilter *)self cloudDataSyncCompleted]&& self->_decryptionFailed)
  {
    v29 = objc_autoreleasePoolPush();
    v30 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      v34 = [v10 name];
      *buf = 138543618;
      v88 = v33;
      v89 = 2112;
      v90 = v34;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Rejecting message %@ since decryption failed", buf, 0x16u);
    }

    goto LABEL_54;
  }

  if ([(HMDCloudDataSyncStateFilter *)self localDataDecryptionFailed])
  {
    v29 = objc_autoreleasePoolPush();
    v30 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      v36 = [v10 name];
      *buf = 138543618;
      v88 = v35;
      v89 = 2112;
      v90 = v36;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Rejecting message %@ since local data decryption failed", buf, 0x16u);
    }

    goto LABEL_54;
  }

  v28 = 0;
LABEL_62:
  v50 = +[HMDAppleAccountManager sharedManager];
  v51 = [v50 account];
  if (v51)
  {
    v52 = +[HMDDeviceCapabilities deviceCapabilities];
    v53 = [v52 isRemoteGatewayCapable];

    if (v53 && !+[HMDKeyTransferAgentServer isPeerAvailable])
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v54 = HMFGetLogIdentifier();
        *buf = 138543362;
        v88 = v54;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Allowing message due to no key transfer peers available", buf, 0xCu);
      }

      goto LABEL_74;
    }
  }

  else
  {
  }

  v55 = [v10 name];
  if (!v55 || ([v10 isEntitledForSPIAccess] & 1) == 0)
  {

    goto LABEL_102;
  }

  v56 = _cloudSyncinProgressCheck_supressPopup_sendCanceledError_dataSyncState___allowedMessages;
  v57 = [v10 name];
  LODWORD(v56) = [v56 containsObject:v57];

  if (v56)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v58 = HMFGetLogIdentifier();
      v59 = [v10 name];
      *buf = 138543618;
      v88 = v58;
      v89 = 2112;
      v90 = v59;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Allowing the message %@", buf, 0x16u);
    }

    goto LABEL_74;
  }

LABEL_102:

  v83 = *MEMORY[0x277D85DE8];
  return v28;
}

void __102__HMDCloudDataSyncStateFilter__cloudSyncinProgressCheck_supressPopup_sendCanceledError_dataSyncState___block_invoke_169(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a2)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Enabling iCloud switch", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = +[HMDAppleAccountSettings sharedSettings];
    [v9 updateHomeEnabled:1 completionHandler:&__block_literal_global_172];
  }

  [WeakRetained _startiCloudSwitchPopupTimer];

  v10 = *MEMORY[0x277D85DE8];
}

void __102__HMDCloudDataSyncStateFilter__cloudSyncinProgressCheck_supressPopup_sendCanceledError_dataSyncState___block_invoke()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = @"kHomeConfigInternalRequestKey";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v1 = _cloudSyncinProgressCheck_supressPopup_sendCanceledError_dataSyncState__watchAllowedCommands;
  _cloudSyncinProgressCheck_supressPopup_sendCanceledError_dataSyncState__watchAllowedCommands = v0;

  v2 = MEMORY[0x277CBEB98];
  v7 = @"kUpdateAccessAllowedWhenLockedRequestKey";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:1];
  v4 = [v2 setWithArray:v3];
  v5 = _cloudSyncinProgressCheck_supressPopup_sendCanceledError_dataSyncState___allowedMessages;
  _cloudSyncinProgressCheck_supressPopup_sendCanceledError_dataSyncState___allowedMessages = v4;

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)dataSyncInProgressWithState:(unint64_t *)a3 withMessage:(id)a4
{
  v6 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v7 = [(HMDMessageFilter *)self workQueue];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __71__HMDCloudDataSyncStateFilter_dataSyncInProgressWithState_withMessage___block_invoke;
  v13 = &unk_279732EE8;
  v16 = &v18;
  v14 = self;
  v8 = v6;
  v15 = v8;
  v17 = a3;
  dispatch_sync(v7, &v10);

  [(HMDCloudDataSyncStateFilter *)self _moveDirectlyToHH2IfAccountIsEmpty:v10];
  LOBYTE(self) = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return self;
}

uint64_t __71__HMDCloudDataSyncStateFilter_dataSyncInProgressWithState_withMessage___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _cloudSyncinProgressCheck:*(a1 + 40) supressPopup:1 sendCanceledError:0 dataSyncState:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)acceptMessage:(id)a3 target:(id)a4 errorReason:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v10 = [(HMDMessageFilter *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__HMDCloudDataSyncStateFilter_acceptMessage_target_errorReason___block_invoke;
  v13[3] = &unk_279732EE8;
  v13[4] = self;
  v14 = v8;
  v15 = &v17;
  v16 = a5;
  v11 = v8;
  dispatch_sync(v10, v13);

  LOBYTE(v8) = *(v18 + 24);
  _Block_object_dispose(&v17, 8);

  return v8;
}

void __64__HMDCloudDataSyncStateFilter_acceptMessage_target_errorReason___block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x277D85DE8];
  v2 = +[HMDDeviceCapabilities deviceCapabilities];
  if (![v2 supportsKeychainSync] || !objc_msgSend(*(a1 + 32), "iCloudAccountActive") || objc_msgSend(*(a1 + 32), "keychainSyncEnabled"))
  {

    goto LABEL_5;
  }

  v29 = [*(a1 + 40) name];
  v30 = [HMDCloudDataSyncStateFilter isAllowedMessage:v29];

  if (v30 || ![*(a1 + 32) isKeychainSyncPeerAvailable] || objc_msgSend(*(a1 + 32), "totalHomes") <= 0 && (objc_msgSend(*(a1 + 40), "name"), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "isEqualToString:", *MEMORY[0x277CD2080]), v31, !v32))
  {
LABEL_5:
    v53 = 0;
    v3 = [*(a1 + 40) name];
    if ([HMDCloudDataSyncStateFilter isAllowedMessage:v3])
    {
    }

    else
    {
      v4 = [*(a1 + 32) _cloudSyncinProgressCheck:*(a1 + 40) supressPopup:0 sendCanceledError:&v53 dataSyncState:0];

      if (v4)
      {
        if (*(a1 + 56))
        {
          if (v53)
          {
            v5 = 23;
          }

          else
          {
            v5 = 77;
          }

          **(a1 + 56) = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:v5 userInfo:0];
        }

        *(*(*(a1 + 48) + 8) + 24) = 0;
        v6 = objc_autoreleasePoolPush();
        v7 = *(a1 + 32);
        v8 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = HMFGetLogIdentifier();
          v10 = [*(a1 + 40) name];
          *buf = 138543618;
          v57 = v9;
          v58 = 2112;
          v59 = v10;
          _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Rejecting message %@ since cloud data sync is in progress", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v6);
        v11 = objc_autoreleasePoolPush();
        v12 = *(a1 + 32);
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = HMFGetLogIdentifier();
          [*(a1 + 32) cloudDataSyncCompleted];
          v15 = HMFBooleanToString();
          [*(a1 + 32) serverTokenAvailable];
          v16 = HMFBooleanToString();
          [*(a1 + 32) isCloudDataSyncPeerAvailable];
          v17 = HMFBooleanToString();
          *buf = 138544130;
          v57 = v14;
          v58 = 2112;
          v59 = v15;
          v60 = 2112;
          v61 = v16;
          v62 = 2112;
          v63 = v17;
          _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@cloudDataSyncCompleted: %@, serverTokenAvailable: %@, cloudDataSyncPeerAvailable: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v11);
        v18 = objc_autoreleasePoolPush();
        v19 = *(a1 + 32);
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          v23 = *(a1 + 32);
          v22 = (a1 + 32);
          [v23 networkConnectivityAvailable];
          v24 = HMFBooleanToString();
          [*v22 iCloudAccountActive];
          v25 = HMFBooleanToString();
          v26 = *(*v22 + 37);
          v27 = HMFBooleanToString();
          *buf = 138544130;
          v57 = v21;
          v58 = 2112;
          v59 = v24;
          v60 = 2112;
          v61 = v25;
          v62 = 2112;
          v63 = v27;
          _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@networkConnectivityAvailable: %@, iCloudAccountActive: %@, decryptionFailed: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v18);
      }
    }

    goto LABEL_20;
  }

  v33 = *(a1 + 32);
  v34 = +[HMDAppleAccountSettings sharedSettings];
  [v33 _updateKeychainSyncEnabled:{objc_msgSend(v34, "isKeychainSyncEnabled")}];

  if ([*(a1 + 32) keychainSyncEnabled])
  {
    v35 = objc_autoreleasePoolPush();
    v36 = *(a1 + 32);
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = HMFGetLogIdentifier();
      v39 = [*(a1 + 40) name];
      *buf = 138543618;
      v57 = v38;
      v58 = 2112;
      v59 = v39;
      _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@Resampled keychain sync state and it is enabled, accepting message %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    goto LABEL_5;
  }

  if (*(a1 + 56))
  {
    **(a1 + 56) = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:76 userInfo:0];
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
  v40 = objc_autoreleasePoolPush();
  v41 = *(a1 + 32);
  v42 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = HMFGetLogIdentifier();
    v44 = [*(a1 + 40) name];
    *buf = 138543618;
    v57 = v43;
    v58 = 2112;
    v59 = v44;
    _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@Rejecting message %@ since keychain sync is not enabled", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v40);
  if (([*(a1 + 40) isEntitledForSPIAccess] & 1) == 0 && (objc_msgSend(*(a1 + 32), "keychainSyncRequiredPopShown") & 1) == 0)
  {
    v45 = objc_autoreleasePoolPush();
    v46 = *(a1 + 32);
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = HMFGetLogIdentifier();
      *buf = 138543362;
      v57 = v48;
      _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@Presenting dialog about keychain sync being required since we have more than one account", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v45);
    [*(a1 + 32) setKeychainSyncRequiredPopShown:1];
    v49 = +[HMDUIDialogPresenter sharedUIDialogPresenter];
    objc_initWeak(buf, *(a1 + 32));
    v50 = [*(a1 + 32) name];
    v51 = *(a1 + 32);
    v52 = [v51 workQueue];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __64__HMDCloudDataSyncStateFilter_acceptMessage_target_errorReason___block_invoke_160;
    v54[3] = &unk_2797296D8;
    objc_copyWeak(&v55, buf);
    v54[4] = *(a1 + 32);
    [v49 displayKeychainSyncForHome:v50 withContext:v51 queue:v52 completionHandler:v54];

    objc_destroyWeak(&v55);
    objc_destroyWeak(buf);
  }

LABEL_20:
  v28 = *MEMORY[0x277D85DE8];
}

void __64__HMDCloudDataSyncStateFilter_acceptMessage_target_errorReason___block_invoke_160(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a2)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Launching settings for iCloud Keychain", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    launchURL(@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/com.apple.Dataclass.KeychainSync");
  }

  [WeakRetained _startPopupTimer];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_updateCurrentAccount:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v28 = a3;
  v4 = [v28 devices];
  v5 = [v4 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v30;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        if (([v11 isCurrentDevice] & 1) == 0)
        {
          v12 = [v11 capabilities];
          v13 = [v12 supportsKeychainSync];

          v8 |= v13;
          v14 = [v11 capabilities];
          LOBYTE(v12) = [v14 supportsCloudDataSync];

          v7 |= v12;
          if (v8 & 1) != 0 && (v7)
          {
            v7 = 1;
            v8 = 1;
            goto LABEL_14;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

LABEL_14:

  if ((v8 & 1) != [(HMDCloudDataSyncStateFilter *)self isKeychainSyncPeerAvailable])
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
    if (v8)
    {
      if (v18)
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v34 = v19;
        v20 = "%{public}@Keychain sync peers are available";
LABEL_20:
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, v20, buf, 0xCu);
      }
    }

    else if (v18)
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v19;
      v20 = "%{public}@Keychain sync peers are not available";
      goto LABEL_20;
    }

    objc_autoreleasePoolPop(v15);
    [(HMDCloudDataSyncStateFilter *)v16 setKeychainSyncPeerAvailable:v8 & 1];
  }

  if ((v7 & 1) != [(HMDCloudDataSyncStateFilter *)self isCloudDataSyncPeerAvailable])
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
    if (v7)
    {
      if (v24)
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543362;
        v34 = v25;
        v26 = "%{public}@Cloud data sync peers are available";
LABEL_28:
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, v26, buf, 0xCu);
      }
    }

    else if (v24)
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v25;
      v26 = "%{public}@Cloud data sync peers are not available";
      goto LABEL_28;
    }

    objc_autoreleasePoolPop(v21);
    [(HMDCloudDataSyncStateFilter *)v22 setCloudDataSyncPeerAvailable:v7 & 1];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)updateCurrentAccount:(id)a3
{
  v4 = a3;
  v5 = [(HMDMessageFilter *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HMDCloudDataSyncStateFilter_updateCurrentAccount___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)updateTotalHomes:(int64_t)a3
{
  v5 = [(HMDMessageFilter *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__HMDCloudDataSyncStateFilter_updateTotalHomes___block_invoke;
  v6[3] = &unk_279734BB8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_sync(v5, v6);
}

uint64_t __48__HMDCloudDataSyncStateFilter_updateTotalHomes___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setTotalHomes:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _evaluateMoveToHH2];
}

- (void)_stopiCloudSwitchPopupTimer
{
  v12 = *MEMORY[0x277D85DE8];
  [(HMDCloudDataSyncStateFilter *)self setICloudSwitchRequiredPopShown:0];
  v3 = [(HMDCloudDataSyncStateFilter *)self iCloudSwitchPopupTimer];

  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Cancelling iCloud Switch popup shown timer", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = [(HMDCloudDataSyncStateFilter *)v5 iCloudSwitchPopupTimer];
    dispatch_source_cancel(v8);

    [(HMDCloudDataSyncStateFilter *)v5 setICloudSwitchPopupTimer:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_startiCloudSwitchPopupTimer
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = keychainPopupTimerInterval;
  v4 = [(HMDMessageFilter *)self workQueue];
  v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v4);
  [(HMDCloudDataSyncStateFilter *)self setICloudSwitchPopupTimer:v5];

  v6 = [(HMDCloudDataSyncStateFilter *)self iCloudSwitchPopupTimer];
  v7 = dispatch_time(0, 1000000000 * v3);
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x12A05F200uLL);

  objc_initWeak(&location, self);
  v8 = [(HMDCloudDataSyncStateFilter *)self iCloudSwitchPopupTimer];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __59__HMDCloudDataSyncStateFilter__startiCloudSwitchPopupTimer__block_invoke;
  handler[3] = &unk_279732E78;
  objc_copyWeak(&v16, &location);
  handler[4] = self;
  dispatch_source_set_event_handler(v8, handler);

  v9 = [(HMDCloudDataSyncStateFilter *)self iCloudSwitchPopupTimer];
  dispatch_resume(v9);

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543362;
    v19 = v13;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Starting iCloud Switch popup shown timer", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
  v14 = *MEMORY[0x277D85DE8];
}

void __59__HMDCloudDataSyncStateFilter__startiCloudSwitchPopupTimer__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@iCloud Switch popup timer fired, resetting last shown flag", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [WeakRetained _stopiCloudSwitchPopupTimer];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_stopPopupTimer
{
  v12 = *MEMORY[0x277D85DE8];
  [(HMDCloudDataSyncStateFilter *)self setKeychainSyncRequiredPopShown:0];
  v3 = [(HMDCloudDataSyncStateFilter *)self popupTimer];

  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Cancelling keychain sync popup shown timer", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = [(HMDCloudDataSyncStateFilter *)v5 popupTimer];
    dispatch_source_cancel(v8);

    [(HMDCloudDataSyncStateFilter *)v5 setPopupTimer:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_startPopupTimer
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = keychainPopupTimerInterval;
  v4 = [(HMDMessageFilter *)self workQueue];
  v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v4);
  [(HMDCloudDataSyncStateFilter *)self setPopupTimer:v5];

  v6 = [(HMDCloudDataSyncStateFilter *)self popupTimer];
  v7 = dispatch_time(0, 1000000000 * v3);
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x12A05F200uLL);

  objc_initWeak(&location, self);
  v8 = [(HMDCloudDataSyncStateFilter *)self popupTimer];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __47__HMDCloudDataSyncStateFilter__startPopupTimer__block_invoke;
  handler[3] = &unk_279732E78;
  objc_copyWeak(&v16, &location);
  handler[4] = self;
  dispatch_source_set_event_handler(v8, handler);

  v9 = [(HMDCloudDataSyncStateFilter *)self popupTimer];
  dispatch_resume(v9);

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543362;
    v19 = v13;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Starting keychain sync popup shown timer", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
  v14 = *MEMORY[0x277D85DE8];
}

void __47__HMDCloudDataSyncStateFilter__startPopupTimer__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Keychain sync popup timer fired, resetting last shown flag", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [WeakRetained _stopPopupTimer];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_stallResetConfigDisplayTimer
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCloudDataSyncStateFilter *)self resetConfigDisplayTimer];

  if (!v3)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v24;
      v25 = "%{public}@There is no reset config display timer running?";
LABEL_14:
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, v25, &v27, 0xCu);
    }

LABEL_15:

    objc_autoreleasePoolPop(v21);
    goto LABEL_16;
  }

  v4 = [(HMDCloudDataSyncStateFilter *)self resetConfigDisplayTimerStartTimestamp];

  if (!v4)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v24;
      v25 = "%{public}@Reset config display timer start time in invalid?";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  [(HMDCloudDataSyncStateFilter *)self setResetConfigDisplayTimer:0];
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [(HMDCloudDataSyncStateFilter *)self resetConfigDisplayTimerStartTimestamp];
  [v5 timeIntervalSinceDate:v6];
  v8 = v7;

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v27 = 138543618;
    v28 = v12;
    v29 = 2048;
    v30 = v8;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Stalling the reset config display timer, %lf seconds have passed on this timer", &v27, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDCloudDataSyncStateFilter *)v10 remainingResetConfigDisplayPeriod];
  [(HMDCloudDataSyncStateFilter *)v10 setRemainingResetConfigDisplayPeriod:v13 - v8];
  [(HMDCloudDataSyncStateFilter *)v10 remainingResetConfigDisplayPeriod];
  if (v14 <= 0.0)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v10;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Remaining period for reset config display timer became less than 0?", &v27, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    [(HMDCloudDataSyncStateFilter *)v16 setRemainingResetConfigDisplayPeriod:controllerKeyNotLandingWaitPeriod];
    v19 = +[HMDDeviceSetupManager sharedManager];
    v20 = [v19 isRunning];

    if (v20)
    {
      [(HMDCloudDataSyncStateFilter *)v16 setRemainingResetConfigDisplayPeriod:controllerKeyNotLandingShortCircuitWaitPeriod];
    }
  }

LABEL_16:
  v26 = *MEMORY[0x277D85DE8];
}

- (void)_clearResetConfigDisplayTimer
{
  [(HMDCloudDataSyncStateFilter *)self setResetConfigDisplayTimer:0];
  [(HMDCloudDataSyncStateFilter *)self setResetConfigDisplayTimerStartTimestamp:0];

  [(HMDCloudDataSyncStateFilter *)self setRemainingResetConfigDisplayPeriod:0.0];
}

- (void)_stopResetConfigDisplayTimer
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
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping reset config display timer", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDCloudDataSyncStateFilter *)v4 _clearResetConfigDisplayTimer];
  [(HMDCloudDataSyncStateFilter *)v4 setResetConfigDisplayTimeHasElapsed:0];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_startResetConfigDisplayTimer
{
  v49 = *MEMORY[0x277D85DE8];
  if (!+[HMDDeviceCapabilities supportsCustomerReset])
  {
    v13 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v43 = 138543362;
      v44 = v22;
      v23 = "%{public}@Reset config display timer is not valid on this platform";
LABEL_22:
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, v23, &v43, 0xCu);
    }

LABEL_23:

    goto LABEL_24;
  }

  v3 = +[HMDDeviceSetupManager sharedManager];
  v4 = [v3 isRunning];

  v5 = [(HMDCloudDataSyncStateFilter *)self resetConfigDisplayTimer];

  if (v5)
  {
    if (v4)
    {
      v6 = [MEMORY[0x277CBEAA8] date];
      v7 = [(HMDCloudDataSyncStateFilter *)self resetConfigDisplayTimerStartTimestamp];
      [v6 timeIntervalSinceDate:v7];
      v9 = v8;

      [(HMDCloudDataSyncStateFilter *)self remainingResetConfigDisplayPeriod];
      v11 = v10 - v9;
      v12 = controllerKeyNotLandingShortCircuitWaitPeriod;
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
      if (v11 >= v12)
      {
        if (v16)
        {
          v17 = HMFGetLogIdentifier();
          v43 = 138543362;
          v44 = v17;
          _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Reset config display timer is running but short circuit time is less than current remaining, restarting timer", &v43, 0xCu);
        }

        objc_autoreleasePoolPop(v13);
        [(HMDCloudDataSyncStateFilter *)v14 _stopResetConfigDisplayTimer];
        [(HMDCloudDataSyncStateFilter *)v14 remainingResetConfigDisplayPeriod];
        if (v18 > 0.0)
        {
          goto LABEL_17;
        }

        v19 = &controllerKeyNotLandingShortCircuitWaitPeriod;
        goto LABEL_14;
      }

      if (v16)
      {
        v41 = HMFGetLogIdentifier();
        [(HMDCloudDataSyncStateFilter *)v14 remainingResetConfigDisplayPeriod];
        v43 = 138543874;
        v44 = v41;
        v45 = 2048;
        v46 = v42 - v9;
        v47 = 2048;
        v48 = controllerKeyNotLandingShortCircuitWaitPeriod;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Reset config display timer is already running and remaining time %lf is less than short circuit time %lu", &v43, 0x20u);
      }

LABEL_24:
      objc_autoreleasePoolPop(v13);
      goto LABEL_25;
    }

    v13 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v43 = 138543362;
      v44 = v22;
      v23 = "%{public}@Reset config display timer is already running, not restarting";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  [(HMDCloudDataSyncStateFilter *)self remainingResetConfigDisplayPeriod];
  if (v24 <= 0.0)
  {
    v19 = &controllerKeyNotLandingWaitPeriod;
    if (v4)
    {
      v19 = &controllerKeyNotLandingShortCircuitWaitPeriod;
    }

LABEL_14:
    v25 = *v19;
    v26 = objc_autoreleasePoolPush();
    v27 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      v43 = 138543618;
      v44 = v29;
      v45 = 2048;
      v46 = v25;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Reset config display timer does not exist, initializing it to %lf", &v43, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    [(HMDCloudDataSyncStateFilter *)v27 setRemainingResetConfigDisplayPeriod:v25];
  }

LABEL_17:
  v30 = objc_autoreleasePoolPush();
  v31 = self;
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = HMFGetLogIdentifier();
    [(HMDCloudDataSyncStateFilter *)v31 remainingResetConfigDisplayPeriod];
    v43 = 138543618;
    v44 = v33;
    v45 = 2048;
    v46 = v34;
    _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Starting a timer with %lf seconds to wait for controller key to land", &v43, 0x16u);
  }

  objc_autoreleasePoolPop(v30);
  v35 = objc_alloc(MEMORY[0x277D0F920]);
  [(HMDCloudDataSyncStateFilter *)v31 remainingResetConfigDisplayPeriod];
  v36 = [v35 initWithTimeInterval:1 options:?];
  [(HMDCloudDataSyncStateFilter *)v31 setResetConfigDisplayTimer:v36];

  v37 = [(HMDCloudDataSyncStateFilter *)v31 resetConfigDisplayTimer];
  [v37 setDelegate:v31];

  v38 = [(HMDCloudDataSyncStateFilter *)v31 resetConfigDisplayTimer];
  [v38 resume];

  v39 = [MEMORY[0x277CBEAA8] date];
  [(HMDCloudDataSyncStateFilter *)v31 setResetConfigDisplayTimerStartTimestamp:v39];

LABEL_25:
  v40 = *MEMORY[0x277D85DE8];
}

- (void)kickResetConfigDisplayTimer
{
  v3 = [(HMDMessageFilter *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HMDCloudDataSyncStateFilter_kickResetConfigDisplayTimer__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
}

void __58__HMDCloudDataSyncStateFilter_kickResetConfigDisplayTimer__block_invoke(uint64_t a1)
{
  v4 = +[HMDDeviceCapabilities deviceCapabilities];
  if ([v4 supportsKeychainSync] && (objc_msgSend(*(a1 + 32), "keychainSyncEnabled") & 1) != 0)
  {
    v2 = [*(a1 + 32) resetConfigDisplayTimer];

    if (v2)
    {
      v3 = *(a1 + 32);

      [v3 _startResetConfigDisplayTimer];
    }
  }

  else
  {
  }
}

- (void)_stallCloudDataSyncTimer
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCloudDataSyncStateFilter *)self cloudDataSyncInProgressTimer];

  if (!v3)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v22;
      v23 = "%{public}@There is no cloud sync timer running?";
LABEL_13:
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, v23, &v25, 0xCu);
    }

LABEL_14:

    objc_autoreleasePoolPop(v19);
    goto LABEL_15;
  }

  v4 = [(HMDCloudDataSyncStateFilter *)self dataSyncTimerStartTimestamp];

  if (!v4)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v22;
      v23 = "%{public}@There is data sync timer timestamp timer running?";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  [(HMDCloudDataSyncStateFilter *)self setCloudDataSyncInProgressTimer:0];
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [(HMDCloudDataSyncStateFilter *)self dataSyncTimerStartTimestamp];
  [v5 timeIntervalSinceDate:v6];
  v8 = v7;

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v25 = 138543618;
    v26 = v12;
    v27 = 2048;
    v28 = v8;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Stalling the cloud data sync timer, %lf seconds have passed on this timer", &v25, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDCloudDataSyncStateFilter *)v10 remainingDataSyncPeriod];
  [(HMDCloudDataSyncStateFilter *)v10 setRemainingDataSyncPeriod:v13 - v8];
  [(HMDCloudDataSyncStateFilter *)v10 remainingDataSyncPeriod];
  if (v14 <= 0.0)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v10;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Remaining period became less than 0?", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    [(HMDCloudDataSyncStateFilter *)v16 setRemainingDataSyncPeriod:cloudDataSyncInProgressWaitPeriod];
  }

LABEL_15:
  v24 = *MEMORY[0x277D85DE8];
}

- (void)_resetCloudDataSyncTimer
{
  [(HMDCloudDataSyncStateFilter *)self setCloudDataSyncInProgressTimer:0];
  [(HMDCloudDataSyncStateFilter *)self setDataSyncTimerStartTimestamp:0];

  [(HMDCloudDataSyncStateFilter *)self setRemainingDataSyncPeriod:0.0];
}

- (void)_stopCloudDataSyncTimer
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
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping cloud data sync timer", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDCloudDataSyncStateFilter *)v4 _resetCloudDataSyncTimer];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_startCloudDataSyncTimer
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = +[HMDDeviceCapabilities deviceCapabilities];
  v4 = [v3 supportsKeychainSync];

  if (v4)
  {
    [(HMDCloudDataSyncStateFilter *)self remainingDataSyncPeriod];
    if (v5 <= 0.0)
    {
      v6 = cloudDataSyncInProgressWaitPeriod;
      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v26 = 138543618;
        v27 = v10;
        v28 = 2048;
        v29 = v6;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Timer does not exist, initializing it to %lf", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      [(HMDCloudDataSyncStateFilter *)v8 setRemainingDataSyncPeriod:v6];
    }

    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      [(HMDCloudDataSyncStateFilter *)v12 remainingDataSyncPeriod];
      v26 = 138543618;
      v27 = v14;
      v28 = 2048;
      v29 = v15;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Starting a timer with %lf seconds to wait for cloud data sync to complete", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [(HMDCloudDataSyncStateFilter *)v12 cloudDataSyncInProgressTimer];
    [v16 setDelegate:v12];

    v17 = objc_alloc(MEMORY[0x277D0F920]);
    [(HMDCloudDataSyncStateFilter *)v12 remainingDataSyncPeriod];
    v18 = [v17 initWithTimeInterval:1 options:?];
    [(HMDCloudDataSyncStateFilter *)v12 setCloudDataSyncInProgressTimer:v18];

    v19 = [(HMDCloudDataSyncStateFilter *)v12 cloudDataSyncInProgressTimer];
    [v19 resume];

    v20 = [MEMORY[0x277CBEAA8] date];
    [(HMDCloudDataSyncStateFilter *)v12 setDataSyncTimerStartTimestamp:v20];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Cloud data sync timer is not valid on devices without keychain sync", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)a3
{
  v4 = a3;
  v5 = [(HMDMessageFilter *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__HMDCloudDataSyncStateFilter_timerDidFire___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __44__HMDCloudDataSyncStateFilter_timerDidFire___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) cloudDataSyncInProgressTimer];

  if (v2 == v3)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 40);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Cloud data sync in progress timer has fired", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    [*(a1 + 40) _resetCloudDataSyncTimer];
    *(*(a1 + 40) + 37) = 0;
    v10 = @"kCloudDataSyncTimerExpiredNotification";
    goto LABEL_9;
  }

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) resetConfigDisplayTimer];

  if (v4 == v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 40);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Reset config display timer has fired", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [*(a1 + 40) _clearResetConfigDisplayTimer];
    [*(a1 + 40) setResetConfigDisplayTimeHasElapsed:1];
    v10 = @"kCloudDataSyncInProgressUpdatedNotification";
LABEL_9:
    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 postNotificationName:v10 object:*(a1 + 40)];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)updateNetworkConnectivity:(BOOL)a3
{
  v5 = [(HMDMessageFilter *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__HMDCloudDataSyncStateFilter_updateNetworkConnectivity___block_invoke;
  v6[3] = &unk_279735D28;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

uint64_t __57__HMDCloudDataSyncStateFilter_updateNetworkConnectivity___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setNetworkConnectivityAvailable:*(a1 + 40)];
  v2 = *(a1 + 32);
  if (v2[37] == 1 && [v2 keychainSyncEnabled])
  {
    v3 = *(a1 + 40);
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if (v3 == 1)
    {
      if (v7)
      {
        v8 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v8;
        _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Network is reachable now, starting the cloud sync timer", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v4);
      [*(a1 + 32) _startDataConfigResetTimers];
    }

    else
    {
      if (v7)
      {
        v18 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v18;
        _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Network is not reachable now, stalling the cloud sync timer", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v4);
      [*(a1 + 32) _stallCloudDataSyncTimer];
      [*(a1 + 32) _stallResetConfigDisplayTimer];
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 40);
      v14 = HMFBooleanToString();
      [*(a1 + 32) keychainSyncEnabled];
      v15 = HMFBooleanToString();
      v19 = 138543874;
      v20 = v12;
      v21 = 2112;
      v22 = v14;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Network reachability changed to %@ and decryption failed, keychain enabled: %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
  }

  result = [*(a1 + 32) networkConnectivityAvailable];
  if (result)
  {
    result = [*(a1 + 32) _evaluateMoveToHH2];
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_stopDataConfigResetTimers
{
  [(HMDCloudDataSyncStateFilter *)self _stopCloudDataSyncTimer];

  [(HMDCloudDataSyncStateFilter *)self _stopResetConfigDisplayTimer];
}

- (void)_startDataConfigResetTimers
{
  [(HMDCloudDataSyncStateFilter *)self _startCloudDataSyncTimer];
  if (![(HMDCloudDataSyncStateFilter *)self resetConfigDisplayTimeHasElapsed])
  {

    [(HMDCloudDataSyncStateFilter *)self _startResetConfigDisplayTimer];
  }
}

- (void)startDataConfigResetTimers
{
  v3 = [(HMDMessageFilter *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HMDCloudDataSyncStateFilter_startDataConfigResetTimers__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
}

void __57__HMDCloudDataSyncStateFilter_startDataConfigResetTimers__block_invoke(uint64_t a1)
{
  v4 = +[HMDDeviceCapabilities deviceCapabilities];
  if ([v4 supportsKeychainSync])
  {
    v2 = [*(a1 + 32) keychainSyncEnabled];

    if (v2)
    {
      v3 = *(a1 + 32);

      [v3 _startDataConfigResetTimers];
    }
  }

  else
  {
  }
}

- (void)setDecryptionFailed:(BOOL)a3
{
  v5 = [(HMDMessageFilter *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__HMDCloudDataSyncStateFilter_setDecryptionFailed___block_invoke;
  v6[3] = &unk_279735D28;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

void __51__HMDCloudDataSyncStateFilter_setDecryptionFailed___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2[37] == *(a1 + 40))
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v7 = *(*(a1 + 32) + 37);
      v8 = HMFBooleanToString();
      *buf = 138543618;
      v31 = v6;
      v32 = 2112;
      v33 = v8;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Decrypt failed is already set to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    v29 = 0;
    v9 = [v2 _cloudSyncinProgressCheck:0 supressPopup:1 sendCanceledError:0 dataSyncState:&v29];
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(*(a1 + 32) + 37);
      v15 = HMFBooleanToString();
      v16 = *(a1 + 40);
      v17 = HMFBooleanToString();
      v18 = HMHomeManagerDataSyncStateToString();
      *buf = 138544130;
      v31 = v13;
      v32 = 2112;
      v33 = v15;
      v34 = 2112;
      v35 = v17;
      v36 = 2112;
      v37 = v18;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Updating decrypt fail state from %@ to %@, dataSyncState: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
    *(*(a1 + 32) + 37) = *(a1 + 40);
    [*(a1 + 32) _postNotificationForDataSyncInProgress:v9 dataSyncState:v29 forcePost:0];
    if (*(a1 + 40) == 1 && [*(a1 + 32) keychainSyncEnabled])
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 32);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v22;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Decrypt failed and keychain is enabled, starting data reset timers", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      [*(a1 + 32) _startDataConfigResetTimers];
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = *(a1 + 32);
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        [*(a1 + 32) keychainSyncEnabled];
        v27 = HMFBooleanToString();
        *buf = 138543618;
        v31 = v26;
        v32 = 2112;
        v33 = v27;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Stopping data reset timers, keychain enabled: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      [*(a1 + 32) _stopDataConfigResetTimers];
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)decryptionFailed
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(HMDMessageFilter *)self workQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__HMDCloudDataSyncStateFilter_decryptionFailed__block_invoke;
  v5[3] = &unk_279734898;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)totalHomesInCloudZones:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudDataSyncStateFilter *)self homeManager];
  v6 = [v5 cloudDataSyncManager];
  v7 = [v6 homeManagerZone];

  v8 = [v5 uuid];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__HMDCloudDataSyncStateFilter_totalHomesInCloudZones___block_invoke;
  v10[3] = &unk_279734A00;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [v7 cloudRecordsForParentID:v8 completionHandler:v10];
}

void __54__HMDCloudDataSyncStateFilter_totalHomesInCloudZones___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Encountered an error while querying cloud cache for records", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = _Block_copy(*(a1 + 40));
    v12 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, 0, v6);
    }
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v18 = 0x2020000000;
    v19 = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __54__HMDCloudDataSyncStateFilter_totalHomesInCloudZones___block_invoke_150;
    v16[3] = &unk_2797296B0;
    v16[4] = *(a1 + 32);
    v16[5] = &buf;
    [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:v16];
    v13 = _Block_copy(*(a1 + 40));
    v14 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13, *(*(&buf + 1) + 24), 0);
    }

    _Block_object_dispose(&buf, 8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __54__HMDCloudDataSyncStateFilter_totalHomesInCloudZones___block_invoke_150(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 extractObjectChange];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Found : %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleCloudZoneReadyNotification:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 hmf_UUIDForKey:@"HMDCR.id"];
  [v5 hmf_BOOLForKey:@"HMDCR.stc"];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v6 UUIDString];
    v12 = HMFBooleanToString();
    *buf = 138543874;
    v22 = v10;
    v23 = 2112;
    v24 = v11;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Cloud manager completed initial fetch for zone %@, didServerTokenChange: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v13 = [(HMDMessageFilter *)v8 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HMDCloudDataSyncStateFilter__handleCloudZoneReadyNotification___block_invoke;
  block[3] = &unk_279734960;
  v18 = v6;
  v19 = v8;
  v20 = v5;
  v14 = v5;
  v15 = v6;
  dispatch_async(v13, block);

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __65__HMDCloudDataSyncStateFilter__handleCloudZoneReadyNotification___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"1411CE6C-B4DE-4622-A49D-F66FE296D6B5"];
    v4 = [v2 isEqual:v3];

    if (v4)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = *(a1 + 40);
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        v21 = 138543362;
        v22 = v8;
        _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@home manager zone fetch finished", &v21, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
      [*(a1 + 40) setHomeManagerFirstFetchFinished:1];
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 40);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Legacy zone fetch finished", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [*(a1 + 48) hmf_numberForKey:@"HMDCR.de"];
    v14 = v13;
    if (v13 && ([v13 BOOLValue] & 1) == 0)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = *(a1 + 40);
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v21 = 138543362;
        v22 = v18;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Legacy zone does not have home data records, home manager zone will not be fetched", &v21, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      [*(a1 + 40) setHomeManagerFirstFetchFinished:1];
    }
  }

  result = [*(a1 + 40) isHomeManagerFirstFetchFinished];
  if (result)
  {
    result = [*(a1 + 40) _evaluateMoveToHH2];
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_detectAndMigrateSharedUserWithEmptyOwnedHomes
{
  v3 = [(HMDCloudDataSyncStateFilter *)self homeManager];
  v4 = [v3 workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__HMDCloudDataSyncStateFilter__detectAndMigrateSharedUserWithEmptyOwnedHomes__block_invoke;
  v6[3] = &unk_2797359B0;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __77__HMDCloudDataSyncStateFilter__detectAndMigrateSharedUserWithEmptyOwnedHomes__block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) hasHH2MigrationAlreadyRequested])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v5;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@HH2 migration has already been requested. Not requesting again.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    v6 = [*(a1 + 40) homes];
    v7 = [v6 na_filter:&__block_literal_global_144_86510];

    v8 = [*(a1 + 40) homes];
    v9 = [v8 count];
    v10 = [v7 count];

    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9 - v10];
      *buf = 138543874;
      v31 = v14;
      v32 = 2112;
      v33 = v15;
      v34 = 2112;
      v35 = v16;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Owned Home Count : %@, Total Shared Home Count: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    if ([v7 count])
    {
      if (v9 == v10)
      {
        v17 = objc_autoreleasePoolPush();
        v18 = *(a1 + 32);
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543362;
          v31 = v20;
          _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Not migrating empty owned homes for shared users as they do not have any shared homes right now. This is already covered by the daily overnight migration which has some extra few checks. Please take a look at : fetchIsCurrentUserEligibleForAutoMigrationWithCompletion method", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v17);
      }

      else
      {
        v21 = *(a1 + 40);
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __77__HMDCloudDataSyncStateFilter__detectAndMigrateSharedUserWithEmptyOwnedHomes__block_invoke_145;
        v26[3] = &unk_27972B150;
        v22 = v7;
        v23 = *(a1 + 32);
        v24 = *(a1 + 40);
        v27 = v22;
        v28 = v23;
        v29 = v24;
        [v21 determineEmptyHomesForSharedUsersWithCompletionHandler:v26];
      }
    }

    else
    {
      [*(a1 + 32) setHasHH2MigrationAlreadyRequested:1];
      if (([*(a1 + 40) moveDirectlyToHH2IfOnlyHH2SharedHomesExist] & 1) == 0)
      {
        [*(a1 + 32) setHasHH2MigrationAlreadyRequested:0];
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __77__HMDCloudDataSyncStateFilter__detectAndMigrateSharedUserWithEmptyOwnedHomes__block_invoke_145(id *a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] count];
  if (v4 == [v3 count])
  {
    v5 = [a1[6] homes];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __77__HMDCloudDataSyncStateFilter__detectAndMigrateSharedUserWithEmptyOwnedHomes__block_invoke_146;
    v20[3] = &unk_2797322A0;
    v20[4] = a1[5];
    v21 = v3;
    v6 = [v5 na_allObjectsPassTest:v20];

    if (v6)
    {
      [a1[5] setHasHH2MigrationAlreadyRequested:1];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __77__HMDCloudDataSyncStateFilter__detectAndMigrateSharedUserWithEmptyOwnedHomes__block_invoke_147;
      v19[3] = &unk_2797359D8;
      v7 = a1[6];
      v19[4] = a1[5];
      [v7 autoMigrateToHH2WithCompletionHandler:v19];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = a1[5];
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        v23 = v17;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Not All the homes are ready for HH2 yet. Not auto migrating shared user to HH2", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = a1[5];
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1[4], "count")}];
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "count")}];
      *buf = 138543874;
      v23 = v11;
      v24 = 2112;
      v25 = v12;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Actual owned homes and empty home map do not agree. Not moving shared user to HH2: [%@ / %@]", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __77__HMDCloudDataSyncStateFilter__detectAndMigrateSharedUserWithEmptyOwnedHomes__block_invoke_146(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v9 = [v3 uuid];
    v10 = [v8 objectForKeyedSubscript:v9];
    [v10 BOOLValue];
    v11 = HMFBooleanToString();
    [v3 isUpdatedToHH2];
    v12 = HMFBooleanToString();
    v19 = 138544130;
    v20 = v7;
    v21 = 2112;
    v22 = v3;
    v23 = 2112;
    v24 = v11;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@%@ / is owned home empty: %@ / is shared user updated to HH2: %@", &v19, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  if ([v3 isOwnerUser])
  {
    v13 = *(a1 + 40);
    v14 = [v3 uuid];
    v15 = [v13 objectForKeyedSubscript:v14];
    v16 = [v15 BOOLValue];
  }

  else
  {
    v16 = [v3 isUpdatedToHH2];
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

void __77__HMDCloudDataSyncStateFilter__detectAndMigrateSharedUserWithEmptyOwnedHomes__block_invoke_147(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@failed to start auto migration to HH2 with an error: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) setHasHH2MigrationAlreadyRequested:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)moveDirectlyToHH2IfAccountOnlyHasUpgradedSharedHomesAllowEmptyOwnedHomes:(BOOL)a3
{
  if (_os_feature_enabled_impl())
  {
    v5 = [(HMDMessageFilter *)self workQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __104__HMDCloudDataSyncStateFilter_moveDirectlyToHH2IfAccountOnlyHasUpgradedSharedHomesAllowEmptyOwnedHomes___block_invoke;
    v6[3] = &unk_279735D28;
    v6[4] = self;
    v7 = a3;
    dispatch_async(v5, v6);
  }
}

uint64_t __104__HMDCloudDataSyncStateFilter_moveDirectlyToHH2IfAccountOnlyHasUpgradedSharedHomesAllowEmptyOwnedHomes___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "totalHomes")}];
    [*(a1 + 32) hasHH2MigrationAlreadyRequested];
    v7 = HMFBooleanToString();
    *buf = 138543874;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@[Shared User] : Going to check whether there are homes in the account or not: [homes = %@] [HH2 migration requested: %@]", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) totalHomes];
  if (result)
  {
    result = [*(a1 + 32) _verifyAccountStatusForMigration];
    if (result)
    {
      v9 = *(a1 + 32);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __104__HMDCloudDataSyncStateFilter_moveDirectlyToHH2IfAccountOnlyHasUpgradedSharedHomesAllowEmptyOwnedHomes___block_invoke_139;
      v11[3] = &unk_279729688;
      v11[4] = v9;
      v12 = *(a1 + 40);
      result = [v9 totalHomesInCloudZones:v11];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void __104__HMDCloudDataSyncStateFilter_moveDirectlyToHH2IfAccountOnlyHasUpgradedSharedHomesAllowEmptyOwnedHomes___block_invoke_139(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v10 = v3;
    v11 = v4;
    v7 = [*(a1 + 32) workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __104__HMDCloudDataSyncStateFilter_moveDirectlyToHH2IfAccountOnlyHasUpgradedSharedHomesAllowEmptyOwnedHomes___block_invoke_2;
    block[3] = &unk_27972A540;
    block[4] = *(a1 + 32);
    block[5] = a2;
    v9 = *(a1 + 40);
    dispatch_async(v7, block);
  }
}

void __104__HMDCloudDataSyncStateFilter_moveDirectlyToHH2IfAccountOnlyHasUpgradedSharedHomesAllowEmptyOwnedHomes___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) totalHomes] != *(a1 + 40))
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
      *buf = 138543618;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@[Shared User] : There are still homes in the cloud which are not yet downloaded. : [HomesInCloud : %@]", buf, 0x16u);
    }

    goto LABEL_11;
  }

  v2 = +[HMDRemoteLoginUtilities isTwoFactorAuthenticationEnabledForAccount];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (!v2)
  {
    if (v6)
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v13;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@[Empty Account] : HSA is not enabled for this account. Cannot move this account to HH2", buf, 0xCu);
    }

LABEL_11:

    objc_autoreleasePoolPop(v3);
    goto LABEL_12;
  }

  if (v6)
  {
    v7 = HMFGetLogIdentifier();
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "totalHomes")}];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
    *buf = 138543874;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Moving shared user to HH2 : [total Homes : %@], [HomesInCloud : %@]", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  v10 = *(a1 + 32);
  if (*(a1 + 48))
  {
    [v10 _detectAndMigrateSharedUserWithEmptyOwnedHomes];
  }

  else
  {
    [v10 setHasHH2MigrationAlreadyRequested:1];
    v15 = [*(a1 + 32) homeManager];
    v16 = [v15 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __104__HMDCloudDataSyncStateFilter_moveDirectlyToHH2IfAccountOnlyHasUpgradedSharedHomesAllowEmptyOwnedHomes___block_invoke_140;
    block[3] = &unk_279735D00;
    block[4] = *(a1 + 32);
    dispatch_async(v16, block);
  }

LABEL_12:
  v14 = *MEMORY[0x277D85DE8];
}

void __104__HMDCloudDataSyncStateFilter_moveDirectlyToHH2IfAccountOnlyHasUpgradedSharedHomesAllowEmptyOwnedHomes___block_invoke_140(uint64_t a1)
{
  v2 = [*(a1 + 32) homeManager];
  v3 = [v2 moveDirectlyToHH2IfOnlyHH2SharedHomesExist];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 32);

    [v4 setHasHH2MigrationAlreadyRequested:0];
  }
}

- (void)_moveDirectlyToHH2IfAccountIsEmpty
{
  v22 = *MEMORY[0x277D85DE8];
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"DefaultNewUsersToHH2Enabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0);
  if ((_os_feature_enabled_impl() & 1) != 0 || AppBooleanValue)
  {
    v4 = [(HMDCloudDataSyncStateFilter *)self homeManager];
    v5 = [v4 idsServerBag];
    v6 = [v5 isHH2SoftwareReleased];

    if (v6)
    {
      if ([(HMDCloudDataSyncStateFilter *)self areWeAllowedToAutoMigrateEmptyAccountsToHH2])
      {
        if (![v4 areThereAnyTTSUSessionsOngoing])
        {
          v16 = [(HMDMessageFilter *)self workQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __65__HMDCloudDataSyncStateFilter__moveDirectlyToHH2IfAccountIsEmpty__block_invoke;
          block[3] = &unk_279735D00;
          block[4] = self;
          dispatch_async(v16, block);

          goto LABEL_15;
        }

        v7 = objc_autoreleasePoolPush();
        v8 = self;
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = HMFGetLogIdentifier();
          *buf = 138543362;
          v19 = v10;
          v11 = "%{public}@Not migrating to HH2 as a TTSU session is ongoing.";
LABEL_12:
          _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, v11, buf, 0xCu);
          goto LABEL_13;
        }
      }

      else
      {
        v7 = objc_autoreleasePoolPush();
        v8 = self;
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = HMFGetLogIdentifier();
          *buf = 138543362;
          v19 = v10;
          v11 = "%{public}@Not migrating empty account to HH2 as 'allowed to auto migrate empty accounts' is NO.";
          goto LABEL_12;
        }
      }
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v12 = [(HMDCloudDataSyncStateFilter *)v8 homeManager];
        v13 = [v12 idsServerBag];
        [v13 isHH2SoftwareReleased];
        v14 = HMFBooleanToString();
        *buf = 138543618;
        v19 = v10;
        v20 = 2112;
        v21 = v14;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Can't migrate empty account to HH2 as HH2 software released server bag value is %@", buf, 0x16u);

LABEL_13:
      }
    }

    objc_autoreleasePoolPop(v7);
LABEL_15:
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __65__HMDCloudDataSyncStateFilter__moveDirectlyToHH2IfAccountIsEmpty__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "totalHomes")}];
    [*(a1 + 32) hasHH2MigrationAlreadyRequested];
    v7 = HMFBooleanToString();
    *buf = 138543874;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Going to check whether there are homes in the account or not: [homes = %@] [HH2 migration requested: %@]", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) totalHomes];
  if (!result)
  {
    result = [*(a1 + 32) _verifyAccountStatusForMigration];
    if (result)
    {
      v9 = *(a1 + 32);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __65__HMDCloudDataSyncStateFilter__moveDirectlyToHH2IfAccountIsEmpty__block_invoke_134;
      v11[3] = &unk_279734E28;
      v11[4] = v9;
      result = [v9 totalHomesInCloudZones:v11];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void __65__HMDCloudDataSyncStateFilter__moveDirectlyToHH2IfAccountIsEmpty__block_invoke_134(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    if (a2)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = *(a1 + 32);
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
        *buf = 138543618;
        v17 = v9;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[Empty Account] : There are still homes in the cloud which are not yet downloaded. : [HomesInCloud : %@]", buf, 0x16u);
      }

LABEL_9:

      objc_autoreleasePoolPop(v6);
      goto LABEL_10;
    }

    if (!+[HMDRemoteLoginUtilities isTwoFactorAuthenticationEnabledForAccount])
    {
      v6 = objc_autoreleasePoolPush();
      v7 = *(a1 + 32);
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543362;
        v17 = v13;
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[Empty Account] : HSA is not enabled for this account. Cannot move this account to HH2", buf, 0xCu);
      }

      goto LABEL_9;
    }

    [*(a1 + 32) setHasHH2MigrationAlreadyRequested:1];
    v11 = [*(a1 + 32) homeManager];
    v12 = [v11 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__HMDCloudDataSyncStateFilter__moveDirectlyToHH2IfAccountIsEmpty__block_invoke_136;
    block[3] = &unk_279735D00;
    block[4] = *(a1 + 32);
    dispatch_async(v12, block);
  }

LABEL_10:

  v14 = *MEMORY[0x277D85DE8];
}

void __65__HMDCloudDataSyncStateFilter__moveDirectlyToHH2IfAccountIsEmpty__block_invoke_136(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) homeManager];
  v3 = [v2 moveDirectlyToHH2];

  if ((v3 & 1) == 0)
  {
    [*(a1 + 32) setHasHH2MigrationAlreadyRequested:0];
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Unable to create HH2 sentinel zone hence empty account cannot be moved to HH2 for now.", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_verifyAccountStatusForMigration
{
  v2 = self;
  v17 = *MEMORY[0x277D85DE8];
  if ([(HMDCloudDataSyncStateFilter *)self iCloudAccountActive])
  {
    if ([(HMDCloudDataSyncStateFilter *)v2 hasHH2MigrationAlreadyRequested])
    {
      v3 = objc_autoreleasePoolPush();
      v2 = v2;
      v4 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = HMFGetLogIdentifier();
        *buf = 138543362;
        v14 = v5;
        v6 = "%{public}@Migration to HH2 is already requested. Not requesting again.";
LABEL_7:
        _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, v6, buf, 0xCu);
LABEL_8:
      }
    }

    else
    {
      if (![(HMDCloudDataSyncStateFilter *)v2 networkConnectivityAvailable])
      {
        v3 = objc_autoreleasePoolPush();
        v2 = v2;
        v4 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          goto LABEL_9;
        }

        v5 = HMFGetLogIdentifier();
        *buf = 138543362;
        v14 = v5;
        v6 = "%{public}@Network is not reachable right now. Not auto migrating account.";
        goto LABEL_7;
      }

      if (![(HMDCloudDataSyncStateFilter *)v2 isHomeManagerFirstFetchFinished])
      {
        v3 = objc_autoreleasePoolPush();
        v2 = v2;
        v4 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          goto LABEL_9;
        }

        v5 = HMFGetLogIdentifier();
        *buf = 138543362;
        v14 = v5;
        v6 = "%{public}@First fetch for Home Manager's zone is not done yet.";
        goto LABEL_7;
      }

      v12 = 0;
      if ([(HMDCloudDataSyncStateFilter *)v2 _cloudSyncinProgressCheck:0 supressPopup:1 sendCanceledError:0 dataSyncState:&v12])
      {
        v3 = objc_autoreleasePoolPush();
        v9 = v2;
        v4 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          goto LABEL_9;
        }

        v5 = HMFGetLogIdentifier();
        *buf = 138543362;
        v14 = v5;
        v6 = "%{public}@cloud data is still syncing. Let's re-evaluate HH2 migration condition once it is done";
        goto LABEL_7;
      }

      if (v12 == 1)
      {
        result = 1;
        goto LABEL_10;
      }

      v3 = objc_autoreleasePoolPush();
      v10 = v2;
      v4 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = HMFGetLogIdentifier();
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
        *buf = 138543618;
        v14 = v5;
        v15 = 2112;
        v16 = v11;
        _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@HH1 data sync state is not good yet. %@", buf, 0x16u);

        goto LABEL_8;
      }
    }
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    v2 = v2;
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v5;
      v6 = "%{public}@iCloud account is not signed in. Not going to auto migrate empty account.";
      goto LABEL_7;
    }
  }

LABEL_9:

  objc_autoreleasePoolPop(v3);
  result = 0;
LABEL_10:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_evaluateMoveToHH2
{
  [(HMDCloudDataSyncStateFilter *)self _moveDirectlyToHH2IfAccountIsEmpty];

  [(HMDCloudDataSyncStateFilter *)self moveDirectlyToHH2IfAccountOnlyHasUpgradedSharedHomesAllowEmptyOwnedHomes:1];
}

- (void)evaluateMoveToHH2
{
  v3 = [(HMDMessageFilter *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HMDCloudDataSyncStateFilter_evaluateMoveToHH2__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
}

- (BOOL)areWeAllowedToAutoMigrateEmptyAccountsToHH2
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"stopAutoMigratingEmptyAccountsToHH2"];
  v4 = [v3 BOOLValue];

  return (CFPreferencesGetAppBooleanValue(@"stopAutoMigratingEmptyAccountsToHH2", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0) == 0) & ~v4;
}

- (void)_postNotificationForDataSyncInProgress:(BOOL)a3 dataSyncState:(unint64_t)a4 forcePost:(BOOL)a5
{
  v7 = a3;
  v22 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v9 = [(HMDCloudDataSyncStateFilter *)self _cloudSyncinProgressCheck:0 supressPopup:1 sendCanceledError:0 dataSyncState:&v19];
  if (a5 || ((v9 ^ v7) & 1) != 0 || v19 != a4)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Posting notification kCloudDataSyncInProgressUpdatedNotification", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 postNotificationName:@"kCloudDataSyncInProgressUpdatedNotification" object:v11];

    v15 = [(HMDCloudDataSyncStateFilter *)v11 homeManager];
    v16 = [v15 metricsManager];
    v17 = [v16 deviceStateManager];
    [v17 updateWithDataSyncState:v19];
  }

  [(HMDCloudDataSyncStateFilter *)self _evaluateMoveToHH2];
  v18 = *MEMORY[0x277D85DE8];
}

- (void)handleKeychainSyncStateChangedNotification:(id)a3
{
  v4 = [(HMDMessageFilter *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HMDCloudDataSyncStateFilter_handleKeychainSyncStateChangedNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v4, block);
}

void __74__HMDCloudDataSyncStateFilter_handleKeychainSyncStateChangedNotification___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v2 = [*(a1 + 32) _cloudSyncinProgressCheck:0 supressPopup:1 sendCanceledError:0 dataSyncState:&v12];
  v3 = *(a1 + 32);
  v4 = +[HMDAppleAccountSettings sharedSettings];
  [v3 _updateKeychainSyncEnabled:{objc_msgSend(v4, "isKeychainSyncEnabled")}];

  [*(a1 + 32) _postNotificationForDataSyncInProgress:v2 dataSyncState:v12 forcePost:0];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(a1 + 32) keychainSyncEnabled];
    v10 = @"disabled";
    if (v9)
    {
      v10 = @"enabled";
    }

    *buf = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Received notification about keychain sync change, keychain is %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(HMDCloudDataSyncStateFilter *)self msgDispatcher];
  [v4 deregisterReceiver:self];

  v5.receiver = self;
  v5.super_class = HMDCloudDataSyncStateFilter;
  [(HMDCloudDataSyncStateFilter *)&v5 dealloc];
}

- (HMDCloudDataSyncStateFilter)initWithName:(id)a3 homeManager:(id)a4 messageDispatcher:(id)a5 serverTokenAvailable:(BOOL)a6 homeDataHasBeenDecrypted:(BOOL)a7 homeManagerServerTokenAvailable:(BOOL)a8 localDataDecryptionFailed:(BOOL)a9 totalHomes:(int64_t)a10 currentAccount:(id)a11
{
  v49 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a11;
  v44.receiver = self;
  v44.super_class = HMDCloudDataSyncStateFilter;
  v20 = [(HMDMessageFilter *)&v44 initWithName:v16];
  if (v20)
  {
    v42 = a6;
    v21 = HMFGetOSLogHandle();
    logger = v20->_logger;
    v20->_logger = v21;

    v20->_hh1FirstCloudSyncComplete = 0;
    objc_storeStrong(&v20->_msgDispatcher, a5);
    v23 = +[HMDAppleAccountSettings sharedSettings];
    v20->_keychainSyncEnabled = [v23 isKeychainSyncEnabled];

    v24 = objc_autoreleasePoolPush();
    v25 = v20;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v41 = a7;
      v27 = v16;
      v28 = v19;
      v29 = v18;
      v31 = v30 = v17;
      keychainSyncEnabled = v20->_keychainSyncEnabled;
      *buf = 138543618;
      v46 = v31;
      v47 = 1024;
      v48 = keychainSyncEnabled;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Key chain sync enabled is set to: %d", buf, 0x12u);

      v17 = v30;
      v18 = v29;
      v19 = v28;
      v16 = v27;
      a7 = v41;
    }

    objc_autoreleasePoolPop(v24);
    popupTimer = v25->_popupTimer;
    v25->_popupTimer = 0;

    v25->_keychainSyncRequiredPopShown = 0;
    v25->_iCloudAccountActive = 0;
    v25->_cloudDataSyncCompleted = (a8 | ~a7) & v42;
    v25->_serverTokenAvailable = v42;
    v34 = [MEMORY[0x277CCAD78] UUID];
    uuid = v25->_uuid;
    v25->_uuid = v34;

    v25->_totalHomes = a10;
    objc_storeWeak(&v25->_homeManager, v17);
    v25->_remainingDataSyncPeriod = 0.0;
    v36 = +[HMDDeviceCapabilities deviceCapabilities];
    v25->_decryptionFailed = ([v36 supportsStandaloneMode] | a7) ^ 1;

    v25->_localDataDecryptionFailed = a9;
    [(HMDCloudDataSyncStateFilter *)v25 _updateCurrentAccount:v19];
    v37 = [MEMORY[0x277CCAB98] defaultCenter];
    [v37 addObserver:v25 selector:sel_handleKeychainSyncStateChangedNotification_ name:@"HMDAppleAccountSettingsKeychainSyncStateUpdatedNotificationKey" object:0];

    v38 = [MEMORY[0x277CCAB98] defaultCenter];
    [v38 addObserver:v25 selector:sel__handleCloudZoneReadyNotification_ name:@"HMDCloudZoneReadyNotification" object:0];
  }

  v39 = *MEMORY[0x277D85DE8];
  return v20;
}

+ (BOOL)isAllowedMessage:(id)a3
{
  v3 = isAllowedMessage__pred;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&isAllowedMessage__pred, &__block_literal_global_181);
  }

  v5 = [isAllowedMessage___allowedMessages containsObject:v4];

  return v5;
}

void __48__HMDCloudDataSyncStateFilter_isAllowedMessage___block_invoke()
{
  v19[74] = *MEMORY[0x277D85DE8];
  v19[0] = @"kResetConfigRequestKey";
  v19[1] = @"kQueryHomeKitUsageStateRequestKey";
  v19[2] = @"kSearchForNewAccessoriesRequestKey";
  v19[3] = @"kFetchNewAccessoriesRequestKey";
  v0 = *MEMORY[0x277CD0300];
  v19[4] = *MEMORY[0x277CD01D8];
  v19[5] = v0;
  v1 = *MEMORY[0x277CD0310];
  v19[6] = *MEMORY[0x277CD0368];
  v19[7] = v1;
  v19[8] = *MEMORY[0x277CD2568];
  v19[9] = @"kRetrieveLocationEventRequestKey";
  v2 = *MEMORY[0x277CCFBF8];
  v19[10] = *MEMORY[0x277CCFBF0];
  v19[11] = v2;
  v3 = *MEMORY[0x277CCFCB0];
  v19[12] = @"HMHomeAllowUserManagementMessage";
  v19[13] = v3;
  v4 = *MEMORY[0x277CCFC88];
  v19[14] = *MEMORY[0x277CCFC90];
  v19[15] = v4;
  v5 = *MEMORY[0x277CD0348];
  v19[16] = *MEMORY[0x277CCFCB8];
  v19[17] = v5;
  v6 = *MEMORY[0x277CD1128];
  v19[18] = *MEMORY[0x277CD1108];
  v19[19] = v6;
  v7 = *MEMORY[0x277CD10F8];
  v19[20] = *MEMORY[0x277CD1118];
  v19[21] = v7;
  v8 = *MEMORY[0x277CD1338];
  v19[22] = *MEMORY[0x277CD1110];
  v19[23] = v8;
  v19[24] = @"kSecureServerIDSMessageRequestKey";
  v19[25] = @"kSecureClientIDSMessageRequestKey";
  v19[26] = @"kSecureSessionInvalidatedNotificationKey";
  v19[27] = @"kHomeDataSyncRequestKey";
  v19[28] = @"kHomeDataFragmentedSyncRequestKey";
  v19[29] = @"kAreYouAtHomeRequestKey";
  v19[30] = @"kDoYouSeeUnpairedAccessoriesKey";
  v19[31] = @"kAddRemoteAccessRequestKey";
  v19[32] = @"kUserRemovedRequestKey";
  v19[33] = @"kElectDeviceForIDSSessionKey";
  v19[34] = @"kUserResetHomeConfigRequestKey";
  v19[35] = @"kMetadataDataSyncRequestKey";
  v19[36] = @"kModifyCharacterisiticNotificationsRequestKey";
  v19[37] = @"kCharacterisiticsChangedInternalNotificationKey";
  v19[38] = @"kDismissBulletinInternalRequestKey";
  v19[39] = @"kDismissDialogInternalRequestKey";
  v19[40] = @"kRequestForCompanionKeysSyncInternalRequestKey";
  v19[41] = @"kCompanionKeysSyncInternalRequestKey";
  v19[42] = @"kResidentElectionParametersInternalRequestKey";
  v19[43] = @"kRetrieveVendorIdentifierInternalKey";
  v9 = *MEMORY[0x277CD0318];
  v19[44] = @"kHomeConfigInternalRequestKey";
  v19[45] = v9;
  v19[46] = *MEMORY[0x277CD03C8];
  v19[47] = @"kAccessHomeInviteRequestKey";
  v19[48] = @"kUpdateHomeInvitationStateInternalRequestKey";
  v19[49] = @"kUpdateInvitationStateRequestKey";
  v19[50] = @"kPingInternalRequestKey";
  v19[51] = @"kStartRemoteStreamRequestKey";
  v19[52] = @"kReconfigureRemoteStreamRequestKey";
  v19[53] = @"kNegotitateRemoteStreamRequestKey";
  v19[54] = @"kStopRemoteStreamRequestKey";
  v19[55] = @"kTakeSnapshotRemoteRequestKey";
  v19[56] = @"kTakeSnapshotRemoteReceivedKey";
  v19[57] = @"kEnableAccessoryReachabilityNotificationRequestKey";
  v19[58] = @"kDisableAccessoryReachabilityNotificationRequestKey";
  v19[59] = @"kRemoteReachabilityChangedNotificationKey";
  v10 = *MEMORY[0x277CD0180];
  v19[60] = @"kAddHomeInvitesInternalRequestKey";
  v19[61] = v10;
  v19[62] = @"kDeviceMeshUpdateRequestKey";
  v19[63] = @"kDeviceMeshUpdateKey";
  v19[64] = @"kKeyTransferAgentKey";
  v19[65] = @"kSystemLogCaptureRequestKey";
  v19[66] = *MEMORY[0x277CD23F8];
  v19[67] = @"kRemoteUpdateUserPresenceNotificationKey";
  v19[68] = *MEMORY[0x277CD2330];
  v19[69] = *MEMORY[0x277CD2328];
  v19[70] = *MEMORY[0x277CD2338];
  v11 = MEMORY[0x277CBEB98];
  v19[71] = *MEMORY[0x277CD1070];
  v19[72] = *MEMORY[0x277CD1080];
  v19[73] = @"HMDHouseholdMetricsHomeDataLogEventRequest";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:74];
  v13 = [v11 setWithArray:v12];
  v14 = [v13 mutableCopy];

  v15 = +[HMDRemoteLoginHandler remoteMessages];
  [v14 addObjectsFromArray:v15];

  v16 = [v14 copy];
  v17 = isAllowedMessage___allowedMessages;
  isAllowedMessage___allowedMessages = v16;

  v18 = *MEMORY[0x277D85DE8];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t108 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t108, &__block_literal_global_176_86573);
  }

  v3 = logCategory__hmf_once_v109;

  return v3;
}

uint64_t __42__HMDCloudDataSyncStateFilter_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v109;
  logCategory__hmf_once_v109 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end