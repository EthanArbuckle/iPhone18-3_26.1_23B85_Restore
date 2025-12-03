@interface ImageViewWithShadow
- (_TtC18HealthExperienceUI19ImageViewWithShadow)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI19ImageViewWithShadow)initWithFrame:(CGRect)frame;
- (_TtC18HealthExperienceUI19ImageViewWithShadow)initWithImage:(id)image;
- (_TtC18HealthExperienceUI19ImageViewWithShadow)initWithImage:(id)image highlightedImage:(id)highlightedImage;
- (void)layoutSubviews;
@end

@implementation ImageViewWithShadow

- (_TtC18HealthExperienceUI19ImageViewWithShadow)initWithCoder:(id)coder
{
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for ImageViewWithShadow();
  v2 = v10.receiver;
  [(ImageViewWithShadow *)&v10 layoutSubviews];
  layer = [v2 layer];
  [v2 bounds];
  bezierPathWithRect_ = [objc_opt_self() bezierPathWithRect_];
  cGPath = [bezierPathWithRect_ CGPath];

  [layer setShadowPath_];
}

- (_TtC18HealthExperienceUI19ImageViewWithShadow)initWithImage:(id)image
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI19ImageViewWithShadow)initWithImage:(id)image highlightedImage:(id)highlightedImage
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI19ImageViewWithShadow)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end