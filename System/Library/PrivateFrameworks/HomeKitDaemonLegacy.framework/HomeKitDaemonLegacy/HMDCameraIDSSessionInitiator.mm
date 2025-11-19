@interface HMDCameraIDSSessionInitiator
+ (id)logCategory;
- (HMDCameraIDSSessionInitiator)initWithSessionID:(id)a3 workQueue:(id)a4 device:(id)a5 localNetworkConfig:(id)a6 delegate:(id)a7;
- (HMDCameraIDSSessionInitiator)initWithSessionID:(id)a3 workQueue:(id)a4 idsStreamService:(id)a5 device:(id)a6 localNetworkConfig:(id)a7 delegate:(id)a8;
- (HMDCameraIDSSessionInitiatorDelegate)delegate;
- (NSNumber)mtu;
- (id)logIdentifier;
- (void)_callSessionEndedWithError:(id)a3;
- (void)_callSessionStarted;
- (void)_sendInvitation;
- (void)dealloc;
- (void)openRelaySession;
- (void)packetRelay:(id)a3 didStart:(BOOL)a4 error:(id)a5;
- (void)packetRelay:(id)a3 didStop:(BOOL)a4 error:(id)a5;
- (void)session:(id)a3 receivedInvitationAcceptFromID:(id)a4;
- (void)session:(id)a3 receivedInvitationCancelFromID:(id)a4;
- (void)session:(id)a3 receivedInvitationDeclineFromID:(id)a4;
- (void)sessionEnded:(id)a3 withReason:(unsigned int)a4 error:(id)a5;
- (void)sessionStarted:(id)a3;
@end

@implementation HMDCameraIDSSessionInitiator

- (HMDCameraIDSSessionInitiatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDCameraIDSSessionHandler *)self sessionID];
  v3 = [v2 description];

  return v3;
}

