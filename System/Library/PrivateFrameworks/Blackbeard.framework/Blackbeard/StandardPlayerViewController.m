@interface StandardPlayerViewController
- (NSArray)preferredFocusEnvironments;
- (_TtC20FitnessPlayerService28StandardPlayerViewController)initWithCoder:(id)a3;
- (_TtC20FitnessPlayerService28StandardPlayerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (int64_t)modalPresentationStyle;
- (void)setModalPresentationStyle:(int64_t)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation StandardPlayerViewController

- (NSArray)preferredFocusEnvironments
{
  sub_1E65E6058();
  sub_1E65E6048();
  sub_1E65E5FC8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  StandardPlayerViewController.preferredFocusEnvironments.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078268, &qword_1E65FBB30);
  v4 = sub_1E65E5EF8();

  return v4;
}

- (int64_t)modalPresentationStyle
{
  sub_1E65E6058();
  sub_1E65E6048();
  sub_1E65E5FC8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = [*(&self->super.super.super.isa + OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_playerViewController) modalPresentationStyle];

  return v3;
}

- (void)setModalPresentationStyle:(int64_t)a3
{
  sub_1E65E6058();
  sub_1E65E6048();
  sub_1E65E5FC8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [*(&self->super.super.super.isa + OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_playerViewController) setModalPresentationStyle_];
}

- (_TtC20FitnessPlayerService28StandardPlayerViewController)initWithCoder:(id)a3
{
  sub_1E65E6058();
  sub_1E65E6048();
  sub_1E65E5FC8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

- (void)viewDidDisappear:(BOOL)a3
{
  sub_1E65E6058();
  sub_1E65E6048();
  sub_1E65E5FC8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = self;
  StandardPlayerViewController.viewDidDisappear(_:)(a3);
}

- (_TtC20FitnessPlayerService28StandardPlayerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  sub_1E65E6058();
  sub_1E65E6048();
  sub_1E65E5FC8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end