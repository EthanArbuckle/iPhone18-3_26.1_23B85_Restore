@interface HMDRemoteLoginAnisetteDataHandler
+ (id)logCategory;
- (HMDAppleMediaAccessory)accessory;
- (HMDRemoteLoginAnisetteDataHandler)initWithUUID:(id)a3 accessory:(id)a4;
- (id)logIdentifier;
- (void)_handleEraseAnisetteDataRequestMessage:(id)a3;
- (void)_handleFetchAnisetteDataRequestMessage:(id)a3;
- (void)_handleLegacyAnisetteDataRequestMessage:(id)a3;
- (void)_handleProvisionAnisetteDataRequestMessage:(id)a3;
- (void)_handleSyncAnisetteDataRequestMessage:(id)a3;
- (void)configureWithWorkQueue:(id)a3 messageDispatcher:(id)a4;
- (void)registerForMessages;
@end

@implementation HMDRemoteLoginAnisetteDataHandler

- (HMDAppleMediaAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDRemoteLoginAnisetteDataHandler *)self uuid];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)_handleLegacyAnisetteDataRequestMessage:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CD1B08] objWithMessage:v4];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v9;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling legacy anisette data request: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDRemoteLoginAnisetteDataHandler *)v7 provisioningController];
  v11 = [v5 dsid];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__HMDRemoteLoginAnisetteDataHandler__handleLegacyAnisetteDataRequestMessage___block_invoke;
  v15[3] = &unk_27867CBF0;
  v16 = v5;
  v17 = v4;
  v12 = v4;
  v13 = v5;
  [v10 legacyAnisetteDataForDSID:v11 withCompletion:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __77__HMDRemoteLoginAnisetteDataHandler__handleLegacyAnisetteDataRequestMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CD1B10];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) sessionID];
  v9 = [v5 initWithSessionID:v6];

  [v9 setAnisetteData:v4];
  v7 = [*(a1 + 40) responseHandler];
  v8 = [v9 messagePayload];
  (v7)[2](v7, 0, v8);
}

- (void)_handleFetchAnisetteDataRequestMessage:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CD1A40] objWithMessage:v4];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v18 = v9;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling fetch anisette data request: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDRemoteLoginAnisetteDataHandler *)v7 provisioningController];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__HMDRemoteLoginAnisetteDataHandler__handleFetchAnisetteDataRequestMessage___block_invoke;
  v14[3] = &unk_27867CBF0;
  v15 = v5;
  v16 = v4;
  v11 = v4;
  v12 = v5;
  [v10 anisetteDataWithCompletion:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __76__HMDRemoteLoginAnisetteDataHandler__handleFetchAnisetteDataRequestMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CD1A48];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) sessionID];
  v9 = [v5 initWithSessionID:v6];

  [v9 setAnisetteData:v4];
  v7 = [*(a1 + 40) responseHandler];
  v8 = [v9 messagePayload];
  (v7)[2](v7, 0, v8);
}

- (void)_handleEraseAnisetteDataRequestMessage:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CD19D8] objWithMessage:v4];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v18 = v9;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling erase anisette data request: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDRemoteLoginAnisetteDataHandler *)v7 provisioningController];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__HMDRemoteLoginAnisetteDataHandler__handleEraseAnisetteDataRequestMessage___block_invoke;
  v14[3] = &unk_27867CBC8;
  v15 = v5;
  v16 = v4;
  v11 = v4;
  v12 = v5;
  [v10 eraseWithCompletion:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __76__HMDRemoteLoginAnisetteDataHandler__handleEraseAnisetteDataRequestMessage___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc(MEMORY[0x277CD19E0]);
  v5 = [*(a1 + 32) sessionID];
  v8 = [v4 initWithSessionID:v5];

  [v8 setDidSucceed:a2];
  v6 = [*(a1 + 40) responseHandler];
  v7 = [v8 messagePayload];
  (v6)[2](v6, 0, v7);
}

- (void)_handleSyncAnisetteDataRequestMessage:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CD1E90] objWithMessage:v4];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v9;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling sync anisette data request: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDRemoteLoginAnisetteDataHandler *)v7 provisioningController];
  v11 = [v5 simData];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__HMDRemoteLoginAnisetteDataHandler__handleSyncAnisetteDataRequestMessage___block_invoke;
  v15[3] = &unk_27867CBC8;
  v16 = v5;
  v17 = v4;
  v12 = v4;
  v13 = v5;
  [v10 syncWithSIMData:v11 completion:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __75__HMDRemoteLoginAnisetteDataHandler__handleSyncAnisetteDataRequestMessage___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc(MEMORY[0x277CD1E98]);
  v5 = [*(a1 + 32) sessionID];
  v8 = [v4 initWithSessionID:v5];

  [v8 setDidSucceed:a2];
  v6 = [*(a1 + 40) responseHandler];
  v7 = [v8 messagePayload];
  (v6)[2](v6, 0, v7);
}

