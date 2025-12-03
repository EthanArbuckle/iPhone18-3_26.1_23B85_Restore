@interface HMDAccessoryFirmwareUpdateSession
+ (id)__calculateDigestDataFromFile:(id)file maxDataSize:(unint64_t)size error:(id *)error;
+ (id)logCategory;
- (BOOL)_isAccessoryVersionInSyncWithAssetVersion:(id)version matterFirmwareRevisionNumber:(id)number assetVersionString:(id)string matterFirmwareRevisionString:(id)revisionString;
- (BOOL)_isMatterFirmwareVersionMatchingOrNewerThanUARP:(id)p matterFirmwareRevisionNumber:(id)number uarpAccessoryVersion:(id)version;
- (BOOL)_shouldUpdateUarpAccessoryVersion:(id)version matterFirmwareRevisionNumber:(id)number assetVersionString:(id)string matterFirmwareRevisionString:(id)revisionString uarpAccessoryVersion:(id)accessoryVersion;
- (BOOL)documentationAvailable;
- (BOOL)isCurrentUpdateLatest;
- (BOOL)isFirmwareVersionUpToDate;
- (BOOL)isReadyForStaging;
- (BOOL)isReadyToApplyUpdate;
- (BOOL)isStagedFirmwareVersionUpToDate;
- (BOOL)isUserInitiatedInstall;
- (BOOL)isUserInitiatedStaging;
- (BOOL)sendMessageToAccessory:(id)accessory uarpMsg:(id)msg error:(id *)error;
- (BOOL)sessionEnded;
- (BOOL)startManualUpdate:(id)update error:(id *)error;
- (HMDAccessoryFirmwareUpdateConcurrencyLogEventManager)logEventManager;
- (HMDAccessoryFirmwareUpdateManager)accessoryFirmwareUpdateManager;
- (HMDAccessoryFirmwareUpdateSession)init;
- (HMDAccessoryFirmwareUpdateSession)initWithHAPAccessory:(id)accessory uarpAccessory:(id)uarpAccessory accessoryFirmwareUpdateManager:(id)manager logEventManager:(id)eventManager wingman:(id)wingman;
- (HMDDataStreamSocket)dataStreamSocket;
- (HMDHAPAccessory)hapAccessory;
- (HMFSoftwareVersion)accessoryVersion;
- (HMSoftwareUpdateDocumentationMetadata)newDocumentationMetadata;
- (NSString)description;
- (double)_allowedApplyDuration;
- (double)_expectedApplyDuration;
- (double)allowedApplyDuration;
- (double)expectedApplyDuration;
- (id)availableSoftwareVersion;
- (id)logIdentifier;
- (id)newSoftwareUpdateWithState:(int64_t)state;
- (id)privateDescription;
- (unint64_t)internalState;
- (unint64_t)nextStateToSchedule;
- (unint64_t)sessionState;
- (void)_applyFailed;
- (void)_applyFirmware;
- (void)_automaticUpdateEnabledChanged:(BOOL)changed;
- (void)_cancelApplyTimer;
- (void)_cancelQueryFirmwareUpdateResultTimer;
- (void)_cancelRegisterFailureRetryTimer;
- (void)_cancelSocketIdleTimer;
- (void)_endSession;
- (void)_evaluateHDSRetryForApplyFirmware;
- (void)_handleApplyTimerFired;
- (void)_handleAutomaticUpdateEnabledChanged:(id)changed;
- (void)_handleQueryFirmwareUpdateResultTimeout;
- (void)_handleRegisterFailureRetryTimeout;
- (void)_handleSocketTimeout;
- (void)_logApplyEventWithStatus:(int64_t)status;
- (void)_logDebugStates:(const char *)states;
- (void)_register;
- (void)_resetAvailableSoftwareUpdate;
- (void)_resetSocketIdleTimer;
- (void)_schedule;
- (void)_stagingFailed;
- (void)_startSocketIdleTimer;
- (void)_syncStateWithAccessoryOnResume;
- (void)_updateAvailableSoftwareUpdate;
- (void)_updateAvailableSoftwareUpdateDocumentation;
- (void)_updateAvailableSoftwareUpdateState:(int64_t)state;
- (void)_updateSoftwareUpdateNotReadyReasons;
- (void)_updateSoftwareUpdateStateForMatterAccessoryWithState:(unint64_t)state;
- (void)_verifyUpdateComplete;
- (void)_withOpenSocketDoBlock:(id)block error:(id)error;
- (void)applyFirmware;
- (void)assetAvailablityUpdateForAccessory:(id)accessory assetID:(id)d;
- (void)configure;
- (void)dealloc;
- (void)firmwareStagingComplete:(id)complete assetID:(id)d withStatus:(unint64_t)status;
- (void)firmwareStagingProgress:(id)progress assetID:(id)d bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total;
- (void)firmwareUpdateResult:(id)result vendorSpecificStatus:(unsigned int)status error:(id)error;
- (void)handleAccessoryFirmwareVersionChangedNotification:(id)notification;
- (void)handleAccessoryFirmwareVersionNumberChangedNotification:(id)notification;
- (void)handleAccessoryVIDPIDChangedNotification:(id)notification;
- (void)handleFirmwareUpdateStateChangedNotification:(id)notification;
- (void)handleNotReadyReasonsChanged:(id)changed;
- (void)incrementMatterFirmwareUpdateRetryCount;
- (void)logDebugStates;
- (void)pause;
- (void)registerAccessory;
- (void)rescindStagedAsset:(id)asset;
- (void)resumeWithState:(unint64_t)state;
- (void)setDataStreamSocket:(id)socket;
- (void)setInternalState:(unint64_t)state;
- (void)setSessionEnded:(BOOL)ended;
- (void)setUserInitiatedInstall:(BOOL)install;
- (void)setUserInitiatedStaging:(BOOL)staging;
- (void)socket:(id)socket didFailWithError:(id)error;
- (void)socketDidClose:(id)close;
- (void)socketDidReceiveData:(id)data;
- (void)stageFirmware;
- (void)stagedFirmwareRescindComplete:(id)complete withStatus:(unint64_t)status;
- (void)stagingComplete;
- (void)startApplyDurationTimers;
- (void)timerDidFire:(id)fire;
- (void)unregisterAccessory;
- (void)updateAccessoryFirmwareVersion;
- (void)updateAccessoryStagedFirmwareVersion;
- (void)updateAccessoryVendorIDAndProductID;
- (void)updateAvailableSoftwareUpdate;
- (void)updateAvailableSoftwareUpdateState:(int64_t)state;
@end

@implementation HMDAccessoryFirmwareUpdateSession

- (HMDAccessoryFirmwareUpdateConcurrencyLogEventManager)logEventManager
{
  WeakRetained = objc_loadWeakRetained(&self->_logEventManager);

  return WeakRetained;
}

- (HMDAccessoryFirmwareUpdateManager)accessoryFirmwareUpdateManager
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryFirmwareUpdateManager);

  return WeakRetained;
}

- (HMDHAPAccessory)hapAccessory
{
  WeakRetained = objc_loadWeakRetained(&self->_hapAccessory);

  return WeakRetained;
}

- (void)rescindStagedAsset:(id)asset
{
  v24 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDAccessoryFirmwareUpdateSession *)self _logDebugStates:"[HMDAccessoryFirmwareUpdateSession rescindStagedAsset:]"];
  hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)self hapAccessory];
  firmwareUpdateProfile = [hapAccessory firmwareUpdateProfile];
  stagedFirmwareVersion = [firmwareUpdateProfile stagedFirmwareVersion];

  if (stagedFirmwareVersion)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __56__HMDAccessoryFirmwareUpdateSession_rescindStagedAsset___block_invoke;
    v17[3] = &unk_27867DF48;
    v17[4] = self;
    v18 = hapAccessory;
    v19 = assetCopy;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __56__HMDAccessoryFirmwareUpdateSession_rescindStagedAsset___block_invoke_174;
    v15[3] = &unk_278689A68;
    v15[4] = self;
    v16 = v19;
    [(HMDAccessoryFirmwareUpdateSession *)self _withOpenSocketDoBlock:v17 error:v15];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v12;
      v22 = 2112;
      v23 = hapAccessory;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@No staged firmware in accessory %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:0 reason:@"No staged firmware in accessory" suggestion:0];
    (*(assetCopy + 2))(assetCopy, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __56__HMDAccessoryFirmwareUpdateSession_rescindStagedAsset___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accessoryFirmwareUpdateManager];
  v3 = [v2 UARPAccessoryForHMDAccessory:*(a1 + 40)];
  v4 = [v2 UARPControllerForAccessory:*(a1 + 40)];
  v17[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v6 = [v4 rescindStagedFirmwareOnAccessoryList:v5 withUserIntent:1];

  if (v6)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to rescind staged firmware for UARP accessory %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:58 description:0 reason:@"Failed to rescind staged firmware for UARP accessory %@" suggestion:0];
    (*(*(a1 + 48) + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __56__HMDAccessoryFirmwareUpdateSession_rescindStagedAsset___block_invoke_174(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Error opening socket for UARP communication: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (id)privateDescription
{
  hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)self hapAccessory];
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  if ([hapAccessory isAppleAccessory])
  {
    [hapAccessory model];
  }

  else
  {
    [hapAccessory productData];
  }
  v5 = ;
  uuid = [hapAccessory uuid];
  uUIDString = [uuid UUIDString];
  v8 = [v3 stringWithFormat:@"<%@ %@.%@>", v4, v5, uUIDString];

  return v8;
}

- (NSString)description
{
  hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)self hapAccessory];
  v3 = MEMORY[0x277CCACA8];
  if ([hapAccessory isAppleAccessory])
  {
    [hapAccessory model];
  }

  else
  {
    [hapAccessory productData];
  }
  v4 = ;
  uuid = [hapAccessory uuid];
  v6 = [v3 stringWithFormat:@"Session for %@.%@", v4, uuid];

  return v6;
}

- (id)logIdentifier
{
  hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)self hapAccessory];
  logIdentifier = [hapAccessory logIdentifier];

  return logIdentifier;
}

- (void)_logDebugStates:(const char *)states
{
  v62 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)self hapAccessory];
  firmwareUpdateProfile = [hapAccessory firmwareUpdateProfile];
  accessoryVersion = [(HMDAccessoryFirmwareUpdateSession *)self accessoryVersion];
  firmwareUpdateProfile2 = [hapAccessory firmwareUpdateProfile];
  stagedFirmwareVersion = [firmwareUpdateProfile2 stagedFirmwareVersion];

  availableSoftwareVersion = [(HMDAccessoryFirmwareUpdateSession *)self availableSoftwareVersion];
  nextStateToSchedule = [(HMDAccessoryFirmwareUpdateSession *)self nextStateToSchedule];
  softwareUpdate = [hapAccessory softwareUpdate];
  assetID = [(HMDAccessoryFirmwareUpdateSession *)self assetID];
  assetVersion = [assetID assetVersion];

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v30 = HMFGetLogIdentifier();
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:states];
    internalState = [(HMDAccessoryFirmwareUpdateSession *)selfCopy internalState];
    if ((internalState - 1) > 4)
    {
      v17 = @"Up To Date";
    }

    else
    {
      v17 = off_27867DF80[internalState - 1];
    }

    v27 = v17;
    v31 = accessoryVersion;
    if (nextStateToSchedule - 1 > 4)
    {
      v18 = @"Up To Date";
    }

    else
    {
      v18 = off_27867DF80[nextStateToSchedule - 1];
    }

    firmwareUpdateProfile3 = [hapAccessory firmwareUpdateProfile];
    [firmwareUpdateProfile3 updateState];
    v20 = HAPFirmwareUpdateStateAsString();
    v32 = firmwareUpdateProfile;
    v28 = v13;
    if (softwareUpdate)
    {
      [softwareUpdate state];
      v21 = HMSoftwareUpdateStateToString();
    }

    else
    {
      v21 = @"NA";
    }

    lastStagedVersion = [(HMDAccessoryFirmwareUpdateSession *)selfCopy lastStagedVersion];
    [v32 stagingNotReadyReasons];
    v23 = HAPStagingNotReadyReasonsAsString();
    [v32 updateNotReadyReasons];
    v24 = HAPUpdateNotReadyReasonsAsString();
    *buf = 138546434;
    v37 = v30;
    v38 = 2112;
    v39 = v29;
    v40 = 2112;
    v41 = v27;
    v42 = 2112;
    v43 = v26;
    v44 = 2112;
    v45 = v20;
    v46 = 2112;
    v47 = v21;
    v48 = 2112;
    v49 = availableSoftwareVersion;
    v50 = 2112;
    v51 = stagedFirmwareVersion;
    v52 = 2112;
    v53 = lastStagedVersion;
    v54 = 2112;
    v55 = v31;
    v56 = 2114;
    v57 = assetVersion;
    v58 = 2114;
    v59 = v23;
    v60 = 2114;
    v61 = v24;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@%@ States <Session internal %@, next %@, accessory %@, SU %@> Versions <available %@, staged %@ (last %@), accessory %@, asset %{public}@> Not Ready Reasons <Stage (%{public}@) Apply (%{public}@)>", buf, 0x84u);

    if (softwareUpdate)
    {
    }

    accessoryVersion = v31;
    firmwareUpdateProfile = v32;
    v13 = v28;
  }

  objc_autoreleasePoolPop(v13);
  v25 = *MEMORY[0x277D85DE8];
}

- (void)logDebugStates
{
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HMDAccessoryFirmwareUpdateSession_logDebugStates__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __51__HMDAccessoryFirmwareUpdateSession_logDebugStates__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) hapAccessory];
    v7 = [*(a1 + 32) assetID];
    v8 = [*(a1 + 32) hapAccessory];
    [v8 isAutomaticThirdPartyAccessorySoftwareUpdateEnabled];
    v9 = HMFBooleanToString();
    v12 = 138544130;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Accessory: %@, asset: %@, auto update: %@", &v12, 0x2Au);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _logDebugStates:"\t"];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)socket:(id)socket didFailWithError:(id)error
{
  v25 = *MEMORY[0x277D85DE8];
  socketCopy = socket;
  errorCopy = error;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    [socketCopy isClosed];
    v12 = HMFBooleanToString();
    hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)selfCopy hapAccessory];
    v15 = 138544386;
    v16 = v11;
    v17 = 2112;
    v18 = socketCopy;
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = hapAccessory;
    v23 = 2112;
    v24 = errorCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@HDS socket %@ closed: %@ failed for accessory %@ with error %@", &v15, 0x34u);
  }

  objc_autoreleasePoolPop(v8);
  if (socketCopy && [socketCopy isClosed])
  {
    [(HMDAccessoryFirmwareUpdateSession *)selfCopy socketDidClose:socketCopy];
  }

  else
  {
    [socketCopy close];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)socketDidClose:(id)close
{
  v48 = *MEMORY[0x277D85DE8];
  closeCopy = close;
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ((_os_feature_enabled_impl() & 1) == 0 && !CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0) || (-[HMDAccessoryFirmwareUpdateSession hapAccessory](self, "hapAccessory"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 supportsCHIP], v6, !v7))
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [(HMDAccessoryFirmwareUpdateSession *)selfCopy internalState]- 1;
      if (v16 > 4)
      {
        v17 = @"Up To Date";
      }

      else
      {
        v17 = off_27867DF80[v16];
      }

      hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)selfCopy hapAccessory];
      if ([hapAccessory isReachable])
      {
        v19 = &stru_283CF9D50;
      }

      else
      {
        v19 = @"unreachable ";
      }

      hapAccessory2 = [(HMDAccessoryFirmwareUpdateSession *)selfCopy hapAccessory];
      *v43 = 138544130;
      *&v43[4] = v15;
      *&v43[12] = 2112;
      *&v43[14] = v17;
      v44 = 2112;
      v45 = v19;
      v46 = 2112;
      v47 = hapAccessory2;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@HDS socket closed in state %@ for %@accessory %@", v43, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
    [(HMDAccessoryFirmwareUpdateSession *)selfCopy _cancelSocketIdleTimer];
    [(HMDAccessoryFirmwareUpdateSession *)selfCopy setDataStreamSocket:0];
    hapAccessory3 = [(HMDAccessoryFirmwareUpdateSession *)selfCopy hapAccessory];
    v22 = HAPStringFromAccessoryServerSession();
    [hapAccessory3 deregisterFromSessionRestore:v22];

    accessoryFirmwareUpdateManager = [(HMDAccessoryFirmwareUpdateSession *)selfCopy accessoryFirmwareUpdateManager];
    v24 = [accessoryFirmwareUpdateManager UARPControllerForAccessory:hapAccessory3];

    uarpAccessory = [(HMDAccessoryFirmwareUpdateSession *)selfCopy uarpAccessory];
    v26 = [v24 accessoryUnreachable:uarpAccessory];

    v27 = objc_autoreleasePoolPush();
    v28 = selfCopy;
    v29 = HMFGetOSLogHandle();
    v30 = v29;
    if (v26)
    {
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        goto LABEL_21;
      }

      v31 = HMFGetLogIdentifier();
      *v43 = 138543362;
      *&v43[4] = v31;
      v32 = "%{public}@Notified UARP accessory unreachable";
      v33 = v30;
      v34 = OS_LOG_TYPE_INFO;
    }

    else
    {
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      v31 = HMFGetLogIdentifier();
      *v43 = 138543362;
      *&v43[4] = v31;
      v32 = "%{public}@Failed to notify about unreachable accessory to UARP controller";
      v33 = v30;
      v34 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_229538000, v33, v34, v32, v43, 0xCu);

LABEL_21:
    objc_autoreleasePoolPop(v27);
    logEventManager = [(HMDAccessoryFirmwareUpdateSession *)v28 logEventManager];
    if ([(HMDAccessoryFirmwareUpdateSession *)v28 internalState]== 2)
    {
      [logEventManager stopStagingWithAccessory:hapAccessory3];
    }

    else if ([(HMDAccessoryFirmwareUpdateSession *)v28 internalState]== 4)
    {
      allowedApplyDurationTimer = [(HMDAccessoryFirmwareUpdateSession *)v28 allowedApplyDurationTimer];
      isRunning = [allowedApplyDurationTimer isRunning];

      if (isRunning)
      {
        [logEventManager stopApplyWithAccessory:hapAccessory3];
        goto LABEL_24;
      }
    }

    else if ([(HMDAccessoryFirmwareUpdateSession *)v28 internalState]== 5 && [(HMDAccessoryFirmwareUpdateSession *)v28 isFirmwareVersionUpToDate])
    {
      v39 = objc_autoreleasePoolPush();
      v40 = v28;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = HMFGetLogIdentifier();
        *v43 = 138543362;
        *&v43[4] = v42;
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@Registration complete", v43, 0xCu);
      }

      objc_autoreleasePoolPop(v39);
      [(HMDAccessoryFirmwareUpdateSession *)v40 _endSession];
    }

    [(HMDAccessoryFirmwareUpdateSession *)v28 _schedule];
LABEL_24:

    goto LABEL_25;
  }

  v8 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    *v43 = 138543618;
    *&v43[4] = v11;
    *&v43[12] = 2080;
    *&v43[14] = "[HMDAccessoryFirmwareUpdateSession socketDidClose:]";
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@%s: Matter accessory does not use this function", v43, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
LABEL_25:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)_handleApplyTimerFired
{
  v28 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  isUserInitiatedInstall = [(HMDAccessoryFirmwareUpdateSession *)self isUserInitiatedInstall];
  [(HMDAccessoryFirmwareUpdateSession *)self setUserInitiatedInstall:0];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    if (isUserInitiatedInstall)
    {
      v9 = @"manual";
    }

    else
    {
      v9 = @"automatic";
    }

    remoteApplyInProgress = [(HMDAccessoryFirmwareUpdateSession *)selfCopy remoteApplyInProgress];
    v11 = @"local";
    *buf = 138543874;
    v23 = v8;
    v24 = 2112;
    if (remoteApplyInProgress)
    {
      v11 = @"remote";
    }

    v25 = v9;
    v26 = 2112;
    v27 = v11;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Apply timer fired for %@ %@ install", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDAccessoryFirmwareUpdateSession *)selfCopy _logDebugStates:"[HMDAccessoryFirmwareUpdateSession _handleApplyTimerFired]"];
  [(HMDAccessoryFirmwareUpdateSession *)selfCopy _cancelApplyTimer];
  if ([(HMDAccessoryFirmwareUpdateSession *)selfCopy isFirmwareVersionUpToDate])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Firmware is up to date", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  else
  {
    objc_initWeak(buf, selfCopy);
    hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)selfCopy hapAccessory];
    firmwareUpdateProfile = [hapAccessory firmwareUpdateProfile];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __59__HMDAccessoryFirmwareUpdateSession__handleApplyTimerFired__block_invoke;
    v19[3] = &unk_27867DF20;
    objc_copyWeak(&v20, buf);
    v21 = isUserInitiatedInstall;
    [firmwareUpdateProfile updateProfileWithCompletion:v19];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __59__HMDAccessoryFirmwareUpdateSession__handleApplyTimerFired__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isFirmwareVersionUpToDate])
  {
    [WeakRetained _verifyUpdateComplete];
LABEL_18:
    [WeakRetained setRemoteApplyInProgress:0];
    goto LABEL_19;
  }

  if (*(a1 + 40) == 1 && ([WeakRetained remoteApplyInProgress] & 1) == 0)
  {
    [WeakRetained setInternalState:{objc_msgSend(WeakRetained, "nextStateToSchedule")}];
  }

  if ((*(a1 + 40) & 1) != 0 || [WeakRetained remoteApplyInProgress])
  {
    v3 = [WeakRetained hapAccessory];
    v4 = [v3 isReachable];

    if (v4)
    {
      [WeakRetained _updateAvailableSoftwareUpdate];
    }

    else
    {
      [WeakRetained _resetAvailableSoftwareUpdate];
    }

    goto LABEL_18;
  }

  [WeakRetained setCurrentAutomaticApplyRetriesCount:{objc_msgSend(WeakRetained, "currentAutomaticApplyRetriesCount") + 1}];
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "currentAutomaticApplyRetriesCount")}];
    *buf = 138543618;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Firmware is still not applied after apply timer fired: retries count=%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if ([v6 currentAutomaticApplyRetriesCount] < 0xB)
  {
    [v6 setInternalState:3];
    v14 = dispatch_time(0, 10000000000);
    v15 = [v6 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__HMDAccessoryFirmwareUpdateSession__handleApplyTimerFired__block_invoke_146;
    block[3] = &unk_27868A728;
    block[4] = v6;
    dispatch_after(v14, v15, block);

    goto LABEL_18;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = v6;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543362;
    v19 = v13;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Out of retries for automatic apply", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  [v11 _endSession];
LABEL_19:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_verifyUpdateComplete
{
  v15 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDAccessoryFirmwareUpdateSession *)self isVerifyingUpdate])
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v7;
      v8 = "%{public}@Verification already in progress";
