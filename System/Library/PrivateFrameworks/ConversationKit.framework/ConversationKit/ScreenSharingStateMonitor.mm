@interface ScreenSharingStateMonitor
- (CGSize)currentlySharingParticipantContentsSize;
- (TUCall)call;
- (void)setCall:(id)call;
@end

@implementation ScreenSharingStateMonitor

- (TUCall)call
{
  v2 = ScreenSharingStateMonitor.call.getter();

  return v2;
}

- (void)setCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  ScreenSharingStateMonitor.call.setter(call);
}

- (CGSize)currentlySharingParticipantContentsSize
{
  selfCopy = self;
  v3 = ScreenSharingStateMonitor.currentlySharingParticipantContentsSize.getter();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

@end