@interface HMDDataStreamTCPTransport
- (HMDDataStreamTCPTransport)initWithAddress:(id)address port:(int64_t)port targetQueue:(id)queue logIdentifier:(id)identifier;
- (HMDDataStreamTCPTransport)initWithAddress:(id)address port:(int64_t)port workQueue:(id)queue logIdentifier:(id)identifier;
- (HMDDataStreamTransportDelegate)delegate;
- (id)_createTcpConnection;
- (void)_closeWithError:(id)error;
- (void)_consumeReceivedData:(id)data;
- (void)_doReceive;
- (void)_handleReadClose;
- (void)_registerForConnectionEvents;
- (void)_start;
- (void)connect;
- (void)dealloc;
- (void)sendRawFrame:(id)frame completion:(id)completion;
- (void)setTrafficClass:(unint64_t)class;
@end

@implementation HMDDataStreamTCPTransport

- (HMDDataStreamTransportDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)setTrafficClass:(unint64_t)class
{
  v16 = *MEMORY[0x277D85DE8];
  tcpConnection = [(HMDDataStreamTCPTransport *)self tcpConnection];

  if (tcpConnection)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v9;
      v14 = 2048;
      classCopy = class;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Setting traffic class to %lu", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    tcpConnection2 = [(HMDDataStreamTCPTransport *)selfCopy tcpConnection];
    [tcpConnection2 resetTrafficClass:class];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)sendRawFrame:(id)frame completion:(id)completion
{
  completionCopy = completion;
  frameCopy = frame;
  frameCopy2 = frame;
  bytes = [frameCopy2 bytes];
  v10 = [frameCopy2 length];

  v11 = dispatch_data_create(bytes, v10, 0, 0);
  tcpConnection = [(HMDDataStreamTCPTransport *)self tcpConnection];
  v13 = *MEMORY[0x277CD9218];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__HMDDataStreamTCPTransport_sendRawFrame_completion___block_invoke;
  v15[3] = &unk_279733F30;
  v15[4] = self;
  v16 = completionCopy;
  v14 = completionCopy;
  [tcpConnection sendData:v11 context:v13 isComplete:1 completion:v15];
}

