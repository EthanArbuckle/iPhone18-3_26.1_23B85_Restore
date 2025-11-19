@interface HMDSoftwareUpdateManager
+ (BOOL)isSupported;
- (HMDAppleMediaAccessory)accessory;
- (HMDSoftwareUpdateManager)init;
- (id)messageDestination;
- (void)_handleStart:(id)a3;
- (void)_handleStop:(id)a3;
- (void)_handleUpdateAvailableUpdate:(id)a3;
- (void)fetchAvailableUpdateWithCompletionHandler:(id)a3;
- (void)registerForMessages;
- (void)startUpdate:(id)a3 completionHandler:(id)a4;
- (void)updateAvailableUpdate:(id)a3;
@end

@implementation HMDSoftwareUpdateManager

- (HMDAppleMediaAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x277D0F820]);
  v4 = [(HMDSoftwareUpdateManager *)self messageTargetUUID];
  v5 = [v3 initWithTarget:v4];

  return v5;
}

- (void)startUpdate:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDSoftwareUpdateManager *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HMDSoftwareUpdateManager_startUpdate_completionHandler___block_invoke;
  block[3] = &unk_2797355D0;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __58__HMDSoftwareUpdateManager_startUpdate_completionHandler___block_invoke(id *a1)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v2 = [a1[4] activeClients];
  v3 = [v2 anyObject];

  if (v3)
  {
    v29 = *MEMORY[0x277CD1130];
    v4 = encodeRootObjectForIncomingXPCMessage(a1[5], 0);
    v30[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];

    v6 = [MEMORY[0x277D0F848] entitledMessageWithName:*MEMORY[0x277CD1110] messagePayload:v5];
    v7 = [v6 mutableCopy];

    v8 = [a1[4] messageDestination];
    [v7 setDestination:v8];

    [v7 setTransport:v3];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v27 = 0x2020000000;
    v28 = 0;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __58__HMDSoftwareUpdateManager_startUpdate_completionHandler___block_invoke_32;
    v23[3] = &unk_2797332E8;
    p_buf = &buf;
    v24 = a1[6];
    [v7 setResponseHandler:v23];
    v9 = [a1[4] messageDispatcher];
    v10 = [v7 copy];
    [v9 sendMessage:v10 completionHandler:0];

    v11 = dispatch_time(0, 30000000000);
    v12 = [a1[4] clientQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __58__HMDSoftwareUpdateManager_startUpdate_completionHandler___block_invoke_2;
    v19[3] = &unk_2797332C0;
    v22 = &buf;
    v19[4] = a1[4];
    v20 = v7;
    v21 = a1[6];
    v13 = v7;
    dispatch_after(v11, v12, v19);

    _Block_object_dispose(&buf, 8);
LABEL_7:

    goto LABEL_8;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = a1[4];
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = HMFGetLogIdentifier();
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v17;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot handle start update, no active clients", &buf, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  if (a1[6])
  {
    v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (*(a1[6] + 2))();
    goto LABEL_7;
  }

LABEL_8:

  v18 = *MEMORY[0x277D85DE8];
}

void __58__HMDSoftwareUpdateManager_startUpdate_completionHandler___block_invoke_32(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(*(a1 + 40) + 8);
  if ((*(v6 + 24) & 1) == 0 && *(a1 + 32))
  {
    v7 = v10;
    v8 = v7;
    if (v7 && ([v7 isHMError] & 1) == 0)
    {
      v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23 description:0 reason:0 suggestion:0 underlyingError:v8];

      v8 = v9;
    }

    (*(*(a1 + 32) + 16))();

    v6 = *(*(a1 + 40) + 8);
  }

  *(v6 + 24) = 1;
}

void __58__HMDSoftwareUpdateManager_startUpdate_completionHandler___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 40);
      v9 = 138543618;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Client failed to respond to message: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    if (*(a1 + 48))
    {
      v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:8];
      (*(*(a1 + 48) + 16))();
    }
  }

  *(*(*(a1 + 56) + 8) + 24) = 1;
  v8 = *MEMORY[0x277D85DE8];
}