LABEL_4:
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, v8, buf, 0xCu);

      goto LABEL_5;
    }

    goto LABEL_5;
  }

  if ([(HMDAccessoryFirmwareUpdateSession *)self internalState]== 4)
  {
    if ([(HMDAccessoryFirmwareUpdateSession *)self isFirmwareVersionUpToDate])
    {
      [(HMDAccessoryFirmwareUpdateSession *)self setUserInitiatedInstall:0];
      [(HMDAccessoryFirmwareUpdateSession *)self setIsVerifyingUpdate:1];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __58__HMDAccessoryFirmwareUpdateSession__verifyUpdateComplete__block_invoke;
      v12[3] = &unk_278682310;
      v12[4] = self;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __58__HMDAccessoryFirmwareUpdateSession__verifyUpdateComplete__block_invoke_133;
      v11[3] = &unk_27868A250;
      v11[4] = self;
      [(HMDAccessoryFirmwareUpdateSession *)self _withOpenSocketDoBlock:v12 error:v11];
      goto LABEL_6;
    }

    v4 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v7;
      v8 = "%{public}@Firmware is not up to date. Skipping update complete verification";
      goto LABEL_4;
    }

LABEL_5:

    objc_autoreleasePoolPop(v4);
LABEL_6:
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  v10 = *MEMORY[0x277D85DE8];

  [(HMDAccessoryFirmwareUpdateSession *)self _schedule];
}

void __58__HMDAccessoryFirmwareUpdateSession__verifyUpdateComplete__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v28 = 138543362;
    v29 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Asking UARP for Apply Results", &v28, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) logEventManager];
  v7 = [*(a1 + 32) hapAccessory];
  [v6 startApplyWithAccessory:v7];
  v8 = [*(a1 + 32) queryFirmwareUpdateResultDurationTimer];

  if (!v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      v28 = 138543362;
      v29 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Start the timer for querying result", &v28, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v13 = objc_alloc(MEMORY[0x277D0F920]);
    v14 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v15 = [v14 preferenceForKey:@"firmwareUpdateQueryResultDurationAllowance"];
    v16 = [v15 numberValue];
    v17 = [v16 unsignedIntValue];

    v18 = [v13 initWithTimeInterval:1 options:v17];
    [*(a1 + 32) setQueryFirmwareUpdateResultDurationTimer:v18];

    v19 = *(a1 + 32);
    v20 = [v19 queryFirmwareUpdateResultDurationTimer];
    [v20 setDelegate:v19];

    v21 = [*(a1 + 32) workQueue];
    v22 = [*(a1 + 32) queryFirmwareUpdateResultDurationTimer];
    [v22 setDelegateQueue:v21];

    v23 = [*(a1 + 32) queryFirmwareUpdateResultDurationTimer];
    [v23 resume];
  }

  v24 = [*(a1 + 32) accessoryFirmwareUpdateManager];
  v25 = [v24 UARPControllerForAccessory:v7];

  v26 = [*(a1 + 32) uarpAccessory];
  [v25 queryFirmwareUpdateResultForAccessory:v26];

  v27 = *MEMORY[0x277D85DE8];
}

void __58__HMDAccessoryFirmwareUpdateSession__verifyUpdateComplete__block_invoke_133(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Error opening HDS socket: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  [*(a1 + 32) setIsVerifyingUpdate:0];
  [*(a1 + 32) _schedule];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_logApplyEventWithStatus:(int64_t)status
{
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDAccessoryFirmwareUpdateSession *)self _expectedApplyDuration];
  v7 = v6;
  [(HMDAccessoryFirmwareUpdateSession *)self _allowedApplyDuration];
  v9 = v8;
  hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)self hapAccessory];
  v10 = [[HMDAccessoryMetricVendorDetails alloc] initWithAccessory:hapAccessory];
  firmwareUpdateProfile = [hapAccessory firmwareUpdateProfile];
  stagedFirmwareVersion = [firmwareUpdateProfile stagedFirmwareVersion];
  v13 = [HMDAccessorySoftwareUpdateApplyEvent eventWithMetricVendorDetails:v10 stagedVersion:stagedFirmwareVersion advertisedDuration:v7 totalAllowedDuration:v9 status:status];

  v14 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v14 submitLogEvent:v13];
}

- (void)timerDidFire:(id)fire
{
  v23 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  allowedApplyDurationTimer = [(HMDAccessoryFirmwareUpdateSession *)self allowedApplyDurationTimer];
  v7 = [fireCopy isEqual:allowedApplyDurationTimer];

  if (v7)
  {
    [(HMDAccessoryFirmwareUpdateSession *)self _logApplyEventWithStatus:2];
    [(HMDAccessoryFirmwareUpdateSession *)self _handleApplyTimerFired];
  }

  else
  {
    expectedApplyDurationTimer = [(HMDAccessoryFirmwareUpdateSession *)self expectedApplyDurationTimer];
    v9 = [fireCopy isEqual:expectedApplyDurationTimer];

    if (v9)
    {
      [(HMDAccessoryFirmwareUpdateSession *)self _logApplyEventWithStatus:1];
    }

    else
    {
      socketIdleTimer = [(HMDAccessoryFirmwareUpdateSession *)self socketIdleTimer];
      v11 = [fireCopy isEqual:socketIdleTimer];

      if (v11)
      {
        [(HMDAccessoryFirmwareUpdateSession *)self _handleSocketTimeout];
      }

      else
      {
        queryFirmwareUpdateResultDurationTimer = [(HMDAccessoryFirmwareUpdateSession *)self queryFirmwareUpdateResultDurationTimer];
        v13 = [fireCopy isEqual:queryFirmwareUpdateResultDurationTimer];

        if (v13)
        {
          [(HMDAccessoryFirmwareUpdateSession *)self _handleQueryFirmwareUpdateResultTimeout];
        }

        else
        {
          registerFailureRetryTimer = [(HMDAccessoryFirmwareUpdateSession *)self registerFailureRetryTimer];
          v15 = [fireCopy isEqual:registerFailureRetryTimer];

          if (v15)
          {
            [(HMDAccessoryFirmwareUpdateSession *)self _handleRegisterFailureRetryTimeout];
          }

          else
          {
            v16 = objc_autoreleasePoolPush();
            selfCopy = self;
            v18 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v19 = HMFGetLogIdentifier();
              v21 = 138543362;
              v22 = v19;
              _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unknown timer", &v21, 0xCu);
            }

            objc_autoreleasePoolPop(v16);
          }
        }
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)stagedFirmwareRescindComplete:(id)complete withStatus:(unint64_t)status
{
  v22 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  if (((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0)) && (-[HMDAccessoryFirmwareUpdateSession hapAccessory](self, "hapAccessory"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 supportsCHIP], v7, v8))
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v12;
      v20 = 2080;
      v21 = "[HMDAccessoryFirmwareUpdateSession stagedFirmwareRescindComplete:withStatus:]";
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@%s: Matter Accessory responsible for staging firmware. No action taken.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    objc_initWeak(buf, self);
    workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__HMDAccessoryFirmwareUpdateSession_stagedFirmwareRescindComplete_withStatus___block_invoke;
    block[3] = &unk_27867DEF8;
    objc_copyWeak(v17, buf);
    v17[1] = status;
    v16 = completeCopy;
    dispatch_async(workQueue, block);

    objc_destroyWeak(v17);
    objc_destroyWeak(buf);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __78__HMDAccessoryFirmwareUpdateSession_stagedFirmwareRescindComplete_withStatus___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_autoreleasePoolPush();
  v4 = WeakRetained;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
    v8 = *(a1 + 32);
    v11 = 138543874;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Staged firmware rescinded with status: %@ for accessory %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  v9 = [v4 dataStreamSocket];
  [v9 close];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)firmwareUpdateResult:(id)result vendorSpecificStatus:(unsigned int)status error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  objc_initWeak(&location, self);
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__HMDAccessoryFirmwareUpdateSession_firmwareUpdateResult_vendorSpecificStatus_error___block_invoke;
  v12[3] = &unk_27867DED0;
  objc_copyWeak(&v14, &location);
  v13 = resultCopy;
  statusCopy = status;
  v11 = resultCopy;
  dispatch_async(workQueue, v12);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __85__HMDAccessoryFirmwareUpdateSession_firmwareUpdateResult_vendorSpecificStatus_error___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_autoreleasePoolPush();
  v4 = WeakRetained;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 48)];
    v13 = 138543874;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Results from apply accessory %@ status %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  [v4 _cancelQueryFirmwareUpdateResultTimer];
  v9 = [v4 hapAccessory];
  v10 = [v9 firmwareUpdateProfile];
  v11 = [v4 accessoryVersion];
  [v10 _updateAccessoryFirmwareVersion:v11];

  [v4 _schedule];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)firmwareStagingComplete:(id)complete assetID:(id)d withStatus:(unint64_t)status
{
  v27 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  dCopy = d;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", UARPFirmwareStagingCompletionStatusToString()];
    *buf = 138543618;
    v24 = v13;
    v25 = 2112;
    v26 = v14;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@firmwareStagingComplete called with status %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  objc_initWeak(buf, selfCopy);
  workQueue = selfCopy->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__HMDAccessoryFirmwareUpdateSession_firmwareStagingComplete_assetID_withStatus___block_invoke;
  block[3] = &unk_278685218;
  objc_copyWeak(v22, buf);
  v22[1] = status;
  v20 = dCopy;
  v21 = completeCopy;
  v16 = completeCopy;
  v17 = dCopy;
  dispatch_async(workQueue, block);

  objc_destroyWeak(v22);
  objc_destroyWeak(buf);
  v18 = *MEMORY[0x277D85DE8];
}

void __80__HMDAccessoryFirmwareUpdateSession_firmwareStagingComplete_assetID_withStatus___block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained hapAccessory];
  v4 = *(a1 + 56);
  if (v4 > 2)
  {
    if ((v4 - 4) < 2)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = WeakRetained;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543362;
        v51 = v29;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Update canceled", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v26);
      v30 = [v27 accessoryFirmwareUpdateManager];
      v31 = [v27 assetID];
      [v30 resetFirmwareUpdateAccessoryRetryTracking:v3 forAsset:v31];

      goto LABEL_36;
    }

    if (v4 != 3)
    {
      if (v4 == 8)
      {
        goto LABEL_5;
      }

LABEL_15:
      v19 = objc_autoreleasePoolPush();
      v20 = WeakRetained;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        v23 = *(a1 + 56);
        v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", UARPFirmwareStagingCompletionStatusToString()];
        v25 = *(a1 + 40);
        *buf = 138543874;
        v51 = v22;
        v52 = 2112;
        v53 = v24;
        v54 = 2112;
        v55 = v25;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Staging completion status %@ not handled for accessory %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v19);
      [v20 _endSession];
      goto LABEL_38;
    }

    v40 = objc_autoreleasePoolPush();
    v41 = WeakRetained;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = HMFGetLogIdentifier();
      *buf = 138543362;
      v51 = v43;
      v44 = "%{public}@Accessory disconnected";
      goto LABEL_34;
    }

LABEL_35:

    objc_autoreleasePoolPop(v40);
LABEL_36:
    v18 = WeakRetained;
LABEL_37:
    [v18 setUserInitiatedInstall:0];
    goto LABEL_38;
  }

  if (!v4)
  {
    v32 = objc_autoreleasePoolPush();
    v33 = WeakRetained;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543362;
      v51 = v35;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@Asset staging complete", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v32);
    [v33 setAssetOfferedForCurrentDataStream:0];
    v36 = [*(a1 + 32) softwareVersion];
    [v33 setLastStagedVersion:v36];

    [v33 _logDebugStates:"Updating profile due to firmwareStagingComplete:"];
    v37 = [v3 firmwareUpdateProfile];
    v38 = [*(a1 + 32) softwareVersion];
    v39 = [v38 versionString];
    [v37 updateProfileWithStagedFirmwareVersion:v39];

    goto LABEL_38;
  }

  if (v4 == 1)
  {
    v40 = objc_autoreleasePoolPush();
    v41 = WeakRetained;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = HMFGetLogIdentifier();
      *buf = 138543362;
      v51 = v43;
      v44 = "%{public}@Update interrupted";
LABEL_34:
      _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_DEFAULT, v44, buf, 0xCu);

      goto LABEL_35;
    }

    goto LABEL_35;
  }

  if (v4 != 2)
  {
    goto LABEL_15;
  }

LABEL_5:
  v5 = [*(a1 + 32) softwareVersion];
  v6 = [WeakRetained assetID];
  v7 = [v6 softwareVersion];
  v8 = [v5 isEqualToVersion:v7];

  v9 = objc_autoreleasePoolPush();
  v10 = WeakRetained;
  v11 = HMFGetOSLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v12)
    {
      v13 = HMFGetLogIdentifier();
      v14 = v13;
      v15 = *(a1 + 56);
      v16 = *(a1 + 32);
      *buf = 138543874;
      if (v15 == 2)
      {
        v17 = @"failed";
      }

      else
      {
        v17 = @"rejected";
      }

      v51 = v13;
      v52 = 2112;
      v53 = v17;
      v54 = 2112;
      v55 = v16;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Staging %@ for asset %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    [v10 setAssetOfferedForCurrentDataStream:0];
    [v10 _stagingFailed];
    v18 = v10;
    goto LABEL_37;
  }

  if (v12)
  {
    v45 = HMFGetLogIdentifier();
    if (*(a1 + 56) == 2)
    {
      v46 = @"failed";
    }

    else
    {
      v46 = @"rejected";
    }

    v47 = *(a1 + 32);
    v48 = [v10 assetID];
    *buf = 138544130;
    v51 = v45;
    v52 = 2112;
    v53 = v46;
    v54 = 2112;
    v55 = v47;
    v56 = 2112;
    v57 = v48;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Ignoring Staging %@ for asset %@ with current asset %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v9);
LABEL_38:

  v49 = *MEMORY[0x277D85DE8];
}

- (void)firmwareStagingProgress:(id)progress assetID:(id)d bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total
{
  v27 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  dCopy = d;
  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:sent];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:total];
    v19 = 138544130;
    v20 = v15;
    v21 = 2112;
    v22 = progressCopy;
    v23 = 2112;
    v24 = v16;
    v25 = 2112;
    v26 = v17;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@firmwareStagingProgress called for accessory %@ %@/%@ bytes sent", &v19, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  v18 = *MEMORY[0x277D85DE8];
}

- (void)assetAvailablityUpdateForAccessory:(id)accessory assetID:(id)d
{
  accessoryCopy = accessory;
  dCopy = d;
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__HMDAccessoryFirmwareUpdateSession_assetAvailablityUpdateForAccessory_assetID___block_invoke;
  v11[3] = &unk_278685F38;
  objc_copyWeak(&v14, &location);
  v12 = dCopy;
  v13 = accessoryCopy;
  v9 = accessoryCopy;
  v10 = dCopy;
  dispatch_async(workQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __80__HMDAccessoryFirmwareUpdateSession_assetAvailablityUpdateForAccessory_assetID___block_invoke(id *a1)
{
  v148 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = objc_autoreleasePoolPush();
  v4 = WeakRetained;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [a1[4] assetVersion];
    [a1[4] updateAvailabilityStatus];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", UARPFirmwareUpdateAvailabilityStatusToString()];
    [a1[4] downloadStatus];
    v9 = UARPAssetDownloadStatusToString();
    [a1[4] releaseNotesAvailabilityStatus];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", UARPFirmwareUpdateAvailabilityStatusToString()];
    [a1[4] releaseNotesDownloadStatus];
    v11 = UARPAssetDownloadStatusToString();
    v12 = a1[4];
    *buf = 138544898;
    v135 = v6;
    v136 = 2114;
    v137 = v7;
    v138 = 2114;
    v139 = v8;
    v140 = 2082;
    v141 = v9;
    v142 = 2114;
    v143 = v10;
    v144 = 2082;
    v145 = v11;
    v146 = 2112;
    v147 = v12;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@assetAvailabilityUpdate called with firmware %{public}@,  status: <%{public}@, %{public}s> releaseNotes status: <%{public}@, %{public}s> for asset %@", buf, 0x48u);
  }

  objc_autoreleasePoolPop(v3);
  [v4 _logDebugStates:"-[HMDAccessoryFirmwareUpdateSession assetAvailablityUpdateForAccessory:assetID:]_block_invoke"];
  v13 = [v4 hapAccessory];
  v14 = [v4 accessoryVersion];
  v15 = [v13 firmwareUpdateProfile];
  v16 = [v15 stagedFirmwareVersion];

  v17 = [v4 availableSoftwareVersion];
  if ([v13 supportsCHIP])
  {
    v18 = [a1[4] softwareVersion];

    v17 = v18;
  }

  v133 = [a1[4] softwareVersion];
  v19 = [v4 assetID];
  v20 = [v19 softwareVersion];

  v21 = [v4 assetID];
  if (!v21)
  {
    goto LABEL_15;
  }

  v22 = v21;
  if ([v14 isAtLeastVersion:v133] & 1) != 0 || (objc_msgSend(v16, "isAtLeastVersion:", v133))
  {

    goto LABEL_9;
  }

  v30 = [v20 isGreaterThanVersion:v133];

  if ((v30 & 1) == 0)
  {
LABEL_15:
    [v4 setAssetID:a1[4]];
    if ([v4 internalState] == 5)
    {
      [v4 setInternalState:{objc_msgSend(v4, "nextStateToSchedule")}];
    }

    if ([a1[4] downloadStatus] == 2)
    {
      v31 = objc_autoreleasePoolPush();
      v24 = v4;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v131 = v4;
        v33 = v16;
        v34 = v13;
        v35 = v17;
        v37 = v36 = v20;
        *buf = 138543362;
        v135 = v37;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Firmware failed to download", buf, 0xCu);

        v20 = v36;
        v17 = v35;
        v13 = v34;
        v16 = v33;
        v4 = v131;
      }

      objc_autoreleasePoolPop(v31);
      goto LABEL_21;
    }

    v38 = v14;
    v39 = [v4 accessoryFirmwareUpdateManager];
    v129 = [v39 UARPControllerForAccessory:v13];

    [v4 setUserInitiatedStaging:{objc_msgSend(a1[5], "userInitiatedFirmwareStaging")}];
    v40 = objc_autoreleasePoolPush();
    v41 = v4;
    v42 = HMFGetOSLogHandle();
    v132 = v16;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v123 = v13;
      v43 = v17;
      v45 = v44 = v20;
      [a1[5] userInitiatedFirmwareStaging];
      v46 = HMFBooleanToString();
      *buf = 138543618;
      v135 = v45;
      v136 = 2112;
      v137 = v46;
      _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_DEBUG, "%{public}@userInitiatedFirmwareStaging: %@", buf, 0x16u);

      v16 = v132;
      v20 = v44;
      v17 = v43;
      v13 = v123;
    }

    objc_autoreleasePoolPop(v40);
    v47 = v41;
    v128 = v41;
    if (v16)
    {
      v14 = v38;
      if ([v17 isGreaterThanVersion:v16])
      {
LABEL_26:
        v48 = [a1[4] updateAvailabilityStatus];
        if (v48 > 5)
        {
          if ((v48 - 6) < 3)
          {
            v69 = objc_autoreleasePoolPush();
            v70 = v47;
            v71 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v72 = v126 = v69;
              [a1[4] updateAvailabilityStatus];
              v73 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", UARPFirmwareUpdateAvailabilityStatusToString()];
              *buf = 138543618;
              v135 = v72;
              v136 = 2114;
              v137 = v73;
              v74 = "%{public}@Asset not found status, %{public}@";
LABEL_48:
              _os_log_impl(&dword_229538000, v71, OS_LOG_TYPE_ERROR, v74, buf, 0x16u);

              v16 = v132;
              v69 = v126;
            }

LABEL_49:

            objc_autoreleasePoolPop(v69);
            goto LABEL_50;
          }

LABEL_46:
          v69 = objc_autoreleasePoolPush();
          v70 = v47;
          v71 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v72 = v126 = v69;
            [a1[4] updateAvailabilityStatus];
            v73 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", UARPFirmwareUpdateAvailabilityStatusToString()];
            *buf = 138543618;
            v135 = v72;
            v136 = 2114;
            v137 = v73;
            v74 = "%{public}@Ignoring asset availability status %{public}@";
            goto LABEL_48;
          }

          goto LABEL_49;
        }

        if (v48 == 1)
        {
          v75 = objc_autoreleasePoolPush();
          v76 = v47;
          v77 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
          {
            v78 = HMFGetLogIdentifier();
            v80 = a1[4];
            v79 = a1[5];
            *buf = 138543874;
            v135 = v78;
            v136 = 2112;
            v137 = v79;
            v138 = 2112;
            v139 = v80;
            _os_log_impl(&dword_229538000, v77, OS_LOG_TYPE_DEFAULT, "%{public}@telling uarpController to download asset for accessory:%@ assetID:%@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v75);
          v16 = v132;
          if ([v129 downloadAvailableFirmwareUpdate:a1[5] assetID:a1[4] withUserIntent:{objc_msgSend(v76, "isUserInitiatedInstall")}])
          {
LABEL_50:
            if ([a1[4] releaseNotesDownloadStatus] == 2)
            {
              v84 = objc_autoreleasePoolPush();
              v85 = v128;
              v86 = HMFGetOSLogHandle();
              if (!os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
              {
LABEL_54:

                objc_autoreleasePoolPop(v84);
LABEL_77:

                goto LABEL_78;
              }

              v87 = HMFGetLogIdentifier();
              *buf = 138543362;
              v135 = v87;
              v88 = "%{public}@Release notes failed to download";
              v89 = v86;
              v90 = OS_LOG_TYPE_ERROR;
LABEL_53:
              _os_log_impl(&dword_229538000, v89, v90, v88, buf, 0xCu);

              v16 = v132;
              goto LABEL_54;
            }

            v91 = [a1[4] releaseNotesAvailabilityStatus];
            if (v91 > 5)
            {
              v127 = v20;
              if ((v91 - 6) < 3)
              {
                v97 = objc_autoreleasePoolPush();
                v98 = v128;
                v99 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
                {
                  v100 = HMFGetLogIdentifier();
                  [a1[4] updateAvailabilityStatus];
                  v101 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", UARPFirmwareUpdateAvailabilityStatusToString()];
                  *buf = 138543618;
                  v135 = v100;
                  v136 = 2114;
                  v137 = v101;
                  v102 = "%{public}@Release notes not found, status %{public}@";
LABEL_73:
                  _os_log_impl(&dword_229538000, v99, OS_LOG_TYPE_ERROR, v102, buf, 0x16u);

                  v16 = v132;
                }

LABEL_74:

                v115 = v97;
LABEL_75:
                objc_autoreleasePoolPop(v115);
LABEL_76:
                v20 = v127;
                goto LABEL_77;
              }
            }

            else
            {
              if (v91 == 1)
              {
                v127 = v20;
                v103 = objc_autoreleasePoolPush();
                v104 = v128;
                v105 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
                {
                  v106 = HMFGetLogIdentifier();
                  v108 = a1[4];
                  v107 = a1[5];
                  *buf = 138543874;
                  v135 = v106;
                  v136 = 2112;
                  v137 = v107;
                  v138 = 2112;
                  v139 = v108;
                  _os_log_impl(&dword_229538000, v105, OS_LOG_TYPE_DEFAULT, "%{public}@telling uarpController to download release notes for accessory:%@ assetID:%@", buf, 0x20u);

                  v16 = v132;
                }

                objc_autoreleasePoolPop(v103);
                v20 = v127;
                if ([v129 downloadReleaseNotes:a1[5] assetID:a1[4]])
                {
                  goto LABEL_77;
                }

                v109 = objc_autoreleasePoolPush();
                v110 = v104;
                v111 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
                {
                  v112 = HMFGetLogIdentifier();
                  v114 = a1[4];
                  v113 = a1[5];
                  *buf = 138543874;
                  v135 = v112;
                  v136 = 2112;
                  v137 = v113;
                  v138 = 2112;
                  v139 = v114;
                  _os_log_impl(&dword_229538000, v111, OS_LOG_TYPE_ERROR, "%{public}@Download of release notes failed for accessory:%@ assetID:%@", buf, 0x20u);

                  v16 = v132;
                }

                v115 = v109;
                goto LABEL_75;
              }

              if (v91 == 2)
              {
                v84 = objc_autoreleasePoolPush();
                v85 = v128;
                v86 = HMFGetOSLogHandle();
                if (!os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_54;
                }

                v87 = HMFGetLogIdentifier();
                *buf = 138543362;
                v135 = v87;
                v88 = "%{public}@Release notes downloading";
                v89 = v86;
                v90 = OS_LOG_TYPE_DEFAULT;
                goto LABEL_53;
              }

              v127 = v20;
              if (v91 == 3)
              {
                v92 = objc_autoreleasePoolPush();
                v93 = v128;
                v94 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
                {
                  v95 = HMFGetLogIdentifier();
                  v96 = [a1[4] releaseNotesLocalURL];
                  *buf = 138543618;
                  v135 = v95;
                  v136 = 2114;
                  v137 = v96;
                  _os_log_impl(&dword_229538000, v94, OS_LOG_TYPE_DEFAULT, "%{public}@Release notes downloaded to %{public}@", buf, 0x16u);

                  v16 = v132;
                }

                objc_autoreleasePoolPop(v92);
                [v93 _updateAvailableSoftwareUpdateDocumentation];
                goto LABEL_76;
              }
            }

            v97 = objc_autoreleasePoolPush();
            v98 = v128;
            v99 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
            {
              v100 = HMFGetLogIdentifier();
              [a1[4] releaseNotesAvailabilityStatus];
              v101 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", UARPFirmwareUpdateAvailabilityStatusToString()];
              *buf = 138543618;
              v135 = v100;
              v136 = 2114;
              v137 = v101;
              v102 = "%{public}@Ignoring release notes status: %{public}@";
              goto LABEL_73;
            }

            goto LABEL_74;
          }

          [v76 setUserInitiatedInstall:0];
          v69 = objc_autoreleasePoolPush();
          v70 = v76;
          v71 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            v81 = HMFGetLogIdentifier();
            v83 = a1[4];
            v82 = a1[5];
            *buf = 138543874;
            v135 = v81;
            v136 = 2112;
            v137 = v82;
            v138 = 2112;
            v139 = v83;
            _os_log_impl(&dword_229538000, v71, OS_LOG_TYPE_ERROR, "%{public}@downloadAvailableFirmwareUpdate failed for accessory:%@ assetID:%@", buf, 0x20u);

            v16 = v132;
          }

          goto LABEL_49;
        }

        if (v48 != 2)
        {
          if (v48 == 3)
          {
            v49 = objc_autoreleasePoolPush();
            v50 = v47;
            v51 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              v52 = HMFGetLogIdentifier();
              v53 = [a1[4] localURL];
              v124 = v13;
              v54 = v14;
              v55 = v49;
              v56 = v54;
              v57 = v17;
              v58 = v20;
              v59 = v53;
              *buf = 138543618;
              v135 = v52;
              v136 = 2114;
              v137 = v53;
              _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_DEFAULT, "%{public}@Firmware downloaded to %{public}@", buf, 0x16u);

              v20 = v58;
              v17 = v57;
              v60 = v56;
              v49 = v55;
              v14 = v60;
              v13 = v124;

              v16 = v132;
            }

            objc_autoreleasePoolPop(v49);
            [v50 _updateAvailableSoftwareUpdate];
            [v50 _schedule];
            goto LABEL_50;
          }

          goto LABEL_46;
        }

        v125 = v14;
        v61 = v17;
        v62 = v20;
        v117 = objc_autoreleasePoolPush();
        v118 = v47;
        v119 = v117;
        v120 = v118;
        v121 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
        {
          v122 = HMFGetLogIdentifier();
          *buf = 138543362;
          v135 = v122;
          _os_log_impl(&dword_229538000, v121, OS_LOG_TYPE_DEFAULT, "%{public}@Firmware downloading", buf, 0xCu);

          v16 = v132;
        }

        objc_autoreleasePoolPop(v119);
