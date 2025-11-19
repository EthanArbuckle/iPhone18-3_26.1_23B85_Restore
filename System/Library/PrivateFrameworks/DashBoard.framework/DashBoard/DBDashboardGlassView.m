@interface DBDashboardGlassView
+ (id)createWithDockConfiguration;
- (BOOL)isTranslucent;
- (_TtC9DashBoard20DBDashboardGlassView)init;
- (_TtC9DashBoard20DBDashboardGlassView)initWithCoder:(id)a3;
- (_TtC9DashBoard20DBDashboardGlassView)initWithFrame:(CGRect)a3;
- (void)setIsTranslucent:(BOOL)a3;
@end

@implementation DBDashboardGlassView

- (BOOL)isTranslucent
{
  v2 = self;
  sub_248383F60();

  v3 = v6 != 0;
  sub_248335C28(v5);
  return v3;
}

- (void)setIsTranslucent:(BOOL)a3
{
  v4 = self;
  DBDashboardGlassView.isTranslucent.setter(a3);
}

- (_TtC9DashBoard20DBDashboardGlassView)init
{
  v2 = *(swift_getObjectType() + 104);
  v3 = v2(*MEMORY[0x277CDA138], 1, 0.0);
  swift_deallocPartialClassInstance();
  return v3;
}

- (_TtC9DashBoard20DBDashboardGlassView)initWithCoder:(id)a3
{
  result = sub_248384580();
  __break(1u);
  return result;
}

- (_TtC9DashBoard20DBDashboardGlassView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)createWithDockConfiguration
{
  v2 = _s9DashBoard20DBDashboardGlassViewC27createWithDockConfigurationACyFZ_0();

  return v2;
}

@end