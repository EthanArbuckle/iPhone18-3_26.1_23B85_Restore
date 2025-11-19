@interface CNKScreenSharingStateMonitorFactory
- (CNKScreenSharingStateMonitorProtocol)sharedMonitor;
- (id)makeScreenSharingStateMonitorWithCall:(id)a3;
@end

@implementation CNKScreenSharingStateMonitorFactory

- (CNKScreenSharingStateMonitorProtocol)sharedMonitor
{
  v2 = self;
  v3 = static ScreenSharingStateMonitor.sharedMonitor.getter();

  return v3;
}

- (id)makeScreenSharingStateMonitorWithCall:(id)a3
{
  v5 = a3;
  v6 = self;
  v7 = CNKScreenSharingStateMonitorFactory.makeScreenSharingStateMonitor(using:)(a3);

  return v7;
}

@end