@interface HMDRemoteLoginReceiverSession
- (HMDRemoteLoginReceiverSession)initWithSessionID:(id)d remoteAuthentication:(id)authentication completion:(id)completion;
- (id)description;
- (void)dealloc;
@end

@implementation HMDRemoteLoginReceiverSession

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  sessionID = [(HMDRemoteLoginReceiverSession *)self sessionID];
  v4 = [v2 stringWithFormat:@"[Login-Receiver-Session: %@]", sessionID];

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
  v8.super_class = HMDRemoteLoginReceiverSession;
  [(HMDRemoteLoginReceiverSession *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDRemoteLoginReceiverSession)initWithSessionID:(id)d remoteAuthentication:(id)authentication completion:(id)completion
{
  dCopy = d;
  authenticationCopy = authentication;
  completionCopy = completion;
  v17.receiver = self;
  v17.super_class = HMDRemoteLoginReceiverSession;
  v12 = [(HMDRemoteLoginReceiverSession *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sessionID, d);
    objc_storeStrong(&v13->_remoteAuthentication, authentication);
    v14 = _Block_copy(completionCopy);
    completion = v13->_completion;
    v13->_completion = v14;
  }

  return v13;
}

@end