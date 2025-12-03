@interface HMMTRThreadSoftwareUpdateController
+ (id)logCategory;
- (BOOL)isFirmwareUpdateInProgressForFabricUUID:(id)d;
- (HMMTRAccessoryServer)targetThreadAccessoryServerForFWUpdate;
- (HMMTRAccessoryServerBrowser)browser;
- (HMMTRThreadSoftwareUpdateController)initWithQueue:(id)queue browser:(id)browser;
- (void)_attemptConnectionForFirmwareUpdateForAccessoryServer:(id)server completion:(id)completion;
- (void)_cleanupFirmwareUpdateStateWithError:(id)error;
- (void)handleFirmwareUpdateStatusChangeForAccessoryServer:(id)server state:(int64_t)state;
- (void)handleUpdateRequestedForAccessoryServer:(id)server completion:(id)completion;
- (void)suspendOperations;
- (void)suspendOperationsForFabricUUID:(id)d;
- (void)timerDidFire:(id)fire;
@end

@implementation HMMTRThreadSoftwareUpdateController

- (HMMTRAccessoryServer)targetThreadAccessoryServerForFWUpdate
{
  WeakRetained = objc_loadWeakRetained(&self->_targetThreadAccessoryServerForFWUpdate);

  return WeakRetained;
}

- (HMMTRAccessoryServerBrowser)browser
{
  WeakRetained = objc_loadWeakRetained(&self->_browser);

  return WeakRetained;
}

