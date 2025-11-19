@interface HMDAccessorySetupManager
+ (id)logCategory;
- (HMDAccessorySetupManager)initWithWorkQueue:(id)a3 homeManager:(id)a4;
- (HMDAccessorySetupManager)initWithWorkQueue:(id)a3 homeManager:(id)a4 xpcMessageTransport:(id)a5 messageDispatcher:(id)a6 alertHandleProvider:(id)a7 nfcEventListener:(id)a8;
- (HMDHomeManager)homeManager;
- (HMDXPCClientConnection)accessorySetupHostClientConnection;
- (id)_accessorySetupResultFromCompletedInfo:(id)a3 clientIdentifierSalt:(id)a4;
- (id)_createSetupAccessoryPayloadWithSetupPayloadURL:(id)a3 error:(id *)a4;
- (id)_setupRequestBlockingPairedAccessoriesForHome:(id)a3;
- (void)_finishAccessorySetupWithSetupCompletedInfo:(id)a3 setupError:(id)a4;
- (void)_handleFailAccessorySetupMessage:(id)a3;
- (void)_handleFinishAccessorySetupMessage:(id)a3;
- (void)_handlePerformAccessorySetupMessage:(id)a3;
- (void)_handleResumeAccessorySetupMessage:(id)a3;
- (void)_launchHUISWithNFCProxSetupURL:(id)a3;
- (void)_launchHUISWithRequest:(id)a3 connection:(id)a4 completionHandler:(id)a5;
- (void)_launchHUISWithSetupAccessoryDescription:(id)a3 deviceSetupRequest:(id)a4 resumeSetupUserInfo:(id)a5 completionHandler:(id)a6;
- (void)_updateAccessoryDescription:(id)a3 usingConnection:(id)a4;
- (void)configure;
- (void)handleNFCProxSetupNotification:(id)a3;
- (void)launchAccessorySetupHostToPerformMatterDeviceSetupWithRequest:(id)a3 clientProxy:(id)a4 completionHandler:(id)a5;
- (void)launchAccessorySetupHostToRequestSetupCodeForAccessoryWithUUID:(id)a3 accessoryName:(id)a4 homeUUID:(id)a5 clientConnection:(id)a6 completionHandler:(id)a7;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
@end

@implementation HMDAccessorySetupManager

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessorySetupManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HMDAccessorySetupManager_remoteAlertHandle_didInvalidateWithError___block_invoke;
  block[3] = &unk_279734960;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __69__HMDAccessorySetupManager_remoteAlertHandle_didInvalidateWithError___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) alertHandle];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 40);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v2 == v3)
  {
    if (v7)
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 32);
      v13 = *(a1 + 48);
      v18 = 138543874;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Alert handle %@ did invalidate: %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v14 = [*(a1 + 40) pendingAccessorySetupCompletionHandler];

    if (v14)
    {
      v15 = *(a1 + 40);
      v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
      [v15 _finishAccessorySetupWithSetupCompletedInfo:0 setupError:v16];
    }

    [*(a1 + 40) setAlertHandle:0];
  }

  else
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 32);
      v10 = *(a1 + 48);
      v18 = 138543874;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Received alert handle did invalidate for unexpected handle %@: %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessorySetupManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HMDAccessorySetupManager_remoteAlertHandleDidDeactivate___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __59__HMDAccessorySetupManager_remoteAlertHandleDidDeactivate___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) alertHandle];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 40);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v2 == v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 32);
      v17 = 138543618;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Alert handle %@ did deactivate. This can happen when screen is turned off by user", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v12 = [*(a1 + 40) pendingAccessorySetupCompletionHandler];

    if (v12)
    {
      v13 = *(a1 + 40);
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
      [v13 _finishAccessorySetupWithSetupCompletedInfo:0 setupError:v14];
    }

    v15 = [*(a1 + 40) alertHandle];
    [v15 invalidate];

    [*(a1 + 40) setAlertHandle:0];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 32);
      v17 = 138543618;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Received alert handle did deactivate for unexpected handle %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessorySetupManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HMDAccessorySetupManager_remoteAlertHandleDidActivate___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __57__HMDAccessorySetupManager_remoteAlertHandleDidActivate___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) alertHandle];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 40);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v2 == v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v13 = *(a1 + 32);
      v15 = 138543618;
      v16 = v8;
      v17 = 2112;
      v18 = v13;
      v10 = "%{public}@Alert handle %@ did activate";
      v11 = v7;
      v12 = OS_LOG_TYPE_INFO;
      goto LABEL_6;
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    v9 = *(a1 + 32);
    v15 = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    v10 = "%{public}@Received alert handle did activate for unexpected handle %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_ERROR;
