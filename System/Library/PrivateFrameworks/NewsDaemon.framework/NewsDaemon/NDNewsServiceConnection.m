@interface NDNewsServiceConnection
- (NDNewsServiceClient)client;
- (NDNewsServiceConnection)initWithClient:(id)a3;
- (void)_establishConnectionIfNeededWithCompletion:(id)a3;
- (void)_unsafeEstablishConnectionIfNeededWithCompletion:(id)a3;
- (void)dealloc;
- (void)fetchLatestResultsWithParameters:(id)a3 completion:(id)a4;
- (void)fetchModuleDescriptorsWithCompletion:(id)a3;
- (void)fetchPlaceholderResultsWithOperationInfo:(id)a3 syncCompletion:(id)a4;
- (void)markAnalyticsElement:(id)a3 asReadAtDate:(id)a4 withCompletion:(id)a5;
- (void)markAnalyticsElements:(id)a3 asSeenAtDate:(id)a4 withCompletion:(id)a5;
- (void)serviceHasNewTodayResults;
@end

@implementation NDNewsServiceConnection

- (NDNewsServiceConnection)initWithClient:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDNewsServiceConnection initWithClient:];
  }

  v10.receiver = self;
  v10.super_class = NDNewsServiceConnection;
  v5 = [(NDNewsServiceConnection *)&v10 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.newsdaemon.accessQueue", v6);
    accessQueue = v5->_accessQueue;
    v5->_accessQueue = v7;

    objc_storeWeak(&v5->_client, v4);
  }

  return v5;
}

- (void)dealloc
{
  v3 = [(NDNewsServiceConnection *)self connection];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = NDNewsServiceConnection;
  [(NDNewsServiceConnection *)&v4 dealloc];
}

- (void)serviceHasNewTodayResults
{
  v2 = [(NDNewsServiceConnection *)self client];
  [v2 serviceHasNewTodayResults];
}

- (void)fetchModuleDescriptorsWithCompletion:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDNewsServiceConnection fetchModuleDescriptorsWithCompletion:];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__NDNewsServiceConnection_fetchModuleDescriptorsWithCompletion___block_invoke;
  v6[3] = &unk_27997C188;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(NDNewsServiceConnection *)self _establishConnectionIfNeededWithCompletion:v6];
}

void __64__NDNewsServiceConnection_fetchModuleDescriptorsWithCompletion___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = NDSharedClientLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[NDNewsServiceConnection fetchModuleDescriptorsWithCompletion:]_block_invoke";
    _os_log_impl(&dword_25BE24000, v2, OS_LOG_TYPE_INFO, "Calling %s on daemon", buf, 0xCu);
  }

  v3 = [*(a1 + 32) connection];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__NDNewsServiceConnection_fetchModuleDescriptorsWithCompletion___block_invoke_61;
  v6[3] = &unk_27997C160;
  v7 = *(a1 + 40);
  v4 = [v3 remoteObjectProxyWithErrorHandler:v6];

  [v4 fetchModuleDescriptorsWithCompletion:*(a1 + 40)];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)fetchLatestResultsWithParameters:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDNewsServiceConnection fetchLatestResultsWithParameters:completion:];
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDNewsServiceConnection fetchLatestResultsWithParameters:completion:];
  }

LABEL_6:
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__NDNewsServiceConnection_fetchLatestResultsWithParameters_completion___block_invoke;
  v10[3] = &unk_27997C1B0;
  v11 = v6;
  v12 = v7;
  v10[4] = self;
  v8 = v6;
  v9 = v7;
  [(NDNewsServiceConnection *)self _establishConnectionIfNeededWithCompletion:v10];
}

void __71__NDNewsServiceConnection_fetchLatestResultsWithParameters_completion___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = NDSharedClientLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[NDNewsServiceConnection fetchLatestResultsWithParameters:completion:]_block_invoke";
    _os_log_impl(&dword_25BE24000, v2, OS_LOG_TYPE_INFO, "Calling %s on daemon", buf, 0xCu);
  }

  v3 = [*(a1 + 32) connection];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__NDNewsServiceConnection_fetchLatestResultsWithParameters_completion___block_invoke_65;
  v6[3] = &unk_27997C160;
  v7 = *(a1 + 48);
  v4 = [v3 remoteObjectProxyWithErrorHandler:v6];

  [v4 fetchLatestResultsWithParameters:*(a1 + 40) completion:*(a1 + 48)];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)markAnalyticsElements:(id)a3 asSeenAtDate:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDNewsServiceConnection markAnalyticsElements:asSeenAtDate:withCompletion:];
    if (v9)
    {
      goto LABEL_6;
    }
  }

  else if (v9)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDNewsServiceConnection markAnalyticsElements:asSeenAtDate:withCompletion:];
  }