- (void)timerDidFire:(id)fire
{
  v29 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v26 = v8;
    v27 = 2112;
    v28 = selfCopy;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_DEBUG, "%{public}@%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_browser);
  if (WeakRetained)
  {
    targetThreadAccessoryServerForFWUpdate = [(HMMTRThreadSoftwareUpdateController *)selfCopy targetThreadAccessoryServerForFWUpdate];
    nodeID = [targetThreadAccessoryServerForFWUpdate nodeID];
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v15;
      v27 = 2112;
      v28 = nodeID;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_ERROR, "%{public}@Timed up doing firmware update for nodeID %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    threadRadioManager = [WeakRetained threadRadioManager];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __52__HMMTRThreadSoftwareUpdateController_timerDidFire___block_invoke;
    v23[3] = &unk_2786EF9E0;
    v23[4] = v13;
    v24 = nodeID;
    v17 = nodeID;
    [threadRadioManager stopAccessoryFirmwareUpdateWithCompletion:v23];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v21;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unable to get browser ref in HMMTRSoftwareUpdateProvider timerDidFire", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __52__HMMTRThreadSoftwareUpdateController_timerDidFire___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v10 = 138543874;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to inform thread SW of stop firmware update for nodeID %@, error %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) _cleanupFirmwareUpdateStateWithError:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleFirmwareUpdateStatusChangeForAccessoryServer:(id)server state:(int64_t)state
{
  v48 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    nodeID = [serverCopy nodeID];
    *buf = 138543874;
    v43 = v10;
    v44 = 2112;
    stateCopy2 = nodeID;
    v46 = 2048;
    stateCopy = state;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Received firmware update status change for accessory server with nodeID:%@, state: %lu", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  if (isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled())
  {
    targetThreadAccessoryServerForFWUpdate = [(HMMTRThreadSoftwareUpdateController *)selfCopy targetThreadAccessoryServerForFWUpdate];
    if (targetThreadAccessoryServerForFWUpdate)
    {
      if (HMFEqualObjects())
      {
        if (state == 6)
        {
          v30 = objc_autoreleasePoolPush();
          v31 = selfCopy;
          v32 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v33 = HMFGetLogIdentifier();
            nodeID2 = [serverCopy nodeID];
            *buf = 138543874;
            v43 = v33;
            v44 = 2048;
            stateCopy2 = 6;
            v46 = 2112;
            stateCopy = nodeID2;
            _os_log_impl(&dword_22AEAE000, v32, OS_LOG_TYPE_INFO, "%{public}@Firmware update moved to installed state (%lu) for accessory with nodeID %@", buf, 0x20u);
          }

          v35 = v30;
          goto LABEL_28;
        }

        if (state == 3)
        {
          browser = [(HMMTRThreadSoftwareUpdateController *)selfCopy browser];
          threadRadioManager = [browser threadRadioManager];
          eMACAddress = [serverCopy eMACAddress];
          v16 = [eMACAddress dataUsingEncoding:4];
          isWEDDevice = [serverCopy isWEDDevice];
          v40[0] = MEMORY[0x277D85DD0];
          v40[1] = 3221225472;
          v40[2] = __96__HMMTRThreadSoftwareUpdateController_handleFirmwareUpdateStatusChangeForAccessoryServer_state___block_invoke;
          v40[3] = &unk_2786EF9E0;
          v40[4] = selfCopy;
          v41 = serverCopy;
          [threadRadioManager startAccessoryFirmwareUpdateWithExtendedMACAddress:v16 isWedDevice:isWEDDevice completion:v40];

LABEL_19:
          goto LABEL_20;
        }

        if (state <= 1)
        {
          v36 = objc_autoreleasePoolPush();
          v31 = selfCopy;
          v37 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            v38 = HMFGetLogIdentifier();
            nodeID3 = [serverCopy nodeID];
            *buf = 138543874;
            v43 = v38;
            v44 = 2048;
            stateCopy2 = state;
            v46 = 2112;
            stateCopy = nodeID3;
            _os_log_impl(&dword_22AEAE000, v37, OS_LOG_TYPE_INFO, "%{public}@Firmware update moved to idle or unknown state (%lu) for accessory with nodeID %@", buf, 0x20u);
          }

          v35 = v36;
LABEL_28:
          objc_autoreleasePoolPop(v35);
          [(HMMTRThreadSoftwareUpdateController *)v31 _cleanupFirmwareUpdateStateWithError:0];
          goto LABEL_19;
        }

        switch(state)
        {
          case 5:
            v22 = objc_autoreleasePoolPush();
            v23 = selfCopy;
            v24 = HMFGetOSLogHandle();
            if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              goto LABEL_18;
            }

            v25 = HMFGetLogIdentifier();
            nodeID4 = [serverCopy nodeID];
            *buf = 138543618;
            v43 = v25;
            v44 = 2112;
            stateCopy2 = nodeID4;
            v27 = "%{public}@Firmware update moved to installing state for accessory with nodeID %@";
            break;
          case 4:
            v22 = objc_autoreleasePoolPush();
            v23 = selfCopy;
            v24 = HMFGetOSLogHandle();
            if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              goto LABEL_18;
            }

            v25 = HMFGetLogIdentifier();
            nodeID4 = [serverCopy nodeID];
            *buf = 138543618;
            v43 = v25;
            v44 = 2112;
            stateCopy2 = nodeID4;
            v27 = "%{public}@Firmware update moved to downloading state for accessory with nodeID %@";
            break;
          case 2:
            v22 = objc_autoreleasePoolPush();
            v23 = selfCopy;
            v24 = HMFGetOSLogHandle();
            if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              goto LABEL_18;
            }

            v25 = HMFGetLogIdentifier();
            nodeID4 = [serverCopy nodeID];
            *buf = 138543618;
            v43 = v25;
            v44 = 2112;
            stateCopy2 = nodeID4;
            v27 = "%{public}@Firmware update moved to downloaded state for accessory with nodeID %@";
            break;
          default:
            goto LABEL_19;
        }

        goto LABEL_14;
      }

      v22 = objc_autoreleasePoolPush();
      v23 = selfCopy;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        nodeID4 = [targetThreadAccessoryServerForFWUpdate nodeID];
        nodeID5 = [serverCopy nodeID];
        *buf = 138543874;
        v43 = v25;
        v44 = 2112;
        stateCopy2 = nodeID4;
        v46 = 2112;
        stateCopy = nodeID5;
        _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_ERROR, "%{public}@Expecting notification for accessory server with nodeID %@ but received notification for accessory server with nodeID %@ accessory server, ignoring", buf, 0x20u);

        goto LABEL_17;
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = selfCopy;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        nodeID4 = [serverCopy nodeID];
        *buf = 138543618;
        v43 = v25;
        v44 = 2112;
        stateCopy2 = nodeID4;
        v27 = "%{public}@Received notification for accessory server with nodeID %@ accessory server, but not currently tracking any firmware updates, ignoring";
LABEL_14:
        _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_INFO, v27, buf, 0x16u);
LABEL_17:
      }
    }

