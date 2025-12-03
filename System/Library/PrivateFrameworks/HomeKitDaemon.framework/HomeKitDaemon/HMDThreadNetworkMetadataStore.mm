@interface HMDThreadNetworkMetadataStore
+ (HMDThreadNetworkMetadataStore)defaultStore;
+ (HMDThreadNetworkMetadataStore)storeWithThreadClientFactory:(id)factory;
+ (id)logCategory;
+ (id)new;
- (HMDThreadNetworkMetadataStore)init;
- (id)initInternalWithThreadClientFactory:(id)factory;
- (void)_checkIfThreadNetworkIsRunningWithCompletion:(id)completion;
- (void)_removePreferredNetworkWithCompletion:(id)completion;
- (void)_retrieveBorderRouterPreferredNetworkWithCompletion:(id)completion;
- (void)_retrieveMetadataOnThreadCapableController:(id)controller threadClient:(id)client homeHasResident:(BOOL)resident completion:(id)completion;
- (void)_retrieveMetadataWithCompletion:(id)completion;
- (void)_retrievePreferredNetwork:(id)network completion:(id)completion;
- (void)_retrievePreferredNetworkOnThreadCapableController:(id)controller threadClient:(id)client completion:(id)completion;
- (void)_scheduleTriggerPreferredNetworkUpdateWithCompletion:(id)completion;
- (void)_triggerPreferredNetworkUpdateWithCompletion:(id)completion;
- (void)_validateOperationalDatasetWithTHClient:(id)client operationalDataset:(id)dataset storeCachedAOD:(BOOL)d completion:(id)completion;
- (void)checkIfThreadNetworkIsRunningWithCompletion:(id)completion;
- (void)removePreferredNetworkWithCompletion:(id)completion;
- (void)retrieveBorderRouterPreferredNetworkWithCompletion:(id)completion;
- (void)retrieveMetadata:(id)metadata homeHasResident:(BOOL)resident completion:(id)completion;
- (void)retrieveMetadataWithCompletion:(id)completion;
- (void)retrievePreferredNetwork:(id)network completion:(id)completion;
- (void)triggerPreferredNetworkUpdateWithCompletion:(id)completion;
@end

@implementation HMDThreadNetworkMetadataStore

- (void)_checkIfThreadNetworkIsRunningWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMDThreadNetworkMetadataStore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__202996;
  v16 = __Block_byref_object_dispose__202997;
  threadClientFactory = [(HMDThreadNetworkMetadataStore *)self threadClientFactory];
  v17 = threadClientFactory[2]();

  v7 = v13[5];
  if (v7)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __78__HMDThreadNetworkMetadataStore__checkIfThreadNetworkIsRunningWithCompletion___block_invoke;
    v9[3] = &unk_27867FAC8;
    v10 = completionCopy;
    v11 = &v12;
    [v7 retrievePreferredCredentialsInternally:v9];
    v8 = v10;
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:58];
    (*(completionCopy + 2))(completionCopy, 0, v8);
  }

  _Block_object_dispose(&v12, 8);
}

- (void)checkIfThreadNetworkIsRunningWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMDThreadNetworkMetadataStore *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__HMDThreadNetworkMetadataStore_checkIfThreadNetworkIsRunningWithCompletion___block_invoke;
  v7[3] = &unk_27868A7A0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

- (void)_removePreferredNetworkWithCompletion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  workQueue = [(HMDThreadNetworkMetadataStore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__202996;
  v21 = __Block_byref_object_dispose__202997;
  threadClientFactory = [(HMDThreadNetworkMetadataStore *)self threadClientFactory];
  v22 = threadClientFactory[2]();

  v7 = v18[5];
  if (v7)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __71__HMDThreadNetworkMetadataStore__removePreferredNetworkWithCompletion___block_invoke;
    v14[3] = &unk_27867FAA0;
    v14[4] = self;
    v15 = completionCopy;
    v16 = &v17;
    [v7 ctcsDeletePreferredNetworkWithCompletion:v14];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@CoreThreadCommissionerService is not reachable - cannot clear preferred thread credentials", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    (*(completionCopy + 2))(completionCopy, v12);
  }

  _Block_object_dispose(&v17, 8);

  v13 = *MEMORY[0x277D85DE8];
}