LABEL_37:
        v20 = v62;
        v17 = v61;
        v14 = v125;
        goto LABEL_50;
      }
    }

    else
    {
      v14 = v38;
      if ([v17 isGreaterThanVersion:v38])
      {
        goto LABEL_26;
      }
    }

    v125 = v14;
    v61 = v17;
    v62 = v20;
    v63 = objc_autoreleasePoolPush();
    v64 = v47;
    v65 = v63;
    v66 = v64;
    v67 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      v68 = HMFGetLogIdentifier();
      *buf = 138543362;
      v135 = v68;
      _os_log_impl(&dword_229538000, v67, OS_LOG_TYPE_DEFAULT, "%{public}@No asset download needed", buf, 0xCu);

      v16 = v132;
    }

    objc_autoreleasePoolPop(v65);
    [v66 _updateAvailableSoftwareUpdate];
    [v66 _logDebugStates:"-[HMDAccessoryFirmwareUpdateSession assetAvailablityUpdateForAccessory:assetID:]_block_invoke"];
    [v66 _schedule];
    goto LABEL_37;
  }

LABEL_9:
  v23 = objc_autoreleasePoolPush();
  v24 = v4;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    HMFGetLogIdentifier();
    v130 = v4;
    v26 = v13;
    v27 = v17;
    v29 = v28 = v20;
    *buf = 138544386;
    v135 = v29;
    v136 = 2112;
    v137 = v133;
    v138 = 2112;
    v139 = v28;
    v140 = 2112;
    v141 = v14;
    v142 = 2112;
    v143 = v16;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Ignoring assetAvailability with asset version %@: current asset %@, accessory %@, staged %@", buf, 0x34u);

    v20 = v28;
    v17 = v27;
    v13 = v26;
    v4 = v130;
  }

  objc_autoreleasePoolPop(v23);
  [v24 updateAvailableSoftwareUpdate];
  if ([v14 isAtLeastVersion:v133] && objc_msgSend(v24, "internalState") != 4)
  {
LABEL_21:
    [v24 _endSession];
  }

LABEL_78:

  v116 = *MEMORY[0x277D85DE8];
}

- (void)_register
{
  v17 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0)) && (-[HMDAccessoryFirmwareUpdateSession hapAccessory](self, "hapAccessory"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 supportsCHIP], v4, v5))
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v14 = v9;
      v15 = 2080;
      v16 = "[HMDAccessoryFirmwareUpdateSession _register]";
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@%s: called on accessory that supports Matter", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDAccessoryFirmwareUpdateSession *)selfCopy resetMatterFirmwareUpdateRetryCount];
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __46__HMDAccessoryFirmwareUpdateSession__register__block_invoke;
    v12[3] = &unk_278682310;
    v12[4] = self;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __46__HMDAccessoryFirmwareUpdateSession__register__block_invoke_2;
    v11[3] = &unk_27868A250;
    v11[4] = self;
    [(HMDAccessoryFirmwareUpdateSession *)self _withOpenSocketDoBlock:v12 error:v11];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __46__HMDAccessoryFirmwareUpdateSession__register__block_invoke_2(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 32) uarpAccessory];
    v9 = [v8 uuid];
    *buf = 138543874;
    v40 = v7;
    v41 = 2112;
    v42 = v9;
    v43 = 2112;
    v44 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Register accessory failed for %@ - couldn't open socket error:%@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  if ([*(a1 + 32) currentRegisterFailureCount] < 0xA)
  {
    [*(a1 + 32) setCurrentRegisterFailureCount:{objc_msgSend(*(a1 + 32), "currentRegisterFailureCount") + 1}];
    v15 = objc_autoreleasePoolPush();
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v17;
      v41 = 2112;
      v42 = &unk_283E73A18;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Rescheduling register in %@ seconds", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v18 = dispatch_time(0, 10000000000);
    v19 = [*(a1 + 32) workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__HMDAccessoryFirmwareUpdateSession__register__block_invoke_122;
    block[3] = &unk_27868A728;
    block[4] = *(a1 + 32);
    dispatch_after(v18, v19, block);
  }

  else
  {
    v10 = [*(a1 + 32) registerFailureRetryTimer];

    if (v10)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = *(a1 + 32);
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v40 = v14;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Register retry timer is active", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
    }

    else
    {
      v20 = [MEMORY[0x277D0F8D0] sharedPreferences];
      v21 = [v20 preferenceForKey:@"firmwareUpdateRegisterFailureRetryDuration"];
      v22 = [v21 numberValue];
      v23 = [v22 unsignedIntValue];

      v24 = v23;
      v25 = objc_autoreleasePoolPush();
      v26 = *(a1 + 32);
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = HMFGetLogIdentifier();
        v29 = [MEMORY[0x277CCABB0] numberWithDouble:v24 / 3600.0];
        *buf = 138543618;
        v40 = v28;
        v41 = 2112;
        v42 = v29;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Waiting up to %@ hours to retry registering accessory", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v30 = [*(a1 + 32) registerFailureRetryTimerFactory];
      v31 = v30[2](v30, 1, v24);
      [*(a1 + 32) setRegisterFailureRetryTimer:v31];

      v32 = *(a1 + 32);
      v33 = [v32 registerFailureRetryTimer];
      [v33 setDelegate:v32];

      v34 = [*(a1 + 32) workQueue];
      v35 = [*(a1 + 32) registerFailureRetryTimer];
      [v35 setDelegateQueue:v34];

      v36 = [*(a1 + 32) registerFailureRetryTimer];
      [v36 resume];
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)unregisterAccessory
{
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__HMDAccessoryFirmwareUpdateSession_unregisterAccessory__block_invoke;
  v4[3] = &unk_278686B80;
  objc_copyWeak(&v5, &location);
  dispatch_async(workQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __56__HMDAccessoryFirmwareUpdateSession_unregisterAccessory__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _endSession];
}

- (void)registerAccessory
{
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__HMDAccessoryFirmwareUpdateSession_registerAccessory__block_invoke;
  v4[3] = &unk_278686B80;
  objc_copyWeak(&v5, &location);
  dispatch_async(workQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __54__HMDAccessoryFirmwareUpdateSession_registerAccessory__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setInternalState:5];
  [WeakRetained _register];
}

- (void)socketDidReceiveData:(id)data
{
  v20 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0)) && (-[HMDAccessoryFirmwareUpdateSession hapAccessory](self, "hapAccessory"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 supportsCHIP], v5, v6))
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v10;
      v18 = 2080;
      v19 = "[HMDAccessoryFirmwareUpdateSession socketDidReceiveData:]";
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@%s: Matter accessory does not use this function", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    objc_initWeak(buf, self);
    workQueue = self->_workQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __58__HMDAccessoryFirmwareUpdateSession_socketDidReceiveData___block_invoke;
    v13[3] = &unk_278686B48;
    objc_copyWeak(&v15, buf);
    v14 = dataCopy;
    dispatch_async(workQueue, v13);

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __58__HMDAccessoryFirmwareUpdateSession_socketDidReceiveData___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained accessoryFirmwareUpdateManager];
  v4 = [WeakRetained hapAccessory];
  v30 = [v3 UARPControllerForAccessory:v4];

  v5 = [*(a1 + 32) readData];
  if (v5)
  {
    v7 = v5;
    *&v6 = 138543874;
    v29 = v6;
    while (1)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = WeakRetained;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "length")}];
        *buf = 138543618;
        v33 = v11;
        v34 = 2112;
        v35 = v12;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@HDS socket received %@ bytes", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v13 = [v9 uarpAccessory];
      v31 = 0;
      v14 = [v30 recvDataFromAccessory:v13 data:v7 error:&v31];
      v15 = v31;

      if ((v14 & 1) == 0)
      {
        v16 = objc_autoreleasePoolPush();
        v17 = v9;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = HMFGetLogIdentifier();
          v20 = [v17 uarpAccessory];
          *buf = v29;
          v33 = v19;
          v34 = 2112;
          v35 = v20;
          v36 = 2112;
          v37 = v15;
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Couldn't send data from accessory %@ to controller: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v16);
        v21 = [v17 dataStreamSocket];
        v22 = [v21 isClosed];

        if (v22)
        {
          break;
        }
      }

      v23 = [*(a1 + 32) readData];

      v7 = v23;
      if (!v23)
      {
        goto LABEL_14;
      }
    }

    [v17 setDataStreamSocket:0];
    v24 = objc_autoreleasePoolPush();
    v25 = v17;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v27;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Socket closed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
  }

LABEL_14:
  [WeakRetained _resetSocketIdleTimer];

  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)sendMessageToAccessory:(id)accessory uarpMsg:(id)msg error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  msgCopy = msg;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(msgCopy, "length")}];
    *buf = 138543618;
    v34 = v13;
    v35 = 2112;
    v36 = v14;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@sendMessageToAccessory called with %@ bytes", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  if (((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0)) && (-[HMDAccessoryFirmwareUpdateSession hapAccessory](selfCopy, "hapAccessory"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 supportsCHIP], v15, v16))
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v20;
      v35 = 2080;
      v36 = "[HMDAccessoryFirmwareUpdateSession sendMessageToAccessory:uarpMsg:error:]";
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@%s: Matter accessory does not use this function", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = 0;
  }

  else
  {
    dataStreamSocket = [(HMDAccessoryFirmwareUpdateSession *)selfCopy dataStreamSocket];
    v23 = dataStreamSocket;
    if (dataStreamSocket && ![dataStreamSocket isClosed])
    {
      objc_initWeak(buf, selfCopy);
      workQueue = selfCopy->_workQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __74__HMDAccessoryFirmwareUpdateSession_sendMessageToAccessory_uarpMsg_error___block_invoke;
      block[3] = &unk_278686B80;
      objc_copyWeak(&v32, buf);
      dispatch_async(workQueue, block);
      v21 = [v23 writeData:msgCopy error:error];
      objc_destroyWeak(&v32);
      objc_destroyWeak(buf);
    }

    else
    {
      if (error)
      {
        *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:54 description:0 reason:@"Socket not open" suggestion:0];
      }

      v24 = objc_autoreleasePoolPush();
      v25 = selfCopy;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543362;
        v34 = v27;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@sendMessageToAccessory: Socket not open", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v24);
      v21 = 0;
    }
  }

  v29 = *MEMORY[0x277D85DE8];
  return v21;
}

void __74__HMDAccessoryFirmwareUpdateSession_sendMessageToAccessory_uarpMsg_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetSocketIdleTimer];
}

- (HMSoftwareUpdateDocumentationMetadata)newDocumentationMetadata
{
  v36 = *MEMORY[0x277D85DE8];
  if ([(HMDAccessoryFirmwareUpdateSession *)self documentationAvailable])
  {
    assetID = [(HMDAccessoryFirmwareUpdateSession *)self assetID];
    releaseNotesLocalURL = [assetID releaseNotesLocalURL];

    assetID2 = [(HMDAccessoryFirmwareUpdateSession *)self assetID];
    releaseNotesRemoteURL = [assetID2 releaseNotesRemoteURL];

    if (documentationMaxSize_onceToken != -1)
    {
      dispatch_once(&documentationMaxSize_onceToken, &__block_literal_global_595_188220);
    }

    mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
    if (isInternalBuild())
    {
      v8 = [mEMORY[0x277D0F8D0] preferenceForKey:@"firmwareUpdateDocumentationMaxSize"];
      numberValue = [v8 numberValue];
      unsignedIntValue = [numberValue unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0x200000;
    }

    v27 = 0;
    v17 = [HMDAccessoryFirmwareUpdateSession __calculateDigestDataFromFile:releaseNotesLocalURL maxDataSize:unsignedIntValue error:&v27];
    v18 = v27;
    if (releaseNotesRemoteURL && v17)
    {
      v19 = objc_alloc(MEMORY[0x277CD1E60]);
      v20 = [objc_alloc(MEMORY[0x277D0F7A0]) initWithAlgorithm:2 value:v17];
      v16 = [v19 initWithURL:releaseNotesRemoteURL digest:v20];
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138544130;
        v29 = v24;
        v30 = 2112;
        v31 = releaseNotesLocalURL;
        v32 = 2112;
        v33 = releaseNotesRemoteURL;
        v34 = 2112;
        v35 = v18;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Couldn't create digest for URLs local %@ remote: %@ error: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v21);
      v16 = 0;
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      uarpAccessory = [(HMDAccessoryFirmwareUpdateSession *)selfCopy2 uarpAccessory];
      *buf = 138543618;
      v29 = v14;
      v30 = 2112;
      v31 = uarpAccessory;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEBUG, "%{public}@No documentation available for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)newSoftwareUpdateWithState:(int64_t)state
{
  v66 = *MEMORY[0x277D85DE8];
  newDocumentationMetadata = [(HMDAccessoryFirmwareUpdateSession *)self newDocumentationMetadata];
  availableSoftwareVersion = [(HMDAccessoryFirmwareUpdateSession *)self availableSoftwareVersion];
  hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)self hapAccessory];
  supportsCHIP = [hapAccessory supportsCHIP];

  if (supportsCHIP)
  {
    uarpAccessory = [(HMDAccessoryFirmwareUpdateSession *)self uarpAccessory];
    availableFirmwareVersion = [uarpAccessory availableFirmwareVersion];
  }

  else
  {
    availableFirmwareVersion = 0;
  }

  uarpAccessory2 = [(HMDAccessoryFirmwareUpdateSession *)self uarpAccessory];
  firmwareUpdateBytesTotal = [uarpAccessory2 firmwareUpdateBytesTotal];
  if (firmwareUpdateBytesTotal <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = firmwareUpdateBytesTotal;
  }

  v47 = v11;

  assetID = [(HMDAccessoryFirmwareUpdateSession *)self assetID];
  assetReleaseDate = [assetID assetReleaseDate];

  date = assetReleaseDate;
  if (!assetReleaseDate)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier();
      assetID2 = [(HMDAccessoryFirmwareUpdateSession *)selfCopy assetID];
      *buf = 138543618;
      v51 = v17;
      v52 = 2112;
      v53 = assetID2;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@No release date set for asset, using current date - assetID %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    date = [MEMORY[0x277CBEAA8] date];
  }

  v19 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    v23 = HMSoftwareUpdateStateToString();
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v47];
    v43 = v19;
    v25 = MEMORY[0x277CCABB0];
    uarpAccessory3 = [(HMDAccessoryFirmwareUpdateSession *)selfCopy2 uarpAccessory];
    v26 = [v25 numberWithUnsignedInt:{objc_msgSend(uarpAccessory3, "firmwareUpdateBytesTotal")}];
    v27 = [(HMSoftwareUpdateDocumentationMetadata *)newDocumentationMetadata URL];
    v44 = availableFirmwareVersion;
    v28 = MEMORY[0x277CCABB0];
    [(HMDAccessoryFirmwareUpdateSession *)selfCopy2 hapAccessory];
    v29 = v45 = state;
    firmwareUpdateProfile = [v29 firmwareUpdateProfile];
    v31 = [v28 numberWithUnsignedInteger:{objc_msgSend(firmwareUpdateProfile, "updateDuration")}];
    *buf = 138545154;
    v51 = v22;
    v52 = 2112;
    v53 = availableSoftwareVersion;
    v54 = 2112;
    v55 = v23;
    v56 = 2112;
    v57 = v24;
    v58 = 2112;
    v59 = v26;
    v60 = 2112;
    v61 = v27;
    v62 = 2112;
    v63 = date;
    v64 = 2112;
    v65 = v31;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Creating SoftwareUpdate with version %@, state %@, downloadSize %@(uarpAccessory downloadSize %@), documentation %@, release date %@, duration %@", buf, 0x52u);

    availableFirmwareVersion = v44;
    state = v45;

    v19 = v43;
  }

  objc_autoreleasePoolPop(v19);
  hapAccessory2 = [(HMDAccessoryFirmwareUpdateSession *)selfCopy2 hapAccessory];
  home = [hapAccessory2 home];
  if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
  {
    supportsCHIP2 = [hapAccessory2 supportsCHIP];
    if (state == 2 && supportsCHIP2 && [home isAutomaticThirdPartyAccessorySoftwareUpdateEnabled])
    {
      homeManager = [home homeManager];
      matterSoftwareUpdateProviderDelegate = [homeManager matterSoftwareUpdateProviderDelegate];
      [matterSoftwareUpdateProviderDelegate notifyUpdateRequestedForHMDHAPAccessory:hapAccessory2 isUserTriggered:0 isRetry:0];
    }
  }

  v37 = [HMDSoftwareUpdate alloc];
  firmwareUpdateProfile2 = [hapAccessory2 firmwareUpdateProfile];
  v39 = -[HMDSoftwareUpdate initWithVersion:displayableVersion:downloadSize:state:installDuration:documentationMetadata:releaseDate:](v37, "initWithVersion:displayableVersion:downloadSize:state:installDuration:documentationMetadata:releaseDate:", availableSoftwareVersion, availableFirmwareVersion, v47, state, newDocumentationMetadata, date, [firmwareUpdateProfile2 updateDuration]);

  v40 = *MEMORY[0x277D85DE8];
  return v39;
}

