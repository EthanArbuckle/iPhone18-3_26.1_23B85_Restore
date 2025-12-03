@interface CameraScannerLoadingView
- (_TtC18HealthExperienceUI24CameraScannerLoadingView)init;
- (_TtC18HealthExperienceUI24CameraScannerLoadingView)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI24CameraScannerLoadingView)initWithFrame:(CGRect)frame;
@end

@implementation CameraScannerLoadingView

- (_TtC18HealthExperienceUI24CameraScannerLoadingView)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI24CameraScannerLoadingView____lazy_storage___spinner) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI24CameraScannerLoadingView____lazy_storage___blurView) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for CameraScannerLoadingView();
  v2 = [(CameraScannerLoadingView *)&v4 initWithFrame:0.0, 0.0, 0.0, 0.0];
  sub_1BA0DA918();

  return v2;
}

- (_TtC18HealthExperienceUI24CameraScannerLoadingView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI24CameraScannerLoadingView____lazy_storage___spinner) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI24CameraScannerLoadingView____lazy_storage___blurView) = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI24CameraScannerLoadingView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end