void __71__HMDThreadNetworkMetadataStore__removePreferredNetworkWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
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
      v16 = 138543618;
      v17 = v8;
      v18 = 2112;
      v19 = v3;
      v9 = "%{public}@Failed to clear preferred thread network credentials: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_6:
      _os_log_impl(&dword_229538000, v10, v11, v9, &v16, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v8;
    v9 = "%{public}@Preferred thread network credentials cleared";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
    v12 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))(*(a1 + 40), v3, v13, v14);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)removePreferredNetworkWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMDThreadNetworkMetadataStore *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__HMDThreadNetworkMetadataStore_removePreferredNetworkWithCompletion___block_invoke;
  v7[3] = &unk_27868A7A0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

void __70__HMDThreadNetworkMetadataStore_removePreferredNetworkWithCompletion___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __70__HMDThreadNetworkMetadataStore_removePreferredNetworkWithCompletion___block_invoke_2;
  v3[3] = &unk_278686D60;
  objc_copyWeak(&v5, &location);
  v4 = *(a1 + 40);
  [v2 _removePreferredNetworkWithCompletion:v3];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __70__HMDThreadNetworkMetadataStore_removePreferredNetworkWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = _Block_copy(*(a1 + 32));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, v6);
  }
}

- (void)_triggerPreferredNetworkUpdateWithCompletion:(id)completion
{
  completionCopy = completion;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__202996;
  v15 = __Block_byref_object_dispose__202997;
  threadClientFactory = [(HMDThreadNetworkMetadataStore *)self threadClientFactory];
  v16 = threadClientFactory[2]();

  v6 = v12[5];
  if (v6)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __78__HMDThreadNetworkMetadataStore__triggerPreferredNetworkUpdateWithCompletion___block_invoke;
    v8[3] = &unk_27867FA78;
    v9 = completionCopy;
    v10 = &v11;
    [v6 updatePreferredCredentialsInternally:v8];
    v7 = v9;
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (*(completionCopy + 2))(completionCopy, v7);
  }

  _Block_object_dispose(&v11, 8);
}

void __78__HMDThreadNetworkMetadataStore__triggerPreferredNetworkUpdateWithCompletion___block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4, 0);
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    (*(v2 + 16))(v2, v5);
  }
}

- (void)_scheduleTriggerPreferredNetworkUpdateWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueueNetworkChanged = [(HMDThreadNetworkMetadataStore *)self workQueueNetworkChanged];
  dispatch_assert_queue_V2(workQueueNetworkChanged);

  v6 = dispatch_time(0, 2000000000);
  [(HMDThreadNetworkMetadataStore *)self setNetworkChangedHandlingLastUpdatedTime:v6];
  workQueueNetworkChanged2 = [(HMDThreadNetworkMetadataStore *)self workQueueNetworkChanged];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__HMDThreadNetworkMetadataStore__scheduleTriggerPreferredNetworkUpdateWithCompletion___block_invoke;
  block[3] = &unk_278687360;
  v10 = completionCopy;
  v11 = v6;
  block[4] = self;
  v8 = completionCopy;
  dispatch_after(v6, workQueueNetworkChanged2, block);
}

void __86__HMDThreadNetworkMetadataStore__scheduleTriggerPreferredNetworkUpdateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 == [*(a1 + 32) networkChangedHandlingLastUpdatedTime])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __86__HMDThreadNetworkMetadataStore__scheduleTriggerPreferredNetworkUpdateWithCompletion___block_invoke_2;
    v6[3] = &unk_278688DD0;
    v3 = *(a1 + 32);
    v7 = *(a1 + 40);
    [v3 _triggerPreferredNetworkUpdateWithCompletion:v6];
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:15];
    (*(v4 + 16))(v4, v5);
  }
}

- (void)triggerPreferredNetworkUpdateWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueueNetworkChanged = [(HMDThreadNetworkMetadataStore *)self workQueueNetworkChanged];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__HMDThreadNetworkMetadataStore_triggerPreferredNetworkUpdateWithCompletion___block_invoke;
  v7[3] = &unk_27868A7A0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueueNetworkChanged, v7);
}

void __77__HMDThreadNetworkMetadataStore_triggerPreferredNetworkUpdateWithCompletion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __77__HMDThreadNetworkMetadataStore_triggerPreferredNetworkUpdateWithCompletion___block_invoke_2;
  v4[3] = &unk_278689A68;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 _scheduleTriggerPreferredNetworkUpdateWithCompletion:v4];
}