- (void)_handleProvisionAnisetteDataRequestMessage:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CD1D30] objWithMessage:v4];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v18 = v9;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling provision anisette data request: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDRemoteLoginAnisetteDataHandler *)v7 provisioningController];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__HMDRemoteLoginAnisetteDataHandler__handleProvisionAnisetteDataRequestMessage___block_invoke;
  v14[3] = &unk_27867CBC8;
  v15 = v5;
  v16 = v4;
  v11 = v4;
  v12 = v5;
  [v10 provisionWithCompletion:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __80__HMDRemoteLoginAnisetteDataHandler__handleProvisionAnisetteDataRequestMessage___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc(MEMORY[0x277CD1D38]);
  v5 = [*(a1 + 32) sessionID];
  v8 = [v4 initWithSessionID:v5];

  [v8 setDidSucceed:a2];
  v6 = [*(a1 + 40) responseHandler];
  v7 = [v8 messagePayload];
  (v6)[2](v6, 0, v7);
}

- (void)registerForMessages
{
  v27[2] = *MEMORY[0x277D85DE8];
  v3 = [(HMDRemoteLoginAnisetteDataHandler *)self accessory];
  v4 = [v3 home];
  v5 = [HMDUserMessagePolicy userMessagePolicyWithHome:v4 userPrivilege:4 remoteAccessRequired:0];

  v6 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v7 = [(HMDRemoteLoginAnisetteDataHandler *)self msgDispatcher];
  v8 = [MEMORY[0x277CD1D30] messageName];
  v27[0] = v5;
  v27[1] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  [v7 registerForMessage:v8 receiver:self policies:v9 selector:sel__handleProvisionAnisetteDataRequestMessage_];

  v10 = [(HMDRemoteLoginAnisetteDataHandler *)self msgDispatcher];
  v11 = [MEMORY[0x277CD1E90] messageName];
  v26[0] = v5;
  v26[1] = v6;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  [v10 registerForMessage:v11 receiver:self policies:v12 selector:sel__handleSyncAnisetteDataRequestMessage_];

  v13 = [(HMDRemoteLoginAnisetteDataHandler *)self msgDispatcher];
  v14 = [MEMORY[0x277CD19D8] messageName];
  v25[0] = v5;
  v25[1] = v6;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  [v13 registerForMessage:v14 receiver:self policies:v15 selector:sel__handleEraseAnisetteDataRequestMessage_];

  v16 = [(HMDRemoteLoginAnisetteDataHandler *)self msgDispatcher];
  v17 = [MEMORY[0x277CD1A40] messageName];
  v24[0] = v5;
  v24[1] = v6;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [v16 registerForMessage:v17 receiver:self policies:v18 selector:sel__handleFetchAnisetteDataRequestMessage_];

  v19 = [(HMDRemoteLoginAnisetteDataHandler *)self msgDispatcher];
  v20 = [MEMORY[0x277CD1B08] messageName];
  v23[0] = v5;
  v23[1] = v6;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  [v19 registerForMessage:v20 receiver:self policies:v21 selector:sel__handleLegacyAnisetteDataRequestMessage_];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)configureWithWorkQueue:(id)a3 messageDispatcher:(id)a4
{
  v6 = a4;
  [(HMDRemoteLoginAnisetteDataHandler *)self setWorkQueue:a3];
  [(HMDRemoteLoginAnisetteDataHandler *)self setMsgDispatcher:v6];
}

- (HMDRemoteLoginAnisetteDataHandler)initWithUUID:(id)a3 accessory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HMDRemoteLoginAnisetteDataHandler;
  v9 = [(HMDRemoteLoginAnisetteDataHandler *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_uuid, a3);
    objc_storeWeak(&v10->_accessory, v8);
    v11 = objc_alloc_init(MEMORY[0x277CF0168]);
    provisioningController = v10->_provisioningController;
    v10->_provisioningController = v11;
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t5_169941 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t5_169941, &__block_literal_global_169942);
  }

  v3 = logCategory__hmf_once_v6_169943;

  return v3;
}

void __48__HMDRemoteLoginAnisetteDataHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v6_169943;
  logCategory__hmf_once_v6_169943 = v1;
}

@end