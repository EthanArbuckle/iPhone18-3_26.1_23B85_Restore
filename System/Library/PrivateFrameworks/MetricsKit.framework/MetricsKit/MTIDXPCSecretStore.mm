@interface MTIDXPCSecretStore
- (MTIDXPCSecretStore)init;
- (id)debugInfo;
- (id)maintainSchemes:(id)schemes options:(id)options;
- (id)newXPCConnection;
- (id)resetSchemes:(id)schemes options:(id)options;
- (id)secretForScheme:(id)scheme options:(id)options;
- (id)setupXPCConnection;
- (id)syncForSchemes:(id)schemes options:(id)options;
- (void)clearLocalData;
@end

@implementation MTIDXPCSecretStore

- (MTIDXPCSecretStore)init
{
  v6.receiver = self;
  v6.super_class = MTIDXPCSecretStore;
  v2 = [(MTIDXPCSecretStore *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.amp-ae-eng.MetricsKit.AMPIDServiceQueue", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (id)secretForScheme:(id)scheme options:(id)options
{
  schemeCopy = scheme;
  optionsCopy = options;
  setupXPCConnection = [(MTIDXPCSecretStore *)self setupXPCConnection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__MTIDXPCSecretStore_secretForScheme_options___block_invoke;
  v13[3] = &unk_2798CDFE0;
  v14 = schemeCopy;
  v15 = optionsCopy;
  v9 = optionsCopy;
  v10 = schemeCopy;
  v11 = [setupXPCConnection thenWithBlock:v13];

  return v11;
}

MTPromise *__46__MTIDXPCSecretStore_secretForScheme_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTPromise);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __46__MTIDXPCSecretStore_secretForScheme_options___block_invoke_2;
  v15[3] = &unk_2798CDFB8;
  v5 = v4;
  v16 = v5;
  v6 = [v3 remoteObjectProxyWithErrorHandler:v15];

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__MTIDXPCSecretStore_secretForScheme_options___block_invoke_3;
  v13[3] = &unk_2798CD788;
  v9 = v5;
  v14 = v9;
  [v6 secretForScheme:v8 options:v7 completion:v13];
  v10 = v14;
  v11 = v9;

  return v9;
}

- (id)resetSchemes:(id)schemes options:(id)options
{
  schemesCopy = schemes;
  optionsCopy = options;
  setupXPCConnection = [(MTIDXPCSecretStore *)self setupXPCConnection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __43__MTIDXPCSecretStore_resetSchemes_options___block_invoke;
  v13[3] = &unk_2798CDFE0;
  v14 = schemesCopy;
  v15 = optionsCopy;
  v9 = optionsCopy;
  v10 = schemesCopy;
  v11 = [setupXPCConnection thenWithBlock:v13];

  return v11;
}

MTPromise *__43__MTIDXPCSecretStore_resetSchemes_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTPromise);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __43__MTIDXPCSecretStore_resetSchemes_options___block_invoke_2;
  v15[3] = &unk_2798CDFB8;
  v5 = v4;
  v16 = v5;
  v6 = [v3 remoteObjectProxyWithErrorHandler:v15];

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __43__MTIDXPCSecretStore_resetSchemes_options___block_invoke_3;
  v13[3] = &unk_2798CDFB8;
  v9 = v5;
  v14 = v9;
  [v6 doResetSchemes:v8 options:v7 completion:v13];
  v10 = v14;
  v11 = v9;

  return v9;
}

uint64_t __43__MTIDXPCSecretStore_resetSchemes_options___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = MEMORY[0x277CBEC38];
  }

  return [v2 finishWithResult:v3 error:a2];
}

- (id)maintainSchemes:(id)schemes options:(id)options
{
  schemesCopy = schemes;
  optionsCopy = options;
  setupXPCConnection = [(MTIDXPCSecretStore *)self setupXPCConnection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__MTIDXPCSecretStore_maintainSchemes_options___block_invoke;
  v13[3] = &unk_2798CDFE0;
  v14 = schemesCopy;
  v15 = optionsCopy;
  v9 = optionsCopy;
  v10 = schemesCopy;
  v11 = [setupXPCConnection thenWithBlock:v13];

  return v11;
}

MTPromise *__46__MTIDXPCSecretStore_maintainSchemes_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 remoteObjectProxy];
  [v3 doMaintainSchemes:*(a1 + 32) options:*(a1 + 40)];

  v4 = MEMORY[0x277CBEC38];

  return [MTPromise promiseWithResult:v4];
}

