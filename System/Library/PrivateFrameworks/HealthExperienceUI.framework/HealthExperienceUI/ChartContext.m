@interface ChartContext
- (NSString)description;
- (_TtC18HealthExperienceUI12ChartContext)init;
- (_TtC18HealthExperienceUI12ChartContext)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ChartContext

- (NSString)description
{
  v2 = self;
  sub_1BA107950();

  v3 = sub_1BA4A6758();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BA107C6C(v4);
}

- (_TtC18HealthExperienceUI12ChartContext)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_1BA109074();

  return v4;
}

- (_TtC18HealthExperienceUI12ChartContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end