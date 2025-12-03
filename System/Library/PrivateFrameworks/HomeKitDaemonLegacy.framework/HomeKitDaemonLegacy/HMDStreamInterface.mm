@interface HMDStreamInterface
+ (id)logCategory;
+ (int)openSocketWithNetworkConfig:(id)config;
- (BOOL)loadMiscFields:(id)fields;
- (HMDStreamInterface)initWithSessionID:(id)d workQueue:(id)queue sessionHandler:(id)handler localRTPSocket:(int)socket;
- (id)logIdentifier;
- (unint64_t)state;
- (void)dealloc;
- (void)setState:(unint64_t)state;
@end

@implementation HMDStreamInterface

- (id)logIdentifier
{
  sessionID = [(HMDStreamInterface *)self sessionID];
  v3 = [sessionID description];

  return v3;
}

- (BOOL)loadMiscFields:(id)fields
{
  v35 = *MEMORY[0x277D85DE8];
  fieldsCopy = fields;
  sessionHandler = [(HMDStreamInterface *)self sessionHandler];
  if ([sessionHandler conformsToProtocol:&unk_2866763F8])
  {
    v6 = sessionHandler;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = objc_opt_class();
    remoteVideoSocket = [v7 remoteVideoSocket];
    v10 = [v8 extractNetworkConfig:remoteVideoSocket peerNameExtractor:MEMORY[0x277D85F28]];
    v11 = v10 != 0;
    if (v10)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        ipAddress = [v10 ipAddress];
        v31 = 138543618;
        v32 = v15;
        v33 = 2112;
        v34 = ipAddress;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@IDSDevice connection: Peer IP address: %@\n", &v31, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        rtpPort = [v10 rtpPort];
        v31 = 138543618;
        v32 = v20;
        v33 = 2112;
        v34 = rtpPort;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@IDSDevice connection: Peer port      : %@\n", &v31, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      ipAddress2 = [v10 ipAddress];
      remoteAddress = [fieldsCopy remoteAddress];
      [remoteAddress setIp:ipAddress2];

      rtpPort2 = [v10 rtpPort];
      LOWORD(remoteAddress) = [rtpPort2 unsignedIntegerValue];
      remoteAddress2 = [fieldsCopy remoteAddress];
      [remoteAddress2 setPort:remoteAddress];

      ipv6 = [v10 ipv6];
      remoteAddress3 = [fieldsCopy remoteAddress];
      [remoteAddress3 setIsIPv6:ipv6];

      rtpPort3 = [v10 rtpPort];
      [fieldsCopy setRtcpRemotePort:{objc_msgSend(rtpPort3, "unsignedShortValue")}];
    }
  }

  else
  {
    v11 = 1;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)setState:(unint64_t)state
{
  os_unfair_lock_lock_with_options();
  self->_state = state;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)state
{
  os_unfair_lock_lock_with_options();
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  return state;
}

- (void)dealloc
{
  if (self->_localRTPSocket != -1)
  {
    socketCloseHandler = self->_socketCloseHandler;
    (*(self->_socketCloseHandler + 2))();
  }

  v4.receiver = self;
  v4.super_class = HMDStreamInterface;
  [(HMDStreamInterface *)&v4 dealloc];
}

- (HMDStreamInterface)initWithSessionID:(id)d workQueue:(id)queue sessionHandler:(id)handler localRTPSocket:(int)socket
{
  dCopy = d;
  queueCopy = queue;
  handlerCopy = handler;
  v18.receiver = self;
  v18.super_class = HMDStreamInterface;
  v14 = [(HMDStreamInterface *)&v18 init];
  v15 = v14;
  if (v14)
  {
    v14->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v14->_sessionID, d);
    objc_storeStrong(&v15->_workQueue, queue);
    objc_storeStrong(&v15->_sessionHandler, handler);
    v15->_localRTPSocket = socket;
    v15->_state = 1;
    socketCloseHandler = v15->_socketCloseHandler;
    v15->_socketCloseHandler = &__block_literal_global_55011;
  }

  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t11_55024 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t11_55024, &__block_literal_global_75);
  }

  v3 = logCategory__hmf_once_v12_55025;

  return v3;
}

uint64_t __33__HMDStreamInterface_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v12_55025;
  logCategory__hmf_once_v12_55025 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (int)openSocketWithNetworkConfig:(id)config
{
  v41 = *MEMORY[0x277D85DE8];
  configCopy = config;
  if ([configCopy ipv6])
  {
    v5 = socket(30, 2, 0);
    if ((v5 & 0x80000000) != 0)
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        v23 = __error();
        v24 = strerror(*v23);
        v25 = *__error();
        *buf = 138543874;
        v36 = v9;
        v37 = 2080;
        v38 = v24;
        v39 = 1024;
        LODWORD(v40) = v25;
        v13 = "%{public}@Failed to create IPv6 socket: %s (%d)";
        goto LABEL_17;
      }

LABEL_18:

      objc_autoreleasePoolPop(v6);
      LODWORD(v6) = -1;
      goto LABEL_19;
    }

    v6 = v5;
    v34 = 1;
    setsockopt(v5, 0xFFFF, 512, &v34, 4u);
    v34 = 3200000;
    setsockopt(v6, 0xFFFF, 4098, &v34, 4u);
    if (bind(v6, (configCopy + 36), 0x1Cu) < 0)
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        v10 = __error();
        v11 = strerror(*v10);
        v12 = *__error();
        *buf = 138543874;
        v36 = v9;
        v37 = 2080;
        v38 = v11;
        v39 = 1024;
        LODWORD(v40) = v12;
        v13 = "%{public}@Failed to bind IPv6 socket: %s (%d)";
LABEL_17:
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, v13, buf, 0x1Cu);

        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v14 = socket(2, 2, 0);
    if ((v14 & 0x80000000) != 0)
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        v26 = __error();
        v27 = strerror(*v26);
        v28 = *__error();
        *buf = 138543874;
        v36 = v9;
        v37 = 2080;
        v38 = v27;
        v39 = 1024;
        LODWORD(v40) = v28;
        v13 = "%{public}@Failed to create socket: %s (%d)";
        goto LABEL_17;
      }

      goto LABEL_18;
    }

    v6 = v14;
    v34 = 1;
    setsockopt(v14, 0xFFFF, 512, &v34, 4u);
    v34 = 3200000;
    setsockopt(v6, 0xFFFF, 4098, &v34, 4u);
    if (bind(v6, (configCopy + 8), 0x10u) < 0)
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        v29 = __error();
        v30 = strerror(*v29);
        v31 = *__error();
        *buf = 138543874;
        v36 = v9;
        v37 = 2080;
        v38 = v30;
        v39 = 1024;
        LODWORD(v40) = v31;
        v13 = "%{public}@Failed to bind socket: %s (%d)";
        goto LABEL_17;
      }

      goto LABEL_18;
    }
  }

  v15 = [self extractNetworkConfig:v6 peerNameExtractor:MEMORY[0x277D85F30]];
  rtpPort = [v15 rtpPort];
  [configCopy setRtpPort:rtpPort];

  v17 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    ipAddress = [configCopy ipAddress];
    rtpPort2 = [configCopy rtpPort];
    *buf = 138543874;
    v36 = v20;
    v37 = 2112;
    v38 = ipAddress;
    v39 = 2112;
    v40 = rtpPort2;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Opened socket at address %@ and port %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v17);
LABEL_19:

  v32 = *MEMORY[0x277D85DE8];
  return v6;
}

@end