void __77__HMDThreadNetworkMetadataStore_triggerPreferredNetworkUpdateWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 40));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }
}

- (void)_retrievePreferredNetwork:(id)network completion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  completionCopy = completion;
  workQueue = [(HMDThreadNetworkMetadataStore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled())
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__202996;
    v36 = __Block_byref_object_dispose__202997;
    threadClientFactory = [(HMDThreadNetworkMetadataStore *)self threadClientFactory];
    v37 = threadClientFactory[2]();

    if (*(*(&buf + 1) + 40))
    {
      v10 = +[HMDDeviceCapabilities deviceCapabilities];
      supportsThreadService = [v10 supportsThreadService];

      v12 = *(*(&buf + 1) + 40);
      if (supportsThreadService)
      {
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __70__HMDThreadNetworkMetadataStore__retrievePreferredNetwork_completion___block_invoke;
        v28[3] = &unk_27867FA00;
        v29 = completionCopy;
        p_buf = &buf;
        [(HMDThreadNetworkMetadataStore *)self _retrievePreferredNetworkOnThreadCapableController:networkCopy threadClient:v12 completion:v28];
      }

      else
      {
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __70__HMDThreadNetworkMetadataStore__retrievePreferredNetwork_completion___block_invoke_2;
        v24[3] = &unk_27867FA50;
        v24[4] = self;
        v25 = networkCopy;
        v27 = &buf;
        v26 = completionCopy;
        [v12 retrievePreferredNetworkInternallyOnMdnsAndSig:v24];
      }
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        *v31 = 138543362;
        v32 = v21;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@CoreThreadCommissionerService is not reachable.", v31, 0xCu);
      }

      objc_autoreleasePoolPop(v18);
      v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:58];
      (*(completionCopy + 2))(completionCopy, 0, 0, 0, v22);
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Control flow: Cannot retrieve or generate thread preferred network on this platform", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (*(completionCopy + 2))(completionCopy, 0, 0, 0, v17);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __70__HMDThreadNetworkMetadataStore__retrievePreferredNetwork_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (!v8 || v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v27;
      v41 = 2112;
      v42 = v9;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Control flow: Failed to retrieve preferred thread network credentials record : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v28 = *(a1 + 40);
    if (v28)
    {
      v29 = *(a1 + 32);
      v30 = *(*(*(a1 + 56) + 8) + 40);
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __70__HMDThreadNetworkMetadataStore__retrievePreferredNetwork_completion___block_invoke_33;
      v35[3] = &unk_27867FA28;
      v37 = *(a1 + 48);
      v31 = *(a1 + 40);
      v32 = *(a1 + 56);
      v36 = v31;
      v38 = v32;
      [v29 _validateOperationalDatasetWithTHClient:v30 operationalDataset:v28 storeCachedAOD:0 completion:v35];
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543874;
      v40 = v14;
      v41 = 2112;
      v42 = v7;
      v43 = 2112;
      v44 = v8;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Control flow: retrievePreferredNetworkInternallyOnMdnsAndSig returned THCredential:%@, uuid %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = objc_alloc(MEMORY[0x277CD1EA8]);
    v16 = [v7 networkName];
    v17 = [v7 channel];
    v18 = [v7 panID];
    [v7 extendedPANID];
    v19 = v34 = v8;
    v20 = [v7 networkKey];
    v21 = [v7 PSKC];
    v22 = [v7 activeOperationalDataSet];
    v23 = [v15 initWithName:v16 channel:v17 PANID:v18 extendedPANID:v19 masterKey:v20 passPhrase:0 PSKc:v21 operationalDataset:v22];

    v8 = v34;
    v24 = *(a1 + 48);
    v25 = [v34 UUIDString];
    v26 = [v7 activeOperationalDataSet];
    (*(v24 + 16))(v24, v23, v25, v26, 0);

    v9 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_retrievePreferredNetworkOnThreadCapableController:(id)controller threadClient:(id)client completion:(id)completion
{
  controllerCopy = controller;
  clientCopy = client;
  completionCopy = completion;
  workQueue = [(HMDThreadNetworkMetadataStore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __108__HMDThreadNetworkMetadataStore__retrievePreferredNetworkOnThreadCapableController_threadClient_completion___block_invoke;
  v15[3] = &unk_27867F9D8;
  v15[4] = self;
  v16 = controllerCopy;
  v17 = clientCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = clientCopy;
  v14 = controllerCopy;
  [v13 retrievePreferredNetworkWithNoScan:v15];
}

void __108__HMDThreadNetworkMetadataStore__retrievePreferredNetworkOnThreadCapableController_threadClient_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (!v8 || v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v27;
      v38 = 2112;
      v39 = v9;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Control flow: retrievePreferredNetworkWithNoScan failed : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v28 = *(a1 + 40);
    if (v28)
    {
      v29 = *(a1 + 32);
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __108__HMDThreadNetworkMetadataStore__retrievePreferredNetworkOnThreadCapableController_threadClient_completion___block_invoke_32;
      v33[3] = &unk_2786815F0;
      v30 = *(a1 + 48);
      v35 = *(a1 + 56);
      v34 = *(a1 + 40);
      [v29 _validateOperationalDatasetWithTHClient:v30 operationalDataset:v28 storeCachedAOD:0 completion:v33];
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543874;
      v37 = v14;
      v38 = 2112;
      v39 = v7;
      v40 = 2112;
      v41 = v8;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Control flow: retrievePreferredNetworkWithNoScan returned THCredential:%@, uuid %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = objc_alloc(MEMORY[0x277CD1EA8]);
    v16 = [v7 networkName];
    v17 = [v7 channel];
    v18 = [v7 panID];
    [v7 extendedPANID];
    v19 = v32 = v8;
    v20 = [v7 networkKey];
    v21 = [v7 PSKC];
    v22 = [v7 activeOperationalDataSet];
    v23 = [v15 initWithName:v16 channel:v17 PANID:v18 extendedPANID:v19 masterKey:v20 passPhrase:0 PSKc:v21 operationalDataset:v22];

    v8 = v32;
    v24 = *(a1 + 56);
    v25 = [v32 UUIDString];
    v26 = [v7 activeOperationalDataSet];
    (*(v24 + 16))(v24, v23, v25, v26, 0);

    v9 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)retrievePreferredNetwork:(id)network completion:(id)completion
{
  networkCopy = network;
  completionCopy = completion;
  workQueue = [(HMDThreadNetworkMetadataStore *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HMDThreadNetworkMetadataStore_retrievePreferredNetwork_completion___block_invoke;
  block[3] = &unk_278689F98;
  block[4] = self;
  v12 = networkCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = networkCopy;
  dispatch_async(workQueue, block);
}

void __69__HMDThreadNetworkMetadataStore_retrievePreferredNetwork_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__HMDThreadNetworkMetadataStore_retrievePreferredNetwork_completion___block_invoke_2;
  v5[3] = &unk_27867F9B0;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 _retrievePreferredNetwork:v3 completion:v5];
}

- (void)_validateOperationalDatasetWithTHClient:(id)client operationalDataset:(id)dataset storeCachedAOD:(BOOL)d completion:(id)completion
{
  clientCopy = client;
  datasetCopy = dataset;
  completionCopy = completion;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __118__HMDThreadNetworkMetadataStore__validateOperationalDatasetWithTHClient_operationalDataset_storeCachedAOD_completion___block_invoke;
  v16[3] = &unk_27867F988;
  dCopy = d;
  v16[4] = self;
  v17 = clientCopy;
  v18 = datasetCopy;
  v19 = completionCopy;
  v13 = datasetCopy;
  v14 = clientCopy;
  v15 = completionCopy;
  [v14 validateAODInternally:v13 completion:v16];
}

void __118__HMDThreadNetworkMetadataStore__validateOperationalDatasetWithTHClient_operationalDataset_storeCachedAOD_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543874;
      v31 = v25;
      v32 = 2112;
      v33 = v6;
      v34 = 2112;
      v35 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unexpected, operational dataset validation failed. Error: %@, credentials: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 64);
      v13 = HMFBooleanToString();
      *buf = 138543874;
      v31 = v11;
      v32 = 2112;
      v33 = v13;
      v34 = 2112;
      v35 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Operational dataset validation passed, store cached AOD: %@, THCredential:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v14 = objc_alloc(MEMORY[0x277CD1EA8]);
    v15 = [v5 networkName];
    v16 = [v5 channel];
    v17 = [v5 panID];
    v18 = [v5 extendedPANID];
    v19 = [v5 networkKey];
    v20 = [v5 PSKC];
    v21 = [v5 activeOperationalDataSet];
    v22 = [v14 initWithName:v15 channel:v16 PANID:v17 extendedPANID:v18 masterKey:v19 passPhrase:0 PSKc:v20 operationalDataset:v21];

    if (*(a1 + 64) == 1)
    {
      v23 = *(a1 + 40);
      v24 = *(a1 + 48);
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __118__HMDThreadNetworkMetadataStore__validateOperationalDatasetWithTHClient_operationalDataset_storeCachedAOD_completion___block_invoke_28;
      v27[3] = &unk_278689358;
      v27[4] = *(a1 + 32);
      v29 = *(a1 + 56);
      v28 = v22;
      [v23 storeCachedAODasPreferredNetwork:v24 completion:v27];
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }

    v6 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __118__HMDThreadNetworkMetadataStore__validateOperationalDatasetWithTHClient_operationalDataset_storeCachedAOD_completion___block_invoke_28(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v3;
      v9 = "%{public}@Failed to store cached AOD: %@, proceeding";
      v10 = v6;
      v11 = 22;
LABEL_6:
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, v9, &v14, v11);
    }
  }

  else if (v7)
  {
    v8 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v8;
    v9 = "%{public}@THClient storeCachedAODasPreferredNetwork successful";
    v10 = v6;
    v11 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 40), 0, v12);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_retrieveBorderRouterPreferredNetworkWithCompletion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  workQueue = [(HMDThreadNetworkMetadataStore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__202996;
  v21 = __Block_byref_object_dispose__202997;
  threadClientFactory = [(HMDThreadNetworkMetadataStore *)self threadClientFactory];
  v22 = threadClientFactory[2]();

  v7 = v18[5];
  if (v7)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __85__HMDThreadNetworkMetadataStore__retrieveBorderRouterPreferredNetworkWithCompletion___block_invoke;
    v14[3] = &unk_27867F8C0;
    v14[4] = self;
    v15 = completionCopy;
    v16 = &v17;
    [v7 retrievePreferredCredentialsInternally:v14];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@CoreThreadCommissionerService is not reachable.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:58];
    (*(completionCopy + 2))(completionCopy, 0, v12);
  }

  _Block_object_dispose(&v17, 8);

  v13 = *MEMORY[0x277D85DE8];
}

