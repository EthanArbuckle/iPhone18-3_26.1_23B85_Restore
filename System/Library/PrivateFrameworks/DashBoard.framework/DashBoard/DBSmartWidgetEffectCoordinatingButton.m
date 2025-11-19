@interface DBSmartWidgetEffectCoordinatingButton
- (double)cornerRadius;
- (void)configureWithBackgroundColor:(id)a3;
- (void)configureWithImage:(id)a3;
- (void)layoutSubviews;
- (void)setCornerRadius:(double)a3;
@end

@implementation DBSmartWidgetEffectCoordinatingButton

- (void)configureWithBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = self;
  DBSmartWidgetEffectCoordinatingButton.configureWith(backgroundColor:)(v4);
}

- (void)configureWithImage:(id)a3
{
  v4 = a3;
  v5 = self;
  DBSmartWidgetEffectCoordinatingButton.configureWith(image:)(v4);
}

- (void)layoutSubviews
{
  v2 = self;
  DBSmartWidgetEffectCoordinatingButton.layoutSubviews()();
}

- (double)cornerRadius
{
  v3 = OBJC_IVAR____TtC9DashBoard37DBSmartWidgetEffectCoordinatingButton_cornerRadius;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)setCornerRadius:(double)a3
{
  v5 = OBJC_IVAR____TtC9DashBoard37DBSmartWidgetEffectCoordinatingButton_cornerRadius;
  swift_beginAccess();
  *(&self->super.super.super.super.super.super.isa + v5) = a3;
  v6 = self;
  sub_2482A035C();
}

@end