LABEL_6:
  if ([v8 count])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __77__NDNewsServiceConnection_markAnalyticsElements_asSeenAtDate_withCompletion___block_invoke;
    v11[3] = &unk_27997C1D8;
    v11[4] = self;
    v14 = v10;
    v12 = v8;
    v13 = v9;
    [(NDNewsServiceConnection *)self _establishConnectionIfNeededWithCompletion:v11];
  }

  else if (v10)
  {
    (*(v10 + 2))(v10, 0);
  }
}

void __77__NDNewsServiceConnection_markAnalyticsElements_asSeenAtDate_withCompletion___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = NDSharedClientLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[NDNewsServiceConnection markAnalyticsElements:asSeenAtDate:withCompletion:]_block_invoke";
    _os_log_impl(&dword_25BE24000, v2, OS_LOG_TYPE_INFO, "Calling %s on daemon", &v8, 0xCu);
  }

  v3 = [*(a1 + 32) connection];
  v4 = [v3 remoteObjectProxyWithErrorHandler:*(a1 + 56)];

  if (*(a1 + 56))
  {
    v5 = *(a1 + 56);
  }

  else
  {
    v5 = &__block_literal_global_3;
  }

  v6 = _Block_copy(v5);
  [v4 markAnalyticsElements:*(a1 + 40) asSeenAtDate:*(a1 + 48) withCompletion:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)markAnalyticsElement:(id)a3 asReadAtDate:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDNewsServiceConnection markAnalyticsElement:asReadAtDate:withCompletion:];
    if (v9)
    {
      goto LABEL_6;
    }
  }

  else if (v9)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDNewsServiceConnection markAnalyticsElement:asReadAtDate:withCompletion:];
  }

LABEL_6:
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__NDNewsServiceConnection_markAnalyticsElement_asReadAtDate_withCompletion___block_invoke;
  v14[3] = &unk_27997C1D8;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v9;
  v12 = v8;
  v13 = v10;
  [(NDNewsServiceConnection *)self _establishConnectionIfNeededWithCompletion:v14];
}

void __76__NDNewsServiceConnection_markAnalyticsElement_asReadAtDate_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v5 = [v2 remoteObjectProxyWithErrorHandler:*(a1 + 56)];

  if (*(a1 + 56))
  {
    v3 = *(a1 + 56);
  }

  else
  {
    v3 = &__block_literal_global_71;
  }

  v4 = _Block_copy(v3);
  [v5 markAnalyticsElement:*(a1 + 40) asReadAtDate:*(a1 + 48) withCompletion:v4];
}

- (void)fetchPlaceholderResultsWithOperationInfo:(id)a3 syncCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDNewsServiceConnection fetchPlaceholderResultsWithOperationInfo:syncCompletion:];
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDNewsServiceConnection fetchPlaceholderResultsWithOperationInfo:syncCompletion:];
  }

LABEL_6:
  v8 = [(NDNewsServiceConnection *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__NDNewsServiceConnection_fetchPlaceholderResultsWithOperationInfo_syncCompletion___block_invoke;
  block[3] = &unk_27997C1B0;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_sync(v8, block);
}

void __83__NDNewsServiceConnection_fetchPlaceholderResultsWithOperationInfo_syncCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __83__NDNewsServiceConnection_fetchPlaceholderResultsWithOperationInfo_syncCompletion___block_invoke_2;
  v3[3] = &unk_27997C1B0;
  v3[4] = v2;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 _unsafeEstablishConnectionIfNeededWithCompletion:v3];
}

void __83__NDNewsServiceConnection_fetchPlaceholderResultsWithOperationInfo_syncCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __83__NDNewsServiceConnection_fetchPlaceholderResultsWithOperationInfo_syncCompletion___block_invoke_3;
  v4[3] = &unk_27997C160;
  v5 = *(a1 + 48);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v4];

  [v3 fetchPlaceholderResultsWithOperationInfo:*(a1 + 40) syncCompletion:*(a1 + 48)];
}

