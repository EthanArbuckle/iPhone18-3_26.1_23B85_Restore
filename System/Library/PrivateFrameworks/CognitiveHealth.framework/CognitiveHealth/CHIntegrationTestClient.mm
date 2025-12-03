@interface CHIntegrationTestClient
- (CHIntegrationTestClient)init;
- (void)populateSampleAppLaunchEmbeddingWithCompletion:(id)completion;
@end

@implementation CHIntegrationTestClient

- (void)populateSampleAppLaunchEmbeddingWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = ch_test_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243B92000, v5, OS_LOG_TYPE_DEFAULT, "CHIntegrationTestClient initiating call to cognitivehealthd - embeddingVectorForBundleId", buf, 2u);
  }

  clientHelper = self->_clientHelper;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__CHIntegrationTestClient_populateSampleAppLaunchEmbeddingWithCompletion___block_invoke;
  v9[3] = &unk_278DE5008;
  v10 = completionCopy;
  v7 = completionCopy;
  v8 = [(CHXPCClientHelper *)clientHelper remoteObjectProxyWithErrorHandler:v9];
  [v8 populateSampleAppLaunchEmbeddingWithCompletion:v7];
}

void __74__CHIntegrationTestClient_populateSampleAppLaunchEmbeddingWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ch_test_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [v3 localizedDescription];
    v7 = 138412290;
    v8 = v6;
    _os_log_error_impl(&dword_243B92000, v4, OS_LOG_TYPE_ERROR, "CHSensorDataClient remoteObjectProxy error: %@", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

- (CHIntegrationTestClient)init
{
  v9.receiver = self;
  v9.super_class = CHIntegrationTestClient;
  v2 = [(CHIntegrationTestClient *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2856CD780];
    v4 = objc_autoreleasePoolPush();
    v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v4);
    [v3 setClasses:v5 forSelector:sel_populateSampleAppLaunchEmbeddingWithCompletion_ argumentIndex:0 ofReply:1];

    v6 = [[CHXPCClientHelper alloc] initWithServiceName:@"com.apple.cognitivehealth.integrationtest" whitelistedServerInterface:v3 clientExportedObject:v2 interruptionHandler:&__block_literal_global invalidationHandler:&__block_literal_global_12];
    clientHelper = v2->_clientHelper;
    v2->_clientHelper = v6;
  }

  return v2;
}

void __31__CHIntegrationTestClient_init__block_invoke_10()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = ch_xpc_handle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v2 = 138412290;
    v3 = @"com.apple.cognitivehealth.integrationtest";
    _os_log_error_impl(&dword_243B92000, v0, OS_LOG_TYPE_ERROR, "Connection to %@ invalidated.", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void __31__CHIntegrationTestClient_init__block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = ch_xpc_handle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v2 = 138412290;
    v3 = @"com.apple.cognitivehealth.integrationtest";
    _os_log_error_impl(&dword_243B92000, v0, OS_LOG_TYPE_ERROR, "Connection to %@ interrupted.", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

@end