- (id)syncForSchemes:(id)schemes options:(id)options
{
  schemesCopy = schemes;
  optionsCopy = options;
  setupXPCConnection = [(MTIDXPCSecretStore *)self setupXPCConnection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __45__MTIDXPCSecretStore_syncForSchemes_options___block_invoke;
  v13[3] = &unk_2798CDFE0;
  v14 = schemesCopy;
  v15 = optionsCopy;
  v9 = optionsCopy;
  v10 = schemesCopy;
  v11 = [setupXPCConnection thenWithBlock:v13];

  return v11;
}

MTPromise *__45__MTIDXPCSecretStore_syncForSchemes_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTPromise);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __45__MTIDXPCSecretStore_syncForSchemes_options___block_invoke_2;
  v15[3] = &unk_2798CDFB8;
  v5 = v4;
  v16 = v5;
  v6 = [v3 remoteObjectProxyWithErrorHandler:v15];

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __45__MTIDXPCSecretStore_syncForSchemes_options___block_invoke_3;
  v13[3] = &unk_2798CDFB8;
  v9 = v5;
  v14 = v9;
  [v6 syncForSchemes:v8 options:v7 completion:v13];
  v10 = v14;
  v11 = v9;

  return v9;
}

uint64_t __45__MTIDXPCSecretStore_syncForSchemes_options___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = MEMORY[0x277CBEC28];
  }

  else
  {
    v3 = MEMORY[0x277CBEC38];
  }

  return [v2 finishWithResult:v3 error:a2];
}

- (void)clearLocalData
{
  setupXPCConnection = [(MTIDXPCSecretStore *)self setupXPCConnection];
  [setupXPCConnection addSuccessBlock:&__block_literal_global_9];
}

void __36__MTIDXPCSecretStore_clearLocalData__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 remoteObjectProxy];
  [v2 doClearLocalData];
}

- (id)debugInfo
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"xpcConnection";
  xpcConnection = [(MTIDXPCSecretStore *)self xpcConnection];
  v3 = [xpcConnection debugDescription];
  v4 = v3;
  v5 = @"null";
  if (v3)
  {
    v5 = v3;
  }

  v10[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)newXPCConnection
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.AMPIDService"];
  v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286A5BC48];
  [v3 setRemoteObjectInterface:v4];

  objc_initWeak(&location, self);
  objc_initWeak(&from, v3);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __38__MTIDXPCSecretStore_newXPCConnection__block_invoke;
  v12[3] = &unk_2798CE028;
  objc_copyWeak(&v13, &location);
  objc_copyWeak(&v14, &from);
  [v3 setInvalidationHandler:v12];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __38__MTIDXPCSecretStore_newXPCConnection__block_invoke_64;
  v9 = &unk_2798CE028;
  objc_copyWeak(&v10, &location);
  objc_copyWeak(&v11, &from);
  [v3 setInterruptionHandler:&v6];
  [v3 resume];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
  return v3;
}

void __38__MTIDXPCSecretStore_newXPCConnection__block_invoke(uint64_t a1)
{
  v2 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&dword_258F4B000, v2, OS_LOG_TYPE_DEBUG, "MetricsKit: MTIDXPCSecretStore XPC connection invalidated", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained xpcConnection];
  v5 = objc_loadWeakRetained((a1 + 40));

  if (v4 == v5)
  {
    [WeakRetained setXpcConnection:0];
  }
}

void __38__MTIDXPCSecretStore_newXPCConnection__block_invoke_64(uint64_t a1)
{
  v2 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&dword_258F4B000, v2, OS_LOG_TYPE_DEBUG, "MetricsKit: MTIDXPCSecretStore XPC connection interrupted", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained xpcConnection];
  v5 = objc_loadWeakRetained((a1 + 40));

  if (v4 == v5)
  {
    [WeakRetained setXpcConnection:0];
  }
}

- (id)setupXPCConnection
{
  v3 = objc_alloc_init(MTPromise);
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__MTIDXPCSecretStore_setupXPCConnection__block_invoke;
  v9[3] = &unk_2798CE050;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_async(queue, v9);
  v6 = v10;
  v7 = v5;

  return v5;
}

void __40__MTIDXPCSecretStore_setupXPCConnection__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];

  if (!v2)
  {
    v3 = [*(a1 + 32) newXPCConnection];
    [*(a1 + 32) setXpcConnection:v3];
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) xpcConnection];
  [v4 finishWithResult:v5];

  *(*(a1 + 32) + 8) = *(*(a1 + 32) + 8) + 1.0;
  objc_initWeak(&location, *(a1 + 32));
  v6 = dispatch_time(0, 60000000000);
  v7 = *(*(a1 + 32) + 16);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__MTIDXPCSecretStore_setupXPCConnection__block_invoke_2;
  v8[3] = &unk_2798CD520;
  objc_copyWeak(&v9, &location);
  dispatch_after(v6, v7, v8);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __40__MTIDXPCSecretStore_setupXPCConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 1) + -1.0;
    *(WeakRetained + 1) = v3;
    if (v3 == 0.0)
    {
      v4 = MTMetricsKitOSLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *v6 = 0;
        _os_log_impl(&dword_258F4B000, v4, OS_LOG_TYPE_DEBUG, "MetricsKit: MTIDXPCSecretStore XPC connection is released on idle", v6, 2u);
      }

      v5 = [v2 xpcConnection];
      [v5 invalidate];

      [v2 setXpcConnection:0];
    }
  }
}

@end