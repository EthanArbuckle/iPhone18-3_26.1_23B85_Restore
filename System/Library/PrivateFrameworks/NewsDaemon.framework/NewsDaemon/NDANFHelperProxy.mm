@interface NDANFHelperProxy
- (NDANFHelperProxy)init;
- (id)_connectionToXPCService;
- (id)manifestFromANFDocumentData:(id)a3 reachedService:(BOOL *)a4;
- (void)dealloc;
- (void)popInterest;
- (void)pushInterest;
@end

@implementation NDANFHelperProxy

- (NDANFHelperProxy)init
{
  v6.receiver = self;
  v6.super_class = NDANFHelperProxy;
  v2 = [(NDANFHelperProxy *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D34788]);
    xpcConnectionLock = v2->_xpcConnectionLock;
    v2->_xpcConnectionLock = v3;
  }

  return v2;
}

- (void)dealloc
{
  v3 = [(NDANFHelperProxy *)self xpcConnection];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = NDANFHelperProxy;
  [(NDANFHelperProxy *)&v4 dealloc];
}

- (id)manifestFromANFDocumentData:(id)a3 reachedService:(BOOL *)a4
{
  v6 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v7 = [MEMORY[0x277CBEAA8] date];
  [(NDANFHelperProxy *)self pushInterest];
  v8 = [(NDANFHelperProxy *)self _connectionToXPCService];
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_1];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63__NDANFHelperProxy_manifestFromANFDocumentData_reachedService___block_invoke_5;
  v17[3] = &unk_27997C020;
  v19 = &v21;
  v10 = v7;
  v18 = v10;
  v20 = &v25;
  [v9 decodeANFDocumentData:v6 completion:v17];

  [(NDANFHelperProxy *)self popInterest];
  if (a4)
  {
    *a4 = *(v22 + 24);
  }

  v11 = v26[5];
  if (!v11)
  {
    v12 = objc_alloc(MEMORY[0x277D30D90]);
    v13 = [v12 initWithNonImageResourceIDs:MEMORY[0x277CBEBF8] optimalImageResourceIDs:MEMORY[0x277CBEBF8] smallestImageResourceIDs:MEMORY[0x277CBEBF8]];
    v14 = v26[5];
    v26[5] = v13;

    v11 = v26[5];
  }

  v15 = v11;

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  return v15;
}

void __63__NDANFHelperProxy_manifestFromANFDocumentData_reachedService___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(*MEMORY[0x277D30988], OS_LOG_TYPE_ERROR))
  {
    __63__NDANFHelperProxy_manifestFromANFDocumentData_reachedService___block_invoke_cold_1();
  }
}

void __63__NDANFHelperProxy_manifestFromANFDocumentData_reachedService___block_invoke_5(void *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  *(*(a1[5] + 8) + 24) = 1;
  if (v6)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __63__NDANFHelperProxy_manifestFromANFDocumentData_reachedService___block_invoke_2;
    v15[3] = &unk_27997BFF8;
    v16 = v6;
    __63__NDANFHelperProxy_manifestFromANFDocumentData_reachedService___block_invoke_2(v15);
    v8 = v16;
  }

  else
  {
    v9 = *MEMORY[0x277D30988];
    if (os_log_type_enabled(*MEMORY[0x277D30988], OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[4];
      v11 = v9;
      *buf = 134217984;
      v18 = [v10 fc_millisecondTimeIntervalUntilNow];
      _os_log_impl(&dword_25BE24000, v11, OS_LOG_TYPE_DEFAULT, "ANFDecoder returned manifest, time=%llums", buf, 0xCu);
    }

    v12 = *(a1[6] + 8);
    v13 = v5;
    v8 = *(v12 + 40);
    *(v12 + 40) = v13;
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __63__NDANFHelperProxy_manifestFromANFDocumentData_reachedService___block_invoke_2(uint64_t a1)
{
  if (os_log_type_enabled(*MEMORY[0x277D30988], OS_LOG_TYPE_ERROR))
  {
    __63__NDANFHelperProxy_manifestFromANFDocumentData_reachedService___block_invoke_2_cold_1(a1);
  }
}

- (void)pushInterest
{
  v3 = [(NDANFHelperProxy *)self xpcConnectionLock];
  [v3 lock];

  [(NDANFHelperProxy *)self setXpcConnectionInterest:[(NDANFHelperProxy *)self xpcConnectionInterest]+ 1];
  v4 = [(NDANFHelperProxy *)self xpcConnectionLock];
  [v4 unlock];
}

- (void)popInterest
{
  v3 = [(NDANFHelperProxy *)self xpcConnectionLock];
  [v3 lock];

  [(NDANFHelperProxy *)self setXpcConnectionInterest:[(NDANFHelperProxy *)self xpcConnectionInterest]- 1];
  if (![(NDANFHelperProxy *)self xpcConnectionInterest])
  {
    v4 = *MEMORY[0x277D30988];
    if (os_log_type_enabled(*MEMORY[0x277D30988], OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25BE24000, v4, OS_LOG_TYPE_DEFAULT, "ANFDecoder will invalidate connection due to zero interest", v7, 2u);
    }

    v5 = [(NDANFHelperProxy *)self xpcConnection];
    [v5 invalidate];

    [(NDANFHelperProxy *)self setXpcConnection:0];
  }

  v6 = [(NDANFHelperProxy *)self xpcConnectionLock];
  [v6 unlock];
}

- (id)_connectionToXPCService
{
  v3 = [(NDANFHelperProxy *)self xpcConnectionLock];
  [v3 lock];

  v4 = [(NDANFHelperProxy *)self xpcConnection];

  if (!v4)
  {
    v5 = NDANFDecodingServiceXPCConnection();
    [(NDANFHelperProxy *)self setXpcConnection:v5];

    v6 = [(NDANFHelperProxy *)self xpcConnection];
    [v6 setInvalidationHandler:&__block_literal_global_10];

    v7 = [(NDANFHelperProxy *)self xpcConnection];
    [v7 setInterruptionHandler:&__block_literal_global_13];

    v8 = [(NDANFHelperProxy *)self xpcConnection];
    [v8 activate];
  }

  v9 = [(NDANFHelperProxy *)self xpcConnection];
  v10 = [(NDANFHelperProxy *)self xpcConnectionLock];
  [v10 unlock];

  return v9;
}

void __43__NDANFHelperProxy__connectionToXPCService__block_invoke()
{
  if (os_log_type_enabled(*MEMORY[0x277D30988], OS_LOG_TYPE_ERROR))
  {
    __43__NDANFHelperProxy__connectionToXPCService__block_invoke_cold_1();
  }
}

void __43__NDANFHelperProxy__connectionToXPCService__block_invoke_11()
{
  if (os_log_type_enabled(*MEMORY[0x277D30988], OS_LOG_TYPE_ERROR))
  {
    __43__NDANFHelperProxy__connectionToXPCService__block_invoke_11_cold_1();
  }
}

void __63__NDANFHelperProxy_manifestFromANFDocumentData_reachedService___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __63__NDANFHelperProxy_manifestFromANFDocumentData_reachedService___block_invoke_2_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

@end