LABEL_6:
    _os_log_impl(&dword_2531F8000, v11, v12, v10, &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleNFCProxSetupNotification:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v27 = v8;
    v28 = 2112;
    v29 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 userInfo];
  v10 = [v9 objectForKeyedSubscript:@"HMDNFCPayload"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    v13 = [MEMORY[0x277CD17C8] setupPayloadURLFromSetupPayloadURLString:v12];
    if (v13)
    {
      v14 = [(HMDAccessorySetupManager *)v6 workQueue];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __59__HMDAccessorySetupManager_handleNFCProxSetupNotification___block_invoke;
      v24[3] = &unk_2797359B0;
      v24[4] = v6;
      v25 = v13;
      dispatch_async(v14, v24);
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = v6;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543618;
        v27 = v22;
        v28 = 2112;
        v29 = v12;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to convert URL string to URL: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v6;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Prox setup notification did not have expected URL string", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_handleFailAccessorySetupMessage:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessorySetupManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 errorForKey:*MEMORY[0x277CCEEB8]];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Failing accessory setup with setupError: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDAccessorySetupManager *)v8 _finishAccessorySetupWithSetupCompletedInfo:0 setupError:v6];
    [v4 respondWithSuccess];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v4 messagePayload];
      v16 = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not find setup error in message payload: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [v4 respondWithError:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleFinishAccessorySetupMessage:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessorySetupManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *MEMORY[0x277CCEEB0];
  v18[0] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v8 = [v4 unarchivedObjectForKey:v6 ofClasses:v7];

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v12;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Finishing accessory setup with accessorySetupCompletedInfo: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDAccessorySetupManager *)v10 _finishAccessorySetupWithSetupCompletedInfo:v8 setupError:0];
  [v4 respondWithSuccess];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleResumeAccessorySetupMessage:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessorySetupManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 dictionaryForKey:*MEMORY[0x277CCEED0]];
  if (v6)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __63__HMDAccessorySetupManager__handleResumeAccessorySetupMessage___block_invoke;
    v14[3] = &unk_279721A10;
    v15 = v4;
    [(HMDAccessorySetupManager *)self _launchHUISWithSetupAccessoryDescription:0 deviceSetupRequest:0 resumeSetupUserInfo:v6 completionHandler:v14];
    v7 = v15;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v4 messagePayload];
      *buf = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not find resume accessory setup user info in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [v4 respondWithError:v7];
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __63__HMDAccessorySetupManager__handleResumeAccessorySetupMessage___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 respondWithSuccess];
  }

  else
  {
    return [v2 respondWithError:?];
  }
}

- (void)_handlePerformAccessorySetupMessage:(id)a3
{
  v32[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessorySetupManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v29 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Performing accessory setup", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = *MEMORY[0x277CCEEC0];
  v32[0] = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
  v12 = [v4 unarchivedObjectForKey:v10 ofClasses:v11];

  if (v12)
  {
    v13 = [v4 proxyConnection];
    if (v13)
    {
      v14 = v13;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __64__HMDAccessorySetupManager__handlePerformAccessorySetupMessage___block_invoke;
      v26[3] = &unk_2797219E8;
      v26[4] = v7;
      v27 = v4;
      [(HMDAccessorySetupManager *)v7 _launchHUISWithRequest:v12 connection:v14 completionHandler:v26];
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = v7;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543618;
        v29 = v23;
        v30 = 2112;
        v31 = v4;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Could not find proxy connection for message: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [v4 respondWithError:v24];

      v14 = 0;
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v7;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v4 messagePayload];
      *buf = 138543618;
      v29 = v18;
      v30 = 2112;
      v31 = v19;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Could not find request in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [v4 respondWithError:v14];
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __64__HMDAccessorySetupManager__handlePerformAccessorySetupMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v14 = *MEMORY[0x277CCEEC8];
    v7 = encodeRootObject();
    v15 = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];

    [*(a1 + 40) respondWithPayload:{v8, v14}];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to perform accessory setup: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [*(a1 + 40) respondWithError:v6];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_accessorySetupResultFromCompletedInfo:(id)a3 clientIdentifierSalt:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CCAD78];
  v7 = a3;
  v8 = [v6 alloc];
  v9 = [v7 homeUUID];
  v10 = [v8 initWithUUIDString:v9];
  v11 = [(objc_class *)v6 hm_deriveUUIDFromBaseUUID:v10 identifierSalt:v5];

  v12 = [v7 addedAccessoryUUIDs];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __88__HMDAccessorySetupManager__accessorySetupResultFromCompletedInfo_clientIdentifierSalt___block_invoke;
  v17[3] = &unk_2797219C0;
  v18 = v5;
  v13 = v5;
  v14 = [v12 na_map:v17];

  v15 = [objc_alloc(MEMORY[0x277CD17E0]) initWithHomeUniqueIdentifier:v11 accessoryUniqueIdentifiers:v14];

  return v15;
}

id __88__HMDAccessorySetupManager__accessorySetupResultFromCompletedInfo_clientIdentifierSalt___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAD78];
  v4 = a2;
  v5 = [[v3 alloc] initWithUUIDString:v4];

  v6 = [MEMORY[0x277CCAD78] hm_deriveUUIDFromBaseUUID:v5 identifierSalt:*(a1 + 32)];

  return v6;
}

