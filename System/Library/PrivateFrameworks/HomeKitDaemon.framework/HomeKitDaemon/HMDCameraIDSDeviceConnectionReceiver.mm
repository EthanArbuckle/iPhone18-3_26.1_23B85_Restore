@interface HMDCameraIDSDeviceConnectionReceiver
+ (id)logCategory;
- (HMDCameraIDSDeviceConnectionReceiver)initWithSessionID:(id)d workQueue:(id)queue delegate:(id)delegate;
- (HMDCameraIDSDeviceConnectionReceiverDelegate)delegate;
- (id)logIdentifier;
- (int)remoteAudioSocket;
- (int)remoteVideoSocket;
- (void)_callSessionEndedWithError:(id)error;
- (void)_socketOpenedWithError:(id)error;
- (void)setUpRemoteConnectionWithDevice:(id)device;
@end

@implementation HMDCameraIDSDeviceConnectionReceiver

- (HMDCameraIDSDeviceConnectionReceiverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
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
  delegate = [(HMDCameraIDSDeviceConnectionReceiver *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate deviceConnectionReceiver:selfCopy didEndSessionWithError:errorCopy];
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
  delegate = [(HMDCameraIDSDeviceConnectionReceiver *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate deviceConnectionReceiver:selfCopy didSetUpWithError:errorCopy];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (int)remoteAudioSocket
{
  workQueue = [(HMDCameraIDSDeviceConnection *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  watchAudioConnection = [(HMDCameraIDSDeviceConnection *)self watchAudioConnection];
  LODWORD(workQueue) = [watchAudioConnection socket];

  return workQueue;
}

- (int)remoteVideoSocket
{
  workQueue = [(HMDCameraIDSDeviceConnection *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  watchVideoConnection = [(HMDCameraIDSDeviceConnection *)self watchVideoConnection];
  LODWORD(workQueue) = [watchVideoConnection socket];

  return workQueue;
}

- (void)setUpRemoteConnectionWithDevice:(id)device
{
  deviceCopy = device;
  workQueue = [(HMDCameraIDSDeviceConnection *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDCameraIDSDeviceConnection *)self _createStreamSocketWithDevice:deviceCopy];
}

- (HMDCameraIDSDeviceConnectionReceiver)initWithSessionID:(id)d workQueue:(id)queue delegate:(id)delegate
{
  dCopy = d;
  queueCopy = queue;
  delegateCopy = delegate;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (!queueCopy)
  {
LABEL_7:
    v16 = _HMFPreconditionFailure();
    return +[(HMDCameraIDSDeviceConnectionReceiver *)v16];
  }

  v11 = delegateCopy;
  v12 = +[HMDIDSServiceManager sharedManager];
  v13 = [v12 serviceWithName:@"com.apple.private.alloy.willow.proxy"];
  v18.receiver = self;
  v18.super_class = HMDCameraIDSDeviceConnectionReceiver;
  v14 = [(HMDCameraIDSDeviceConnection *)&v18 initWithSessionID:dCopy workQueue:queueCopy idsProxyStreamService:v13];

  if (v14)
  {
    objc_storeWeak(&v14->_delegate, v11);
  }

  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_32934 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_32934, &__block_literal_global_32935);
  }

  v3 = logCategory__hmf_once_v3_32936;

  return v3;
}

void __51__HMDCameraIDSDeviceConnectionReceiver_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_32936;
  logCategory__hmf_once_v3_32936 = v1;
}

@end