@interface GKTransportMonitor
- (GKTransportMonitorDelegate)clientDelegate;
- (void)setClientDelegate:(id)delegate;
- (void)stopMonitoringAll;
@end

@implementation GKTransportMonitor

- (GKTransportMonitorDelegate)clientDelegate
{
  v2 = TransportMonitor.clientDelegate.getter();

  return v2;
}

- (void)setClientDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  TransportMonitor.clientDelegate.setter();
}

- (void)stopMonitoringAll
{
  selfCopy = self;
  TransportMonitor.stopMonitoringAll()();
}

@end