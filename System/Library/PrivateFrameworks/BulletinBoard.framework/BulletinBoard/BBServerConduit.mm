@interface BBServerConduit
+ (id)clientInterface;
+ (id)serverInterface;
+ (id)sharedConduit;
- (BBServerConduit)init;
- (void)dealloc;
- (void)invalidate;
- (void)sendMessageToDataProviderSectionID:(id)d name:(id)name userInfo:(id)info;
- (void)weeAppWithBundleID:(id)d getHiddenFromUser:(id)user;
@end

@implementation BBServerConduit

+ (id)serverInterface
{
  if (serverInterface_onceToken_0 != -1)
  {
    +[BBServerConduit serverInterface];
  }

  v3 = serverInterface___interface_0;

  return v3;
}

void __34__BBServerConduit_serverInterface__block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285433F50];
  v1 = serverInterface___interface_0;
  serverInterface___interface_0 = v0;

  v2 = serverInterface___interface_0;
  v3 = BBAllowedClasses();
  [v2 setClasses:v3 forSelector:sel_sendMessageToDataProviderSectionID_name_userInfo_ argumentIndex:2 ofReply:0];
}

+ (id)clientInterface
{
  if (clientInterface_onceToken_0 != -1)
  {
    +[BBServerConduit clientInterface];
  }

  v3 = clientInterface___interface_0;

  return v3;
}

uint64_t __34__BBServerConduit_clientInterface__block_invoke()
{
  clientInterface___interface_0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28543F448];

  return MEMORY[0x2821F96F8]();
}

+ (id)sharedConduit
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__BBServerConduit_sharedConduit__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedConduit_onceToken != -1)
  {
    dispatch_once(&sharedConduit_onceToken, block);
  }

  v2 = sharedConduit___SharedConduit;

  return v2;
}

uint64_t __32__BBServerConduit_sharedConduit__block_invoke(uint64_t a1)
{
  sharedConduit___SharedConduit = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (BBServerConduit)init
{
  v10.receiver = self;
  v10.super_class = BBServerConduit;
  v2 = [(BBServerConduit *)&v10 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.bulletinboard.serverconduitconnection" options:0];
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = v2->_connection;
    clientInterface = [objc_opt_class() clientInterface];
    [(NSXPCConnection *)v5 setExportedInterface:clientInterface];

    [(NSXPCConnection *)v2->_connection setExportedObject:v2];
    v7 = v2->_connection;
    serverInterface = [objc_opt_class() serverInterface];
    [(NSXPCConnection *)v7 setRemoteObjectInterface:serverInterface];

    [(NSXPCConnection *)v2->_connection setInterruptionHandler:&__block_literal_global_59];
    [(NSXPCConnection *)v2->_connection setInvalidationHandler:&__block_literal_global_62];
    [(NSXPCConnection *)v2->_connection resume];
  }

  return v2;
}

void __23__BBServerConduit_init__block_invoke()
{
  v0 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_241EFF000, v0, OS_LOG_TYPE_DEFAULT, "BBServerConduit connection interrupted.", v1, 2u);
  }
}

void __23__BBServerConduit_init__block_invoke_60()
{
  v0 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_241EFF000, v0, OS_LOG_TYPE_DEFAULT, "BBServerConduit connection invalidated.", v1, 2u);
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = BBServerConduit;
  [(BBServerConduit *)&v3 dealloc];
}

- (void)invalidate
{
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;
}

- (void)sendMessageToDataProviderSectionID:(id)d name:(id)name userInfo:(id)info
{
  connection = self->_connection;
  infoCopy = info;
  nameCopy = name;
  dCopy = d;
  remoteObjectProxy = [(NSXPCConnection *)connection remoteObjectProxy];
  [remoteObjectProxy sendMessageToDataProviderSectionID:dCopy name:nameCopy userInfo:infoCopy];
}

- (void)weeAppWithBundleID:(id)d getHiddenFromUser:(id)user
{
  userCopy = user;
  connection = self->_connection;
  dCopy = d;
  remoteObjectProxy = [(NSXPCConnection *)connection remoteObjectProxy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__BBServerConduit_weeAppWithBundleID_getHiddenFromUser___block_invoke;
  v11[3] = &unk_278D2BB08;
  v12 = userCopy;
  v10 = userCopy;
  [remoteObjectProxy weeAppWithBundleID:dCopy getHiddenFromUser:v11];
}

void __56__BBServerConduit_weeAppWithBundleID_getHiddenFromUser___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), [v6 BOOLValue]);
  }

  else
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), 0);
  }
}

@end