void __85__HMDThreadNetworkMetadataStore__retrieveBorderRouterPreferredNetworkWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8 || v9)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 32);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v24;
      v30 = 2112;
      v31 = v10;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve preferred thread network credentials record : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277CD1EA8]);
    v12 = [v7 networkName];
    v26 = [v7 channel];
    v13 = [v7 panID];
    v14 = [v7 extendedPANID];
    v15 = [v7 networkKey];
    [v7 PSKC];
    v16 = v27 = a1;
    [v7 activeOperationalDataSet];
    v18 = v17 = v8;
    v19 = v12;
    v20 = [v11 initWithName:v12 channel:v26 PANID:v13 extendedPANID:v14 masterKey:v15 passPhrase:0 PSKc:v16 operationalDataset:v18];

    v8 = v17;
    v10 = 0;
    (*(*(v27 + 40) + 16))();
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)retrieveBorderRouterPreferredNetworkWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMDThreadNetworkMetadataStore *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__HMDThreadNetworkMetadataStore_retrieveBorderRouterPreferredNetworkWithCompletion___block_invoke;
  v7[3] = &unk_27868A7A0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

void __84__HMDThreadNetworkMetadataStore_retrieveBorderRouterPreferredNetworkWithCompletion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __84__HMDThreadNetworkMetadataStore_retrieveBorderRouterPreferredNetworkWithCompletion___block_invoke_2;
  v4[3] = &unk_2786815F0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 _retrieveBorderRouterPreferredNetworkWithCompletion:v4];
}

