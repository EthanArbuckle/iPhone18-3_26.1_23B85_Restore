@interface StandardPlayerViewController
- (NSArray)preferredFocusEnvironments;
- (_TtC20FitnessPlayerService28StandardPlayerViewController)initWithCoder:(id)coder;
- (_TtC20FitnessPlayerService28StandardPlayerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (int64_t)modalPresentationStyle;
- (void)setModalPresentationStyle:(int64_t)style;
- (void)viewDidDisappear:(BOOL)disappear;
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

  selfCopy = self;
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

  modalPresentationStyle = [*(&self->super.super.super.isa + OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_playerViewController) modalPresentationStyle];

  return modalPresentationStyle;
}

- (void)setModalPresentationStyle:(int64_t)style
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

- (_TtC20FitnessPlayerService28StandardPlayerViewController)initWithCoder:(id)coder
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

- (void)viewDidDisappear:(BOOL)disappear
{
  sub_1E65E6058();
  sub_1E65E6048();
  sub_1E65E5FC8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  StandardPlayerViewController.viewDidDisappear(_:)(disappear);
}

- (_TtC20FitnessPlayerService28StandardPlayerViewController)initWithNibName:(id)name bundle:(id)bundle
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