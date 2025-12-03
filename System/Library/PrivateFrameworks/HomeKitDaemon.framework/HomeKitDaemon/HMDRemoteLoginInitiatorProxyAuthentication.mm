@interface HMDRemoteLoginInitiatorProxyAuthentication
+ (id)logCategory;
- (HMDRemoteLoginInitiatorProxyAuthentication)initWithSessionID:(id)d remoteDevice:(id)device workQueue:(id)queue remoteMessageSender:(id)sender delegate:(id)delegate authResults:(id)results;
- (id)description;
- (void)_authenticate;
- (void)authenticate;
- (void)dealloc;
@end

@implementation HMDRemoteLoginInitiatorProxyAuthentication

- (void)_authenticate
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = [HMDRemoteLoginProxyAuthenticationRequest alloc];
  sessionID = [(HMDRemoteLoginAuthentication *)self sessionID];
  v5 = [(HMRemoteLoginMessage *)v3 initWithSessionID:sessionID];

  authResults = [(HMDRemoteLoginInitiatorProxyAuthentication *)self authResults];
  v7 = [authResults hmf_stringForKey:*MEMORY[0x277CEFFD8]];
  [(HMDRemoteLoginProxyAuthenticationRequest *)v5 setUsername:v7];

  authResults2 = [(HMDRemoteLoginInitiatorProxyAuthentication *)self authResults];
  v9 = [authResults2 hmf_stringForKey:*MEMORY[0x277CEFFD0]];
  [(HMDRemoteLoginProxyAuthenticationRequest *)v5 setRawPassword:v9];

  authResults3 = [(HMDRemoteLoginInitiatorProxyAuthentication *)self authResults];
  v11 = [authResults3 hmf_stringForKey:*MEMORY[0x277CEFFC8]];
  [(HMDRemoteLoginProxyAuthenticationRequest *)v5 setPasswordToken:v11];

  authResults4 = [(HMDRemoteLoginInitiatorProxyAuthentication *)self authResults];
  v13 = [authResults4 hmf_stringForKey:*MEMORY[0x277CEFF78]];
  [(HMDRemoteLoginProxyAuthenticationRequest *)v5 setAltDSID:v13];

  [(HMDRemoteLoginAuthenticationRequest *)v5 setTargetedAccountType:0];
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    username = [(HMDRemoteLoginProxyAuthenticationRequest *)v5 username];
    passwordToken = [(HMDRemoteLoginProxyAuthenticationRequest *)v5 passwordToken];
    altDSID = [(HMDRemoteLoginProxyAuthenticationRequest *)v5 altDSID];
    *buf = 138544130;
    v34 = v17;
    v35 = 2112;
    v36 = username;
    v37 = 2112;
    v38 = passwordToken;
    v39 = 2112;
    v40 = altDSID;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Received username %@, pet %@, alt-dsid %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  v21 = objc_autoreleasePoolPush();
  v22 = selfCopy;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    rawPassword = [(HMDRemoteLoginProxyAuthenticationRequest *)v5 rawPassword];
    [rawPassword length];
    v26 = HMFBooleanToString();
    *buf = 138543618;
    v34 = v24;
    v35 = 2112;
    v36 = v26;
    _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Received password: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  objc_initWeak(buf, v22);
  remoteMessageSender = [(HMDRemoteLoginAuthentication *)v22 remoteMessageSender];
  messageName = [(HMDRemoteLoginProxyAuthenticationRequest *)v5 messageName];
  messagePayload = [(HMDRemoteLoginProxyAuthenticationRequest *)v5 messagePayload];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __59__HMDRemoteLoginInitiatorProxyAuthentication__authenticate__block_invoke;
  v31[3] = &unk_278687FB0;
  objc_copyWeak(&v32, buf);
  [remoteMessageSender sendRemoteMessageWithName:messageName payload:messagePayload responseHandler:v31];

  objc_destroyWeak(&v32);
  objc_destroyWeak(buf);

  v30 = *MEMORY[0x277D85DE8];
}

void __59__HMDRemoteLoginInitiatorProxyAuthentication__authenticate__block_invoke(uint64_t a1, void *a2, void *a3)
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
  block[2] = __58__HMDRemoteLoginInitiatorProxyAuthentication_authenticate__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  sessionID = [(HMDRemoteLoginAuthentication *)self sessionID];
  v4 = [v2 stringWithFormat:@"[Init-Proxy-Auth: Session: %@]", sessionID];

  return v4;
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
  v8.super_class = HMDRemoteLoginInitiatorProxyAuthentication;
  [(HMDRemoteLoginInitiatorProxyAuthentication *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDRemoteLoginInitiatorProxyAuthentication)initWithSessionID:(id)d remoteDevice:(id)device workQueue:(id)queue remoteMessageSender:(id)sender delegate:(id)delegate authResults:(id)results
{
  resultsCopy = results;
  v19.receiver = self;
  v19.super_class = HMDRemoteLoginInitiatorProxyAuthentication;
  v16 = [(HMDRemoteLoginInitiatorAuthentication *)&v19 initWithSessionID:d remoteDevice:device workQueue:queue remoteMessageSender:sender delegate:delegate];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_authResults, results);
  }

  return v17;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1, &__block_literal_global_233);
  }

  v3 = logCategory__hmf_once_v2;

  return v3;
}

void __57__HMDRemoteLoginInitiatorProxyAuthentication_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2;
  logCategory__hmf_once_v2 = v1;
}

@end