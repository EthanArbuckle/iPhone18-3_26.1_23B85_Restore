@interface ScreenSharingStateMonitor
- (CGSize)currentlySharingParticipantContentsSize;
- (TUCall)call;
- (void)setCall:(id)a3;
@end

@implementation ScreenSharingStateMonitor

- (TUCall)call
{
  v2 = ScreenSharingStateMonitor.call.getter();

  return v2;
}

- (void)setCall:(id)a3
{
  v5 = a3;
  v6 = self;
  ScreenSharingStateMonitor.call.setter(a3);
}

- (CGSize)currentlySharingParticipantContentsSize
{
  v2 = self;
  v3 = ScreenSharingStateMonitor.currentlySharingParticipantContentsSize.getter();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

@end