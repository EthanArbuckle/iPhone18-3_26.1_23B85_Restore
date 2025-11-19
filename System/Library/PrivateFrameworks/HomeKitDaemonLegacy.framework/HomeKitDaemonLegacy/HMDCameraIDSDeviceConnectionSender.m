@interface HMDCameraIDSDeviceConnectionSender
+ (id)logCategory;
- (HMDCameraIDSDeviceConnectionSender)initWithSessionID:(id)a3 workQueue:(id)a4 device:(id)a5 delegate:(id)a6;
- (HMDCameraIDSDeviceConnectionSender)initWithSessionID:(id)a3 workQueue:(id)a4 device:(id)a5 delegate:(id)a6 idsProxyStreamService:(id)a7;
- (HMDCameraIDSDeviceConnectionSenderDelegate)delegate;
- (NSNumber)mtu;
- (id)logIdentifier;
- (void)_callSessionEndedWithError:(id)a3;
- (void)_socketOpenedWithError:(id)a3;
- (void)_startAudioPacketRelay:(int)a3 ipAddress:(id)a4 port:(unint64_t)a5;
- (void)_startVideoPacketRelay:(int)a3 ipAddress:(id)a4 port:(unint64_t)a5;
- (void)dealloc;
- (void)openRelaySession;
- (void)packetRelay:(id)a3 didStart:(BOOL)a4 error:(id)a5;
- (void)packetRelay:(id)a3 didStop:(BOOL)a4 error:(id)a5;
@end

@implementation HMDCameraIDSDeviceConnectionSender

- (HMDCameraIDSDeviceConnectionSenderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)packetRelay:(id)a3 didStop:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(HMDCameraIDSDeviceConnection *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__HMDCameraIDSDeviceConnectionSender_packetRelay_didStop_error___block_invoke;
  v13[3] = &unk_279731C38;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Packet relay %@ did stop: %{BOOL}d error: %@", &v10, 0x26u);
  }

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)packetRelay:(id)a3 didStart:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(HMDCameraIDSDeviceConnection *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__HMDCameraIDSDeviceConnectionSender_packetRelay_didStart_error___block_invoke;
  v13[3] = &unk_279731C38;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Packet relay %@ did start: %{BOOL}d error: %{public}@", &v10, 0x26u);
  }

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  v2 = [(HMDCameraIDSDeviceConnection *)self sessionID];
  v3 = [v2 description];

  return v3;
}

- (void)_callSessionEndedWithError:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraIDSDeviceConnection *)self workQueue];
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
  v10 = [(HMDCameraIDSDeviceConnectionSender *)v7 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 deviceConnectionSender:v7 didEndSessionWithError:v4];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_socketOpenedWithError:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraIDSDeviceConnection *)self workQueue];
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
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Calling didSetup delegate with error %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraIDSDeviceConnectionSender *)v7 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 deviceConnectionSender:v7 didSetUpWithError:v4];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_startAudioPacketRelay:(int)a3 ipAddress:(id)a4 port:(unint64_t)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [(HMDCameraIDSDeviceConnection *)self workQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [(HMDCameraIDSDeviceConnection *)self watchAudioConnection];

  if (!v10)
  {
    v17 = 0;
    v20 = 0;
LABEL_11:
    v32 = objc_autoreleasePoolPush();
    v25 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v34;
      _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to create relay objects", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v32);
    v22 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1017];
    goto LABEL_14;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [(HMDCameraIDSDeviceConnection *)v12 watchAudioConnection];
    *buf = 138544386;
    v39 = v14;
    v40 = 2112;
    v41 = v8;
    v42 = 2048;
    v43 = a5;
    v44 = 1024;
    v45 = a3;
    v46 = 1024;
    v47 = [v15 socket];
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Creating audio relay between %@:%tu (%d,%d)", buf, 0x2Cu);
  }

  objc_autoreleasePoolPop(v11);
  v16 = objc_alloc_init(MEMORY[0x277CE5710]);
  [v16 setIp:v8];
  [v16 setPort:a5];
  v17 = [MEMORY[0x277CE5728] connectionWithSocket:a3 remoteAddress:v16];
  v18 = MEMORY[0x277CE5728];
  v19 = [(HMDCameraIDSDeviceConnection *)v12 watchAudioConnection];
  v20 = [v18 connectionWithSocket:{objc_msgSend(v19, "socket")}];

  if (!v17 || !v20)
  {
    goto LABEL_11;
  }

  v37 = 0;
  v21 = [objc_alloc(MEMORY[0x277CE5720]) initWithConnection:v17 connection:v20 error:&v37];
  v22 = v37;
  [(HMDCameraIDSDeviceConnectionSender *)v12 setAudioPacketRelay:v21];

  v23 = [(HMDCameraIDSDeviceConnectionSender *)v12 audioPacketRelay];

  v24 = objc_autoreleasePoolPush();
  v25 = v12;
  v26 = HMFGetOSLogHandle();
  v27 = v26;
  if (!v23)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v36;
      v40 = 2112;
      v41 = v22;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to create audio packet relay with error %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
LABEL_14:
    [(HMDCameraIDSDeviceConnectionSender *)v25 _callSessionEndedWithError:v22];
    goto LABEL_15;
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v28 = HMFGetLogIdentifier();
    v29 = [(HMDCameraIDSDeviceConnectionSender *)v25 audioPacketRelay];
    *buf = 138543618;
    v39 = v28;
    v40 = 2112;
    v41 = v29;
    _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Starting packet relay for audio: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
  v30 = [(HMDCameraIDSDeviceConnectionSender *)v25 audioPacketRelay];
  [v30 setDelegate:v25];

  v31 = [(HMDCameraIDSDeviceConnectionSender *)v25 audioPacketRelay];
  [v31 start];

