@interface NetworkQualityClient
+ (id)getXpcConn;
+ (void)findLocalMeasurementEndpoints:(id)endpoints;
+ (void)performMeasurementWithConfiguration:(id)configuration reply:(id)reply;
@end

@implementation NetworkQualityClient

+ (id)getXpcConn
{
  v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.network-quality.NetworkQualityXPC"];
  v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286D27778];
  [v2 setRemoteObjectInterface:v3];

  [v2 resume];

  return v2;
}

+ (void)performMeasurementWithConfiguration:(id)configuration reply:(id)reply
{
  replyCopy = reply;
  configurationCopy = configuration;
  getXpcConn = [self getXpcConn];
  v8 = [getXpcConn remoteObjectProxyWithErrorHandler:&__block_literal_global_1];
  [v8 performMeasurementWithConfiguration:configurationCopy reply:replyCopy];
}

void __66__NetworkQualityClient_performMeasurementWithConfiguration_reply___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a2;
  netqual_log_init();
  v3 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [v2 localizedDescription];
    v6 = [v2 localizedFailureReason];
    v8 = 136315906;
    v9 = "+[NetworkQualityClient performMeasurementWithConfiguration:reply:]_block_invoke";
    v10 = 1024;
    v11 = 37;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_25B962000, v4, OS_LOG_TYPE_DEFAULT, "%s:%u - Error on remote object proxy: %@ %@\n", &v8, 0x26u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)findLocalMeasurementEndpoints:(id)endpoints
{
  endpointsCopy = endpoints;
  getXpcConn = [self getXpcConn];
  v5 = [getXpcConn remoteObjectProxyWithErrorHandler:&__block_literal_global_8];
  [v5 findLocalMeasurementEndpoints:endpointsCopy];
}

void __54__NetworkQualityClient_findLocalMeasurementEndpoints___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a2;
  netqual_log_init();
  v3 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [v2 localizedDescription];
    v6 = [v2 localizedFailureReason];
    v8 = 136315906;
    v9 = "+[NetworkQualityClient findLocalMeasurementEndpoints:]_block_invoke";
    v10 = 1024;
    v11 = 48;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_25B962000, v4, OS_LOG_TYPE_DEFAULT, "%s:%u - Error on remote object proxy: %@ %@\n", &v8, 0x26u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end