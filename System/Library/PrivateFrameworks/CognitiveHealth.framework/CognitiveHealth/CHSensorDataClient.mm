@interface CHSensorDataClient
- (CHSensorDataClient)init;
- (void)aggregatedMotionAndAppLaunchDataFromDate:(id)date toDate:(id)toDate completion:(id)completion;
- (void)embeddingVectorForBundleId:(id)id completion:(id)completion;
@end

@implementation CHSensorDataClient

- (void)embeddingVectorForBundleId:(id)id completion:(id)completion
{
  completionCopy = completion;
  idCopy = id;
  v8 = ch_sensor_data_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243B92000, v8, OS_LOG_TYPE_DEFAULT, "CHSensorDataClient initiating call to cognitivehealthd - embeddingVectorForBundleId", buf, 2u);
  }

  clientHelper = self->_clientHelper;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__CHSensorDataClient_embeddingVectorForBundleId_completion___block_invoke;
  v12[3] = &unk_278DE5008;
  v13 = completionCopy;
  v10 = completionCopy;
  v11 = [(CHXPCClientHelper *)clientHelper remoteObjectProxyWithErrorHandler:v12];
  [v11 embeddingVectorForBundleId:idCopy completion:v10];
}

void __60__CHSensorDataClient_embeddingVectorForBundleId_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ch_xpc_handle();
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

- (void)aggregatedMotionAndAppLaunchDataFromDate:(id)date toDate:(id)toDate completion:(id)completion
{
  completionCopy = completion;
  toDateCopy = toDate;
  dateCopy = date;
  v11 = ch_sensor_data_handle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243B92000, v11, OS_LOG_TYPE_DEFAULT, "CHSensorDataClient initiating call to cognitivehealthd - aggregatedMotionAndAppLaunchData", buf, 2u);
  }

  clientHelper = self->_clientHelper;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81__CHSensorDataClient_aggregatedMotionAndAppLaunchDataFromDate_toDate_completion___block_invoke;
  v15[3] = &unk_278DE5008;
  v16 = completionCopy;
  v13 = completionCopy;
  v14 = [(CHXPCClientHelper *)clientHelper remoteObjectProxyWithErrorHandler:v15];
  [v14 aggregatedMotionAndAppLaunchDataFromDate:dateCopy toDate:toDateCopy completion:v13];
}

void __81__CHSensorDataClient_aggregatedMotionAndAppLaunchDataFromDate_toDate_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ch_xpc_handle();
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

- (CHSensorDataClient)init
{
  v18.receiver = self;
  v18.super_class = CHSensorDataClient;
  v2 = [(CHSensorDataClient *)&v18 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2856CD868];
    v4 = objc_autoreleasePoolPush();
    v5 = objc_alloc(MEMORY[0x277CBEB98]);
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v5 initWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v4);
    [v3 setClasses:v10 forSelector:sel_aggregatedMotionAndAppLaunchDataFromDate_toDate_completion_ argumentIndex:0 ofReply:1];

    v11 = objc_autoreleasePoolPush();
    v12 = objc_alloc(MEMORY[0x277CBEB98]);
    v13 = objc_opt_class();
    v14 = [v12 initWithObjects:{v13, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v11);
    [v3 setClasses:v14 forSelector:sel_embeddingVectorForBundleId_completion_ argumentIndex:0 ofReply:1];

    v15 = [[CHXPCClientHelper alloc] initWithServiceName:@"com.apple.cognitivehealth.sensordata" whitelistedServerInterface:v3 clientExportedObject:v2 interruptionHandler:&__block_literal_global_39 invalidationHandler:&__block_literal_global_27];
    clientHelper = v2->_clientHelper;
    v2->_clientHelper = v15;
  }

  return v2;
}

void __26__CHSensorDataClient_init__block_invoke_25()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = ch_xpc_handle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v2 = 138412290;
    v3 = @"com.apple.cognitivehealth.sensordata";
    _os_log_error_impl(&dword_243B92000, v0, OS_LOG_TYPE_ERROR, "Connection to %@ invalidated.", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void __26__CHSensorDataClient_init__block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = ch_xpc_handle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v2 = 138412290;
    v3 = @"com.apple.cognitivehealth.sensordata";
    _os_log_error_impl(&dword_243B92000, v0, OS_LOG_TYPE_ERROR, "Connection to %@ interrupted.", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

@end