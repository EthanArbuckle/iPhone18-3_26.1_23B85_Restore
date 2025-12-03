@interface ModalCardPresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (_TtC7NewsUI231ModalCardPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (void)dismissModal;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionWillBegin;
@end

@implementation ModalCardPresentationController

- (_TtC7NewsUI231ModalCardPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  return sub_218C051FC(controllerCopy, viewController);
}

- (CGRect)frameOfPresentedViewInContainerView
{
  selfCopy = self;
  v3 = sub_218C053D4();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (void)presentationTransitionWillBegin
{
  selfCopy = self;
  sub_218C055B0();
}

- (void)dismissalTransitionWillBegin
{
  selfCopy = self;
  sub_218C05B60();
}

- (void)dismissModal
{
  selfCopy = self;
  presentingViewController = [(ModalCardPresentationController *)selfCopy presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

@end