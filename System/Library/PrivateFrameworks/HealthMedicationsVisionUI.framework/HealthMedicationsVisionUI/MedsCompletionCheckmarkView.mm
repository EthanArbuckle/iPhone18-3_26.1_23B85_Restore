@interface MedsCompletionCheckmarkView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD227MedsCompletionCheckmarkView)initWithCoder:(id)a3;
- (_TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD227MedsCompletionCheckmarkView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation MedsCompletionCheckmarkView

- (_TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD227MedsCompletionCheckmarkView)initWithCoder:(id)a3
{
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = OBJC_IVAR____TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD227MedsCompletionCheckmarkView_shapeLayer;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
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

  v5.receiver = self;
  v5.super_class = type metadata accessor for MedsCompletionCheckmarkView();
  v3 = self;
  [(MedsCompletionCheckmarkView *)&v5 layoutSubviews];
  v4 = *(&v3->super.super.super.isa + OBJC_IVAR____TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD227MedsCompletionCheckmarkView_shapeLayer);
  [(MedsCompletionCheckmarkView *)v3 bounds:v5.receiver];
  [v4 setFrame_];
}

- (CGSize)intrinsicContentSize
{
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD227MedsCompletionCheckmarkView_tickViewSize);

  v4 = v3;
  v5 = v3;
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [(MedsCompletionCheckmarkView *)self intrinsicContentSize];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (_TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD227MedsCompletionCheckmarkView)initWithFrame:(CGRect)a3
{
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end