void __90__HMDThreadNetworkMetadataStore__retrieveMetadataOnController_homeHasResident_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8 || v9)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 32);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v24;
      v30 = 2112;
      v31 = v10;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Pairing flow: retrievePreferredCredentialsInternally failed : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277CD1EA8]);
    v12 = [v7 networkName];
    v26 = [v7 channel];
    v13 = [v7 panID];
    v14 = [v7 extendedPANID];
    v15 = [v7 networkKey];
    [v7 PSKC];
    v16 = v27 = a1;
    [v7 activeOperationalDataSet];
    v18 = v17 = v8;
    v19 = v12;
    v20 = [v11 initWithName:v12 channel:v26 PANID:v13 extendedPANID:v14 masterKey:v15 passPhrase:0 PSKc:v16 operationalDataset:v18];

    v8 = v17;
    v10 = 0;
    (*(*(v27 + 40) + 16))();
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_retrieveMetadataOnThreadCapableController:(id)controller threadClient:(id)client homeHasResident:(BOOL)resident completion:(id)completion
{
  controllerCopy = controller;
  clientCopy = client;
  completionCopy = completion;
  workQueue = [(HMDThreadNetworkMetadataStore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __116__HMDThreadNetworkMetadataStore__retrieveMetadataOnThreadCapableController_threadClient_homeHasResident_completion___block_invoke;
  v17[3] = &unk_27867F938;
  v17[4] = self;
  v18 = controllerCopy;
  v19 = clientCopy;
  v20 = completionCopy;
  residentCopy = resident;
  v14 = completionCopy;
  v15 = clientCopy;
  v16 = controllerCopy;
  [v15 retrievePreferredNetworkWithNoScan:v17];
}

void __116__HMDThreadNetworkMetadataStore__retrieveMetadataOnThreadCapableController_threadClient_homeHasResident_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8 || v9)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 32);
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v44 = v23;
      v45 = 2112;
      v46 = v10;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Pairing flow: retrievePreferredNetworkWithNoScan failed : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v24 = *(a1 + 40);
    v25 = objc_autoreleasePoolPush();
    v26 = *(a1 + 32);
    v27 = HMFGetOSLogHandle();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
    if (v24)
    {
      if (v28)
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543362;
        v44 = v29;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Pairing flow: Using cached AOD, validating operational dataset", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
      v31 = *(a1 + 40);
      v30 = *(a1 + 48);
      v32 = *(a1 + 32);
      v33 = *(a1 + 64);
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __116__HMDThreadNetworkMetadataStore__retrieveMetadataOnThreadCapableController_threadClient_homeHasResident_completion___block_invoke_27;
      v39[3] = &unk_27867F910;
      v40 = *(a1 + 56);
      [v32 _validateOperationalDatasetWithTHClient:v30 operationalDataset:v31 storeCachedAOD:(v33 & 1) == 0 completion:v39];
      v34 = v40;
    }

    else
    {
      if (v28)
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543362;
        v44 = v35;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Pairing flow: No cached AOD, calling retrieveOrGeneratePreferredNetworkInternally", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __116__HMDThreadNetworkMetadataStore__retrieveMetadataOnThreadCapableController_threadClient_homeHasResident_completion___block_invoke_26;
      v41[3] = &unk_27867F8E8;
      v41[4] = *(a1 + 32);
      v36 = *(a1 + 48);
      v42 = *(a1 + 56);
      [v36 retrieveOrGeneratePreferredNetworkInternally:v41];
      v34 = v42;
    }
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277CD1EA8]);
    v12 = [v7 networkName];
    v13 = [v7 channel];
    v14 = [v7 panID];
    [v7 extendedPANID];
    v15 = v38 = v8;
    v16 = [v7 networkKey];
    v17 = [v7 PSKC];
    v18 = [v7 activeOperationalDataSet];
    v19 = [v11 initWithName:v12 channel:v13 PANID:v14 extendedPANID:v15 masterKey:v16 passPhrase:0 PSKc:v17 operationalDataset:v18];

    v10 = 0;
    v8 = v38;

    (*(*(a1 + 56) + 16))();
  }

  v37 = *MEMORY[0x277D85DE8];
}

