@interface HMDCameraStreamManagerSession
+ (id)logCategory;
- (BOOL)canStartWithError:(id *)a3;
- (HMDCameraStreamManagerSession)initWithSessionID:(id)a3 destinationID:(id)a4 streamClientConnection:(id)a5 streamControlManager:(id)a6 setupWaitPeriod:(double)a7;
- (HMDCameraStreamManagerSession)initWithSessionID:(id)a3 destinationID:(id)a4 streamClientConnection:(id)a5 streamControlManager:(id)a6 streamSetupTimer:(id)a7;
- (id)logIdentifier;
@end

@implementation HMDCameraStreamManagerSession

- (id)logIdentifier
{
  v2 = [(HMDCameraStreamManagerSession *)self sessionID];
  v3 = [v2 description];

  return v3;
}

- (BOOL)canStartWithError:(id *)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [(HMDCameraStreamManagerSession *)self destinationID];

  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = +[HMDDeviceCapabilities deviceCapabilities];
  v7 = [v6 isResidentCapable];

  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = +[HMDCameraRemoteStreamTracker sharedTracker];
  v9 = [v8 startTrackingStreamSession:self];

  if ((v9 & 1) == 0)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Stream tracker cannot start stream session: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    if (a3)
    {
      v16 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1018];
      v17 = v16;
      result = 0;
      *a3 = v16;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
LABEL_4:
    result = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (HMDCameraStreamManagerSession)initWithSessionID:(id)a3 destinationID:(id)a4 streamClientConnection:(id)a5 streamControlManager:(id)a6 streamSetupTimer:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v12)
  {
    _HMFPreconditionFailure();
    goto LABEL_6;
  }

  if (!v15)
  {
LABEL_6:
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v17 = v16;
  if (v16)
  {
    v36.receiver = self;
    v36.super_class = HMDCameraStreamManagerSession;
    v18 = [(HMDCameraStreamManagerSession *)&v36 init];
    sessionID = v18->_sessionID;
    v18->_sessionID = v12;
    v20 = v12;

    v21 = [v13 copy];
    destinationID = v18->_destinationID;
    v18->_destinationID = v21;

    streamClientConnection = v18->_streamClientConnection;
    v18->_streamClientConnection = v14;
    v24 = v14;

    streamControlManager = v18->_streamControlManager;
    v18->_streamControlManager = v15;
    v26 = v15;

    streamSetupTimer = v18->_streamSetupTimer;
    v18->_streamSetupTimer = v17;

    return v18;
  }

LABEL_7:
  v29 = _HMFPreconditionFailure();
  return [(HMDCameraStreamManagerSession *)v29 initWithSessionID:v30 destinationID:v31 streamClientConnection:v32 streamControlManager:v33 setupWaitPeriod:v34, v35];
}

- (HMDCameraStreamManagerSession)initWithSessionID:(id)a3 destinationID:(id)a4 streamClientConnection:(id)a5 streamControlManager:(id)a6 setupWaitPeriod:(double)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!v12)
  {
    _HMFPreconditionFailure();
    goto LABEL_6;
  }

  v16 = v15;
  if (!v15)
  {
LABEL_6:
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (a7 > 0.0)
  {
    v17 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:a7];
    v18 = [(HMDCameraStreamManagerSession *)self initWithSessionID:v12 destinationID:v13 streamClientConnection:v14 streamControlManager:v16 streamSetupTimer:v17];

    return v18;
  }

LABEL_7:
  v20 = _HMFPreconditionFailure();
  return +[(HMDCameraStreamManagerSession *)v20];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_7914 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_7914, &__block_literal_global_7915);
  }

  v3 = logCategory__hmf_once_v2_7916;

  return v3;
}

void __44__HMDCameraStreamManagerSession_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_7916;
  logCategory__hmf_once_v2_7916 = v1;
}

@end