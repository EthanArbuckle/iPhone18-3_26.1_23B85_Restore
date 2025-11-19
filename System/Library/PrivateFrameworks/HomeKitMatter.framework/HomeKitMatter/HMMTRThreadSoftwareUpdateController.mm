@interface HMMTRThreadSoftwareUpdateController
+ (id)logCategory;
- (BOOL)isFirmwareUpdateInProgressForFabricUUID:(id)a3;
- (HMMTRAccessoryServer)targetThreadAccessoryServerForFWUpdate;
- (HMMTRAccessoryServerBrowser)browser;
- (HMMTRThreadSoftwareUpdateController)initWithQueue:(id)a3 browser:(id)a4;
- (void)_attemptConnectionForFirmwareUpdateForAccessoryServer:(id)a3 completion:(id)a4;
- (void)_cleanupFirmwareUpdateStateWithError:(id)a3;
- (void)handleFirmwareUpdateStatusChangeForAccessoryServer:(id)a3 state:(int64_t)a4;
- (void)handleUpdateRequestedForAccessoryServer:(id)a3 completion:(id)a4;
- (void)suspendOperations;
- (void)suspendOperationsForFabricUUID:(id)a3;
- (void)timerDidFire:(id)a3;
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

- (void)timerDidFire:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v26 = v8;
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_DEBUG, "%{public}@%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  WeakRetained = objc_loadWeakRetained(&v6->_browser);
  if (WeakRetained)
  {
    v10 = [(HMMTRThreadSoftwareUpdateController *)v6 targetThreadAccessoryServerForFWUpdate];
    v11 = [v10 nodeID];
    v12 = objc_autoreleasePoolPush();
    v13 = v6;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v15;
      v27 = 2112;
      v28 = v11;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_ERROR, "%{public}@Timed up doing firmware update for nodeID %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [WeakRetained threadRadioManager];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __52__HMMTRThreadSoftwareUpdateController_timerDidFire___block_invoke;
    v23[3] = &unk_2786EF9E0;
    v23[4] = v13;
    v24 = v11;
    v17 = v11;
    [v16 stopAccessoryFirmwareUpdateWithCompletion:v23];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v6;
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

- (void)handleFirmwareUpdateStatusChangeForAccessoryServer:(id)a3 state:(int64_t)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v6 nodeID];
    *buf = 138543874;
    v43 = v10;
    v44 = 2112;
    v45 = v11;
    v46 = 2048;
    v47 = a4;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Received firmware update status change for accessory server with nodeID:%@, state: %lu", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  if (isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled())
  {
    v12 = [(HMMTRThreadSoftwareUpdateController *)v8 targetThreadAccessoryServerForFWUpdate];
    if (v12)
    {
      if (HMFEqualObjects())
      {
        if (a4 == 6)
        {
          v30 = objc_autoreleasePoolPush();
          v31 = v8;
          v32 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v33 = HMFGetLogIdentifier();
            v34 = [v6 nodeID];
            *buf = 138543874;
            v43 = v33;
            v44 = 2048;
            v45 = 6;
            v46 = 2112;
            v47 = v34;
            _os_log_impl(&dword_22AEAE000, v32, OS_LOG_TYPE_INFO, "%{public}@Firmware update moved to installed state (%lu) for accessory with nodeID %@", buf, 0x20u);
          }

          v35 = v30;
          goto LABEL_28;
        }

        if (a4 == 3)
        {
          v13 = [(HMMTRThreadSoftwareUpdateController *)v8 browser];
          v14 = [v13 threadRadioManager];
          v15 = [v6 eMACAddress];
          v16 = [v15 dataUsingEncoding:4];
          v17 = [v6 isWEDDevice];
          v40[0] = MEMORY[0x277D85DD0];
          v40[1] = 3221225472;
          v40[2] = __96__HMMTRThreadSoftwareUpdateController_handleFirmwareUpdateStatusChangeForAccessoryServer_state___block_invoke;
          v40[3] = &unk_2786EF9E0;
          v40[4] = v8;
          v41 = v6;
          [v14 startAccessoryFirmwareUpdateWithExtendedMACAddress:v16 isWedDevice:v17 completion:v40];

LABEL_19:
          goto LABEL_20;
        }

        if (a4 <= 1)
        {
          v36 = objc_autoreleasePoolPush();
          v31 = v8;
          v37 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            v38 = HMFGetLogIdentifier();
            v39 = [v6 nodeID];
            *buf = 138543874;
            v43 = v38;
            v44 = 2048;
            v45 = a4;
            v46 = 2112;
            v47 = v39;
            _os_log_impl(&dword_22AEAE000, v37, OS_LOG_TYPE_INFO, "%{public}@Firmware update moved to idle or unknown state (%lu) for accessory with nodeID %@", buf, 0x20u);
          }

          v35 = v36;
LABEL_28:
          objc_autoreleasePoolPop(v35);
          [(HMMTRThreadSoftwareUpdateController *)v31 _cleanupFirmwareUpdateStateWithError:0];
          goto LABEL_19;
        }

        switch(a4)
        {
          case 5:
            v22 = objc_autoreleasePoolPush();
            v23 = v8;
            v24 = HMFGetOSLogHandle();
            if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              goto LABEL_18;
            }

            v25 = HMFGetLogIdentifier();
            v26 = [v6 nodeID];
            *buf = 138543618;
            v43 = v25;
            v44 = 2112;
            v45 = v26;
            v27 = "%{public}@Firmware update moved to installing state for accessory with nodeID %@";
            break;
          case 4:
            v22 = objc_autoreleasePoolPush();
            v23 = v8;
            v24 = HMFGetOSLogHandle();
            if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              goto LABEL_18;
            }

            v25 = HMFGetLogIdentifier();
            v26 = [v6 nodeID];
            *buf = 138543618;
            v43 = v25;
            v44 = 2112;
            v45 = v26;
            v27 = "%{public}@Firmware update moved to downloading state for accessory with nodeID %@";
            break;
          case 2:
            v22 = objc_autoreleasePoolPush();
            v23 = v8;
            v24 = HMFGetOSLogHandle();
            if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              goto LABEL_18;
            }

            v25 = HMFGetLogIdentifier();
            v26 = [v6 nodeID];
            *buf = 138543618;
            v43 = v25;
            v44 = 2112;
            v45 = v26;
            v27 = "%{public}@Firmware update moved to downloaded state for accessory with nodeID %@";
            break;
          default:
            goto LABEL_19;
        }

        goto LABEL_14;
      }

      v22 = objc_autoreleasePoolPush();
      v23 = v8;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v26 = [v12 nodeID];
        v28 = [v6 nodeID];
        *buf = 138543874;
        v43 = v25;
        v44 = 2112;
        v45 = v26;
        v46 = 2112;
        v47 = v28;
        _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_ERROR, "%{public}@Expecting notification for accessory server with nodeID %@ but received notification for accessory server with nodeID %@ accessory server, ignoring", buf, 0x20u);

        goto LABEL_17;
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = v8;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        v26 = [v6 nodeID];
        *buf = 138543618;
        v43 = v25;
        v44 = 2112;
        v45 = v26;
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
  v19 = v8;
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