- (void)fetchAvailableUpdateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(HMDSoftwareUpdateManager *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__HMDSoftwareUpdateManager_fetchAvailableUpdateWithCompletionHandler___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __70__HMDSoftwareUpdateManager_fetchAvailableUpdateWithCompletionHandler___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) activeClients];
  v3 = [v2 anyObject];

  if (v3)
  {
    v4 = [MEMORY[0x277D0F848] entitledMessageWithName:*MEMORY[0x277CD10F8] messagePayload:0];
    v5 = [v4 mutableCopy];

    v6 = [*(a1 + 32) messageDestination];
    [v5 setDestination:v6];

    [v5 setTransport:v3];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v30 = 0x2020000000;
    v31 = 0;
    objc_initWeak(&location, *(a1 + 32));
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __70__HMDSoftwareUpdateManager_fetchAvailableUpdateWithCompletionHandler___block_invoke_25;
    v24[3] = &unk_279733298;
    p_buf = &buf;
    v7 = *(a1 + 40);
    v24[4] = *(a1 + 32);
    v25 = v7;
    objc_copyWeak(&v27, &location);
    [v5 setResponseHandler:v24];
    v8 = [*(a1 + 32) messageDispatcher];
    v9 = [v5 copy];
    [v8 sendMessage:v9 completionHandler:0];

    v10 = dispatch_time(0, 30000000000);
    v11 = [*(a1 + 32) clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__HMDSoftwareUpdateManager_fetchAvailableUpdateWithCompletionHandler___block_invoke_31;
    block[3] = &unk_2797332C0;
    v23 = &buf;
    v12 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v21 = v5;
    v22 = v12;
    v13 = v5;
    dispatch_after(v10, v11, block);

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot handle fetch, no active clients", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    if (*(a1 + 40))
    {
      v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      (*(*(a1 + 40) + 16))();
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __70__HMDSoftwareUpdateManager_fetchAvailableUpdateWithCompletionHandler___block_invoke_25(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) != 0 || !*(a1 + 40))
  {
    goto LABEL_25;
  }

  if (v5)
  {
    v8 = v5;
    if (([v8 isHMError] & 1) == 0)
    {
      v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23 description:0 reason:0 suggestion:0 underlyingError:v8];

      v8 = v9;
    }

    (*(*(a1 + 40) + 16))();

    goto LABEL_25;
  }

  v10 = [v6 hmf_dataForKey:*MEMORY[0x277CD1130]];
  if (v10)
  {
    v11 = [MEMORY[0x277CCAAC8] deserializeObjectWithData:v10 allowedClass:objc_opt_class() frameworkClasses:&unk_286627340];
    v12 = v11;
    if (!v11 || [v11 downloadSize])
    {
      goto LABEL_14;
    }

    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v16;
      v34 = 2112;
      v35 = v12;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Fetch returned invalid update with download size 0: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v12 = 0;
LABEL_14:

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v18 = [WeakRetained accessory];
  v19 = [v18 softwareUpdate];
  if (v12 && v18)
  {
    v20 = [v12 isEqual:v19];
    context = objc_autoreleasePoolPush();
    v21 = WeakRetained;
    v22 = HMFGetOSLogHandle();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      if (v23)
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543874;
        v33 = v24;
        v34 = 2112;
        v35 = v12;
        v36 = 2112;
        v37 = v19;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Fetch returned update, %@, matching existing update: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(context);
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      if (v23)
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543618;
        v33 = v25;
        v34 = 2112;
        v35 = v12;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Updating with software update: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(context);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __70__HMDSoftwareUpdateManager_fetchAvailableUpdateWithCompletionHandler___block_invoke_29;
      v28[3] = &unk_2797346E0;
      objc_copyWeak(&v31, (a1 + 56));
      v29 = v12;
      v30 = *(a1 + 40);
      [v18 updateSoftwareUpdate:v29 completionHandler:v28];

      objc_destroyWeak(&v31);
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

LABEL_25:
  *(*(*(a1 + 48) + 8) + 24) = 1;

  v26 = *MEMORY[0x277D85DE8];
}

void __70__HMDSoftwareUpdateManager_fetchAvailableUpdateWithCompletionHandler___block_invoke_31(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 40);
      v9 = 138543618;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Client failed to respond to message: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    if (*(a1 + 48))
    {
      v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:8];
      (*(*(a1 + 48) + 16))();
    }
  }

  *(*(*(a1 + 56) + 8) + 24) = 1;
  v8 = *MEMORY[0x277D85DE8];
}

