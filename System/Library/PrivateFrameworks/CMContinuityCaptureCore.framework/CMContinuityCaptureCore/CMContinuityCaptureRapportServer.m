@interface CMContinuityCaptureRapportServer
+ (id)rapportDeviceForSession:(id)a3;
- (CMContinuityCaptureRapportServer)initWithRapportDisplaySession:(id)a3 queue:(id)a4 voucher:(id)a5 incomingStreamRequestHandler:(id)a6;
- (CMContinuityCaptureTimeSyncClock)timeSyncClock;
- (ContinuityCaptureTaskDelegate)delegate;
- (NSDate)sessionActivationStartTime;
- (NSUUID)sessionUUID;
- (void)cancel;
- (void)createStreamWithIdentifier:(id)a3 isMediaStream:(BOOL)a4 completion:(id)a5;
- (void)invalidateCurrentSession:(id)a3;
- (void)parseAndActOnStreamsSetupInfo:(id)a3;
- (void)parseAndNotifySessionStartInfo:(id)a3 transportInfo:(id)a4;
- (void)relayTerminationComplete;
- (void)resetDisplaySession:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setupRemoteDisplaySession:(id)a3;
@end

@implementation CMContinuityCaptureRapportServer

- (void)resetDisplaySession:(id)a3
{
  v4 = a3;
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v12 = self;
    v13 = 2080;
    v14 = "[CMContinuityCaptureRapportServer resetDisplaySession:]";
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__CMContinuityCaptureRapportServer_resetDisplaySession___block_invoke;
  v8[3] = &unk_278D5C0A8;
  objc_copyWeak(&v10, buf);
  v9 = v4;
  v7 = v4;
  dispatch_async(queue, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __56__CMContinuityCaptureRapportServer_resetDisplaySession___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[10];
    v5 = WeakRetained;
    v4 = [*(a1 + 32) destinationDevice];
    [v3 resetDevice:v4];

    [v5 setupRemoteDisplaySession:*(a1 + 32)];
    WeakRetained = v5;
  }
}

- (ContinuityCaptureTaskDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)a3
{
  v5.receiver = self;
  v5.super_class = CMContinuityCaptureRapportServer;
  v4 = a3;
  [(CMContinuityCaptureRapportTransportBase *)&v5 setTaskDelegate:v4];
  objc_storeWeak(&self->_delegate, v4);
}

- (CMContinuityCaptureTimeSyncClock)timeSyncClock
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_timeSyncClock;
  objc_sync_exit(v2);

  return v3;
}

- (void)invalidateCurrentSession:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    rpDisplaySession = self->_rpDisplaySession;
    v9 = 138543618;
    v10 = self;
    v11 = 2114;
    v12 = rpDisplaySession;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Invalidate current session %{public}@", &v9, 0x16u);
  }

  [(CMContinuityCaptureTransportRapportDevice *)self->_device teardownActiveRapportStreams];
  [(NSMutableSet *)self->_createdIdentifiers removeAllObjects];
  [(CMContinuityCaptureRapportTransportBase *)self disposeTimeSyncClock];
  v7 = self;
  objc_sync_enter(v7);
  timeSyncClock = v7->_timeSyncClock;
  v7->_timeSyncClock = 0;

  objc_sync_exit(v7);
  if (v4)
  {
    v4[2](v4);
  }
}

- (NSDate)sessionActivationStartTime
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_sessionActivationStartTime;
  objc_sync_exit(v2);

  return v3;
}

+ (id)rapportDeviceForSession:(id)a3
{
  v4 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__6;
  v27 = __Block_byref_object_dispose__6;
  v28 = 0;
  v5 = MEMORY[0x277D85CD0];
  v6 = MEMORY[0x277D85CD0];
  dispatch_assert_queue_not_V2(v5);

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CMContinuityCaptureRapportServer_rapportDeviceForSession___block_invoke;
  block[3] = &unk_278D5C2B0;
  block[4] = &v23;
  dispatch_async_and_wait(v5, block);

  CFPreferenceBooleanWithDefault = FigGetCFPreferenceBooleanWithDefault();
  v8 = v24[5];
  if (!v8 && CFPreferenceBooleanWithDefault)
  {
    v9 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543362;
      v21 = a1;
      _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ use default camera capabilities", &v20, 0xCu);
    }

    v10 = MEMORY[0x277CBEAC0];
    v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CMContinuityCaptureCore"];
    v12 = [v11 pathForResource:@"SampleCameraCapabilities" ofType:@"plist"];
    v13 = [v10 dictionaryWithContentsOfFile:v12];

    v14 = [[CMContinuityCaptureCapabilities alloc] initWithDictionaryRepresentation:v13];
    v15 = v24[5];
    v24[5] = v14;

    v8 = v24[5];
  }

  if (v8)
  {
    v16 = [CMContinuityCaptureTransportRapportDevice alloc];
    v17 = [v4 destinationDevice];
    v18 = [(CMContinuityCaptureTransportRapportDevice *)v16 initWithRapportDevice:v17 capabilities:v24[5] remote:0];
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v23, 8);

  return v18;
}

