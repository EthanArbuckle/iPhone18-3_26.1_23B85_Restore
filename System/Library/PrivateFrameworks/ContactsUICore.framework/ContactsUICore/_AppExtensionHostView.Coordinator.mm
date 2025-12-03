@interface _AppExtensionHostView.Coordinator
- (void)hostViewControllerDidActivate:(id)activate;
@end

@implementation _AppExtensionHostView.Coordinator

- (void)hostViewControllerDidActivate:(id)activate
{
  activateCopy = activate;
  selfCopy = self;
  sub_1A32BC870(activateCopy);
}

@end