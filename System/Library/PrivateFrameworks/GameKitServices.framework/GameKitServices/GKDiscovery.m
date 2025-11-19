@interface GKDiscovery
- (GKDiscovery)initWithDomain:(id)a3 type:(id)a4;
- (id)playerFoundHandler;
- (id)playerLostHandler;
- (id)receiveDataHandler;
- (void)dealloc;
- (void)setPlayerFoundHandler:(id)a3;
- (void)setPlayerLostHandler:(id)a3;
- (void)setReceiveDataHandler:(id)a3;
@end

@implementation GKDiscovery

- (GKDiscovery)initWithDomain:(id)a3 type:(id)a4
{
  v8.receiver = self;
  v8.super_class = GKDiscovery;
  v6 = [(GKDiscovery *)&v8 init];
  if (v6)
  {
    VRTraceReset();
    v6->_manager = [[GKDiscoveryManager alloc] initWithDomain:a3 type:a4];
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
  v2 = [(GKDiscovery *)self manager];

  return [(GKDiscoveryManager *)v2 playerFoundHandler];
}

- (void)setPlayerFoundHandler:(id)a3
{
  v4 = [(GKDiscovery *)self manager];

  [(GKDiscoveryManager *)v4 setPlayerFoundHandler:a3];
}

- (id)playerLostHandler
{
  v2 = [(GKDiscovery *)self manager];

  return [(GKDiscoveryManager *)v2 playerLostHandler];
}

- (void)setPlayerLostHandler:(id)a3
{
  v4 = [(GKDiscovery *)self manager];

  [(GKDiscoveryManager *)v4 setPlayerLostHandler:a3];
}

- (id)receiveDataHandler
{
  v2 = [(GKDiscovery *)self manager];

  return [(GKDiscoveryManager *)v2 receiveDataHandler];
}

- (void)setReceiveDataHandler:(id)a3
{
  v4 = [(GKDiscovery *)self manager];

  [(GKDiscoveryManager *)v4 setReceiveDataHandler:a3];
}

@end