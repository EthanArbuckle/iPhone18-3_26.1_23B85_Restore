@interface CMContinuityCaptureNWServer
- (CMContinuityCaptureNWServer)initWithQueue:(id)queue;
- (CMContinuityCaptureTimeSyncClock)timeSyncClock;
- (NSString)description;
- (void)setDelegate:(id)delegate;
- (void)setupTCPConnection;
@end

@implementation CMContinuityCaptureNWServer

- (CMContinuityCaptureNWServer)initWithQueue:(id)queue
{
  queueCopy = queue;
  v6 = objc_opt_new();
  v7 = [CMContinuityCaptureTransportNWDevice alloc];
  v8 = +[CMContinuityCaptureCapabilities capabilitiesForCurrentDevice];
  v9 = [(CMContinuityCaptureTransportNWDevice *)v7 initWithCapabilities:v8 identifier:self->_identifier remote:0];

  v23.receiver = self;
  v23.super_class = CMContinuityCaptureNWServer;
  v10 = [(CMContinuityCaptureNWTransportBase *)&v23 initWithDevice:v9];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_identifier, v6);
    objc_storeStrong(&v11->_device, v9);
    objc_storeStrong(&v11->_queue, queue);
    v12 = [[CMContinuityCaptureRemoteCompositeDevice alloc] initWithTransportServer:v11 videoPreviewLayer:0];
    compositeDevice = v11->_compositeDevice;
    v11->_compositeDevice = v12;

    v14 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v11->_compositeDevice;
      *buf = 138543618;
      v20 = v11;
      v21 = 2114;
      v22 = v15;
      _os_log_impl(&dword_242545000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ composite device %{public}@", buf, 0x16u);
    }

    objc_initWeak(buf, v11);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __45__CMContinuityCaptureNWServer_initWithQueue___block_invoke;
    v17[3] = &unk_278D5CD58;
    objc_copyWeak(&v18, buf);
    [(CMContinuityCaptureNWTransportBase *)v11 createTimeSyncClock:v17];
    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
    [(CMContinuityCaptureNWServer *)v11 setupTCPConnection];
    [(CMContinuityCaptureTransportNWDevice *)v11->_device activate:1];
  }

  return v11;
}

void __45__CMContinuityCaptureNWServer_initWithQueue___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained willChangeValueForKey:@"timeSyncClock"];
    objc_storeStrong(v5 + 8, a2);
    [v5 didChangeValueForKey:@"timeSyncClock"];
  }
}

- (CMContinuityCaptureTimeSyncClock)timeSyncClock
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_timeSyncClock;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setupTCPConnection
{
  objc_initWeak(&location, self);
  unk_285500938(localIPAddress, "UTF8String");
  host_with_numeric_port = nw_endpoint_create_host_with_numeric_port();
  if (!host_with_numeric_port)
  {
    v10 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%@ Failed to get tcp endpoint", buf, 0xCu);
    }

    secure_tcp = 0;
    goto LABEL_10;
  }

  secure_tcp = nw_parameters_create_secure_tcp(*MEMORY[0x277CD9238], *MEMORY[0x277CD9230]);
  v5 = nw_connection_create(host_with_numeric_port, secure_tcp);
  connection = self->_connection;
  self->_connection = v5;

  v7 = self->_connection;
  if (!v7)
  {
    v10 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%@ Failed to get tcp connection", buf, 0xCu);
    }

LABEL_10:

    goto LABEL_4;
  }

  queue = [(CMContinuityCaptureNWServer *)self queue];
  nw_connection_set_queue(v7, queue);

  v9 = self->_connection;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __49__CMContinuityCaptureNWServer_setupTCPConnection__block_invoke;
  handler[3] = &unk_278D5CDD0;
  objc_copyWeak(&v12, &location);
  nw_connection_set_state_changed_handler(v9, handler);
  objc_destroyWeak(&v12);
  nw_connection_start(self->_connection);
LABEL_4:

  objc_destroyWeak(&location);
}

void __49__CMContinuityCaptureNWServer_setupTCPConnection__block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v10 = 138412802;
    v11 = WeakRetained;
    v12 = 1024;
    v13 = a2;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%@ NW connection state %d error %@", &v10, 0x1Cu);
  }

  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = v8;
  if (a2 == 3 && v8)
  {
    [*(v8 + 3) setActiveConnection:*(v8 + 7)];
    [v9 scheduleReadForConnection:v9[7] dataTillNow:0];
  }
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  [(CMContinuityCaptureNWTransportBase *)self setTaskDelegate:delegateCopy];
  delegate = self->_delegate;
  self->_delegate = delegateCopy;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  localDevice = [(CMContinuityCaptureNWServer *)self localDevice];
  v7 = [v3 stringWithFormat:@"%@: %@ [%p]", v5, localDevice, self];

  return v7;
}

@end