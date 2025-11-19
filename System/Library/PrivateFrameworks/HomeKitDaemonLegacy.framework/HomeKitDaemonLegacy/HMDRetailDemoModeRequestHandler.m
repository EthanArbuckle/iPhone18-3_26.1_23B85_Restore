@interface HMDRetailDemoModeRequestHandler
- (HMDHomeManager)homeManager;
- (HMDRelaunchHandling)relaunchHandler;
- (HMDRetailDemoModeRequestHandler)initWithHomeManager:(id)a3 messageDispatcher:(id)a4 relaunchHandler:(id)a5;
- (void)_handleConfigRetailDemoModeMessage:(id)a3;
- (void)_handleConfigRetailDemoModeMessageForFinalize:(id)a3;
- (void)_handleConfigRetailDemoModeMessageForPrepare:(id)a3;
- (void)configure;
@end

@implementation HMDRetailDemoModeRequestHandler

- (HMDRelaunchHandling)relaunchHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_relaunchHandler);

  return WeakRetained;
}

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)_handleConfigRetailDemoModeMessage:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 BOOLForKey:@"kFinalizeRetailDemoSetupKey"];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = HMFBooleanToString();
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling config retail demo mode message with finalizeDemoSetup=%@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  if (v5)
  {
    [(HMDRetailDemoModeRequestHandler *)v7 _handleConfigRetailDemoModeMessageForFinalize:v4];
  }

  else
  {
    [(HMDRetailDemoModeRequestHandler *)v7 _handleConfigRetailDemoModeMessageForPrepare:v4];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleConfigRetailDemoModeMessageForFinalize:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDRetailDemoModeRequestHandler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 BOOLForKey:@"kAllowRetailDemoModeEditingKey"];
  v7 = [(HMDRetailDemoModeRequestHandler *)self homeManager];
  if (v7)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __81__HMDRetailDemoModeRequestHandler__handleConfigRetailDemoModeMessageForFinalize___block_invoke;
    v14[3] = &unk_279730C20;
    v15 = v4;
    v16 = self;
    [v7 finalizeRetailDemoModeWithAllowEditing:v6 completionHandler:v14];
    v8 = v15;
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
      v18 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Cannot handle message because home manager is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v4 respondWithError:v8];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __81__HMDRetailDemoModeRequestHandler__handleConfigRetailDemoModeMessageForFinalize___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (a2)
  {
    v10 = @"kEncryptedHomeDataBlobKey";
    v11[0] = a2;
    v5 = MEMORY[0x277CBEAC0];
    v6 = a2;
    v7 = [v5 dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [v3 respondWithPayload:v7];

    v8 = [*(a1 + 40) relaunchHandler];

    [v8 relaunchAfterDelay:0.5];
  }

  else
  {
    [*(a1 + 32) respondWithError:a3];
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleConfigRetailDemoModeMessageForPrepare:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDRetailDemoModeRequestHandler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 dataForKey:@"kControllerKeyPairKey"];
  v7 = [v4 stringForKey:@"kControllerPairingNameKey"];
  v8 = [v4 dictionaryForKey:@"kAccessoriesDataBlobKey"];
  v9 = v8;
  if (v6 && v7 && v8)
  {
    v10 = [(HMDRetailDemoModeRequestHandler *)self homeManager];
    if (v10)
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __80__HMDRetailDemoModeRequestHandler__handleConfigRetailDemoModeMessageForPrepare___block_invoke;
      v22[3] = &unk_2797358C8;
      v23 = v4;
      v24 = self;
      [v10 configureRetailDemoModeWithKeyPair:v6 controllerName:v7 demoAccessories:v9 completionHandler:v22];
      v11 = v23;
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v26 = v19;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Cannot handle message because home manager is nil", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [v4 respondWithError:v11];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v15 = v21 = v12;
      *buf = 138544898;
      v26 = v15;
      v27 = 2112;
      v28 = @"kControllerKeyPairKey";
      v29 = 2112;
      v30 = v6;
      v31 = 2112;
      v32 = @"kControllerPairingNameKey";
      v33 = 2112;
      v34 = v7;
      v35 = 2112;
      v36 = @"kAccessoriesDataBlobKey";
      v37 = 2112;
      v38 = v9;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Cannot handle message because one or more arguments are nil: %@=%@, %@=%@, %@=%@", buf, 0x48u);

      v12 = v21;
    }

    objc_autoreleasePoolPop(v12);
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [v4 respondWithError:v10];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __80__HMDRetailDemoModeRequestHandler__handleConfigRetailDemoModeMessageForPrepare___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {

    [v3 respondWithError:a2];
  }

  else
  {
    [v3 respondWithSuccess];
    v4 = [*(a1 + 40) relaunchHandler];
    [v4 relaunchAfterDelay:1.0];
  }
}

- (void)configure
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [(HMDRetailDemoModeRequestHandler *)self messageDispatcher];
  v4 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [v3 registerForMessage:@"HomeUtilConfigRetailDemoModeMessage" receiver:self policies:v5 selector:sel__handleConfigRetailDemoModeMessage_];

  v6 = *MEMORY[0x277D85DE8];
}

- (HMDRetailDemoModeRequestHandler)initWithHomeManager:(id)a3 messageDispatcher:(id)a4 relaunchHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = HMDRetailDemoModeRequestHandler;
  v11 = [(HMDRetailDemoModeRequestHandler *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_homeManager, v8);
    v13 = [v8 uuid];
    identifier = v12->_identifier;
    v12->_identifier = v13;

    v15 = [v8 workQueue];
    workQueue = v12->_workQueue;
    v12->_workQueue = v15;

    objc_storeStrong(&v12->_messageDispatcher, a4);
    objc_storeWeak(&v12->_relaunchHandler, v10);
  }

  return v12;
}

@end