LABEL_18:

    objc_autoreleasePoolPop(v22);
    goto LABEL_19;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = selfCopy;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543362;
    v43 = v21;
    _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@Feature is not enabled, ignoring", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v18);
LABEL_20:

  v29 = *MEMORY[0x277D85DE8];
}

void __96__HMMTRThreadSoftwareUpdateController_handleFirmwareUpdateStatusChangeForAccessoryServer_state___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 40) nodeID];
      v13 = 138543874;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to inform thread SW of start firmware update for accessory with nodeID %@, error %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _cleanupFirmwareUpdateStateWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) nodeID];
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfully informed thread SW of start firmware update for accessory with nodeID %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_attemptConnectionForFirmwareUpdateForAccessoryServer:(id)server completion:(id)completion
{
  v123 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    nodeID = [serverCopy nodeID];
    *buf = 138543618;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = nodeID;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Attempting connection to accessory server with nodeID %@ for firmware update", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled())
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_browser);
    v14 = WeakRetained;
    if (!WeakRetained)
    {
      v27 = objc_autoreleasePoolPush();
      v28 = selfCopy;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        nodeID2 = [serverCopy nodeID];
        *buf = 138543618;
        *&buf[4] = v30;
        *&buf[12] = 2112;
        *&buf[14] = nodeID2;
        _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_ERROR, "%{public}@Unable to get browser ref for attemptConnectionForFirmwareUpdateForAccessoryServer with nodeID:%@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      targetThreadAccessoryServerForFWUpdate = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
      completionCopy[2](completionCopy, targetThreadAccessoryServerForFWUpdate);
      goto LABEL_40;
    }

    threadRadioManager = [WeakRetained threadRadioManager];
    isPairingActive = [threadRadioManager isPairingActive];

    if (isPairingActive)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        nodeID3 = [serverCopy nodeID];
        *buf = 138543618;
        *&buf[4] = v20;
        *&buf[12] = 2112;
        *&buf[14] = nodeID3;
        _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_ERROR, "%{public}@Cannot start firmware update for nodeID %@ while pairing is active", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      targetThreadAccessoryServerForFWUpdate = [MEMORY[0x277CCA9B8] hmfErrorWithCode:9];
      completionCopy[2](completionCopy, targetThreadAccessoryServerForFWUpdate);
      goto LABEL_40;
    }

    targetThreadAccessoryServerForFWUpdate = [(HMMTRThreadSoftwareUpdateController *)selfCopy targetThreadAccessoryServerForFWUpdate];
    if (targetThreadAccessoryServerForFWUpdate)
    {
      v32 = HMFEqualObjects();
      v33 = objc_autoreleasePoolPush();
      v34 = selfCopy;
      v35 = HMFGetOSLogHandle();
      v36 = v35;
      if (v32)
      {
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v37 = HMFGetLogIdentifier();
          nodeID4 = [serverCopy nodeID];
          *buf = 138543618;
          *&buf[4] = v37;
          *&buf[12] = 2112;
          *&buf[14] = nodeID4;
          _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_INFO, "%{public}@Start firmware update attempted for the accessory with nodeID %@, but it's already targeted for fw update, just send out announcement immediately", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v33);
        completionCopy[2](completionCopy, 0);
      }

      else
      {
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v47 = HMFGetLogIdentifier();
          nodeID5 = [serverCopy nodeID];
          nodeID6 = [targetThreadAccessoryServerForFWUpdate nodeID];
          *buf = 138543874;
          *&buf[4] = v47;
          *&buf[12] = 2112;
          *&buf[14] = nodeID5;
          *&buf[22] = 2112;
          v122 = nodeID6;
          _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_ERROR, "%{public}@Start firmware update attempted for the accessory with nodeID %@, but we're already targeting accessory with nodeID %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v33);
        v50 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:6];
        completionCopy[2](completionCopy, v50);
      }

      goto LABEL_40;
    }

    threadRadioManager2 = [v14 threadRadioManager];
    isFirmwareUpdateActive = [threadRadioManager2 isFirmwareUpdateActive];

    if (isFirmwareUpdateActive)
    {
      v41 = objc_autoreleasePoolPush();
      v42 = selfCopy;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = HMFGetLogIdentifier();
        nodeID7 = [serverCopy nodeID];
        *buf = 138543618;
        *&buf[4] = v44;
        *&buf[12] = 2112;
        *&buf[14] = nodeID7;
        _os_log_impl(&dword_22AEAE000, v43, OS_LOG_TYPE_ERROR, "%{public}@Cannot start firmware update for nodeID %@ while another firmware update is active", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v41);
      v46 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:9];
      completionCopy[2](completionCopy, v46);

      goto LABEL_39;
    }

    matterDevice = [serverCopy matterDevice];
    v52 = [matterDevice state] == 1;

    if (v52)
    {
      v53 = objc_autoreleasePoolPush();
      v54 = selfCopy;
      v55 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        v56 = HMFGetLogIdentifier();
        nodeID8 = [serverCopy nodeID];
        *buf = 138543618;
        *&buf[4] = v56;
        *&buf[12] = 2112;
        *&buf[14] = nodeID8;
        _os_log_impl(&dword_22AEAE000, v55, OS_LOG_TYPE_INFO, "%{public}@Accessory server with nodeID %@ was reachable", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v53);
      [(HMMTRThreadSoftwareUpdateController *)v54 setTargetThreadAccessoryServerForFWUpdate:serverCopy];
      firmwareUpdateActiveTimer = [(HMMTRThreadSoftwareUpdateController *)v54 firmwareUpdateActiveTimer];
      [firmwareUpdateActiveTimer resume];

      completionCopy[2](completionCopy, 0);
      goto LABEL_39;
    }

    browser = [(HMMTRThreadSoftwareUpdateController *)selfCopy browser];
    v60 = [browser isOperationAllowedForAccessoryServer:serverCopy];

    if (v60)
    {
      if ([serverCopy isWEDDevice])
      {
        v61 = objc_autoreleasePoolPush();
        v62 = selfCopy;
        v63 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          v64 = HMFGetLogIdentifier();
          nodeID9 = [serverCopy nodeID];
          *buf = 138543618;
          *&buf[4] = v64;
          *&buf[12] = 2112;
          *&buf[14] = nodeID9;
          _os_log_impl(&dword_22AEAE000, v63, OS_LOG_TYPE_INFO, "%{public}@Accessory server with nodeID %@ is WED device", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v61);
        [(HMMTRThreadSoftwareUpdateController *)v62 setTargetThreadAccessoryServerForFWUpdate:serverCopy];
        completionCopy[2](completionCopy, 0);
        goto LABEL_39;
      }

      browser2 = [(HMMTRThreadSoftwareUpdateController *)selfCopy browser];
      nodeID10 = [serverCopy nodeID];
      v75 = [browser2 canEstablishConnectionForNodeID:nodeID10];

      if (v75)
      {
        threadRadioManager3 = [v14 threadRadioManager];
        if ([threadRadioManager3 isThreadNetworkConnected])
        {
          threadRadioManager4 = [v14 threadRadioManager];
          if (![threadRadioManager4 isFirmwareUpdateActive])
          {
            matterDevice2 = [serverCopy matterDevice];
            v100 = [matterDevice2 state] == 1;

            if (!v100)
            {
              v101 = objc_autoreleasePoolPush();
              v102 = selfCopy;
              v103 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
              {
                v104 = HMFGetLogIdentifier();
                nodeID11 = [serverCopy nodeID];
                *buf = 138543618;
                *&buf[4] = v104;
                *&buf[12] = 2112;
                *&buf[14] = nodeID11;
                _os_log_impl(&dword_22AEAE000, v103, OS_LOG_TYPE_ERROR, "%{public}@Device is already connected to thread network, no need to transition to full router for firmware update for accessory with nodeID %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v101);
              v106 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
              completionCopy[2](completionCopy, v106);

              goto LABEL_39;
            }

            goto LABEL_47;
          }
        }

LABEL_47:
        threadRadioManager5 = [v14 threadRadioManager];
        isReadyToTransitionToFullRouterModeForFirmwareUpdate = [threadRadioManager5 isReadyToTransitionToFullRouterModeForFirmwareUpdate];

        if (isReadyToTransitionToFullRouterModeForFirmwareUpdate)
        {
          [(HMMTRThreadSoftwareUpdateController *)selfCopy setTargetThreadAccessoryServerForFWUpdate:serverCopy];
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          LOBYTE(v122) = 0;
          objc_initWeak(&location, selfCopy);
          v112[0] = MEMORY[0x277D85DD0];
          v112[1] = 3221225472;
          v112[2] = __104__HMMTRThreadSoftwareUpdateController__attemptConnectionForFirmwareUpdateForAccessoryServer_completion___block_invoke;
          v112[3] = &unk_2786EE320;
          objc_copyWeak(&v115, &location);
          v114 = buf;
          v113 = completionCopy;
          v80 = MEMORY[0x2318887D0](v112);
          v81 = dispatch_time(0, 1200000000000);
          clientQueue = [(HMMTRThreadSoftwareUpdateController *)selfCopy clientQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __104__HMMTRThreadSoftwareUpdateController__attemptConnectionForFirmwareUpdateForAccessoryServer_completion___block_invoke_2;
          block[3] = &unk_2786EF878;
          v83 = v80;
          v111 = v83;
          dispatch_after(v81, clientQueue, block);

          firmwareUpdateActiveTimer2 = [(HMMTRThreadSoftwareUpdateController *)selfCopy firmwareUpdateActiveTimer];
          [firmwareUpdateActiveTimer2 resume];

          v85 = objc_autoreleasePoolPush();
          v86 = selfCopy;
          v87 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
          {
            v88 = HMFGetLogIdentifier();
            nodeID12 = [serverCopy nodeID];
            *v117 = 138543618;
            v118 = v88;
            v119 = 2112;
            v120 = nodeID12;
            _os_log_impl(&dword_22AEAE000, v87, OS_LOG_TYPE_INFO, "%{public}@Entering full-router mode to attempt to reach accessory with nodeID %@", v117, 0x16u);
          }

          objc_autoreleasePoolPop(v85);
          threadRadioManager6 = [v14 threadRadioManager];
          eMACAddress = [serverCopy eMACAddress];
          v92 = [eMACAddress dataUsingEncoding:4];
          isWEDDevice = [serverCopy isWEDDevice];
          v107[0] = MEMORY[0x277D85DD0];
          v107[1] = 3221225472;
          v107[2] = __104__HMMTRThreadSoftwareUpdateController__attemptConnectionForFirmwareUpdateForAccessoryServer_completion___block_invoke_116;
          v107[3] = &unk_2786F0C10;
          v107[4] = v86;
          v108 = serverCopy;
          v94 = v83;
          v109 = v94;
          [threadRadioManager6 startAccessoryFirmwareUpdateWithExtendedMACAddress:v92 isWedDevice:isWEDDevice completion:v107];

          objc_destroyWeak(&v115);
          objc_destroyWeak(&location);
          _Block_object_dispose(buf, 8);
          goto LABEL_39;
        }

        v66 = objc_autoreleasePoolPush();
        v67 = selfCopy;
        v68 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          v97 = HMFGetLogIdentifier();
          nodeID13 = [serverCopy nodeID];
          *buf = 138543618;
          *&buf[4] = v97;
          *&buf[12] = 2112;
          *&buf[14] = nodeID13;
          _os_log_impl(&dword_22AEAE000, v68, OS_LOG_TYPE_ERROR, "%{public}@Cannot start firmware update for nodeID %@ due to invalid thread state", buf, 0x16u);
        }

        goto LABEL_38;
      }

      v66 = objc_autoreleasePoolPush();
      v67 = selfCopy;
      v68 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        v95 = HMFGetLogIdentifier();
        nodeID14 = [serverCopy nodeID];
        *buf = 138543618;
        *&buf[4] = v95;
        *&buf[12] = 2112;
        *&buf[14] = nodeID14;
        _os_log_impl(&dword_22AEAE000, v68, OS_LOG_TYPE_ERROR, "%{public}@Cannot start firmware update for nodeID %@ accessory cannot be made reachable", buf, 0x16u);
      }
    }

    else
    {
      v66 = objc_autoreleasePoolPush();
      v67 = selfCopy;
      v68 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        v69 = HMFGetLogIdentifier();
        nodeID15 = [serverCopy nodeID];
        *buf = 138543618;
        *&buf[4] = v69;
        *&buf[12] = 2112;
        *&buf[14] = nodeID15;
        _os_log_impl(&dword_22AEAE000, v68, OS_LOG_TYPE_ERROR, "%{public}@Cannot start firmware update for nodeID %@ accessory at this point in time", buf, 0x16u);
      }
    }

