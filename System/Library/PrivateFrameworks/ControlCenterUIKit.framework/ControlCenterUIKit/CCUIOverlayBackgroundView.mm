@interface CCUIOverlayBackgroundView
- (BOOL)usesAdvancedBackdropRendering;
- (CCUIOverlayBackgroundViewDelegate)delegate;
- (CGRect)contentFrame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)visualStylingProviderForCategory:(int64_t)category;
- (void)layoutSubviews;
- (void)reduceTransparencyStatusDidChange;
- (void)setAdvancedBackdropDimmingView:(id)view;
- (void)setBackdropLayer:(id)layer;
- (void)setContainerView:(id)view;
- (void)setContentFrame:(CGRect)frame;
- (void)setMaterialView:(id)view;
- (void)setPresentationProgress:(double)progress;
- (void)setRoundedRectangleMask:(id)mask;
- (void)updateAccessibilityAppearance;
@end

@implementation CCUIOverlayBackgroundView

- (void)setContentFrame:(CGRect)frame
{
  *(self + OBJC_IVAR___CCUIOverlayBackgroundView_contentFrame) = frame;
  selfCopy = self;
  [(CCUIOverlayBackgroundView *)selfCopy setNeedsLayout];
  [(CCUIOverlayBackgroundView *)selfCopy layoutIfNeeded];
}

- (void)layoutSubviews
{
  selfCopy = self;
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v15.value.super.isa = event;
  CCUIOverlayBackgroundView.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

- (void)setContainerView:(id)view
{
  v4 = *(self + OBJC_IVAR___CCUIOverlayBackgroundView_containerView);
  *(self + OBJC_IVAR___CCUIOverlayBackgroundView_containerView) = view;
  viewCopy = view;
}

- (void)setBackdropLayer:(id)layer
{
  v4 = *(self + OBJC_IVAR___CCUIOverlayBackgroundView_backdropLayer);
  *(self + OBJC_IVAR___CCUIOverlayBackgroundView_backdropLayer) = layer;
  layerCopy = layer;
}

- (void)setRoundedRectangleMask:(id)mask
{
  v4 = *(self + OBJC_IVAR___CCUIOverlayBackgroundView_roundedRectangleMask);
  *(self + OBJC_IVAR___CCUIOverlayBackgroundView_roundedRectangleMask) = mask;
  maskCopy = mask;
}

- (void)setAdvancedBackdropDimmingView:(id)view
{
  v4 = *(self + OBJC_IVAR___CCUIOverlayBackgroundView_advancedBackdropDimmingView);
  *(self + OBJC_IVAR___CCUIOverlayBackgroundView_advancedBackdropDimmingView) = view;
  viewCopy = view;
}

- (void)setMaterialView:(id)view
{
  v4 = *(self + OBJC_IVAR___CCUIOverlayBackgroundView_materialView);
  *(self + OBJC_IVAR___CCUIOverlayBackgroundView_materialView) = view;
  viewCopy = view;
}

- (BOOL)usesAdvancedBackdropRendering
{
  selfCopy = self;
  traitCollection = [(CCUIOverlayBackgroundView *)selfCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  return userInterfaceIdiom == 1;
}

- (void)reduceTransparencyStatusDidChange
{
  selfCopy = self;
  if ([(CCUIOverlayBackgroundView *)selfCopy usesAdvancedBackdropRendering])
  {
    [(CCUIOverlayBackgroundView *)selfCopy setIsReduceTransparencyEnabled:UIAccessibilityIsReduceTransparencyEnabled()];
    [(CCUIOverlayBackgroundView *)selfCopy updateAccessibilityAppearance];
  }
}

- (void)updateAccessibilityAppearance
{
  selfCopy = self;
  sub_1D16C7B0C();
}

- (void)setPresentationProgress:(double)progress
{
  selfCopy = self;
  sub_1D16C7D8C(progress);
}

- (CCUIOverlayBackgroundViewDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (id)visualStylingProviderForCategory:(int64_t)category
{
  selfCopy = self;
  v5 = CCUIOverlayBackgroundView.visualStylingProvider(for:)(category);

  return v5;
}

@end