- (void)_finishAccessorySetupWithSetupCompletedInfo:(id)a3 setupError:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessorySetupManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(HMDAccessorySetupManager *)self pendingAccessorySetupCompletionHandler];
  if (v9)
  {
    [(HMDAccessorySetupManager *)self setPendingAccessorySetupCompletionHandler:0];
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [(HMDAccessorySetupManager *)v11 alertHandle];
      v22 = 138543618;
      v23 = v13;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Invalidating remote alert: %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = [(HMDAccessorySetupManager *)v11 alertHandle];
    [v15 unregisterObserver:v11];

    v16 = [(HMDAccessorySetupManager *)v11 alertHandle];
    [v16 invalidate];

    [(HMDAccessorySetupManager *)v11 setAlertHandle:0];
    (v9)[2](v9, v6, v7);
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Cannot finish accessory setup because no pending completion handler exists", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_launchHUISWithSetupAccessoryDescription:(id)a3 deviceSetupRequest:(id)a4 resumeSetupUserInfo:(id)a5 completionHandler:(id)a6
{
  v71 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDAccessorySetupManager *)self workQueue];
  dispatch_assert_queue_V2(v14);

  if (!v10 && !v11 && !v12)
  {
    _HMFPreconditionFailure();
  }

  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v61 = 138544130;
    v62 = v18;
    v63 = 2112;
    v64 = v10;
    v65 = 2112;
    v66 = *&v11;
    v67 = 2112;
    v68 = v12;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Launching HomeUIService with setupAccessoryDescription: %@ deviceSetupRequest: %@ resumeSetupUserInfo: %@", &v61, 0x2Au);
  }

  objc_autoreleasePoolPop(v15);
  [v10 setDoNetworkScan:{objc_msgSend(v11, "shouldScanNetworks")}];
  v19 = [(HMDAccessorySetupManager *)v16 alertHandle];
  v20 = [v19 isActive];

  v21 = [(HMDAccessorySetupManager *)v16 alertHandle];
  v22 = [v21 isValid];

  if (v20)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = v16;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      v61 = 138543362;
      v62 = v26;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Cannot launch HomeUIService because it is already active", &v61, 0xCu);
    }

    v27 = v23;
LABEL_10:
    objc_autoreleasePoolPop(v27);
    v28 = [MEMORY[0x277CCA9B8] hmErrorWithCode:15];
    v13[2](v13, 0, v28);
    goto LABEL_31;
  }

  mach_absolute_time();
  v29 = UpTicksToSeconds();
  if (v22)
  {
    v30 = v29;
    [(HMDAccessorySetupManager *)v16 activationStartTime];
    v32 = v30 - v31;
    v33 = objc_autoreleasePoolPush();
    v34 = v16;
    v35 = HMFGetOSLogHandle();
    v36 = v35;
    if (v32 < 2.0)
    {
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        [(HMDAccessorySetupManager *)v34 activationStartTime];
        v61 = 138544130;
        v62 = v37;
        v63 = 2048;
        v64 = 0x4000000000000000;
        v65 = 2048;
        v66 = v30;
        v67 = 2048;
        v68 = v38;
        _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@Not launching HomeUIService because a valid launch was attempted within the last %f seconds. Current time: %f, activationStartTime: %f", &v61, 0x2Au);
      }

      v27 = v33;
      goto LABEL_10;
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v39 = HMFGetLogIdentifier();
      [(HMDAccessorySetupManager *)v34 activationStartTime];
      v41 = v40;
      v42 = [(HMDAccessorySetupManager *)v34 alertHandle];
      v61 = 138544386;
      v62 = v39;
      v63 = 2048;
      v64 = 0x4000000000000000;
      v65 = 2048;
      v66 = v30;
      v67 = 2048;
      v68 = v41;
      v69 = 2112;
      v70 = v42;
      _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@Alert is valid but not active and it has been more than %f seconds. Current time: %f, activationStartTime: %f. Invalidating remote alert: %@", &v61, 0x34u);
    }

    objc_autoreleasePoolPop(v33);
    v43 = [(HMDAccessorySetupManager *)v34 alertHandle];
    [v43 unregisterObserver:v34];

    v44 = [(HMDAccessorySetupManager *)v34 alertHandle];
    [v44 invalidate];

    [(HMDAccessorySetupManager *)v34 setAlertHandle:0];
  }

  v28 = [MEMORY[0x277CBEB38] dictionary];
  if (v10)
  {
    v45 = [v10 dictionaryRepresentation];
    [v28 addEntriesFromDictionary:v45];
  }

  if (v11)
  {
    v46 = [v11 dictionaryRepresentation];
    [v28 addEntriesFromDictionary:v46];
  }

  if (v12)
  {
    [v28 addEntriesFromDictionary:v12];
  }

  v47 = [(HMDAccessorySetupManager *)v16 alertHandleProvider];
  v48 = [v47 createRemoteAlertHandleWithServiceName:*MEMORY[0x277CD0638] viewControllerClassName:@"HSProximityCardHostViewController" userInfo:v28];
  [(HMDAccessorySetupManager *)v16 setAlertHandle:v48];

  v49 = [(HMDAccessorySetupManager *)v16 alertHandle];
  [v49 registerObserver:v16];

  v50 = objc_autoreleasePoolPush();
  v51 = v16;
  v52 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
  {
    v53 = HMFGetLogIdentifier();
    v54 = [(HMDAccessorySetupManager *)v51 alertHandle];
    v61 = 138543618;
    v62 = v53;
    v63 = 2112;
    v64 = v54;
    _os_log_impl(&dword_2531F8000, v52, OS_LOG_TYPE_INFO, "%{public}@Activating remote alert: %@", &v61, 0x16u);
  }

  objc_autoreleasePoolPop(v50);
  v55 = [(HMDAccessorySetupManager *)v51 alertHandle];
  [v55 activate];

  mach_absolute_time();
  [(HMDAccessorySetupManager *)v51 setActivationStartTime:UpTicksToSeconds()];
  if (v10)
  {
    v56 = objc_autoreleasePoolPush();
    v57 = v51;
    v58 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      v59 = HMFGetLogIdentifier();
      v61 = 138543618;
      v62 = v59;
      v63 = 2112;
      v64 = v10;
      _os_log_impl(&dword_2531F8000, v58, OS_LOG_TYPE_INFO, "%{public}@Updating pending setup accessory description to %@", &v61, 0x16u);
    }

    objc_autoreleasePoolPop(v56);
    [(HMDAccessorySetupManager *)v57 setPendingAccessorySetupCompletionHandler:v13];
  }

