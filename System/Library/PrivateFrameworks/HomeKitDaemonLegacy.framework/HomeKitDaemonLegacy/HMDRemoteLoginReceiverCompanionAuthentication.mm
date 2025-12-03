@interface HMDRemoteLoginReceiverCompanionAuthentication
+ (id)logCategory;
- (HMDRemoteLoginReceiverCompanionAuthentication)initWithSessionID:(id)d remoteDevice:(id)device workQueue:(id)queue remoteMessageSender:(id)sender delegate:(id)delegate request:(id)request;
- (id)description;
- (void)_authenticate;
- (void)_authenticateAccount:(id)account alreadyExists:(BOOL)exists withCompanionDevice:(id)device;
- (void)authenticate;
- (void)dealloc;
@end

@implementation HMDRemoteLoginReceiverCompanionAuthentication

- (void)_authenticateAccount:(id)account alreadyExists:(BOOL)exists withCompanionDevice:(id)device
{
  v33 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  deviceCopy = device;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    request = [(HMDRemoteLoginReceiverCompanionAuthentication *)selfCopy request];
    v15 = HMDRemoteLoginAccountTypeAsString([request targetedAccountType]);
    v25 = 138544130;
    v26 = v13;
    v27 = 2112;
    v28 = accountCopy;
    v29 = 2112;
    v30 = v15;
    v31 = 2112;
    v32 = deviceCopy;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Authenticating the account %@, service type %@, with companion device: %@", &v25, 0x2Au);
  }

  objc_autoreleasePoolPop(v10);
  v16 = objc_alloc_init(MEMORY[0x277CF0170]);
  username = [accountCopy username];
  [v16 setUsername:username];

  [v16 setIsUsernameEditable:0];
  [v16 setShouldAllowAppleIDCreation:0];
  request2 = [(HMDRemoteLoginReceiverCompanionAuthentication *)selfCopy request];
  [v16 setServiceType:{+[HMDRemoteLoginUtilities serviceTypeForAccountService:](HMDRemoteLoginUtilities, "serviceTypeForAccountService:", objc_msgSend(request2, "targetedAccountType"))}];

  [v16 setAuthenticationType:1];
  [v16 setShouldUpdatePersistentServiceTokens:1];
  if (!exists)
  {
    [v16 setCompanionDevice:deviceCopy];
    v19 = [HMDRemoteLoginAnisetteDataProvider alloc];
    sessionID = [(HMDRemoteLoginAuthentication *)selfCopy sessionID];
    remoteMessageSender = [(HMDRemoteLoginAuthentication *)selfCopy remoteMessageSender];
    v22 = [(HMDRemoteLoginAnisetteDataProvider *)v19 initWithSessionID:sessionID remoteMessageSender:remoteMessageSender];
    [v16 setAnisetteDataProvider:v22];
  }

  [v16 _setProxyingForApp:1];
  request3 = [(HMDRemoteLoginReceiverCompanionAuthentication *)selfCopy request];
  -[HMDRemoteLoginReceiverAuthentication _authenticateAccount:targetedAccountType:](selfCopy, "_authenticateAccount:targetedAccountType:", v16, [request3 targetedAccountType]);

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_authenticate
{
  request = [(HMDRemoteLoginReceiverCompanionAuthentication *)self request];
  account = [request account];

  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__HMDRemoteLoginReceiverCompanionAuthentication__authenticate__block_invoke;
  v6[3] = &unk_2797275E8;
  objc_copyWeak(&v8, &location);
  v5 = account;
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
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Save-remote-verified-account failed with error %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    [v13 _completedAuthenticationRequest:v7 loggedInAccount:0];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)authenticate
{
  workQueue = [(HMDRemoteLoginAuthentication *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__HMDRemoteLoginReceiverCompanionAuthentication_authenticate__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  sessionID = [(HMDRemoteLoginAuthentication *)self sessionID];
  request = [(HMDRemoteLoginReceiverCompanionAuthentication *)self request];
  account = [request account];
  v7 = [v3 stringWithFormat:@"[Recv-Companion-Auth: Session: %@, Account: %@]", sessionID, account];

  return v7;
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543618;
    v10 = v6;
    v11 = 2112;
    v12 = selfCopy;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Dealloc %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8.receiver = selfCopy;
  v8.super_class = HMDRemoteLoginReceiverCompanionAuthentication;
  [(HMDRemoteLoginReceiverCompanionAuthentication *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDRemoteLoginReceiverCompanionAuthentication)initWithSessionID:(id)d remoteDevice:(id)device workQueue:(id)queue remoteMessageSender:(id)sender delegate:(id)delegate request:(id)request
{
  requestCopy = request;
  v19.receiver = self;
  v19.super_class = HMDRemoteLoginReceiverCompanionAuthentication;
  v16 = [(HMDRemoteLoginReceiverAuthentication *)&v19 initWithSessionID:d remoteDevice:device workQueue:queue remoteMessageSender:sender delegate:delegate];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_request, request);
  }

  return v17;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_52737 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_52737, &__block_literal_global_52738);
  }

  v3 = logCategory__hmf_once_v2_52739;

  return v3;
}

uint64_t __60__HMDRemoteLoginReceiverCompanionAuthentication_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_52739;
  logCategory__hmf_once_v2_52739 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end