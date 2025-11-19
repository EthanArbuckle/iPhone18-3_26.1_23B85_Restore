@interface GDCComputeService
- (BOOL)stopWithError:(id *)a3;
- (GDCComputeService)init;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (id)updateGroupWithName:(id)a3 namesAndRequests:(id)a4 error:(id *)a5;
- (id)updateViewWithName:(id)a3 viewUpdateSourceRequests:(id)a4 error:(id *)a5;
- (void)dealloc;
- (void)locked_establishConnection;
@end

@implementation GDCComputeService

- (void)locked_establishConnection
{
  if (!self->_connection)
  {
    v3 = GDCLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_254FB4000, v3, OS_LOG_TYPE_DEFAULT, "GDCComputeService: establishing connection.", buf, 2u);
    }

    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.intelligenceplatform.IntelligencePlatformComputeService"];
    connection = self->_connection;
    self->_connection = v4;

    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:self->_serverInterface];
    [(NSXPCConnection *)self->_connection setInterruptionHandler:&__block_literal_global];
    objc_initWeak(buf, self);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __47__GDCComputeService_locked_establishConnection__block_invoke_27;
    v6[3] = &unk_2797B5998;
    objc_copyWeak(&v7, buf);
    [(NSXPCConnection *)self->_connection setInvalidationHandler:v6];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v7);
    objc_destroyWeak(buf);
  }
}

- (GDCComputeService)init
{
  v16.receiver = self;
  v16.super_class = GDCComputeService;
  v2 = [(GDCComputeService *)&v16 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2867315B8];
    serverInterface = v2->_serverInterface;
    v2->_serverInterface = v3;

    v5 = v2->_serverInterface;
    v6 = objc_autoreleasePoolPush();
    v7 = objc_alloc(MEMORY[0x277CBEB98]);
    v8 = objc_opt_class();
    v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v6);
    [(NSXPCInterface *)v5 setClasses:v9 forSelector:sel_updateViewWithName_viewUpdateSourceRequests_reply_ argumentIndex:0 ofReply:1];

    v10 = v2->_serverInterface;
    v11 = objc_autoreleasePoolPush();
    v12 = objc_alloc(MEMORY[0x277CBEB98]);
    v13 = objc_opt_class();
    v14 = [v12 initWithObjects:{v13, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v11);
    [(NSXPCInterface *)v10 setClasses:v14 forSelector:sel_updateGroupWithName_namesAndRequests_reply_ argumentIndex:0 ofReply:1];
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = GDCComputeService;
  [(GDCComputeService *)&v3 dealloc];
}

void __47__GDCComputeService_locked_establishConnection__block_invoke()
{
  v0 = GDCLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __47__GDCComputeService_locked_establishConnection__block_invoke_cold_1(v0);
  }
}

void __47__GDCComputeService_locked_establishConnection__block_invoke_27(uint64_t a1)
{
  v2 = GDCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __47__GDCComputeService_locked_establishConnection__block_invoke_27_cold_1(v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = v5[1];
    v5[1] = 0;

    objc_sync_exit(v5);
  }
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  [(GDCComputeService *)v5 locked_establishConnection];
  v6 = [(NSXPCConnection *)v5->_connection synchronousRemoteObjectProxyWithErrorHandler:v4];
  objc_sync_exit(v5);

  return v6;
}

- (id)updateViewWithName:(id)a3 viewUpdateSourceRequests:(id)a4 error:(id *)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy_;
  v42 = __Block_byref_object_dispose_;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy_;
  v36 = __Block_byref_object_dispose_;
  v37 = 0;
  v8 = GDCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v45 = v6;
    _os_log_impl(&dword_254FB4000, v8, OS_LOG_TYPE_DEFAULT, "GDCComputeService: updateViewWithName called: %@", buf, 0xCu);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v28 objects:v48 count:16];
  if (v9)
  {
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        v13 = GDCLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v12 description];
          *buf = 138412546;
          v45 = v6;
          v46 = 2112;
          v47 = v14;
          _os_log_impl(&dword_254FB4000, v13, OS_LOG_TYPE_DEFAULT, "GDCComputeService: updateViewWithName: request: %@ %@", buf, 0x16u);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v28 objects:v48 count:16];
    }

    while (v9);
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __71__GDCComputeService_updateViewWithName_viewUpdateSourceRequests_error___block_invoke;
  v25[3] = &unk_2797B59C0;
  v15 = v6;
  v26 = v15;
  v27 = &v32;
  v16 = [(GDCComputeService *)self synchronousRemoteObjectProxyWithErrorHandler:v25];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __71__GDCComputeService_updateViewWithName_viewUpdateSourceRequests_error___block_invoke_29;
  v24[3] = &unk_2797B59E8;
  v24[4] = &v38;
  v24[5] = &v32;
  [v16 updateViewWithName:v15 viewUpdateSourceRequests:obj reply:v24];

  v17 = v39[5];
  if (a5 && !v17)
  {
    *a5 = v33[5];
    v17 = v39[5];
  }

  v18 = v17;

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