LABEL_31:

  v60 = *MEMORY[0x277D85DE8];
}

- (void)_updateAccessoryDescription:(id)a3 usingConnection:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v9 = a3;
    v6 = [v5 processInfo];
    v7 = [v6 mainBundleURL];
    [v9 setAppBundleURL:v7];

    [v9 setEntitledForHomeKitSPI:{objc_msgSend(v5, "isEntitledForSPIAccess")}];
    [v9 setEntitledForThirdPartySetupAccessoryPayload:{objc_msgSend(v5, "isEntitledToProvideAccessorySetupPayload")}];
    v8 = [v5 isEntitledToProvideMatterSetupPayload];

    [v9 setEntitledForThirdPartyMatterSetupPayload:v8];
  }
}

- (id)_setupRequestBlockingPairedAccessoriesForHome:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CBEB18] array];
  if (v4)
  {
    v7 = [v4 name];
    [v6 addObject:v7];
  }

  v35 = v4;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v8 = [v4 matterAccessories];
  v9 = [v8 copy];

  obj = v9;
  v38 = [v9 countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v38)
  {
    v37 = *v48;
    v10 = 0x277CD5000uLL;
    do
    {
      v11 = 0;
      do
      {
        if (*v48 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v39 = v11;
        v12 = [*(*(&v47 + 1) + 8 * v11) chipStorage];
        v13 = [v12 pairings];

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = v13;
        v42 = [v41 countByEnumeratingWithState:&v43 objects:v55 count:16];
        if (v42)
        {
          v14 = *v44;
          v40 = *v44;
          do
          {
            for (i = 0; i != v42; ++i)
            {
              if (*v44 != v14)
              {
                objc_enumerationMutation(v41);
              }

              v16 = *(*(&v43 + 1) + 8 * i);
              v17 = objc_autoreleasePoolPush();
              v18 = self;
              v19 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
              {
                v20 = HMFGetLogIdentifier();
                [v16 operationalIdentity];
                v21 = v10;
                v22 = self;
                v24 = v23 = v5;
                *buf = 138543618;
                v52 = v20;
                v53 = 2112;
                v54 = v24;
                _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Adding Matter operational identity to device setup request blocking paired accessories: %@", buf, 0x16u);

                v5 = v23;
                self = v22;
                v10 = v21;
                v14 = v40;
              }

              objc_autoreleasePoolPop(v17);
              v25 = objc_alloc(*(v10 + 1440));
              v26 = [v16 operationalIdentity];
              v27 = [v26 rootPublicKey];
              v28 = [v16 operationalIdentity];
              v29 = [v28 nodeID];
              v30 = [v25 initWithRootPublicKey:v27 nodeID:v29];
              [v5 addObject:v30];
            }

            v42 = [v41 countByEnumeratingWithState:&v43 objects:v55 count:16];
          }

          while (v42);
        }

        v11 = v39 + 1;
      }

      while (v39 + 1 != v38);
      v38 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
    }

    while (v38);
  }

  v31 = [objc_alloc(MEMORY[0x277CD5598]) initWithEcosystemName:&stru_286509E58 homeNames:v34 blockedDevicePairings:v5];
  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

- (void)_launchHUISWithRequest:(id)a3 connection:(id)a4 completionHandler:(id)a5
{
  v100 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDAccessorySetupManager *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v88 = [v9 clientIdentifier];
  v12 = [v9 processInfo];
  v93 = 0;
  v13 = [v12 clientIdentifierSalt:&v93];
  v14 = v93;

  if (v13)
  {
    v15 = [(HMDAccessorySetupManager *)self homeManager];
    if (v15)
    {
      [v8 homeUniqueIdentifier];
      v86 = v85 = v14;
      if (v86)
      {
        v16 = [v15 _homeWithUniqueIdentifier:v86 forClientIdentifierSalt:v13];
        if (!v16)
        {
          v17 = objc_autoreleasePoolPush();
          v18 = self;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = HMFGetLogIdentifier();
            *buf = 138543874;
            v95 = v20;
            v96 = 2112;
            v97 = v86;
            v98 = 2112;
            v99 = v13;
            _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Could not find home with unique identifier %@ for client identifier salt: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v17);
          v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
          v10[2](v10, 0, v16);
          v14 = v85;
          goto LABEL_53;
        }
      }

      else
      {
        v16 = 0;
      }

      v30 = [v8 matterPayload];

      v84 = v16;
      if (v30)
      {
        if ([v9 isEntitledForSPIAccess] & 1) != 0 || (objc_msgSend(v9, "isEntitledToProvideMatterSetupPayload"))
        {
          v31 = [(HMDAccessorySetupManager *)self accessorySetupCoordinator];
          v32 = [v8 matterPayload];
          v92 = 0;
          v33 = [v31 createSetupAccessoryPayloadWithCHIPSetupPayload:v32 error:&v92];
          v34 = v92;

          v81 = v33;
          if (!v33 || v34)
          {
            v46 = objc_autoreleasePoolPush();
            v47 = self;
            v48 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              v49 = HMFGetLogIdentifier();
              *buf = 138543618;
              v95 = v49;
              v96 = 2112;
              v97 = v34;
              _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@Failed to create Setup Payload from input matter payload with error %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v46);
            v50 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
            v10[2](v10, 0, v50);

            v16 = v84;
            v14 = v85;
            v51 = v81;
            goto LABEL_52;
          }

          v80 = v13;
          v35 = objc_alloc(MEMORY[0x277CD1DE8]);
          v36 = v84;
          v37 = [v84 uuid];
          v38 = v35;
          v39 = v33;
          v40 = [v38 initWithSetupAccessoryPayload:v33 appID:v88 homeUUID:v37 ownershipToken:0];

          v82 = v40;
          goto LABEL_25;
        }

        v52 = objc_autoreleasePoolPush();
        v53 = self;
        v54 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v55 = HMFGetLogIdentifier();
          *buf = 138543362;
          v95 = v55;
          _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_ERROR, "%{public}@Client provided a matter setup payload but is not entitled to do so", buf, 0xCu);

LABEL_50:
          v16 = v84;
        }
      }

      else
      {
        v41 = [v8 payload];

        if (!v41)
        {
          v80 = v13;
          v36 = v16;
          v56 = objc_alloc(MEMORY[0x277CD1DE8]);
          v39 = [v36 uuid];
          v82 = [v56 initWithAppIdentifier:v88 homeUUID:v39];
          goto LABEL_32;
        }

        if ([v9 isEntitledForSPIAccess] & 1) != 0 || (objc_msgSend(v9, "isEntitledToProvideAccessorySetupPayload"))
        {
          v80 = v13;
          v83 = objc_alloc(MEMORY[0x277CD1DE8]);
          v39 = [v8 payload];
          [v39 internalSetupPayload];
          v42 = v77 = v15;
          [v16 uuid];
          v43 = v36 = v16;
          v44 = [v8 payload];
          v45 = [v44 ownershipToken];
          v82 = [v83 initWithSetupAccessoryPayload:v42 appID:v88 homeUUID:v43 ownershipToken:v45];

          v15 = v77;
LABEL_25:
          v14 = v85;
LABEL_32:

          v57 = [v8 suggestedRoomUniqueIdentifier];
          v58 = v57;
          v16 = v36;
          v13 = v80;
          if (v16 && v57)
          {
            v59 = [v16 roomWithUniqueIdentifier:v57 forClientIdentifierSalt:v80];
            if (!v59)
            {
              context = objc_autoreleasePoolPush();
              v72 = self;
              v73 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
              {
                v74 = HMFGetLogIdentifier();
                *buf = 138543874;
                v95 = v74;
                v96 = 2112;
                v97 = v58;
                v98 = 2112;
                v99 = v80;
                _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_ERROR, "%{public}@Could not find room with unique identifier %@ for client identifier salt: %@", buf, 0x20u);

                v16 = v84;
              }

              objc_autoreleasePoolPop(context);
              v63 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
              v10[2](v10, 0, v63);
              goto LABEL_46;
            }

            v60 = v59;
            v61 = [v59 uuid];
            [v82 setSuggestedRoomUUID:v61];

            v16 = v84;
          }

          v62 = [v8 suggestedAccessoryName];
          v63 = v62;
          if (v62)
          {
            v64 = [v62 length];
            if (v64 > HMMaxLengthForNaming())
            {
              v65 = objc_autoreleasePoolPush();
              v66 = self;
              v67 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
              {
                HMFGetLogIdentifier();
                v68 = contexta = v65;
                *buf = 138543362;
                v95 = v68;
                _os_log_impl(&dword_2531F8000, v67, OS_LOG_TYPE_ERROR, "%{public}@Suggested accessory name is longer than the maximum allowed length", buf, 0xCu);

                v65 = contexta;
              }

              objc_autoreleasePoolPop(v65);
              v69 = [MEMORY[0x277CCA9B8] hmErrorWithCode:46];
              v10[2](v10, 0, v69);

              v16 = v84;
              v14 = v85;
LABEL_46:
              v51 = v82;
              goto LABEL_47;
            }

            [v82 setSuggestedAccessoryName:v63];
            v16 = v84;
          }

          [(HMDAccessorySetupManager *)self _updateAccessoryDescription:v82 usingConnection:v9];
          v70 = [(HMDAccessorySetupManager *)self _setupRequestBlockingPairedAccessoriesForHome:v16];
          v89[0] = MEMORY[0x277D85DD0];
          v89[1] = 3221225472;
          v89[2] = __80__HMDAccessorySetupManager__launchHUISWithRequest_connection_completionHandler___block_invoke;
          v89[3] = &unk_279721998;
          v89[4] = self;
          v91 = v10;
          v90 = v80;
          v71 = self;
          v51 = v82;
          [(HMDAccessorySetupManager *)v71 _launchHUISWithSetupAccessoryDescription:v82 deviceSetupRequest:v70 resumeSetupUserInfo:0 completionHandler:v89];

          v16 = v84;
LABEL_47:

LABEL_52:
LABEL_53:

          goto LABEL_55;
        }

        v52 = objc_autoreleasePoolPush();
        v53 = self;
        v54 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v75 = HMFGetLogIdentifier();
          *buf = 138543362;
          v95 = v75;
          _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_ERROR, "%{public}@Client provided an accessory setup payload but is not entitled to do so", buf, 0xCu);

          goto LABEL_50;
        }
      }

      objc_autoreleasePoolPop(v52);
      v51 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
      v10[2](v10, 0, v51);
      v14 = v85;
      goto LABEL_52;
    }

    v25 = objc_autoreleasePoolPush();
    v26 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v29 = v28 = v14;
      *buf = 138543362;
      v95 = v29;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@home manager is no longer available", buf, 0xCu);

      v14 = v28;
    }

    objc_autoreleasePoolPop(v25);
    v87 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (v10[2])(v10, 0);
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
      v95 = v24;
      v96 = 2112;
      v97 = v14;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Cannot determine client identifier salt for accessory setup client: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v10[2](v10, 0, v15);
  }

