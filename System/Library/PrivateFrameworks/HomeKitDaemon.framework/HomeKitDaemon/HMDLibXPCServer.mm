@interface HMDLibXPCServer
+ (id)logCategory;
- (HMDLibXPCServer)initWithMachServiceName:(id)name;
- (HMDLibXPCServer)initWithMachServiceName:(id)name queue:(id)queue libXPCInterface:(id)interface;
- (HMDLibXPCServerDelegate)delegate;
- (void)handleIncomingConnection:(id)connection;
- (void)start;
- (void)stop;
@end

@implementation HMDLibXPCServer

- (HMDLibXPCServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleIncomingConnection:(id)connection
{
  v25 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v22 = v8;
    v23 = 2112;
    v24 = connectionCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling incoming connection: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  libXPCInterface = [(HMDLibXPCServer *)selfCopy libXPCInterface];
  queue = [(HMDLibXPCServer *)selfCopy queue];
  [libXPCInterface setXPCTargetQueueForConnection:connectionCopy queue:queue];

  objc_initWeak(buf, selfCopy);
  libXPCInterface2 = [(HMDLibXPCServer *)selfCopy libXPCInterface];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __44__HMDLibXPCServer_handleIncomingConnection___block_invoke;
  v18 = &unk_27867D130;
  objc_copyWeak(&v20, buf);
  v12 = connectionCopy;
  v19 = v12;
  [libXPCInterface2 setXPCEventHandlerForConnection:v12 handler:&v15];

  v13 = [(HMDLibXPCServer *)selfCopy libXPCInterface:v15];
  [v13 activateXPCConnection:v12];

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);

  v14 = *MEMORY[0x277D85DE8];
}

void __44__HMDLibXPCServer_handleIncomingConnection___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *v40 = 138543362;
      *&v40[4] = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Lost self when handling XPC event on listener connection", v40, 0xCu);
    }

    v18 = v15;
    goto LABEL_11;
  }

  v6 = [WeakRetained libXPCInterface];
  v7 = [v6 typeForXPCObject:v3];

  if (v7 == MEMORY[0x277D86468])
  {
    v19 = _CFXPCCreateCFObjectFromXPCObject();
    v20 = [v5 delegate];
    [v20 didReceiveEventDictionary:v19];

    goto LABEL_13;
  }

  if (v7 == MEMORY[0x277D86480])
  {
    if (v3 != MEMORY[0x277D86420])
    {
      if (v3 == MEMORY[0x277D863F0])
      {
        v8 = objc_autoreleasePoolPush();
        v9 = v5;
        v10 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v37 = HMFGetLogIdentifier();
          v38 = *(a1 + 32);
          *v40 = 138543618;
          *&v40[4] = v37;
          *&v40[12] = 2112;
          *&v40[14] = v38;
          _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Connection interrupted: %@", v40, 0x16u);
        }

        goto LABEL_6;
      }

      v22 = MEMORY[0x277D863F8];
      v23 = objc_autoreleasePoolPush();
      v24 = v5;
      v25 = HMFGetOSLogHandle();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
      if (v3 == v22)
      {
        if (v26)
        {
          v27 = HMFGetLogIdentifier();
          v39 = *(a1 + 32);
          *v40 = 138543618;
          *&v40[4] = v27;
          *&v40[12] = 2112;
          *&v40[14] = v39;
          v29 = "%{public}@Connection invalidated: %@";
          v30 = v25;
          v31 = 22;
          goto LABEL_26;
        }
      }

      else if (v26)
      {
        v27 = HMFGetLogIdentifier();
        v28 = *(a1 + 32);
        *v40 = 138543874;
        *&v40[4] = v27;
        *&v40[12] = 2112;
        *&v40[14] = v28;
        *&v40[22] = 2112;
        name = v3;
        v29 = "%{public}@Received unexpected error event for connection %@: %@";
        v30 = v25;
        v31 = 32;
LABEL_26:
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, v29, v40, v31);
      }

      objc_autoreleasePoolPop(v23);
      v13 = v24;
      goto LABEL_7;
    }

    v32 = objc_autoreleasePoolPush();
    v33 = v5;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      v36 = *(a1 + 32);
      *v40 = 138543618;
      *&v40[4] = v35;
      *&v40[12] = 2112;
      *&v40[14] = v36;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Termination imminent for connection: %@", v40, 0x16u);
    }

    v18 = v32;