- (void)_establishConnectionIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(NDNewsServiceConnection *)self accessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__NDNewsServiceConnection__establishConnectionIfNeededWithCompletion___block_invoke;
  v7[3] = &unk_27997C188;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_unsafeEstablishConnectionIfNeededWithCompletion:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDNewsServiceConnection _unsafeEstablishConnectionIfNeededWithCompletion:];
  }

  v5 = NDSharedClientLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v31 = "[NDNewsServiceConnection _unsafeEstablishConnectionIfNeededWithCompletion:]";
    _os_log_impl(&dword_25BE24000, v5, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v6 = [(NDNewsServiceConnection *)self connection];
  v7 = v6 == 0;

  if (v7)
  {
    ++_unsafeEstablishConnectionIfNeededWithCompletion__connectionIdentifier;
    v8 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.newsd.today" options:0];
    v9 = NDSharedClientLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v31 = _unsafeEstablishConnectionIfNeededWithCompletion__connectionIdentifier;
      _os_log_impl(&dword_25BE24000, v9, OS_LOG_TYPE_INFO, "Created connection %ld to newsd for NewsToday mach service", buf, 0xCu);
    }

    [v8 setInterruptionHandler:&__block_literal_global_76];
    objc_initWeak(buf, self);
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __76__NDNewsServiceConnection__unsafeEstablishConnectionIfNeededWithCompletion___block_invoke_77;
    v27 = &unk_27997C228;
    v28 = self;
    objc_copyWeak(&v29, buf);
    [v8 setInvalidationHandler:&v24];
    v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286D7EAA0];
    [v8 setRemoteObjectInterface:v10];
    v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286D7E910];
    [v8 setExportedInterface:v11];

    v12 = [v8 remoteObjectInterface];
    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0, v24, v25, v26, v27, v28}];
    [v12 setClasses:v15 forSelector:sel_fetchLatestResultsWithParameters_completion_ argumentIndex:1 ofReply:1];

    v16 = [v8 remoteObjectInterface];
    v17 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    [v16 setClasses:v17 forSelector:sel_fetchLatestResultsWithParameters_completion_ argumentIndex:2 ofReply:1];

    v18 = [v8 remoteObjectInterface];
    v19 = MEMORY[0x277CBEB98];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    [v18 setClasses:v21 forSelector:sel_fetchModuleDescriptorsWithCompletion_ argumentIndex:0 ofReply:1];

    v22 = objc_alloc_init(NDNewsServiceConnectionClientProxy);
    [(NDNewsServiceConnectionClientProxy *)v22 setClient:self];
    [v8 setExportedObject:v22];
    [v8 resume];
    [(NDNewsServiceConnection *)self setConnection:v8];

    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
  }

  else
  {
    v8 = NDSharedClientLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v31 = _unsafeEstablishConnectionIfNeededWithCompletion__connectionIdentifier;
      _os_log_impl(&dword_25BE24000, v8, OS_LOG_TYPE_INFO, "Reusing connection %ld", buf, 0xCu);
    }
  }

  if (v4)
  {
    v4[2](v4);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __76__NDNewsServiceConnection__unsafeEstablishConnectionIfNeededWithCompletion___block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = NDSharedClientLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v2 = 134217984;
    v3 = _unsafeEstablishConnectionIfNeededWithCompletion__connectionIdentifier;
    _os_log_impl(&dword_25BE24000, v0, OS_LOG_TYPE_INFO, "Connection %ld was interrupted", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void __76__NDNewsServiceConnection__unsafeEstablishConnectionIfNeededWithCompletion___block_invoke_77(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = NDSharedClientLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v8 = _unsafeEstablishConnectionIfNeededWithCompletion__connectionIdentifier;
    _os_log_impl(&dword_25BE24000, v2, OS_LOG_TYPE_INFO, "Connection %ld was invalidated", buf, 0xCu);
  }

  v3 = [*(a1 + 32) accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__NDNewsServiceConnection__unsafeEstablishConnectionIfNeededWithCompletion___block_invoke_78;
  block[3] = &unk_27997C200;
  objc_copyWeak(&v6, (a1 + 40));
  dispatch_async(v3, block);

  objc_destroyWeak(&v6);
  v4 = *MEMORY[0x277D85DE8];
}

void __76__NDNewsServiceConnection__unsafeEstablishConnectionIfNeededWithCompletion___block_invoke_78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setConnection:0];
}

- (NDNewsServiceClient)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

- (void)initWithClient:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25BE24000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "client", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchModuleDescriptorsWithCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25BE24000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "completion", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchLatestResultsWithParameters:completion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25BE24000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "parameters", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchLatestResultsWithParameters:completion:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25BE24000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "completion", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)markAnalyticsElements:asSeenAtDate:withCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25BE24000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "headlineAnalyticsElements", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)markAnalyticsElements:asSeenAtDate:withCompletion:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25BE24000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "date", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)markAnalyticsElement:asReadAtDate:withCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25BE24000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "analyticsElement", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)markAnalyticsElement:asReadAtDate:withCompletion:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25BE24000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "date", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchPlaceholderResultsWithOperationInfo:syncCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25BE24000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "operationInfo", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchPlaceholderResultsWithOperationInfo:syncCompletion:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25BE24000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "syncCompletion", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_unsafeEstablishConnectionIfNeededWithCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25BE24000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "completion", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end