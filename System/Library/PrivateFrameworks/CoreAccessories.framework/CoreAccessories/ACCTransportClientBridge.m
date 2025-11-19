@interface ACCTransportClientBridge
+ (id)sharedBridge;
- (ACCTransportClientBridge)init;
- (void)transportClient:(id)a3 propertiesDidChange:(id)a4 forConnectionWithUUID:(id)a5 previousProperties:(id)a6;
- (void)transportClient:(id)a3 propertiesDidChange:(id)a4 forEndpointWithUUID:(id)a5 previousProperties:(id)a6 connectionUUID:(id)a7;
- (void)transportClientServerDisconnected:(id)a3;
@end

@implementation ACCTransportClientBridge

+ (id)sharedBridge
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ACCTransportClientBridge_sharedBridge__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedBridge_once != -1)
  {
    dispatch_once(&sharedBridge_once, block);
  }

  v2 = sharedBridge_sharedInstance;

  return v2;
}

- (ACCTransportClientBridge)init
{
  v10.receiver = self;
  v10.super_class = ACCTransportClientBridge;
  v2 = [(ACCTransportClientBridge *)&v10 init];
  if (v2)
  {
    v3 = [[ACCTransportClient alloc] _init];
    transportClient = v2->_transportClient;
    v2->_transportClient = v3;

    [(ACCTransportClient *)v2->_transportClient setDelegate:v2];
    connectionAuthStatusChangedHandler = v2->_connectionAuthStatusChangedHandler;
    v2->_connectionAuthStatusChangedHandler = 0;

    connectionPropertiesChangedHandler = v2->_connectionPropertiesChangedHandler;
    v2->_connectionPropertiesChangedHandler = 0;

    endpointPropertiesChangedHandler = v2->_endpointPropertiesChangedHandler;
    v2->_endpointPropertiesChangedHandler = 0;

    serverDisconnectedHandler = v2->_serverDisconnectedHandler;
    v2->_serverDisconnectedHandler = 0;
  }

  return v2;
}

- (void)transportClient:(id)a3 propertiesDidChange:(id)a4 forConnectionWithUUID:(id)a5 previousProperties:(id)a6
{
  v13 = a4;
  v9 = a5;
  v10 = a6;
  v11 = [(ACCTransportClientBridge *)self connectionPropertiesChangedHandler];

  if (v11)
  {
    v12 = [(ACCTransportClientBridge *)self connectionPropertiesChangedHandler];
    (v12)[2](v12, v9, v13, v10);
  }
}

- (void)transportClient:(id)a3 propertiesDidChange:(id)a4 forEndpointWithUUID:(id)a5 previousProperties:(id)a6 connectionUUID:(id)a7
{
  v16 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = [(ACCTransportClientBridge *)self endpointPropertiesChangedHandler];

  if (v14)
  {
    v15 = [(ACCTransportClientBridge *)self endpointPropertiesChangedHandler];
    (v15)[2](v15, v11, v16, v12, v13);
  }
}

- (void)transportClientServerDisconnected:(id)a3
{
  v4 = [(ACCTransportClientBridge *)self serverDisconnectedHandler];

  if (v4)
  {
    v5 = [(ACCTransportClientBridge *)self serverDisconnectedHandler];
    v5[2]();
  }
}

uint64_t __40__ACCTransportClientBridge_sharedBridge__block_invoke(uint64_t a1)
{
  sharedBridge_sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

@end