@interface CKGlassSendMenuButton
+ (CGSize)buttonSize;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (BOOL)sendMenuButtonEnabled;
- (CAFilter)backgroundCompositingFilterForDarkMode;
- (CAFilter)backgroundCompositingFilterForLightMode;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIColor)plusButtonBackgroundColor;
- (double)backgroundBlurRadiusDarkMode;
- (double)backgroundBlurRadiusLightMode;
- (double)backgroundBlurRasterizationPercentage;
- (double)plusSymbolOpacity;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)animateBlurTo:(double)to;
- (void)layoutSubviews;
- (void)setBackgroundBlurRadiusDarkMode:(double)mode;
- (void)setBackgroundBlurRadiusLightMode:(double)mode;
- (void)setBackgroundBlurRasterizationPercentage:(double)percentage;
- (void)setPlusSymbolOpacity:(double)opacity;
- (void)setSendMenuButtonEnabled:(BOOL)enabled;
@end

@implementation CKGlassSendMenuButton

+ (CGSize)buttonSize
{
  v2 = 40.0;
  v3 = 40.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CAFilter)backgroundCompositingFilterForLightMode
{
  v3 = OBJC_IVAR___CKGlassSendMenuButton_backgroundCompositingFilterForLightMode;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (CAFilter)backgroundCompositingFilterForDarkMode
{
  v3 = OBJC_IVAR___CKGlassSendMenuButton_backgroundCompositingFilterForDarkMode;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (double)backgroundBlurRadiusLightMode
{
  v3 = OBJC_IVAR___CKGlassSendMenuButton_backgroundBlurRadiusLightMode;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setBackgroundBlurRadiusLightMode:(double)mode
{
  v5 = OBJC_IVAR___CKGlassSendMenuButton_backgroundBlurRadiusLightMode;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = mode;
}

- (double)backgroundBlurRadiusDarkMode
{
  v3 = OBJC_IVAR___CKGlassSendMenuButton_backgroundBlurRadiusDarkMode;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setBackgroundBlurRadiusDarkMode:(double)mode
{
  v5 = OBJC_IVAR___CKGlassSendMenuButton_backgroundBlurRadiusDarkMode;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = mode;
}

- (double)backgroundBlurRasterizationPercentage
{
  v3 = OBJC_IVAR___CKGlassSendMenuButton_backgroundBlurRasterizationPercentage;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setBackgroundBlurRasterizationPercentage:(double)percentage
{
  v5 = OBJC_IVAR___CKGlassSendMenuButton_backgroundBlurRasterizationPercentage;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = percentage;
}

- (UIColor)plusButtonBackgroundColor
{
  v3 = OBJC_IVAR___CKGlassSendMenuButton_plusButtonBackgroundColor;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (double)plusSymbolOpacity
{
  v3 = OBJC_IVAR___CKGlassSendMenuButton_plusSymbolOpacity;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setPlusSymbolOpacity:(double)opacity
{
  v5 = OBJC_IVAR___CKGlassSendMenuButton_plusSymbolOpacity;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = opacity;
}

- (BOOL)sendMenuButtonEnabled
{
  v3 = OBJC_IVAR___CKGlassSendMenuButton_sendMenuButtonEnabled;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setSendMenuButtonEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = OBJC_IVAR___CKGlassSendMenuButton_sendMenuButtonEnabled;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = enabledCopy;
  [(CKGlassSendMenuButton *)self setEnabled:enabledCopy];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for GlassSendMenuButton();
  v2 = v4.receiver;
  [(CKGlassSendMenuButton *)&v4 layoutSubviews];
  layer = [v2 layer];
  [v2 bounds];
  [layer setCornerRadius_];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = 40.0;
  v4 = 40.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  if (key)
  {
    v4 = sub_190D56F10();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8 = sub_190D22224(v4, v6);

  return v8 & 1;
}

- (void)animateBlurTo:(double)to
{
  selfCopy = self;
  layer = [(CKGlassSendMenuButton *)selfCopy layer];
  v4 = sub_190D51C70();
  v5 = sub_190D56ED0();
  [layer setValue:v4 forKeyPath:v5];

  [(CKGlassSendMenuButton *)selfCopy setNeedsUpdateConfiguration];
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  selfCopy = self;
  v9 = _s7ChatKit19GlassSendMenuButtonC18pointerInteraction_8styleForSo14UIPointerStyleCSgSo0kH0C_So0K6RegionCtF_0();

  return v9;
}

@end