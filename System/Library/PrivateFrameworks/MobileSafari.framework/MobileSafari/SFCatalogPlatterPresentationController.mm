@interface SFCatalogPlatterPresentationController
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (CGRect)collapsedPlatterFrame;
- (CGRect)collapsedURLFieldFrame;
- (CGRect)expandedPlatterFrame;
- (CGRect)expandedURLFieldFrame;
- (CGSize)preferredPresentedViewContentSize;
- (NSDirectionalEdgeInsets)expandedURLFieldPadding;
- (SFCatalogPlatterPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (SFCommandForwardingView)borrowedPlatter;
- (SFTouchDownGestureRecognizer)dismissRecognizer;
- (UIView)borrowedURLFieldView;
- (UIView)innerContainerView;
- (double)horizontalOutset;
- (void)containerViewWillLayoutSubviews;
- (void)dismiss:(id)dismiss;
- (void)dismissalTransitionDidEnd:(BOOL)end;
- (void)dismissalTransitionWillBegin;
- (void)layoutPresentedView;
- (void)presentationTransitionWillBegin;
- (void)setBackgroundView:(id)view;
- (void)setDismissRecognizer:(id)recognizer;
- (void)setInnerContainerViewController:(id)controller;
- (void)setPreferredPresentedViewContentSize:(CGSize)size;
- (void)setPresentedSuperview:(id)superview;
@end

@implementation SFCatalogPlatterPresentationController

- (NSDirectionalEdgeInsets)expandedURLFieldPadding
{
  v2 = *(self + OBJC_IVAR___SFCatalogPlatterPresentationController_expandedURLFieldPadding);
  v3 = *(self + OBJC_IVAR___SFCatalogPlatterPresentationController_expandedURLFieldPadding + 8);
  v4 = *(self + OBJC_IVAR___SFCatalogPlatterPresentationController_expandedURLFieldPadding + 16);
  v5 = *(self + OBJC_IVAR___SFCatalogPlatterPresentationController_expandedURLFieldPadding + 24);
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (void)setBackgroundView:(id)view
{
  v4 = *(self + OBJC_IVAR___SFCatalogPlatterPresentationController_backgroundView);
  *(self + OBJC_IVAR___SFCatalogPlatterPresentationController_backgroundView) = view;
  viewCopy = view;
}

- (UIView)borrowedURLFieldView
{
  selfCopy = self;
  barItemView = [(SFCatalogPlatterPresentationController *)selfCopy barItemView];
  if (barItemView)
  {
    v4 = barItemView;
    contentView = [(SFUnifiedBarItemView *)barItemView contentView];
  }

  else
  {
    contentView = 0;
  }

  return contentView;
}

- (SFCommandForwardingView)borrowedPlatter
{
  selfCopy = self;
  barItemView = [(SFCatalogPlatterPresentationController *)selfCopy barItemView];
  if (!barItemView)
  {
LABEL_4:

    goto LABEL_5;
  }

  v4 = barItemView;
  glassView = [(SFUnifiedBarItemView *)barItemView glassView];

  if (glassView)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    selfCopy = glassView;
    if (v6)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

LABEL_5:
  v6 = 0;
LABEL_6:

  return v6;
}

- (void)setInnerContainerViewController:(id)controller
{
  v4 = *(self + OBJC_IVAR___SFCatalogPlatterPresentationController_innerContainerViewController);
  *(self + OBJC_IVAR___SFCatalogPlatterPresentationController_innerContainerViewController) = controller;
  controllerCopy = controller;
}

- (UIView)innerContainerView
{
  selfCopy = self;
  innerContainerViewController = [(SFCatalogPlatterPresentationController *)selfCopy innerContainerViewController];
  view = [(UIViewController *)innerContainerViewController view];

  return view;
}

- (void)setPresentedSuperview:(id)superview
{
  v4 = *(self + OBJC_IVAR___SFCatalogPlatterPresentationController_presentedSuperview);
  *(self + OBJC_IVAR___SFCatalogPlatterPresentationController_presentedSuperview) = superview;
  superviewCopy = superview;
}

- (CGRect)collapsedURLFieldFrame
{
  selfCopy = self;
  barItemView = [(SFCatalogPlatterPresentationController *)selfCopy barItemView];
  if (barItemView)
  {
    v4 = barItemView;
    [(SFUnifiedBarItemView *)barItemView bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {

    v6 = 0.0;
    v8 = 0.0;
    v10 = 0.0;
    v12 = 0.0;
  }

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)expandedURLFieldFrame
{
  v2 = sub_18BAC8A30(self, a2, sub_18BAC8768);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)collapsedPlatterFrame
{
  v2 = sub_18BAC8A30(self, a2, sub_18BAC8904);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)expandedPlatterFrame
{
  v2 = sub_18BAC8A30(self, a2, sub_18BAC8A94);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (double)horizontalOutset
{
  selfCopy = self;
  [(SFCatalogPlatterPresentationController *)selfCopy minExpandedPlatterOutset];
  v4 = v3;
  [(SFCatalogPlatterPresentationController *)selfCopy preferredPresentedViewContentSize];
  v6 = v5;
  [(SFCatalogPlatterPresentationController *)selfCopy collapsedURLFieldFrame];
  Width = CGRectGetWidth(v9);

  result = (v6 - Width) * 0.5;
  if (v4 > result)
  {
    return v4;
  }

  return result;
}

- (CGSize)preferredPresentedViewContentSize
{
  v2 = (self + OBJC_IVAR___SFCatalogPlatterPresentationController_preferredPresentedViewContentSize);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setPreferredPresentedViewContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  SFCatalogPlatterPresentationController.preferredPresentedViewContentSize.setter(width, height);
}

- (SFTouchDownGestureRecognizer)dismissRecognizer
{
  selfCopy = self;
  v3 = sub_18BAC8F78();

  return v3;
}

- (void)setDismissRecognizer:(id)recognizer
{
  v4 = *(self + OBJC_IVAR___SFCatalogPlatterPresentationController____lazy_storage___dismissRecognizer);
  *(self + OBJC_IVAR___SFCatalogPlatterPresentationController____lazy_storage___dismissRecognizer) = recognizer;
  recognizerCopy = recognizer;
}

- (void)dismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_18BAC9058(dismissCopy);
}

- (void)presentationTransitionWillBegin
{
  selfCopy = self;
  SFCatalogPlatterPresentationController.presentationTransitionWillBegin()();
}

- (void)dismissalTransitionWillBegin
{
  selfCopy = self;
  SFCatalogPlatterPresentationController.dismissalTransitionWillBegin()();
}

- (void)dismissalTransitionDidEnd:(BOOL)end
{
  selfCopy = self;
  _sSo38SFCatalogPlatterPresentationControllerC12MobileSafariE25dismissalTransitionDidEndyySbF_0();
}

- (void)containerViewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SFCatalogPlatterPresentationController;
  selfCopy = self;
  [(SFCatalogPlatterPresentationController *)&v3 containerViewWillLayoutSubviews];
  [(SFCatalogPlatterPresentationController *)selfCopy layoutPresentedView:v3.receiver];
}

- (void)layoutPresentedView
{
  selfCopy = self;
  sub_18BAC9CE8();
}

- (SFCatalogPlatterPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v7 = sub_18BACA3B4(controllerCopy, viewController);

  return v7;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  dismissRecognizer = [(SFCatalogPlatterPresentationController *)self dismissRecognizer];

  return dismissRecognizer == recognizerCopy;
}

@end