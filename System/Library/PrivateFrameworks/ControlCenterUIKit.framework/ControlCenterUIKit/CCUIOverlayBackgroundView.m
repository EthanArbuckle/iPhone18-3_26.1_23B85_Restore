@interface CCUIOverlayBackgroundView
- (BOOL)usesAdvancedBackdropRendering;
- (CCUIOverlayBackgroundViewDelegate)delegate;
- (CGRect)contentFrame;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)visualStylingProviderForCategory:(int64_t)a3;
- (void)layoutSubviews;
- (void)reduceTransparencyStatusDidChange;
- (void)setAdvancedBackdropDimmingView:(id)a3;
- (void)setBackdropLayer:(id)a3;
- (void)setContainerView:(id)a3;
- (void)setContentFrame:(CGRect)a3;
- (void)setMaterialView:(id)a3;
- (void)setPresentationProgress:(double)a3;
- (void)setRoundedRectangleMask:(id)a3;
- (void)updateAccessibilityAppearance;
@end

@implementation CCUIOverlayBackgroundView

- (void)setContentFrame:(CGRect)a3
{
  *(self + OBJC_IVAR___CCUIOverlayBackgroundView_contentFrame) = a3;
  v3 = self;
  [(CCUIOverlayBackgroundView *)v3 setNeedsLayout];
  [(CCUIOverlayBackgroundView *)v3 layoutIfNeeded];
}

- (void)layoutSubviews
{
  v2 = self;
  CCUIOverlayBackgroundView.layoutSubviews()();
}

- (CGRect)contentFrame
{
  v2 = *(self + OBJC_IVAR___CCUIOverlayBackgroundView_contentFrame);
  v3 = *(self + OBJC_IVAR___CCUIOverlayBackgroundView_contentFrame + 8);
  v4 = *(self + OBJC_IVAR___CCUIOverlayBackgroundView_contentFrame + 16);
  v5 = *(self + OBJC_IVAR___CCUIOverlayBackgroundView_contentFrame + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v15.value.super.isa = a4;
  CCUIOverlayBackgroundView.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

- (void)setContainerView:(id)a3
{
  v4 = *(self + OBJC_IVAR___CCUIOverlayBackgroundView_containerView);
  *(self + OBJC_IVAR___CCUIOverlayBackgroundView_containerView) = a3;
  v3 = a3;
}

- (void)setBackdropLayer:(id)a3
{
  v4 = *(self + OBJC_IVAR___CCUIOverlayBackgroundView_backdropLayer);
  *(self + OBJC_IVAR___CCUIOverlayBackgroundView_backdropLayer) = a3;
  v3 = a3;
}

- (void)setRoundedRectangleMask:(id)a3
{
  v4 = *(self + OBJC_IVAR___CCUIOverlayBackgroundView_roundedRectangleMask);
  *(self + OBJC_IVAR___CCUIOverlayBackgroundView_roundedRectangleMask) = a3;
  v3 = a3;
}

- (void)setAdvancedBackdropDimmingView:(id)a3
{
  v4 = *(self + OBJC_IVAR___CCUIOverlayBackgroundView_advancedBackdropDimmingView);
  *(self + OBJC_IVAR___CCUIOverlayBackgroundView_advancedBackdropDimmingView) = a3;
  v3 = a3;
}

- (void)setMaterialView:(id)a3
{
  v4 = *(self + OBJC_IVAR___CCUIOverlayBackgroundView_materialView);
  *(self + OBJC_IVAR___CCUIOverlayBackgroundView_materialView) = a3;
  v3 = a3;
}

- (BOOL)usesAdvancedBackdropRendering
{
  v2 = self;
  v3 = [(CCUIOverlayBackgroundView *)v2 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  return v4 == 1;
}

- (void)reduceTransparencyStatusDidChange
{
  v2 = self;
  if ([(CCUIOverlayBackgroundView *)v2 usesAdvancedBackdropRendering])
  {
    [(CCUIOverlayBackgroundView *)v2 setIsReduceTransparencyEnabled:UIAccessibilityIsReduceTransparencyEnabled()];
    [(CCUIOverlayBackgroundView *)v2 updateAccessibilityAppearance];
  }
}

- (void)updateAccessibilityAppearance
{
  v2 = self;
  sub_1D16C7B0C();
}

- (void)setPresentationProgress:(double)a3
{
  v4 = self;
  sub_1D16C7D8C(a3);
}

- (CCUIOverlayBackgroundViewDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (id)visualStylingProviderForCategory:(int64_t)a3
{
  v4 = self;
  v5 = CCUIOverlayBackgroundView.visualStylingProvider(for:)(a3);

  return v5;
}

@end