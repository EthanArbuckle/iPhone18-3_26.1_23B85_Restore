@interface ModalCardPresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (_TtC7NewsUI231ModalCardPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (void)dismissModal;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionWillBegin;
@end

@implementation ModalCardPresentationController

- (_TtC7NewsUI231ModalCardPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  v5 = a3;
  v6 = a4;
  return sub_218C051FC(v5, a4);
}

- (CGRect)frameOfPresentedViewInContainerView
{
  v2 = self;
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
  v2 = self;
  sub_218C055B0();
}

- (void)dismissalTransitionWillBegin
{
  v2 = self;
  sub_218C05B60();
}

- (void)dismissModal
{
  v3 = self;
  v2 = [(ModalCardPresentationController *)v3 presentingViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

@end