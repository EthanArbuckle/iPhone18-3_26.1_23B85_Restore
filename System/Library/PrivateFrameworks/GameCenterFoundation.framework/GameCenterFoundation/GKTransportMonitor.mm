@interface GKTransportMonitor
- (GKTransportMonitorDelegate)clientDelegate;
- (void)setClientDelegate:(id)a3;
- (void)stopMonitoringAll;
@end

@implementation GKTransportMonitor

- (GKTransportMonitorDelegate)clientDelegate
{
  v2 = TransportMonitor.clientDelegate.getter();

  return v2;
}

- (void)setClientDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  TransportMonitor.clientDelegate.setter();
}

- (void)stopMonitoringAll
{
  v2 = self;
  TransportMonitor.stopMonitoringAll()();
}

@end