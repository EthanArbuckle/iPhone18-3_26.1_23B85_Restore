@interface HMDRemoteLoginReceiverCompanionAuthentication
+ (id)logCategory;
- (HMDRemoteLoginReceiverCompanionAuthentication)initWithSessionID:(id)a3 remoteDevice:(id)a4 workQueue:(id)a5 remoteMessageSender:(id)a6 delegate:(id)a7 request:(id)a8;
- (id)description;
- (void)_authenticate;
- (void)_authenticateAccount:(id)a3 alreadyExists:(BOOL)a4 withCompanionDevice:(id)a5;
- (void)authenticate;
- (void)dealloc;
@end

@implementation HMDRemoteLoginReceiverCompanionAuthentication

- (void)_authenticateAccount:(id)a3 alreadyExists:(BOOL)a4 withCompanionDevice:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [(HMDRemoteLoginReceiverCompanionAuthentication *)v11 request];
    v15 = HMDRemoteLoginAccountTypeAsString([v14 targetedAccountType]);
    v25 = 138544130;
    v26 = v13;
    v27 = 2112;
    v28 = v8;
    v29 = 2112;
    v30 = v15;
    v31 = 2112;
    v32 = v9;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Authenticating the account %@, service type %@, with companion device: %@", &v25, 0x2Au);
  }

  objc_autoreleasePoolPop(v10);
  v16 = objc_alloc_init(MEMORY[0x277CF0170]);
  v17 = [v8 username];
  [v16 setUsername:v17];

  [v16 setIsUsernameEditable:0];
  [v16 setShouldAllowAppleIDCreation:0];
  v18 = [(HMDRemoteLoginReceiverCompanionAuthentication *)v11 request];
  [v16 setServiceType:{+[HMDRemoteLoginUtilities serviceTypeForAccountService:](HMDRemoteLoginUtilities, "serviceTypeForAccountService:", objc_msgSend(v18, "targetedAccountType"))}];

  [v16 setAuthenticationType:1];
  [v16 setShouldUpdatePersistentServiceTokens:1];
  if (!a4)
  {
    [v16 setCompanionDevice:v9];
    v19 = [HMDRemoteLoginAnisetteDataProvider alloc];
    v20 = [(HMDRemoteLoginAuthentication *)v11 sessionID];
    v21 = [(HMDRemoteLoginAuthentication *)v11 remoteMessageSender];
    v22 = [(HMDRemoteLoginAnisetteDataProvider *)v19 initWithSessionID:v20 remoteMessageSender:v21];
    [v16 setAnisetteDataProvider:v22];
  }

  [v16 _setProxyingForApp:1];
  v23 = [(HMDRemoteLoginReceiverCompanionAuthentication *)v11 request];
  -[HMDRemoteLoginReceiverAuthentication _authenticateAccount:targetedAccountType:](v11, "_authenticateAccount:targetedAccountType:", v16, [v23 targetedAccountType]);

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_authenticate
{
  v3 = [(HMDRemoteLoginReceiverCompanionAuthentication *)self request];
  v4 = [v3 account];

  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__HMDRemoteLoginReceiverCompanionAuthentication__authenticate__block_invoke;
  v6[3] = &unk_278676BC8;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(HMDRemoteLoginReceiverAuthentication *)self _saveRemoteVerifiedAccount:v5 completion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __62__HMDRemoteLoginReceiverCompanionAuthentication__authenticate__block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (a2)
  {
    v10 = [WeakRetained request];
    v11 = [v10 companionDevice];

    [v9 _authenticateAccount:*(a1 + 32) alreadyExists:a3 withCompanionDevice:v11];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v9;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Save-remote-verified-account failed with error %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    [v13 _completedAuthenticationRequest:v7 loggedInAccount:0];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)authenticate
{
  v3 = [(HMDRemoteLoginAuthentication *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__HMDRemoteLoginReceiverCompanionAuthentication_authenticate__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDRemoteLoginAuthentication *)self sessionID];
  v5 = [(HMDRemoteLoginReceiverCompanionAuthentication *)self request];
  v6 = [v5 account];
  v7 = [v3 stringWithFormat:@"[Recv-Companion-Auth: Session: %@, Account: %@]", v4, v6];

  return v7;
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
  v8.super_class = HMDRemoteLoginReceiverCompanionAuthentication;
  [(HMDRemoteLoginReceiverCompanionAuthentication *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDRemoteLoginReceiverCompanionAuthentication)initWithSessionID:(id)a3 remoteDevice:(id)a4 workQueue:(id)a5 remoteMessageSender:(id)a6 delegate:(id)a7 request:(id)a8
{
  v15 = a8;
  v19.receiver = self;
  v19.super_class = HMDRemoteLoginReceiverCompanionAuthentication;
  v16 = [(HMDRemoteLoginReceiverAuthentication *)&v19 initWithSessionID:a3 remoteDevice:a4 workQueue:a5 remoteMessageSender:a6 delegate:a7];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_request, a8);
  }

  return v17;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_84532 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_84532, &__block_literal_global_84533);
  }

  v3 = logCategory__hmf_once_v2_84534;

  return v3;
}

void __60__HMDRemoteLoginReceiverCompanionAuthentication_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_84534;
  logCategory__hmf_once_v2_84534 = v1;
}

@end