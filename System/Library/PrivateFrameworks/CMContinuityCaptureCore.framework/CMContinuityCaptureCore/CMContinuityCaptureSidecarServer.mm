@interface CMContinuityCaptureSidecarServer
- (CMContinuityCaptureSidecarServer)initWithRequest:(id)request;
- (CMContinuityCaptureTimeSyncClock)timeSyncClock;
- (ContinuityCaptureTaskDelegate)delegate;
- (NSUUID)sessionUUID;
- (int64_t)currentTransport;
- (uint64_t)_activate;
- (unint64_t)currentSessionID;
- (void)_activate;
- (void)_cancel;
- (void)_resetRequest:(id)request;
- (void)activate;
- (void)cancel;
- (void)resetRequest:(id)request;
- (void)setCurrentSessionID:(unint64_t)d;
- (void)setDelegate:(id)delegate;
- (void)setupMediaSidecarStreamForIdentifier:(id)identifier type:(int64_t)type completion:(id)completion;
- (void)setupSidecarStreams;
- (void)teardownSidecarStreams;
@end

@implementation CMContinuityCaptureSidecarServer

- (ContinuityCaptureTaskDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = CMContinuityCaptureSidecarServer;
  delegateCopy = delegate;
  [(CMContinuityCaptureSidecarTransportBase *)&v5 setTaskDelegate:delegateCopy];
  objc_storeWeak(&self->_delegate, delegateCopy);
}

- (CMContinuityCaptureTimeSyncClock)timeSyncClock
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_timeSyncClock;
  objc_sync_exit(selfCopy);

  return v3;
}