- (void)_updateAvailableSoftwareUpdateDocumentation
{
  hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)self hapAccessory];
  softwareUpdate = [hapAccessory softwareUpdate];
  v4 = softwareUpdate;
  if (softwareUpdate)
  {
    documentationMetadata = [softwareUpdate documentationMetadata];
    if (!documentationMetadata)
    {
      if (![(HMDAccessoryFirmwareUpdateSession *)self documentationAvailable])
      {
        goto LABEL_6;
      }

      documentationMetadata = -[HMDAccessoryFirmwareUpdateSession newSoftwareUpdateWithState:](self, "newSoftwareUpdateWithState:", [v4 state]);
      [(HMDAccessoryFirmwareUpdateSession *)self _updateSoftwareUpdateNotReadyReasons];
      [hapAccessory updateSoftwareUpdate:documentationMetadata completionHandler:&__block_literal_global_111_188232];
    }
  }

LABEL_6:
}

- (void)_updateAvailableSoftwareUpdateState:(int64_t)state
{
  v46 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)self hapAccessory];
  availableSoftwareVersion = [(HMDAccessoryFirmwareUpdateSession *)self availableSoftwareVersion];
  if (!availableSoftwareVersion)
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      v28 = [(HMDAccessoryFirmwareUpdateSession *)selfCopy internalState]- 1;
      if (v28 > 4)
      {
        v29 = @"Up To Date";
      }

      else
      {
        v29 = off_27867DF80[v28];
      }

      v36 = HMSoftwareUpdateStateToString();
      v40 = 138543874;
      v41 = v27;
      v42 = 2112;
      v43 = v29;
      v44 = 2112;
      v45 = v36;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Not updating state from %@ to %@ because update firmware version is not set by UARP", &v40, 0x20u);
    }

    v37 = v24;
    goto LABEL_24;
  }

  if (state == 2 && [(HMDAccessoryFirmwareUpdateSession *)self isFirmwareVersionUpToDate])
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      internalState = [(HMDAccessoryFirmwareUpdateSession *)selfCopy2 internalState];
      if ((internalState - 1) > 4)
      {
        v13 = @"Up To Date";
      }

      else
      {
        v13 = off_27867DF80[internalState - 1];
      }

      v40 = 138543618;
      v41 = v11;
      v42 = 2112;
      v43 = v13;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Not updating state from %@ to downloaded because firmware version is up to date", &v40, 0x16u);
    }

    v37 = v8;
LABEL_24:
    objc_autoreleasePoolPop(v37);
    goto LABEL_29;
  }

  softwareUpdate = [hapAccessory softwareUpdate];
  v15 = softwareUpdate;
  if (softwareUpdate && ([softwareUpdate version], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(availableSoftwareVersion, "isEqualToVersion:", v16), v16, v17))
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [(HMDAccessoryFirmwareUpdateSession *)selfCopy3 internalState]- 1;
      if (v22 > 4)
      {
        v23 = @"Up To Date";
      }

      else
      {
        v23 = off_27867DF80[v22];
      }

      v38 = HMSoftwareUpdateStateToString();
      v40 = 138543874;
      v41 = v21;
      v42 = 2112;
      v43 = v23;
      v44 = 2112;
      v45 = v38;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Updating available software update state from %@ to %@", &v40, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    [v15 updateLocalState:state];
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      v34 = HMSoftwareUpdateStateToString();
      v40 = 138543618;
      v41 = v33;
      v42 = 2112;
      v43 = v34;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@New available software update with state %@", &v40, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v35 = [(HMDAccessoryFirmwareUpdateSession *)selfCopy4 newSoftwareUpdateWithState:state];
    [(HMDAccessoryFirmwareUpdateSession *)selfCopy4 _updateSoftwareUpdateNotReadyReasons];
    [hapAccessory updateSoftwareUpdate:v35 completionHandler:&__block_literal_global_109_188238];
  }

LABEL_29:
  v39 = *MEMORY[0x277D85DE8];
}

- (void)updateAvailableSoftwareUpdateState:(int64_t)state
{
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__HMDAccessoryFirmwareUpdateSession_updateAvailableSoftwareUpdateState___block_invoke;
  v6[3] = &unk_27868A0D0;
  v6[4] = self;
  v6[5] = state;
  dispatch_async(workQueue, v6);
}

void __72__HMDAccessoryFirmwareUpdateSession_updateAvailableSoftwareUpdateState___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) allowedApplyDurationTimer];

  if (v2)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = HMFGetLogIdentifier();
      v7 = [*(a1 + 32) internalState] - 1;
      if (v7 > 4)
      {
        v8 = @"Up To Date";
      }

      else
      {
        v8 = off_27867DF80[v7];
      }

      v12 = *(a1 + 40);
      v13 = HMSoftwareUpdateStateToString();
      v15 = 138543874;
      v16 = v6;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Not updating available software update state from %@ to %@ because apply timer is active", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
    v14 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *MEMORY[0x277D85DE8];

    [v9 _updateAvailableSoftwareUpdateState:v10];
  }
}

- (BOOL)documentationAvailable
{
  assetID = [(HMDAccessoryFirmwareUpdateSession *)self assetID];
  releaseNotesLocalURL = [assetID releaseNotesLocalURL];
  v4 = releaseNotesLocalURL != 0;

  return v4;
}

- (void)_resetAvailableSoftwareUpdate
{
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)self hapAccessory];
  softwareUpdate = [hapAccessory softwareUpdate];

  if (softwareUpdate)
  {
    [hapAccessory updateSoftwareUpdate:0 completionHandler:&__block_literal_global_107_188241];
  }
}

- (void)_updateAvailableSoftwareUpdate
{
  v56 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDAccessoryFirmwareUpdateSession *)self _logDebugStates:"[HMDAccessoryFirmwareUpdateSession _updateAvailableSoftwareUpdate]"];
  availableSoftwareVersion = [(HMDAccessoryFirmwareUpdateSession *)self availableSoftwareVersion];
  hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)self hapAccessory];
  v6 = hapAccessory;
  if (availableSoftwareVersion)
  {
    firmwareUpdateProfile = [hapAccessory firmwareUpdateProfile];
    accessoryVersion = [(HMDAccessoryFirmwareUpdateSession *)self accessoryVersion];
    stagedFirmwareVersion = [firmwareUpdateProfile stagedFirmwareVersion];
    if (([accessoryVersion isGreaterThanVersion:availableSoftwareVersion] & 1) != 0 || objc_msgSend(stagedFirmwareVersion, "isGreaterThanVersion:", availableSoftwareVersion))
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v14 = v13 = firmwareUpdateProfile;
        accessoryVersion2 = [(HMDAccessoryFirmwareUpdateSession *)selfCopy5 accessoryVersion];
        *buf = 138544130;
        v49 = v14;
        v50 = 2112;
        v51 = availableSoftwareVersion;
        v52 = 2112;
        v53 = accessoryVersion2;
        v54 = 2112;
        v55 = stagedFirmwareVersion;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Session available firmware version (%@) is older than either current accessory version (%@) or the staged version (%@)", buf, 0x2Au);

        firmwareUpdateProfile = v13;
      }

      goto LABEL_6;
    }

    if (![v6 supportsCHIP])
    {
      goto LABEL_38;
    }

    assetID = [(HMDAccessoryFirmwareUpdateSession *)self assetID];
    [assetID assetVersionNumber];
    v21 = v45 = stagedFirmwareVersion;
    v22 = MEMORY[0x277CCABB0];
    firmwareVersion = [v6 firmwareVersion];
    v23 = [v22 numberWithUnsignedInteger:{objc_msgSend(firmwareVersion, "majorVersion")}];
    assetID2 = [(HMDAccessoryFirmwareUpdateSession *)self assetID];
    assetVersion = [assetID2 assetVersion];
    [v6 displayableFirmwareVersion];
    v25 = v47 = firmwareUpdateProfile;
    uarpAccessory = [(HMDAccessoryFirmwareUpdateSession *)self uarpAccessory];
    firmwareVersion2 = [uarpAccessory firmwareVersion];
    v42 = [(HMDAccessoryFirmwareUpdateSession *)self _shouldUpdateUarpAccessoryVersion:v21 matterFirmwareRevisionNumber:v23 assetVersionString:assetVersion matterFirmwareRevisionString:v25 uarpAccessoryVersion:firmwareVersion2];

    firmwareUpdateProfile = v47;
    stagedFirmwareVersion = v45;

    if (!v42)
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v12 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
LABEL_6:

        objc_autoreleasePoolPop(v10);
LABEL_7:

        goto LABEL_11;
      }

      v38 = HMFGetLogIdentifier();
      *buf = 138543362;
      v49 = v38;
      v39 = "%{public}@Updating Available Software Update: Waiting for version number and version string to be in sync before proceeding";
    }

    else
    {
LABEL_38:
      if ([availableSoftwareVersion isEqualToVersion:accessoryVersion])
      {
        v28 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = HMFGetLogIdentifier();
          *buf = 138543362;
          v49 = v31;
          _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Session available firmware version is the same as the current accessory version. Software Update has been installed.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v28);
        v32 = selfCopy3;
        v33 = 4;
LABEL_22:
        [(HMDAccessoryFirmwareUpdateSession *)v32 updateAvailableSoftwareUpdateState:v33];
        goto LABEL_7;
      }

      if ([availableSoftwareVersion isEqualToVersion:stagedFirmwareVersion])
      {
        v34 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = HMFGetLogIdentifier();
          *buf = 138543362;
          v49 = v37;
          _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Session available firmware version is staged on accessory. Software Update has been downloaded.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v34);
        v32 = selfCopy4;
        v33 = 2;
        goto LABEL_22;
      }

      if (stagedFirmwareVersion)
      {
        goto LABEL_7;
      }

      if (![v6 supportsCHIP])
      {
        v40 = [(HMDAccessoryFirmwareUpdateSession *)self internalState]!= 1 && [(HMDAccessoryFirmwareUpdateSession *)self internalState]!= 2;
        updateState = [firmwareUpdateProfile updateState];
        if (!v40 && updateState != 4)
        {
          [(HMDAccessoryFirmwareUpdateSession *)self _resetAvailableSoftwareUpdate];
        }

        goto LABEL_7;
      }

      v10 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v12 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        goto LABEL_6;
      }

      v38 = HMFGetLogIdentifier();
      *buf = 138543362;
      v49 = v38;
      v39 = "%{public}@Not re-setting software update state for matter accessory";
    }

    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, v39, buf, 0xCu);

    goto LABEL_6;
  }

  v16 = objc_autoreleasePoolPush();
  selfCopy6 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543362;
    v49 = v19;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEBUG, "%{public}@firmware version not available in UARP accessory", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v16);
LABEL_11:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)updateAvailableSoftwareUpdate
{
  objc_initWeak(&location, self);
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__HMDAccessoryFirmwareUpdateSession_updateAvailableSoftwareUpdate__block_invoke;
  v4[3] = &unk_278686B80;
  objc_copyWeak(&v5, &location);
  dispatch_async(workQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __66__HMDAccessoryFirmwareUpdateSession_updateAvailableSoftwareUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateAvailableSoftwareUpdate];
}

- (void)incrementMatterFirmwareUpdateRetryCount
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(HMDAccessoryFirmwareUpdateSession *)self isMatterFirmwareUpdateRetryAllowed])
  {
    [(HMDAccessoryFirmwareUpdateSession *)self setMatterFirmwareUpdateRetryCount:[(HMDAccessoryFirmwareUpdateSession *)self matterFirmwareUpdateRetryCount]+ 1];
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v8 = 138543874;
      v9 = v6;
      v10 = 2048;
      matterFirmwareUpdateRetryCount = [(HMDAccessoryFirmwareUpdateSession *)selfCopy matterFirmwareUpdateRetryCount];
      v12 = 2048;
      v13 = 5;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Matter firmware update retry attempt %lu of %lu", &v8, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateAccessoryVendorIDAndProductID
{
  objc_initWeak(&location, self);
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__HMDAccessoryFirmwareUpdateSession_updateAccessoryVendorIDAndProductID__block_invoke;
  v4[3] = &unk_278686B80;
  objc_copyWeak(&v5, &location);
  dispatch_async(workQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __72__HMDAccessoryFirmwareUpdateSession_updateAccessoryVendorIDAndProductID__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained hapAccessory];
  v3 = [WeakRetained accessoryFirmwareUpdateManager];
  v4 = [v3 UARPControllerForAccessory:v2];

  v5 = [v2 matterVendorID];
  v6 = [v5 stringValue];
  v7 = [WeakRetained uarpAccessory];
  v8 = [v4 updateProperty:7 value:v6 forAccessory:v7];

  v9 = objc_autoreleasePoolPush();
  v10 = WeakRetained;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if ((v8 & 1) == 0)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v24;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to update UARP accessory vendor ID property", &v27, 0xCu);
    }

    goto LABEL_14;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v2 matterVendorID];
    v27 = 138543618;
    v28 = v13;
    v29 = 2112;
    v30 = v14;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Accessory vendor ID updated to %@", &v27, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = [v2 matterProductID];
  v16 = [v15 stringValue];
  v17 = [v10 uarpAccessory];
  v18 = [v4 updateProperty:8 value:v16 forAccessory:v17];

  v9 = objc_autoreleasePoolPush();
  v19 = v10;
  v20 = HMFGetOSLogHandle();
  v21 = v20;
  if ((v18 & 1) == 0)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v25;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to update UARP accessory product ID property", &v27, 0xCu);
    }

LABEL_14:
    objc_autoreleasePoolPop(v9);
    goto LABEL_15;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    v23 = [v2 matterProductID];
    v27 = 138543618;
    v28 = v22;
    v29 = 2112;
    v30 = v23;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Accessory product ID updated to %@", &v27, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  [v19 _cancelApplyTimer];
  [v19 _updateAvailableSoftwareUpdate];
LABEL_15:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_updateSoftwareUpdateNotReadyReasons
{
  v72 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)self hapAccessory];
  firmwareUpdateProfile = [hapAccessory firmwareUpdateProfile];
  softwareUpdate = [hapAccessory softwareUpdate];
  stagingNotReadyReasons = [firmwareUpdateProfile stagingNotReadyReasons];
  v8 = 0;
  if (stagingNotReadyReasons)
  {
    v9 = 1;
    v10 = stagingNotReadyReasons;
    do
    {
      v11 = v10 & 0xFFFFFFFFFFFFFFFBLL;
      v12 = v8 | 4;
      v13 = v10 & 0xFFFFFFFFFFFFFFFDLL;
      v14 = v8 | 2;
      v15 = v10 & 0xFFFFFFFFFFFFFFFELL;
      v16 = v8 | 1;
      if (v9 != 1)
      {
        v16 = v8;
        v15 = v10;
      }

      if (v9 != 2)
      {
        v14 = v16;
        v13 = v15;
      }

      if (v9 != 4)
      {
        v12 = v14;
        v11 = v13;
      }

      if ((v9 & stagingNotReadyReasons) != 0)
      {
        v8 = v12;
        v10 = v11;
      }

      v9 *= 2;
    }

    while (v9 - 1 < stagingNotReadyReasons);
  }

  else
  {
    v10 = 0;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = HMFGetLogIdentifier();
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
    *buf = 138543618;
    v55 = v19;
    v56 = 2112;
    v57 = v20;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Unknown stagingNotReadyReasons %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  updateNotReadyReasons = [firmwareUpdateProfile updateNotReadyReasons];
  v22 = 0;
  if (updateNotReadyReasons)
  {
    v23 = 1;
    v24 = updateNotReadyReasons;
    do
    {
      v25 = v24 & 0xFFFFFFFFFFFFFFFBLL;
      v26 = v24 & 0xFFFFFFFFFFFFFFF7;
      v27 = v22 | 8;
      if (v23 != 8)
      {
        v27 = v22;
        v26 = v24;
      }

      if (v23 == 4)
      {
        v27 = v22;
      }

      else
      {
        v25 = v26;
      }

      v28 = v24 & 0xFFFFFFFFFFFFFFFELL;
      v29 = v22 | 1;
      v30 = v24 & 0xFFFFFFFFFFFFFFFDLL;
      v31 = v22 | 2;
      if (v23 != 2)
      {
        v31 = v22;
        v30 = v24;
      }

      if (v23 != 1)
      {
        v29 = v31;
        v28 = v30;
      }

      if (v23 <= 3)
      {
        v27 = v29;
        v25 = v28;
      }

      if ((v23 & updateNotReadyReasons) != 0)
      {
        v22 = v27;
        v24 = v25;
      }

      v23 *= 2;
    }

    while (v23 - 1 < updateNotReadyReasons);
  }

  else
  {
    v24 = 0;
  }

  v32 = objc_autoreleasePoolPush();
  v33 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = HMFGetLogIdentifier();
    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v24];
    *buf = 138543618;
    v55 = v34;
    v56 = 2112;
    v57 = v35;
    _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@Unknown applyNotReadyReasons %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v32);
  softwareUpdate2 = [hapAccessory softwareUpdate];

  if (softwareUpdate2)
  {
    v37 = objc_autoreleasePoolPush();
    selfCopy = self;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v52 = HMFGetLogIdentifier();
      [softwareUpdate needsAttentionReasons];
      v49 = HMSoftwareUpdateNeedsAttentionReasonsToString();
      v53 = softwareUpdate;
      v50 = v37;
      v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(softwareUpdate, "needsAttentionReasons")}];
      v51 = HMSoftwareUpdateNeedsAttentionReasonsToString();
      v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22 | v8];
      [firmwareUpdateProfile stagingNotReadyReasons];
      v47 = HAPStagingNotReadyReasonsAsString();
      v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(firmwareUpdateProfile, "stagingNotReadyReasons")}];
      [firmwareUpdateProfile updateNotReadyReasons];
      HAPUpdateNotReadyReasonsAsString();
      v42 = v48 = selfCopy;
      v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(firmwareUpdateProfile, "updateNotReadyReasons")}];
      *buf = 138545410;
      v55 = v52;
      v56 = 2114;
      v57 = v49;
      v58 = 2114;
      v59 = v40;
      v60 = 2114;
      v61 = v51;
      v62 = 2114;
      v63 = v41;
      v64 = 2114;
      v65 = v47;
      v66 = 2114;
      v67 = v46;
      v68 = 2114;
      v69 = v42;
      v70 = 2114;
      v71 = v43;
      _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@SoftwareUpdate needsAttentionReasons changed - old %{public}@ (%{public}@) new %{public}@ (%{public}@) staging reasons %{public}@ (%{public}@) apply reasons %{public}@ (%{public}@)", buf, 0x5Cu);

      softwareUpdate = v53;
      selfCopy = v48;
      v37 = v50;
    }

    objc_autoreleasePoolPop(v37);
    softwareUpdate3 = [hapAccessory softwareUpdate];
    [softwareUpdate3 setNeedsAttentionReasons:v22 | v8];
  }

  v45 = *MEMORY[0x277D85DE8];
}

- (void)handleNotReadyReasonsChanged:(id)changed
{
  changedCopy = changed;
  objc_initWeak(&location, self);
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__HMDAccessoryFirmwareUpdateSession_handleNotReadyReasonsChanged___block_invoke;
  v6[3] = &unk_278686B80;
  objc_copyWeak(&v7, &location);
  dispatch_async(workQueue, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __66__HMDAccessoryFirmwareUpdateSession_handleNotReadyReasonsChanged___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSoftwareUpdateNotReadyReasons];
}

- (void)handleFirmwareUpdateStateChangedNotification:(id)notification
{
  notificationCopy = notification;
  objc_initWeak(&location, self);
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__HMDAccessoryFirmwareUpdateSession_handleFirmwareUpdateStateChangedNotification___block_invoke;
  block[3] = &unk_278686B48;
  objc_copyWeak(&v9, &location);
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __82__HMDAccessoryFirmwareUpdateSession_handleFirmwareUpdateStateChangedNotification___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) userInfo];
  v4 = [v3 hmf_numberForKey:@"HMDAccessoryFirmwareUpdateStateKey"];

  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    [v4 longValue];
    v9 = HAPFirmwareUpdateStateAsString();
    v19 = 138543618;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Accessory state changed to %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if ([v6 internalState] == 2 && (!objc_msgSend(v4, "longValue") || objc_msgSend(v4, "longValue") == 2))
  {
    v10 = objc_autoreleasePoolPush();
    v11 = v6;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Restarting staging", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    [v11 _schedule];
  }

  else if ([v6 internalState] == 3 && objc_msgSend(v4, "longValue") == 4)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v6;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Detected remote apply in progress", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    [v15 setRemoteApplyInProgress:1];
    [v15 _updateAvailableSoftwareUpdateState:3];
    [v15 startApplyDurationTimers];
  }

  else if ([v6 internalState] == 4 && objc_msgSend(v4, "longValue") == 3 && (objc_msgSend(v6, "isFirmwareVersionUpToDate") & 1) == 0)
  {
    if (([v6 remoteApplyInProgress] & 1) == 0)
    {
      [v6 _updateAvailableSoftwareUpdate];
    }

    [v6 setRemoteApplyInProgress:0];
    [v6 _applyFailed];
  }

  else if (([v6 internalState] == 2 || objc_msgSend(v6, "internalState") == 1) && objc_msgSend(v4, "longValue") == 3)
  {
    [v6 stagingComplete];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)updateAccessoryStagedFirmwareVersion
{
  objc_initWeak(&location, self);
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __73__HMDAccessoryFirmwareUpdateSession_updateAccessoryStagedFirmwareVersion__block_invoke;
  v4[3] = &unk_278686B80;
  objc_copyWeak(&v5, &location);
  dispatch_async(workQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __73__HMDAccessoryFirmwareUpdateSession_updateAccessoryStagedFirmwareVersion__block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained hapAccessory];
  v3 = [v2 firmwareUpdateProfile];
  v4 = [v3 stagedFirmwareVersion];

  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v6 uarpAccessory];
    v10 = [v9 stagedFirmwareVersion];
    v38 = 138543874;
    v39 = v8;
    v40 = 2112;
    v41 = v10;
    v42 = 2112;
    v43 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Staged firmware version changed from %@ to %@", &v38, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  [v6 _logDebugStates:"-[HMDAccessoryFirmwareUpdateSession updateAccessoryStagedFirmwareVersion]_block_invoke"];
  v11 = [v6 accessoryFirmwareUpdateManager];
  v12 = [v6 availableSoftwareVersion];
  v13 = [v4 isGreaterThanVersion:v12];

  if (!v13)
  {
    v23 = [v11 UARPControllerForAccessory:v2];
    v24 = [v4 versionString];
    v25 = [v6 uarpAccessory];
    v26 = [v23 updateProperty:5 value:v24 forAccessory:v25];

    v27 = objc_autoreleasePoolPush();
    v28 = v6;
    v29 = HMFGetOSLogHandle();
    v30 = v29;
    if (v26)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        v38 = 138543362;
        v39 = v31;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Updated UARP staged firmware version property", &v38, 0xCu);
      }

      objc_autoreleasePoolPop(v27);
      [v28 _updateAvailableSoftwareUpdate];
      if (v4)
      {
        [v28 setLastStagedVersion:v4];
LABEL_19:

        goto LABEL_20;
      }

      v34 = [v28 availableSoftwareVersion];
      if (v34)
      {

        goto LABEL_19;
      }

      v35 = [v28 uarpAccessory];
      v36 = [v23 checkForUpdate:v35];

      if (v36)
      {
        goto LABEL_19;
      }

      v27 = objc_autoreleasePoolPush();
      v28 = v28;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        v37 = [v28 uarpAccessory];
        v38 = 138543874;
        v39 = v32;
        v40 = 2112;
        v41 = v2;
        v42 = 2112;
        v43 = v37;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@checkForUpdate failed for accessory %@ %@", &v38, 0x20u);

        goto LABEL_17;
      }
    }

    else if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      v38 = 138543362;
      v39 = v32;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to update UARP staged firmware version property", &v38, 0xCu);
