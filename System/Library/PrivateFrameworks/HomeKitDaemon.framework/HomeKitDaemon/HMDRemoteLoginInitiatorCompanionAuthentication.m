@interface HMDRemoteLoginInitiatorCompanionAuthentication
+ (id)logCategory;
- (HMDRemoteLoginInitiatorCompanionAuthentication)initWithSessionID:(id)a3 remoteDevice:(id)a4 workQueue:(id)a5 remoteMessageSender:(id)a6 delegate:(id)a7 account:(id)a8;
- (id)description;
- (void)_authenticate;
- (void)authenticate;
- (void)dealloc;
@end

@implementation HMDRemoteLoginInitiatorCompanionAuthentication

- (void)_authenticate
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = +[HMDAppleAccountManager sharedManager];
  v4 = [v3 accountStore];

  v5 = [(HMDRemoteLoginInitiatorCompanionAuthentication *)self account];
  v27 = 0;
  v6 = [v4 credentialForAccount:v5 error:&v27];
  v7 = v27;

  if (v6)
  {
    v8 = [(HMDRemoteLoginInitiatorCompanionAuthentication *)self account];
    [v8 setCredential:v6];

    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [(HMDRemoteLoginInitiatorCompanionAuthentication *)v10 account];
      v14 = [v13 identifier];
      v15 = [(HMDRemoteLoginInitiatorCompanionAuthentication *)v10 account];
      *buf = 138543874;
      v31 = v12;
      v32 = 2112;
      v33 = v14;
      v34 = 2112;
      v35 = v15;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Loaded credentials for account %@, %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v16 = [MEMORY[0x277CF0218] currentDevice];
    [v16 setLinkType:3];
    v17 = [HMDRemoteLoginCompanionAuthenticationRequest alloc];
    v18 = [(HMDRemoteLoginAuthentication *)v10 sessionID];
    v19 = [(HMRemoteLoginMessage *)v17 initWithSessionID:v18];

    v20 = [(HMDRemoteLoginInitiatorCompanionAuthentication *)v10 account];
    [(HMDRemoteLoginCompanionAuthenticationRequest *)v19 setAccount:v20];

    [(HMDRemoteLoginCompanionAuthenticationRequest *)v19 setCompanionDevice:v16];
    [(HMDRemoteLoginAuthenticationRequest *)v19 setTargetedAccountType:0];
    v28 = @"kHMDRemoteLoginCompanionAuthenticationRequest";
    v21 = encodeRootObject();
    v29 = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];

    objc_initWeak(buf, v10);
    v23 = [(HMDRemoteLoginAuthentication *)v10 remoteMessageSender];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __63__HMDRemoteLoginInitiatorCompanionAuthentication__authenticate__block_invoke;
    v25[3] = &unk_278687FB0;
    objc_copyWeak(&v26, buf);
    [v23 sendRemoteMessageWithName:@"kHMDRemoteLoginCompanionAuthenticationRequest" payload:v22 responseHandler:v25];

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __63__HMDRemoteLoginInitiatorCompanionAuthentication__authenticate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAuthenticationResponse:v5 error:v6];
}

- (void)authenticate
{
  v3 = [(HMDRemoteLoginAuthentication *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__HMDRemoteLoginInitiatorCompanionAuthentication_authenticate__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDRemoteLoginAuthentication *)self sessionID];
  v5 = [(HMDRemoteLoginInitiatorCompanionAuthentication *)self account];
  v6 = [v3 stringWithFormat:@"[Init-Companion-Auth: Session: %@, Account: %@]", v4, v5];

  return v6;
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543618;
    v10 = v6;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Dealloc %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8.receiver = v4;
  v8.super_class = HMDRemoteLoginInitiatorCompanionAuthentication;
  [(HMDRemoteLoginInitiatorCompanionAuthentication *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDRemoteLoginInitiatorCompanionAuthentication)initWithSessionID:(id)a3 remoteDevice:(id)a4 workQueue:(id)a5 remoteMessageSender:(id)a6 delegate:(id)a7 account:(id)a8
{
  v15 = a8;
  v19.receiver = self;
  v19.super_class = HMDRemoteLoginInitiatorCompanionAuthentication;
  v16 = [(HMDRemoteLoginInitiatorAuthentication *)&v19 initWithSessionID:a3 remoteDevice:a4 workQueue:a5 remoteMessageSender:a6 delegate:a7];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_account, a8);
  }

  return v17;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_119914 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_119914, &__block_literal_global_119915);
  }

  v3 = logCategory__hmf_once_v2_119916;

  return v3;
}

void __61__HMDRemoteLoginInitiatorCompanionAuthentication_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_119916;
  logCategory__hmf_once_v2_119916 = v1;
}

@end