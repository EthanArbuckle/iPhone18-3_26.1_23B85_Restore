@interface CNKScreenSharingInteractionControllerFactory
- (CNKScreenSharingInteractionControllerProtocol)sharedController;
@end

@implementation CNKScreenSharingInteractionControllerFactory

- (CNKScreenSharingInteractionControllerProtocol)sharedController
{
  selfCopy = self;
  v3 = static ScreenSharingInteractionController.shared.getter();

  return v3;
}

@end