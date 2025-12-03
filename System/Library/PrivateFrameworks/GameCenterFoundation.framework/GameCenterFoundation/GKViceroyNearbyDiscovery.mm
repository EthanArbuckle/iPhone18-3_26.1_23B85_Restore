@interface GKViceroyNearbyDiscovery
- (GKViceroyNearbyDiscovery)init;
- (id)startAdvertisingWithDiscoveryInfo:(id)info;
- (void)forgetParticipant:(id)participant deviceID:(id)d;
- (void)sendDataToParticipant:(id)participant deviceID:(id)d data:(id)data handler:(id)handler;
- (void)setupWithPlayerFoundHandler:(id)handler playerLostHandler:(id)lostHandler receiveDataHandler:(id)dataHandler;
- (void)startBrowsingWithPlayerID:(id)d;
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

- (void)setupWithPlayerFoundHandler:(id)handler playerLostHandler:(id)lostHandler receiveDataHandler:(id)dataHandler
{
  dataHandlerCopy = dataHandler;
  lostHandlerCopy = lostHandler;
  handlerCopy = handler;
  discovery = [(GKViceroyNearbyDiscovery *)self discovery];
  [discovery setPlayerFoundHandler:handlerCopy];

  discovery2 = [(GKViceroyNearbyDiscovery *)self discovery];
  [discovery2 setPlayerLostHandler:lostHandlerCopy];

  discovery3 = [(GKViceroyNearbyDiscovery *)self discovery];
  [discovery3 setReceiveDataHandler:dataHandlerCopy];
}

- (void)startBrowsingWithPlayerID:(id)d
{
  dCopy = d;
  discovery = [(GKViceroyNearbyDiscovery *)self discovery];
  [discovery startBrowsingLocalPlayer:dCopy];
}

- (void)stopBrowsing
{
  discovery = [(GKViceroyNearbyDiscovery *)self discovery];
  [discovery stopBrowsing];
}

- (id)startAdvertisingWithDiscoveryInfo:(id)info
{
  infoCopy = info;
  discovery = [(GKViceroyNearbyDiscovery *)self discovery];
  v6 = [discovery startAdvertisingLocalPlayer:0 discoveryInfo:infoCopy];

  return v6;
}

- (void)stopAdvertising
{
  discovery = [(GKViceroyNearbyDiscovery *)self discovery];
  [discovery stopAdvertising];
}

- (void)forgetParticipant:(id)participant deviceID:(id)d
{
  dCopy = d;
  participantCopy = participant;
  discovery = [(GKViceroyNearbyDiscovery *)self discovery];
  [discovery forgetParticipant:participantCopy deviceID:dCopy];
}

- (void)sendDataToParticipant:(id)participant deviceID:(id)d data:(id)data handler:(id)handler
{
  handlerCopy = handler;
  dataCopy = data;
  dCopy = d;
  participantCopy = participant;
  discovery = [(GKViceroyNearbyDiscovery *)self discovery];
  [discovery sendDataToParticipant:participantCopy deviceID:dCopy data:dataCopy withCompletionHandler:handlerCopy];
}

@end