uint64_t __60__CMContinuityCaptureRapportServer_rapportDeviceForSession___block_invoke(uint64_t a1)
{
  v2 = +[CMContinuityCaptureCapabilities capabilitiesForCurrentDevice];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)createStreamWithIdentifier:(id)a3 isMediaStream:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  objc_initWeak(location, self);
  if ([(NSMutableSet *)self->_createdIdentifiers containsObject:v8])
  {
    v10 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v42 = self;
      v43 = 2114;
      v44 = v8;
      _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ already created, skip", buf, 0x16u);
    }

    v9[2](v9, 0);
  }

  else
  {
    [(NSMutableSet *)self->_createdIdentifiers addObject:v8];
    v11 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v42 = self;
      v43 = 2080;
      v44 = "[CMContinuityCaptureRapportServer createStreamWithIdentifier:isMediaStream:completion:]";
      v45 = 2114;
      v46 = v8;
      _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %{public}@", buf, 0x20u);
    }

    v12 = objc_alloc_init(MEMORY[0x277D44210]);
    [(NSMutableDictionary *)self->_pendingActivateStreamsByIdentifier setObject:v12 forKeyedSubscript:v8];
    [v12 setStreamID:v8];
    [v12 setMessenger:self->_rpDisplaySession];
    if (v6)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    [v12 setStreamType:v13];
    [v12 setServiceType:@"com.apple.continuitycapture"];
    [v12 setStreamFlags:2];
    v14 = MEMORY[0x277D85CD0];
    v15 = MEMORY[0x277D85CD0];
    dispatch_assert_queue_not_V2(v14);

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __88__CMContinuityCaptureRapportServer_createStreamWithIdentifier_isMediaStream_completion___block_invoke;
    block[3] = &unk_278D5C120;
    objc_copyWeak(&v40, location);
    block[4] = self;
    v16 = v12;
    v39 = v16;
    dispatch_async_and_wait(v14, block);

    objc_destroyWeak(&v40);
    if (v6)
    {
      [v16 setDelegatedProcessUPID:CMContinuityCaptureGetMediaProcessUniqueID(0)];
    }

    objc_initWeak(buf, v16);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __88__CMContinuityCaptureRapportServer_createStreamWithIdentifier_isMediaStream_completion___block_invoke_27;
    v34[3] = &unk_278D5D6F8;
    objc_copyWeak(&v36, location);
    objc_copyWeak(&v37, buf);
    v17 = v8;
    v35 = v17;
    v18 = MEMORY[0x245D12020](v34);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __88__CMContinuityCaptureRapportServer_createStreamWithIdentifier_isMediaStream_completion___block_invoke_28;
    v30[3] = &unk_278D5D6F8;
    objc_copyWeak(&v32, location);
    objc_copyWeak(&v33, buf);
    v31 = v17;
    v19 = MEMORY[0x245D12020](v30);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __88__CMContinuityCaptureRapportServer_createStreamWithIdentifier_isMediaStream_completion___block_invoke_29;
    v26[3] = &unk_278D5D720;
    objc_copyWeak(&v28, location);
    objc_copyWeak(&v29, buf);
    v22 = v9;
    v27 = v9;
    v20 = MEMORY[0x245D12020](v26);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __88__CMContinuityCaptureRapportServer_createStreamWithIdentifier_isMediaStream_completion___block_invoke_31;
    v23[3] = &unk_278D5D748;
    objc_copyWeak(&v24, location);
    objc_copyWeak(&v25, buf);
    v21 = MEMORY[0x245D12020](v23);
    [v16 setDispatchQueue:self->_queue];
    [v16 setInvalidationHandler:v18];
    [v16 setDisconnectHandler:v19];
    [v16 setReceivedEventHandler:v21];
    [v16 activateWithCompletion:v20];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&v24);

    objc_destroyWeak(&v29);
    objc_destroyWeak(&v28);

    objc_destroyWeak(&v33);
    objc_destroyWeak(&v32);

    objc_destroyWeak(&v37);
    objc_destroyWeak(&v36);
    objc_destroyWeak(buf);

    v9 = v22;
  }

  objc_destroyWeak(location);
}

