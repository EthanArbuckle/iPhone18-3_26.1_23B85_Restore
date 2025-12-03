@interface HMDCameraIDSDeviceConnectionSender
+ (id)logCategory;
- (HMDCameraIDSDeviceConnectionSender)initWithSessionID:(id)d workQueue:(id)queue device:(id)device delegate:(id)delegate;
- (HMDCameraIDSDeviceConnectionSender)initWithSessionID:(id)d workQueue:(id)queue device:(id)device delegate:(id)delegate idsProxyStreamService:(id)service;
- (HMDCameraIDSDeviceConnectionSenderDelegate)delegate;
- (NSNumber)mtu;
- (id)logIdentifier;
- (void)_callSessionEndedWithError:(id)error;
- (void)_socketOpenedWithError:(id)error;
- (void)_startAudioPacketRelay:(int)relay ipAddress:(id)address port:(unint64_t)port;
- (void)_startVideoPacketRelay:(int)relay ipAddress:(id)address port:(unint64_t)port;
- (void)dealloc;
- (void)openRelaySession;
- (void)packetRelay:(id)relay didStart:(BOOL)start error:(id)error;
- (void)packetRelay:(id)relay didStop:(BOOL)stop error:(id)error;
@end

@implementation HMDCameraIDSDeviceConnectionSender

- (HMDCameraIDSDeviceConnectionSenderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)packetRelay:(id)relay didStop:(BOOL)stop error:(id)error
{
  relayCopy = relay;
  errorCopy = error;
  workQueue = [(HMDCameraIDSDeviceConnection *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__HMDCameraIDSDeviceConnectionSender_packetRelay_didStop_error___block_invoke;
  v13[3] = &unk_278685AA8;
  v13[4] = self;
  v14 = relayCopy;
  stopCopy = stop;
  v15 = errorCopy;
  v11 = errorCopy;
  v12 = relayCopy;
  dispatch_async(workQueue, v13);
}

void __64__HMDCameraIDSDeviceConnectionSender_packetRelay_didStop_error___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 56);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v10 = 138544130;
    v11 = v5;
    v12 = 2112;
    v13 = v7;
    v14 = 1024;
    v15 = v6;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Packet relay %@ did stop: %{BOOL}d error: %@", &v10, 0x26u);
  }

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)packetRelay:(id)relay didStart:(BOOL)start error:(id)error
{
  relayCopy = relay;
  errorCopy = error;
  workQueue = [(HMDCameraIDSDeviceConnection *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__HMDCameraIDSDeviceConnectionSender_packetRelay_didStart_error___block_invoke;
  v13[3] = &unk_278685AA8;
  v13[4] = self;
  v14 = relayCopy;
  startCopy = start;
  v15 = errorCopy;
  v11 = errorCopy;
  v12 = relayCopy;
  dispatch_async(workQueue, v13);
}

void __65__HMDCameraIDSDeviceConnectionSender_packetRelay_didStart_error___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 56);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v10 = 138544130;
    v11 = v5;
    v12 = 2112;
    v13 = v7;
    v14 = 1024;
    v15 = v6;
    v16 = 2114;
    v17 = v8;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Packet relay %@ did start: %{BOOL}d error: %{public}@", &v10, 0x26u);
  }

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  sessionID = [(HMDCameraIDSDeviceConnection *)self sessionID];
  v3 = [sessionID description];

  return v3;
}