void __70__HMDSoftwareUpdateManager_fetchAvailableUpdateWithCompletionHandler___block_invoke_29(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = *(a1 + 32);
    v12 = 138543874;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updated software update, %@, with error: %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  if (v3)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a1 + 32);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v10, v3);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateAvailableUpdate:(id)a3
{
  v4 = a3;
  v5 = [(HMDSoftwareUpdateManager *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HMDSoftwareUpdateManager_updateAvailableUpdate___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __50__HMDSoftwareUpdateManager_updateAvailableUpdate___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D0F848];
  v3 = *MEMORY[0x277CD1128];
  v12 = *MEMORY[0x277CD1130];
  v4 = *(a1 + 32);
  if (v4)
  {
    encodeRootObjectForIncomingXPCMessage(v4, 0);
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v5 = ;
  v13[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v7 = [v2 entitledMessageWithName:v3 messagePayload:v6];

  v8 = [*(a1 + 40) messageDestination];
  [v7 setDestination:v8];

  v9 = [*(a1 + 40) messageDispatcher];
  v10 = [v7 copy];
  [v9 sendMessage:v10 completionHandler:0];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdateAvailableUpdate:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDSoftwareUpdateManager *)self accessory];
  if (v5)
  {
    v6 = *MEMORY[0x277CD1130];
    v7 = [v4 nullForKey:*MEMORY[0x277CD1130]];

    if (v7)
    {
      v8 = 0;
LABEL_4:
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __57__HMDSoftwareUpdateManager__handleUpdateAvailableUpdate___block_invoke;
      v36[3] = &unk_2797358C8;
      v37 = v4;
      v8 = v8;
      v38 = v8;
      [v5 updateSoftwareUpdate:v8 completionHandler:v36];

      v9 = v37;
LABEL_26:

      goto LABEL_27;
    }

    v9 = [v4 dataForKey:v6];
    if (v9)
    {
      v15 = [MEMORY[0x277CCAAC8] deserializeObjectWithData:v9 allowedClass:objc_opt_class() frameworkClasses:&unk_286627328];
      if (!v15)
      {
        v22 = objc_autoreleasePoolPush();
        v23 = self;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543362;
          v40 = v25;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Invalid software update in message payload", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v22);
        v26 = [v4 responseHandler];

        v8 = 0;
        if (!v26)
        {
          goto LABEL_26;
        }

        v27 = 22;
        goto LABEL_25;
      }

      v8 = v15;
      if ([v15 downloadSize])
      {

        goto LABEL_4;
      }

      v28 = objc_autoreleasePoolPush();
      v29 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543618;
        v40 = v31;
        v41 = 2112;
        v42 = v8;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@Invalid software update with download size 0 in message payload, %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      v32 = [v4 responseHandler];

      if (!v32)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [v4 messagePayload];
        *buf = 138543618;
        v40 = v19;
        v41 = 2112;
        v42 = v20;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Missing serialized software update from message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v21 = [v4 responseHandler];

      v8 = 0;
      if (!v21)
      {
        v9 = 0;
        goto LABEL_26;
      }
    }

    v27 = 3;
LABEL_25:
    v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:v27];
    v34 = [v4 responseHandler];
    (v34)[2](v34, v33, 0);

    goto LABEL_26;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543362;
    v40 = v13;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Not configured, Missing current accessory", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  v14 = [v4 responseHandler];

  if (v14)
  {
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
    v9 = [v4 responseHandler];
    (v9)[2](v9, v8, 0);
    goto LABEL_26;
  }

LABEL_27:

  v35 = *MEMORY[0x277D85DE8];
}

void __57__HMDSoftwareUpdateManager__handleUpdateAvailableUpdate___block_invoke(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) responseHandler];

  if (v4)
  {
    if (v3)
    {
      v5 = 0;
    }

    else
    {
      v5 = [*(a1 + 40) identifier];

      if (v5)
      {
        v10 = *MEMORY[0x277CD1100];
        v6 = [*(a1 + 40) identifier];
        v7 = [v6 UUIDString];
        v11[0] = v7;
        v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      }
    }

    v8 = [*(a1 + 32) responseHandler];
    (v8)[2](v8, v3, v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleStop:(id)a3
{
  v8 = a3;
  v4 = [v8 transport];
  if (v4)
  {
    v5 = [(HMDSoftwareUpdateManager *)self activeClients];
    [v5 removeObject:v4];
  }

  v6 = [v8 responseHandler];

  if (v6)
  {
    v7 = [v8 responseHandler];
    v7[2](v7, 0, 0);
  }
}

- (void)_handleStart:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 transport];
  if (v5)
  {
    v6 = [(HMDSoftwareUpdateManager *)self activeClients];
    [v6 addObject:v5];
  }

  v7 = [v4 responseHandler];

  if (v7)
  {
    v8 = [(HMDSoftwareUpdateManager *)self accessory];
    v9 = [v8 softwareUpdate];

    if (v9)
    {
      v14 = *MEMORY[0x277CD1130];
      v10 = encodeRootObjectForIncomingXPCMessage(v9, 0);
      v15[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    }

    else
    {
      v11 = 0;
    }

    v12 = [v4 responseHandler];
    (v12)[2](v12, 0, v11);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)registerForMessages
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = [(HMDSoftwareUpdateManager *)self messageDispatcher];
  v4 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v5 = *MEMORY[0x277CD1108];
  v15[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [v3 registerForMessage:v5 receiver:self policies:v6 selector:sel__handleStart_];

  v7 = *MEMORY[0x277CD1118];
  v14 = v4;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  [v3 registerForMessage:v7 receiver:self policies:v8 selector:sel__handleStop_];

  v9 = *MEMORY[0x277CD1128];
  v13[0] = v4;
  v10 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v13[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  [v3 registerForMessage:v9 receiver:self policies:v11 selector:sel__handleUpdateAvailableUpdate_];

  v12 = *MEMORY[0x277D85DE8];
}

- (HMDSoftwareUpdateManager)init
{
  v23 = *MEMORY[0x277D85DE8];
  if (+[HMDSoftwareUpdateManager isSupported])
  {
    v20.receiver = self;
    v20.super_class = HMDSoftwareUpdateManager;
    v3 = [(HMDSoftwareUpdateManager *)&v20 init];
    if (v3)
    {
      v4 = HMDispatchQueueNameString();
      v5 = [v4 UTF8String];
      v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v7 = dispatch_queue_create(v5, v6);
      clientQueue = v3->_clientQueue;
      v3->_clientQueue = v7;

      v9 = objc_alloc(MEMORY[0x277CCAD78]);
      v10 = [v9 initWithUUIDString:*MEMORY[0x277CD1120]];
      identifier = v3->_identifier;
      v3->_identifier = v10;

      v12 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      activeClients = v3->_activeClients;
      v3->_activeClients = v12;

      [(HMDSoftwareUpdateManager *)v3 registerForMessages];
    }

    self = v3;
    v14 = self;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Software updates are not valid on this target", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v14 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (BOOL)isSupported
{
  v2 = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [v2 productClass] == 6;

  return v3;
}

@end