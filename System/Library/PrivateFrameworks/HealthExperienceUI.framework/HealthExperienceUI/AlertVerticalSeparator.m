@interface AlertVerticalSeparator
- (_TtC18HealthExperienceUI22AlertVerticalSeparator)init;
- (_TtC18HealthExperienceUI22AlertVerticalSeparator)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI22AlertVerticalSeparator)initWithFrame:(CGRect)a3;
@end

@implementation AlertVerticalSeparator

- (_TtC18HealthExperienceUI22AlertVerticalSeparator)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI22AlertVerticalSeparator____lazy_storage___vibrancyView) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for AlertVerticalSeparator();
  v2 = [(AlertVerticalSeparator *)&v4 initWithFrame:0.0, 0.0, 0.0, 0.0];
  sub_1BA2A4A48();

  return v2;
}

- (_TtC18HealthExperienceUI22AlertVerticalSeparator)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI22AlertVerticalSeparator____lazy_storage___vibrancyView) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for AlertVerticalSeparator();
  v4 = a3;
  v5 = [(AlertVerticalSeparator *)&v9 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_1BA2A4A48();
  }

  return v6;
}

- (_TtC18HealthExperienceUI22AlertVerticalSeparator)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end