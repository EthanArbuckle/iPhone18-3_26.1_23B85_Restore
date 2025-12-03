@interface DisplayLayerVisibilityObserver
- (void)screenSharingInteractionController:(id)controller didUpdateRemoteControlStatus:(BOOL)status;
- (void)screenSharingStateMonitor:(id)monitor didUpdateScreenSharingBroadcastingState:(BOOL)state;
@end

@implementation DisplayLayerVisibilityObserver

- (void)screenSharingStateMonitor:(id)monitor didUpdateScreenSharingBroadcastingState:(BOOL)state
{
  swift_unknownObjectRetain();

  DisplayLayerVisibilityObserver.screenSharingStateMonitor(_:didUpdateScreenSharingBroadcastingState:)();
  swift_unknownObjectRelease();
}

- (void)screenSharingInteractionController:(id)controller didUpdateRemoteControlStatus:(BOOL)status
{
  swift_unknownObjectRetain();

  DisplayLayerVisibilityObserver.screenSharingInteractionController(_:didUpdateRemoteControlStatus:)();
  swift_unknownObjectRelease();
}

@end