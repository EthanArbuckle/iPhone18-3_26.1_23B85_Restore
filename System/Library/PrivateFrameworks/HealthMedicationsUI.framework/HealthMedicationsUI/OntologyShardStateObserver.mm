@interface OntologyShardStateObserver
- (void)ontologyStoreDidReconnect:(id)reconnect;
@end

@implementation OntologyShardStateObserver

- (void)ontologyStoreDidReconnect:(id)reconnect
{
  reconnectCopy = reconnect;

  _s19HealthMedicationsUI26OntologyShardStateObserverC13ontologyStore12didReconnectySo010HKOntologyI0C_tF_0();
}

@end