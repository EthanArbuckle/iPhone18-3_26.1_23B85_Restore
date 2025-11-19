@interface CKGlassSendMenuButton
+ (CGSize)buttonSize;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (BOOL)sendMenuButtonEnabled;
- (CAFilter)backgroundCompositingFilterForDarkMode;
- (CAFilter)backgroundCompositingFilterForLightMode;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIColor)plusButtonBackgroundColor;
- (double)backgroundBlurRadiusDarkMode;
- (double)backgroundBlurRadiusLightMode;
- (double)backgroundBlurRasterizationPercentage;
- (double)plusSymbolOpacity;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)animateBlurTo:(double)a3;
- (void)layoutSubviews;
- (void)setBackgroundBlurRadiusDarkMode:(double)a3;
- (void)setBackgroundBlurRadiusLightMode:(double)a3;
- (void)setBackgroundBlurRasterizationPercentage:(double)a3;
- (void)setPlusSymbolOpacity:(double)a3;
- (void)setSendMenuButtonEnabled:(BOOL)a3;
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

- (void)setBackgroundBlurRadiusLightMode:(double)a3
{
  v5 = OBJC_IVAR___CKGlassSendMenuButton_backgroundBlurRadiusLightMode;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = a3;
}

- (double)backgroundBlurRadiusDarkMode
{
  v3 = OBJC_IVAR___CKGlassSendMenuButton_backgroundBlurRadiusDarkMode;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setBackgroundBlurRadiusDarkMode:(double)a3
{
  v5 = OBJC_IVAR___CKGlassSendMenuButton_backgroundBlurRadiusDarkMode;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = a3;
}

- (double)backgroundBlurRasterizationPercentage
{
  v3 = OBJC_IVAR___CKGlassSendMenuButton_backgroundBlurRasterizationPercentage;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setBackgroundBlurRasterizationPercentage:(double)a3
{
  v5 = OBJC_IVAR___CKGlassSendMenuButton_backgroundBlurRasterizationPercentage;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = a3;
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

- (void)setPlusSymbolOpacity:(double)a3
{
  v5 = OBJC_IVAR___CKGlassSendMenuButton_plusSymbolOpacity;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = a3;
}

- (BOOL)sendMenuButtonEnabled
{
  v3 = OBJC_IVAR___CKGlassSendMenuButton_sendMenuButtonEnabled;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setSendMenuButtonEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = OBJC_IVAR___CKGlassSendMenuButton_sendMenuButtonEnabled;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = v3;
  [(CKGlassSendMenuButton *)self setEnabled:v3];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for GlassSendMenuButton();
  v2 = v4.receiver;
  [(CKGlassSendMenuButton *)&v4 layoutSubviews];
  v3 = [v2 layer];
  [v2 bounds];
  [v3 setCornerRadius_];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = 40.0;
  v4 = 40.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  if (a3)
  {
    v4 = sub_190D56F10();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8 = sub_190D22224(v4, v6);

  return v8 & 1;
}

- (void)animateBlurTo:(double)a3
{
  v6 = self;
  v3 = [(CKGlassSendMenuButton *)v6 layer];
  v4 = sub_190D51C70();
  v5 = sub_190D56ED0();
  [v3 setValue:v4 forKeyPath:v5];

  [(CKGlassSendMenuButton *)v6 setNeedsUpdateConfiguration];
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = _s7ChatKit19GlassSendMenuButtonC18pointerInteraction_8styleForSo14UIPointerStyleCSgSo0kH0C_So0K6RegionCtF_0();

  return v9;
}

@end