- (void)_attemptConnectionForFirmwareUpdateForAccessoryServer:(id)a3 completion:(id)a4
{
  v123 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v6 nodeID];
    *buf = 138543618;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = v12;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Attempting connection to accessory server with nodeID %@ for firmware update", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled())
  {
    WeakRetained = objc_loadWeakRetained(&v9->_browser);
    v14 = WeakRetained;
    if (!WeakRetained)
    {
      v27 = objc_autoreleasePoolPush();
      v28 = v9;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        v31 = [v6 nodeID];
        *buf = 138543618;
        *&buf[4] = v30;
        *&buf[12] = 2112;
        *&buf[14] = v31;
        _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_ERROR, "%{public}@Unable to get browser ref for attemptConnectionForFirmwareUpdateForAccessoryServer with nodeID:%@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      v22 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
      v7[2](v7, v22);
      goto LABEL_40;
    }

    v15 = [WeakRetained threadRadioManager];
    v16 = [v15 isPairingActive];

    if (v16)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = v9;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v21 = [v6 nodeID];
        *buf = 138543618;
        *&buf[4] = v20;
        *&buf[12] = 2112;
        *&buf[14] = v21;
        _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_ERROR, "%{public}@Cannot start firmware update for nodeID %@ while pairing is active", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v22 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:9];
      v7[2](v7, v22);
      goto LABEL_40;
    }

    v22 = [(HMMTRThreadSoftwareUpdateController *)v9 targetThreadAccessoryServerForFWUpdate];
    if (v22)
    {
      v32 = HMFEqualObjects();
      v33 = objc_autoreleasePoolPush();
      v34 = v9;
      v35 = HMFGetOSLogHandle();
      v36 = v35;
      if (v32)
      {
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v37 = HMFGetLogIdentifier();
          v38 = [v6 nodeID];
          *buf = 138543618;
          *&buf[4] = v37;
          *&buf[12] = 2112;
          *&buf[14] = v38;
          _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_INFO, "%{public}@Start firmware update attempted for the accessory with nodeID %@, but it's already targeted for fw update, just send out announcement immediately", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v33);
        v7[2](v7, 0);
      }

      else
      {
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v47 = HMFGetLogIdentifier();
          v48 = [v6 nodeID];
          v49 = [v22 nodeID];
          *buf = 138543874;
          *&buf[4] = v47;
          *&buf[12] = 2112;
          *&buf[14] = v48;
          *&buf[22] = 2112;
          v122 = v49;
          _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_ERROR, "%{public}@Start firmware update attempted for the accessory with nodeID %@, but we're already targeting accessory with nodeID %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v33);
        v50 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:6];
        v7[2](v7, v50);
      }

      goto LABEL_40;
    }

    v39 = [v14 threadRadioManager];
    v40 = [v39 isFirmwareUpdateActive];

    if (v40)
    {
      v41 = objc_autoreleasePoolPush();
      v42 = v9;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = HMFGetLogIdentifier();
        v45 = [v6 nodeID];
        *buf = 138543618;
        *&buf[4] = v44;
        *&buf[12] = 2112;
        *&buf[14] = v45;
        _os_log_impl(&dword_22AEAE000, v43, OS_LOG_TYPE_ERROR, "%{public}@Cannot start firmware update for nodeID %@ while another firmware update is active", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v41);
      v46 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:9];
      v7[2](v7, v46);

      goto LABEL_39;
    }

    v51 = [v6 matterDevice];
    v52 = [v51 state] == 1;

    if (v52)
    {
      v53 = objc_autoreleasePoolPush();
      v54 = v9;
      v55 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        v56 = HMFGetLogIdentifier();
        v57 = [v6 nodeID];
        *buf = 138543618;
        *&buf[4] = v56;
        *&buf[12] = 2112;
        *&buf[14] = v57;
        _os_log_impl(&dword_22AEAE000, v55, OS_LOG_TYPE_INFO, "%{public}@Accessory server with nodeID %@ was reachable", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v53);
      [(HMMTRThreadSoftwareUpdateController *)v54 setTargetThreadAccessoryServerForFWUpdate:v6];
      v58 = [(HMMTRThreadSoftwareUpdateController *)v54 firmwareUpdateActiveTimer];
      [v58 resume];

      v7[2](v7, 0);
      goto LABEL_39;
    }

    v59 = [(HMMTRThreadSoftwareUpdateController *)v9 browser];
    v60 = [v59 isOperationAllowedForAccessoryServer:v6];

    if (v60)
    {
      if ([v6 isWEDDevice])
      {
        v61 = objc_autoreleasePoolPush();
        v62 = v9;
        v63 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          v64 = HMFGetLogIdentifier();
          v65 = [v6 nodeID];
          *buf = 138543618;
          *&buf[4] = v64;
          *&buf[12] = 2112;
          *&buf[14] = v65;
          _os_log_impl(&dword_22AEAE000, v63, OS_LOG_TYPE_INFO, "%{public}@Accessory server with nodeID %@ is WED device", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v61);
        [(HMMTRThreadSoftwareUpdateController *)v62 setTargetThreadAccessoryServerForFWUpdate:v6];
        v7[2](v7, 0);
        goto LABEL_39;
      }

      v73 = [(HMMTRThreadSoftwareUpdateController *)v9 browser];
      v74 = [v6 nodeID];
      v75 = [v73 canEstablishConnectionForNodeID:v74];

      if (v75)
      {
        v76 = [v14 threadRadioManager];
        if ([v76 isThreadNetworkConnected])
        {
          v77 = [v14 threadRadioManager];
          if (![v77 isFirmwareUpdateActive])
          {
            v99 = [v6 matterDevice];
            v100 = [v99 state] == 1;

            if (!v100)
            {
              v101 = objc_autoreleasePoolPush();
              v102 = v9;
              v103 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
              {
                v104 = HMFGetLogIdentifier();
                v105 = [v6 nodeID];
                *buf = 138543618;
                *&buf[4] = v104;
                *&buf[12] = 2112;
                *&buf[14] = v105;
                _os_log_impl(&dword_22AEAE000, v103, OS_LOG_TYPE_ERROR, "%{public}@Device is already connected to thread network, no need to transition to full router for firmware update for accessory with nodeID %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v101);
              v106 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
              v7[2](v7, v106);

              goto LABEL_39;
            }

            goto LABEL_47;
          }
        }

LABEL_47:
        v78 = [v14 threadRadioManager];
        v79 = [v78 isReadyToTransitionToFullRouterModeForFirmwareUpdate];

        if (v79)
        {
          [(HMMTRThreadSoftwareUpdateController *)v9 setTargetThreadAccessoryServerForFWUpdate:v6];
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          LOBYTE(v122) = 0;
          objc_initWeak(&location, v9);
          v112[0] = MEMORY[0x277D85DD0];
          v112[1] = 3221225472;
          v112[2] = __104__HMMTRThreadSoftwareUpdateController__attemptConnectionForFirmwareUpdateForAccessoryServer_completion___block_invoke;
          v112[3] = &unk_2786EE320;
          objc_copyWeak(&v115, &location);
          v114 = buf;
          v113 = v7;
          v80 = MEMORY[0x2318887D0](v112);
          v81 = dispatch_time(0, 1200000000000);
          v82 = [(HMMTRThreadSoftwareUpdateController *)v9 clientQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __104__HMMTRThreadSoftwareUpdateController__attemptConnectionForFirmwareUpdateForAccessoryServer_completion___block_invoke_2;
          block[3] = &unk_2786EF878;
          v83 = v80;
          v111 = v83;
          dispatch_after(v81, v82, block);

          v84 = [(HMMTRThreadSoftwareUpdateController *)v9 firmwareUpdateActiveTimer];
          [v84 resume];

          v85 = objc_autoreleasePoolPush();
          v86 = v9;
          v87 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
          {
            v88 = HMFGetLogIdentifier();
            v89 = [v6 nodeID];
            *v117 = 138543618;
            v118 = v88;
            v119 = 2112;
            v120 = v89;
            _os_log_impl(&dword_22AEAE000, v87, OS_LOG_TYPE_INFO, "%{public}@Entering full-router mode to attempt to reach accessory with nodeID %@", v117, 0x16u);
          }

          objc_autoreleasePoolPop(v85);
          v90 = [v14 threadRadioManager];
          v91 = [v6 eMACAddress];
          v92 = [v91 dataUsingEncoding:4];
          v93 = [v6 isWEDDevice];
          v107[0] = MEMORY[0x277D85DD0];
          v107[1] = 3221225472;
          v107[2] = __104__HMMTRThreadSoftwareUpdateController__attemptConnectionForFirmwareUpdateForAccessoryServer_completion___block_invoke_116;
          v107[3] = &unk_2786F0C10;
          v107[4] = v86;
          v108 = v6;
          v94 = v83;
          v109 = v94;
          [v90 startAccessoryFirmwareUpdateWithExtendedMACAddress:v92 isWedDevice:v93 completion:v107];

          objc_destroyWeak(&v115);
          objc_destroyWeak(&location);
          _Block_object_dispose(buf, 8);
          goto LABEL_39;
        }

        v66 = objc_autoreleasePoolPush();
        v67 = v9;
        v68 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          v97 = HMFGetLogIdentifier();
          v98 = [v6 nodeID];
          *buf = 138543618;
          *&buf[4] = v97;
          *&buf[12] = 2112;
          *&buf[14] = v98;
          _os_log_impl(&dword_22AEAE000, v68, OS_LOG_TYPE_ERROR, "%{public}@Cannot start firmware update for nodeID %@ due to invalid thread state", buf, 0x16u);
        }

        goto LABEL_38;
      }

      v66 = objc_autoreleasePoolPush();
      v67 = v9;
      v68 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        v95 = HMFGetLogIdentifier();
        v96 = [v6 nodeID];
        *buf = 138543618;
        *&buf[4] = v95;
        *&buf[12] = 2112;
        *&buf[14] = v96;
        _os_log_impl(&dword_22AEAE000, v68, OS_LOG_TYPE_ERROR, "%{public}@Cannot start firmware update for nodeID %@ accessory cannot be made reachable", buf, 0x16u);
      }
    }

    else
    {
      v66 = objc_autoreleasePoolPush();
      v67 = v9;
      v68 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        v69 = HMFGetLogIdentifier();
        v70 = [v6 nodeID];
        *buf = 138543618;
        *&buf[4] = v69;
        *&buf[12] = 2112;
        *&buf[14] = v70;
        _os_log_impl(&dword_22AEAE000, v68, OS_LOG_TYPE_ERROR, "%{public}@Cannot start firmware update for nodeID %@ accessory at this point in time", buf, 0x16u);
      }
    }

