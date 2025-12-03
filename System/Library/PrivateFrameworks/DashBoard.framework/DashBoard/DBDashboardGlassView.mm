@interface DBDashboardGlassView
+ (id)createWithDockConfiguration;
- (BOOL)isTranslucent;
- (_TtC9DashBoard20DBDashboardGlassView)init;
- (_TtC9DashBoard20DBDashboardGlassView)initWithCoder:(id)coder;
- (_TtC9DashBoard20DBDashboardGlassView)initWithFrame:(CGRect)frame;
- (void)setIsTranslucent:(BOOL)translucent;
@end

@implementation DBDashboardGlassView

- (BOOL)isTranslucent
{
  selfCopy = self;
  sub_248383F60();

  v3 = v6 != 0;
  sub_248335C28(v5);
  return v3;
}

- (void)setIsTranslucent:(BOOL)translucent
{
  selfCopy = self;
  DBDashboardGlassView.isTranslucent.setter(translucent);
}

- (_TtC9DashBoard20DBDashboardGlassView)init
{
  v2 = *(swift_getObjectType() + 104);
  v3 = v2(*MEMORY[0x277CDA138], 1, 0.0);
  swift_deallocPartialClassInstance();
  return v3;
}

- (_TtC9DashBoard20DBDashboardGlassView)initWithCoder:(id)coder
{
  result = sub_248384580();
  __break(1u);
  return result;
}

- (_TtC9DashBoard20DBDashboardGlassView)initWithFrame:(CGRect)frame
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