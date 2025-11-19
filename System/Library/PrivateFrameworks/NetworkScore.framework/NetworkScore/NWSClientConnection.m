@interface NWSClientConnection
+ (id)shared;
- (void)activateConnectionOn:(id)a3;
@end

@implementation NWSClientConnection

+ (id)shared
{
  if (shared_once != -1)
  {
    +[NWSClientConnection shared];
  }

  v3 = shared_clientConnection;

  return v3;
}

uint64_t __29__NWSClientConnection_shared__block_invoke()
{
  shared_clientConnection = objc_alloc_init(NWSClientConnection);

  return MEMORY[0x2821F96F8]();
}

- (void)activateConnectionOn:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.networkscored" options:4096];
  [(NWSClientConnection *)self setConnection:v5];

  v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286D32020];
  v7 = [(NWSClientConnection *)self connection];
  [v7 setRemoteObjectInterface:v6];

  v8 = [(NWSClientConnection *)self connection];
  [v8 setInterruptionHandler:&__block_literal_global_96];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__NWSClientConnection_activateConnectionOn___block_invoke_97;
  v13[3] = &unk_27996D048;
  v13[4] = self;
  v9 = MEMORY[0x25F874C90](v13);
  v10 = [(NWSClientConnection *)self connection];
  [v10 setInvalidationHandler:v9];

  if (v4)
  {
    v11 = [(NWSClientConnection *)self connection];
    [v11 _setQueue:v4];
  }

  v12 = [(NWSClientConnection *)self connection];
  [v12 activate];
}

void __44__NWSClientConnection_activateConnectionOn___block_invoke()
{
  v0 = nws_log_obj();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_25BA15000, v0, OS_LOG_TYPE_DEFAULT, "daemon connection was interrupted", v1, 2u);
  }
}

uint64_t __44__NWSClientConnection_activateConnectionOn___block_invoke_97(uint64_t a1)
{
  v2 = nws_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25BA15000, v2, OS_LOG_TYPE_DEFAULT, "connection was invalidated", v5, 2u);
  }

  v3 = [*(a1 + 32) connection];
  [v3 invalidate];

  return [*(a1 + 32) setConnection:0];
}

@end