LABEL_38:

    objc_autoreleasePoolPop(v66);
    v71 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:6];
    v7[2](v7, v71);

LABEL_39:
    v22 = 0;
LABEL_40:

    goto LABEL_41;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = v9;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138543362;
    *&buf[4] = v26;
    _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_ERROR, "%{public}@Feature is not enabled, falling back to sending notification immediately", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v23);
  v7[2](v7, 0);
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

- (void)handleUpdateRequestedForAccessoryServer:(id)a3 completion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_browser);
  if (WeakRetained)
  {
    if (isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled())
    {
      if (![v6 accessoryLinkLayerTypeIsWifiOrEthernet])
      {
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __90__HMMTRThreadSoftwareUpdateController_handleUpdateRequestedForAccessoryServer_completion___block_invoke;
        v18[3] = &unk_2786F0C10;
        v18[4] = self;
        v19 = v6;
        v20 = v7;
        [(HMMTRThreadSoftwareUpdateController *)self _attemptConnectionForFirmwareUpdateForAccessoryServer:v19 completion:v18];

        goto LABEL_13;
      }

      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v13 = [v6 nodeID];
        *buf = 138543618;
        v22 = v12;
        v23 = 2112;
        v24 = v13;
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
      v10 = self;
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
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v6 nodeID];
      *buf = 138543618;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      v14 = "%{public}@Unable to get browser ref for handleUpdateRequestedForAccessoryServer:%@";
      v15 = v11;
      v16 = OS_LOG_TYPE_ERROR;
      goto LABEL_8;
    }
  }

  objc_autoreleasePoolPop(v9);
  (*(v7 + 2))(v7, 0);
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
  v3 = [(HMMTRThreadSoftwareUpdateController *)self targetThreadAccessoryServerForFWUpdate];

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
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
    [(HMMTRThreadSoftwareUpdateController *)v5 _cleanupFirmwareUpdateStateWithError:v9];
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