void __116__HMDThreadNetworkMetadataStore__retrieveMetadataOnThreadCapableController_threadClient_homeHasResident_completion___block_invoke_26(uint64_t a1, void *a2, void *a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (!v8 || v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v25;
      v30 = 2112;
      v31 = v9;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Pairing flow: retrieveOrGeneratePreferredNetworkInternally failed : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v27 = a1;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543874;
      v29 = v14;
      v30 = 2112;
      v31 = v7;
      v32 = 2112;
      v33 = v8;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Pairing flow: retrieveOrGeneratePreferredNetworkInternally returned THCredential:%@, uuid %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = objc_alloc(MEMORY[0x277CD1EA8]);
    v16 = [v7 networkName];
    v17 = [v7 channel];
    v18 = [v7 panID];
    v19 = [v7 extendedPANID];
    v20 = [v7 networkKey];
    v21 = [v7 PSKC];
    [v7 activeOperationalDataSet];
    v23 = v22 = v8;
    v24 = [v15 initWithName:v16 channel:v17 PANID:v18 extendedPANID:v19 masterKey:v20 passPhrase:0 PSKc:v21 operationalDataset:v23];

    v8 = v22;
    (*(*(v27 + 40) + 16))();

    v9 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_retrieveMetadataWithCompletion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  workQueue = [(HMDThreadNetworkMetadataStore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__202996;
  v20 = __Block_byref_object_dispose__202997;
  v21 = [objc_alloc(MEMORY[0x277CE1968]) initWithKeychainAccessGroup:@"com.apple.thread.network"];
  v6 = v17[5];
  if (v6)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __65__HMDThreadNetworkMetadataStore__retrieveMetadataWithCompletion___block_invoke;
    v13[3] = &unk_27867F8C0;
    v13[4] = self;
    v15 = &v16;
    v14 = completionCopy;
    [v6 retrievePreferredCredentialsInternally:v13];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@CoreThreadCommissionerService is not reachable.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:58];
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }

  _Block_object_dispose(&v16, 8);

  v12 = *MEMORY[0x277D85DE8];
}

void __65__HMDThreadNetworkMetadataStore__retrieveMetadataWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8 || v9)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 32);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v24;
      v40 = 2112;
      v41 = v10;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve preferred thread network credentials record : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    if (isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled() && (+[HMDDeviceCapabilities deviceCapabilities](HMDDeviceCapabilities, "deviceCapabilities"), v25 = objc_claimAutoreleasedReturnValue(), v26 = [v25 supportsThreadService], v25, v26))
    {
      v27 = *(*(*(a1 + 48) + 8) + 40);
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __65__HMDThreadNetworkMetadataStore__retrieveMetadataWithCompletion___block_invoke_23;
      v35[3] = &unk_27867F8C0;
      v28 = *(a1 + 40);
      v35[4] = *(a1 + 32);
      v29 = v28;
      v30 = *(a1 + 48);
      v36 = v29;
      v37 = v30;
      [v27 retrieveOrGeneratePreferredNetworkInternally:v35];
    }

    else
    {
      (*(*(a1 + 40) + 16))();
      [*(*(*(a1 + 48) + 8) + 40) invalidate];
    }
  }

  else
  {
    v34 = objc_alloc(MEMORY[0x277CD1EA8]);
    v32 = [v7 networkName];
    v33 = [v7 channel];
    v11 = [v7 panID];
    v12 = [v7 extendedPANID];
    v13 = [v7 networkKey];
    [v7 PSKC];
    v14 = v7;
    v15 = a1;
    v17 = v16 = v8;
    v18 = [v14 activeOperationalDataSet];
    v19 = [v34 initWithName:v32 channel:v33 PANID:v11 extendedPANID:v12 masterKey:v13 passPhrase:0 PSKc:v17 operationalDataset:v18];

    v10 = 0;
    v8 = v16;

    (*(*(v15 + 40) + 16))();
    v20 = *(v15 + 48);
    v7 = v14;
    [*(*(v20 + 8) + 40) invalidate];
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __65__HMDThreadNetworkMetadataStore__retrieveMetadataWithCompletion___block_invoke_23(uint64_t a1, void *a2, void *a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (!v8 || v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v25;
      v30 = 2112;
      v31 = v9;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve or generate preferred thread network credentials record : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    (*(*(a1 + 40) + 16))();
    [*(*(*(a1 + 48) + 8) + 40) invalidate];
  }

  else
  {
    v27 = a1;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543874;
      v29 = v14;
      v30 = 2112;
      v31 = v7;
      v32 = 2112;
      v33 = v8;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEBUG, "%{public}@retrieveOrGeneratePreferredNetworkInternally returned THCredential:%@, uuid %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = objc_alloc(MEMORY[0x277CD1EA8]);
    v16 = [v7 networkName];
    v17 = [v7 channel];
    v18 = [v7 panID];
    v19 = [v7 extendedPANID];
    v20 = [v7 networkKey];
    [v7 PSKC];
    v22 = v21 = v8;
    v23 = [v7 activeOperationalDataSet];
    v24 = [v15 initWithName:v16 channel:v17 PANID:v18 extendedPANID:v19 masterKey:v20 passPhrase:0 PSKc:v22 operationalDataset:v23];

    v8 = v21;
    (*(*(v27 + 40) + 16))();
    [*(*(*(v27 + 48) + 8) + 40) invalidate];

    v9 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)retrieveMetadataWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMDThreadNetworkMetadataStore *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HMDThreadNetworkMetadataStore_retrieveMetadataWithCompletion___block_invoke;
  v7[3] = &unk_27868A7A0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

void __64__HMDThreadNetworkMetadataStore_retrieveMetadataWithCompletion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__HMDThreadNetworkMetadataStore_retrieveMetadataWithCompletion___block_invoke_2;
  v4[3] = &unk_2786815F0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 _retrieveMetadataWithCompletion:v4];
}

