@interface HMDRemoteLoginAnisetteDataProvider
+ (id)logCategory;
- (HMDRemoteLoginAnisetteDataProvider)initWithSessionID:(id)a3 remoteMessageSender:(id)a4;
- (void)eraseAnisetteWithCompletion:(id)a3;
- (void)legacyAnisetteDataForDSID:(id)a3 withCompletion:(id)a4;
- (void)provisionAnisetteWithCompletion:(id)a3;
- (void)syncAnisetteWithSIMData:(id)a3 completion:(id)a4;
@end

@implementation HMDRemoteLoginAnisetteDataProvider

- (void)legacyAnisetteDataForDSID:(id)a3 withCompletion:(id)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277CD1B08]) initNewMessage];
  [v8 setDsid:v6];
  v9 = [v8 messageName];
  v20 = v9;
  v10 = encodeRootObject();
  v21[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];

  objc_initWeak(&location, self);
  v12 = [(HMDRemoteLoginAnisetteDataProvider *)self remoteMessageSender];
  v13 = [v8 messageName];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __79__HMDRemoteLoginAnisetteDataProvider_legacyAnisetteDataForDSID_withCompletion___block_invoke;
  v16[3] = &unk_2797355F8;
  objc_copyWeak(&v18, &location);
  v14 = v7;
  v17 = v14;
  [v12 sendRemoteMessageWithName:v13 payload:v11 responseHandler:v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  v15 = *MEMORY[0x277D85DE8];
}

void __79__HMDRemoteLoginAnisetteDataProvider_legacyAnisetteDataForDSID_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [MEMORY[0x277CD1B10] objWithDict:v6];
  v9 = objc_autoreleasePoolPush();
  v10 = WeakRetained;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v12;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Received %@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = *(a1 + 32);
  v14 = [v8 anisetteData];
  (*(v13 + 16))(v13, v14, v5);

  v15 = *MEMORY[0x277D85DE8];
}

void __94__HMDRemoteLoginAnisetteDataProvider_fetchAnisetteDataAndProvisionIfNecessary_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [MEMORY[0x277CD1A48] objWithDict:v6];
  v9 = objc_autoreleasePoolPush();
  v10 = WeakRetained;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v12;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Received %@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = *(a1 + 32);
  v14 = [v8 anisetteData];
  (*(v13 + 16))(v13, v14, v5);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)eraseAnisetteWithCompletion:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CD19D8]) initNewMessage];
  v6 = [v5 messageName];
  v17 = v6;
  v7 = encodeRootObject();
  v18[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];

  objc_initWeak(&location, self);
  v9 = [(HMDRemoteLoginAnisetteDataProvider *)self remoteMessageSender];
  v10 = [v5 messageName];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__HMDRemoteLoginAnisetteDataProvider_eraseAnisetteWithCompletion___block_invoke;
  v13[3] = &unk_2797355F8;
  objc_copyWeak(&v15, &location);
  v11 = v4;
  v14 = v11;
  [v9 sendRemoteMessageWithName:v10 payload:v8 responseHandler:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  v12 = *MEMORY[0x277D85DE8];
}

void __66__HMDRemoteLoginAnisetteDataProvider_eraseAnisetteWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [MEMORY[0x277CD19E0] objWithDict:v6];
  v9 = objc_autoreleasePoolPush();
  v10 = WeakRetained;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v12;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Received %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v8 didSucceed], v5);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)syncAnisetteWithSIMData:(id)a3 completion:(id)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277CD1E90]) initNewMessage];
  [v8 setSimData:v6];
  v9 = [v8 messageName];
  v20 = v9;
  v10 = encodeRootObject();
  v21[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];

  objc_initWeak(&location, self);
  v12 = [(HMDRemoteLoginAnisetteDataProvider *)self remoteMessageSender];
  v13 = [v8 messageName];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__HMDRemoteLoginAnisetteDataProvider_syncAnisetteWithSIMData_completion___block_invoke;
  v16[3] = &unk_2797355F8;
  objc_copyWeak(&v18, &location);
  v14 = v7;
  v17 = v14;
  [v12 sendRemoteMessageWithName:v13 payload:v11 responseHandler:v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  v15 = *MEMORY[0x277D85DE8];
}

void __73__HMDRemoteLoginAnisetteDataProvider_syncAnisetteWithSIMData_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [MEMORY[0x277CD1E98] objWithDict:v6];
  v9 = objc_autoreleasePoolPush();
  v10 = WeakRetained;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v12;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Received %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v8 didSucceed], v5);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)provisionAnisetteWithCompletion:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CD1D30]) initNewMessage];
  v6 = [v5 messageName];
  v17 = v6;
  v7 = encodeRootObject();
  v18[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];

  objc_initWeak(&location, self);
  v9 = [(HMDRemoteLoginAnisetteDataProvider *)self remoteMessageSender];
  v10 = [v5 messageName];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__HMDRemoteLoginAnisetteDataProvider_provisionAnisetteWithCompletion___block_invoke;
  v13[3] = &unk_2797355F8;
  objc_copyWeak(&v15, &location);
  v11 = v4;
  v14 = v11;
  [v9 sendRemoteMessageWithName:v10 payload:v8 responseHandler:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  v12 = *MEMORY[0x277D85DE8];
}

void __70__HMDRemoteLoginAnisetteDataProvider_provisionAnisetteWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [MEMORY[0x277CD1D38] objWithDict:v6];
  v9 = objc_autoreleasePoolPush();
  v10 = WeakRetained;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v12;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Received %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v8 didSucceed], v5);

  v13 = *MEMORY[0x277D85DE8];
}

- (HMDRemoteLoginAnisetteDataProvider)initWithSessionID:(id)a3 remoteMessageSender:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDRemoteLoginAnisetteDataProvider;
  v9 = [(HMDRemoteLoginAnisetteDataProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sessionID, a3);
    objc_storeStrong(&v10->_remoteMessageSender, a4);
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_60571 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_60571, &__block_literal_global_60572);
  }

  v3 = logCategory__hmf_once_v1_60573;

  return v3;
}

uint64_t __49__HMDRemoteLoginAnisetteDataProvider_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_60573;
  logCategory__hmf_once_v1_60573 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end