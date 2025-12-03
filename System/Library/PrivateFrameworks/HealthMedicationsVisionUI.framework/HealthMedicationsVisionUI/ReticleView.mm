@interface ReticleView
- (_TtC25HealthMedicationsVisionUI11ReticleView)initWithCoder:(id)coder;
- (_TtC25HealthMedicationsVisionUI11ReticleView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation ReticleView

- (_TtC25HealthMedicationsVisionUI11ReticleView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (_TtC25HealthMedicationsVisionUI11ReticleView)initWithCoder:(id)coder
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

  selfCopy = self;
  sub_2518D3D64();
}

@end