LABEL_17:
    }

    objc_autoreleasePoolPop(v27);
    goto LABEL_19;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = v6;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [v15 availableSoftwareVersion];
    v38 = 138543618;
    v39 = v17;
    v40 = 2112;
    v41 = v18;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Staged firmware version newer than available version (%@)", &v38, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  if (([v11 checkForUpdateForAccessory:v2] & 1) == 0)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v15;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v38 = 138543362;
      v39 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Error request UARP to check for available updates", &v38, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
  }

LABEL_20:

  v33 = *MEMORY[0x277D85DE8];
}

- (void)updateAccessoryFirmwareVersion
{
  objc_initWeak(&location, self);
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__HMDAccessoryFirmwareUpdateSession_updateAccessoryFirmwareVersion__block_invoke;
  v4[3] = &unk_278686B80;
  objc_copyWeak(&v5, &location);
  dispatch_async(workQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __67__HMDAccessoryFirmwareUpdateSession_updateAccessoryFirmwareVersion__block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained hapAccessory];
  v3 = [WeakRetained accessoryFirmwareUpdateManager];
  v4 = [v3 UARPControllerForAccessory:v2];

  v5 = [WeakRetained accessoryVersion];
  v6 = [v5 versionString];

  if (![v2 supportsCHIP])
  {
LABEL_4:
    v22 = [WeakRetained uarpAccessory];
    v23 = [v4 updateProperty:4 value:v6 forAccessory:v22];
    v24 = objc_autoreleasePoolPush();
    v25 = WeakRetained;
    v26 = HMFGetOSLogHandle();
    v27 = v26;
    if (v23)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        v29 = [v25 accessoryVersion];
        *buf = 138544130;
        v42 = v28;
        v43 = 2112;
        v44 = v2;
        v45 = 2112;
        v46 = v6;
        v47 = 2112;
        v48 = v29;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Accessory %@: UARP accessory firmware version property updated to %@ (accessoryVersion is %@)", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v24);
      [v25 _cancelApplyTimer];
      [v25 _updateAvailableSoftwareUpdate];
      [v25 _verifyUpdateComplete];
    }

    else
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543362;
        v42 = v30;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to update UARP accessory firmware version property", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v24);
    }

    goto LABEL_14;
  }

  v39 = v6;
  v40 = v4;
  v37 = [WeakRetained assetID];
  v7 = [v37 assetVersionNumber];
  v8 = MEMORY[0x277CCABB0];
  v9 = [v2 firmwareVersion];
  v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(v9, "majorVersion")}];
  [WeakRetained assetID];
  v12 = v11 = v2;
  v13 = [v12 assetVersion];
  v38 = v11;
  v14 = [v11 displayableFirmwareVersion];
  v15 = [WeakRetained uarpAccessory];
  v16 = [v15 firmwareVersion];
  v17 = [WeakRetained _shouldUpdateUarpAccessoryVersion:v7 matterFirmwareRevisionNumber:v10 assetVersionString:v13 matterFirmwareRevisionString:v14 uarpAccessoryVersion:v16];

  if (v17)
  {
    v2 = v38;
    v18 = [v38 firmwareUpdateProfile];
    v19 = [v18 matterFirmwareUpdateProfile];
    v20 = [v19 matterFirmwareRevisionNumber];

    v21 = [v20 stringValue];

    v6 = v21;
    v4 = v40;
    goto LABEL_4;
  }

  v2 = v38;
  v31 = objc_autoreleasePoolPush();
  v32 = WeakRetained;
  v33 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = HMFGetLogIdentifier();
    *buf = 138543362;
    v42 = v34;
    _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Waiting for version number and version string to be in sync before proceeding", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v31);
  v22 = [v38 firmwareUpdateProfile];
  v35 = [v22 matterFirmwareUpdateProfile];
  [v35 readMatterFirmwareUpdateCharacteristics];

  v6 = v39;
  v4 = v40;
LABEL_14:

  v36 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldUpdateUarpAccessoryVersion:(id)version matterFirmwareRevisionNumber:(id)number assetVersionString:(id)string matterFirmwareRevisionString:(id)revisionString uarpAccessoryVersion:(id)accessoryVersion
{
  versionCopy = version;
  numberCopy = number;
  accessoryVersionCopy = accessoryVersion;
  v15 = [(HMDAccessoryFirmwareUpdateSession *)self _isAccessoryVersionInSyncWithAssetVersion:versionCopy matterFirmwareRevisionNumber:numberCopy assetVersionString:string matterFirmwareRevisionString:revisionString]|| [(HMDAccessoryFirmwareUpdateSession *)self _isMatterFirmwareVersionMatchingOrNewerThanUARP:versionCopy matterFirmwareRevisionNumber:numberCopy uarpAccessoryVersion:accessoryVersionCopy];

  return v15;
}

- (BOOL)_isAccessoryVersionInSyncWithAssetVersion:(id)version matterFirmwareRevisionNumber:(id)number assetVersionString:(id)string matterFirmwareRevisionString:(id)revisionString
{
  v50 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  numberCopy = number;
  stringCopy = string;
  revisionStringCopy = revisionString;
  stringValue = [numberCopy stringValue];
  if (stringValue)
  {
    v15 = [versionCopy isEqualToValue:numberCopy];
    v39 = [stringCopy isEqualToString:revisionStringCopy];
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      HMFBooleanToString();
      v37 = stringCopy;
      v38 = revisionStringCopy;
      v21 = v20 = versionCopy;
      HMFBooleanToString();
      v23 = v22 = v15;
      *buf = 138543874;
      v41 = v19;
      v42 = 2112;
      v43 = v21;
      v44 = 2112;
      v45 = v23;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@isAccessoryVersionInSyncWithAssetVersion: VersionNumberInSync : %@, VersionStringInSync: %@", buf, 0x20u);

      v15 = v22;
      versionCopy = v20;
      stringCopy = v37;
      revisionStringCopy = v38;
    }

    objc_autoreleasePoolPop(v16);
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v28 = v27 = v15;
      *buf = 138544386;
      v41 = v28;
      v42 = 2112;
      v43 = versionCopy;
      v44 = 2112;
      v45 = numberCopy;
      v46 = 2112;
      v47 = stringCopy;
      v48 = 2112;
      v49 = revisionStringCopy;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@isAccessoryVersionInSyncWithAssetVersion: AssetVersionNumber: %@, MatterFirmwareRevisionNumber: %@, AssetVersionString %@, FirmwareVersionString: %@", buf, 0x34u);

      v15 = v27;
    }

    objc_autoreleasePoolPop(v24);
    v29 = v15 & v39;
  }

  else
  {
    v30 = versionCopy;
    v31 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543618;
      v41 = v34;
      v42 = 2112;
      v43 = 0;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Matter firmware version is invalid: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    v29 = 0;
    versionCopy = v30;
  }

  v35 = *MEMORY[0x277D85DE8];
  return v29;
}

- (BOOL)_isMatterFirmwareVersionMatchingOrNewerThanUARP:(id)p matterFirmwareRevisionNumber:(id)number uarpAccessoryVersion:(id)version
{
  v41 = *MEMORY[0x277D85DE8];
  pCopy = p;
  numberCopy = number;
  versionCopy = version;
  v11 = versionCopy;
  if (!numberCopy)
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v28 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      goto LABEL_20;
    }

    v29 = HMFGetLogIdentifier();
    v33 = 138543362;
    v34 = v29;
    v30 = "%{public}@Matter firmware version number is not available to be compared";
LABEL_19:
    _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, v30, &v33, 0xCu);

    goto LABEL_20;
  }

  if (!versionCopy)
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v28 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      goto LABEL_20;
    }

    v29 = HMFGetLogIdentifier();
    v33 = 138543362;
    v34 = v29;
    v30 = "%{public}@UARP firmware version number is not available to be compared";
    goto LABEL_19;
  }

  if (!pCopy)
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      v33 = 138543362;
      v34 = v29;
      v30 = "%{public}@asset version number is not available to be compared";
      goto LABEL_19;
    }

LABEL_20:

    objc_autoreleasePoolPop(v26);
    v25 = 0;
    goto LABEL_21;
  }

  v12 = [objc_alloc(MEMORY[0x277D0F8F8]) initWithMajorVersion:objc_msgSend(numberCopy minorVersion:"unsignedLongValue") updateVersion:{0, 0}];
  v13 = [objc_alloc(MEMORY[0x277D0F8F8]) initWithString:v11];
  v14 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v33 = 138543874;
    v34 = v17;
    v35 = 2112;
    v36 = v12;
    v37 = 2112;
    v38 = v13;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Version mismatch detected. Comparing Matter firmware = %@ and UARP version = %@", &v33, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  if (![v12 isGreaterThanVersion:v13])
  {
    goto LABEL_15;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = selfCopy4;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    unsignedLongLongValue = [numberCopy unsignedLongLongValue];
    unsignedLongLongValue2 = [pCopy unsignedLongLongValue];
    v33 = 138544130;
    v34 = v21;
    v35 = 2048;
    v36 = unsignedLongLongValue;
    v37 = 2112;
    v38 = v13;
    v39 = 2048;
    v40 = unsignedLongLongValue2;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Matter firmware version = %llu is larger than UARP version = %@ with valid asset version number = %llu", &v33, 0x2Au);
  }

  objc_autoreleasePoolPop(v18);
  unsignedLongLongValue3 = [numberCopy unsignedLongLongValue];
  if (unsignedLongLongValue3 < [pCopy unsignedLongLongValue])
  {
    v25 = 1;
  }

  else
  {
LABEL_15:
    v25 = 0;
  }

LABEL_21:
  v31 = *MEMORY[0x277D85DE8];
  return v25;
}

- (void)handleAccessoryFirmwareVersionChangedNotification:(id)notification
{
  v12 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received accessory firmware updated notification", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDAccessoryFirmwareUpdateSession *)selfCopy updateAccessoryFirmwareVersion];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryVIDPIDChangedNotification:(id)notification
{
  v12 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received matter VID PID updated notification", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDAccessoryFirmwareUpdateSession *)selfCopy updateAccessoryVendorIDAndProductID];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryFirmwareVersionNumberChangedNotification:(id)notification
{
  v12 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received accessory firmware version number updated notification", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDAccessoryFirmwareUpdateSession *)selfCopy updateAccessoryFirmwareVersion];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_updateSoftwareUpdateStateForMatterAccessoryWithState:(unint64_t)state
{
  v36 = *MEMORY[0x277D85DE8];
  if (state == 1)
  {
    hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)self hapAccessory];
    softwareUpdate = [(__CFString *)hapAccessory softwareUpdate];
    accessoryVersion = [(HMDAccessoryFirmwareUpdateSession *)self accessoryVersion];
    availableSoftwareVersion = [(HMDAccessoryFirmwareUpdateSession *)self availableSoftwareVersion];
    if ([availableSoftwareVersion isEqualToVersion:accessoryVersion])
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        uarpAccessory = [(HMDAccessoryFirmwareUpdateSession *)selfCopy uarpAccessory];
        v28 = 138544130;
        v29 = v11;
        v30 = 2112;
        v31 = hapAccessory;
        v32 = 2112;
        v33 = uarpAccessory;
        v34 = 2112;
        v35 = softwareUpdate;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Update is already installed for acc:%@ uarpAcc:%@ softwareUpdate:%@", &v28, 0x2Au);
      }

      objc_autoreleasePoolPop(v8);
      v13 = 4;
    }

    else
    {
      v13 = 2;
      if (([(__CFString *)hapAccessory isAutomaticThirdPartyAccessorySoftwareUpdateEnabled]& 1) == 0 && softwareUpdate)
      {
        if ((([softwareUpdate state] - 3) & 0xFFFFFFFFFFFFFFFDLL) != 0)
        {
          v13 = 2;
        }

        else
        {
          v13 = 5;
        }
      }
    }

    v22 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v26 = HMSoftwareUpdateStateToString();
      v28 = 138543618;
      v29 = v25;
      v30 = 2112;
      v31 = v26;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Marking Update as %@, matter accessory will trigger staging by itself.", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    [(HMDAccessoryFirmwareUpdateSession *)selfCopy2 updateAvailableSoftwareUpdateState:v13];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = v18;
      v20 = @"Up-To-Date";
      if (state == 2)
      {
        v20 = @"Needs Apply";
      }

      if (state == 3)
      {
        v20 = @"Needs Register";
      }

      v28 = 138543618;
      v29 = v18;
      v30 = 2112;
      v31 = v20;
      v21 = v20;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unsupported state %@ for Matter Accessory, ignoring.", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_cancelApplyTimer
{
  v15 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  allowedApplyDurationTimer = [(HMDAccessoryFirmwareUpdateSession *)self allowedApplyDurationTimer];
  if (allowedApplyDurationTimer)
  {
  }

  else
  {
    expectedApplyDurationTimer = [(HMDAccessoryFirmwareUpdateSession *)self expectedApplyDurationTimer];

    if (!expectedApplyDurationTimer)
    {
      goto LABEL_7;
    }
  }

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Apply timer cancelled", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  allowedApplyDurationTimer2 = [(HMDAccessoryFirmwareUpdateSession *)selfCopy allowedApplyDurationTimer];
  [allowedApplyDurationTimer2 cancel];

  [(HMDAccessoryFirmwareUpdateSession *)selfCopy setAllowedApplyDurationTimer:0];
  expectedApplyDurationTimer2 = [(HMDAccessoryFirmwareUpdateSession *)selfCopy expectedApplyDurationTimer];
  [expectedApplyDurationTimer2 cancel];

  [(HMDAccessoryFirmwareUpdateSession *)selfCopy setExpectedApplyDurationTimer:0];
LABEL_7:
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_endSession
{
  v28 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDAccessoryFirmwareUpdateSession *)self _logDebugStates:"[HMDAccessoryFirmwareUpdateSession _endSession]"];
  hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)self hapAccessory];
  if (((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0)) && [hapAccessory supportsCHIP])
  {
    firmwareUpdateProfile = [hapAccessory firmwareUpdateProfile];
    matterFirmwareUpdateProfile = [firmwareUpdateProfile matterFirmwareUpdateProfile];
    matterSoftwareUpdateProviderDelegate = [matterFirmwareUpdateProfile matterSoftwareUpdateProviderDelegate];

    if (matterSoftwareUpdateProviderDelegate)
    {
      [matterSoftwareUpdateProviderDelegate resetOTAProviderStateForHMDHAPAccessory:hapAccessory];
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v24 = 138543362;
        v25 = v11;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Couldn't get a strong ref to the software update provider delegate", &v24, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
    }

    [(HMDAccessoryFirmwareUpdateSession *)self resetMatterFirmwareUpdateRetryCount];
  }

  v12 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = HMFGetLogIdentifier();
    [(HMDAccessoryFirmwareUpdateSession *)selfCopy2 sessionEnded];
    v16 = HMFBooleanToString();
    v24 = 138543618;
    v25 = v15;
    v26 = 2112;
    v27 = v16;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Session ended (already ended: %@)", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  if (![(HMDAccessoryFirmwareUpdateSession *)selfCopy2 sessionEnded])
  {
    [(HMDAccessoryFirmwareUpdateSession *)selfCopy2 setSessionEnded:1];
    WeakRetained = objc_loadWeakRetained(&selfCopy2->_hapAccessory);
    firmwareUpdateProfile2 = [WeakRetained firmwareUpdateProfile];
    [firmwareUpdateProfile2 monitorCharacteristics:0];

    dataStreamSocket = [(HMDAccessoryFirmwareUpdateSession *)selfCopy2 dataStreamSocket];
    [dataStreamSocket close];

    [(HMDAccessoryFirmwareUpdateSession *)selfCopy2 setInternalState:0];
    [(HMDAccessoryFirmwareUpdateSession *)selfCopy2 _updateAvailableSoftwareUpdate];
    accessoryFirmwareUpdateManager = [(HMDAccessoryFirmwareUpdateSession *)selfCopy2 accessoryFirmwareUpdateManager];
    assetID = [(HMDAccessoryFirmwareUpdateSession *)selfCopy2 assetID];
    [accessoryFirmwareUpdateManager resetFirmwareUpdateAccessoryRetryTracking:hapAccessory forAsset:assetID];

    [accessoryFirmwareUpdateManager removeSession:selfCopy2];
    updateScheduler = [(HMDAccessoryFirmwareUpdateSession *)selfCopy2 updateScheduler];
    [updateScheduler removeUpdatePolicy];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_schedule
{
  v28 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  internalState = [(HMDAccessoryFirmwareUpdateSession *)self internalState];
  hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)self hapAccessory];
  [(HMDAccessoryFirmwareUpdateSession *)self setInternalState:[(HMDAccessoryFirmwareUpdateSession *)self nextStateToSchedule]];
  if (![(HMDAccessoryFirmwareUpdateSession *)self isVerifyingUpdate]&& ![(HMDAccessoryFirmwareUpdateSession *)self internalState])
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v18;
      v19 = "%{public}@Update successful";
      v20 = v17;
      v21 = OS_LOG_TYPE_INFO;
LABEL_21:
      _os_log_impl(&dword_229538000, v20, v21, v19, &v24, 0xCu);
    }

LABEL_22:

    objc_autoreleasePoolPop(v15);
    [(HMDAccessoryFirmwareUpdateSession *)selfCopy2 _endSession];
    goto LABEL_23;
  }

  if (internalState - 3 <= 1 && [(HMDAccessoryFirmwareUpdateSession *)self internalState]== 1)
  {
    accessoryFirmwareUpdateManager = [(HMDAccessoryFirmwareUpdateSession *)self accessoryFirmwareUpdateManager];
    assetID = [(HMDAccessoryFirmwareUpdateSession *)self assetID];
    v8 = [accessoryFirmwareUpdateManager isFirmwareUpdateRetryAllowedForAccessory:hapAccessory forAsset:assetID];

    if ((v8 & 1) == 0)
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v24 = 138543362;
        v25 = v18;
        v19 = "%{public}@No more staging retries for this accessory's firmware update session";
        v20 = v17;
        v21 = OS_LOG_TYPE_ERROR;
        goto LABEL_21;
      }

      goto LABEL_22;
    }
  }

  if (((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0)) && [hapAccessory supportsCHIP] && -[HMDAccessoryFirmwareUpdateSession internalState](self, "internalState") == 1)
  {
    [(HMDAccessoryFirmwareUpdateSession *)self _updateSoftwareUpdateStateForMatterAccessoryWithState:1];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      internalState2 = [(HMDAccessoryFirmwareUpdateSession *)selfCopy3 internalState];
      if ((internalState2 - 1) > 4)
      {
        v14 = @"Up To Date";
      }

      else
      {
        v14 = off_27867DF80[internalState2 - 1];
      }

      v24 = 138543618;
      v25 = v12;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Scheduling next operation, state %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    updateScheduler = [(HMDAccessoryFirmwareUpdateSession *)selfCopy3 updateScheduler];
    [updateScheduler scheduleWithDelay:1];
  }

LABEL_23:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_applyFailed
{
  v19 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0)) && (-[HMDAccessoryFirmwareUpdateSession hapAccessory](self, "hapAccessory"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 supportsCHIP], v4, v5))
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v9;
      v17 = 2080;
      v18 = "[HMDAccessoryFirmwareUpdateSession _applyFailed]";
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@%s: Matter Accessory responsible for managing firmware application. No action taken.", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Apply did not complete or failed in the accessory", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    if ([(HMDAccessoryFirmwareUpdateSession *)selfCopy2 isStagedFirmwareVersionUpToDate])
    {
      [(HMDAccessoryFirmwareUpdateSession *)selfCopy2 setInternalState:3];
      if ([(HMDAccessoryFirmwareUpdateSession *)selfCopy2 isUserInitiatedInstall])
      {
        [(HMDAccessoryFirmwareUpdateSession *)selfCopy2 setUserInitiatedInstall:0];
        [(HMDAccessoryFirmwareUpdateSession *)selfCopy2 _updateAvailableSoftwareUpdate];
      }

      else
      {
        [(HMDAccessoryFirmwareUpdateSession *)selfCopy2 _evaluateHDSRetryForApplyFirmware];
      }
    }

    else
    {
      [(HMDAccessoryFirmwareUpdateSession *)selfCopy2 _endSession];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_stagingFailed
{
  v25 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)self hapAccessory];
  if (((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0)) && [hapAccessory supportsCHIP])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v8;
      v23 = 2080;
      v24 = "[HMDAccessoryFirmwareUpdateSession _stagingFailed]";
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@%s: Matter Accessory responsible for managing firmware staging. No action taken.", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Staging failed", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDAccessoryFirmwareUpdateSession *)selfCopy2 _endSession];
    accessoryFirmwareUpdateManager = [(HMDAccessoryFirmwareUpdateSession *)selfCopy2 accessoryFirmwareUpdateManager];
    assetID = [(HMDAccessoryFirmwareUpdateSession *)selfCopy2 assetID];
    v15 = [accessoryFirmwareUpdateManager isFirmwareUpdateRetryAllowedForAccessory:hapAccessory forAsset:assetID];

    if (v15)
    {
      [accessoryFirmwareUpdateManager checkForUpdateForAccessory:hapAccessory];
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = selfCopy2;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v21 = 138543362;
        v22 = v19;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@No more staging retries for this accessory's firmware update session", &v21, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_automaticUpdateEnabledChanged:(BOOL)changed
{
  if (changed && [(HMDAccessoryFirmwareUpdateSession *)self internalState]== 3)
  {

    [(HMDAccessoryFirmwareUpdateSession *)self _schedule];
  }
}

- (void)_handleAutomaticUpdateEnabledChanged:(id)changed
{
  changedCopy = changed;
  objc_initWeak(&location, self);
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HMDAccessoryFirmwareUpdateSession__handleAutomaticUpdateEnabledChanged___block_invoke;
  block[3] = &unk_278686B48;
  objc_copyWeak(&v9, &location);
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __74__HMDAccessoryFirmwareUpdateSession__handleAutomaticUpdateEnabledChanged___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = 0;
  v3 = [*(a1 + 32) userInfo];
  v4 = [v3 hmf_BOOLForKey:@"kEnabledKey" isPresent:&v10];

  if (v10)
  {
    [WeakRetained _automaticUpdateEnabledChanged:v4];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v12 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Notification missing required key", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (double)_expectedApplyDuration
{
  v15 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)self hapAccessory];
  firmwareUpdateProfile = [hapAccessory firmwareUpdateProfile];
  updateDuration = [firmwareUpdateProfile updateDuration];

  if (!updateDuration)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Expected duration is not set - default to minimum apply duration", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    updateDuration = minimumApplyDurationAllowance();
  }

  v11 = *MEMORY[0x277D85DE8];
  return updateDuration;
}

