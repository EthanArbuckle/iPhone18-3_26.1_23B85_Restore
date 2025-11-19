@interface CMContinuityCaptureNWClient
- (CMContinuityCaptureNWClient)initWithDevice:(id)a3 queue:(id)a4 taskDelegate:(id)a5;
- (CMContinuityCaptureTimeSyncClock)timeSyncClock;
- (ContinuityCaptureTaskDelegate)delegate;
- (NSString)description;
- (void)activateEntity:(int64_t)a3 configuration:(id)a4 option:(unint64_t)a5 entityCompletion:(id)a6 overallCompletion:(id)a7;
- (void)setupTCPListener;
- (void)terminateEntity:(int64_t)a3 option:(unint64_t)a4 completion:(id)a5;
@end

@implementation CMContinuityCaptureNWClient

- (CMContinuityCaptureNWClient)initWithDevice:(id)a3 queue:(id)a4 taskDelegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v24.receiver = self;
  v24.super_class = CMContinuityCaptureNWClient;
  v12 = [(CMContinuityCaptureNWTransportBase *)&v24 initWithDevice:v9];
  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    activeEntities = v12->_activeEntities;
    v12->_activeEntities = v13;

    objc_storeStrong(&v12->_device, a3);
    objc_storeStrong(&v12->_queue, a4);
    v15 = objc_storeWeak(&v12->_taskDelegate, v11);
    [(CMContinuityCaptureNWTransportBase *)v12 setTaskDelegate:v11];

    objc_initWeak(&location, v12);
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __65__CMContinuityCaptureNWClient_initWithDevice_queue_taskDelegate___block_invoke;
    v21 = &unk_278D5CD58;
    objc_copyWeak(&v22, &location);
    [(CMContinuityCaptureNWTransportBase *)v12 createTimeSyncClock:&v18];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
    [(CMContinuityCaptureNWClient *)v12 setupTCPListener:v18];
    v16 = +[CMContinuityCaptureXPCClientCCD sharedInstance];
    [v16 connectToContinuityCaptureServerWithDelegate:v12];

    [(ContinuityCaptureTransportDevice *)v12->_device activate:1];
  }

  return v12;
}

void __65__CMContinuityCaptureNWClient_initWithDevice_queue_taskDelegate___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained willChangeValueForKey:@"timeSyncClock"];
    objc_storeStrong(v5 + 10, a2);
    [v5 didChangeValueForKey:@"timeSyncClock"];
  }
}

- (CMContinuityCaptureTimeSyncClock)timeSyncClock
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_timeSyncClock;
  objc_sync_exit(v2);

  return v3;
}

- (void)setupTCPListener
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_impl(&dword_242545000, a1, OS_LOG_TYPE_DEFAULT, "%@ Failed to get tcp listener", &v4, 0xCu);
  }
}

void __47__CMContinuityCaptureNWClient_setupTCPListener__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    *buf = 138412546;
    v15 = WeakRetained;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%@ New connection  %@", buf, 0x16u);
  }

  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(v7 + 7, a2);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __47__CMContinuityCaptureNWClient_setupTCPListener__block_invoke_5;
    handler[3] = &unk_278D5CD80;
    objc_copyWeak(&v13, (a1 + 32));
    handler[4] = v8;
    v9 = v4;
    v12 = v9;
    nw_connection_set_state_changed_handler(v9, handler);
    v10 = [v8 queue];
    nw_connection_set_queue(v9, v10);

    nw_connection_start(v9);
    objc_destroyWeak(&v13);
  }
}

void __47__CMContinuityCaptureNWClient_setupTCPListener__block_invoke_5(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v11 = 138412802;
    v12 = WeakRetained;
    v13 = 1024;
    v14 = a2;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%@ NW connection state %d error %@", &v11, 0x1Cu);
  }

  if (a2 != 3)
  {
    if ((a2 & 0xFFFFFFFB) != 0)
    {
      if (a2 != 5)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = *(*(a1 + 32) + 56);
      if (!v8)
      {
        goto LABEL_11;
      }

      nw_connection_cancel(v8);
      v9 = *(a1 + 32);
      v10 = *(v9 + 56);
      *(v9 + 56) = 0;
    }

    [*(*(a1 + 32) + 24) setActiveConnection:0];
    goto LABEL_11;
  }

  [*(*(a1 + 32) + 24) setActiveConnection:*(a1 + 40)];
  [*(a1 + 32) scheduleReadForConnection:*(a1 + 40) dataTillNow:0];
LABEL_11:
}

void __47__CMContinuityCaptureNWClient_setupTCPListener__block_invoke_8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = 138412802;
    v9 = WeakRetained;
    v10 = 1024;
    v11 = a2;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%@ NW listener state %d error %@", &v8, 0x1Cu);
  }
}

- (ContinuityCaptureTaskDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_taskDelegate);

  return WeakRetained;
}

- (void)activateEntity:(int64_t)a3 configuration:(id)a4 option:(unint64_t)a5 entityCompletion:(id)a6 overallCompletion:(id)a7
{
  v18 = a4;
  v11 = a6;
  v12 = a7;
  if (v18)
  {
    activeEntities = self->_activeEntities;
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    LOBYTE(activeEntities) = [(NSMutableSet *)activeEntities containsObject:v14];

    if ((activeEntities & 1) == 0)
    {
      v15 = objc_opt_new();
      [v18 setSessionID:v15];

      [v18 setGenerationID:CMContinuityCaptureGetStreamSessionGenerationID()];
    }
  }

  v16 = self->_activeEntities;
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(NSMutableSet *)v16 addObject:v17];

  if ([(NSMutableSet *)self->_activeEntities count]== 1)
  {
    self->_currentSessionID = CMContinuityCaptureGetActivateGenerationID();
  }

  v11[2](v11, a3, 0);
  (*(v12 + 2))(v12, 0, 0);
}

- (void)terminateEntity:(int64_t)a3 option:(unint64_t)a4 completion:(id)a5
{
  activeEntities = self->_activeEntities;
  v7 = MEMORY[0x277CCABB0];
  v9 = a5;
  v8 = [v7 numberWithInteger:a3];
  [(NSMutableSet *)activeEntities removeObject:v8];

  v9[2](v9, a3, 0);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CMContinuityCaptureNWClient *)self device];
  v7 = [v3 stringWithFormat:@"%@: %@ [%p]", v5, v6, self];

  return v7;
}

@end