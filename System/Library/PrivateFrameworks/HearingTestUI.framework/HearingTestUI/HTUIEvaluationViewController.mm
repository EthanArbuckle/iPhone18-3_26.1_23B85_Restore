@interface HTUIEvaluationViewController
- (_TtC13HearingTestUI28HTUIEvaluationViewController)initWithCoder:(id)coder;
- (_TtC13HearingTestUI28HTUIEvaluationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)pauseHearingTestSession;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HTUIEvaluationViewController

- (_TtC13HearingTestUI28HTUIEvaluationViewController)initWithCoder:(id)coder
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  coderCopy = coder;
  sub_20CDD8D50();
}

- (void)loadView
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = objc_allocWithZone(type metadata accessor for HTUIEvaluationViewController.View());
  selfCopy = self;
  initWithFrame_ = [v3 initWithFrame_];
  [(HTUIEvaluationViewController *)selfCopy setView:initWithFrame_];
}

- (void)viewDidLoad
{
  v3 = sub_20CE12924();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = type metadata accessor for HTUIEvaluationViewController();
  v10.receiver = self;
  v10.super_class = v8;
  selfCopy = self;
  [(HTUIEvaluationViewController *)&v10 viewDidLoad];
  sub_20CDD1D3C();
  sub_20CDD2764();
  (*(v4 + 104))(v7, *MEMORY[0x277D12CD8], v3);
  sub_20CDD2958(v7);

  (*(v4 + 8))(v7, v3);
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
  sub_20CDD16A4(appear);
}

- (_TtC13HearingTestUI28HTUIEvaluationViewController)initWithNibName:(id)name bundle:(id)bundle
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

- (void)pauseHearingTestSession
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_sessionManager))
  {
    selfCopy = self;

    sub_20CD75A38();

    sub_20CDD4E60();
  }

  else
  {
    __break(1u);
  }
}

@end