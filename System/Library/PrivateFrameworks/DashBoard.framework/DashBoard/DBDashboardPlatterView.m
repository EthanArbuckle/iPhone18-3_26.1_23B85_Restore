@interface DBDashboardPlatterView
- (_TtC9DashBoard22DBDashboardPlatterView)initWithCoder:(id)a3;
- (_TtC9DashBoard22DBDashboardPlatterView)initWithFrame:(CGRect)a3;
- (double)platterCornerRadius;
- (void)setPlatterCornerRadius:(double)a3;
- (void)updateMaterial;
@end

@implementation DBDashboardPlatterView

- (void)setPlatterCornerRadius:(double)a3
{
  v5 = OBJC_IVAR____TtC9DashBoard22DBDashboardPlatterView_platterCornerRadius;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
  v6 = self;
  sub_24815B6EC();
}

- (double)platterCornerRadius
{
  v3 = OBJC_IVAR____TtC9DashBoard22DBDashboardPlatterView_platterCornerRadius;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)updateMaterial
{
  v2 = self;
  sub_24815B6EC();
}

- (_TtC9DashBoard22DBDashboardPlatterView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoard22DBDashboardPlatterView_materialView) = 0;
  result = sub_248384580();
  __break(1u);
  return result;
}

- (_TtC9DashBoard22DBDashboardPlatterView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end