@interface CKEntryViewPlusButton
- (BOOL)sendMenuButtonEnabled;
- (CAFilter)backgroundCompositingFilterForDarkMode;
- (CAFilter)backgroundCompositingFilterForLightMode;
- (CKEntryViewPlusButton)initWithCoder:(id)coder;
- (UIColor)plusButtonBackgroundColor;
- (double)backgroundBlurRadiusDarkMode;
- (double)backgroundBlurRadiusLightMode;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)layoutSubviews;
- (void)setAutomaticallyAdjustsBackgroundCornerRadius:(BOOL)radius;
- (void)setBackgroundBlurRasterizationPercentage:(double)percentage;
- (void)setSendMenuButtonEnabled:(BOOL)enabled;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CKEntryViewPlusButton

- (CKEntryViewPlusButton)initWithCoder:(id)coder
{
  *(&self->super.super._responderFlags + OBJC_IVAR___CKEntryViewPlusButton_plusButtonDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR___CKEntryViewPlusButton_sendMenuButtonEnabled) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR___CKEntryViewPlusButton_backgroundBlurRadiusLightMode) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___CKEntryViewPlusButton_backgroundBlurRadiusDarkMode) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___CKEntryViewPlusButton_backgroundCompositingFilterForLightMode) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___CKEntryViewPlusButton_backgroundCompositingFilterForDarkMode) = 0;
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (BOOL)sendMenuButtonEnabled
{
  v3 = OBJC_IVAR___CKEntryViewPlusButton_sendMenuButtonEnabled;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setSendMenuButtonEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_1908FCEDC(enabled);
}

- (void)setAutomaticallyAdjustsBackgroundCornerRadius:(BOOL)radius
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR___CKEntryViewPlusButton_clippingView);
  v4 = v3[OBJC_IVAR____TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387322PlusButtonClippingView_automaticallyAdjustsCornerRadius];
  v3[OBJC_IVAR____TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387322PlusButtonClippingView_automaticallyAdjustsCornerRadius] = radius;
  if ((v4 & 1) == 0 && radius)
  {
    [v3 setNeedsLayout];
  }
}

- (UIColor)plusButtonBackgroundColor
{
  backgroundColor = [*(&self->super.super.super.isa + OBJC_IVAR___CKEntryViewPlusButton_buttonView) backgroundColor];

  return backgroundColor;
}

- (void)setBackgroundBlurRasterizationPercentage:(double)percentage
{
  selfCopy = self;
  sub_1908FD494(percentage);
}

- (double)backgroundBlurRadiusLightMode
{
  v3 = OBJC_IVAR___CKEntryViewPlusButton_backgroundBlurRadiusLightMode;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (double)backgroundBlurRadiusDarkMode
{
  v3 = OBJC_IVAR___CKEntryViewPlusButton_backgroundBlurRadiusDarkMode;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (CAFilter)backgroundCompositingFilterForLightMode
{
  v3 = OBJC_IVAR___CKEntryViewPlusButton_backgroundCompositingFilterForLightMode;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (CAFilter)backgroundCompositingFilterForDarkMode
{
  v3 = OBJC_IVAR___CKEntryViewPlusButton_backgroundCompositingFilterForDarkMode;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for EntryViewPlusButton();
  changeCopy = change;
  v5 = v6.receiver;
  [(CKEntryViewPlusButton *)&v6 traitCollectionDidChange:changeCopy];
  sub_1908FDE68();
  sub_1908FE09C();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1908FE1E4();
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  selfCopy = self;
  v9 = _s7ChatKit19EntryViewPlusButtonC18pointerInteraction_8styleForSo14UIPointerStyleCSgSo0kH0C_So0K6RegionCtF_0();

  return v9;
}

@end