@interface GradientView
+ (Class)layerClass;
- (_TtC8HealthUI12GradientView)initWithCoder:(id)coder;
- (_TtC8HealthUI12GradientView)initWithFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation GradientView

+ (Class)layerClass
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1C3C5A404();

  return swift_getObjCClassFromMetadata();
}

- (void)traitCollectionDidChange:(id)change
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  changeCopy = change;
  selfCopy = self;
  sub_1C3C5AB78();
}

- (_TtC8HealthUI12GradientView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC8HealthUI12GradientView____lazy_storage___gradientLayer) = 1;
  v8 = (&self->super.super.super.isa + OBJC_IVAR____TtC8HealthUI12GradientView_gradientColors);
  v9 = type metadata accessor for GradientView();
  *v8 = 0;
  v8[1] = 0;
  v12.receiver = self;
  v12.super_class = v9;
  height = [(GradientView *)&v12 initWithFrame:x, y, width, height];

  return height;
}

- (_TtC8HealthUI12GradientView)initWithCoder:(id)coder
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC8HealthUI12GradientView____lazy_storage___gradientLayer) = 1;
  v5 = (&self->super.super.super.isa + OBJC_IVAR____TtC8HealthUI12GradientView_gradientColors);
  *v5 = 0;
  v5[1] = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for GradientView();
  coderCopy = coder;
  v7 = [(GradientView *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end