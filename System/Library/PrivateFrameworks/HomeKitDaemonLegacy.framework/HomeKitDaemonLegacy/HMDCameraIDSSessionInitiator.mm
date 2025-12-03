@interface HMDCameraIDSSessionInitiator
+ (id)logCategory;
- (HMDCameraIDSSessionInitiator)initWithSessionID:(id)d workQueue:(id)queue device:(id)device localNetworkConfig:(id)config delegate:(id)delegate;
- (HMDCameraIDSSessionInitiator)initWithSessionID:(id)d workQueue:(id)queue idsStreamService:(id)service device:(id)device localNetworkConfig:(id)config delegate:(id)delegate;
- (HMDCameraIDSSessionInitiatorDelegate)delegate;
- (NSNumber)mtu;
- (id)logIdentifier;
- (void)_callSessionEndedWithError:(id)error;
- (void)_callSessionStarted;
- (void)_sendInvitation;
- (void)dealloc;
- (void)openRelaySession;
- (void)packetRelay:(id)relay didStart:(BOOL)start error:(id)error;
- (void)packetRelay:(id)relay didStop:(BOOL)stop error:(id)error;
- (void)session:(id)session receivedInvitationAcceptFromID:(id)d;
- (void)session:(id)session receivedInvitationCancelFromID:(id)d;
- (void)session:(id)session receivedInvitationDeclineFromID:(id)d;
- (void)sessionEnded:(id)ended withReason:(unsigned int)reason error:(id)error;
- (void)sessionStarted:(id)started;
@end

@implementation HMDCameraIDSSessionInitiator

- (HMDCameraIDSSessionInitiatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  sessionID = [(HMDCameraIDSSessionHandler *)self sessionID];
  v3 = [sessionID description];

  return v3;
}

