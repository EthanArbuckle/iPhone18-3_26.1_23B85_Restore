@interface HearingTestStepViewController
- (_TtC13HearingTestUI29HearingTestStepViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC13HearingTestUI29HearingTestStepViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)cancelButtonTapped:(id)tapped;
- (void)takeTestAgainButtonTapped:(id)tapped;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation HearingTestStepViewController

- (_TtC13HearingTestUI29HearingTestStepViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  iconCopy = icon;
  sub_20CDB96D8();
}

- (void)takeTestAgainButtonTapped:(id)tapped
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  sub_20CE13FC4();
  swift_unknownObjectRelease();
  v5 = *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_flowManager);
  sub_20CDDE578(1);

  __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

- (void)cancelButtonTapped:(id)tapped
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  sub_20CE13FC4();
  swift_unknownObjectRelease();
  sub_20CDB8304();

  __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

- (void)viewDidAppear:(BOOL)appear
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_20CDB86F4(appear);
}

- (_TtC13HearingTestUI29HearingTestStepViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end