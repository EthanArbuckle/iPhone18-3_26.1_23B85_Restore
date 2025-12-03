@interface HMDRemoteLoginInitiatorCompanionAuthentication
+ (id)logCategory;
- (HMDRemoteLoginInitiatorCompanionAuthentication)initWithSessionID:(id)d remoteDevice:(id)device workQueue:(id)queue remoteMessageSender:(id)sender delegate:(id)delegate account:(id)account;
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
  accountStore = [v3 accountStore];

  account = [(HMDRemoteLoginInitiatorCompanionAuthentication *)self account];
  v27 = 0;
  v6 = [accountStore credentialForAccount:account error:&v27];
  v7 = v27;

  if (v6)
  {
    account2 = [(HMDRemoteLoginInitiatorCompanionAuthentication *)self account];
    [account2 setCredential:v6];

    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      account3 = [(HMDRemoteLoginInitiatorCompanionAuthentication *)selfCopy account];
      identifier = [account3 identifier];
      account4 = [(HMDRemoteLoginInitiatorCompanionAuthentication *)selfCopy account];
      *buf = 138543874;
      v31 = v12;
      v32 = 2112;
      v33 = identifier;
      v34 = 2112;
      v35 = account4;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Loaded credentials for account %@, %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    currentDevice = [MEMORY[0x277CF0218] currentDevice];
    [currentDevice setLinkType:3];
    v17 = [HMDRemoteLoginCompanionAuthenticationRequest alloc];
    sessionID = [(HMDRemoteLoginAuthentication *)selfCopy sessionID];
    v19 = [(HMRemoteLoginMessage *)v17 initWithSessionID:sessionID];

    account5 = [(HMDRemoteLoginInitiatorCompanionAuthentication *)selfCopy account];
    [(HMDRemoteLoginCompanionAuthenticationRequest *)v19 setAccount:account5];

    [(HMDRemoteLoginCompanionAuthenticationRequest *)v19 setCompanionDevice:currentDevice];
    [(HMDRemoteLoginAuthenticationRequest *)v19 setTargetedAccountType:0];
    v28 = @"kHMDRemoteLoginCompanionAuthenticationRequest";
    v21 = encodeRootObject();
    v29 = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];

    objc_initWeak(buf, selfCopy);
    remoteMessageSender = [(HMDRemoteLoginAuthentication *)selfCopy remoteMessageSender];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __63__HMDRemoteLoginInitiatorCompanionAuthentication__authenticate__block_invoke;
    v25[3] = &unk_279733B98;
    objc_copyWeak(&v26, buf);
    [remoteMessageSender sendRemoteMessageWithName:@"kHMDRemoteLoginCompanionAuthenticationRequest" payload:v22 responseHandler:v25];

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
  workQueue = [(HMDRemoteLoginAuthentication *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__HMDRemoteLoginInitiatorCompanionAuthentication_authenticate__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  sessionID = [(HMDRemoteLoginAuthentication *)self sessionID];
  account = [(HMDRemoteLoginInitiatorCompanionAuthentication *)self account];
  v6 = [v3 stringWithFormat:@"[Init-Companion-Auth: Session: %@, Account: %@]", sessionID, account];

  return v6;
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
  v8.super_class = HMDRemoteLoginInitiatorCompanionAuthentication;
  [(HMDRemoteLoginInitiatorCompanionAuthentication *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDRemoteLoginInitiatorCompanionAuthentication)initWithSessionID:(id)d remoteDevice:(id)device workQueue:(id)queue remoteMessageSender:(id)sender delegate:(id)delegate account:(id)account
{
  accountCopy = account;
  v19.receiver = self;
  v19.super_class = HMDRemoteLoginInitiatorCompanionAuthentication;
  v16 = [(HMDRemoteLoginInitiatorAuthentication *)&v19 initWithSessionID:d remoteDevice:device workQueue:queue remoteMessageSender:sender delegate:delegate];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_account, account);
  }

  return v17;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_79347 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_79347, &__block_literal_global_79348);
  }

  v3 = logCategory__hmf_once_v2_79349;

  return v3;
}

uint64_t __61__HMDRemoteLoginInitiatorCompanionAuthentication_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_79349;
  logCategory__hmf_once_v2_79349 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end