- (void)_callSessionEndedWithError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  workQueue = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = errorCopy;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Calling didEndSession delegate with error %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  delegate = [(HMDCameraIDSSessionInitiator *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate sessionInitiator:selfCopy didEndSessionWithError:errorCopy];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_callSessionStarted
{
  v12 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Calling didSetUp delegate", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  delegate = [(HMDCameraIDSSessionInitiator *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate sessionInitiator:selfCopy didSetUpWithError:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)sessionEnded:(id)ended withReason:(unsigned int)reason error:(id)error
{
  v25 = *MEMORY[0x277D85DE8];
  endedCopy = ended;
  errorCopy = error;
  workQueue = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v17 = 138544130;
    v18 = v14;
    v19 = 2114;
    v20 = endedCopy;
    v21 = 1026;
    reasonCopy = reason;
    v23 = 2114;
    v24 = errorCopy;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@IDSSession %{public}@ has ended with reason: %{public}u and error %{public}@", &v17, 0x26u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1030 underlyingError:errorCopy];
  [(HMDCameraIDSSessionInitiator *)selfCopy _callSessionEndedWithError:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)sessionStarted:(id)started
{
  v16 = *MEMORY[0x277D85DE8];
  startedCopy = started;
  workQueue = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v9;
    v14 = 2114;
    v15 = startedCopy;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@IDSSession %{public}@ has started", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  sessionID = [(HMDCameraIDSSessionHandler *)selfCopy sessionID];
  [sessionID markMilestoneFor:@"IDSSessionStartedOnInitiator"];

  [(HMDCameraIDSSessionInitiator *)selfCopy _callSessionStarted];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)session receivedInvitationCancelFromID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  dCopy = d;
  workQueue = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543874;
    v15 = v12;
    v16 = 2112;
    v17 = sessionCopy;
    v18 = 2112;
    v19 = dCopy;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Invitation for IDSSession %@ was canceled by: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDCameraIDSSessionInitiator *)selfCopy _callSessionEndedWithError:0];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)session receivedInvitationDeclineFromID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  dCopy = d;
  workQueue = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543874;
    v15 = v12;
    v16 = 2112;
    v17 = sessionCopy;
    v18 = 2112;
    v19 = dCopy;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Invitation for IDSSession %@ has been declined by: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDCameraIDSSessionInitiator *)selfCopy _callSessionEndedWithError:0];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)session receivedInvitationAcceptFromID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  dCopy = d;
  workQueue = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543874;
    v15 = v12;
    v16 = 2114;
    v17 = sessionCopy;
    v18 = 2112;
    v19 = dCopy;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Invitation for IDSSession %{public}@ has been accepted by: %@, waiting for session to get started", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)packetRelay:(id)relay didStop:(BOOL)stop error:(id)error
{
  errorCopy = error;
  workQueue = [(HMDCameraIDSSessionHandler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HMDCameraIDSSessionInitiator_packetRelay_didStop_error___block_invoke;
  block[3] = &unk_279734938;
  stopCopy = stop;
  block[4] = self;
  v11 = errorCopy;
  v9 = errorCopy;
  dispatch_async(workQueue, block);
}

void __58__HMDCameraIDSSessionInitiator_packetRelay_didStop_error___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 48);
    v7 = HMFBooleanToString();
    v8 = *(a1 + 40);
    v10 = 138543874;
    v11 = v5;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Packet relay did stop: %@ error: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)packetRelay:(id)relay didStart:(BOOL)start error:(id)error
{
  errorCopy = error;
  workQueue = [(HMDCameraIDSSessionHandler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HMDCameraIDSSessionInitiator_packetRelay_didStart_error___block_invoke;
  block[3] = &unk_279734938;
  startCopy = start;
  block[4] = self;
  v11 = errorCopy;
  v9 = errorCopy;
  dispatch_async(workQueue, block);
}

void __59__HMDCameraIDSSessionInitiator_packetRelay_didStart_error___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 48);
    v7 = HMFBooleanToString();
    v8 = *(a1 + 40);
    v10 = 138543874;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Packet relay did start: %{public}@ error: %{public}@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_sendInvitation
{
  v39 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  idsStreamService = [(HMDCameraIDSSessionHandler *)self idsStreamService];
  accounts = [idsStreamService accounts];
  anyObject = [accounts anyObject];

  if (anyObject)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:&unk_286627A78 forKeyedSubscript:*MEMORY[0x277D18958]];
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D18950]];
    localNetworkConfig = [(HMDCameraIDSSessionInitiator *)self localNetworkConfig];
    ipv6 = [localNetworkConfig ipv6];

    if ((ipv6 & 1) == 0)
    {
      [dictionary setObject:&unk_286627A90 forKeyedSubscript:*MEMORY[0x277D18948]];
    }

    idsStreamService2 = [(HMDCameraIDSSessionHandler *)self idsStreamService];
    device = [(HMDCameraIDSSessionInitiator *)self device];
    v12 = [idsStreamService2 hmd_idsSessionWithAccount:anyObject device:device options:dictionary];
    [(HMDCameraIDSSessionHandler *)self setIdsSession:v12];

    idsSession = [(HMDCameraIDSSessionHandler *)self idsSession];
    workQueue2 = [(HMDCameraIDSSessionHandler *)self workQueue];
    [idsSession setDelegate:self queue:workQueue2];

    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      idsSession2 = [(HMDCameraIDSSessionHandler *)selfCopy idsSession];
      device2 = [(HMDCameraIDSSessionInitiator *)selfCopy device];
      shortDescription = [device2 shortDescription];
      *buf = 138544130;
      v32 = v18;
      v33 = 2112;
      v34 = idsSession2;
      v35 = 2112;
      v36 = shortDescription;
      v37 = 2112;
      v38 = dictionary;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Sending out invitation for IDSSession %@ to device %@ with options: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v15);
    sessionID = [(HMDCameraIDSSessionHandler *)selfCopy sessionID];
    v22SessionID = [sessionID sessionID];
    v30 = v22SessionID;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];

    v25 = encodeRootObject();
    idsSession3 = [(HMDCameraIDSSessionHandler *)selfCopy idsSession];
    [idsSession3 sendInvitationWithData:v25];

    sessionID2 = [(HMDCameraIDSSessionHandler *)selfCopy sessionID];
    [sessionID2 markMilestoneFor:@"IDSSessionInvitationSent"];
  }

  else
  {
    dictionary = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1024];
    [(HMDCameraIDSSessionInitiator *)self _callSessionEndedWithError:dictionary];
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)openRelaySession
{
  workQueue = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDCameraIDSSessionInitiator *)self _sendInvitation];
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
    *buf = 138543362;
    v12 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting the IDS session initiator", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  packetRelay = [(HMDCameraIDSSessionInitiator *)selfCopy packetRelay];
  [packetRelay stop];

  idsSession = [(HMDCameraIDSSessionHandler *)selfCopy idsSession];
  [idsSession endSession];

  v10.receiver = selfCopy;
  v10.super_class = HMDCameraIDSSessionInitiator;
  [(HMDCameraIDSSessionHandler *)&v10 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

- (NSNumber)mtu
{
  workQueue = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  localNetworkConfig = [(HMDCameraIDSSessionInitiator *)self localNetworkConfig];
  if ([localNetworkConfig ipv6])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = MEMORY[0x277CCABB0];
  idsSession = [(HMDCameraIDSSessionHandler *)self idsSession];
  v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(idsSession, "MTUForAddressFamily:", v5)}];

  return v8;
}

