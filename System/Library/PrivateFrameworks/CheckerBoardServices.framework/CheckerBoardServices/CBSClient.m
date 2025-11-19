@interface CBSClient
+ (id)defaultClient;
- (CBSClient)init;
- (id)remoteAlertServer;
- (id)systemServicesServer;
@end

@implementation CBSClient

+ (id)defaultClient
{
  if (defaultClient_onceToken != -1)
  {
    +[CBSClient defaultClient];
  }

  v3 = defaultClient_singleton;

  return v3;
}

uint64_t __26__CBSClient_defaultClient__block_invoke()
{
  defaultClient_singleton = objc_alloc_init(CBSClient);

  return MEMORY[0x2821F96F8]();
}

- (CBSClient)init
{
  v7.receiver = self;
  v7.super_class = CBSClient;
  v2 = [(CBSClient *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.CheckerBoard.services" options:4096];
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285630240];
    [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v5];

    [(NSXPCConnection *)v2->_connection setInterruptionHandler:&__block_literal_global_91];
    [(NSXPCConnection *)v2->_connection setInvalidationHandler:&__block_literal_global_94];
    [(NSXPCConnection *)v2->_connection resume];
  }

  return v2;
}

void __17__CBSClient_init__block_invoke()
{
  v0 = CheckerBoardLogHandleForCategory(5);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __17__CBSClient_init__block_invoke_cold_1();
  }
}

void __17__CBSClient_init__block_invoke_92()
{
  v0 = CheckerBoardLogHandleForCategory(5);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __17__CBSClient_init__block_invoke_92_cold_1();
  }
}

- (id)remoteAlertServer
{
  v2 = [(CBSClient *)self connection];
  v3 = [v2 remoteObjectProxyWithErrorHandler:&__block_literal_global_97];

  return v3;
}

void __30__CBSClient_remoteAlertServer__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CheckerBoardLogHandleForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CBSClient_remoteAlertServer__block_invoke_cold_1();
  }
}

- (id)systemServicesServer
{
  v2 = [(CBSClient *)self connection];
  v3 = [v2 remoteObjectProxyWithErrorHandler:&__block_literal_global_99];

  return v3;
}

void __33__CBSClient_systemServicesServer__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CheckerBoardLogHandleForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __30__CBSClient_remoteAlertServer__block_invoke_cold_1();
  }
}

void __30__CBSClient_remoteAlertServer__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end