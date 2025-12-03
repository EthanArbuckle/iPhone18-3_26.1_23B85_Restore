@interface CSAudioLatencyEstimatorClient
- (CSAudioLatencyEstimatorClient)initWithActiveMessageClient:(id)client;
- (void)_invalidateEstimator;
- (void)_start:(id)_start;
- (void)cancel;
- (void)dealloc;
- (void)start:(id)start;
@end

@implementation CSAudioLatencyEstimatorClient

- (CSAudioLatencyEstimatorClient)initWithActiveMessageClient:(id)client
{
  clientCopy = client;
  v28.receiver = self;
  v28.super_class = CSAudioLatencyEstimatorClient;
  v6 = [(CSAudioLatencyEstimatorClient *)&v28 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activeMessageClient, client);
    v8 = dispatch_queue_create("com.apple.CSAudioLatencyEstimatorClient.estimator", 0);
    estimatorQueue = v7->_estimatorQueue;
    v7->_estimatorQueue = v8;

    v10 = objc_alloc_init(MEMORY[0x277D02888]);
    server = v7->_server;
    v7->_server = v10;

    v12 = v7->_server;
    activeMessageClient = [(CSAudioLatencyEstimatorClient *)v7 activeMessageClient];
    dispatchQueue = [activeMessageClient dispatchQueue];
    [(CUMessageSessionServer *)v12 setDispatchQueue:dispatchQueue];

    v15 = ContinuitySingLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v27 = "[CSAudioLatencyEstimatorClient initWithActiveMessageClient:]";
      _os_log_impl(&dword_2441FB000, v15, OS_LOG_TYPE_DEFAULT, "%s: Activate server", buf, 0xCu);
    }

    objc_initWeak(buf, v7);
    v16 = v7->_server;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __61__CSAudioLatencyEstimatorClient_initWithActiveMessageClient___block_invoke;
    v24[3] = &unk_278E0BF50;
    objc_copyWeak(&v25, buf);
    [(CUMessageSessionServer *)v16 setRegisterRequestHandler:v24];
    v17 = v7->_server;
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __61__CSAudioLatencyEstimatorClient_initWithActiveMessageClient___block_invoke_6;
    v22 = &unk_278E0BF78;
    objc_copyWeak(&v23, buf);
    [(CUMessageSessionServer *)v17 setSendRequestHandler:&v19];
    [(CUMessageSessionServer *)v7->_server activate:v19];
    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }

  return v7;
}

void __61__CSAudioLatencyEstimatorClient_initWithActiveMessageClient___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = ContinuitySingLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[CSAudioLatencyEstimatorClient initWithActiveMessageClient:]_block_invoke";
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_2441FB000, v8, OS_LOG_TYPE_DEFAULT, "%s: TVLAudioLatencyEstimator registerRequestID: %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [WeakRetained activeMessageClient];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__CSAudioLatencyEstimatorClient_initWithActiveMessageClient___block_invoke_1;
  v13[3] = &unk_278E0BF28;
  v14 = v6;
  v15 = v7;
  v11 = v6;
  v12 = v7;
  [v10 registerRequestID:v11 options:0 handler:v13];
}

void __61__CSAudioLatencyEstimatorClient_initWithActiveMessageClient___block_invoke_1(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__CSAudioLatencyEstimatorClient_initWithActiveMessageClient___block_invoke_2;
  v11[3] = &unk_278E0BF00;
  v8 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = v7;
  v9 = *(v8 + 16);
  v10 = v7;
  v9(v8, a3, a2, v11);
}

void __61__CSAudioLatencyEstimatorClient_initWithActiveMessageClient___block_invoke_2(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = ContinuitySingLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v13 = 136315394;
    v14 = "[CSAudioLatencyEstimatorClient initWithActiveMessageClient:]_block_invoke_2";
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_2441FB000, v9, OS_LOG_TYPE_DEFAULT, "%s: TVLAudioLatencyEstimator handle request: %@", &v13, 0x16u);
  }

  v11 = *(a1 + 40);
  if (a2)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:a2 userInfo:0];
    (*(v11 + 16))(v11, v8, v7, v12);
  }

  else
  {
    (*(v11 + 16))(v11, v8, v7, 0);
  }
}

void __61__CSAudioLatencyEstimatorClient_initWithActiveMessageClient___block_invoke_6(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = a4;
  v11 = ContinuitySingLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v21 = "[CSAudioLatencyEstimatorClient initWithActiveMessageClient:]_block_invoke";
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&dword_2441FB000, v11, OS_LOG_TYPE_DEFAULT, "%s: TVLAudioLatencyEstimator sendRequestID: %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v13 = [WeakRetained activeMessageClient];
  v14 = *MEMORY[0x277D44228];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__CSAudioLatencyEstimatorClient_initWithActiveMessageClient___block_invoke_7;
  v17[3] = &unk_278E0AFF8;
  v18 = v8;
  v19 = v9;
  v15 = v9;
  v16 = v8;
  [v13 sendRequestID:v16 request:v10 destinationID:v14 options:0 responseHandler:v17];
}

