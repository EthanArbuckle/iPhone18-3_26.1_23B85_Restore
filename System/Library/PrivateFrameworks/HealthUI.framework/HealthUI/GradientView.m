@interface GradientView
+ (Class)layerClass;
- (_TtC8HealthUI12GradientView)initWithCoder:(id)a3;
- (_TtC8HealthUI12GradientView)initWithFrame:(CGRect)a3;
- (void)traitCollectionDidChange:(id)a3;
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

- (void)traitCollectionDidChange:(id)a3
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  sub_1C3C5AB78();
}

- (_TtC8HealthUI12GradientView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v10 = [(GradientView *)&v12 initWithFrame:x, y, width, height];

  return v10;
}

- (_TtC8HealthUI12GradientView)initWithCoder:(id)a3
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
  v6 = a3;
  v7 = [(GradientView *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end