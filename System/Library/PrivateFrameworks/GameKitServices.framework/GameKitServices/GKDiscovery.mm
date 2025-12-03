@interface GKDiscovery
- (GKDiscovery)initWithDomain:(id)domain type:(id)type;
- (id)playerFoundHandler;
- (id)playerLostHandler;
- (id)receiveDataHandler;
- (void)dealloc;
- (void)setPlayerFoundHandler:(id)handler;
- (void)setPlayerLostHandler:(id)handler;
- (void)setReceiveDataHandler:(id)handler;
@end

@implementation GKDiscovery

- (GKDiscovery)initWithDomain:(id)domain type:(id)type
{
  v8.receiver = self;
  v8.super_class = GKDiscovery;
  v6 = [(GKDiscovery *)&v8 init];
  if (v6)
  {
    VRTraceReset();
    v6->_manager = [[GKDiscoveryManager alloc] initWithDomain:domain type:type];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GKDiscovery;
  [(GKDiscovery *)&v3 dealloc];
}

- (id)playerFoundHandler
{
  manager = [(GKDiscovery *)self manager];

  return [(GKDiscoveryManager *)manager playerFoundHandler];
}

- (void)setPlayerFoundHandler:(id)handler
{
  manager = [(GKDiscovery *)self manager];

  [(GKDiscoveryManager *)manager setPlayerFoundHandler:handler];
}

- (id)playerLostHandler
{
  manager = [(GKDiscovery *)self manager];

  return [(GKDiscoveryManager *)manager playerLostHandler];
}

- (void)setPlayerLostHandler:(id)handler
{
  manager = [(GKDiscovery *)self manager];

  [(GKDiscoveryManager *)manager setPlayerLostHandler:handler];
}

- (id)receiveDataHandler
{
  manager = [(GKDiscovery *)self manager];

  return [(GKDiscoveryManager *)manager receiveDataHandler];
}

- (void)setReceiveDataHandler:(id)handler
{
  manager = [(GKDiscovery *)self manager];

  [(GKDiscoveryManager *)manager setReceiveDataHandler:handler];
}

@end