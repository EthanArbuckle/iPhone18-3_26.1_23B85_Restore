@interface DBSmartWidgetEffectCoordinatingButton
- (double)cornerRadius;
- (void)configureWithBackgroundColor:(id)color;
- (void)configureWithImage:(id)image;
- (void)layoutSubviews;
- (void)setCornerRadius:(double)radius;
@end

@implementation DBSmartWidgetEffectCoordinatingButton

- (void)configureWithBackgroundColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  DBSmartWidgetEffectCoordinatingButton.configureWith(backgroundColor:)(colorCopy);
}

- (void)configureWithImage:(id)image
{
  imageCopy = image;
  selfCopy = self;
  DBSmartWidgetEffectCoordinatingButton.configureWith(image:)(imageCopy);
}

- (void)layoutSubviews
{
  selfCopy = self;
  DBSmartWidgetEffectCoordinatingButton.layoutSubviews()();
}

- (double)cornerRadius
{
  v3 = OBJC_IVAR____TtC9DashBoard37DBSmartWidgetEffectCoordinatingButton_cornerRadius;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)setCornerRadius:(double)radius
{
  v5 = OBJC_IVAR____TtC9DashBoard37DBSmartWidgetEffectCoordinatingButton_cornerRadius;
  swift_beginAccess();
  *(&self->super.super.super.super.super.super.isa + v5) = radius;
  selfCopy = self;
  sub_2482A035C();
}

@end