- (double)_allowedApplyDuration
{
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDAccessoryFirmwareUpdateSession *)self _expectedApplyDuration];
  v5 = v4;
  v6 = minimumApplyDurationAllowance();
  if (v5 < v6)
  {
    v5 = v6;
  }

  [(HMDAccessoryFirmwareUpdateSession *)self _expectedApplyDuration];
  return v7 + v5;
}

- (double)expectedApplyDuration
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__HMDAccessoryFirmwareUpdateSession_expectedApplyDuration__block_invoke;
  v6[3] = &unk_27868A688;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(workQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __58__HMDAccessoryFirmwareUpdateSession_expectedApplyDuration__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _expectedApplyDuration];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (double)allowedApplyDuration
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__HMDAccessoryFirmwareUpdateSession_allowedApplyDuration__block_invoke;
  v6[3] = &unk_27868A688;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(workQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __57__HMDAccessoryFirmwareUpdateSession_allowedApplyDuration__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _allowedApplyDuration];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (void)startApplyDurationTimers
{
  v27 = *MEMORY[0x277D85DE8];
  [(HMDAccessoryFirmwareUpdateSession *)self _allowedApplyDuration];
  v4 = v3;
  allowedApplyDurationTimer = [(HMDAccessoryFirmwareUpdateSession *)self allowedApplyDurationTimer];

  if (!allowedApplyDurationTimer)
  {
    v6 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:v4];
    [(HMDAccessoryFirmwareUpdateSession *)self setAllowedApplyDurationTimer:v6];

    allowedApplyDurationTimer2 = [(HMDAccessoryFirmwareUpdateSession *)self allowedApplyDurationTimer];
    [allowedApplyDurationTimer2 setDelegate:self];

    workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
    allowedApplyDurationTimer3 = [(HMDAccessoryFirmwareUpdateSession *)self allowedApplyDurationTimer];
    [allowedApplyDurationTimer3 setDelegateQueue:workQueue];

    v10 = objc_alloc(MEMORY[0x277D0F920]);
    [(HMDAccessoryFirmwareUpdateSession *)self _expectedApplyDuration];
    v11 = [v10 initWithTimeInterval:1 options:?];
    [(HMDAccessoryFirmwareUpdateSession *)self setExpectedApplyDurationTimer:v11];

    expectedApplyDurationTimer = [(HMDAccessoryFirmwareUpdateSession *)self expectedApplyDurationTimer];
    [expectedApplyDurationTimer setDelegate:self];

    workQueue2 = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
    expectedApplyDurationTimer2 = [(HMDAccessoryFirmwareUpdateSession *)self expectedApplyDurationTimer];
    [expectedApplyDurationTimer2 setDelegateQueue:workQueue2];
  }

  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = HMFGetLogIdentifier();
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
    v23 = 138543618;
    v24 = v18;
    v25 = 2112;
    v26 = v19;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Waiting up to %@ seconds for accessory to apply update", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  allowedApplyDurationTimer4 = [(HMDAccessoryFirmwareUpdateSession *)selfCopy allowedApplyDurationTimer];
  [allowedApplyDurationTimer4 resume];

  expectedApplyDurationTimer3 = [(HMDAccessoryFirmwareUpdateSession *)selfCopy expectedApplyDurationTimer];
  [expectedApplyDurationTimer3 resume];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_applyFirmware
{
  v35 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)self hapAccessory];
  if (((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0)) && [hapAccessory supportsCHIP])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v8;
      v33 = 2080;
      v34 = "[HMDAccessoryFirmwareUpdateSession _applyFirmware]";
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@%s: Matter Accessory responsible for managing firmware application. No action taken.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    accessoryFirmwareUpdateManager = [(HMDAccessoryFirmwareUpdateSession *)self accessoryFirmwareUpdateManager];
    v10 = [accessoryFirmwareUpdateManager UARPControllerForAccessory:hapAccessory];

    [(HMDAccessoryFirmwareUpdateSession *)self setInternalState:4];
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@telling uarpController to apply asset", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    uarpAccessory = [(HMDAccessoryFirmwareUpdateSession *)selfCopy2 uarpAccessory];
    v30 = uarpAccessory;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    v17 = [v10 applyFirmwareUpdateOnAccessoryList:v16 withUserIntent:{-[HMDAccessoryFirmwareUpdateSession isUserInitiatedInstall](selfCopy2, "isUserInitiatedInstall")}];

    if (v17)
    {
      softwareUpdate = [hapAccessory softwareUpdate];
      [softwareUpdate updateLocalState:3];

      firmwareUpdateProfile = [hapAccessory firmwareUpdateProfile];
      if (firmwareUpdateProfile)
      {
        [(HMDAccessoryFirmwareUpdateSession *)selfCopy2 startApplyDurationTimers];
      }

      else
      {
        v25 = objc_autoreleasePoolPush();
        v26 = selfCopy2;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = HMFGetLogIdentifier();
          *buf = 138543618;
          v32 = v28;
          v33 = 2112;
          v34 = hapAccessory;
          _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@No firmwareUpdateProfile for accessory: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v25);
        [(HMDAccessoryFirmwareUpdateSession *)v26 _endSession];
      }
    }

    else
    {
      [(HMDAccessoryFirmwareUpdateSession *)selfCopy2 setUserInitiatedInstall:0];
      v20 = objc_autoreleasePoolPush();
      v21 = selfCopy2;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        uarpAccessory2 = [(HMDAccessoryFirmwareUpdateSession *)v21 uarpAccessory];
        *buf = 138543618;
        v32 = v23;
        v33 = 2112;
        v34 = uarpAccessory2;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@applyFirmwareUpdateOnAccessoryList failed for %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)applyFirmware
{
  v34 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)self hapAccessory];
  if (((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0)) && [hapAccessory supportsCHIP])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v8;
      v30 = 2080;
      v31 = "[HMDAccessoryFirmwareUpdateSession applyFirmware]";
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@%s: Matter Accessory responsible for managing firmware application. No action taken.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    home = [hapAccessory home];
    if (home)
    {
      if (([hapAccessory isAutomaticThirdPartyAccessorySoftwareUpdateEnabled] & 1) != 0 || -[HMDAccessoryFirmwareUpdateSession isUserInitiatedInstall](self, "isUserInitiatedInstall"))
      {
        firmwareUpdateProfile = [hapAccessory firmwareUpdateProfile];
        stagedFirmwareVersion = [firmwareUpdateProfile stagedFirmwareVersion];

        availableSoftwareVersion = [(HMDAccessoryFirmwareUpdateSession *)self availableSoftwareVersion];
        v13 = [stagedFirmwareVersion isGreaterThanVersion:availableSoftwareVersion];

        if (v13)
        {
          v14 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = HMFGetLogIdentifier();
            availableSoftwareVersion2 = [(HMDAccessoryFirmwareUpdateSession *)selfCopy2 availableSoftwareVersion];
            shortVersionString = [availableSoftwareVersion2 shortVersionString];
            *buf = 138543874;
            v29 = v17;
            v30 = 2112;
            v31 = stagedFirmwareVersion;
            v32 = 2112;
            v33 = shortVersionString;
            _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Staged version %@ is different then available version %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v14);
          [(HMDAccessoryFirmwareUpdateSession *)selfCopy2 setUserInitiatedInstall:0];
        }

        else
        {
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __50__HMDAccessoryFirmwareUpdateSession_applyFirmware__block_invoke;
          v27[3] = &unk_278682310;
          v27[4] = self;
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __50__HMDAccessoryFirmwareUpdateSession_applyFirmware__block_invoke_2;
          v26[3] = &unk_27868A250;
          v26[4] = self;
          [(HMDAccessoryFirmwareUpdateSession *)self _withOpenSocketDoBlock:v27 error:v26];
        }
      }

      else
      {
        v20 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          [hapAccessory isAutomaticThirdPartyAccessorySoftwareUpdateEnabled];
          v24 = HMFEnabledStatusToString();
          *buf = 138543618;
          v29 = v23;
          v30 = 2112;
          v31 = v24;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Not auto applying firmware update because isAutomaticThirdPartyAccessorySoftwareUpdateEnabled = %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v20);
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __50__HMDAccessoryFirmwareUpdateSession_applyFirmware__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) logEventManager];
  v2 = [*(a1 + 32) hapAccessory];
  [v3 startApplyWithAccessory:v2];

  [*(a1 + 32) _applyFirmware];
}

- (void)stagingComplete
{
  v19 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)self hapAccessory];
  if (((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0)) && [hapAccessory supportsCHIP])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v8;
      v17 = 2080;
      v18 = "[HMDAccessoryFirmwareUpdateSession stagingComplete]";
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@%s: Matter Accessory responsible for managing firmware staging. No action taken.", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    [(HMDAccessoryFirmwareUpdateSession *)self setInternalState:[(HMDAccessoryFirmwareUpdateSession *)self nextStateToSchedule]];
    [(HMDAccessoryFirmwareUpdateSession *)self _logDebugStates:"[HMDAccessoryFirmwareUpdateSession stagingComplete]"];
    if (([hapAccessory isAutomaticThirdPartyAccessorySoftwareUpdateEnabled] & 1) != 0 || -[HMDAccessoryFirmwareUpdateSession isUserInitiatedInstall](self, "isUserInitiatedInstall"))
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v15 = 138543362;
        v16 = v12;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Staging complete", &v15, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      [(HMDAccessoryFirmwareUpdateSession *)selfCopy2 _schedule];
    }

    else
    {
      home = [hapAccessory home];
      [home reevaluateAccessoryInfo];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)stageFirmware
{
  v17 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)self hapAccessory];
  if (((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0)) && [hapAccessory supportsCHIP])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v14 = v8;
      v15 = 2080;
      v16 = "[HMDAccessoryFirmwareUpdateSession stageFirmware]";
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@%s: firmware has been downloaded for Matter Accessory. Matter Accessory responsible for staging firmware. No action taken.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __50__HMDAccessoryFirmwareUpdateSession_stageFirmware__block_invoke;
    v11[3] = &unk_27867F418;
    v11[4] = self;
    v12 = hapAccessory;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __50__HMDAccessoryFirmwareUpdateSession_stageFirmware__block_invoke_105;
    v10[3] = &unk_27868A250;
    v10[4] = self;
    [(HMDAccessoryFirmwareUpdateSession *)self _withOpenSocketDoBlock:v11 error:v10];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __50__HMDAccessoryFirmwareUpdateSession_stageFirmware__block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accessoryFirmwareUpdateManager];
  v3 = [v2 UARPControllerForAccessory:*(a1 + 40)];

  v4 = [*(a1 + 32) uarpAccessory];
  v17[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v6 = [v3 stageFirmwareUpdateOnAccessoryList:v5 withUserIntent:{objc_msgSend(*(a1 + 32), "isUserInitiatedInstall")}];

  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@UARP initiated asset staging", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) setInternalState:2];
    [*(a1 + 32) setAssetOfferedForCurrentDataStream:1];
    v12 = [*(a1 + 32) logEventManager];
    [v12 startStagingWithAccessory:*(a1 + 40)];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to initiate asset staging in UARP controller", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (unint64_t)nextStateToSchedule
{
  v20 = *MEMORY[0x277D85DE8];
  accessoryVersion = [(HMDAccessoryFirmwareUpdateSession *)self accessoryVersion];
  hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)self hapAccessory];
  firmwareUpdateProfile = [hapAccessory firmwareUpdateProfile];
  stagedFirmwareVersion = [firmwareUpdateProfile stagedFirmwareVersion];

  availableSoftwareVersion = [(HMDAccessoryFirmwareUpdateSession *)self availableSoftwareVersion];
  isFirmwareVersionUpToDate = [(HMDAccessoryFirmwareUpdateSession *)self isFirmwareVersionUpToDate];
  if ([(HMDAccessoryFirmwareUpdateSession *)self internalState]== 5)
  {
    if (isFirmwareVersionUpToDate)
    {
      internalState = 5;
    }

    else
    {
      internalState = 1;
    }

    goto LABEL_25;
  }

  if (isFirmwareVersionUpToDate)
  {
LABEL_6:
    internalState = 0;
    goto LABEL_25;
  }

  if (!stagedFirmwareVersion)
  {
    lastStagedVersion = [(HMDAccessoryFirmwareUpdateSession *)self lastStagedVersion];
    v11 = [accessoryVersion isAtLeastVersion:lastStagedVersion];

    if ((![(HMDAccessoryFirmwareUpdateSession *)self isCurrentlyApplying]|| (v11 & 1) == 0) && ([(HMDAccessoryFirmwareUpdateSession *)self isCurrentlyStaging]|| [(HMDAccessoryFirmwareUpdateSession *)self isCurrentlyApplying]))
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  if (![stagedFirmwareVersion isAtLeastVersion:availableSoftwareVersion] || !objc_msgSend(stagedFirmwareVersion, "isGreaterThanVersion:", accessoryVersion))
  {
    if (![availableSoftwareVersion isGreaterThanVersion:stagedFirmwareVersion])
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v15;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unhandled version combination in nextStateToSchedule", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      goto LABEL_6;
    }

    if ([(HMDAccessoryFirmwareUpdateSession *)self isCurrentlyStaging])
    {
LABEL_24:
      internalState = [(HMDAccessoryFirmwareUpdateSession *)self internalState];
      goto LABEL_25;
    }

LABEL_18:
    internalState = 1;
    goto LABEL_25;
  }

  if ([(HMDAccessoryFirmwareUpdateSession *)self internalState]== 4)
  {
    internalState = 4;
  }

  else
  {
    internalState = 3;
  }

LABEL_25:

  v16 = *MEMORY[0x277D85DE8];
  return internalState;
}

- (BOOL)isReadyToApplyUpdate
{
  v33 = *MEMORY[0x277D85DE8];
  hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)self hapAccessory];
  firmwareUpdateProfile = [hapAccessory firmwareUpdateProfile];

  updateState = [firmwareUpdateProfile updateState];
  updateNotReadyReasons = [firmwareUpdateProfile updateNotReadyReasons];
  isFirmwareVersionUpToDate = [(HMDAccessoryFirmwareUpdateSession *)self isFirmwareVersionUpToDate];
  v8 = isFirmwareVersionUpToDate;
  if (!updateNotReadyReasons && updateState == 3 && !isFirmwareVersionUpToDate)
  {
    goto LABEL_8;
  }

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v20 = HMFGetLogIdentifier();
    v19 = HMFBooleanToString();
    [firmwareUpdateProfile updateNotReadyReasons];
    v18 = HAPUpdateNotReadyReasonsAsString();
    v12 = HMFBooleanToString();
    [firmwareUpdateProfile updateState];
    v13 = HAPFirmwareUpdateStateAsString();
    v14 = HMFBooleanToString();
    *buf = 138544642;
    v22 = v20;
    v23 = 2112;
    v24 = v19;
    v25 = 2114;
    v26 = v18;
    v27 = 2112;
    v28 = v12;
    v29 = 2112;
    v30 = v13;
    v31 = 2112;
    v32 = v14;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Not ready for applying update - Not ready reason: %@ (%{public}@), updateState %@ (%@), isFirmwareVersionUpToDate %@", buf, 0x3Eu);
  }

  objc_autoreleasePoolPop(v9);
  if (updateNotReadyReasons)
  {
    v15 = 0;
  }

  else
  {
LABEL_8:
    v15 = updateState == 3 && !v8;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)isCurrentUpdateLatest
{
  v17 = *MEMORY[0x277D85DE8];
  availableSoftwareVersion = [(HMDAccessoryFirmwareUpdateSession *)self availableSoftwareVersion];
  if (availableSoftwareVersion)
  {
    accessoryVersion = [(HMDAccessoryFirmwareUpdateSession *)self accessoryVersion];
    if ([availableSoftwareVersion isAtLeastVersion:accessoryVersion])
    {
      v5 = 1;
    }

    else
    {
      hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)self hapAccessory];
      firmwareUpdateProfile = [hapAccessory firmwareUpdateProfile];
      stagedFirmwareVersion = [firmwareUpdateProfile stagedFirmwareVersion];
      v5 = [availableSoftwareVersion isAtLeastVersion:stagedFirmwareVersion];
    }
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@No available version from UARP", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isReadyForStaging
{
  v33 = *MEMORY[0x277D85DE8];
  hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)self hapAccessory];
  firmwareUpdateProfile = [hapAccessory firmwareUpdateProfile];

  v5 = ![firmwareUpdateProfile updateState] || objc_msgSend(firmwareUpdateProfile, "updateState") == 2 || objc_msgSend(firmwareUpdateProfile, "updateState") == 1 || objc_msgSend(firmwareUpdateProfile, "updateState") == 3;
  stagingNotReadyReasons = [firmwareUpdateProfile stagingNotReadyReasons];
  isStagedFirmwareVersionUpToDate = [(HMDAccessoryFirmwareUpdateSession *)self isStagedFirmwareVersionUpToDate];
  v8 = isStagedFirmwareVersionUpToDate;
  if (!stagingNotReadyReasons && v5 && !isStagedFirmwareVersionUpToDate)
  {
    goto LABEL_12;
  }

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v20 = HMFGetLogIdentifier();
    v19 = HMFBooleanToString();
    [firmwareUpdateProfile stagingNotReadyReasons];
    v18 = HAPStagingNotReadyReasonsAsString();
    v12 = HMFBooleanToString();
    [firmwareUpdateProfile updateState];
    v13 = HAPFirmwareUpdateStateAsString();
    v14 = HMFBooleanToString();
    *buf = 138544642;
    v22 = v20;
    v23 = 2112;
    v24 = v19;
    v25 = 2114;
    v26 = v18;
    v27 = 2112;
    v28 = v12;
    v29 = 2114;
    v30 = v13;
    v31 = 2112;
    v32 = v14;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Not ready for staging - Not ready reasons: %@ (%{public}@), updateState %@ (%{public}@), isStagedFirmwareVersionUpToDate %@", buf, 0x3Eu);
  }

  objc_autoreleasePoolPop(v9);
  if (stagingNotReadyReasons)
  {
    v15 = 0;
  }

  else
  {
LABEL_12:
    v15 = v5 && !v8;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)isFirmwareVersionUpToDate
{
  accessoryVersion = [(HMDAccessoryFirmwareUpdateSession *)self accessoryVersion];
  availableSoftwareVersion = [(HMDAccessoryFirmwareUpdateSession *)self availableSoftwareVersion];
  v5 = [accessoryVersion isAtLeastVersion:availableSoftwareVersion];

  return v5;
}

- (BOOL)isStagedFirmwareVersionUpToDate
{
  hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)self hapAccessory];
  firmwareUpdateProfile = [hapAccessory firmwareUpdateProfile];
  stagedFirmwareVersion = [firmwareUpdateProfile stagedFirmwareVersion];

  availableSoftwareVersion = [(HMDAccessoryFirmwareUpdateSession *)self availableSoftwareVersion];
  LOBYTE(hapAccessory) = [stagedFirmwareVersion isAtLeastVersion:availableSoftwareVersion];

  return hapAccessory;
}

- (void)_evaluateHDSRetryForApplyFirmware
{
  v34 = *MEMORY[0x277D85DE8];
  hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)self hapAccessory];
  if (((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0)) && [hapAccessory supportsCHIP])
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v7;
      v30 = 2080;
      v31 = "[HMDAccessoryFirmwareUpdateSession _evaluateHDSRetryForApplyFirmware]";
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@%s: called to control Matter Accessory. No sockets used with Matter Accessories. No action taken.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    goto LABEL_24;
  }

  allowedApplyDurationTimer = [(HMDAccessoryFirmwareUpdateSession *)self allowedApplyDurationTimer];
  if (allowedApplyDurationTimer)
  {

    goto LABEL_10;
  }

  if ([hapAccessory isReachable])
  {
LABEL_10:
    if ([(HMDAccessoryFirmwareUpdateSession *)self applyHDSRetryCount]< 0xA)
    {
      [(HMDAccessoryFirmwareUpdateSession *)self setApplyHDSRetryCount:[(HMDAccessoryFirmwareUpdateSession *)self applyHDSRetryCount]+ 1];
      v13 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessoryFirmwareUpdateSession applyHDSRetryCount](selfCopy2, "applyHDSRetryCount")}];
        *buf = 138543874;
        v29 = v16;
        v30 = 2112;
        v31 = &unk_283E73A18;
        v32 = 2112;
        v33 = v17;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Rescheduling apply task after HDS failure in %@ sec for retry: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      v18 = dispatch_time(0, 10000000000);
      workQueue = [(HMDAccessoryFirmwareUpdateSession *)selfCopy2 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __70__HMDAccessoryFirmwareUpdateSession__evaluateHDSRetryForApplyFirmware__block_invoke;
      block[3] = &unk_27868A728;
      block[4] = selfCopy2;
      dispatch_after(v18, workQueue, block);
    }

    else
    {
      if ([(HMDAccessoryFirmwareUpdateSession *)self internalState]== 3)
      {
        v9 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = HMFGetLogIdentifier();
          *buf = 138543362;
          v29 = v12;
          _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Out of HDS retries for apply. Moving update back to downloaded.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v9);
        [(HMDAccessoryFirmwareUpdateSession *)selfCopy3 _logDebugStates:"[HMDAccessoryFirmwareUpdateSession _evaluateHDSRetryForApplyFirmware]"];
        [(HMDAccessoryFirmwareUpdateSession *)selfCopy3 updateAvailableSoftwareUpdateState:2];
      }

      if ([(HMDAccessoryFirmwareUpdateSession *)self isUserInitiatedInstall])
      {
        [(HMDAccessoryFirmwareUpdateSession *)self setApplyHDSRetryCount:0];
        [(HMDAccessoryFirmwareUpdateSession *)self setUserInitiatedInstall:0];
      }

      else
      {
        [(HMDAccessoryFirmwareUpdateSession *)self _endSession];
      }
    }

    goto LABEL_24;
  }

  v20 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    hapAccessory2 = [(HMDAccessoryFirmwareUpdateSession *)selfCopy4 hapAccessory];
    name = [hapAccessory2 name];
    *buf = 138543618;
    v29 = v23;
    v30 = 2112;
    v31 = name;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Not performing HDS retries because firmware apply has not started and accessory %@ is unreachable", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
  [(HMDAccessoryFirmwareUpdateSession *)selfCopy4 updateAvailableSoftwareUpdateState:2];
  [(HMDAccessoryFirmwareUpdateSession *)selfCopy4 setInternalState:3];