void __61__CSAudioLatencyEstimatorClient_initWithActiveMessageClient___block_invoke_7(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = ContinuitySingLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v14 = 136315394;
    v15 = "[CSAudioLatencyEstimatorClient initWithActiveMessageClient:]_block_invoke";
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&dword_2441FB000, v10, OS_LOG_TYPE_DEFAULT, "%s: TVLAudioLatencyEstimator handle send: %@", &v14, 0x16u);
  }

  v12 = *(a1 + 40);
  v13 = NSErrorToOSStatus();

  (*(v12 + 16))(v12, v13, v8, v9);
}

- (void)dealloc
{
  v3 = self->_estimator;
  estimatorQueue = self->_estimatorQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__CSAudioLatencyEstimatorClient_dealloc__block_invoke;
  block[3] = &unk_278E0ACD8;
  v13 = v3;
  v5 = v3;
  dispatch_async(estimatorQueue, block);
  v6 = self->_server;
  dispatchQueue = [(CUMessageSessionServer *)v6 dispatchQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__CSAudioLatencyEstimatorClient_dealloc__block_invoke_2;
  v10[3] = &unk_278E0ACD8;
  v11 = v6;
  v8 = v6;
  dispatch_async(dispatchQueue, v10);

  v9.receiver = self;
  v9.super_class = CSAudioLatencyEstimatorClient;
  [(CSAudioLatencyEstimatorClient *)&v9 dealloc];
}

uint64_t __40__CSAudioLatencyEstimatorClient_dealloc__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setProgressEventHandler:0];
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

- (void)start:(id)start
{
  startCopy = start;
  v5 = ContinuitySingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[CSAudioLatencyEstimatorClient start:]";
    _os_log_impl(&dword_2441FB000, v5, OS_LOG_TYPE_DEFAULT, "%s: CSAudioLatencyEstimatorClient start", buf, 0xCu);
  }

  estimatorQueue = [(CSAudioLatencyEstimatorClient *)self estimatorQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__CSAudioLatencyEstimatorClient_start___block_invoke;
  v8[3] = &unk_278E0AF88;
  v8[4] = self;
  v9 = startCopy;
  v7 = startCopy;
  dispatch_async(estimatorQueue, v8);
}

- (void)cancel
{
  v3 = ContinuitySingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[CSAudioLatencyEstimatorClient cancel]";
    _os_log_impl(&dword_2441FB000, v3, OS_LOG_TYPE_DEFAULT, "%s: CSAudioLatencyEstimatorClient cancel", buf, 0xCu);
  }

  estimatorQueue = [(CSAudioLatencyEstimatorClient *)self estimatorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__CSAudioLatencyEstimatorClient_cancel__block_invoke;
  block[3] = &unk_278E0ACD8;
  block[4] = self;
  dispatch_async(estimatorQueue, block);
}

- (void)_start:(id)_start
{
  _startCopy = _start;
  estimatorQueue = [(CSAudioLatencyEstimatorClient *)self estimatorQueue];
  dispatch_assert_queue_V2(estimatorQueue);

  v6 = ContinuitySingLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[CSAudioLatencyEstimatorClient _start:]";
    _os_log_impl(&dword_2441FB000, v6, OS_LOG_TYPE_DEFAULT, "%s: startAudioLatencyEstimator", buf, 0xCu);
  }

  if (!self->_estimator)
  {
    v7 = objc_alloc(MEMORY[0x277D6C488]);
    server = [(CSAudioLatencyEstimatorClient *)self server];
    templateSession = [server templateSession];
    v10 = [v7 initWithMessageSession:templateSession];
    estimator = self->_estimator;
    self->_estimator = v10;
  }

  estimator = [(CSAudioLatencyEstimatorClient *)self estimator];
  [estimator activate];
  objc_initWeak(buf, self);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __40__CSAudioLatencyEstimatorClient__start___block_invoke;
  v17 = &unk_278E0BFA0;
  objc_copyWeak(&v19, buf);
  v13 = _startCopy;
  v18 = v13;
  [estimator setProgressEventHandler:&v14];
  [estimator estimate];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

void __40__CSAudioLatencyEstimatorClient__start___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (a2 <= 1)
    {
      if (a2)
      {
        if (a2 != 1)
        {
          goto LABEL_13;
        }

        v6 = *(*(a1 + 32) + 16);
      }

      else
      {
        v6 = *(*(a1 + 32) + 16);
      }

      v6();
    }

    else if (a2 == 2 || a2 == 3 || a2 == 4)
    {
      (*(*(a1 + 32) + 16))();
      [WeakRetained cancel];
    }
  }

LABEL_13:
}

- (void)_invalidateEstimator
{
  estimatorQueue = [(CSAudioLatencyEstimatorClient *)self estimatorQueue];
  dispatch_assert_queue_V2(estimatorQueue);

  estimator = [(CSAudioLatencyEstimatorClient *)self estimator];
  [estimator setProgressEventHandler:0];
  [estimator invalidate];
  estimator = self->_estimator;
  self->_estimator = 0;
}

@end