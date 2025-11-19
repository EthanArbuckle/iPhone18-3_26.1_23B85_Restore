@interface HearingTestStepViewController
- (_TtC13HearingTestUI29HearingTestStepViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC13HearingTestUI29HearingTestStepViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)cancelButtonTapped:(id)a3;
- (void)takeTestAgainButtonTapped:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation HearingTestStepViewController

- (_TtC13HearingTestUI29HearingTestStepViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a5;
  sub_20CDB96D8();
}

- (void)takeTestAgainButtonTapped:(id)a3
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  v4 = self;
  sub_20CE13FC4();
  swift_unknownObjectRelease();
  v5 = *(&v4->super.super.super.super.super.isa + OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_flowManager);
  sub_20CDDE578(1);

  __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

- (void)cancelButtonTapped:(id)a3
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  v4 = self;
  sub_20CE13FC4();
  swift_unknownObjectRelease();
  sub_20CDB8304();

  __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

- (void)viewDidAppear:(BOOL)a3
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = self;
  sub_20CDB86F4(a3);
}

- (_TtC13HearingTestUI29HearingTestStepViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
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