void __88__CMContinuityCaptureRapportServer_createStreamWithIdentifier_isMediaStream_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[14];
    if (v4 < 2)
    {
      v5 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v9 = 138543362;
        v10 = v6;
        v7 = "%{public}@ register traffic flags for Mac: None";
LABEL_8:
        _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, v7, &v9, 0xCu);
        goto LABEL_9;
      }

      goto LABEL_9;
    }

    if (v4 == 2)
    {
      v5 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v9 = 138543362;
        v10 = v8;
        v7 = "%{public}@ register traffic flags for ATV: None";
        goto LABEL_8;
      }

LABEL_9:

      [*(a1 + 40) setTrafficFlags:0];
    }
  }
}

void __88__CMContinuityCaptureRapportServer_createStreamWithIdentifier_isMediaStream_completion___block_invoke_27(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_loadWeakRetained((a1 + 40));
      v5 = [WeakRetained currentSessionID];
      v6 = objc_loadWeakRetained((a1 + 48));
      v9 = 138543874;
      v10 = v4;
      v11 = 2048;
      v12 = v5;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ stream [sessionID:%llx] %{public}@ invalidated", &v9, 0x20u);
    }

    dispatch_assert_queue_V2(*(WeakRetained + 11));
    v7 = *(WeakRetained + 10);
    v8 = objc_loadWeakRetained((a1 + 48));
    [v7 removeStream:v8];

    [*(WeakRetained + 19) removeObject:*(a1 + 32)];
  }
}

void __88__CMContinuityCaptureRapportServer_createStreamWithIdentifier_isMediaStream_completion___block_invoke_28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_loadWeakRetained((a1 + 40));
      v5 = [WeakRetained currentSessionID];
      v6 = objc_loadWeakRetained((a1 + 48));
      v9 = 138543874;
      v10 = v4;
      v11 = 2048;
      v12 = v5;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ stream [sessionID:%llx] %{public}@ disconnected", &v9, 0x20u);
    }

    dispatch_assert_queue_V2(*(WeakRetained + 11));
    v7 = *(WeakRetained + 10);
    v8 = objc_loadWeakRetained((a1 + 48));
    [v7 removeStream:v8];

    [*(WeakRetained + 19) removeObject:*(a1 + 32)];
  }
}

void __88__CMContinuityCaptureRapportServer_createStreamWithIdentifier_isMediaStream_completion___block_invoke_29(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained((a1 + 48));
    if (v5)
    {
      v6 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = objc_loadWeakRetained((a1 + 40));
        v8 = objc_loadWeakRetained((a1 + 48));
        v9 = 138543874;
        v10 = v7;
        v11 = 2114;
        v12 = v8;
        v13 = 2114;
        v14 = v3;
        _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ stream %{public}@ session activate completed with error %{public}@", &v9, 0x20u);
      }

      (*(*(a1 + 32) + 16))();
    }
  }
}

void __88__CMContinuityCaptureRapportServer_createStreamWithIdentifier_isMediaStream_completion___block_invoke_31(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (CMContinityCaptureDebugLogEnabled())
  {
    v8 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v14 = objc_loadWeakRetained((a1 + 40));
      v15 = 138544130;
      v16 = WeakRetained;
      v17 = 2114;
      v18 = v14;
      v19 = 2114;
      v20 = v6;
      v21 = 2114;
      v22 = v7;
      _os_log_debug_impl(&dword_242545000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ StreamSession %{public}@ event %{public}@ options %{public}@", &v15, 0x2Au);
    }
  }

  v9 = objc_loadWeakRetained((a1 + 32));
  if (v9)
  {
    v10 = objc_loadWeakRetained((a1 + 40));
    v11 = v10;
    if (v10)
    {
      v12 = [v10 streamID];
      [v9 enqueueResponse:v6 identifier:v12];
    }
  }
}

- (void)parseAndActOnStreamsSetupInfo:(id)a3
{
  v4 = a3;
  objc_initWeak(location, self);
  dispatch_assert_queue_V2(self->_queue);
  v5 = [v4 objectForKeyedSubscript:@"ContinuityCaptureRapportClientStreamsSetupKey"];
  if (v5)
  {
    v15 = v5;
    v16 = v4;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v5;
    v6 = [obj countByEnumeratingWithState:&v28 objects:v27 count:16];
    if (v6)
    {
      v7 = *v29;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v29 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v28 + 1) + 8 * i);
          v10 = [v9 objectForKeyedSubscript:{@"ContinuityCaptureRapportClientSetStreamMessageDataIdentifierKey", v15, v16}];
          v11 = [v9 objectForKeyedSubscript:@"ContinuityCaptureRapportClientSetStreamMessageDataIsMediaTypeKey"];
          v12 = [v11 BOOLValue];

          v13 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            currentSessionID = self->_currentSessionID;
            *buf = 138543874;
            v22 = self;
            v23 = 2048;
            v24 = currentSessionID;
            v25 = 2114;
            v26 = v10;
            _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] Early setup for %{public}@", buf, 0x20u);
          }

          if (v10)
          {
            v18[0] = MEMORY[0x277D85DD0];
            v18[1] = 3221225472;
            v18[2] = __66__CMContinuityCaptureRapportServer_parseAndActOnStreamsSetupInfo___block_invoke;
            v18[3] = &unk_278D5C660;
            objc_copyWeak(&v20, location);
            v19 = v10;
            [(CMContinuityCaptureRapportServer *)self createStreamWithIdentifier:v19 isMediaStream:v12 completion:v18];

            objc_destroyWeak(&v20);
          }
        }

        v6 = [obj countByEnumeratingWithState:&v28 objects:v27 count:16];
      }

      while (v6);
    }

    v5 = v15;
    v4 = v16;
  }

  objc_destroyWeak(location);
}