LABEL_24:

  v26 = *MEMORY[0x277D85DE8];
}

void __70__HMDAccessoryFirmwareUpdateSession__evaluateHDSRetryForApplyFirmware__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) sessionEnded])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Session has been ended, stop performing retries", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *MEMORY[0x277D85DE8];

    [v7 _schedule];
  }
}

- (void)_syncStateWithAccessoryOnResume
{
  v16 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDAccessoryFirmwareUpdateSession *)self setInternalState:[(HMDAccessoryFirmwareUpdateSession *)self nextStateToSchedule]];
  [(HMDAccessoryFirmwareUpdateSession *)self _logDebugStates:"[HMDAccessoryFirmwareUpdateSession _syncStateWithAccessoryOnResume]"];
  if ([(HMDAccessoryFirmwareUpdateSession *)self internalState])
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      internalState = [(HMDAccessoryFirmwareUpdateSession *)selfCopy internalState];
      if ((internalState - 1) > 4)
      {
        v9 = @"Up To Date";
      }

      else
      {
        v9 = off_27867DF80[internalState - 1];
      }

      v12 = 138543618;
      v13 = v7;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Synced state is: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v11 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v10 = *MEMORY[0x277D85DE8];

    [(HMDAccessoryFirmwareUpdateSession *)self _endSession];
  }
}

- (void)_withOpenSocketDoBlock:(id)block error:(id)error
{
  v35 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  errorCopy = error;
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)self hapAccessory];
  if ((_os_feature_enabled_impl() & 1) == 0 && !CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0) || ![hapAccessory supportsCHIP])
  {
    if ([(HMDAccessoryFirmwareUpdateSession *)self dataStreamOpenInProgress])
    {
      dataStreamSocketController = [MEMORY[0x277CCA9B8] hmErrorWithCode:15 description:0 reason:@"Socket open already in progress" suggestion:0];
      errorCopy[2](errorCopy, dataStreamSocketController);
    }

    else
    {
      dataStreamSocket = [(HMDAccessoryFirmwareUpdateSession *)self dataStreamSocket];
      if (dataStreamSocket)
      {
        v16 = dataStreamSocket;
        dataStreamSocket2 = [(HMDAccessoryFirmwareUpdateSession *)self dataStreamSocket];
        isClosed = [dataStreamSocket2 isClosed];

        if (!isClosed)
        {
          blockCopy[2](blockCopy, 0);
          goto LABEL_20;
        }
      }

      dataStreamSocketController = [hapAccessory dataStreamSocketController];
      v19 = objc_autoreleasePoolPush();
      selfCopy = self;
      v21 = HMFGetOSLogHandle();
      v22 = v21;
      if (dataStreamSocketController)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 138543362;
          v32 = v23;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Opening HDS connection to accessory", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v19);
        [(HMDAccessoryFirmwareUpdateSession *)selfCopy setDataStreamOpenInProgress:1];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __66__HMDAccessoryFirmwareUpdateSession__withOpenSocketDoBlock_error___block_invoke;
        v27[3] = &unk_27867DEA8;
        v27[4] = selfCopy;
        v29 = errorCopy;
        v28 = hapAccessory;
        v30 = blockCopy;
        [dataStreamSocketController openStreamSocketWithApplicationProtocol:@"UARP" completion:v27];
      }

      else
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138543362;
          v32 = v24;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@No dataStreamSocketController", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v19);
        v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54 description:0 reason:@"No dataStreamSocketController" suggestion:0];
        errorCopy[2](errorCopy, v25);
      }
    }

    goto LABEL_20;
  }

  v10 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v32 = v13;
    v33 = 2080;
    v34 = "[HMDAccessoryFirmwareUpdateSession _withOpenSocketDoBlock:error:]";
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@%s: called to control Matter Accessory. No sockets used with Matter Accessories. No action taken.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
LABEL_20:

  v26 = *MEMORY[0x277D85DE8];
}

void __66__HMDAccessoryFirmwareUpdateSession__withOpenSocketDoBlock_error___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_initWeak(&location, a1[4]);
  v7 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HMDAccessoryFirmwareUpdateSession__withOpenSocketDoBlock_error___block_invoke_2;
  block[3] = &unk_27867DE80;
  objc_copyWeak(&v16, &location);
  v11 = v5;
  v12 = v6;
  v14 = a1[6];
  v13 = a1[5];
  v15 = a1[7];
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __66__HMDAccessoryFirmwareUpdateSession__withOpenSocketDoBlock_error___block_invoke_2(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setDataStreamOpenInProgress:0];
    [v3 setDataStreamSocket:*(a1 + 32)];
    v4 = *(a1 + 32);
    if (v4)
    {
      [v4 setDelegate:v3];
      [v3 setAssetOfferedForCurrentDataStream:0];
      [v3 setApplyHDSRetryCount:0];
      v5 = objc_autoreleasePoolPush();
      v6 = v3;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        v30 = 138543362;
        v31 = v8;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Opened HDS connection to accessory", &v30, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
      [v6 _startSocketIdleTimer];
      v9 = *(a1 + 48);
      v10 = HAPStringFromAccessoryServerSession();
      [v9 registerForSessionRestore:v10];

      v11 = [v6 accessoryFirmwareUpdateManager];
      v12 = [v11 UARPControllerForAccessory:*(a1 + 48)];

      v13 = [v6 uarpAccessory];
      v14 = [v12 accessoryReachable:v13];

      v15 = objc_autoreleasePoolPush();
      v16 = v6;
      v17 = HMFGetOSLogHandle();
      v18 = v17;
      if (v14)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          v30 = 138543362;
          v31 = v19;
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Notified UARP accessory is reachable", &v30, 0xCu);
        }

        objc_autoreleasePoolPop(v15);
        (*(*(a1 + 64) + 16))();
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v26 = HMFGetLogIdentifier();
          v30 = 138543362;
          v31 = v26;
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify about reachable accessory to UARP", &v30, 0xCu);
        }

        objc_autoreleasePoolPop(v15);
        v27 = *(a1 + 56);
        v28 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23 description:0 reason:@"UARP accessoryReachable failed" suggestion:0];
        (*(v27 + 16))(v27, v28);
      }
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = v3;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v24 = *(a1 + 40);
        v30 = 138543618;
        v31 = v23;
        v32 = 2112;
        v33 = v24;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Couldn't open HDS connection to accessory error %@", &v30, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v25 = *(a1 + 40);
      (*(*(a1 + 56) + 16))();
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_handleRegisterFailureRetryTimeout
{
  v11 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Register failure retry timeout", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDAccessoryFirmwareUpdateSession *)selfCopy _cancelRegisterFailureRetryTimer];
  [(HMDAccessoryFirmwareUpdateSession *)selfCopy setCurrentRegisterFailureCount:0];
  [(HMDAccessoryFirmwareUpdateSession *)selfCopy _schedule];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_cancelRegisterFailureRetryTimer
{
  v12 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Cancel register failure retry timer", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  registerFailureRetryTimer = [(HMDAccessoryFirmwareUpdateSession *)selfCopy registerFailureRetryTimer];
  [registerFailureRetryTimer cancel];

  [(HMDAccessoryFirmwareUpdateSession *)selfCopy setRegisterFailureRetryTimer:0];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleQueryFirmwareUpdateResultTimeout
{
  v11 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Query firmware update result duration timeout", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDAccessoryFirmwareUpdateSession *)selfCopy _cancelQueryFirmwareUpdateResultTimer];
  [(HMDAccessoryFirmwareUpdateSession *)selfCopy _schedule];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_cancelQueryFirmwareUpdateResultTimer
{
  v12 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Cancel query firmware update result duration timer", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  queryFirmwareUpdateResultDurationTimer = [(HMDAccessoryFirmwareUpdateSession *)selfCopy queryFirmwareUpdateResultDurationTimer];
  [queryFirmwareUpdateResultDurationTimer cancel];

  [(HMDAccessoryFirmwareUpdateSession *)selfCopy setQueryFirmwareUpdateResultDurationTimer:0];
  [(HMDAccessoryFirmwareUpdateSession *)selfCopy setIsVerifyingUpdate:0];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleSocketTimeout
{
  v19 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Socket idle timeout", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
  {
    hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)selfCopy hapAccessory];
    if ([hapAccessory supportsCHIP])
    {
      v9 = objc_autoreleasePoolPush();
      v10 = selfCopy;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v15 = 138543618;
        v16 = v12;
        v17 = 2080;
        v18 = "[HMDAccessoryFirmwareUpdateSession _handleSocketTimeout]";
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@%s: called to control Matter Accessory. No sockets used with Matter Accessories. No action taken.", &v15, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      goto LABEL_15;
    }
  }

  [(HMDAccessoryFirmwareUpdateSession *)selfCopy _cancelSocketIdleTimer];
  dataStreamSocket = [(HMDAccessoryFirmwareUpdateSession *)selfCopy dataStreamSocket];
  [dataStreamSocket close];

  if ([(HMDAccessoryFirmwareUpdateSession *)selfCopy internalState]== 2)
  {
    [(HMDAccessoryFirmwareUpdateSession *)selfCopy setInternalState:1];
  }

  else if ([(HMDAccessoryFirmwareUpdateSession *)selfCopy internalState]== 5 && [(HMDAccessoryFirmwareUpdateSession *)selfCopy isFirmwareVersionUpToDate])
  {
    [(HMDAccessoryFirmwareUpdateSession *)selfCopy setInternalState:0];
    [(HMDAccessoryFirmwareUpdateSession *)selfCopy _endSession];
  }

LABEL_15:
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_cancelSocketIdleTimer
{
  v20 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Cancel socket idle timer", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  if (((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0)) && (-[HMDAccessoryFirmwareUpdateSession hapAccessory](selfCopy, "hapAccessory"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 supportsCHIP], v8, v9))
  {
    v10 = objc_autoreleasePoolPush();
    v11 = selfCopy;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v13;
      v18 = 2080;
      v19 = "[HMDAccessoryFirmwareUpdateSession _cancelSocketIdleTimer]";
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@%s: called to control Matter Accessory. No sockets used with Matter Accessories. No action taken.", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    socketIdleTimer = [(HMDAccessoryFirmwareUpdateSession *)selfCopy socketIdleTimer];
    [socketIdleTimer cancel];

    [(HMDAccessoryFirmwareUpdateSession *)selfCopy setSocketIdleTimer:0];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_resetSocketIdleTimer
{
  v20 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Reset socket idle timer", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  if (((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0)) && (-[HMDAccessoryFirmwareUpdateSession hapAccessory](selfCopy, "hapAccessory"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 supportsCHIP], v8, v9))
  {
    v10 = objc_autoreleasePoolPush();
    v11 = selfCopy;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v13;
      v18 = 2080;
      v19 = "[HMDAccessoryFirmwareUpdateSession _resetSocketIdleTimer]";
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@%s: called to control Matter Accessory. No sockets used with Matter Accessories. No action taken.", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    socketIdleTimer = [(HMDAccessoryFirmwareUpdateSession *)selfCopy socketIdleTimer];
    [socketIdleTimer resume];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_startSocketIdleTimer
{
  v30 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0)) && (-[HMDAccessoryFirmwareUpdateSession hapAccessory](self, "hapAccessory"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 supportsCHIP], v4, v5))
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v9;
      v28 = 2080;
      v29 = "[HMDAccessoryFirmwareUpdateSession _startSocketIdleTimer]";
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@%s: called to control Matter Accessory. No sockets used with Matter Accessories. No action taken.", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    if (maxSocketIdleDuration_onceToken != -1)
    {
      dispatch_once(&maxSocketIdleDuration_onceToken, &__block_literal_global_592);
    }

    mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
    if (isInternalBuild())
    {
      v11 = [mEMORY[0x277D0F8D0] preferenceForKey:@"firmwareUpdateMaxSocketIdleDuration"];
      numberValue = [v11 numberValue];
      unsignedIntValue = [numberValue unsignedIntValue];

      v14 = unsignedIntValue;
    }

    else
    {
      v14 = 60.0;
    }

    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
      v26 = 138543618;
      v27 = v18;
      v28 = 2112;
      v29 = v19;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Start socket idle timer for %@ seconds", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v20 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:v14];
    [(HMDAccessoryFirmwareUpdateSession *)selfCopy2 setSocketIdleTimer:v20];

    socketIdleTimer = [(HMDAccessoryFirmwareUpdateSession *)selfCopy2 socketIdleTimer];
    [socketIdleTimer setDelegate:selfCopy2];

    workQueue2 = [(HMDAccessoryFirmwareUpdateSession *)selfCopy2 workQueue];
    socketIdleTimer2 = [(HMDAccessoryFirmwareUpdateSession *)selfCopy2 socketIdleTimer];
    [socketIdleTimer2 setDelegateQueue:workQueue2];

    socketIdleTimer3 = [(HMDAccessoryFirmwareUpdateSession *)selfCopy2 socketIdleTimer];
    [socketIdleTimer3 resume];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)resumeWithState:(unint64_t)state
{
  v43 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [(HMDAccessoryFirmwareUpdateSession *)selfCopy internalState]- 1;
    if (v10 > 4)
    {
      v11 = @"Up To Date";
    }

    else
    {
      v11 = off_27867DF80[v10];
    }

    hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)selfCopy hapAccessory];
    firmwareUpdateProfile = [hapAccessory firmwareUpdateProfile];
    [firmwareUpdateProfile updateState];
    v14 = HAPFirmwareUpdateStateAsString();
    v15 = v14;
    if (state - 1 > 2)
    {
      v16 = @"Up-To-Date";
    }

    else
    {
      v16 = off_27867DF68[state - 1];
    }

    *buf = 138544130;
    v36 = v9;
    v37 = 2112;
    v38 = v11;
    v39 = 2112;
    v40 = v14;
    v41 = 2112;
    v42 = v16;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Resume called with sessionState: %@ accessoryState %@ resumeState %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v6);
  if ((_os_feature_enabled_impl() & 1) == 0 && !CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0) || (-[HMDAccessoryFirmwareUpdateSession hapAccessory](selfCopy, "hapAccessory"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 supportsCHIP], v17, !v18))
  {
    [(HMDAccessoryFirmwareUpdateSession *)selfCopy _logDebugStates:"[HMDAccessoryFirmwareUpdateSession resumeWithState:]"];
    dataStreamSocket = [(HMDAccessoryFirmwareUpdateSession *)selfCopy dataStreamSocket];
    isClosing = [dataStreamSocket isClosing];

    if (isClosing)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = selfCopy;
      v23 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
LABEL_17:

        objc_autoreleasePoolPop(v21);
        goto LABEL_24;
      }

      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v24;
      v25 = "%{public}@Resume ignored with socket in closing state";
    }

    else
    {
      if (state != 1)
      {
        goto LABEL_23;
      }

      lastStagedVersion = [(HMDAccessoryFirmwareUpdateSession *)selfCopy lastStagedVersion];
      assetID = [(HMDAccessoryFirmwareUpdateSession *)selfCopy assetID];
      softwareVersion = [assetID softwareVersion];
      v29 = [lastStagedVersion isEqualToVersion:softwareVersion];

      if (v29)
      {
        [(HMDAccessoryFirmwareUpdateSession *)selfCopy setLastStagedVersion:0];
        v21 = objc_autoreleasePoolPush();
        v22 = selfCopy;
        v23 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          goto LABEL_17;
        }

        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        v36 = v24;
        v25 = "%{public}@Re-stage required. Waiting for asset update availability previously requested on the staged version change notification";
        goto LABEL_16;
      }

      assetID2 = [(HMDAccessoryFirmwareUpdateSession *)selfCopy assetID];
      downloadStatus = [assetID2 downloadStatus];

      if (downloadStatus == 1)
      {
LABEL_23:
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __53__HMDAccessoryFirmwareUpdateSession_resumeWithState___block_invoke;
        v34[3] = &unk_27867DE58;
        v34[4] = selfCopy;
        v34[5] = state;
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __53__HMDAccessoryFirmwareUpdateSession_resumeWithState___block_invoke_88;
        v33[3] = &unk_27868A250;
        v33[4] = selfCopy;
        [(HMDAccessoryFirmwareUpdateSession *)selfCopy _withOpenSocketDoBlock:v34 error:v33];
        goto LABEL_24;
      }

      v21 = objc_autoreleasePoolPush();
      v22 = selfCopy;
      v23 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        goto LABEL_17;
      }

      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v24;
      v25 = "%{public}@Asset not ready to stage";
    }

LABEL_16:
    _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, v25, buf, 0xCu);

    goto LABEL_17;
  }

  [(HMDAccessoryFirmwareUpdateSession *)selfCopy _updateSoftwareUpdateStateForMatterAccessoryWithState:state];
LABEL_24:
  v32 = *MEMORY[0x277D85DE8];
}

void __53__HMDAccessoryFirmwareUpdateSession_resumeWithState___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setCurrentCommunicationErrorCount:0];
  [*(a1 + 32) _syncStateWithAccessoryOnResume];
  if (([*(a1 + 32) internalState] != 1 && objc_msgSend(*(a1 + 32), "internalState") != 2 || *(a1 + 40) == 1) && (objc_msgSend(*(a1 + 32), "internalState") != 3 || *(a1 + 40) == 2))
  {
    v2 = [*(a1 + 32) updateScheduler];
    v3 = [v2 currentTask];
    v4 = [v3 shouldRun];

    if (v4)
    {
      v5 = [*(a1 + 32) internalState];
      if (v5 > 2)
      {
        if (v5 == 3)
        {
          v21 = objc_autoreleasePoolPush();
          v22 = *(a1 + 32);
          v23 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            v24 = HMFGetLogIdentifier();
            v31 = 138543362;
            v32 = v24;
            _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Next action: applyFirmware", &v31, 0xCu);
          }

          objc_autoreleasePoolPop(v21);
          [*(a1 + 32) applyFirmware];
          goto LABEL_40;
        }

        if (v5 != 4)
        {
          if (v5 == 5)
          {
            v13 = objc_autoreleasePoolPush();
            v14 = *(a1 + 32);
            v15 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              v16 = HMFGetLogIdentifier();
              v31 = 138543362;
              v32 = v16;
              _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Next action: register", &v31, 0xCu);
            }

            objc_autoreleasePoolPop(v13);
            [*(a1 + 32) _register];
          }

          goto LABEL_40;
        }

        v17 = objc_autoreleasePoolPush();
        v25 = *(a1 + 32);
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = HMFGetLogIdentifier();
          v28 = [*(a1 + 32) internalState];
          if ((v28 - 1) > 4)
          {
            v29 = @"Up To Date";
          }

          else
          {
            v29 = off_27867DF80[v28 - 1];
          }

          v31 = 138543618;
          v32 = v27;
          v33 = 2112;
          v34 = v29;
          _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Ignoring resume in state %@", &v31, 0x16u);
        }
      }

      else
      {
        if (v5)
        {
          if (v5 == 1)
          {
            v6 = objc_autoreleasePoolPush();
            v7 = *(a1 + 32);
            v8 = HMFGetOSLogHandle();
            if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
            {
LABEL_32:

              objc_autoreleasePoolPop(v6);
              [*(a1 + 32) stageFirmware];
LABEL_40:
              v30 = *MEMORY[0x277D85DE8];
              return;
            }

            v9 = HMFGetLogIdentifier();
            v31 = 138543362;
            v32 = v9;
            v10 = "%{public}@Next action: stageFirmware";
          }

          else
          {
            if (v5 != 2 || ([*(a1 + 32) assetOfferedForCurrentDataStream] & 1) != 0)
            {
              goto LABEL_40;
            }

            v6 = objc_autoreleasePoolPush();
            v7 = *(a1 + 32);
            v8 = HMFGetOSLogHandle();
            if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_32;
            }

            v9 = HMFGetLogIdentifier();
            v31 = 138543362;
            v32 = v9;
            v10 = "%{public}@Next action: stageFirmware (recover)";
          }

          _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, v10, &v31, 0xCu);

          goto LABEL_32;
        }

        v17 = objc_autoreleasePoolPush();
        v18 = *(a1 + 32);
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v20 = HMFGetLogIdentifier();
          v31 = 138543362;
          v32 = v20;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Next action: -", &v31, 0xCu);
        }
      }

      objc_autoreleasePoolPop(v17);
      goto LABEL_40;
    }
  }

  v11 = *(a1 + 32);
  v12 = *MEMORY[0x277D85DE8];

  [v11 _schedule];
}

void __53__HMDAccessoryFirmwareUpdateSession_resumeWithState___block_invoke_88(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) internalState] == 3)
  {
    [*(a1 + 32) _evaluateHDSRetryForApplyFirmware];
    goto LABEL_13;
  }

  if (!v3 || ([*(a1 + 32) hapAccessory], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isReachable"), v4, !v5))
  {
    v15 = 0;
LABEL_12:
    objc_initWeak(buf, *(a1 + 32));
    v16 = dispatch_time(0, v15);
    v17 = [*(a1 + 32) workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__HMDAccessoryFirmwareUpdateSession_resumeWithState___block_invoke_90;
    block[3] = &unk_278686B80;
    objc_copyWeak(&v20, buf);
    dispatch_after(v16, v17, block);

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
    goto LABEL_13;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "currentCommunicationErrorCount")}];
    *buf = 138543874;
    v22 = v9;
    v23 = 2112;
    v24 = v10;
    v25 = 2112;
    v26 = v3;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@HAP Communication Error occurrence: %@ error: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  if ([*(a1 + 32) currentCommunicationErrorCount] < 0xA)
  {
    [*(a1 + 32) setCurrentCommunicationErrorCount:{objc_msgSend(*(a1 + 32), "currentCommunicationErrorCount") + 1}];
    v15 = 10000000000;
    goto LABEL_12;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = *(a1 + 32);
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v22 = v14;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Out of retries for socket open", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  [*(a1 + 32) _endSession];
LABEL_13:

  v18 = *MEMORY[0x277D85DE8];
}

void __53__HMDAccessoryFirmwareUpdateSession_resumeWithState___block_invoke_90(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_autoreleasePoolPush();
  v3 = WeakRetained;
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@rescheduling task after socket open failed", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [v3 _schedule];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)pause
{
  v24 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDAccessoryFirmwareUpdateSession *)self _logDebugStates:"[HMDAccessoryFirmwareUpdateSession pause]"];
  if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
  {
    hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)self hapAccessory];
    supportsCHIP = [hapAccessory supportsCHIP];

    if (supportsCHIP)
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        *buf = 138543618;
        v21 = v9;
        v22 = 2080;
        v23 = "[HMDAccessoryFirmwareUpdateSession pause]";
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@%s: called by the controller's scheduler. Only a Matter Accessory can pause a firmware staging/application. No action taken.", buf, 0x16u);
      }

      v10 = v6;
