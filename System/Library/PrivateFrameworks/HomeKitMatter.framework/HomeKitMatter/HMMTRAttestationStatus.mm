@interface HMMTRAttestationStatus
- (HMMTRAccessoryServer)accessoryServer;
- (HMMTRAttestationStatus)initWithQueue:(id)queue uiDialogPresenter:(id)presenter failSafeExpiryTimeoutSecs:(id)secs;
- (void)_requestUserPermissionForBridgeAccessory:(id)accessory completionHandler:(id)handler;
- (void)deviceAttestationCompletedForController:(id)controller opaqueDeviceHandle:(void *)handle attestationDeviceInfo:(id)info error:(id)error;
- (void)populateDelegate:(id)delegate;
@end

@implementation HMMTRAttestationStatus

- (HMMTRAccessoryServer)accessoryServer
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryServer);

  return WeakRetained;
}

- (void)populateDelegate:(id)delegate
{
  failSafeExpiryTimeoutSecs = self->_failSafeExpiryTimeoutSecs;
  delegateCopy = delegate;
  [delegateCopy setFailSafeExpiryTimeoutSecs:failSafeExpiryTimeoutSecs];
  [delegateCopy setDeviceAttestationDelegate:self];
}

- (void)deviceAttestationCompletedForController:(id)controller opaqueDeviceHandle:(void *)handle attestationDeviceInfo:(id)info error:(id)error
{
  controllerCopy = controller;
  infoCopy = info;
  errorCopy = error;
  clientQueue = [(HMMTRAttestationStatus *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __113__HMMTRAttestationStatus_deviceAttestationCompletedForController_opaqueDeviceHandle_attestationDeviceInfo_error___block_invoke;
  block[3] = &unk_2786F0A30;
  block[4] = self;
  v18 = errorCopy;
  v20 = infoCopy;
  handleCopy = handle;
  v19 = controllerCopy;
  v14 = infoCopy;
  v15 = controllerCopy;
  v16 = errorCopy;
  dispatch_async(clientQueue, block);
}

void __113__HMMTRAttestationStatus_deviceAttestationCompletedForController_opaqueDeviceHandle_attestationDeviceInfo_error___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v45 = v5;
    v46 = 2112;
    v47 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Device attestation completed for device under commissioning. Error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) accessoryServer];
  if (v7)
  {
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __113__HMMTRAttestationStatus_deviceAttestationCompletedForController_opaqueDeviceHandle_attestationDeviceInfo_error___block_invoke_9;
    v41[3] = &unk_2786F0918;
    v41[4] = *(a1 + 32);
    v8 = *(a1 + 48);
    v9 = *(a1 + 64);
    v42 = v8;
    v43 = v9;
    v10 = MEMORY[0x2318887D0](v41);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __113__HMMTRAttestationStatus_deviceAttestationCompletedForController_opaqueDeviceHandle_attestationDeviceInfo_error___block_invoke_11;
    v37[3] = &unk_2786F0968;
    v11 = *(a1 + 40);
    v12 = *(a1 + 32);
    v38 = v11;
    v39 = v12;
    v13 = v10;
    v40 = v13;
    v14 = MEMORY[0x2318887D0](v37);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __113__HMMTRAttestationStatus_deviceAttestationCompletedForController_opaqueDeviceHandle_attestationDeviceInfo_error___block_invoke_15;
    v35[3] = &unk_2786F09B8;
    v35[4] = *(a1 + 32);
    v15 = v14;
    v36 = v15;
    v16 = MEMORY[0x2318887D0](v35);
    [v7 updateVidPidWithAttestationDeviceInfo:*(a1 + 56)];
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v20;
      v46 = 2112;
      v47 = v7;
      _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, "%{public}@Validating device attestation through accessory server: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = *(a1 + 56);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __113__HMMTRAttestationStatus_deviceAttestationCompletedForController_opaqueDeviceHandle_attestationDeviceInfo_error___block_invoke_18;
    v30[3] = &unk_2786F0A08;
    v22 = *(a1 + 40);
    v30[4] = *(a1 + 32);
    v31 = v22;
    v33 = v16;
    v32 = v7;
    v34 = v15;
    v23 = v15;
    v24 = v16;
    [v32 validateAttestationDeviceInfo:v21 error:v31 completion:v30];
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = *(a1 + 32);
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v28;
      _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_INFO, "%{public}@Accessory server was purged by the time device attestation completed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __113__HMMTRAttestationStatus_deviceAttestationCompletedForController_opaqueDeviceHandle_attestationDeviceInfo_error___block_invoke_9(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = v12;
    v14 = "NO";
    if (a3)
    {
      v14 = "YES";
    }

    *buf = 138543618;
    v25 = v12;
    v26 = 2080;
    v27 = v14;
    _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@Continuing commissioning with ignore attestation failure: %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v23 = 0;
  [v15 continueCommissioningDevice:v16 ignoreAttestationFailure:a3 error:&v23];
  v17 = v23;
  if (v17)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 32);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v21;
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_ERROR, "%{public}@Continue commissioning device failed: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
  }

  [v7 handleAttestationComplete];

  v22 = *MEMORY[0x277D85DE8];
}

