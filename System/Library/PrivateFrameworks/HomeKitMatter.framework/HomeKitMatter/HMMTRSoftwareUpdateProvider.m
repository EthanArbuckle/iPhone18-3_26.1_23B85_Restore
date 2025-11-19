@interface HMMTRSoftwareUpdateProvider
+ (id)logCategory;
- (BOOL)canEstablishConnectionForNodeID:(id)a3;
- (HMMTRAccessoryServerBrowser)browser;
- (HMMTRSoftwareUpdateProvider)initWithQueue:(id)a3 browser:(id)a4;
- (HMMTRSoftwareUpdateProviderDelegate)delegate;
- (void)notifyDelegateCheckFirmwareUpdateSessionWithPairing:(id)a3 completionHandler:(id)a4;
- (void)notifyDelegateOfApplyUpdateWithPairing:(id)a3 requestParams:(id)a4 completionHandler:(id)a5;
- (void)notifyDelegateOfNotifyUpdateWithPairing:(id)a3 params:(id)a4 completionHandler:(id)a5;
- (void)notifyUpdateRequestedForNodeID:(id)a3 isUserTriggered:(BOOL)a4 isRetry:(BOOL)a5;
- (void)triggerQueryImageWithPairing:(id)a3 accessoryInitiated:(BOOL)a4 requestParams:(id)a5 completionHandler:(id)a6;
- (void)updateOTAProviderStateForNodeID:(id)a3 otaProviderState:(int64_t)a4;
@end

@implementation HMMTRSoftwareUpdateProvider

- (HMMTRAccessoryServerBrowser)browser
{
  WeakRetained = objc_loadWeakRetained(&self->_browser);

  return WeakRetained;
}

- (HMMTRSoftwareUpdateProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)canEstablishConnectionForNodeID:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browser);
  v6 = WeakRetained;
  if (!WeakRetained)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v4;
      v12 = "%{public}@Unable to get browser ref for canEstablishConnectionForNodeID:%@";
      v13 = v10;
      v14 = 22;
LABEL_8:
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_ERROR, v12, &v17, v14);
    }

LABEL_9:

    objc_autoreleasePoolPop(v8);
    v7 = 0;
    goto LABEL_10;
  }

  if (([WeakRetained isCurrentDeviceAllowedAccessoryControlDespiteReachableResident] & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v11;
      v12 = "%{public}@OTA request should be coming through resident";
      v13 = v10;
      v14 = 12;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v7 = [v6 canEstablishConnectionForNodeID:v4];
LABEL_10:

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)updateOTAProviderStateForNodeID:(id)a3 otaProviderState:(int64_t)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HAPOTAProviderStateAsString();
    v27 = 138543874;
    v28 = v10;
    v29 = 2112;
    v30 = v11;
    v31 = 2112;
    v32 = v6;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@HK informed to update OTA provider state to:%@, for nodeID: %@", &v27, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  WeakRetained = objc_loadWeakRetained(&v8->_browser);
  if (!WeakRetained)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = v8;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v27 = 138543618;
      v28 = v20;
      v29 = 2112;
      v30 = v6;
      v21 = "%{public}@Unable to get browser ref for updateOTAProviderStateForNodeID:%@";
LABEL_13:
      _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_ERROR, v21, &v27, 0x16u);
    }

LABEL_14:

    objc_autoreleasePoolPop(v17);
    goto LABEL_19;
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && !CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
  {
    goto LABEL_19;
  }

  v13 = [WeakRetained accessoryServerWithNodeID:v6];
  if (!v13)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = v8;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v27 = 138543618;
      v28 = v20;
      v29 = 2112;
      v30 = v6;
      v21 = "%{public}@Could not associate with a paired accessory for updateOTAProviderStateForNodeID:%@";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v14 = v13;
  v15 = [v13 matterFirmwareUpdateStatus];
  if (v15)
  {
    v16 = [v14 matterFirmwareUpdateStatus];
    [v16 updateFirmwareUpdateStatus:a4];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v8;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v27 = 138543618;
      v28 = v25;
      v29 = 2112;
      v30 = v6;
      _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_ERROR, "%{public}@MatterFirmwareUpdateStatus instance not found for nodeID:%@", &v27, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
  }

