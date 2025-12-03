@interface PlatterlessNonScalingButton
- (BOOL)canBecomeFocused;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC13FitnessCoreUI27PlatterlessNonScalingButton)initWithCoder:(id)coder;
- (_TtC13FitnessCoreUI27PlatterlessNonScalingButton)initWithFrame:(CGRect)frame;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
@end

@implementation PlatterlessNonScalingButton

- (_TtC13FitnessCoreUI27PlatterlessNonScalingButton)initWithFrame:(CGRect)frame
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

  v7 = sub_20C3C6498(x, y, width, height);

  return v7;
}

- (_TtC13FitnessCoreUI27PlatterlessNonScalingButton)initWithCoder:(id)coder
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
  selfCopy = self;
  [(PlatterlessNonScalingButton *)selfCopy sizeThatFits:v4, v6];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC13FitnessCoreUI27PlatterlessNonScalingButton_titleLabel);
  selfCopy = self;
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
  selfCopy = self;
  [(PlatterlessNonScalingButton *)&v6 layoutSubviews];
  v4 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC13FitnessCoreUI27PlatterlessNonScalingButton_floatingContentView);
  [(PlatterlessNonScalingButton *)selfCopy bounds:v6.receiver];
  [v4 setFrame_];
  v5 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC13FitnessCoreUI27PlatterlessNonScalingButton_titleLabel);
  [(PlatterlessNonScalingButton *)selfCopy bounds];
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

  isEnabled = [(PlatterlessNonScalingButton *)self isEnabled];

  return isEnabled;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_20C3C6B98(contextCopy, coordinatorCopy);
}

@end