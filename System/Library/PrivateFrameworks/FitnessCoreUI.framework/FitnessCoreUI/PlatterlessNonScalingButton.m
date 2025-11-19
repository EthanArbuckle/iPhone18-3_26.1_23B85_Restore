@interface PlatterlessNonScalingButton
- (BOOL)canBecomeFocused;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC13FitnessCoreUI27PlatterlessNonScalingButton)initWithCoder:(id)a3;
- (_TtC13FitnessCoreUI27PlatterlessNonScalingButton)initWithFrame:(CGRect)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutSubviews;
@end

@implementation PlatterlessNonScalingButton

- (_TtC13FitnessCoreUI27PlatterlessNonScalingButton)initWithFrame:(CGRect)a3
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

  v7 = sub_20C3C6498(x, y, width, height);

  return v7;
}

- (_TtC13FitnessCoreUI27PlatterlessNonScalingButton)initWithCoder:(id)a3
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_20C3E921C();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v4 = CGSizeMake(isCurrentExecutor);
  v6 = v5;
  v7 = self;
  [(PlatterlessNonScalingButton *)v7 sizeThatFits:v4, v6];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC13FitnessCoreUI27PlatterlessNonScalingButton_titleLabel);
  v7 = self;
  [v6 sizeThatFits_];
  v9 = v8;
  v11 = v10;

  v13 = CGSizeMake(v12);
  v15 = v11 + v14 + v14;
  v16 = v9 + v13 + v13;
  result.height = v15;
  result.width = v16;
  return result;
}

- (void)layoutSubviews
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for PlatterlessNonScalingButton();
  v3 = self;
  [(PlatterlessNonScalingButton *)&v6 layoutSubviews];
  v4 = *(&v3->super.super.super.super.isa + OBJC_IVAR____TtC13FitnessCoreUI27PlatterlessNonScalingButton_floatingContentView);
  [(PlatterlessNonScalingButton *)v3 bounds:v6.receiver];
  [v4 setFrame_];
  v5 = *(&v3->super.super.super.super.isa + OBJC_IVAR____TtC13FitnessCoreUI27PlatterlessNonScalingButton_titleLabel);
  [(PlatterlessNonScalingButton *)v3 bounds];
  [v5 setFrame_];
}

- (BOOL)canBecomeFocused
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = [(PlatterlessNonScalingButton *)self isEnabled];

  return v3;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_20C3C6B98(v7, v8);
}

@end