LABEL_19:
  v26 = *MEMORY[0x277D85DE8];
}

- (void)notifyUpdateRequestedForNodeID:(id)a3 isUserTriggered:(BOOL)a4 isRetry:(BOOL)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browser);
  v10 = WeakRetained;
  if (!WeakRetained)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v16;
      v32 = 2112;
      v33 = v8;
      v17 = "%{public}@Unable to get browser ref for notifyUpdateRequestedForNodeID:%@";
      v18 = v15;
      v19 = OS_LOG_TYPE_ERROR;
      v20 = 22;
LABEL_9:
      _os_log_impl(&dword_22AEAE000, v18, v19, v17, buf, v20);
    }

LABEL_10:

    objc_autoreleasePoolPop(v13);
    goto LABEL_15;
  }

  if (!a4)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v16;
      v17 = "%{public}@Ignoring announcement request for automatic software updates";
      v18 = v15;
      v19 = OS_LOG_TYPE_INFO;
      v20 = 12;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v11 = [WeakRetained accessoryServerWithNodeID:v8];
  if (v11)
  {
    v12 = [v10 threadSoftwareUpdateController];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __86__HMMTRSoftwareUpdateProvider_notifyUpdateRequestedForNodeID_isUserTriggered_isRetry___block_invoke;
    v26[3] = &unk_2786EE8C0;
    v26[4] = self;
    v27 = v8;
    v28 = v10;
    v29 = a5;
    [v12 handleUpdateRequestedForAccessoryServer:v11 completion:v26];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v24;
      v32 = 2112;
      v33 = v8;
      _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_ERROR, "%{public}@Could not associate with a paired accessory for notifyUpdateRequestedForNodeID:%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
  }

LABEL_15:
  v25 = *MEMORY[0x277D85DE8];
}

void __86__HMMTRSoftwareUpdateProvider_notifyUpdateRequestedForNodeID_isUserTriggered_isRetry___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
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
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@Unable to send update available announcement to the accessory with nodeID:%@ %@", &v10, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    [*(a1 + 48) announceOtaProviderForNodeID:*(a1 + 40) isRetry:*(a1 + 56)];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)notifyDelegateCheckFirmwareUpdateSessionWithPairing:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMMTRSoftwareUpdateProvider *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__HMMTRSoftwareUpdateProvider_notifyDelegateCheckFirmwareUpdateSessionWithPairing_completionHandler___block_invoke;
  block[3] = &unk_2786F0EA8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __101__HMMTRSoftwareUpdateProvider_notifyDelegateCheckFirmwareUpdateSessionWithPairing_completionHandler___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];

  if (!v2)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v9;
      v10 = "%{public}@Software update delegate is not set";
LABEL_9:
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_ERROR, v10, &v19, 0xCu);
    }

LABEL_10:

    objc_autoreleasePoolPop(v6);
    v11 = *(a1 + 48);
    v3 = [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    (*(v11 + 16))(v11, v3);
    goto LABEL_14;
  }

  if (!*(a1 + 40))
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v9;
      v10 = "%{public}@Pairing info is nil";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v3 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) clientQueue];
    [v3 notifyCheckFirmwareUpdateSessionWithPairing:v4 queue:v5 completionHandler:*(a1 + 48)];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v15;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not respond to selector", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v16 = *(a1 + 48);
    v17 = [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    (*(v16 + 16))(v16, v17);
  }

LABEL_14:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)notifyDelegateOfNotifyUpdateWithPairing:(id)a3 params:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMMTRSoftwareUpdateProvider *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __96__HMMTRSoftwareUpdateProvider_notifyDelegateOfNotifyUpdateWithPairing_params_completionHandler___block_invoke;
  v15[3] = &unk_2786EFA60;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __96__HMMTRSoftwareUpdateProvider_notifyDelegateOfNotifyUpdateWithPairing_params_completionHandler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];

  if (!v2)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v10;
      v11 = "%{public}@Software update delegate is not set";
LABEL_9:
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, v11, &v20, 0xCu);
    }