LABEL_38:

    objc_autoreleasePoolPop(v66);
    v71 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:6];
    completionCopy[2](completionCopy, v71);

LABEL_39:
    targetThreadAccessoryServerForFWUpdate = 0;
LABEL_40:

    goto LABEL_41;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = selfCopy;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138543362;
    *&buf[4] = v26;
    _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_ERROR, "%{public}@Feature is not enabled, falling back to sending notification immediately", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v23);
  completionCopy[2](completionCopy, 0);
LABEL_41:

  v72 = *MEMORY[0x277D85DE8];
}

void __104__HMMTRThreadSoftwareUpdateController__attemptConnectionForFirmwareUpdateForAccessoryServer_completion___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v3 && (*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [v6 targetThreadAccessoryServerForFWUpdate];
      v10 = [v9 nodeID];
      *buf = 138543874;
      v22 = v8;
      v23 = 2112;
      v24 = v10;
      v25 = 2112;
      v26 = v3;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to connect to accessory in time for nodeID %@, error %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = WeakRetained;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543874;
      v22 = v14;
      v23 = 2112;
      v24 = v12;
      v25 = 2112;
      v26 = v3;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Firmware update connection attempt for a accessory with nodeID %@, error = %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v15 = [v12 clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __104__HMMTRThreadSoftwareUpdateController__attemptConnectionForFirmwareUpdateForAccessoryServer_completion___block_invoke_115;
    block[3] = &unk_2786F0EA8;
    v18 = v3;
    v19 = v12;
    v20 = *(a1 + 32);
    dispatch_async(v15, block);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __104__HMMTRThreadSoftwareUpdateController__attemptConnectionForFirmwareUpdateForAccessoryServer_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:13];
  (*(v1 + 16))(v1, v2);
}