void __66__CMContinuityCaptureRapportServer_parseAndActOnStreamsSetupInfo___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (a2 && WeakRetained)
  {
    v6 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_loadWeakRetained((a1 + 40));
      v8 = v5[6];
      v9 = v5[8];
      v10 = *(a1 + 32);
      v11 = 138544386;
      v12 = v7;
      v13 = 2048;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      v19 = 2112;
      v20 = a2;
      _os_log_error_impl(&dword_242545000, v6, OS_LOG_TYPE_ERROR, "%{public}@ [sessionID:%llx] create stream (display session %{public}@) for %{public}@ error %@", &v11, 0x34u);
    }
  }
}

- (void)parseAndNotifySessionStartInfo:(id)a3 transportInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  dispatch_assert_queue_V2(self->_queue);
  if (!v6)
  {
    goto LABEL_18;
  }

  v8 = [v6 objectForKeyedSubscript:@"ContinuityCaptureRapportClientSessionIDKey"];

  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:@"ContinuityCaptureRapportClientSessionIDKey"];
    self->_currentSessionID = [v9 unsignedLongLongValue];

    v10 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      currentSessionID = self->_currentSessionID;
      *buf = 138543618;
      v48 = self;
      v49 = 2048;
      v50 = currentSessionID;
      _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] connected to host", buf, 0x16u);
    }
  }

  v12 = [v6 objectForKeyedSubscript:@"ContinuityCaptureRapportClientInActiveEntitiesForConnectionChange"];

  if (!v12)
  {
LABEL_18:
    if (v7)
    {
      v21 = [v7 objectForKeyedSubscript:*MEMORY[0x277D44298]];
      peerAddress = self->_peerAddress;
      self->_peerAddress = v21;

      v23 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = self->_peerAddress;
        *buf = 138543619;
        v48 = self;
        v49 = 2113;
        v50 = v24;
        _os_log_impl(&dword_242545000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ peerAddress:%{private}@", buf, 0x16u);
      }

      v25 = *MEMORY[0x277D44270];
      v26 = [v7 objectForKeyedSubscript:*MEMORY[0x277D44270]];

      if (v26)
      {
        v27 = [v7 objectForKeyedSubscript:v25];
        v28 = [v27 unsignedIntegerValue];

        v29 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v48 = self;
          v49 = 2048;
          v50 = v28;
          _os_log_impl(&dword_242545000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ dataLinkType:%lu", buf, 0x16u);
        }

        v30 = 1;
        if ((v28 - 7) < 3)
        {
          v30 = 2;
        }

        self->_currentTransport = v30;
        v31 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = self->_currentSessionID;
          currentTransport = self->_currentTransport;
          *buf = 138543874;
          v48 = self;
          v49 = 2048;
          v50 = v32;
          v51 = 1024;
          v52 = currentTransport;
          _os_log_impl(&dword_242545000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] connected over transport %d", buf, 0x1Cu);
        }
      }
    }

    if (v6)
    {
      v34 = [v6 objectForKeyedSubscript:@"ContinuityCaptureRapportClientPreStartConfigurationKey"];

      if (v34)
      {
        v35 = MEMORY[0x277CCAAC8];
        v36 = objc_opt_class();
        v37 = [v6 objectForKeyedSubscript:@"ContinuityCaptureRapportClientPreStartConfigurationKey"];
        v46 = 0;
        v38 = [v35 unarchivedObjectOfClass:v36 fromData:v37 error:&v46];
        v39 = v46;

        if (v38)
        {
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          if (!WeakRetained)
          {

LABEL_39:
            goto LABEL_40;
          }

          v41 = WeakRetained;
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = __81__CMContinuityCaptureRapportServer_parseAndNotifySessionStartInfo_transportInfo___block_invoke_35;
          v42[3] = &unk_278D5D770;
          objc_copyWeak(&v45, &location);
          v43 = v39;
          v44 = v38;
          [v41 startStream:v44 option:0 completion:v42];

          objc_destroyWeak(&v45);
        }

        else
        {
          v41 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            [(CMContinuityCaptureRapportServer *)self parseAndNotifySessionStartInfo:v39 transportInfo:v41];
          }
        }
      }
    }

    v39 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v48 = self;
      v49 = 2112;
      v50 = v7;
      _os_log_impl(&dword_242545000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@ TransportInfo %@", buf, 0x16u);
    }

    goto LABEL_39;
  }

  v13 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v6 objectForKeyedSubscript:@"ContinuityCaptureRapportClientInActiveEntitiesForConnectionChange"];
    *buf = 138543618;
    v48 = self;
    v49 = 2114;
    v50 = v14;
    _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ inActiveEntities on connection change %{public}@", buf, 0x16u);
  }

  v15 = objc_loadWeakRetained(&self->_delegate);
  if (v15)
  {
    v16 = v15;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v17 = [v6 objectForKeyedSubscript:@"ContinuityCaptureRapportClientInActiveEntitiesForConnectionChange"];
    v18 = [v17 countByEnumeratingWithState:&v54 objects:v53 count:16];
    if (v18)
    {
      v19 = *v55;
      do
      {
        v20 = 0;
        do
        {
          if (*v55 != v19)
          {
            objc_enumerationMutation(v17);
          }

          [v16 stopStream:objc_msgSend(*(*(&v54 + 1) + 8 * v20++) option:"integerValue") completion:{0, &__block_literal_global_17}];
        }

        while (v18 != v20);
        v18 = [v17 countByEnumeratingWithState:&v54 objects:v53 count:16];
      }

      while (v18);
    }

    goto LABEL_18;
  }

