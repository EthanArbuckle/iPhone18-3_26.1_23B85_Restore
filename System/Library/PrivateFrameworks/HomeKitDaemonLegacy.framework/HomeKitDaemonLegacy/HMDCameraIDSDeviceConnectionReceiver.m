@interface HMDCameraIDSDeviceConnectionReceiver
+ (id)logCategory;
- (HMDCameraIDSDeviceConnectionReceiver)initWithSessionID:(id)a3 workQueue:(id)a4 delegate:(id)a5;
- (HMDCameraIDSDeviceConnectionReceiverDelegate)delegate;
- (id)logIdentifier;
- (int)remoteAudioSocket;
- (int)remoteVideoSocket;
- (void)_callSessionEndedWithError:(id)a3;
- (void)_socketOpenedWithError:(id)a3;
- (void)setUpRemoteConnectionWithDevice:(id)a3;
@end

@implementation HMDCameraIDSDeviceConnectionReceiver

- (HMDCameraIDSDeviceConnectionReceiverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
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
  v10 = [(HMDCameraIDSDeviceConnectionReceiver *)v7 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 deviceConnectionReceiver:v7 didEndSessionWithError:v4];
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
  v10 = [(HMDCameraIDSDeviceConnectionReceiver *)v7 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 deviceConnectionReceiver:v7 didSetUpWithError:v4];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (int)remoteAudioSocket
{
  v3 = [(HMDCameraIDSDeviceConnection *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraIDSDeviceConnection *)self watchAudioConnection];
  LODWORD(v3) = [v4 socket];

  return v3;
}

- (int)remoteVideoSocket
{
  v3 = [(HMDCameraIDSDeviceConnection *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraIDSDeviceConnection *)self watchVideoConnection];
  LODWORD(v3) = [v4 socket];

  return v3;
}

- (void)setUpRemoteConnectionWithDevice:(id)a3
{
  v5 = a3;
  v4 = [(HMDCameraIDSDeviceConnection *)self workQueue];
  dispatch_assert_queue_V2(v4);

  [(HMDCameraIDSDeviceConnection *)self _createStreamSocketWithDevice:v5];
}

- (HMDCameraIDSDeviceConnectionReceiver)initWithSessionID:(id)a3 workQueue:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (!v9)
  {
LABEL_7:
    v16 = _HMFPreconditionFailure();
    return +[(HMDCameraIDSDeviceConnectionReceiver *)v16];
  }

  v11 = v10;
  v12 = +[HMDIDSServiceManager sharedManager];
  v13 = [v12 serviceWithName:@"com.apple.private.alloy.willow.proxy"];
  v18.receiver = self;
  v18.super_class = HMDCameraIDSDeviceConnectionReceiver;
  v14 = [(HMDCameraIDSDeviceConnection *)&v18 initWithSessionID:v8 workQueue:v9 idsProxyStreamService:v13];

  if (v14)
  {
    objc_storeWeak(&v14->_delegate, v11);
  }

  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_23329 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_23329, &__block_literal_global_23330);
  }

  v3 = logCategory__hmf_once_v3_23331;

  return v3;
}

uint64_t __51__HMDCameraIDSDeviceConnectionReceiver_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_23331;
  logCategory__hmf_once_v3_23331 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end