- (void)_callSessionEndedWithError:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Calling didEndSession delegate with error %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraIDSSessionInitiator *)v7 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 sessionInitiator:v7 didEndSessionWithError:v4];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_callSessionStarted
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Calling didSetUp delegate", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDCameraIDSSessionInitiator *)v5 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 sessionInitiator:v5 didSetUpWithError:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)sessionEnded:(id)a3 withReason:(unsigned int)a4 error:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(v10);

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v17 = 138544130;
    v18 = v14;
    v19 = 2114;
    v20 = v8;
    v21 = 1026;
    v22 = a4;
    v23 = 2114;
    v24 = v9;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@IDSSession %{public}@ has ended with reason: %{public}u and error %{public}@", &v17, 0x26u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1030 underlyingError:v9];
  [(HMDCameraIDSSessionInitiator *)v12 _callSessionEndedWithError:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)sessionStarted:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v9;
    v14 = 2114;
    v15 = v4;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@IDSSession %{public}@ has started", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraIDSSessionHandler *)v7 sessionID];
  [v10 markMilestoneFor:@"IDSSessionStartedOnInitiator"];

  [(HMDCameraIDSSessionInitiator *)v7 _callSessionStarted];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)a3 receivedInvitationCancelFromID:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543874;
    v15 = v12;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Invitation for IDSSession %@ was canceled by: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDCameraIDSSessionInitiator *)v10 _callSessionEndedWithError:0];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)a3 receivedInvitationDeclineFromID:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543874;
    v15 = v12;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Invitation for IDSSession %@ has been declined by: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDCameraIDSSessionInitiator *)v10 _callSessionEndedWithError:0];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)a3 receivedInvitationAcceptFromID:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543874;
    v15 = v12;
    v16 = 2114;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Invitation for IDSSession %{public}@ has been accepted by: %@, waiting for session to get started", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)packetRelay:(id)a3 didStop:(BOOL)a4 error:(id)a5
{
  v7 = a5;
  v8 = [(HMDCameraIDSSessionHandler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HMDCameraIDSSessionInitiator_packetRelay_didStop_error___block_invoke;
  block[3] = &unk_279734938;
  v12 = a4;
  block[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(v8, block);
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

- (void)packetRelay:(id)a3 didStart:(BOOL)a4 error:(id)a5
{
  v7 = a5;
  v8 = [(HMDCameraIDSSessionHandler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HMDCameraIDSSessionInitiator_packetRelay_didStart_error___block_invoke;
  block[3] = &unk_279734938;
  v12 = a4;
  block[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(v8, block);
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
  v3 = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraIDSSessionHandler *)self idsStreamService];
  v5 = [v4 accounts];
  v6 = [v5 anyObject];

  if (v6)
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    [v7 setObject:&unk_286627A78 forKeyedSubscript:*MEMORY[0x277D18958]];
    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D18950]];
    v8 = [(HMDCameraIDSSessionInitiator *)self localNetworkConfig];
    v9 = [v8 ipv6];

    if ((v9 & 1) == 0)
    {
      [v7 setObject:&unk_286627A90 forKeyedSubscript:*MEMORY[0x277D18948]];
    }

    v10 = [(HMDCameraIDSSessionHandler *)self idsStreamService];
    v11 = [(HMDCameraIDSSessionInitiator *)self device];
    v12 = [v10 hmd_idsSessionWithAccount:v6 device:v11 options:v7];
    [(HMDCameraIDSSessionHandler *)self setIdsSession:v12];

    v13 = [(HMDCameraIDSSessionHandler *)self idsSession];
    v14 = [(HMDCameraIDSSessionHandler *)self workQueue];
    [v13 setDelegate:self queue:v14];

    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [(HMDCameraIDSSessionHandler *)v16 idsSession];
      v20 = [(HMDCameraIDSSessionInitiator *)v16 device];
      v21 = [v20 shortDescription];
      *buf = 138544130;
      v32 = v18;
      v33 = 2112;
      v34 = v19;
      v35 = 2112;
      v36 = v21;
      v37 = 2112;
      v38 = v7;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Sending out invitation for IDSSession %@ to device %@ with options: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v15);
    v22 = [(HMDCameraIDSSessionHandler *)v16 sessionID];
    v23 = [v22 sessionID];
    v30 = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];

    v25 = encodeRootObject();
    v26 = [(HMDCameraIDSSessionHandler *)v16 idsSession];
    [v26 sendInvitationWithData:v25];

    v27 = [(HMDCameraIDSSessionHandler *)v16 sessionID];
    [v27 markMilestoneFor:@"IDSSessionInvitationSent"];
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1024];
    [(HMDCameraIDSSessionInitiator *)self _callSessionEndedWithError:v7];
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)openRelaySession
{
  v3 = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(v3);

  [(HMDCameraIDSSessionInitiator *)self _sendInvitation];
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
    *buf = 138543362;
    v12 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting the IDS session initiator", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDCameraIDSSessionInitiator *)v4 packetRelay];
  [v7 stop];

  v8 = [(HMDCameraIDSSessionHandler *)v4 idsSession];
  [v8 endSession];

  v10.receiver = v4;
  v10.super_class = HMDCameraIDSSessionInitiator;
  [(HMDCameraIDSSessionHandler *)&v10 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

- (NSNumber)mtu
{
  v3 = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraIDSSessionInitiator *)self localNetworkConfig];
  if ([v4 ipv6])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = MEMORY[0x277CCABB0];
  v7 = [(HMDCameraIDSSessionHandler *)self idsSession];
  v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(v7, "MTUForAddressFamily:", v5)}];

  return v8;
}

- (HMDCameraIDSSessionInitiator)initWithSessionID:(id)a3 workQueue:(id)a4 idsStreamService:(id)a5 device:(id)a6 localNetworkConfig:(id)a7 delegate:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (!v14)
  {
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v15)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!v16)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!v17)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!v18)
  {
LABEL_13:
    v25 = _HMFPreconditionFailure();
    return [(HMDCameraIDSSessionInitiator *)v25 initWithSessionID:v26 workQueue:v27 device:v28 localNetworkConfig:v29 delegate:v30, v31];
  }

  v20 = v19;
  v32.receiver = self;
  v32.super_class = HMDCameraIDSSessionInitiator;
  v21 = [(HMDCameraIDSSessionHandler *)&v32 initWithSessionID:v14 workQueue:v15 idsStreamService:v16];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_device, a6);
    objc_storeWeak(&v22->_delegate, v20);
    objc_storeStrong(&v22->_localNetworkConfig, a7);
    v23 = +[HMDCameraPowerAssertionHandler sharedHandler];
    [v23 registerRemoteRequestHandler:v22 forSessionID:v14];
  }

  return v22;
}

- (HMDCameraIDSSessionInitiator)initWithSessionID:(id)a3 workQueue:(id)a4 device:(id)a5 localNetworkConfig:(id)a6 delegate:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = +[HMDIDSServiceManager sharedManager];
  v18 = [v17 serviceWithName:@"com.apple.private.alloy.willow.stream"];
  v19 = [(HMDCameraIDSSessionInitiator *)self initWithSessionID:v16 workQueue:v15 idsStreamService:v18 device:v14 localNetworkConfig:v13 delegate:v12];

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