LABEL_40:
  objc_destroyWeak(&location);
}

void __81__CMContinuityCaptureRapportServer_parseAndNotifySessionStartInfo_transportInfo___block_invoke_35(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v5 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_loadWeakRetained((a1 + 48));
        v7 = *(a1 + 40);
        *buf = 138543874;
        v13 = v6;
        v14 = 2112;
        v15 = v7;
        v16 = 2112;
        v17 = a2;
        _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Pre-StartStream for configuration %@ error %@", buf, 0x20u);
      }
    }

    v8 = WeakRetained[11];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __81__CMContinuityCaptureRapportServer_parseAndNotifySessionStartInfo_transportInfo___block_invoke_36;
    v9[3] = &unk_278D5C0A8;
    objc_copyWeak(&v11, (a1 + 48));
    v10 = *(a1 + 40);
    dispatch_async(v8, v9);

    objc_destroyWeak(&v11);
  }
}

void __81__CMContinuityCaptureRapportServer_parseAndNotifySessionStartInfo_transportInfo___block_invoke_36(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained willChangeValueForKey:@"preStartConfiguration"];
    objc_storeStrong(v3 + 21, *(a1 + 32));
    [v3 didChangeValueForKey:@"preStartConfiguration"];
    WeakRetained = v3;
  }
}

- (void)relayTerminationComplete
{
  v3 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v8 = self;
    v9 = 2080;
    v10 = "[CMContinuityCaptureRapportServer relayTerminationComplete]";
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__CMContinuityCaptureRapportServer_relayTerminationComplete__block_invoke;
  v5[3] = &unk_278D5D798;
  v5[4] = self;
  objc_copyWeak(&v6, buf);
  dispatch_async(queue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __60__CMContinuityCaptureRapportServer_relayTerminationComplete__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  v7 = @"ContinuityCaptureRapportClientMessageTypeKey";
  v8 = &unk_2854ECA10;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v4 = *MEMORY[0x277D44228];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__CMContinuityCaptureRapportServer_relayTerminationComplete__block_invoke_38;
  v5[3] = &unk_278D5C1E8;
  objc_copyWeak(&v6, (a1 + 40));
  [v2 sendEventID:@"ContinuityCaptureSessionEventID" event:v3 destinationID:v4 options:0 completion:v5];

  objc_destroyWeak(&v6);
}

void __60__CMContinuityCaptureRapportServer_relayTerminationComplete__block_invoke_38(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = CMContinuityCaptureLog(2);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v6)
      {
        v7 = objc_loadWeakRetained((a1 + 32));
        v8 = WeakRetained[8];
        v13 = 138543874;
        v14 = v7;
        v15 = 2114;
        v16 = v8;
        v17 = 2114;
        v18 = v3;
        v9 = "%{public}@ terminate display session %{public}@ send message error %{public}@";
        v10 = v5;
        v11 = 32;
LABEL_7:
        _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, v9, &v13, v11);
      }
    }

    else if (v6)
    {
      v7 = objc_loadWeakRetained((a1 + 32));
      v12 = WeakRetained[8];
      v13 = 138543618;
      v14 = v7;
      v15 = 2114;
      v16 = v12;
      v9 = "%{public}@ terminate display session %{public}@ send message success";
      v10 = v5;
      v11 = 22;
      goto LABEL_7;
    }
  }
}