- (void)_callSessionEndedWithError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  workQueue = [(HMDCameraIDSDeviceConnection *)self workQueue];
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
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Calling didEndSession delegate with error %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  delegate = [(HMDCameraIDSDeviceConnectionSender *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate deviceConnectionSender:selfCopy didEndSessionWithError:errorCopy];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_socketOpenedWithError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  workQueue = [(HMDCameraIDSDeviceConnection *)self workQueue];
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
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Calling didSetup delegate with error %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  delegate = [(HMDCameraIDSDeviceConnectionSender *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate deviceConnectionSender:selfCopy didSetUpWithError:errorCopy];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_startAudioPacketRelay:(int)relay ipAddress:(id)address port:(unint64_t)port
{
  v48 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  workQueue = [(HMDCameraIDSDeviceConnection *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  watchAudioConnection = [(HMDCameraIDSDeviceConnection *)self watchAudioConnection];

  if (!watchAudioConnection)
  {
    v17 = 0;
    v20 = 0;
LABEL_11:
    v32 = objc_autoreleasePoolPush();
    selfCopy = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v34;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to create relay objects", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v32);
    v22 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1017];
    goto LABEL_14;
  }

  v11 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    watchAudioConnection2 = [(HMDCameraIDSDeviceConnection *)selfCopy2 watchAudioConnection];
    *buf = 138544386;
    v39 = v14;
    v40 = 2112;
    v41 = addressCopy;
    v42 = 2048;
    portCopy = port;
    v44 = 1024;
    relayCopy = relay;
    v46 = 1024;
    socket = [watchAudioConnection2 socket];
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Creating audio relay between %@:%tu (%d,%d)", buf, 0x2Cu);
  }

  objc_autoreleasePoolPop(v11);
  v16 = objc_alloc_init(MEMORY[0x277CE5710]);
  [v16 setIp:addressCopy];
  [v16 setPort:port];
  v17 = [MEMORY[0x277CE5728] connectionWithSocket:relay remoteAddress:v16];
  v18 = MEMORY[0x277CE5728];
  watchAudioConnection3 = [(HMDCameraIDSDeviceConnection *)selfCopy2 watchAudioConnection];
  v20 = [v18 connectionWithSocket:{objc_msgSend(watchAudioConnection3, "socket")}];

  if (!v17 || !v20)
  {
    goto LABEL_11;
  }

  v37 = 0;
  v21 = [objc_alloc(MEMORY[0x277CE5720]) initWithConnection:v17 connection:v20 error:&v37];
  v22 = v37;
  [(HMDCameraIDSDeviceConnectionSender *)selfCopy2 setAudioPacketRelay:v21];

  audioPacketRelay = [(HMDCameraIDSDeviceConnectionSender *)selfCopy2 audioPacketRelay];

  v24 = objc_autoreleasePoolPush();
  selfCopy = selfCopy2;
  v26 = HMFGetOSLogHandle();
  v27 = v26;
  if (!audioPacketRelay)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v36;
      v40 = 2112;
      v41 = v22;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to create audio packet relay with error %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
LABEL_14:
    [(HMDCameraIDSDeviceConnectionSender *)selfCopy _callSessionEndedWithError:v22];
    goto LABEL_15;
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v28 = HMFGetLogIdentifier();
    audioPacketRelay2 = [(HMDCameraIDSDeviceConnectionSender *)selfCopy audioPacketRelay];
    *buf = 138543618;
    v39 = v28;
    v40 = 2112;
    v41 = audioPacketRelay2;
    _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Starting packet relay for audio: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
  audioPacketRelay3 = [(HMDCameraIDSDeviceConnectionSender *)selfCopy audioPacketRelay];
  [audioPacketRelay3 setDelegate:selfCopy];

  audioPacketRelay4 = [(HMDCameraIDSDeviceConnectionSender *)selfCopy audioPacketRelay];
  [audioPacketRelay4 start];

LABEL_15:
  v35 = *MEMORY[0x277D85DE8];
}

- (void)_startVideoPacketRelay:(int)relay ipAddress:(id)address port:(unint64_t)port
{
  v48 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  workQueue = [(HMDCameraIDSDeviceConnection *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  watchVideoConnection = [(HMDCameraIDSDeviceConnection *)self watchVideoConnection];

  if (!watchVideoConnection)
  {
    v17 = 0;
    v20 = 0;
LABEL_11:
    v32 = objc_autoreleasePoolPush();
    selfCopy = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v34;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to create relay objects", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v32);
    v22 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1017];
    goto LABEL_14;
  }

  v11 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    watchVideoConnection2 = [(HMDCameraIDSDeviceConnection *)selfCopy2 watchVideoConnection];
    *buf = 138544386;
    v39 = v14;
    v40 = 2112;
    v41 = addressCopy;
    v42 = 2048;
    portCopy = port;
    v44 = 1024;
    relayCopy = relay;
    v46 = 1024;
    socket = [watchVideoConnection2 socket];
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Creating video relay between %@:%tu (%d,%d)", buf, 0x2Cu);
  }

  objc_autoreleasePoolPop(v11);
  v16 = objc_alloc_init(MEMORY[0x277CE5710]);
  [v16 setIp:addressCopy];
  [v16 setPort:port];
  v17 = [MEMORY[0x277CE5728] connectionWithSocket:relay remoteAddress:v16];
  v18 = MEMORY[0x277CE5728];
  watchVideoConnection3 = [(HMDCameraIDSDeviceConnection *)selfCopy2 watchVideoConnection];
  v20 = [v18 connectionWithSocket:{objc_msgSend(watchVideoConnection3, "socket")}];

  if (!v17 || !v20)
  {
    goto LABEL_11;
  }

  v37 = 0;
  v21 = [objc_alloc(MEMORY[0x277CE5720]) initWithConnection:v17 connection:v20 error:&v37];
  v22 = v37;
  [(HMDCameraIDSDeviceConnectionSender *)selfCopy2 setVideoPacketRelay:v21];

  videoPacketRelay = [(HMDCameraIDSDeviceConnectionSender *)selfCopy2 videoPacketRelay];

  v24 = objc_autoreleasePoolPush();
  selfCopy = selfCopy2;
  v26 = HMFGetOSLogHandle();
  v27 = v26;
  if (!videoPacketRelay)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v36;
      v40 = 2114;
      v41 = v22;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to create video packet relay with error %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
LABEL_14:
    [(HMDCameraIDSDeviceConnectionSender *)selfCopy _callSessionEndedWithError:v22];
    goto LABEL_15;
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v28 = HMFGetLogIdentifier();
    videoPacketRelay2 = [(HMDCameraIDSDeviceConnectionSender *)selfCopy videoPacketRelay];
    *buf = 138543618;
    v39 = v28;
    v40 = 2112;
    v41 = videoPacketRelay2;
    _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Starting packet relay for video: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
  videoPacketRelay3 = [(HMDCameraIDSDeviceConnectionSender *)selfCopy videoPacketRelay];
  [videoPacketRelay3 setDelegate:selfCopy];

  videoPacketRelay4 = [(HMDCameraIDSDeviceConnectionSender *)selfCopy videoPacketRelay];
  [videoPacketRelay4 start];

LABEL_15:
  v35 = *MEMORY[0x277D85DE8];
}

- (NSNumber)mtu
{
  workQueue = [(HMDCameraIDSDeviceConnection *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = MEMORY[0x277CCABB0];
  watchVideoConnection = [(HMDCameraIDSDeviceConnection *)self watchVideoConnection];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(watchVideoConnection, "mtu")}];

  return v6;
}

- (void)openRelaySession
{
  workQueue = [(HMDCameraIDSDeviceConnection *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  device = [(HMDCameraIDSDeviceConnectionSender *)self device];
  [(HMDCameraIDSDeviceConnection *)self _createStreamSocketWithDevice:device];
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting the IDS connection sender", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  videoPacketRelay = [(HMDCameraIDSDeviceConnectionSender *)selfCopy videoPacketRelay];
  [videoPacketRelay stop];

  audioPacketRelay = [(HMDCameraIDSDeviceConnectionSender *)selfCopy audioPacketRelay];
  [audioPacketRelay stop];

  v10.receiver = selfCopy;
  v10.super_class = HMDCameraIDSDeviceConnectionSender;
  [(HMDCameraIDSDeviceConnection *)&v10 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

- (HMDCameraIDSDeviceConnectionSender)initWithSessionID:(id)d workQueue:(id)queue device:(id)device delegate:(id)delegate idsProxyStreamService:(id)service
{
  dCopy = d;
  queueCopy = queue;
  deviceCopy = device;
  delegateCopy = delegate;
  serviceCopy = service;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!queueCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!deviceCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v17 = serviceCopy;
  if (!serviceCopy)
  {
LABEL_11:
    v22 = _HMFPreconditionFailure();
    return [(HMDCameraIDSDeviceConnectionSender *)v22 initWithSessionID:v23 workQueue:v24 device:v25 delegate:v26, v27];
  }

  v28.receiver = self;
  v28.super_class = HMDCameraIDSDeviceConnectionSender;
  v18 = [(HMDCameraIDSDeviceConnection *)&v28 initWithSessionID:dCopy workQueue:queueCopy idsProxyStreamService:serviceCopy];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_device, device);
    objc_storeWeak(&v19->_delegate, delegateCopy);
    v20 = +[HMDCameraPowerAssertionHandler sharedHandler];
    [v20 registerRemoteRequestHandler:v19 forSessionID:dCopy];
  }

  return v19;
}

- (HMDCameraIDSDeviceConnectionSender)initWithSessionID:(id)d workQueue:(id)queue device:(id)device delegate:(id)delegate
{
  delegateCopy = delegate;
  deviceCopy = device;
  queueCopy = queue;
  dCopy = d;
  v14 = +[HMDIDSServiceManager sharedManager];
  v15 = [v14 serviceWithName:@"com.apple.private.alloy.willow.proxy"];
  v16 = [(HMDCameraIDSDeviceConnectionSender *)self initWithSessionID:dCopy workQueue:queueCopy device:deviceCopy delegate:delegateCopy idsProxyStreamService:v15];

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t17_161388 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t17_161388, &__block_literal_global_161389);
  }

  v3 = logCategory__hmf_once_v18_161390;

  return v3;
}

void __49__HMDCameraIDSDeviceConnectionSender_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v18_161390;
  logCategory__hmf_once_v18_161390 = v1;
}

@end