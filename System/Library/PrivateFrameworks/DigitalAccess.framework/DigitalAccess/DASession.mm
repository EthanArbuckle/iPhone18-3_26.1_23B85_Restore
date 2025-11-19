@interface DASession
- (DASession)initWithCoder:(id)a3;
- (DASession)initWithDelegate:(id)a3;
- (id)getRemoteProxy:(id)a3;
- (void)didEnd:(id)a3;
- (void)didStart:(BOOL)a3;
- (void)endSession;
@end

@implementation DASession

- (DASession)initWithDelegate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DASession;
  v5 = [(DASession *)&v9 init];
  if (v5)
  {
    v6 = [[DASessionInternal alloc] initWithDelegate:v4];
    internal = v5->_internal;
    v5->_internal = v6;
  }

  return v5;
}

- (void)endSession
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_hasEnded)
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3032000000;
    v8[3] = __Block_byref_object_copy__2;
    v8[4] = __Block_byref_object_dispose__2;
    v9 = 0;
    v3 = KmlLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v11 = "[DASession endSession]";
      v12 = 1024;
      v13 = 48;
      _os_log_impl(&dword_248BF3000, v3, OS_LOG_TYPE_DEBUG, "%s : %i : ", buf, 0x12u);
    }

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __23__DASession_endSession__block_invoke;
    v7[3] = &unk_278F6FB00;
    v7[4] = v8;
    v4 = [(DASession *)v2 getRemoteProxy:v7];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __23__DASession_endSession__block_invoke_14;
    v6[3] = &unk_278F70868;
    v6[4] = v2;
    v6[5] = v8;
    [v4 endSessionWithCompletion:v6];

    _Block_object_dispose(v8, 8);
  }

  objc_sync_exit(v2);

  v5 = *MEMORY[0x277D85DE8];
}

void __23__DASession_endSession__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DASession endSession]_block_invoke";
    v16 = 1024;
    v17 = 50;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __23__DASession_endSession__block_invoke_14(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315394;
    v8 = "[DASession endSession]_block_invoke";
    v9 = 1024;
    v10 = 53;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_DEBUG, "%s : %i : Proxy end session", &v7, 0x12u);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (!v4)
  {
    *(*(a1 + 32) + 24) = 1;
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)getRemoteProxy:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DASessionInternal *)self->_internal synchronousRemoteObjectProxyWithErrorHandler:v4];
  if (!v5)
  {
    v6 = KmlLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[DASession getRemoteProxy:]";
      v17 = 1024;
      v18 = 74;
      _os_log_impl(&dword_248BF3000, v6, OS_LOG_TYPE_ERROR, "%s : %i : XPC proxy not available", buf, 0x12u);
    }

    v7 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v13}];
    v14 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v10 = [v7 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v9];
    v4[2](v4, v10);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)didStart:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v11 = "[DASession didStart:]";
    v12 = 1024;
    v13 = 98;
    v14 = 1024;
    v15 = v3;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_DEBUG, "%s : %i : : %d", buf, 0x18u);
  }

  objc_initWeak(buf, self);
  internal = self->_internal;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __22__DASession_didStart___block_invoke;
  v8[3] = &unk_278F70890;
  objc_copyWeak(&v9, buf);
  [(DASessionInternal *)internal dispatchBlockOnCallback:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
  v7 = *MEMORY[0x277D85DE8];
}

void __22__DASession_didStart___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained[2] delegate];
    [v2 daSession:v3 didBecomeActive:0];

    WeakRetained = v3;
  }
}

- (void)didEnd:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v13 = "[DASession didEnd:]";
    v14 = 1024;
    v15 = 112;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_DEBUG, "%s : %i : :%@", buf, 0x1Cu);
  }

  objc_initWeak(buf, self);
  internal = self->_internal;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __20__DASession_didEnd___block_invoke;
  v9[3] = &unk_278F708B8;
  objc_copyWeak(&v11, buf);
  v7 = v4;
  v10 = v7;
  [(DASessionInternal *)internal dispatchBlockOnCallback:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __20__DASession_didEnd___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = +[DAManager sharedManager];
    [v3 unregisterSession:v7];

    v4 = [v7[2] delegate];
    [v4 daSession:v7 didEnd:*(a1 + 32)];

    [v7[2] closeProxy];
    v5 = v7[2];
    v7[2] = 0;
  }

  return MEMORY[0x2821F96F8]();
}

- (DASession)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = DASession;
  return [(DASession *)&v4 init];
}

@end