- (void)setupRemoteDisplaySession:(id)a3
{
  v5 = a3;
  objc_initWeak(&location, self);
  objc_storeStrong(&self->_rpDisplaySession, a3);
  v6 = self;
  objc_sync_enter(v6);
  v7 = [MEMORY[0x277CBEAA8] date];
  sessionActivationStartTime = v6->_sessionActivationStartTime;
  v6->_sessionActivationStartTime = v7;

  v9 = [MEMORY[0x277CCAD78] UUID];
  sessionUUID = v6->_sessionUUID;
  v6->_sessionUUID = v9;

  objc_sync_exit(v6);
  v11 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    device = v6->_device;
    v13 = [(RPRemoteDisplaySession *)self->_rpDisplaySession destinationDevice];
    *buf = 138544130;
    v23 = v6;
    v24 = 2080;
    v25 = "[CMContinuityCaptureRapportServer setupRemoteDisplaySession:]";
    v26 = 2114;
    v27 = device;
    v28 = 2114;
    v29 = v13;
    _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ %s Device %{public}@ destinationDevice %{public}@ ", buf, 0x2Au);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __62__CMContinuityCaptureRapportServer_setupRemoteDisplaySession___block_invoke;
  v20[3] = &unk_278D5C1E8;
  objc_copyWeak(&v21, &location);
  [v5 setErrorHandler:v20];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __62__CMContinuityCaptureRapportServer_setupRemoteDisplaySession___block_invoke_41;
  v18 = &unk_278D5D7C0;
  objc_copyWeak(&v19, &location);
  v14 = MEMORY[0x245D12020](&v15);
  [v5 registerEventID:@"ContinuityCaptureSessionEventID" options:0 handler:{v14, v15, v16, v17, v18}];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __62__CMContinuityCaptureRapportServer_setupRemoteDisplaySession___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_loadWeakRetained((a1 + 32));
      v7 = WeakRetained[8];
      v8 = 138543874;
      v9 = v6;
      v10 = 2114;
      v11 = v7;
      v12 = 2114;
      v13 = v3;
      _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ display session %{public}@ error %{public}@", &v8, 0x20u);
    }
  }
}