LABEL_55:

  v76 = *MEMORY[0x277D85DE8];
}

void __80__HMDAccessorySetupManager__launchHUISWithRequest_connection_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) _accessorySetupResultFromCompletedInfo:v5 clientIdentifierSalt:*(a1 + 40)];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to perform accessory setup: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    (*(*(a1 + 48) + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_launchHUISWithNFCProxSetupURL:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessorySetupManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v29 = v9;
    v30 = 2112;
    v31 = v4;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Launching HomeUIService with NFC prox setup URL: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v27 = 0;
  v10 = [(HMDAccessorySetupManager *)v7 _createSetupAccessoryPayloadWithSetupPayloadURL:v4 error:&v27];
  v11 = v27;
  if (v10)
  {
    v12 = objc_alloc(MEMORY[0x277CD1DE8]);
    v13 = [MEMORY[0x277CCA8D8] mainBundle];
    v14 = [v13 bundleIdentifier];
    v15 = [v12 initWithSetupAccessoryPayload:v10 appID:v14 homeUUID:0 ownershipToken:0];

    [v15 setEntitledForHomeKitSPI:1];
    v16 = objc_autoreleasePoolPush();
    v17 = v7;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v19;
      v30 = 2112;
      v31 = v15;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Launching HomeUIService with NFC prox setup accessory description: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __59__HMDAccessorySetupManager__launchHUISWithNFCProxSetupURL___block_invoke;
    v25[3] = &unk_279721970;
    v25[4] = v17;
    v26 = v11;
    [(HMDAccessorySetupManager *)v17 _launchHUISWithSetupAccessoryDescription:v15 deviceSetupRequest:0 resumeSetupUserInfo:0 completionHandler:v25];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v7;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543874;
      v29 = v23;
      v30 = 2112;
      v31 = v4;
      v32 = 2112;
      v33 = v11;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to generate HMSetupAccessoryPayload with url %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __59__HMDAccessorySetupManager__launchHUISWithNFCProxSetupURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully set up accessories with NFC prox setup completed info: %@", &v15, 0x16u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v13 = *(a1 + 40);
    v15 = 138543618;
    v16 = v12;
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to set up accessories with NFC prox: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v14 = *MEMORY[0x277D85DE8];
}

- (id)_createSetupAccessoryPayloadWithSetupPayloadURL:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([MEMORY[0x277CD17C8] isHAPSetupPayloadURL:v6])
  {
    v7 = [objc_alloc(MEMORY[0x277CD1DF0]) initWithHAPSetupPayloadURL:v6 error:a4];
  }

  else if ([MEMORY[0x277CD17C8] isCHIPSetupPayloadURL:v6])
  {
    v8 = [(HMDAccessorySetupManager *)self accessorySetupCoordinator];
    v7 = [v8 createCHIPSetupAccessoryPayloadWithSetupPayloadURL:v6 error:a4];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v6 scheme];
      v16 = 138543874;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unsupported URL scheme %@ in setupPayloadURL: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    if (a4)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      *a4 = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)launchAccessorySetupHostToPerformMatterDeviceSetupWithRequest:(id)a3 clientProxy:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDAccessorySetupManager *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __120__HMDAccessorySetupManager_launchAccessorySetupHostToPerformMatterDeviceSetupWithRequest_clientProxy_completionHandler___block_invoke;
  v15[3] = &unk_279734578;
  v16 = v9;
  v17 = self;
  v18 = v8;
  v19 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(v11, v15);
}

