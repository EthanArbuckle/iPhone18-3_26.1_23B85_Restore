@interface SFCatalogPlatterPresentationController
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (CGRect)collapsedPlatterFrame;
- (CGRect)collapsedURLFieldFrame;
- (CGRect)expandedPlatterFrame;
- (CGRect)expandedURLFieldFrame;
- (CGSize)preferredPresentedViewContentSize;
- (NSDirectionalEdgeInsets)expandedURLFieldPadding;
- (SFCatalogPlatterPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (SFCommandForwardingView)borrowedPlatter;
- (SFTouchDownGestureRecognizer)dismissRecognizer;
- (UIView)borrowedURLFieldView;
- (UIView)innerContainerView;
- (double)horizontalOutset;
- (void)containerViewWillLayoutSubviews;
- (void)dismiss:(id)a3;
- (void)dismissalTransitionDidEnd:(BOOL)a3;
- (void)dismissalTransitionWillBegin;
- (void)layoutPresentedView;
- (void)presentationTransitionWillBegin;
- (void)setBackgroundView:(id)a3;
- (void)setDismissRecognizer:(id)a3;
- (void)setInnerContainerViewController:(id)a3;
- (void)setPreferredPresentedViewContentSize:(CGSize)a3;
- (void)setPresentedSuperview:(id)a3;
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

- (void)setBackgroundView:(id)a3
{
  v4 = *(self + OBJC_IVAR___SFCatalogPlatterPresentationController_backgroundView);
  *(self + OBJC_IVAR___SFCatalogPlatterPresentationController_backgroundView) = a3;
  v3 = a3;
}

- (UIView)borrowedURLFieldView
{
  v2 = self;
  v3 = [(SFCatalogPlatterPresentationController *)v2 barItemView];
  if (v3)
  {
    v4 = v3;
    v5 = [(SFUnifiedBarItemView *)v3 contentView];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (SFCommandForwardingView)borrowedPlatter
{
  v2 = self;
  v3 = [(SFCatalogPlatterPresentationController *)v2 barItemView];
  if (!v3)
  {
LABEL_4:

    goto LABEL_5;
  }

  v4 = v3;
  v5 = [(SFUnifiedBarItemView *)v3 glassView];

  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    v2 = v5;
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

- (void)setInnerContainerViewController:(id)a3
{
  v4 = *(self + OBJC_IVAR___SFCatalogPlatterPresentationController_innerContainerViewController);
  *(self + OBJC_IVAR___SFCatalogPlatterPresentationController_innerContainerViewController) = a3;
  v3 = a3;
}

- (UIView)innerContainerView
{
  v2 = self;
  v3 = [(SFCatalogPlatterPresentationController *)v2 innerContainerViewController];
  v4 = [(UIViewController *)v3 view];

  return v4;
}

- (void)setPresentedSuperview:(id)a3
{
  v4 = *(self + OBJC_IVAR___SFCatalogPlatterPresentationController_presentedSuperview);
  *(self + OBJC_IVAR___SFCatalogPlatterPresentationController_presentedSuperview) = a3;
  v3 = a3;
}

- (CGRect)collapsedURLFieldFrame
{
  v2 = self;
  v3 = [(SFCatalogPlatterPresentationController *)v2 barItemView];
  if (v3)
  {
    v4 = v3;
    [(SFUnifiedBarItemView *)v3 bounds];
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
  v2 = self;
  [(SFCatalogPlatterPresentationController *)v2 minExpandedPlatterOutset];
  v4 = v3;
  [(SFCatalogPlatterPresentationController *)v2 preferredPresentedViewContentSize];
  v6 = v5;
  [(SFCatalogPlatterPresentationController *)v2 collapsedURLFieldFrame];
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

- (void)setPreferredPresentedViewContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  SFCatalogPlatterPresentationController.preferredPresentedViewContentSize.setter(width, height);
}

- (SFTouchDownGestureRecognizer)dismissRecognizer
{
  v2 = self;
  v3 = sub_18BAC8F78();

  return v3;
}

- (void)setDismissRecognizer:(id)a3
{
  v4 = *(self + OBJC_IVAR___SFCatalogPlatterPresentationController____lazy_storage___dismissRecognizer);
  *(self + OBJC_IVAR___SFCatalogPlatterPresentationController____lazy_storage___dismissRecognizer) = a3;
  v3 = a3;
}

- (void)dismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_18BAC9058(v4);
}

- (void)presentationTransitionWillBegin
{
  v2 = self;
  SFCatalogPlatterPresentationController.presentationTransitionWillBegin()();
}

- (void)dismissalTransitionWillBegin
{
  v2 = self;
  SFCatalogPlatterPresentationController.dismissalTransitionWillBegin()();
}

- (void)dismissalTransitionDidEnd:(BOOL)a3
{
  v3 = self;
  _sSo38SFCatalogPlatterPresentationControllerC12MobileSafariE25dismissalTransitionDidEndyySbF_0();
}

- (void)containerViewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SFCatalogPlatterPresentationController;
  v2 = self;
  [(SFCatalogPlatterPresentationController *)&v3 containerViewWillLayoutSubviews];
  [(SFCatalogPlatterPresentationController *)v2 layoutPresentedView:v3.receiver];
}

- (void)layoutPresentedView
{
  v2 = self;
  sub_18BAC9CE8();
}

- (SFCatalogPlatterPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_18BACA3B4(v5, a4);

  return v7;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v5 = a3;
  v6 = [(SFCatalogPlatterPresentationController *)self dismissRecognizer];

  return v6 == v5;
}

@end