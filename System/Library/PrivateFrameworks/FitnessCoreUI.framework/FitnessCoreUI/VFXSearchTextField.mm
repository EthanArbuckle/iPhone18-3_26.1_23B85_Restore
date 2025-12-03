@interface VFXSearchTextField
- (_TtC13FitnessCoreUI18VFXSearchTextField)initWithCoder:(id)coder;
- (_TtC13FitnessCoreUI18VFXSearchTextField)initWithFrame:(CGRect)frame;
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

  selfCopy = self;
  sub_20C3A9098();
}

- (_TtC13FitnessCoreUI18VFXSearchTextField)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
  height = [(VFXSearchTextField *)&v10 initWithFrame:x, y, width, height];

  return height;
}

- (_TtC13FitnessCoreUI18VFXSearchTextField)initWithCoder:(id)coder
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
  coderCopy = coder;
  v6 = [(UISearchTextField *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end