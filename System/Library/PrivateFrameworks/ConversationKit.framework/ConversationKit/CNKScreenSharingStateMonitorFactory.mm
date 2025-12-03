@interface CNKScreenSharingStateMonitorFactory
- (CNKScreenSharingStateMonitorProtocol)sharedMonitor;
- (id)makeScreenSharingStateMonitorWithCall:(id)call;
@end

@implementation CNKScreenSharingStateMonitorFactory

- (CNKScreenSharingStateMonitorProtocol)sharedMonitor
{
  selfCopy = self;
  v3 = static ScreenSharingStateMonitor.sharedMonitor.getter();

  return v3;
}

- (id)makeScreenSharingStateMonitorWithCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  v7 = CNKScreenSharingStateMonitorFactory.makeScreenSharingStateMonitor(using:)(call);

  return v7;
}

@end