void __53__HMDDataStreamTCPTransport_sendRawFrame_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@DataStream Socket write error (%@)", &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@DataStream Socket wrote bytes.", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_closeWithError:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  tcpConnection = [(HMDDataStreamTCPTransport *)self tcpConnection];

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (tcpConnection)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@DataStream Socket closing socket.", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    tcpConnection2 = [(HMDDataStreamTCPTransport *)selfCopy tcpConnection];
    [tcpConnection2 cancel];

    [(HMDDataStreamTCPTransport *)selfCopy setTcpConnection:0];
    selfCopy->_connected = 0;
    delegate = [(HMDDataStreamTCPTransport *)selfCopy delegate];
    v13 = delegate;
    if (errorCopy)
    {
      [delegate transport:selfCopy didFailWithError:errorCopy];
    }

    else
    {
      [delegate transportDidClose:selfCopy];
    }
  }

  else
  {
    if (v9)
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@DataStream Socket invoked closed but nothing to clean up.", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_doReceive
{
  v18 = *MEMORY[0x277D85DE8];
  byteReader = [(HMDDataStreamTCPTransport *)self byteReader];
  hasFailed = [byteReader hasFailed];

  if (hasFailed)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@DataStream has encountered irrecoverable framing issue. Closing socket.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:19];
    [(HMDDataStreamTCPTransport *)selfCopy _stopWithError:v9];
  }

  else
  {
    objc_initWeak(buf, self);
    byteReader2 = [(HMDDataStreamTCPTransport *)self byteReader];
    bytesNeededForCurrentFrame = [byteReader2 bytesNeededForCurrentFrame];

    tcpConnection = [(HMDDataStreamTCPTransport *)self tcpConnection];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __39__HMDDataStreamTCPTransport__doReceive__block_invoke;
    v14[3] = &unk_27972AF98;
    objc_copyWeak(&v15, buf);
    [tcpConnection receiveWithMinLength:bytesNeededForCurrentFrame maxLength:(bytesNeededForCurrentFrame + 256) completion:v14];

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __39__HMDDataStreamTCPTransport__doReceive__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v8)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = WeakRetained;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = HMFGetLogIdentifier();
        v21 = 138543618;
        v22 = v15;
        v23 = 2048;
        size = dispatch_data_get_size(v8);
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@DataStream Socket read %zd bytes", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      [v13 _consumeReceivedData:v8];
    }

    if (v10)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = WeakRetained;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v21 = 138543618;
        v22 = v19;
        v23 = 2112;
        size = v10;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@DataStream Socket read error (%@)", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      [v17 _stopWithError:v10];
    }

    else
    {
      [WeakRetained _doReceive];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_consumeReceivedData:(id)data
{
  dataCopy = data;
  byteReader = [(HMDDataStreamTCPTransport *)self byteReader];
  [byteReader pushFrameData:dataCopy];

  byteReader2 = [(HMDDataStreamTCPTransport *)self byteReader];
  hasCompleteFrame = [byteReader2 hasCompleteFrame];

  if (hasCompleteFrame)
  {
    do
    {
      v7 = objc_autoreleasePoolPush();
      byteReader3 = [(HMDDataStreamTCPTransport *)self byteReader];
      popRawFrame = [byteReader3 popRawFrame];

      if (popRawFrame)
      {
        delegate = [(HMDDataStreamTCPTransport *)self delegate];
        [delegate transport:self didReceiveRawFrame:popRawFrame];
      }

      objc_autoreleasePoolPop(v7);
      byteReader4 = [(HMDDataStreamTCPTransport *)self byteReader];
      hasCompleteFrame2 = [byteReader4 hasCompleteFrame];
    }

    while ((hasCompleteFrame2 & 1) != 0);
  }
}

- (void)_start
{
  self->_connected = 1;
  [(HMDDataStreamTCPTransport *)self _registerForConnectionEvents];
  [(HMDDataStreamFrameReader *)self->_byteReader reset];
  [(HMDDataStreamTCPTransport *)self _doReceive];
  delegate = [(HMDDataStreamTCPTransport *)self delegate];
  [delegate transportDidOpen:self];
}

- (void)_registerForConnectionEvents
{
  tcpConnection = [(HMDDataStreamTCPTransport *)self tcpConnection];
  if (tcpConnection)
  {
    connected = self->_connected;

    if (connected)
    {
      objc_initWeak(&location, self);
      tcpConnection2 = [(HMDDataStreamTCPTransport *)self tcpConnection];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __57__HMDDataStreamTCPTransport__registerForConnectionEvents__block_invoke;
      v6[3] = &unk_279732FD8;
      objc_copyWeak(&v7, &location);
      [tcpConnection2 setReadCloseHandler:v6];

      objc_destroyWeak(&v7);
      objc_destroyWeak(&location);
    }
  }
}

void __57__HMDDataStreamTCPTransport__registerForConnectionEvents__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _handleReadClose];
    WeakRetained = v2;
  }
}