- (HMDCameraIDSSessionInitiator)initWithSessionID:(id)d workQueue:(id)queue idsStreamService:(id)service device:(id)device localNetworkConfig:(id)config delegate:(id)delegate
{
  dCopy = d;
  queueCopy = queue;
  serviceCopy = service;
  deviceCopy = device;
  configCopy = config;
  delegateCopy = delegate;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!queueCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!serviceCopy)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!deviceCopy)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!configCopy)
  {
LABEL_13:
    v25 = _HMFPreconditionFailure();
    return [(HMDCameraIDSSessionInitiator *)v25 initWithSessionID:v26 workQueue:v27 device:v28 localNetworkConfig:v29 delegate:v30, v31];
  }

  v20 = delegateCopy;
  v32.receiver = self;
  v32.super_class = HMDCameraIDSSessionInitiator;
  v21 = [(HMDCameraIDSSessionHandler *)&v32 initWithSessionID:dCopy workQueue:queueCopy idsStreamService:serviceCopy];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_device, device);
    objc_storeWeak(&v22->_delegate, v20);
    objc_storeStrong(&v22->_localNetworkConfig, config);
    v23 = +[HMDCameraPowerAssertionHandler sharedHandler];
    [v23 registerRemoteRequestHandler:v22 forSessionID:dCopy];
  }

  return v22;
}

- (HMDCameraIDSSessionInitiator)initWithSessionID:(id)d workQueue:(id)queue device:(id)device localNetworkConfig:(id)config delegate:(id)delegate
{
  delegateCopy = delegate;
  configCopy = config;
  deviceCopy = device;
  queueCopy = queue;
  dCopy = d;
  v17 = +[HMDIDSServiceManager sharedManager];
  v18 = [v17 serviceWithName:@"com.apple.private.alloy.willow.stream"];
  v19 = [(HMDCameraIDSSessionInitiator *)self initWithSessionID:dCopy workQueue:queueCopy idsStreamService:v18 device:deviceCopy localNetworkConfig:configCopy delegate:delegateCopy];

  return v19;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t18 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t18, &__block_literal_global_19346);
  }

  v3 = logCategory__hmf_once_v19;

  return v3;
}

uint64_t __43__HMDCameraIDSSessionInitiator_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v19;
  logCategory__hmf_once_v19 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end