- (void)retrieveMetadata:(id)metadata homeHasResident:(BOOL)resident completion:(id)completion
{
  metadataCopy = metadata;
  completionCopy = completion;
  workQueue = [(HMDThreadNetworkMetadataStore *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__HMDThreadNetworkMetadataStore_retrieveMetadata_homeHasResident_completion___block_invoke;
  v13[3] = &unk_278685C18;
  v13[4] = self;
  v14 = metadataCopy;
  residentCopy = resident;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = metadataCopy;
  dispatch_async(workQueue, v13);
}

void __77__HMDThreadNetworkMetadataStore_retrieveMetadata_homeHasResident_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__HMDThreadNetworkMetadataStore_retrieveMetadata_homeHasResident_completion___block_invoke_2;
  v6[3] = &unk_2786815F0;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 _retrieveMetadataOnController:v3 homeHasResident:v4 completion:v6];
}

- (id)initInternalWithThreadClientFactory:(id)factory
{
  factoryCopy = factory;
  v20.receiver = self;
  v20.super_class = HMDThreadNetworkMetadataStore;
  v5 = [(HMDThreadNetworkMetadataStore *)&v20 init];
  if (v5)
  {
    v6 = HMFDispatchQueueName();
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_get_global_queue(25, 0);
    v9 = dispatch_queue_create_with_target_V2(v6, v7, v8);
    workQueue = v5->_workQueue;
    v5->_workQueue = v9;

    if (factoryCopy)
    {
      v11 = factoryCopy;
    }

    else
    {
      v11 = &__block_literal_global_15_203041;
    }

    v12 = _Block_copy(v11);
    threadClientFactory = v5->_threadClientFactory;
    v5->_threadClientFactory = v12;

    v14 = HMFDispatchQueueName();
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_get_global_queue(9, 0);
    v17 = dispatch_queue_create_with_target_V2(v14, v15, v16);
    workQueueNetworkChanged = v5->_workQueueNetworkChanged;
    v5->_workQueueNetworkChanged = v17;
  }

  return v5;
}

