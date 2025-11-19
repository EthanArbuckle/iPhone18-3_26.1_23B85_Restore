@interface GKViceroyNearbyDiscovery
- (GKViceroyNearbyDiscovery)init;
- (id)startAdvertisingWithDiscoveryInfo:(id)a3;
- (void)forgetParticipant:(id)a3 deviceID:(id)a4;
- (void)sendDataToParticipant:(id)a3 deviceID:(id)a4 data:(id)a5 handler:(id)a6;
- (void)setupWithPlayerFoundHandler:(id)a3 playerLostHandler:(id)a4 receiveDataHandler:(id)a5;
- (void)startBrowsingWithPlayerID:(id)a3;
- (void)stopAdvertising;
- (void)stopBrowsing;
@end

@implementation GKViceroyNearbyDiscovery

- (GKViceroyNearbyDiscovery)init
{
  v6.receiver = self;
  v6.super_class = GKViceroyNearbyDiscovery;
  v2 = [(GKViceroyNearbyDiscovery *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D0C930]);
    discovery = v2->_discovery;
    v2->_discovery = v3;
  }

  return v2;
}

- (void)setupWithPlayerFoundHandler:(id)a3 playerLostHandler:(id)a4 receiveDataHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(GKViceroyNearbyDiscovery *)self discovery];
  [v11 setPlayerFoundHandler:v10];

  v12 = [(GKViceroyNearbyDiscovery *)self discovery];
  [v12 setPlayerLostHandler:v9];

  v13 = [(GKViceroyNearbyDiscovery *)self discovery];
  [v13 setReceiveDataHandler:v8];
}

- (void)startBrowsingWithPlayerID:(id)a3
{
  v4 = a3;
  v5 = [(GKViceroyNearbyDiscovery *)self discovery];
  [v5 startBrowsingLocalPlayer:v4];
}

- (void)stopBrowsing
{
  v2 = [(GKViceroyNearbyDiscovery *)self discovery];
  [v2 stopBrowsing];
}

- (id)startAdvertisingWithDiscoveryInfo:(id)a3
{
  v4 = a3;
  v5 = [(GKViceroyNearbyDiscovery *)self discovery];
  v6 = [v5 startAdvertisingLocalPlayer:0 discoveryInfo:v4];

  return v6;
}

- (void)stopAdvertising
{
  v2 = [(GKViceroyNearbyDiscovery *)self discovery];
  [v2 stopAdvertising];
}

- (void)forgetParticipant:(id)a3 deviceID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKViceroyNearbyDiscovery *)self discovery];
  [v8 forgetParticipant:v7 deviceID:v6];
}

- (void)sendDataToParticipant:(id)a3 deviceID:(id)a4 data:(id)a5 handler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(GKViceroyNearbyDiscovery *)self discovery];
  [v14 sendDataToParticipant:v13 deviceID:v12 data:v11 withCompletionHandler:v10];
}

@end