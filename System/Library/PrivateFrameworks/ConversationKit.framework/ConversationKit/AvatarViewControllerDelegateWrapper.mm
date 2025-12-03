@interface AvatarViewControllerDelegateWrapper
- (id)hostingViewControllerForController:(id)controller;
@end

@implementation AvatarViewControllerDelegateWrapper

- (id)hostingViewControllerForController:(id)controller
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v5 = AvatarViewControllerDelegateWrapper.hostingViewController(for:)();
  swift_unknownObjectRelease();

  return v5;
}

@end