id __69__HMDThreadNetworkMetadataStore_initInternalWithThreadClientFactory___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CE1968]) initWithKeychainAccessGroup:@"com.apple.thread.network"];

  return v0;
}

- (HMDThreadNetworkMetadataStore)init
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

+ (HMDThreadNetworkMetadataStore)storeWithThreadClientFactory:(id)factory
{
  factoryCopy = factory;
  v4 = [[HMDThreadNetworkMetadataStore alloc] initInternalWithThreadClientFactory:factoryCopy];

  return v4;
}

+ (HMDThreadNetworkMetadataStore)defaultStore
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&defaultStore_weakStore);
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  if (WeakRetained)
  {
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Reusing existing store", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Creating new store", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    WeakRetained = [[HMDThreadNetworkMetadataStore alloc] initInternalWithThreadClientFactory:0];
    objc_storeWeak(&defaultStore_weakStore, WeakRetained);
  }

  os_unfair_lock_unlock(&defaultStore_lock);
  v10 = *MEMORY[0x277D85DE8];

  return WeakRetained;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_203065 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_203065, &__block_literal_global_203066);
  }

  v3 = logCategory__hmf_once_v1_203067;

  return v3;
}

void __44__HMDThreadNetworkMetadataStore_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_203067;
  logCategory__hmf_once_v1_203067 = v1;
}

+ (id)new
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

@end