void __62__CMContinuityCaptureRapportServer_setupRemoteDisplaySession___block_invoke_41(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (CMContinityCaptureDebugLogEnabled())
  {
    v7 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      *buf = 138543874;
      v55 = WeakRetained;
      v56 = 2114;
      v57 = v5;
      v58 = 2114;
      v59 = v6;
      _os_log_debug_impl(&dword_242545000, v7, OS_LOG_TYPE_DEBUG, "%{public}@ DisplaySession event %{public}@ options %{public}@", buf, 0x20u);
    }
  }

  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = v8;
  if (v8)
  {
    v10 = [v8 queue];
    dispatch_assert_queue_V2(v10);

    v11 = [v5 objectForKeyedSubscript:@"ContinuityCaptureRapportClientMessageTypeKey"];
    if (v11 && (v12 = v11, [v5 objectForKeyedSubscript:@"ContinuityCaptureRapportClientMessageTypeKey"], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "integerValue"), v13, v12, !v14))
    {
      v46 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = objc_loadWeakRetained((a1 + 32));
        v48 = *(v9 + 8);
        *buf = 138543618;
        v55 = v47;
        v56 = 2114;
        v57 = v48;
        _os_log_impl(&dword_242545000, v46, OS_LOG_TYPE_DEFAULT, "%{public}@ display session %{public}@", buf, 0x16u);
      }

      [v9 parseAndNotifySessionStartInfo:v5 transportInfo:v6];
      [v9 parseAndActOnStreamsSetupInfo:v5];
      v49 = *(v9 + 8);
      v69 = @"ContinuityCaptureRapportClientMessageTypeKey";
      v70 = &unk_2854ECA28;
      v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      v51 = *MEMORY[0x277D44228];
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __62__CMContinuityCaptureRapportServer_setupRemoteDisplaySession___block_invoke_44;
      v67[3] = &unk_278D5C1E8;
      objc_copyWeak(&v68, (a1 + 32));
      [v49 sendEventID:@"ContinuityCaptureSessionEventID" event:v50 destinationID:v51 options:0 completion:v67];

      v52 = *(v9 + 15);
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __62__CMContinuityCaptureRapportServer_setupRemoteDisplaySession___block_invoke_45;
      v65[3] = &unk_278D5CD58;
      objc_copyWeak(&v66, (a1 + 32));
      [v9 createTimeSyncClockWithPeerAddress:v52 completion:v65];
      objc_destroyWeak(&v66);
      objc_destroyWeak(&v68);
    }

    else
    {
      v15 = [v5 objectForKeyedSubscript:@"ContinuityCaptureRapportClientMessageTypeKey"];
      if (v15)
      {
        v16 = v15;
        v17 = v6;
        v18 = [v5 objectForKeyedSubscript:@"ContinuityCaptureRapportClientMessageTypeKey"];
        if ([v18 integerValue] == 2 && (objc_msgSend(v5, "objectForKeyedSubscript:", @"ContinuityCaptureRapportClientSetStreamMessageDataIdentifierKey"), (v19 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v20 = v19;
          v21 = [v5 objectForKeyedSubscript:?];

          v6 = v17;
          if (v21)
          {
            v22 = [v5 objectForKeyedSubscript:@"ContinuityCaptureRapportClientSetStreamMessageDataIdentifierKey"];
            v23 = [v5 objectForKeyedSubscript:@"ContinuityCaptureRapportClientSetStreamMessageDataIsMediaTypeKey"];
            v24 = [v23 BOOLValue];

            v62[0] = MEMORY[0x277D85DD0];
            v62[1] = 3221225472;
            v62[2] = __62__CMContinuityCaptureRapportServer_setupRemoteDisplaySession___block_invoke_47;
            v62[3] = &unk_278D5C660;
            objc_copyWeak(&v64, (a1 + 32));
            v25 = v22;
            v63 = v25;
            [v9 createStreamWithIdentifier:v25 isMediaStream:v24 completion:v62];

            objc_destroyWeak(&v64);
            goto LABEL_31;
          }
        }

        else
        {
        }
      }

      v26 = [v5 objectForKeyedSubscript:@"ContinuityCaptureRapportClientMessageTypeKey"];
      if (v26 && (v27 = v26, [v5 objectForKeyedSubscript:@"ContinuityCaptureRapportClientMessageTypeKey"], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "integerValue"), v28, v27, v29 == 4))
      {
        v30 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = objc_loadWeakRetained((a1 + 32));
          v32 = *(v9 + 6);
          v33 = *(v9 + 8);
          *buf = 138543874;
          v55 = v31;
          v56 = 2048;
          v57 = v32;
          v58 = 2114;
          v59 = v33;
          _os_log_impl(&dword_242545000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx]  Terminate display session %{public}@", buf, 0x20u);
        }

        [*(v9 + 9) postEvent:@"kCMContinuityCaptureEventTerminate" entity:0 data:0];
      }

      else
      {
        v34 = [v5 objectForKeyedSubscript:@"ContinuityCaptureRapportClientMessageTypeKey"];
        if (v34)
        {
          v35 = v34;
          v36 = [v5 objectForKeyedSubscript:@"ContinuityCaptureRapportClientMessageTypeKey"];
          if ([v36 integerValue] == 3)
          {
            v37 = [v5 objectForKeyedSubscript:@"ContinuityCaptureRapportClientSetStreamMessageDataIdentifierKey"];

            if (v37)
            {
              v38 = [v5 objectForKeyedSubscript:@"ContinuityCaptureRapportClientSetStreamMessageDataIdentifierKey"];
              v39 = [*(v9 + 13) objectForKey:v38];

              if (v39)
              {
                v40 = CMContinuityCaptureLog(2);
                if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                {
                  v41 = objc_loadWeakRetained((a1 + 32));
                  v42 = *(v9 + 6);
                  v43 = *(v9 + 8);
                  *buf = 138544130;
                  v55 = v41;
                  v56 = 2048;
                  v57 = v42;
                  v58 = 2114;
                  v59 = v38;
                  v60 = 2114;
                  v61 = v43;
                  _os_log_impl(&dword_242545000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] stream %{public}@ (display session %{public}@) activate complete", buf, 0x2Au);
                }

                v44 = *(v9 + 10);
                v45 = [*(v9 + 13) objectForKeyedSubscript:v38];
                [v44 addStream:v45];

                [*(v9 + 13) removeObjectForKey:v38];
              }
            }
          }

          else
          {
          }
        }
      }
    }
  }

LABEL_31:
}

