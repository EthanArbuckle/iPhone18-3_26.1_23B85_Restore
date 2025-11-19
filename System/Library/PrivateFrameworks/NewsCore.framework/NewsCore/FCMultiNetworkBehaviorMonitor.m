@interface FCMultiNetworkBehaviorMonitor
- (FCMultiNetworkBehaviorMonitor)init;
- (void)addMonitor:(id)a3;
- (void)logNetworkEvent:(id)a3;
- (void)removeMonitor:(id)a3;
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

- (void)addMonitor:(id)a3
{
  v4 = a3;
  v5 = [(FCMultiNetworkBehaviorMonitor *)self multiDelegate];
  [v5 addDelegate:v4];
}

- (void)removeMonitor:(id)a3
{
  v4 = a3;
  v5 = [(FCMultiNetworkBehaviorMonitor *)self multiDelegate];
  [v5 removeDelegate:v4];
}

- (void)logNetworkEvent:(id)a3
{
  v4 = a3;
  v6 = [(FCMultiNetworkBehaviorMonitor *)self multiDelegate];
  v5 = [v6 delegate];
  [v5 logNetworkEvent:v4];
}

@end