LABEL_15:
  v35 = *MEMORY[0x277D85DE8];
}

- (void)_startVideoPacketRelay:(int)a3 ipAddress:(id)a4 port:(unint64_t)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [(HMDCameraIDSDeviceConnection *)self workQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [(HMDCameraIDSDeviceConnection *)self watchVideoConnection];

  if (!v10)
  {
    v17 = 0;
    v20 = 0;
LABEL_11:
    v32 = objc_autoreleasePoolPush();
    v25 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v34;
      _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to create relay objects", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v32);
    v22 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1017];
    goto LABEL_14;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [(HMDCameraIDSDeviceConnection *)v12 watchVideoConnection];
    *buf = 138544386;
    v39 = v14;
    v40 = 2112;
    v41 = v8;
    v42 = 2048;
    v43 = a5;
    v44 = 1024;
    v45 = a3;
    v46 = 1024;
    v47 = [v15 socket];
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Creating video relay between %@:%tu (%d,%d)", buf, 0x2Cu);
  }

  objc_autoreleasePoolPop(v11);
  v16 = objc_alloc_init(MEMORY[0x277CE5710]);
  [v16 setIp:v8];
  [v16 setPort:a5];
  v17 = [MEMORY[0x277CE5728] connectionWithSocket:a3 remoteAddress:v16];
  v18 = MEMORY[0x277CE5728];
  v19 = [(HMDCameraIDSDeviceConnection *)v12 watchVideoConnection];
  v20 = [v18 connectionWithSocket:{objc_msgSend(v19, "socket")}];

  if (!v17 || !v20)
  {
    goto LABEL_11;
  }

  v37 = 0;
  v21 = [objc_alloc(MEMORY[0x277CE5720]) initWithConnection:v17 connection:v20 error:&v37];
  v22 = v37;
  [(HMDCameraIDSDeviceConnectionSender *)v12 setVideoPacketRelay:v21];

  v23 = [(HMDCameraIDSDeviceConnectionSender *)v12 videoPacketRelay];

  v24 = objc_autoreleasePoolPush();
  v25 = v12;
  v26 = HMFGetOSLogHandle();
  v27 = v26;
  if (!v23)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v36;
      v40 = 2114;
      v41 = v22;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to create video packet relay with error %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
LABEL_14:
    [(HMDCameraIDSDeviceConnectionSender *)v25 _callSessionEndedWithError:v22];
    goto LABEL_15;
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v28 = HMFGetLogIdentifier();
    v29 = [(HMDCameraIDSDeviceConnectionSender *)v25 videoPacketRelay];
    *buf = 138543618;
    v39 = v28;
    v40 = 2112;
    v41 = v29;
    _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Starting packet relay for video: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
  v30 = [(HMDCameraIDSDeviceConnectionSender *)v25 videoPacketRelay];
  [v30 setDelegate:v25];

  v31 = [(HMDCameraIDSDeviceConnectionSender *)v25 videoPacketRelay];
  [v31 start];

LABEL_15:
  v35 = *MEMORY[0x277D85DE8];
}

- (NSNumber)mtu
{
  v3 = [(HMDCameraIDSDeviceConnection *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = MEMORY[0x277CCABB0];
  v5 = [(HMDCameraIDSDeviceConnection *)self watchVideoConnection];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(v5, "mtu")}];

  return v6;
}

- (void)openRelaySession
{
  v3 = [(HMDCameraIDSDeviceConnection *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraIDSDeviceConnectionSender *)self device];
  [(HMDCameraIDSDeviceConnection *)self _createStreamSocketWithDevice:v4];
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
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting the IDS connection sender", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDCameraIDSDeviceConnectionSender *)v4 videoPacketRelay];
  [v7 stop];

  v8 = [(HMDCameraIDSDeviceConnectionSender *)v4 audioPacketRelay];
  [v8 stop];

  v10.receiver = v4;
  v10.super_class = HMDCameraIDSDeviceConnectionSender;
  [(HMDCameraIDSDeviceConnection *)&v10 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

- (HMDCameraIDSDeviceConnectionSender)initWithSessionID:(id)a3 workQueue:(id)a4 device:(id)a5 delegate:(id)a6 idsProxyStreamService:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v12)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v13)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v14)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v17 = v16;
  if (!v16)
  {
LABEL_11:
    v22 = _HMFPreconditionFailure();
    return [(HMDCameraIDSDeviceConnectionSender *)v22 initWithSessionID:v23 workQueue:v24 device:v25 delegate:v26, v27];
  }

  v28.receiver = self;
  v28.super_class = HMDCameraIDSDeviceConnectionSender;
  v18 = [(HMDCameraIDSDeviceConnection *)&v28 initWithSessionID:v12 workQueue:v13 idsProxyStreamService:v16];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_device, a5);
    objc_storeWeak(&v19->_delegate, v15);
    v20 = +[HMDCameraPowerAssertionHandler sharedHandler];
    [v20 registerRemoteRequestHandler:v19 forSessionID:v12];
  }

  return v19;
}

- (HMDCameraIDSDeviceConnectionSender)initWithSessionID:(id)a3 workQueue:(id)a4 device:(id)a5 delegate:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = +[HMDIDSServiceManager sharedManager];
  v15 = [v14 serviceWithName:@"com.apple.private.alloy.willow.proxy"];
  v16 = [(HMDCameraIDSDeviceConnectionSender *)self initWithSessionID:v13 workQueue:v12 device:v11 delegate:v10 idsProxyStreamService:v15];

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t17_107966 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t17_107966, &__block_literal_global_107967);
  }

  v3 = logCategory__hmf_once_v18_107968;

  return v3;
}

uint64_t __49__HMDCameraIDSDeviceConnectionSender_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v18_107968;
  logCategory__hmf_once_v18_107968 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end