void __62__CMContinuityCaptureRapportServer_setupRemoteDisplaySession___block_invoke_44(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = CMContinuityCaptureLog(2);
    v6 = v5;
    if (v3)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = objc_loadWeakRetained((a1 + 32));
        v8 = WeakRetained[8];
        v10 = 138543874;
        v11 = v7;
        v12 = 2114;
        v13 = v8;
        v14 = 2114;
        v15 = v3;
        _os_log_error_impl(&dword_242545000, v6, OS_LOG_TYPE_ERROR, "%{public}@ display session %{public}@ send message error %{public}@", &v10, 0x20u);
LABEL_7:
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_loadWeakRetained((a1 + 32));
      v9 = WeakRetained[8];
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v9;
      _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ display session %{public}@ send message success", &v10, 0x16u);
      goto LABEL_7;
    }
  }
}

void __62__CMContinuityCaptureRapportServer_setupRemoteDisplaySession___block_invoke_45(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained willChangeValueForKey:@"timeSyncClock"];
    v7 = v6;
    objc_sync_enter(v7);
    objc_storeStrong(v7 + 12, a2);
    objc_sync_exit(v7);

    [v7 didChangeValueForKey:@"timeSyncClock"];
    v8 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_loadWeakRetained((a1 + 32));
      v10 = v7[6];
      v11 = v7[12];
      v12 = 138543874;
      v13 = v9;
      v14 = 2048;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] got timeSync clock %@", &v12, 0x20u);
    }
  }
}

void __62__CMContinuityCaptureRapportServer_setupRemoteDisplaySession___block_invoke_47(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (a2 && WeakRetained)
  {
    v6 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_loadWeakRetained((a1 + 40));
      v8 = v5[6];
      v9 = v5[8];
      v10 = *(a1 + 32);
      v11 = 138544386;
      v12 = v7;
      v13 = 2048;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      v19 = 2112;
      v20 = a2;
      _os_log_error_impl(&dword_242545000, v6, OS_LOG_TYPE_ERROR, "%{public}@ [sessionID:%llx] create stream (display session %{public}@) for %{public}@ error %@", &v11, 0x34u);
    }
  }
}

- (NSUUID)sessionUUID
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_sessionUUID;
  objc_sync_exit(v2);

  return v3;
}

- (void)cancel
{
  v3 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    pendingActivateStreamsByIdentifier = self->_pendingActivateStreamsByIdentifier;
    *buf = 138543618;
    v16 = self;
    v17 = 2114;
    v18 = pendingActivateStreamsByIdentifier;
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ _pendingActivateStreamsByIdentifier %{public}@", buf, 0x16u);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(NSMutableDictionary *)self->_pendingActivateStreamsByIdentifier allValues];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * i) invalidate];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v7);
  }

  [(NSMutableDictionary *)self->_pendingActivateStreamsByIdentifier removeAllObjects];
  [(CMContinuityCaptureRapportServer *)self invalidateCurrentSession:0];
}

- (CMContinuityCaptureRapportServer)initWithRapportDisplaySession:(id)a3 queue:(id)a4 voucher:(id)a5 incomingStreamRequestHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [CMContinuityCaptureRapportServer rapportDeviceForSession:v10];
  if (v14 && (v30.receiver = self, v30.super_class = CMContinuityCaptureRapportServer, v15 = [(CMContinuityCaptureRapportTransportBase *)&v30 initWithRapportDevice:v14 queue:v11 taskDelegate:0], (self = v15) != 0))
  {
    objc_storeStrong(&v15->_queue, a4);
    objc_storeStrong(&self->_voucher, a5);
    objc_storeStrong(&self->_device, v14);
    v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
    createdIdentifiers = self->_createdIdentifiers;
    self->_createdIdentifiers = v16;

    self->_clientDeviceModel = [v14 deviceModelType];
    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingActivateStreamsByIdentifier = self->_pendingActivateStreamsByIdentifier;
    self->_pendingActivateStreamsByIdentifier = v18;

    [(CMContinuityCaptureRapportTransportBase *)self setIncomingStreamRequestHandler:v13];
    v20 = [[CMContinuityCaptureRemoteCompositeDevice alloc] initWithTransportServer:self videoPreviewLayer:0];
    compositeDevice = self->_compositeDevice;
    self->_compositeDevice = v20;

    v22 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = self->_compositeDevice;
      v26 = 138543618;
      v27 = self;
      v28 = 2114;
      v29 = v23;
      _os_log_impl(&dword_242545000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ composite device %{public}@", &v26, 0x16u);
    }

    [(CMContinuityCaptureRapportServer *)self setupRemoteDisplaySession:v10];
    self = self;
    v24 = self;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (void)parseAndNotifySessionStartInfo:(os_log_t)log transportInfo:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_242545000, log, OS_LOG_TYPE_ERROR, "%{public}@ error unarchivedObjectOfClass %@", &v3, 0x16u);
}

@end