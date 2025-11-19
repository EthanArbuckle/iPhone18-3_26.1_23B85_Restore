@interface MDMServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (MDMServiceDelegate)initWithServer:(id)a3;
@end

@implementation MDMServiceDelegate

- (MDMServiceDelegate)initWithServer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MDMServiceDelegate;
  v6 = [(MDMServiceDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_server, a3);
  }

  return v7;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [(MDMServiceDelegate *)self server];
  v7 = [v6 channelType];

  if (v7 == 1)
  {
    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28685EC28];
    MDMUserXPCProtocolInitialize();
  }

  else if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28685EB08];
    MDMXPCProtocolInitialize();
  }

  [v5 setExportedInterface:v8];
  v9 = [MDMServicerCore alloc];
  v10 = [(MDMServiceDelegate *)self server];
  v11 = [(MDMServicerCore *)v9 initWithXPCConnection:v5 server:v10];
  [v5 setExportedObject:v11];

  [v5 resume];
  v12 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_2561F5000, v12, OS_LOG_TYPE_DEFAULT, "Accepted new connection.", v14, 2u);
  }

  return 1;
}

@end