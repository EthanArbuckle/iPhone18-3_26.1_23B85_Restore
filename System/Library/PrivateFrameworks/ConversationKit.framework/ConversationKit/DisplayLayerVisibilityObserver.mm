@interface DisplayLayerVisibilityObserver
- (void)screenSharingInteractionController:(id)a3 didUpdateRemoteControlStatus:(BOOL)a4;
- (void)screenSharingStateMonitor:(id)a3 didUpdateScreenSharingBroadcastingState:(BOOL)a4;
@end

@implementation DisplayLayerVisibilityObserver

- (void)screenSharingStateMonitor:(id)a3 didUpdateScreenSharingBroadcastingState:(BOOL)a4
{
  swift_unknownObjectRetain();

  DisplayLayerVisibilityObserver.screenSharingStateMonitor(_:didUpdateScreenSharingBroadcastingState:)();
  swift_unknownObjectRelease();
}

- (void)screenSharingInteractionController:(id)a3 didUpdateRemoteControlStatus:(BOOL)a4
{
  swift_unknownObjectRetain();

  DisplayLayerVisibilityObserver.screenSharingInteractionController(_:didUpdateRemoteControlStatus:)();
  swift_unknownObjectRelease();
}

@end