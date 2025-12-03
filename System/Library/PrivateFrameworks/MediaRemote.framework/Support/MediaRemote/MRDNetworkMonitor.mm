@interface MRDNetworkMonitor
- (MRDNetworkMonitor)init;
- (void)cancel;
- (void)startWithQueue:(id)queue;
@end

@implementation MRDNetworkMonitor

- (void)startWithQueue:(id)queue
{
  v4 = *(&self->super.isa + OBJC_IVAR___MRDNetworkMonitor_monitor);
  queueCopy = queue;
  selfCopy = self;
  NWPathMonitor.start(queue:)();
}

- (void)cancel
{
  v2 = *(&self->super.isa + OBJC_IVAR___MRDNetworkMonitor_monitor);
  selfCopy = self;
  NWPathMonitor.cancel()();
}

- (MRDNetworkMonitor)init
{
  v3 = OBJC_IVAR___MRDNetworkMonitor_monitor;
  v4 = type metadata accessor for NWPathMonitor();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(&self->super.isa + v3) = NWPathMonitor.init()();
  v8.receiver = self;
  v8.super_class = type metadata accessor for NetworkMonitor();
  return [(MRDNetworkMonitor *)&v8 init];
}

@end