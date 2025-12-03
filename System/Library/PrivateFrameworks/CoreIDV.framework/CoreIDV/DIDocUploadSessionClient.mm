@interface DIDocUploadSessionClient
- (DIDocUploadSessionClient)init;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (void)cancelUploads;
- (void)dealloc;
- (void)init;
- (void)uploadDocData:(id)data uploadSettings:(id)settings completion:(id)completion;
@end

@implementation DIDocUploadSessionClient

- (DIDocUploadSessionClient)init
{
  v3 = DIV_LOG_CLIENT_0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [DIDocUploadSessionClient init];
  }

  v16.receiver = self;
  v16.super_class = DIDocUploadSessionClient;
  v4 = [(DIDocUploadSessionClient *)&v16 init];
  if (v4)
  {
    v5 = DIV_LOG_CLIENT_0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [DIDocUploadSessionClient init];
    }

    v6 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.coreidvd.docUpload.xpc" options:4096];
    [(DIDocUploadSessionClient *)v4 setServerConnection:v6];

    v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_282E7D1E0];
    serverConnection = [(DIDocUploadSessionClient *)v4 serverConnection];
    [serverConnection setRemoteObjectInterface:v7];

    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    serverConnection2 = [(DIDocUploadSessionClient *)v4 serverConnection];
    remoteObjectInterface = [serverConnection2 remoteObjectInterface];
    [remoteObjectInterface setClasses:v11 forSelector:sel_uploadDocData_uploadSettings_completion_ argumentIndex:0 ofReply:0];

    serverConnection3 = [(DIDocUploadSessionClient *)v4 serverConnection];
    [serverConnection3 activate];
  }

  return v4;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)uploadDocData:(id)data uploadSettings:(id)settings completion:(id)completion
{
  completionCopy = completion;
  settingsCopy = settings;
  dataCopy = data;
  v11 = DIV_LOG_CLIENT_0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [DIDocUploadSessionClient uploadDocData:uploadSettings:completion:];
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__DIDocUploadSessionClient_uploadDocData_uploadSettings_completion___block_invoke;
  v17[3] = &unk_278320C10;
  v12 = completionCopy;
  v18 = v12;
  v13 = [(DIDocUploadSessionClient *)self remoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__DIDocUploadSessionClient_uploadDocData_uploadSettings_completion___block_invoke_2;
  v15[3] = &unk_278320C38;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 uploadDocData:dataCopy uploadSettings:settingsCopy completion:v15];
}

void __68__DIDocUploadSessionClient_uploadDocData_uploadSettings_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = DIV_LOG_CLIENT_0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __68__DIDocUploadSessionClient_uploadDocData_uploadSettings_completion___block_invoke_2_cold_1(v5, v7);
    }
  }

  if (v6)
  {
    v8 = DIV_LOG_CLIENT_0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __68__DIDocUploadSessionClient_uploadDocData_uploadSettings_completion___block_invoke_2_cold_2();
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)cancelUploads
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  serverConnection = [(DIDocUploadSessionClient *)self serverConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__DIDocUploadSessionClient_remoteObjectProxyWithErrorHandler___block_invoke;
  v9[3] = &unk_278320C60;
  v9[4] = self;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [serverConnection remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

void __62__DIDocUploadSessionClient_remoteObjectProxyWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DIV_LOG_CLIENT_0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__DIDocUploadSessionClient_remoteObjectProxyWithErrorHandler___block_invoke_cold_1(v3, v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = [*(a1 + 32) createDaemonDisconnectedError];
    (*(v5 + 16))(v5, v6);
  }
}

- (void)init
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)uploadDocData:uploadSettings:completion:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __68__DIDocUploadSessionClient_uploadDocData_uploadSettings_completion___block_invoke_2_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  v5 = 138543362;
  v6 = v3;
  _os_log_debug_impl(&dword_21CC90000, a2, OS_LOG_TYPE_DEBUG, "DIDocUploadSessionClient uploadDocData returned data = %{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __68__DIDocUploadSessionClient_uploadDocData_uploadSettings_completion___block_invoke_2_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __62__DIDocUploadSessionClient_remoteObjectProxyWithErrorHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_21CC90000, a2, OS_LOG_TYPE_ERROR, "DIDocUploadSessionClient remote object proxy error: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end