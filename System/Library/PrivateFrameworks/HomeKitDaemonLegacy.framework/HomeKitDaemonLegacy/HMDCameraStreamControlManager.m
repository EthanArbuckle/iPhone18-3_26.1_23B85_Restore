@interface HMDCameraStreamControlManager
+ (id)logCategory;
- (BOOL)_canReconfigureToHigherTier;
- (HMDCameraStreamControlManager)initWithSessionID:(id)a3 workQueue:(id)a4 streamSnapshotHandler:(id)a5 delegate:(id)a6 accessory:(id)a7 streamManagementService:(id)a8 isLocal:(BOOL)a9 isRelayed:(BOOL)a10;
- (HMDCameraStreamControlManagerDelegate)delegate;
- (HMDHAPAccessory)accessory;
- (id)logIdentifier;
- (id)managerProtocol;
- (void)_callStreamFirstFrameReceived;
- (void)_callStreamNegotiated:(id)a3;
- (void)_callStreamReconfigured;
- (void)_callStreamRemoteConnectionSetup;
- (void)_callStreamStarted;
- (void)_callStreamStoppedWithError:(id)a3;
- (void)_cleanUpStreamSessionWithError:(id)a3;
- (void)_reportErrorCode:(int64_t)a3;
- (void)_reportInternalErrorCode:(int64_t)a3;
@end

@implementation HMDCameraStreamControlManager

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (HMDCameraStreamControlManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDCameraStreamControlManager *)self sessionID];
  v3 = [v2 description];

  return v3;
}

- (BOOL)_canReconfigureToHigherTier
{
  v2 = [(HMDCameraStreamControlManager *)self accessory];
  v3 = [v2 manufacturer];
  v4 = [&unk_28662BDA8 objectForKeyedSubscript:v3];
  v5 = [v2 model];
  v6 = [v4 containsObject:v5];

  return v6 ^ 1;
}

- (void)_callStreamStoppedWithError:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamControlManager *)self sessionID];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v13 = 138543874;
    v14 = v9;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Stream with session ID %@ stopped with error %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraStreamControlManager *)v7 managerProtocol];
  v11 = [(HMDCameraStreamControlManager *)v7 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v11 streamControlManager:v10 didStopStreamWithSessionID:v5 error:v4];
  }

  [(HMDCameraStreamControlManager *)v7 _cleanUpStreamSessionWithError:v4];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_callStreamReconfigured
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Stream reconfigured", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDCameraStreamControlManager *)v4 managerProtocol];
  v8 = [(HMDCameraStreamControlManager *)v4 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 streamControlManagerDidReconfigureStream:v7];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_callStreamFirstFrameReceived
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@First frame received", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDCameraStreamControlManager *)v4 managerProtocol];
  v8 = [(HMDCameraStreamControlManager *)v4 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 streamControlManagerDidReceiveFirstFrame:v7];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_callStreamStarted
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Stream started", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDCameraStreamControlManager *)v4 managerProtocol];
  v8 = [(HMDCameraStreamControlManager *)v4 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 streamControlManagerDidStartStream:v7];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_callStreamRemoteConnectionSetup
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Stream remote connection setup", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDCameraStreamControlManager *)v4 managerProtocol];
  v8 = [(HMDCameraStreamControlManager *)v4 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 streamControlManagerDidSetUpRemoteConnection:v7];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_callStreamNegotiated:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Stream negotiated", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDCameraStreamControlManager *)v6 managerProtocol];
  v10 = [(HMDCameraStreamControlManager *)v6 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 streamControlManager:v9 didNegotiateStreamWithSelectedParameters:v4];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)managerProtocol
{
  if ([(HMDCameraStreamControlManager *)self conformsToProtocol:&unk_286682610])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_reportInternalErrorCode:(int64_t)a3
{
  v4 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:a3];
  [(HMDCameraStreamControlManager *)self _cleanUpStreamSessionWithError:v4];
}

- (void)_reportErrorCode:(int64_t)a3
{
  v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:a3];
  [(HMDCameraStreamControlManager *)self _cleanUpStreamSessionWithError:v4];
}

- (void)_cleanUpStreamSessionWithError:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (HMDCameraStreamControlManager)initWithSessionID:(id)a3 workQueue:(id)a4 streamSnapshotHandler:(id)a5 delegate:(id)a6 accessory:(id)a7 streamManagementService:(id)a8 isLocal:(BOOL)a9 isRelayed:(BOOL)a10
{
  v17 = a3;
  v18 = a4;
  v30 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  if (!v17)
  {
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v18)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!v30)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!v20)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  v22 = v21;
  if (!v21)
  {
LABEL_13:
    v28 = _HMFPreconditionFailure();
    return +[(HMDCameraStreamControlManager *)v28];
  }

  v31.receiver = self;
  v31.super_class = HMDCameraStreamControlManager;
  v23 = [(HMDCameraStreamControlManager *)&v31 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_sessionID, a3);
    objc_storeStrong(&v24->_streamSnapshotHandler, a5);
    objc_storeStrong(&v24->_workQueue, a4);
    objc_storeWeak(&v24->_delegate, v19);
    objc_storeWeak(&v24->_accessory, v20);
    objc_storeStrong(&v24->_streamManagementService, a8);
    v25 = [[HMDCameraStreamMetrics alloc] initWithSessionID:v17 cameraAccessory:v20 isLocal:a9 isRelayed:a10];
    streamMetrics = v24->_streamMetrics;
    v24->_streamMetrics = v25;
  }

  return v24;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_144632 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_144632, &__block_literal_global_144633);
  }

  v3 = logCategory__hmf_once_v7_144634;

  return v3;
}

uint64_t __44__HMDCameraStreamControlManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v7_144634;
  logCategory__hmf_once_v7_144634 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end