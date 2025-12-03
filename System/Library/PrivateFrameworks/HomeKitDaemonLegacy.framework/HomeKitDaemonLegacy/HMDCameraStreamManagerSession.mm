@interface HMDCameraStreamManagerSession
+ (id)logCategory;
- (BOOL)canStartWithError:(id *)error;
- (HMDCameraStreamManagerSession)initWithSessionID:(id)d destinationID:(id)iD streamClientConnection:(id)connection streamControlManager:(id)manager setupWaitPeriod:(double)period;
- (HMDCameraStreamManagerSession)initWithSessionID:(id)d destinationID:(id)iD streamClientConnection:(id)connection streamControlManager:(id)manager streamSetupTimer:(id)timer;
- (id)logIdentifier;
@end

@implementation HMDCameraStreamManagerSession

- (id)logIdentifier
{
  sessionID = [(HMDCameraStreamManagerSession *)self sessionID];
  v3 = [sessionID description];

  return v3;
}

- (BOOL)canStartWithError:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  destinationID = [(HMDCameraStreamManagerSession *)self destinationID];

  if (!destinationID)
  {
    goto LABEL_4;
  }

  v6 = +[HMDDeviceCapabilities deviceCapabilities];
  isResidentCapable = [v6 isResidentCapable];

  if (!isResidentCapable)
  {
    goto LABEL_4;
  }

  v8 = +[HMDCameraRemoteStreamTracker sharedTracker];
  v9 = [v8 startTrackingStreamSession:self];

  if ((v9 & 1) == 0)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = selfCopy;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Stream tracker cannot start stream session: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    if (error)
    {
      v16 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1018];
      v17 = v16;
      result = 0;
      *error = v16;
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

- (HMDCameraStreamManagerSession)initWithSessionID:(id)d destinationID:(id)iD streamClientConnection:(id)connection streamControlManager:(id)manager streamSetupTimer:(id)timer
{
  dCopy = d;
  iDCopy = iD;
  connectionCopy = connection;
  managerCopy = manager;
  timerCopy = timer;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_6;
  }

  if (!managerCopy)
  {
LABEL_6:
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v17 = timerCopy;
  if (timerCopy)
  {
    v36.receiver = self;
    v36.super_class = HMDCameraStreamManagerSession;
    v18 = [(HMDCameraStreamManagerSession *)&v36 init];
    sessionID = v18->_sessionID;
    v18->_sessionID = dCopy;
    v20 = dCopy;

    v21 = [iDCopy copy];
    destinationID = v18->_destinationID;
    v18->_destinationID = v21;

    streamClientConnection = v18->_streamClientConnection;
    v18->_streamClientConnection = connectionCopy;
    v24 = connectionCopy;

    streamControlManager = v18->_streamControlManager;
    v18->_streamControlManager = managerCopy;
    v26 = managerCopy;

    streamSetupTimer = v18->_streamSetupTimer;
    v18->_streamSetupTimer = v17;

    return v18;
  }

LABEL_7:
  v29 = _HMFPreconditionFailure();
  return [(HMDCameraStreamManagerSession *)v29 initWithSessionID:v30 destinationID:v31 streamClientConnection:v32 streamControlManager:v33 setupWaitPeriod:v34, v35];
}

- (HMDCameraStreamManagerSession)initWithSessionID:(id)d destinationID:(id)iD streamClientConnection:(id)connection streamControlManager:(id)manager setupWaitPeriod:(double)period
{
  dCopy = d;
  iDCopy = iD;
  connectionCopy = connection;
  managerCopy = manager;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_6;
  }

  v16 = managerCopy;
  if (!managerCopy)
  {
LABEL_6:
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (period > 0.0)
  {
    v17 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:period];
    v18 = [(HMDCameraStreamManagerSession *)self initWithSessionID:dCopy destinationID:iDCopy streamClientConnection:connectionCopy streamControlManager:v16 streamSetupTimer:v17];

    return v18;
  }

LABEL_7:
  v20 = _HMFPreconditionFailure();
  return +[(HMDCameraStreamManagerSession *)v20];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_6046 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_6046, &__block_literal_global_6047);
  }

  v3 = logCategory__hmf_once_v2_6048;

  return v3;
}

uint64_t __44__HMDCameraStreamManagerSession_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v2_6048 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end