void __120__HMDAccessorySetupManager_launchAccessorySetupHostToPerformMatterDeviceSetupWithRequest_clientProxy_completionHandler___block_invoke(id *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] connection];
  v3 = [v2 processInfo];
  v4 = [v3 signingIdentifier];

  v5 = [a1[5] accessorySetupCoordinator];

  if (v5)
  {
    v6 = [a1[5] accessorySetupCoordinator];
    [v6 setCurrentBundleIdentifier:v4];
  }

  v7 = [a1[6] setupPayload];

  if (!v7)
  {
    v11 = [objc_alloc(MEMORY[0x277CD1DE8]) initWithAppIdentifier:v4 homeUUID:0];
    goto LABEL_9;
  }

  if ([a1[4] hasPrivateHomeKitEntitlement] & 1) != 0 || (objc_msgSend(a1[4], "hasMatterSetupPayloadEntitlement"))
  {
    v8 = [a1[5] accessorySetupCoordinator];
    v9 = [a1[6] setupPayload];
    v32 = 0;
    v10 = [v8 createSetupAccessoryPayloadWithCHIPSetupPayload:v9 error:&v32];
    v11 = v32;

    if (v10)
    {
      v12 = [objc_alloc(MEMORY[0x277CD1DE8]) initWithSetupAccessoryPayload:v10 appID:v4 homeUUID:0 ownershipToken:0];

      v11 = v12;
LABEL_9:
      v13 = [a1[4] connection];
      v14 = [v13 processInfo];
      v15 = [v14 mainBundleURL];
      [v11 setAppBundleURL:v15];

      [v11 setEntitledForHomeKitSPI:{objc_msgSend(a1[4], "hasPrivateHomeKitEntitlement")}];
      [v11 setEntitledForThirdPartyMatterSetupPayload:{objc_msgSend(a1[4], "hasMatterSetupPayloadEntitlement")}];
      [v11 setSetupInitiatedByOtherMatterEcosystem:1];
      [v11 setDoNetworkScan:{objc_msgSend(a1[6], "shouldScanNetworks")}];
      v16 = a1[5];
      v17 = a1[6];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __120__HMDAccessorySetupManager_launchAccessorySetupHostToPerformMatterDeviceSetupWithRequest_clientProxy_completionHandler___block_invoke_50;
      v30[3] = &unk_279721948;
      v30[4] = v16;
      v31 = a1[7];
      [v16 _launchHUISWithSetupAccessoryDescription:v11 deviceSetupRequest:v17 resumeSetupUserInfo:0 completionHandler:v30];

      goto LABEL_16;
    }

    v18 = objc_autoreleasePoolPush();
    v19 = a1[5];
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v21;
      v35 = 2112;
      v36 = v11;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to create setup accessory payload from input  %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = a1[7];
    v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    v22[2](v22, v23);
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = a1[5];
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v27;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Client provided a Matter setup payload but is not entitled to do so", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    v28 = a1[7];
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
    v28[2](v28, v11);
  }

