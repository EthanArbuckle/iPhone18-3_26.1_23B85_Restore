@interface HMDRemoteLoginInitiatorProxyAuthentication
+ (id)logCategory;
- (HMDRemoteLoginInitiatorProxyAuthentication)initWithSessionID:(id)a3 remoteDevice:(id)a4 workQueue:(id)a5 remoteMessageSender:(id)a6 delegate:(id)a7 authResults:(id)a8;
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
  v4 = [(HMDRemoteLoginAuthentication *)self sessionID];
  v5 = [(HMRemoteLoginMessage *)v3 initWithSessionID:v4];

  v6 = [(HMDRemoteLoginInitiatorProxyAuthentication *)self authResults];
  v7 = [v6 hmf_stringForKey:*MEMORY[0x277CEFFD8]];
  [(HMDRemoteLoginProxyAuthenticationRequest *)v5 setUsername:v7];

  v8 = [(HMDRemoteLoginInitiatorProxyAuthentication *)self authResults];
  v9 = [v8 hmf_stringForKey:*MEMORY[0x277CEFFD0]];
  [(HMDRemoteLoginProxyAuthenticationRequest *)v5 setRawPassword:v9];

  v10 = [(HMDRemoteLoginInitiatorProxyAuthentication *)self authResults];
  v11 = [v10 hmf_stringForKey:*MEMORY[0x277CEFFC8]];
  [(HMDRemoteLoginProxyAuthenticationRequest *)v5 setPasswordToken:v11];

  v12 = [(HMDRemoteLoginInitiatorProxyAuthentication *)self authResults];
  v13 = [v12 hmf_stringForKey:*MEMORY[0x277CEFF78]];
  [(HMDRemoteLoginProxyAuthenticationRequest *)v5 setAltDSID:v13];

  [(HMDRemoteLoginAuthenticationRequest *)v5 setTargetedAccountType:0];
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [(HMDRemoteLoginProxyAuthenticationRequest *)v5 username];
    v19 = [(HMDRemoteLoginProxyAuthenticationRequest *)v5 passwordToken];
    v20 = [(HMDRemoteLoginProxyAuthenticationRequest *)v5 altDSID];
    *buf = 138544130;
    v34 = v17;
    v35 = 2112;
    v36 = v18;
    v37 = 2112;
    v38 = v19;
    v39 = 2112;
    v40 = v20;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Received username %@, pet %@, alt-dsid %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  v21 = objc_autoreleasePoolPush();
  v22 = v15;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    v25 = [(HMDRemoteLoginProxyAuthenticationRequest *)v5 rawPassword];
    [v25 length];
    v26 = HMFBooleanToString();
    *buf = 138543618;
    v34 = v24;
    v35 = 2112;
    v36 = v26;
    _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Received password: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  objc_initWeak(buf, v22);
  v27 = [(HMDRemoteLoginAuthentication *)v22 remoteMessageSender];
  v28 = [(HMDRemoteLoginProxyAuthenticationRequest *)v5 messageName];
  v29 = [(HMDRemoteLoginProxyAuthenticationRequest *)v5 messagePayload];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __59__HMDRemoteLoginInitiatorProxyAuthentication__authenticate__block_invoke;
  v31[3] = &unk_278687FB0;
  objc_copyWeak(&v32, buf);
  [v27 sendRemoteMessageWithName:v28 payload:v29 responseHandler:v31];

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
  v3 = [(HMDRemoteLoginAuthentication *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HMDRemoteLoginInitiatorProxyAuthentication_authenticate__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDRemoteLoginAuthentication *)self sessionID];
  v4 = [v2 stringWithFormat:@"[Init-Proxy-Auth: Session: %@]", v3];

  return v4;
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
  v8.super_class = HMDRemoteLoginInitiatorProxyAuthentication;
  [(HMDRemoteLoginInitiatorProxyAuthentication *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDRemoteLoginInitiatorProxyAuthentication)initWithSessionID:(id)a3 remoteDevice:(id)a4 workQueue:(id)a5 remoteMessageSender:(id)a6 delegate:(id)a7 authResults:(id)a8
{
  v15 = a8;
  v19.receiver = self;
  v19.super_class = HMDRemoteLoginInitiatorProxyAuthentication;
  v16 = [(HMDRemoteLoginInitiatorAuthentication *)&v19 initWithSessionID:a3 remoteDevice:a4 workQueue:a5 remoteMessageSender:a6 delegate:a7];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_authResults, a8);
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