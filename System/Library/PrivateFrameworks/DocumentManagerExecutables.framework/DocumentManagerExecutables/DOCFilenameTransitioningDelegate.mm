@interface DOCFilenameTransitioningDelegate
- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitioningDelegate)init;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
@end

@implementation DOCFilenameTransitioningDelegate

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = DOCFilenameTransitioningDelegate.animationController(forDismissed:)();

  return v6;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  presentingControllerCopy = presentingController;
  sourceControllerCopy = sourceController;
  selfCopy = self;
  v12 = DOCFilenameTransitioningDelegate.animationController(forDismissed:)();

  return v12;
}

- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitioningDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end