@interface HMDRemoteLoginReceiverSession
- (HMDRemoteLoginReceiverSession)initWithSessionID:(id)a3 remoteAuthentication:(id)a4 completion:(id)a5;
- (id)description;
- (void)dealloc;
@end

@implementation HMDRemoteLoginReceiverSession

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDRemoteLoginReceiverSession *)self sessionID];
  v4 = [v2 stringWithFormat:@"[Login-Receiver-Session: %@]", v3];

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
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Dealloc %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8.receiver = v4;
  v8.super_class = HMDRemoteLoginReceiverSession;
  [(HMDRemoteLoginReceiverSession *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDRemoteLoginReceiverSession)initWithSessionID:(id)a3 remoteAuthentication:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = HMDRemoteLoginReceiverSession;
  v12 = [(HMDRemoteLoginReceiverSession *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sessionID, a3);
    objc_storeStrong(&v13->_remoteAuthentication, a4);
    v14 = _Block_copy(v11);
    completion = v13->_completion;
    v13->_completion = v14;
  }

  return v13;
}

@end