@interface ImageViewWithShadow
- (_TtC18HealthExperienceUI19ImageViewWithShadow)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI19ImageViewWithShadow)initWithFrame:(CGRect)a3;
- (_TtC18HealthExperienceUI19ImageViewWithShadow)initWithImage:(id)a3;
- (_TtC18HealthExperienceUI19ImageViewWithShadow)initWithImage:(id)a3 highlightedImage:(id)a4;
- (void)layoutSubviews;
@end

@implementation ImageViewWithShadow

- (_TtC18HealthExperienceUI19ImageViewWithShadow)initWithCoder:(id)a3
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
  v3 = [v2 layer];
  [v2 bounds];
  v8 = [objc_opt_self() bezierPathWithRect_];
  v9 = [v8 CGPath];

  [v3 setShadowPath_];
}

- (_TtC18HealthExperienceUI19ImageViewWithShadow)initWithImage:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI19ImageViewWithShadow)initWithImage:(id)a3 highlightedImage:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI19ImageViewWithShadow)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end