void __104__HMMTRThreadSoftwareUpdateController__attemptConnectionForFirmwareUpdateForAccessoryServer_completion___block_invoke_116(id *a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [a1[5] nodeID];
      *buf = 138543874;
      v24 = v8;
      v25 = 2112;
      v26 = v9;
      v27 = 2112;
      v28 = v3;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to inform thread SW of start firmware update for accessory with nodeID %@, error %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v10 = [a1[4] firmwareUpdateActiveTimer];
    [v10 suspend];

    [a1[4] setTargetThreadAccessoryServerForFWUpdate:0];
    v11 = [a1[4] clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __104__HMMTRThreadSoftwareUpdateController__attemptConnectionForFirmwareUpdateForAccessoryServer_completion___block_invoke_117;
    block[3] = &unk_2786EF5A8;
    v22 = a1[6];
    v21 = v3;
    dispatch_async(v11, block);

    v12 = v22;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [a1[5] nodeID];
      *buf = 138543618;
      v24 = v13;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfully informed thread SW of start firmware update for accessory with nodeID %@, waiting for reachability to update", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v15 = [a1[4] reachabilityObserver];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __104__HMMTRThreadSoftwareUpdateController__attemptConnectionForFirmwareUpdateForAccessoryServer_completion___block_invoke_118;
    v18[3] = &unk_2786EF8A0;
    v16 = a1[5];
    v18[4] = a1[4];
    v19 = a1[6];
    [v15 startObservingReachabilityForAccessoryServer:v16 completion:v18];

    v12 = v19;
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __104__HMMTRThreadSoftwareUpdateController__attemptConnectionForFirmwareUpdateForAccessoryServer_completion___block_invoke_118(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __104__HMMTRThreadSoftwareUpdateController__attemptConnectionForFirmwareUpdateForAccessoryServer_completion___block_invoke_2_119;
  v7[3] = &unk_2786EF5A8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __104__HMMTRThreadSoftwareUpdateController__attemptConnectionForFirmwareUpdateForAccessoryServer_completion___block_invoke_115(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    [v2 _cleanupFirmwareUpdateStateWithError:?];
  }

  else
  {
    v4 = [v2 reachabilityObserver];
    [v4 stopObservingReachabilityWithError:a1[4]];
  }

  v5 = a1[4];
  v6 = *(a1[6] + 16);

  return v6();
}

- (void)handleUpdateRequestedForAccessoryServer:(id)server completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_browser);
  if (WeakRetained)
  {
    if (isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled())
    {
      if (![serverCopy accessoryLinkLayerTypeIsWifiOrEthernet])
      {
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __90__HMMTRThreadSoftwareUpdateController_handleUpdateRequestedForAccessoryServer_completion___block_invoke;
        v18[3] = &unk_2786F0C10;
        v18[4] = self;
        v19 = serverCopy;
        v20 = completionCopy;
        [(HMMTRThreadSoftwareUpdateController *)self _attemptConnectionForFirmwareUpdateForAccessoryServer:v19 completion:v18];

        goto LABEL_13;
      }

      v9 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        nodeID = [serverCopy nodeID];
        *buf = 138543618;
        v22 = v12;
        v23 = 2112;
        v24 = nodeID;
        v14 = "%{public}@Accessory server with nodeID %@ is an IP accessory, no tracking needed.";
        v15 = v11;
        v16 = OS_LOG_TYPE_INFO;
LABEL_8:
        _os_log_impl(&dword_22AEAE000, v15, v16, v14, buf, 0x16u);

LABEL_11:
      }
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543362;
        v22 = v12;
        _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_ERROR, "%{public}@Feature is not enabled, falling back to sending notification immediately", buf, 0xCu);
        goto LABEL_11;
      }
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      nodeID = [serverCopy nodeID];
      *buf = 138543618;
      v22 = v12;
      v23 = 2112;
      v24 = nodeID;
      v14 = "%{public}@Unable to get browser ref for handleUpdateRequestedForAccessoryServer:%@";
      v15 = v11;
      v16 = OS_LOG_TYPE_ERROR;
      goto LABEL_8;
    }
  }

  objc_autoreleasePoolPop(v9);
  (*(completionCopy + 2))(completionCopy, 0);
