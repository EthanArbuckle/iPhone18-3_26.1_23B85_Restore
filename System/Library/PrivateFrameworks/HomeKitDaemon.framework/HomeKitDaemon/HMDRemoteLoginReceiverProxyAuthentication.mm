@interface HMDRemoteLoginReceiverProxyAuthentication
+ (id)logCategory;
- (HMDRemoteLoginReceiverProxyAuthentication)initWithSessionID:(id)d remoteDevice:(id)device workQueue:(id)queue remoteMessageSender:(id)sender delegate:(id)delegate request:(id)request;
- (id)description;
- (void)_authenticate;
- (void)authenticate;
- (void)dealloc;
@end

@implementation HMDRemoteLoginReceiverProxyAuthentication

- (void)_authenticate
{
  request = [(HMDRemoteLoginReceiverProxyAuthentication *)self request];
  v4 = +[HMDRemoteLoginUtilities serviceTypeForAccountService:](HMDRemoteLoginUtilities, "serviceTypeForAccountService:", [request targetedAccountType]);

  v10 = objc_alloc_init(MEMORY[0x277CF0170]);
  request2 = [(HMDRemoteLoginReceiverProxyAuthentication *)self request];
  username = [request2 username];
  [v10 setUsername:username];

  request3 = [(HMDRemoteLoginReceiverProxyAuthentication *)self request];
  rawPassword = [request3 rawPassword];
  [v10 _setPassword:rawPassword];

  [v10 setIsUsernameEditable:0];
  [v10 setShouldAllowAppleIDCreation:0];
  [v10 setServiceType:v4];
  [v10 setAuthenticationType:1];
  [v10 setShouldUpdatePersistentServiceTokens:1];
  [v10 _setProxyingForApp:1];
  request4 = [(HMDRemoteLoginReceiverProxyAuthentication *)self request];
  -[HMDRemoteLoginReceiverAuthentication _authenticateAccount:targetedAccountType:](self, "_authenticateAccount:targetedAccountType:", v10, [request4 targetedAccountType]);
}

- (void)authenticate
{
  workQueue = [(HMDRemoteLoginAuthentication *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HMDRemoteLoginReceiverProxyAuthentication_authenticate__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  sessionID = [(HMDRemoteLoginAuthentication *)self sessionID];
  request = [(HMDRemoteLoginReceiverProxyAuthentication *)self request];
  v6 = [v3 stringWithFormat:@"[Recv-Proxy-Auth: Session: %@, Request: %@]", sessionID, request];

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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Dealloc %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8.receiver = selfCopy;
  v8.super_class = HMDRemoteLoginReceiverProxyAuthentication;
  [(HMDRemoteLoginReceiverProxyAuthentication *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDRemoteLoginReceiverProxyAuthentication)initWithSessionID:(id)d remoteDevice:(id)device workQueue:(id)queue remoteMessageSender:(id)sender delegate:(id)delegate request:(id)request
{
  requestCopy = request;
  v19.receiver = self;
  v19.super_class = HMDRemoteLoginReceiverProxyAuthentication;
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
  if (logCategory__hmf_once_t1_97538 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_97538, &__block_literal_global_97539);
  }

  v3 = logCategory__hmf_once_v2_97540;

  return v3;
}

void __56__HMDRemoteLoginReceiverProxyAuthentication_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_97540;
  logCategory__hmf_once_v2_97540 = v1;
}

@end