LABEL_11:
    objc_autoreleasePoolPop(v18);
    goto LABEL_13;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = v5;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = *(a1 + 32);
    *v40 = 138544130;
    *&v40[4] = v11;
    *&v40[12] = 2112;
    *&v40[14] = v12;
    *&v40[22] = 2080;
    name = xpc_type_get_name(v7);
    v42 = 2112;
    v43 = v3;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received unexpected event type for connection %@: (%s) %@", v40, 0x2Au);
  }

LABEL_6:

  objc_autoreleasePoolPop(v8);
  v13 = v9;
LABEL_7:
  v14 = [v13 libXPCInterface];
  [v14 cancelXPCConnection:*(a1 + 32)];

LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  listenerConnection = [(HMDLibXPCServer *)self listenerConnection];

  if (listenerConnection)
  {
    libXPCInterface = [(HMDLibXPCServer *)self libXPCInterface];
    listenerConnection2 = [(HMDLibXPCServer *)self listenerConnection];
    [libXPCInterface cancelXPCConnection:listenerConnection2];

    [(HMDLibXPCServer *)self setListenerConnection:0];
  }
}

- (void)start
{
  listenerConnection = [(HMDLibXPCServer *)self listenerConnection];

  if (!listenerConnection)
  {
    libXPCInterface = [(HMDLibXPCServer *)self libXPCInterface];
    name = [(HMDLibXPCServer *)self name];
    queue = [(HMDLibXPCServer *)self queue];
    v7 = [libXPCInterface createXPCMachServiceWithName:name queue:queue flags:1];
    [(HMDLibXPCServer *)self setListenerConnection:v7];

    objc_initWeak(&location, self);
    libXPCInterface2 = [(HMDLibXPCServer *)self libXPCInterface];
    listenerConnection2 = [(HMDLibXPCServer *)self listenerConnection];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __24__HMDLibXPCServer_start__block_invoke;
    v15 = &unk_278680088;
    objc_copyWeak(&v16, &location);
    [libXPCInterface2 setXPCEventHandlerForConnection:listenerConnection2 handler:&v12];

    v10 = [(HMDLibXPCServer *)self libXPCInterface:v12];
    listenerConnection3 = [(HMDLibXPCServer *)self listenerConnection];
    [v10 activateXPCConnection:listenerConnection3];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __24__HMDLibXPCServer_start__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_12:

      objc_autoreleasePoolPop(v10);
      goto LABEL_13;
    }

    v12 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v12;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Lost self when handling XPC event on listener connection", &v17, 0xCu);
LABEL_11:

    goto LABEL_12;
  }

  v6 = [WeakRetained queue];
  dispatch_assert_queue_V2(v6);

  v7 = [v5 libXPCInterface];
  v8 = [v7 typeForXPCObject:v3];

  if (v8 != MEMORY[0x277D86450])
  {
    v9 = MEMORY[0x277D86480];
    v10 = objc_autoreleasePoolPush();
    v11 = v5;
    v12 = HMFGetOSLogHandle();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (v8 == v9)
    {
      if (v13)
      {
        v15 = HMFGetLogIdentifier();
        v17 = 138543362;
        v18 = v15;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Listener connection locally invalidated", &v17, 0xCu);
      }
    }

    else if (v13)
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543874;
      v18 = v14;
      v19 = 2080;
      name = xpc_type_get_name(v8);
      v21 = 2112;
      v22 = v3;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Received unexpected event type for listener connection: (%s) %@", &v17, 0x20u);
    }

    goto LABEL_11;
  }

  [v5 handleIncomingConnection:v3];
LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
}

- (HMDLibXPCServer)initWithMachServiceName:(id)name queue:(id)queue libXPCInterface:(id)interface
{
  nameCopy = name;
  queueCopy = queue;
  interfaceCopy = interface;
  v15.receiver = self;
  v15.super_class = HMDLibXPCServer;
  v11 = [(HMDLibXPCServer *)&v15 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v12;

    objc_storeStrong(&v11->_queue, queue);
    objc_storeStrong(&v11->_libXPCInterface, interface);
  }

  return v11;
}

- (HMDLibXPCServer)initWithMachServiceName:(id)name
{
  nameCopy = name;
  nameCopy2 = name;
  uTF8String = [nameCopy2 UTF8String];
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create(uTF8String, v8);
  v10 = objc_alloc_init(HMDLibXPCInterface);
  v11 = [(HMDLibXPCServer *)self initWithMachServiceName:nameCopy2 queue:v9 libXPCInterface:v10];

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t10_69432 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t10_69432, &__block_literal_global_69433);
  }

  v3 = logCategory__hmf_once_v11_69434;

  return v3;
}

void __30__HMDLibXPCServer_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v11_69434;
  logCategory__hmf_once_v11_69434 = v1;
}

@end