LABEL_11:
      objc_autoreleasePoolPop(v10);
      v17 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  dataStreamSocket = [(HMDAccessoryFirmwareUpdateSession *)self dataStreamSocket];
  isClosing = [dataStreamSocket isClosing];

  if (isClosing)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Pause ignored with socket in closing state", buf, 0xCu);
    }

    v10 = v13;
    goto LABEL_11;
  }

  dataStreamSocket2 = [(HMDAccessoryFirmwareUpdateSession *)self dataStreamSocket];
  [dataStreamSocket2 close];
  v18 = *MEMORY[0x277D85DE8];
}

- (id)availableSoftwareVersion
{
  hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)self hapAccessory];
  supportsCHIP = [hapAccessory supportsCHIP];

  if (supportsCHIP)
  {
    assetID = [(HMDAccessoryFirmwareUpdateSession *)self assetID];
    [assetID softwareVersion];
  }

  else
  {
    assetID = [(HMDAccessoryFirmwareUpdateSession *)self uarpAccessory];
    [assetID availableSoftwareVersion];
  }
  v6 = ;

  return v6;
}

- (BOOL)startManualUpdate:(id)update error:(id *)error
{
  v75 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  workQueue = [(HMDAccessoryFirmwareUpdateSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)self hapAccessory];
  firmwareVersion = [hapAccessory firmwareVersion];
  version = [updateCopy version];
  if (![firmwareVersion isAtLeastVersion:version])
  {

LABEL_7:
    version2 = [updateCopy version];
    availableSoftwareVersion = [(HMDAccessoryFirmwareUpdateSession *)self availableSoftwareVersion];
    v24 = [version2 isEqualToVersion:availableSoftwareVersion];

    if ((v24 & 1) == 0)
    {
      if (error)
      {
        *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      }

      v38 = objc_autoreleasePoolPush();
      selfCopy = self;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = HMFGetLogIdentifier();
        version3 = [updateCopy version];
        uarpAccessory = [(HMDAccessoryFirmwareUpdateSession *)selfCopy uarpAccessory];
        [uarpAccessory availableFirmwareVersion];
        v64 = updateCopy;
        v45 = v44 = hapAccessory;
        uarpAccessory2 = [(HMDAccessoryFirmwareUpdateSession *)selfCopy uarpAccessory];
        firmwareVersion2 = [uarpAccessory2 firmwareVersion];
        *buf = 138544130;
        v66 = v41;
        v67 = 2112;
        v68 = version3;
        v69 = 2112;
        v70 = v45;
        v71 = 2112;
        v72 = firmwareVersion2;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Requested install version %@ is different than available version %@ / %@", buf, 0x2Au);

        hapAccessory = v44;
        updateCopy = v64;
      }

      objc_autoreleasePoolPop(v38);
      goto LABEL_18;
    }

    firmwareUpdateProfile = [hapAccessory firmwareUpdateProfile];
    stagedFirmwareVersion = [firmwareUpdateProfile stagedFirmwareVersion];

    availableSoftwareVersion2 = [(HMDAccessoryFirmwareUpdateSession *)self availableSoftwareVersion];
    v28 = [stagedFirmwareVersion isGreaterThanVersion:availableSoftwareVersion2];

    if (v28)
    {
      if (error)
      {
        *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      }

      v29 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v31 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      v32 = HMFGetLogIdentifier();
      availableSoftwareVersion3 = [(HMDAccessoryFirmwareUpdateSession *)selfCopy3 availableSoftwareVersion];
      shortVersionString = [availableSoftwareVersion3 shortVersionString];
      *buf = 138543874;
      v66 = v32;
      v67 = 2112;
      v68 = stagedFirmwareVersion;
      v69 = 2112;
      v70 = shortVersionString;
      v35 = "%{public}@Staged version %@ is different than available version %@";
      v36 = v31;
      v37 = 32;
      goto LABEL_24;
    }

    firmwareUpdateProfile2 = [hapAccessory firmwareUpdateProfile];
    updateNotReadyReasons = [firmwareUpdateProfile2 updateNotReadyReasons];

    if (updateNotReadyReasons)
    {
      if (error)
      {
        *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      }

      v29 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v31 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      v32 = HMFGetLogIdentifier();
      availableSoftwareVersion3 = [hapAccessory firmwareUpdateProfile];
      [availableSoftwareVersion3 updateNotReadyReasons];
      shortVersionString = HAPUpdateNotReadyReasonsAsString();
      *buf = 138543618;
      v66 = v32;
      v67 = 2114;
      v68 = shortVersionString;
      v35 = "%{public}@Update failed due to updateNotReadyReasons: %{public}@";
      v36 = v31;
      v37 = 22;
LABEL_24:
      _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, v35, buf, v37);

      goto LABEL_25;
    }

    v52 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v54 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      firmwareUpdateProfile2 = HMFGetLogIdentifier();
      *buf = 138543362;
      v66 = firmwareUpdateProfile2;
      _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_DEFAULT, "%{public}@Starting user-initiated update", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v52);
    [(HMDAccessoryFirmwareUpdateSession *)selfCopy4 _syncStateWithAccessoryOnResume];
    [(HMDAccessoryFirmwareUpdateSession *)selfCopy4 setUserInitiatedInstall:1];
    internalState = [(HMDAccessoryFirmwareUpdateSession *)selfCopy4 internalState];
    if (internalState > 2)
    {
      if (internalState != 3)
      {
        if (internalState != 4)
        {
          if (internalState != 5)
          {
            goto LABEL_27;
          }

          v29 = objc_autoreleasePoolPush();
          selfCopy3 = selfCopy4;
          v31 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
LABEL_26:

            objc_autoreleasePoolPop(v29);
            LOBYTE(firmwareUpdateProfile2) = 0;
LABEL_27:

            goto LABEL_28;
          }

          v32 = HMFGetLogIdentifier();
          *buf = 138543362;
          v66 = v32;
          _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Cannot update while registration is in progress", buf, 0xCu);
LABEL_25:

          goto LABEL_26;
        }

LABEL_41:
        v56 = objc_autoreleasePoolPush();
        v57 = selfCopy4;
        v58 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          v59 = HMFGetLogIdentifier();
          *buf = 138543362;
          v66 = v59;
          v60 = "%{public}@Already in progress";
          v61 = v58;
          v62 = OS_LOG_TYPE_DEFAULT;
LABEL_45:
          _os_log_impl(&dword_229538000, v61, v62, v60, buf, 0xCu);

          goto LABEL_46;
        }

        goto LABEL_46;
      }

      [(HMDAccessoryFirmwareUpdateSession *)selfCopy4 updateAvailableSoftwareUpdateState:3];
    }

    else
    {
      if (!internalState)
      {
        v56 = objc_autoreleasePoolPush();
        v57 = selfCopy4;
        v58 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v59 = HMFGetLogIdentifier();
          *buf = 138543362;
          v66 = v59;
          v60 = "%{public}@Already up to date";
          v61 = v58;
          v62 = OS_LOG_TYPE_ERROR;
          goto LABEL_45;
        }

LABEL_46:

        objc_autoreleasePoolPop(v56);
LABEL_49:
        LOBYTE(firmwareUpdateProfile2) = 1;
        goto LABEL_27;
      }

      if (internalState != 1)
      {
        if (internalState != 2)
        {
          goto LABEL_27;
        }

        goto LABEL_41;
      }
    }

    [(HMDAccessoryFirmwareUpdateSession *)selfCopy4 _schedule];
    goto LABEL_49;
  }

  state = [updateCopy state];

  if (state != 2)
  {
    goto LABEL_7;
  }

  v12 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = HMFGetLogIdentifier();
    shortDescription = [hapAccessory shortDescription];
    firmwareVersion3 = [hapAccessory firmwareVersion];
    [updateCopy version];
    v63 = v12;
    v19 = v18 = hapAccessory;
    uarpAccessory3 = [(HMDAccessoryFirmwareUpdateSession *)selfCopy5 uarpAccessory];
    firmwareVersion4 = [uarpAccessory3 firmwareVersion];
    *buf = 138544386;
    v66 = v15;
    v67 = 2112;
    v68 = shortDescription;
    v69 = 2112;
    v70 = firmwareVersion3;
    v71 = 2112;
    v72 = v19;
    v73 = 2112;
    v74 = firmwareVersion4;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Already has the latest version: %@. Ignoring the downloaded version: %@ / %@", buf, 0x34u);

    hapAccessory = v18;
    v12 = v63;
  }

  objc_autoreleasePoolPop(v12);
  [updateCopy updateLocalState:4];
LABEL_18:
  LOBYTE(firmwareUpdateProfile2) = 0;
LABEL_28:

  v50 = *MEMORY[0x277D85DE8];
  return firmwareUpdateProfile2 & 1;
}

- (HMFSoftwareVersion)accessoryVersion
{
  hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)self hapAccessory];
  firmwareUpdateProfile = [hapAccessory firmwareUpdateProfile];
  currentVersion = [firmwareUpdateProfile currentVersion];

  firmwareVersion = [hapAccessory firmwareVersion];
  if ([hapAccessory supportsCHIP])
  {
    firmwareUpdateProfile2 = [hapAccessory firmwareUpdateProfile];
    matterFirmwareUpdateProfile = [firmwareUpdateProfile2 matterFirmwareUpdateProfile];
    matterFirmwareRevisionNumber = [matterFirmwareUpdateProfile matterFirmwareRevisionNumber];

    v9 = [objc_alloc(MEMORY[0x277D0F8F8]) initWithMajorVersion:objc_msgSend(matterFirmwareRevisionNumber minorVersion:"unsignedLongValue") updateVersion:{0, 0}];
    firmwareVersion = v9;
  }

  if ([(HMFSoftwareVersion *)firmwareVersion isGreaterThanVersion:currentVersion])
  {
    v10 = firmwareVersion;
  }

  else
  {
    v10 = currentVersion;
  }

  v11 = v10;

  return v10;
}

- (void)setUserInitiatedInstall:(BOOL)install
{
  os_unfair_lock_lock_with_options();
  self->_userInitiatedInstall = install;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isUserInitiatedInstall
{
  os_unfair_lock_lock_with_options();
  userInitiatedInstall = self->_userInitiatedInstall;
  os_unfair_lock_unlock(&self->_lock);
  return userInitiatedInstall;
}

- (void)setUserInitiatedStaging:(BOOL)staging
{
  os_unfair_lock_lock_with_options();
  self->_userInitiatedStaging = staging;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isUserInitiatedStaging
{
  os_unfair_lock_lock_with_options();
  userInitiatedStaging = self->_userInitiatedStaging;
  os_unfair_lock_unlock(&self->_lock);
  return userInitiatedStaging;
}

- (unint64_t)sessionState
{
  nextStateToSchedule = [(HMDAccessoryFirmwareUpdateSession *)self nextStateToSchedule];
  if (nextStateToSchedule - 1 > 4)
  {
    return 0;
  }

  else
  {
    return qword_22A587AE8[nextStateToSchedule - 1];
  }
}

- (void)setSessionEnded:(BOOL)ended
{
  os_unfair_lock_lock_with_options();
  self->_sessionEnded = ended;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)sessionEnded
{
  os_unfair_lock_lock_with_options();
  sessionEnded = self->_sessionEnded;
  os_unfair_lock_unlock(&self->_lock);
  return sessionEnded;
}

- (void)setDataStreamSocket:(id)socket
{
  socketCopy = socket;
  os_unfair_lock_lock_with_options();
  dataStreamSocket = self->_dataStreamSocket;
  self->_dataStreamSocket = socketCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDDataStreamSocket)dataStreamSocket
{
  os_unfair_lock_lock_with_options();
  v3 = self->_dataStreamSocket;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setInternalState:(unint64_t)state
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  internalState = self->_internalState;
  self->_internalState = state;
  os_unfair_lock_unlock(&self->_lock);
  if (internalState != state)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v10 = v9;
      if (state - 1 > 4)
      {
        v11 = @"Up To Date";
      }

      else
      {
        v11 = off_27867DF80[state - 1];
      }

      v13 = 138543618;
      v14 = v9;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@State changed to %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (unint64_t)internalState
{
  os_unfair_lock_lock_with_options();
  internalState = self->_internalState;
  os_unfair_lock_unlock(&self->_lock);
  return internalState;
}

- (void)dealloc
{
  [(HMDDataStreamSocket *)self->_dataStreamSocket close];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = HMDAccessoryFirmwareUpdateSession;
  [(HMDAccessoryFirmwareUpdateSession *)&v4 dealloc];
}

- (void)configure
{
  hapAccessory = [(HMDAccessoryFirmwareUpdateSession *)self hapAccessory];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  home = [hapAccessory home];
  [defaultCenter addObserver:self selector:sel__handleAutomaticUpdateEnabledChanged_ name:@"HMDHomeAutomaticThirdPartyUpdateEnabledChangedNotification" object:home];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_handleAccessoryFirmwareVersionChangedNotification_ name:@"HMDAccessoryFirmwareVersionUpdatedNotification" object:hapAccessory];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_handleAccessoryFirmwareVersionChangedNotification_ name:@"HMDAccessoryFirmwareDisplayableVersionUpdatedNotification" object:hapAccessory];

  if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
  {
    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:self selector:sel_handleAccessoryFirmwareVersionNumberChangedNotification_ name:@"HMDAccessoryFirmwareUpdateMatterFirmwareRevisionNumberChangedNotification" object:hapAccessory];

    defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter5 addObserver:self selector:sel_handleAccessoryVIDPIDChangedNotification_ name:@"HMDAccessoryVendorIDProductIDUpdatedNotification" object:hapAccessory];
  }

  defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
  firmwareUpdateProfile = [hapAccessory firmwareUpdateProfile];
  [defaultCenter6 addObserver:self selector:sel_handleStagedFirmwareVersionChangedNotification_ name:@"HMDAccessoryStagedFirmwareVersionChangedNotification" object:firmwareUpdateProfile];

  defaultCenter7 = [MEMORY[0x277CCAB98] defaultCenter];
  firmwareUpdateProfile2 = [hapAccessory firmwareUpdateProfile];
  [defaultCenter7 addObserver:self selector:sel_handleFirmwareUpdateStateChangedNotification_ name:@"HMDAccessoryFirmwareUpdateStateChangedNotification" object:firmwareUpdateProfile2];

  defaultCenter8 = [MEMORY[0x277CCAB98] defaultCenter];
  firmwareUpdateProfile3 = [hapAccessory firmwareUpdateProfile];
  [defaultCenter8 addObserver:self selector:sel_handleNotReadyReasonsChanged_ name:@"HMDAccessoryFirmwareUpdateStagingNotReadyReasonsChangedNotification" object:firmwareUpdateProfile3];

  defaultCenter9 = [MEMORY[0x277CCAB98] defaultCenter];
  firmwareUpdateProfile4 = [hapAccessory firmwareUpdateProfile];
  [defaultCenter9 addObserver:self selector:sel_handleNotReadyReasonsChanged_ name:@"HMDAccessoryFirmwareUpdateApplyNotReadyReasonsChangedNotification" object:firmwareUpdateProfile4];

  firmwareUpdateProfile5 = [hapAccessory firmwareUpdateProfile];
  [firmwareUpdateProfile5 monitorCharacteristics:1];
}

- (HMDAccessoryFirmwareUpdateSession)initWithHAPAccessory:(id)accessory uarpAccessory:(id)uarpAccessory accessoryFirmwareUpdateManager:(id)manager logEventManager:(id)eventManager wingman:(id)wingman
{
  accessoryCopy = accessory;
  uarpAccessoryCopy = uarpAccessory;
  managerCopy = manager;
  eventManagerCopy = eventManager;
  wingmanCopy = wingman;
  v26.receiver = self;
  v26.super_class = HMDAccessoryFirmwareUpdateSession;
  v17 = [(HMDAccessoryFirmwareUpdateSession *)&v26 init];
  if (v17)
  {
    v18 = wingmanCopy;
    if (!wingmanCopy)
    {
      v18 = objc_alloc_init(HMDAccessoryFirmwareUpdateSessionWingman);
    }

    objc_storeStrong(&v17->_wingman, v18);
    if (!wingmanCopy)
    {
    }

    objc_storeWeak(&v17->_hapAccessory, accessoryCopy);
    objc_storeStrong(&v17->_uarpAccessory, uarpAccessory);
    objc_storeWeak(&v17->_accessoryFirmwareUpdateManager, managerCopy);
    objc_storeWeak(&v17->_logEventManager, eventManagerCopy);
    if (wingmanCopy)
    {
      initialSessionState = [(HMDAccessoryFirmwareUpdateSessionWingman *)wingmanCopy initialSessionState];
    }

    else
    {
      initialSessionState = 0;
    }

    v17->_internalState = initialSessionState;
    v17->_lock._os_unfair_lock_opaque = 0;
    workQueue = [accessoryCopy workQueue];
    workQueue = v17->_workQueue;
    v17->_workQueue = workQueue;

    v17->_userInitiatedStaging = 0;
    v17->_userInitiatedInstall = 0;
    v17->_sessionEnded = 0;
    v17->_assetOfferedForCurrentDataStream = 0;
    v17->_applyHDSRetryCount = 0;
    v17->_currentAutomaticApplyRetriesCount = 0;
    v17->_currentCommunicationErrorCount = 0;
    v17->_dataStreamOpenInProgress = 0;
    v17->_isVerifyingUpdate = 0;
    v17->_remoteApplyInProgress = 0;
    v17->_matterFirmwareUpdateRetryCount = 0;
    v17->_currentRegisterFailureCount = 0;
    registerFailureRetryTimerFactory = v17->_registerFailureRetryTimerFactory;
    v17->_registerFailureRetryTimerFactory = &__block_literal_global_188406;

    v23 = [(HMDAccessoryFirmwareUpdateSessionWingman *)v17->_wingman newSchedulerWithAccessory:accessoryCopy firmwareUpdateSession:v17 workQueue:v17->_workQueue];
    updateScheduler = v17->_updateScheduler;
    v17->_updateScheduler = v23;

    [(HMDAccessoryFirmwareUpdateScheduler *)v17->_updateScheduler configure];
  }

  return v17;
}

id __127__HMDAccessoryFirmwareUpdateSession_initWithHAPAccessory_uarpAccessory_accessoryFirmwareUpdateManager_logEventManager_wingman___block_invoke(double a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:a3 options:a1];

  return v3;
}

- (HMDAccessoryFirmwareUpdateSession)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t203 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t203, &__block_literal_global_158_188416);
  }

  v3 = logCategory__hmf_once_v204;

  return v3;
}

void __48__HMDAccessoryFirmwareUpdateSession_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v204;
  logCategory__hmf_once_v204 = v1;
}

+ (id)__calculateDigestDataFromFile:(id)file maxDataSize:(unint64_t)size error:(id *)error
{
  v5 = MEMORY[0x28223BE20](self);
  v7 = v6;
  v9 = v8;
  v10 = v5;
  v53 = *MEMORY[0x277D85DE8];
  v12 = v11;
  v13 = [MEMORY[0x277CBEAE0] inputStreamWithURL:v12];
  if (!v13)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v10;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = HMFGetLogIdentifier();
      data = 138543618;
      v50 = v25;
      v51 = 2112;
      v52 = v12;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Couldn't open input stream for %@", &data, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    goto LABEL_17;
  }

  memset(&v42, 0, sizeof(v42));
  CC_SHA1_Init(&v42);
  [v13 open];
  v14 = [v13 read:&data maxLength:4096];
  if (v14 >= 1)
  {
    v15 = 0;
    while (1)
    {
      v16 = __CFADD__(v14, v15);
      v15 += v14;
      v17 = v16;
      v18 = v17 << 63 >> 63;
      if (v18 != v17 || v18 < 0 || v15 > v9)
      {
        break;
      }

      CC_SHA1_Update(&v42, &data, v14);
      v14 = [v13 read:&data maxLength:4096];
      if (v14 <= 0)
      {
        goto LABEL_11;
      }
    }

    [v13 close];
    v26 = objc_autoreleasePoolPush();
    v27 = v10;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543874;
      v44 = v29;
      v45 = 2048;
      v46 = v9;
      v47 = 2112;
      v48 = v12;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Data size is bigger than maximum %ld bytes on file %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v26);
    if (v7)
    {
      streamError2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
LABEL_26:
      v21 = 0;
      *v7 = streamError2;
      goto LABEL_33;
    }

    goto LABEL_17;
  }

LABEL_11:
  [v13 close];
  if (v14 < 0)
  {
    v31 = objc_autoreleasePoolPush();
    v32 = v10;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      streamError = [v13 streamError];
      *buf = 138543874;
      v44 = v34;
      v45 = 2112;
      v46 = v12;
      v47 = 2112;
      v48 = streamError;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Error reading documentation from %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v31);
    if (v7)
    {
      streamError2 = [v13 streamError];
      goto LABEL_26;
    }

LABEL_17:
    v21 = 0;
    goto LABEL_33;
  }

  v19 = [MEMORY[0x277CBEB28] dataWithLength:20];
  v20 = v19;
  if (v19)
  {
    CC_SHA1_Final([v19 mutableBytes], &v42);
    v21 = [v20 copy];
  }

  else
  {
    v36 = objc_autoreleasePoolPush();
    v37 = v10;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543618;
      v44 = v39;
      v45 = 2048;
      v46 = 20;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Failed to allocate %lu bytes to hold digest", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v36);
    if (v7)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      *v7 = v21 = 0;
    }

    else
    {
      v21 = 0;
    }
  }

LABEL_33:
  v40 = *MEMORY[0x277D85DE8];

  return v21;
}

@end