void __71__GDCComputeService_updateViewWithName_viewUpdateSourceRequests_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = GDCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__GDCComputeService_updateViewWithName_viewUpdateSourceRequests_error___block_invoke_cold_1(a1);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __71__GDCComputeService_updateViewWithName_viewUpdateSourceRequests_error___block_invoke_29(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)updateGroupWithName:(id)a3 namesAndRequests:(id)a4 error:(id *)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v10 = GDCLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = v8;
    _os_log_impl(&dword_254FB4000, v10, OS_LOG_TYPE_DEFAULT, "GDCComputeService: updateGroupWithName called: %@", buf, 0xCu);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __64__GDCComputeService_updateGroupWithName_namesAndRequests_error___block_invoke;
  v18[3] = &unk_2797B59C0;
  v11 = v8;
  v19 = v11;
  v20 = &v21;
  v12 = [(GDCComputeService *)self synchronousRemoteObjectProxyWithErrorHandler:v18];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __64__GDCComputeService_updateGroupWithName_namesAndRequests_error___block_invoke_31;
  v17[3] = &unk_2797B59E8;
  v17[4] = &v27;
  v17[5] = &v21;
  [v12 updateGroupWithName:v11 namesAndRequests:v9 reply:v17];

  v13 = v28[5];
  if (a5 && !v13)
  {
    *a5 = v22[5];
    v13 = v28[5];
  }

  v14 = v13;

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void __64__GDCComputeService_updateGroupWithName_namesAndRequests_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = GDCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __64__GDCComputeService_updateGroupWithName_namesAndRequests_error___block_invoke_cold_1(a1);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __64__GDCComputeService_updateGroupWithName_namesAndRequests_error___block_invoke_31(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __57__GDCComputeService_clearViewWithName_fullRebuild_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = GDCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __57__GDCComputeService_clearViewWithName_fullRebuild_error___block_invoke_cold_1(a1);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __60__GDCComputeService_truncateViewWithName_fullRebuild_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = GDCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __60__GDCComputeService_truncateViewWithName_fullRebuild_error___block_invoke_cold_1(a1);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)stopWithError:(id *)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v5 = GDCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254FB4000, v5, OS_LOG_TYPE_DEFAULT, "GDCComputeService: stop called", buf, 2u);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __35__GDCComputeService_stopWithError___block_invoke;
  v10[3] = &unk_2797B5A38;
  v10[4] = &v12;
  v6 = [(GDCComputeService *)self synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __35__GDCComputeService_stopWithError___block_invoke_35;
  v9[3] = &unk_2797B5A10;
  v9[4] = &v18;
  v9[5] = &v12;
  [v6 stopWithReply:v9];

  v7 = *(v19 + 24);
  if (a3 && (v19[3] & 1) == 0)
  {
    *a3 = v13[5];
    v7 = *(v19 + 24);
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  return v7 & 1;
}

void __35__GDCComputeService_stopWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = GDCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __35__GDCComputeService_stopWithError___block_invoke_cold_1(v3, v4);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __71__GDCComputeService_updateViewWithName_viewUpdateSourceRequests_error___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_254FB4000, v1, v2, "GDCComputeService: error during updateViewWithName %@ call: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __64__GDCComputeService_updateGroupWithName_namesAndRequests_error___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_254FB4000, v1, v2, "GDCComputeService: error during updateGroupWithName %@ call: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __57__GDCComputeService_clearViewWithName_fullRebuild_error___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_254FB4000, v1, v2, "GDCComputeService: error during clearViewWithName %@ call: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __60__GDCComputeService_truncateViewWithName_fullRebuild_error___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_254FB4000, v1, v2, "GDCComputeService: error during truncateViewWithName %@ call: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __35__GDCComputeService_stopWithError___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_254FB4000, a2, OS_LOG_TYPE_ERROR, "GDCComputeService: error during stop: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end