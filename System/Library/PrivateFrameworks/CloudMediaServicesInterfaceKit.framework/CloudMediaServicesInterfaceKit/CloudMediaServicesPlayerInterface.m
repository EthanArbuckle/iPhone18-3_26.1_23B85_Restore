@interface CloudMediaServicesPlayerInterface
- (CloudMediaServicesPlayerInterface)init;
- (void)dealloc;
- (void)getCloudExtensionConfigurationFor:(id)a3 homeUserID:(id)a4 endpointID:(id)a5 withCompletion:(id)a6;
@end

@implementation CloudMediaServicesPlayerInterface

- (CloudMediaServicesPlayerInterface)init
{
  v18.receiver = self;
  v18.super_class = CloudMediaServicesPlayerInterface;
  v2 = [(CloudMediaServicesPlayerInterface *)&v18 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.agora.server" options:4096];
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2856B3778];
    [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v5];

    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v6 setWithObjects:{v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
    v14 = [(NSXPCConnection *)v2->_connection remoteObjectInterface];
    [v14 setClasses:v13 forSelector:sel_getCloudExtensionConfigurationFor_homeUserID_endpointID_withCompletion_ argumentIndex:0 ofReply:1];

    [(NSXPCConnection *)v2->_connection setInterruptionHandler:&__block_literal_global_0];
    [(NSXPCConnection *)v2->_connection setInvalidationHandler:&__block_literal_global_74];
    [(NSXPCConnection *)v2->_connection resume];
    v15 = [(NSXPCConnection *)v2->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_78];
    AgoraInterfaceProxy = v2->_AgoraInterfaceProxy;
    v2->_AgoraInterfaceProxy = v15;
  }

  return v2;
}

void __41__CloudMediaServicesPlayerInterface_init__block_invoke()
{
  v0 = _CMSILogingFacility();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_2439AD000, v0, OS_LOG_TYPE_DEFAULT, "Connection to CloudMediaServices server was interrupted!", v1, 2u);
  }
}

void __41__CloudMediaServicesPlayerInterface_init__block_invoke_72()
{
  v0 = _CMSILogingFacility();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_2439AD000, v0, OS_LOG_TYPE_DEFAULT, "Connection to CloudMediaServices server was invalidated!", v1, 2u);
  }
}

void __41__CloudMediaServicesPlayerInterface_init__block_invoke_75(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _CMSILogingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __41__CloudMediaServicesPlayerInterface_init__block_invoke_75_cold_1(v2, v3);
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = CloudMediaServicesPlayerInterface;
  [(CloudMediaServicesPlayerInterface *)&v3 dealloc];
}

- (void)getCloudExtensionConfigurationFor:(id)a3 homeUserID:(id)a4 endpointID:(id)a5 withCompletion:(id)a6
{
  v10 = a6;
  connection = self->_connection;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __108__CloudMediaServicesPlayerInterface_getCloudExtensionConfigurationFor_homeUserID_endpointID_withCompletion___block_invoke;
  v17[3] = &unk_278DDCF50;
  v18 = v10;
  v12 = v10;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v17];
  [v16 getCloudExtensionConfigurationFor:v15 homeUserID:v14 endpointID:v13 withCompletion:v12];
}

uint64_t __108__CloudMediaServicesPlayerInterface_getCloudExtensionConfigurationFor_homeUserID_endpointID_withCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __41__CloudMediaServicesPlayerInterface_init__block_invoke_75_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2439AD000, a2, OS_LOG_TYPE_ERROR, "Error associating NSXPCConnection to remoteobject proxy %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end