- (void)_handleReadClose
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@DataStream Socket read-end closed (half-close scenario)", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)connect
{
  v33 = *MEMORY[0x277D85DE8];
  tcpConnection = [(HMDDataStreamTCPTransport *)self tcpConnection];

  if (tcpConnection)
  {
    connected = self->_connected;
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (connected)
    {
      if (v8)
      {
        v9 = HMFGetLogIdentifier();
        *buf = 138543362;
        v32 = v9;
        _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Connect called on an already-running transport", buf, 0xCu);
      }
    }

    else if (v8)
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v18;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Connect called on an already-connecting transport", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    self->_connected = 0;
    _createTcpConnection = [(HMDDataStreamTCPTransport *)self _createTcpConnection];
    [(HMDDataStreamTCPTransport *)self setTcpConnection:_createTcpConnection];

    tcpConnection2 = [(HMDDataStreamTCPTransport *)self tcpConnection];

    if (tcpConnection2)
    {
      objc_initWeak(&location, self);
      tcpConnection3 = [(HMDDataStreamTCPTransport *)self tcpConnection];
      v25 = MEMORY[0x277D85DD0];
      v26 = 3221225472;
      v27 = __36__HMDDataStreamTCPTransport_connect__block_invoke;
      v28 = &unk_27972AF70;
      objc_copyWeak(&v29, &location);
      [tcpConnection3 setStateChangedHandler:&v25];

      v13 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543362;
        v32 = v16;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@DataStream Socket starting", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      v17 = [(HMDDataStreamTCPTransport *)selfCopy2 tcpConnection:v25];
      [v17 start];

      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v32 = v22;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to create TCP connection (out of memory?)", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [(HMDDataStreamTCPTransport *)selfCopy3 _stopWithError:v23];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __36__HMDDataStreamTCPTransport_connect__block_invoke(uint64_t a1, int a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v5)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = WeakRetained;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        v20 = 138543874;
        v21 = v10;
        v22 = 2080;
        v23 = nw_connection_state_to_string();
        v24 = 2112;
        v25 = v5;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@DataStream Socket disconnected with failure in state %s: %@", &v20, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
      [v8 _stopWithError:v5];
    }

    if ((a2 - 4) >= 2)
    {
      if (a2 == 3)
      {
        v15 = objc_autoreleasePoolPush();
        v16 = WeakRetained;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          v20 = 138543362;
          v21 = v18;
          _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@DataStream Socket connected", &v20, 0xCu);
        }

        objc_autoreleasePoolPop(v15);
        [v16 _start];
      }
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = WeakRetained;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v20 = 138543362;
        v21 = v14;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@DataStream Socket disconnected", &v20, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      [v12 _stopWithError:0];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_createTcpConnection
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    schedulingMode = selfCopy->_schedulingMode;
    v21 = 138543618;
    v22 = v6;
    v23 = 2048;
    v24 = schedulingMode;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Creating TCP connection with scheduling mode %ld", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  secure_tcp = nw_parameters_create_secure_tcp(*MEMORY[0x277CD9238], *MEMORY[0x277CD9230]);
  nw_parameters_set_data_mode();
  if (selfCopy->_schedulingMode)
  {
    v9 = nw_context_create();
    nw_context_set_isolate_protocol_stack();
    v10 = selfCopy->_schedulingMode;
    nw_context_set_scheduling_mode();
    nw_parameters_set_context();
  }

  remoteAddress = [(HMDDataStreamTCPTransport *)selfCopy remoteAddress];
  addressString = [remoteAddress addressString];
  [addressString UTF8String];
  remotePort_low = LOWORD(selfCopy->_remotePort);
  host_with_numeric_port = nw_endpoint_create_host_with_numeric_port();

  connectionFactory = [(HMDDataStreamTCPTransport *)selfCopy connectionFactory];

  if (connectionFactory)
  {
    connectionFactory2 = [(HMDDataStreamTCPTransport *)selfCopy connectionFactory];
    v17 = (connectionFactory2)[2](connectionFactory2, host_with_numeric_port, secure_tcp);
  }

  else
  {
    v17 = [[HMDNetworkConnection alloc] initWithEndpoint:host_with_numeric_port parameters:secure_tcp];
  }

  workQueue = [(HMDDataStreamTCPTransport *)selfCopy workQueue];
  [(HMDNetworkConnection *)v17 setQueue:workQueue];

  v19 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)dealloc
{
  if (self->_tcpConnection)
  {
    [(HMDDataStreamTCPTransport *)self close];
  }

  v3.receiver = self;
  v3.super_class = HMDDataStreamTCPTransport;
  [(HMDDataStreamTCPTransport *)&v3 dealloc];
}

- (HMDDataStreamTCPTransport)initWithAddress:(id)address port:(int64_t)port targetQueue:(id)queue logIdentifier:(id)identifier
{
  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_USER_INTERACTIVE, 0);
  identifierCopy = identifier;
  queueCopy = queue;
  addressCopy = address;

  v16 = dispatch_queue_create_with_target_V2("HMDDataStreamTCPTransport", v12, queueCopy);
  v17 = [(HMDDataStreamTCPTransport *)self initWithAddress:addressCopy port:port workQueue:v16 logIdentifier:identifierCopy];

  if (v17)
  {
    v17->_schedulingMode = 2;
  }

  return v17;
}

- (HMDDataStreamTCPTransport)initWithAddress:(id)address port:(int64_t)port workQueue:(id)queue logIdentifier:(id)identifier
{
  addressCopy = address;
  queueCopy = queue;
  identifierCopy = identifier;
  v21.receiver = self;
  v21.super_class = HMDDataStreamTCPTransport;
  v14 = [(HMDDataStreamTCPTransport *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_remoteAddress, address);
    v15->_remotePort = port;
    objc_storeStrong(&v15->_workQueue, queue);
    v16 = objc_opt_new();
    byteReader = v15->_byteReader;
    v15->_byteReader = v16;

    v18 = [identifierCopy copy];
    logIdentifier = v15->_logIdentifier;
    v15->_logIdentifier = v18;

    v15->_schedulingMode = 0;
  }

  return v15;
}

@end