LABEL_13:

  v17 = *MEMORY[0x277D85DE8];
}

void __90__HMMTRThreadSoftwareUpdateController_handleUpdateRequestedForAccessoryServer_completion___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 40) nodeID];
      v17 = 138543874;
      v18 = v7;
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = v3;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@Unable to connect to accessory with nodeID:%@ error:%@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = [*(a1 + 40) matterFirmwareUpdateStatus];
    [v9 updateFirmwareUpdateStatus:0];

    v10 = *(*(a1 + 48) + 16);
  }

  else
  {
    if ([*(a1 + 40) accessoryLinkLayerTypeIsWifiOrEthernet])
    {
      v11 = objc_autoreleasePoolPush();
      v12 = *(a1 + 32);
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [*(a1 + 40) nodeID];
        v17 = 138543618;
        v18 = v14;
        v19 = 2112;
        v20 = v15;
        _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Accessory server with nodeID %@ became reachable, but is an IP accessory, no tracking needed.", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      [*(a1 + 32) _cleanupFirmwareUpdateStateWithError:0];
    }

    v10 = *(*(a1 + 48) + 16);
  }

  v10();

  v16 = *MEMORY[0x277D85DE8];
}

- (void)suspendOperations
{
  v14 = *MEMORY[0x277D85DE8];
  targetThreadAccessoryServerForFWUpdate = [(HMMTRThreadSoftwareUpdateController *)self targetThreadAccessoryServerForFWUpdate];

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (targetThreadAccessoryServerForFWUpdate)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v8;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Suspending firmware update operations", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v9 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
    [(HMMTRThreadSoftwareUpdateController *)selfCopy _cleanupFirmwareUpdateStateWithError:v9];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Received suspendOperations, but not currently tracking any firmware updates, ignoring", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)suspendOperationsForFabricUUID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(HMMTRThreadSoftwareUpdateController *)self isFirmwareUpdateInProgressForFabricUUID:dCopy];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v10;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Suspending firmware update operations", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
    [(HMMTRThreadSoftwareUpdateController *)selfCopy _cleanupFirmwareUpdateStateWithError:v11];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = dCopy;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Received suspendOperations, but no active fw updates in progress for fabric %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)isFirmwareUpdateInProgressForFabricUUID:(id)d
{
  dCopy = d;
  targetThreadAccessoryServerForFWUpdate = [(HMMTRThreadSoftwareUpdateController *)self targetThreadAccessoryServerForFWUpdate];
  v6 = targetThreadAccessoryServerForFWUpdate;
  if (!targetThreadAccessoryServerForFWUpdate)
  {
    goto LABEL_5;
  }

  fabricUUID = [targetThreadAccessoryServerForFWUpdate fabricUUID];
  if (!fabricUUID)
  {
    goto LABEL_5;
  }

  v8 = fabricUUID;
  fabricUUID2 = [v6 fabricUUID];
  v10 = HMFEqualObjects();

  if (v10)
  {
    v11 = 1;
  }

  else
  {
LABEL_5:
    v11 = 0;
  }

  return v11;
}

