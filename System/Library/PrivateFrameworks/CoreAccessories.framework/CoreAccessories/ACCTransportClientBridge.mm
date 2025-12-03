@interface ACCTransportClientBridge
+ (id)sharedBridge;
- (ACCTransportClientBridge)init;
- (void)transportClient:(id)client propertiesDidChange:(id)change forConnectionWithUUID:(id)d previousProperties:(id)properties;
- (void)transportClient:(id)client propertiesDidChange:(id)change forEndpointWithUUID:(id)d previousProperties:(id)properties connectionUUID:(id)iD;
- (void)transportClientServerDisconnected:(id)disconnected;
@end

@implementation ACCTransportClientBridge

+ (id)sharedBridge
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ACCTransportClientBridge_sharedBridge__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
    _init = [[ACCTransportClient alloc] _init];
    transportClient = v2->_transportClient;
    v2->_transportClient = _init;

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

- (void)transportClient:(id)client propertiesDidChange:(id)change forConnectionWithUUID:(id)d previousProperties:(id)properties
{
  changeCopy = change;
  dCopy = d;
  propertiesCopy = properties;
  connectionPropertiesChangedHandler = [(ACCTransportClientBridge *)self connectionPropertiesChangedHandler];

  if (connectionPropertiesChangedHandler)
  {
    connectionPropertiesChangedHandler2 = [(ACCTransportClientBridge *)self connectionPropertiesChangedHandler];
    (connectionPropertiesChangedHandler2)[2](connectionPropertiesChangedHandler2, dCopy, changeCopy, propertiesCopy);
  }
}

- (void)transportClient:(id)client propertiesDidChange:(id)change forEndpointWithUUID:(id)d previousProperties:(id)properties connectionUUID:(id)iD
{
  changeCopy = change;
  dCopy = d;
  propertiesCopy = properties;
  iDCopy = iD;
  endpointPropertiesChangedHandler = [(ACCTransportClientBridge *)self endpointPropertiesChangedHandler];

  if (endpointPropertiesChangedHandler)
  {
    endpointPropertiesChangedHandler2 = [(ACCTransportClientBridge *)self endpointPropertiesChangedHandler];
    (endpointPropertiesChangedHandler2)[2](endpointPropertiesChangedHandler2, dCopy, changeCopy, propertiesCopy, iDCopy);
  }
}

- (void)transportClientServerDisconnected:(id)disconnected
{
  serverDisconnectedHandler = [(ACCTransportClientBridge *)self serverDisconnectedHandler];

  if (serverDisconnectedHandler)
  {
    serverDisconnectedHandler2 = [(ACCTransportClientBridge *)self serverDisconnectedHandler];
    serverDisconnectedHandler2[2]();
  }
}

uint64_t __40__ACCTransportClientBridge_sharedBridge__block_invoke(uint64_t a1)
{
  sharedBridge_sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

@end