@interface ReticleView
- (_TtC25HealthMedicationsVisionUI11ReticleView)initWithCoder:(id)a3;
- (_TtC25HealthMedicationsVisionUI11ReticleView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation ReticleView

- (_TtC25HealthMedicationsVisionUI11ReticleView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_2518D3AD0(x, y, width, height);

  return v7;
}

- (_TtC25HealthMedicationsVisionUI11ReticleView)initWithCoder:(id)a3
{
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC25HealthMedicationsVisionUI11ReticleView_hasSetReticleRect) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC25HealthMedicationsVisionUI11ReticleView____lazy_storage___reticleView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC25HealthMedicationsVisionUI11ReticleView____lazy_storage___spotlightView) = 0;
  result = sub_2518F0778();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_2518D3D64();
}

@end