void __113__HMMTRAttestationStatus_deviceAttestationCompletedForController_opaqueDeviceHandle_attestationDeviceInfo_error___block_invoke_11(uint64_t a1, void *a2, int a3, void *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  [v7 setCertified:*(a1 + 32) == 0];
  v9 = *(a1 + 32);
  if (!v8 || v9 || (a3 & 1) != 0)
  {
    if ((!v9 || a3) && ([v7 category], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqual:", &unk_283EE8FB8), v15, v16))
    {
      v17 = [v7 name];
      objc_initWeak(buf, v7);
      v18 = *(a1 + 40);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __113__HMMTRAttestationStatus_deviceAttestationCompletedForController_opaqueDeviceHandle_attestationDeviceInfo_error___block_invoke_14;
      v24[3] = &unk_2786F0940;
      objc_copyWeak(&v27, buf);
      v24[4] = *(a1 + 40);
      v26 = *(a1 + 48);
      v28 = a3;
      v25 = v8;
      [v18 _requestUserPermissionForBridgeAccessory:v17 completionHandler:v24];

      objc_destroyWeak(&v27);
      objc_destroyWeak(buf);
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 40);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v30 = v22;
        _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_INFO, "%{public}@Continue commissioning.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 40);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v13;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@Device attestation was rejected. Aborting.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:6 error:v8];
    [v7 abortStagingWithError:v8 context:v14];
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __113__HMMTRAttestationStatus_deviceAttestationCompletedForController_opaqueDeviceHandle_attestationDeviceInfo_error___block_invoke_15(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 hasPriorSuccessfulPairing])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v10;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Accessory server has prior successful pairing, skipping user permission dialog for unauthorized accessory", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11 = [v5 name];
    [v5 notifyDelegateOfUnauthenticatedAccessoryPromptStarted];
    objc_initWeak(buf, v5);
    v12 = [*(a1 + 32) uiDialogPresenter];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __113__HMMTRAttestationStatus_deviceAttestationCompletedForController_opaqueDeviceHandle_attestationDeviceInfo_error___block_invoke_16;
    v15[3] = &unk_2786F0990;
    objc_copyWeak(&v18, buf);
    v13 = *(a1 + 40);
    v15[4] = *(a1 + 32);
    v17 = v13;
    v16 = v6;
    [v12 requestUserPermissionForUnauthenticatedAccessory:v11 completionHandler:v15];

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __113__HMMTRAttestationStatus_deviceAttestationCompletedForController_opaqueDeviceHandle_attestationDeviceInfo_error___block_invoke_18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) clientQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __113__HMMTRAttestationStatus_deviceAttestationCompletedForController_opaqueDeviceHandle_attestationDeviceInfo_error___block_invoke_2;
  v13[3] = &unk_2786F09E0;
  v5 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v3;
  v6 = v5;
  v7 = *(a1 + 56);
  v8 = *(a1 + 48);
  v9 = *(a1 + 64);
  *&v10 = v7;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v8;
  v15 = v11;
  v16 = v10;
  v12 = v3;
  dispatch_async(v4, v13);
}

uint64_t __113__HMMTRAttestationStatus_deviceAttestationCompletedForController_opaqueDeviceHandle_attestationDeviceInfo_error___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v10 = 138543618;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Accessory server validated attestation device info with error: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 56);
  if (*(a1 + 40) == 0)
  {
    result = (*(*(a1 + 72) + 16))();
  }

  else
  {
    result = (*(*(a1 + 64) + 16))();
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void __113__HMMTRAttestationStatus_deviceAttestationCompletedForController_opaqueDeviceHandle_attestationDeviceInfo_error___block_invoke_16(uint64_t a1, int a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained notifyDelegateOfUnauthenticatedAccessoryPromptEnded];
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    v11 = v10;
    if (v5)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v22 = 138543362;
        v23 = v12;
        _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unexpected, got an error response for user permission for unauthorized accessory. Fail pairing.", &v22, 0xCu);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v17 = HMFGetLogIdentifier();
      v18 = v17;
      v19 = "NO";
      if (a2)
      {
        v19 = "YES";
      }

      v22 = 138543618;
      v23 = v17;
      v24 = 2080;
      v25 = v19;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_DEBUG, "%{public}@User selection for unauthorized accessory. Should cancel : %s", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v20 = *(a1 + 40);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v16;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@Accessory server purged by the time user responded", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __113__HMMTRAttestationStatus_deviceAttestationCompletedForController_opaqueDeviceHandle_attestationDeviceInfo_error___block_invoke_14(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (a2)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 32);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v10;
        _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Device commissioning was rejected.", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
      if (!v5)
      {
        v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:12 userInfo:0];
      }

      v11 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:6 error:v5];
      [WeakRetained abortStagingWithError:v5 context:v11];
    }

    else
    {
      v16 = *(a1 + 64);
      v17 = *(a1 + 40);
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v15;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Accessory server already purged by the time user responded", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_requestUserPermissionForBridgeAccessory:(id)accessory completionHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v32 = v11;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@HMMTRAttestationStatus: _requestUserPermissionForBridgeAccessory", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  userAuthorizationDelegate = [(HMMTRAttestationStatus *)selfCopy userAuthorizationDelegate];

  v13 = objc_autoreleasePoolPush();
  v14 = selfCopy;
  v15 = HMFGetOSLogHandle();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
  if (userAuthorizationDelegate)
  {
    if (v16)
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v17;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_ERROR, "%{public}@HMMTRAttestationStatus: _requestUserPermissionForBridgeAccessory - delegate set", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    userAuthorizationDelegate2 = [(HMMTRAttestationStatus *)v14 userAuthorizationDelegate];
    v19 = objc_opt_respondsToSelector();
    v20 = objc_autoreleasePoolPush();
    v21 = v14;
    v22 = HMFGetOSLogHandle();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      if (v23)
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        v32 = v24;
        _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_ERROR, "%{public}@HMMTRAttestationStatus: _requestUserPermissionForBridgeAccessory - calling delegate", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      accessoryServer = [(HMMTRAttestationStatus *)v21 accessoryServer];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __85__HMMTRAttestationStatus__requestUserPermissionForBridgeAccessory_completionHandler___block_invoke;
      v29[3] = &unk_2786F08F0;
      v29[4] = v21;
      v30 = handlerCopy;
      [userAuthorizationDelegate2 requestUserPermissionForBridgeAccessory:accessoryServer completionHandler:v29];
    }

    else
    {
      if (v23)
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543362;
        v32 = v27;
        _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not respond to selector", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      accessoryServer = [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      (*(handlerCopy + 2))(handlerCopy, 1, accessoryServer);
    }
  }

  else
  {
    if (v16)
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v26;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_ERROR, "%{public}@User Authorization delegate is not set", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __85__HMMTRAttestationStatus__requestUserPermissionForBridgeAccessory_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v10;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unexpected, got an error response for user permission for bridge accessory. Fail pairing.", &v15, 0xCu);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v12 = v11;
    v13 = "NO";
    if (a2)
    {
      v13 = "YES";
    }

    v15 = 138543618;
    v16 = v11;
    v17 = 2080;
    v18 = v13;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_DEBUG, "%{public}@User selection for bridge accessory. Should cancel : %s", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  (*(*(a1 + 40) + 16))();

  v14 = *MEMORY[0x277D85DE8];
}

- (HMMTRAttestationStatus)initWithQueue:(id)queue uiDialogPresenter:(id)presenter failSafeExpiryTimeoutSecs:(id)secs
{
  queueCopy = queue;
  presenterCopy = presenter;
  secsCopy = secs;
  v15.receiver = self;
  v15.super_class = HMMTRAttestationStatus;
  v12 = [(HMMTRAttestationStatus *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_failSafeExpiryTimeoutSecs, secs);
    objc_storeStrong(&v13->_clientQueue, queue);
    objc_storeStrong(&v13->_uiDialogPresenter, presenter);
  }

  return v13;
}

@end