LABEL_16:

  v29 = *MEMORY[0x277D85DE8];
}

void __120__HMDAccessorySetupManager_launchAccessorySetupHostToPerformMatterDeviceSetupWithRequest_clientProxy_completionHandler___block_invoke_50(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) accessorySetupCoordinator];
  [v7 stopMetricsForThirdPartyPairingWithError:v6];

  if (v5)
  {
    v8 = *(*(a1 + 40) + 16);
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to perform accessory setup: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = *(*(a1 + 40) + 16);
  }

  v8();

  v13 = *MEMORY[0x277D85DE8];
}

- (void)launchAccessorySetupHostToRequestSetupCodeForAccessoryWithUUID:(id)a3 accessoryName:(id)a4 homeUUID:(id)a5 clientConnection:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(HMDAccessorySetupManager *)self workQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __149__HMDAccessorySetupManager_launchAccessorySetupHostToRequestSetupCodeForAccessoryWithUUID_accessoryName_homeUUID_clientConnection_completionHandler___block_invoke;
  v23[3] = &unk_279734848;
  v23[4] = self;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  dispatch_async(v17, v23);
}

void __149__HMDAccessorySetupManager_launchAccessorySetupHostToRequestSetupCodeForAccessoryWithUUID_accessoryName_homeUUID_clientConnection_completionHandler___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    *buf = 138544386;
    v20 = v5;
    v21 = 2112;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Launching HomeUIService to request setup code for accessoryUUID: %@ accessoryName: %@ homeUUID: %@ clientConnection: %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v2);
  v10 = objc_alloc(MEMORY[0x277CD1DE8]);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = [*(a1 + 64) clientIdentifier];
  v14 = [v10 initWithAccessoryUUID:v11 accessoryName:v12 appID:v13 homeUUID:*(a1 + 56)];

  [*(a1 + 32) _updateAccessoryDescription:v14 usingConnection:*(a1 + 64)];
  v15 = *(a1 + 32);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __149__HMDAccessorySetupManager_launchAccessorySetupHostToRequestSetupCodeForAccessoryWithUUID_accessoryName_homeUUID_clientConnection_completionHandler___block_invoke_46;
  v17[3] = &unk_279721920;
  v18 = *(a1 + 72);
  [v15 _launchHUISWithSetupAccessoryDescription:v14 deviceSetupRequest:0 resumeSetupUserInfo:0 completionHandler:v17];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)configure
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessorySetupManager *)self messageDispatcher];
  v4 = *MEMORY[0x277CCEED8];
  v5 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v26[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  [v3 registerForMessage:v4 receiver:self policies:v6 selector:sel__handlePerformAccessorySetupMessage_];

  v7 = [(HMDAccessorySetupManager *)self messageDispatcher];
  v8 = *MEMORY[0x277CCEEE0];
  v9 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v25 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  [v7 registerForMessage:v8 receiver:self policies:v10 selector:sel__handleResumeAccessorySetupMessage_];

  v11 = [(HMDAccessorySetupManager *)self messageDispatcher];
  v12 = *MEMORY[0x277CCEEA8];
  v13 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v24 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  [v11 registerForMessage:v12 receiver:self policies:v14 selector:sel__handleFinishAccessorySetupMessage_];

  v15 = [(HMDAccessorySetupManager *)self messageDispatcher];
  v16 = *MEMORY[0x277CCEEA0];
  v17 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v23 = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  [v15 registerForMessage:v16 receiver:self policies:v18 selector:sel__handleFailAccessorySetupMessage_];

  v19 = [MEMORY[0x277CCAB98] defaultCenter];
  v20 = [(HMDAccessorySetupManager *)self nfcEventListener];
  [v19 addObserver:self selector:sel_handleNFCProxSetupNotification_ name:@"HMDNFCProxSetupNotification" object:v20];

  v21 = [(HMDAccessorySetupManager *)self nfcEventListener];
  [v21 start];

  v22 = *MEMORY[0x277D85DE8];
}

