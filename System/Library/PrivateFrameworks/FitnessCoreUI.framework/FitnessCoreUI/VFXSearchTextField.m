@interface VFXSearchTextField
- (_TtC13FitnessCoreUI18VFXSearchTextField)initWithCoder:(id)a3;
- (_TtC13FitnessCoreUI18VFXSearchTextField)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation VFXSearchTextField

- (void)layoutSubviews
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_20C3A9098();
}

- (_TtC13FitnessCoreUI18VFXSearchTextField)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC13FitnessCoreUI18VFXSearchTextField_backgroundVisualEffect) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC13FitnessCoreUI18VFXSearchTextField____lazy_storage___backgroundVisuallEffectView) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for VFXSearchTextField();
  v8 = [(VFXSearchTextField *)&v10 initWithFrame:x, y, width, height];

  return v8;
}

- (_TtC13FitnessCoreUI18VFXSearchTextField)initWithCoder:(id)a3
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC13FitnessCoreUI18VFXSearchTextField_backgroundVisualEffect) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC13FitnessCoreUI18VFXSearchTextField____lazy_storage___backgroundVisuallEffectView) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for VFXSearchTextField();
  v5 = a3;
  v6 = [(UISearchTextField *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end