- (int64_t)currentTransport
{
  device = [(CMContinuityCaptureSidecarTransportBase *)self device];
  objc_sync_enter(device);
  device2 = [(CMContinuityCaptureSidecarTransportBase *)self device];
  activeStreams = [device2 activeStreams];
  if ([activeStreams count])
  {
    device3 = [(CMContinuityCaptureSidecarTransportBase *)self device];
    activeStreams2 = [device3 activeStreams];
    firstObject = [activeStreams2 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  objc_sync_exit(device);
  if (firstObject)
  {
    stream = [firstObject stream];
    transport = [stream transport];

    if (transport == 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = transport == 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)currentSessionID
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  currentSessionID = selfCopy->_currentSessionID;
  objc_sync_exit(selfCopy);

  return currentSessionID;
}

- (void)setCurrentSessionID:(unint64_t)d
{
  obj = self;
  objc_sync_enter(obj);
  obj->_currentSessionID = d;
  objc_sync_exit(obj);
}

- (NSUUID)sessionUUID
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_sessionUUID;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_resetRequest:(id)request
{
  requestCopy = request;
  queue = [(CMContinuityCaptureSidecarServer *)self queue];
  dispatch_assert_queue_V2(queue);

  if (requestCopy)
  {
    device = self->_device;
    device = [requestCopy device];
    [(CMContinuityCaptureTransportSidecarDevice *)device resetDevice:device];

    objc_storeStrong(&self->_activeRequest, request);
    [(CMContinuityCaptureSidecarServer *)self _activate];
  }

  else
  {
    [(CMContinuityCaptureSidecarServer *)self _cancel];
  }
}

- (void)resetRequest:(id)request
{
  requestCopy = request;
  objc_initWeak(&location, self);
  queue = [(CMContinuityCaptureSidecarServer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__CMContinuityCaptureSidecarServer_resetRequest___block_invoke;
  block[3] = &unk_278D5C0A8;
  objc_copyWeak(&v9, &location);
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __49__CMContinuityCaptureSidecarServer_resetRequest___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (*(a1 + 32))
    {
      [WeakRetained[9] setLegacyReconnectRecovery:1];
      v3 = *(a1 + 32);
    }

    else
    {
      v3 = 0;
    }

    [v4 _resetRequest:v3];
    WeakRetained = v4;
  }
}

- (void)activate
{
  objc_initWeak(&location, self);
  queue = [(CMContinuityCaptureSidecarServer *)self queue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__CMContinuityCaptureSidecarServer_activate__block_invoke;
  v4[3] = &unk_278D5C080;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __44__CMContinuityCaptureSidecarServer_activate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _activate];
    WeakRetained = v2;
  }
}

- (void)_activate
{
  queue = [(CMContinuityCaptureSidecarServer *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2080;
    v10 = "[CMContinuityCaptureSidecarServer _activate]";
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", &v7, 0x16u);
  }

  if (self->_activeRequest)
  {
    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    uUID = [MEMORY[0x277CCAD78] UUID];
    [(CMContinuityCaptureSidecarServer *)uUID _activate];
  }
}

- (void)cancel
{
  objc_initWeak(&location, self);
  queue = [(CMContinuityCaptureSidecarServer *)self queue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__CMContinuityCaptureSidecarServer_cancel__block_invoke;
  v4[3] = &unk_278D5C080;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __42__CMContinuityCaptureSidecarServer_cancel__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _cancel];
    WeakRetained = v2;
  }
}

- (void)_cancel
{
  queue = [(CMContinuityCaptureSidecarServer *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    selfCopy = self;
    v8 = 2080;
    v9 = "[CMContinuityCaptureSidecarServer _cancel]";
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", &v6, 0x16u);
  }

  [(CMContinuityCaptureSidecarServer *)self teardownSidecarStreams];
  activeRequest = self->_activeRequest;
  self->_activeRequest = 0;
}

- (void)setupMediaSidecarStreamForIdentifier:(id)identifier type:(int64_t)type completion:(id)completion
{
  activeRequest = self->_activeRequest;
  completionCopy = completion;
  identifierCopy = identifier;
  [(SidecarRequest *)activeRequest openStreamForType:type flags:2 identifier:identifierCopy processUniqueID:CMContinuityCaptureGetMediaProcessUniqueID(0) completion:completionCopy];
}

- (void)setupSidecarStreams
{
  objc_initWeak(&location, self);
  v9.receiver = self;
  v9.super_class = CMContinuityCaptureSidecarServer;
  [(CMContinuityCaptureSidecarTransportBase *)&v9 setupSidecarStreams];
  v3 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ ActivateRequest", buf, 0xCu);
  }

  session = [(SidecarRequest *)self->_activeRequest session];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__CMContinuityCaptureSidecarServer_setupSidecarStreams__block_invoke;
  v5[3] = &unk_278D5CD58;
  objc_copyWeak(&v6, &location);
  [(CMContinuityCaptureSidecarTransportBase *)self createTimeSyncClockForSession:session completion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __55__CMContinuityCaptureSidecarServer_setupSidecarStreams__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained willChangeValueForKey:@"timeSyncClock"];
    v7 = v6;
    objc_sync_enter(v7);
    objc_storeStrong(v7 + 10, a2);
    objc_sync_exit(v7);

    [v7 didChangeValueForKey:@"timeSyncClock"];
    v8 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_loadWeakRetained((a1 + 32));
      v10 = v7[10];
      v11 = 138543618;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ got timeSync clock %@", &v11, 0x16u);
    }
  }
}

- (void)teardownSidecarStreams
{
  activeRequest = self->_activeRequest;
  self->_activeRequest = 0;

  timeSyncClock = self->_timeSyncClock;
  self->_timeSyncClock = 0;

  v5.receiver = self;
  v5.super_class = CMContinuityCaptureSidecarServer;
  [(CMContinuityCaptureSidecarTransportBase *)&v5 teardownSidecarStreams];
}

- (CMContinuityCaptureSidecarServer)initWithRequest:(id)request
{
  requestCopy = request;
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create("com.apple.continuity-capture-server", v6);

  if (!requestCopy)
  {
    v11 = 0;
LABEL_9:
    selfCopy2 = 0;
    goto LABEL_7;
  }

  v8 = [CMContinuityCaptureTransportSidecarDevice alloc];
  device = [requestCopy device];
  v10 = +[CMContinuityCaptureCapabilities capabilitiesForCurrentDevice];
  v11 = [(CMContinuityCaptureTransportSidecarDevice *)v8 initWithSidecarDevice:device capabilities:v10 remote:0];

  if (!v11)
  {
    goto LABEL_9;
  }

  v20.receiver = self;
  v20.super_class = CMContinuityCaptureSidecarServer;
  v12 = [(CMContinuityCaptureSidecarTransportBase *)&v20 initWithDevice:v11 queue:v7 taskDelegate:0];
  self = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  objc_storeStrong(&v12->_activeRequest, request);
  objc_storeStrong(&self->_device, v11);
  objc_storeStrong(&self->_queue, v7);
  v13 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543618;
    selfCopy = self;
    v18 = 2114;
    v19 = v11;
    _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ created with device %{public}@", &v16, 0x16u);
  }

  self = self;
  selfCopy2 = self;
LABEL_7:

  return selfCopy2;
}

- (uint64_t)_activate
{
  v3 = a2[13];
  a2[13] = self;

  objc_sync_exit(a2);
  return [a2 setupSidecarStreams];
}

@end