- (HMDXPCClientConnection)accessorySetupHostClientConnection
{
  v3 = [(HMDAccessorySetupManager *)self xpcMessageTransport];
  v4 = [v3 connections];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HMDAccessorySetupManager_accessorySetupHostClientConnection__block_invoke;
  v7[3] = &unk_2797218F8;
  v7[4] = self;
  v5 = [v4 hmf_objectPassingTest:v7];

  return v5;
}

uint64_t __62__HMDAccessorySetupManager_accessorySetupHostClientConnection__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 clientIdentifier];
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() accessorySetupHostBundleIdentifier];
  v6 = [v3 isEqualToString:v5];

  return v6;
}

- (HMDAccessorySetupManager)initWithWorkQueue:(id)a3 homeManager:(id)a4 xpcMessageTransport:(id)a5 messageDispatcher:(id)a6 alertHandleProvider:(id)a7 nfcEventListener:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  obj = a7;
  v19 = a7;
  v30 = a8;
  v20 = a8;
  if (!v15)
  {
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!v16)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!v17)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!v18)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!v19)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  v21 = v20;
  if (!v20)
  {
LABEL_15:
    v25 = _HMFPreconditionFailure();
    return [(HMDAccessorySetupManager *)v25 initWithWorkQueue:v26 homeManager:v27, v28];
  }

  v31.receiver = self;
  v31.super_class = HMDAccessorySetupManager;
  v22 = [(HMDAccessorySetupManager *)&v31 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_workQueue, a3);
    objc_storeWeak(&v23->_homeManager, v16);
    objc_storeStrong(&v23->_xpcMessageTransport, a5);
    objc_storeStrong(&v23->_messageDispatcher, a6);
    objc_storeStrong(&v23->_alertHandleProvider, obj);
    objc_storeStrong(&v23->_nfcEventListener, v30);
  }

  return v23;
}

- (HMDAccessorySetupManager)initWithWorkQueue:(id)a3 homeManager:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[HMDXPCMessageTransport accessorySetupTransport];
  v9 = objc_alloc(MEMORY[0x277D0F828]);
  v10 = +[HMDXPCMessageTransport accessorySetupTransport];
  v11 = [v9 initWithTransport:v10];
  v12 = objc_alloc_init(HMDSBSRemoteAlertHandleProvider);
  v13 = objc_alloc_init(HMDNFCEventListener);
  v14 = [(HMDAccessorySetupManager *)self initWithWorkQueue:v7 homeManager:v6 xpcMessageTransport:v8 messageDispatcher:v11 alertHandleProvider:v12 nfcEventListener:v13];

  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t47 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t47, &__block_literal_global_5788);
  }

  v3 = logCategory__hmf_once_v48;

  return v3;
}

uint64_t __39__HMDAccessorySetupManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v48 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end