@interface LabelWithBackground
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD219LabelWithBackground)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation LabelWithBackground

- (_TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD219LabelWithBackground)initWithCoder:(id)a3
{
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD219LabelWithBackground_xInset) = 0x4028000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD219LabelWithBackground_yInset) = 0x4000000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD219LabelWithBackground____lazy_storage___blurView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD219LabelWithBackground____lazy_storage___label) = 0;
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

  v6.receiver = self;
  v6.super_class = type metadata accessor for LabelWithBackground();
  v3 = self;
  [(LabelWithBackground *)&v6 layoutSubviews];
  v4 = sub_2518D10AC();
  [(LabelWithBackground *)v3 bounds:v6.receiver];
  [v4 setFrame_];

  v5 = sub_2518D115C();
  [(LabelWithBackground *)v3 bounds];
  v8 = CGRectInset(v7, 12.0, 2.0);
  [v5 setFrame_];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = self;
  v7 = sub_2518D115C();
  [v7 sizeThatFits_];
  v9 = v8;
  v11 = v10;

  v12 = v9 + 24.0;
  v13 = v11 + 4.0;
  result.height = v13;
  result.width = v12;
  return result;
}

@end