- (void)suspendOperationsForFabricUUID:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMMTRThreadSoftwareUpdateController *)self isFirmwareUpdateInProgressForFabricUUID:v4];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
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
    [(HMMTRThreadSoftwareUpdateController *)v7 _cleanupFirmwareUpdateStateWithError:v11];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Received suspendOperations, but no active fw updates in progress for fabric %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)isFirmwareUpdateInProgressForFabricUUID:(id)a3
{
  v4 = a3;
  v5 = [(HMMTRThreadSoftwareUpdateController *)self targetThreadAccessoryServerForFWUpdate];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_5;
  }

  v7 = [v5 fabricUUID];
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = v7;
  v9 = [v6 fabricUUID];
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

- (void)_cleanupFirmwareUpdateStateWithError:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMMTRThreadSoftwareUpdateController *)self targetThreadAccessoryServerForFWUpdate];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v5 nodeID];
    *buf = 138543874;
    v24 = v9;
    v25 = 2112;
    v26 = v10;
    v27 = 2112;
    v28 = v4;
    _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Cleaning up firmware update state - current target accessory nodeID = %@, error = %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMMTRThreadSoftwareUpdateController *)v7 firmwareUpdateActiveTimer];
  [v11 suspend];

  [(HMMTRThreadSoftwareUpdateController *)v7 setTargetThreadAccessoryServerForFWUpdate:0];
  v12 = [(HMMTRThreadSoftwareUpdateController *)v7 reachabilityObserver];
  [v12 stopObservingReachabilityWithError:v4];

  v13 = [(HMMTRThreadSoftwareUpdateController *)v7 browser];
  v14 = [v13 threadRadioManager];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __76__HMMTRThreadSoftwareUpdateController__cleanupFirmwareUpdateStateWithError___block_invoke;
  v22[3] = &unk_2786EF290;
  v22[4] = v7;
  [v14 stopAccessoryFirmwareUpdateWithCompletion:v22];

  if (v4 && v5)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v7;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v5 nodeID];
      *buf = 138543874;
      v24 = v18;
      v25 = 2112;
      v26 = v19;
      v27 = 2112;
      v28 = v4;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@Resetting firmware update to unknown for current target accessory nodeID = %@, error = %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v20 = [v5 matterFirmwareUpdateStatus];
    [v20 updateFirmwareUpdateStatus:0];
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

- (HMMTRThreadSoftwareUpdateController)initWithQueue:(id)a3 browser:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = HMMTRThreadSoftwareUpdateController;
  v9 = [(HMMTRThreadSoftwareUpdateController *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientQueue, a3);
    objc_storeWeak(&v10->_browser, v8);
    v11 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:1800.0];
    firmwareUpdateActiveTimer = v10->_firmwareUpdateActiveTimer;
    v10->_firmwareUpdateActiveTimer = v11;

    [(HMFTimer *)v10->_firmwareUpdateActiveTimer setDelegateQueue:v7];
    [(HMFTimer *)v10->_firmwareUpdateActiveTimer setDelegate:v10];
    v13 = [[HMMTRAccessoryReachabilityObserver alloc] initWithQueue:v7];
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