LABEL_10:

    objc_autoreleasePoolPop(v7);
    v12 = *(a1 + 56);
    v3 = [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    (*(v12 + 16))(v12, v3);
    goto LABEL_14;
  }

  if (!*(a1 + 40))
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v10;
      v11 = "%{public}@Pairing info is nil";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v3 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = [*(a1 + 32) clientQueue];
    [v3 notifyUpdateWithPairing:v5 params:v4 queue:v6 completionHandler:*(a1 + 56)];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v16;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not respond to selector", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v17 = *(a1 + 56);
    v18 = [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    (*(v17 + 16))(v17, v18);
  }

LABEL_14:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)notifyDelegateOfApplyUpdateWithPairing:(id)a3 requestParams:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMMTRSoftwareUpdateProvider *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __102__HMMTRSoftwareUpdateProvider_notifyDelegateOfApplyUpdateWithPairing_requestParams_completionHandler___block_invoke;
  v15[3] = &unk_2786EFA60;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __102__HMMTRSoftwareUpdateProvider_notifyDelegateOfApplyUpdateWithPairing_requestParams_completionHandler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];

  if (!v2)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v10;
      v11 = "%{public}@Software update delegate is not set";
LABEL_9:
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, v11, &v20, 0xCu);
    }

LABEL_10:

    objc_autoreleasePoolPop(v7);
    v12 = *(a1 + 56);
    v3 = [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    (*(v12 + 16))(v12, 0, v3);
    goto LABEL_14;
  }

  if (!*(a1 + 40))
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v10;
      v11 = "%{public}@Pairing info is nil";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v3 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = [*(a1 + 32) clientQueue];
    [v3 applyUpdateWithPairing:v5 requestParams:v4 queue:v6 completionHandler:*(a1 + 56)];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v16;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not respond to selector", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v17 = *(a1 + 56);
    v18 = [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    (*(v17 + 16))(v17, 0, v18);
  }

LABEL_14:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)triggerQueryImageWithPairing:(id)a3 accessoryInitiated:(BOOL)a4 requestParams:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v31 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543618;
    v28 = v16;
    v29 = 1024;
    v30 = v8;
    _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@triggerQueryImageWithPairing method is called and accessoryInitiated is %d", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v13);
  v17 = [(HMMTRSoftwareUpdateProvider *)v14 clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __111__HMMTRSoftwareUpdateProvider_triggerQueryImageWithPairing_accessoryInitiated_requestParams_completionHandler___block_invoke;
  block[3] = &unk_2786EF8F0;
  block[4] = v14;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v26 = v8;
  v18 = v11;
  v19 = v12;
  v20 = v10;
  dispatch_async(v17, block);

  v21 = *MEMORY[0x277D85DE8];
}

void __111__HMMTRSoftwareUpdateProvider_triggerQueryImageWithPairing_accessoryInitiated_requestParams_completionHandler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];

  if (!v2)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v10;
      v11 = "%{public}@Software update delegate is not set";
LABEL_9:
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, v11, &v20, 0xCu);
    }

LABEL_10:

    objc_autoreleasePoolPop(v7);
    v12 = *(a1 + 56);
    v3 = [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    (*(v12 + 16))(v12, 0, v3);
    goto LABEL_14;
  }

  if (!*(a1 + 40))
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v10;
      v11 = "%{public}@Pairing info is nil";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v3 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = [*(a1 + 32) clientQueue];
    [v3 queryImageWithPairing:v5 requestParams:v4 queue:v6 accessoryInitiated:*(a1 + 64) completionHandler:*(a1 + 56)];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v16;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not respond to selector", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v17 = *(a1 + 56);
    v18 = [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    (*(v17 + 16))(v17, 0, v18);
  }

LABEL_14:

  v19 = *MEMORY[0x277D85DE8];
}

- (HMMTRSoftwareUpdateProvider)initWithQueue:(id)a3 browser:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMMTRSoftwareUpdateProvider;
  v9 = [(HMMTRSoftwareUpdateProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientQueue, a3);
    objc_storeWeak(&v10->_browser, v8);
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t23 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t23, &__block_literal_global_8451);
  }

  v3 = logCategory__hmf_once_v24;

  return v3;
}

uint64_t __42__HMMTRSoftwareUpdateProvider_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v24;
  logCategory__hmf_once_v24 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end