- (void)_cleanupFirmwareUpdateStateWithError:(id)error
{
  v29 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  targetThreadAccessoryServerForFWUpdate = [(HMMTRThreadSoftwareUpdateController *)self targetThreadAccessoryServerForFWUpdate];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    nodeID = [targetThreadAccessoryServerForFWUpdate nodeID];
    *buf = 138543874;
    v24 = v9;
    v25 = 2112;
    v26 = nodeID;
    v27 = 2112;
    v28 = errorCopy;
    _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Cleaning up firmware update state - current target accessory nodeID = %@, error = %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  firmwareUpdateActiveTimer = [(HMMTRThreadSoftwareUpdateController *)selfCopy firmwareUpdateActiveTimer];
  [firmwareUpdateActiveTimer suspend];

  [(HMMTRThreadSoftwareUpdateController *)selfCopy setTargetThreadAccessoryServerForFWUpdate:0];
  reachabilityObserver = [(HMMTRThreadSoftwareUpdateController *)selfCopy reachabilityObserver];
  [reachabilityObserver stopObservingReachabilityWithError:errorCopy];

  browser = [(HMMTRThreadSoftwareUpdateController *)selfCopy browser];
  threadRadioManager = [browser threadRadioManager];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __76__HMMTRThreadSoftwareUpdateController__cleanupFirmwareUpdateStateWithError___block_invoke;
  v22[3] = &unk_2786EF290;
  v22[4] = selfCopy;
  [threadRadioManager stopAccessoryFirmwareUpdateWithCompletion:v22];

  if (errorCopy && targetThreadAccessoryServerForFWUpdate)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      nodeID2 = [targetThreadAccessoryServerForFWUpdate nodeID];
      *buf = 138543874;
      v24 = v18;
      v25 = 2112;
      v26 = nodeID2;
      v27 = 2112;
      v28 = errorCopy;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@Resetting firmware update to unknown for current target accessory nodeID = %@, error = %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    matterFirmwareUpdateStatus = [targetThreadAccessoryServerForFWUpdate matterFirmwareUpdateStatus];
    [matterFirmwareUpdateStatus updateFirmwareUpdateStatus:0];
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __76__HMMTRThreadSoftwareUpdateController__cleanupFirmwareUpdateStateWithError___block_invoke(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to inform thread SW of stop firmware update after successful fw installed, error %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (HMMTRThreadSoftwareUpdateController)initWithQueue:(id)queue browser:(id)browser
{
  queueCopy = queue;
  browserCopy = browser;
  v16.receiver = self;
  v16.super_class = HMMTRThreadSoftwareUpdateController;
  v9 = [(HMMTRThreadSoftwareUpdateController *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientQueue, queue);
    objc_storeWeak(&v10->_browser, browserCopy);
    v11 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:1800.0];
    firmwareUpdateActiveTimer = v10->_firmwareUpdateActiveTimer;
    v10->_firmwareUpdateActiveTimer = v11;

    [(HMFTimer *)v10->_firmwareUpdateActiveTimer setDelegateQueue:queueCopy];
    [(HMFTimer *)v10->_firmwareUpdateActiveTimer setDelegate:v10];
    v13 = [[HMMTRAccessoryReachabilityObserver alloc] initWithQueue:queueCopy];
    reachabilityObserver = v10->_reachabilityObserver;
    v10->_reachabilityObserver = v13;
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t56 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t56, &__block_literal_global_121);
  }

  v3 = logCategory__hmf_once_v57;

  return v3;
}

uint64_t __50__HMMTRThreadSoftwareUpdateController_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v57;
  logCategory__hmf_once_v57 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end