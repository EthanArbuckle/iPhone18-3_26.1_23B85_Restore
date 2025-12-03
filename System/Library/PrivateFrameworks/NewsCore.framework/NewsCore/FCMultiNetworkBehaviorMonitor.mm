@interface FCMultiNetworkBehaviorMonitor
- (FCMultiNetworkBehaviorMonitor)init;
- (void)addMonitor:(id)monitor;
- (void)logNetworkEvent:(id)event;
- (void)removeMonitor:(id)monitor;
@end

@implementation FCMultiNetworkBehaviorMonitor

- (FCMultiNetworkBehaviorMonitor)init
{
  v6.receiver = self;
  v6.super_class = FCMultiNetworkBehaviorMonitor;
  v2 = [(FCMultiNetworkBehaviorMonitor *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69B68E0]) initWithDelegate:0 delegateProtocol:&unk_1F2E8B4E8 options:1];
    multiDelegate = v2->_multiDelegate;
    v2->_multiDelegate = v3;
  }

  return v2;
}

- (void)addMonitor:(id)monitor
{
  monitorCopy = monitor;
  multiDelegate = [(FCMultiNetworkBehaviorMonitor *)self multiDelegate];
  [multiDelegate addDelegate:monitorCopy];
}

- (void)removeMonitor:(id)monitor
{
  monitorCopy = monitor;
  multiDelegate = [(FCMultiNetworkBehaviorMonitor *)self multiDelegate];
  [multiDelegate removeDelegate:monitorCopy];
}

- (void)logNetworkEvent:(id)event
{
  eventCopy = event;
  multiDelegate = [(FCMultiNetworkBehaviorMonitor *)self multiDelegate];
  delegate = [multiDelegate delegate];
  [delegate logNetworkEvent:eventCopy];
}

@end