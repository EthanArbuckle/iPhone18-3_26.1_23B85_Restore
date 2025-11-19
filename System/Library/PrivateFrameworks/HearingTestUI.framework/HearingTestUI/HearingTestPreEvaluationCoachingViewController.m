@interface HearingTestPreEvaluationCoachingViewController
- (void)continueButtonTapped:(id)a3;
- (void)viewDidLoad;
@end

@implementation HearingTestPreEvaluationCoachingViewController

- (void)viewDidLoad
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4.receiver = self;
  v4.super_class = type metadata accessor for HearingTestPreEvaluationCoachingViewController();
  v3 = self;
  [(OBBaseWelcomeController *)&v4 viewDidLoad];
  sub_20CDBAB20();
  sub_20CDBAD48();
  sub_20CDBB0A8();
}

- (void)continueButtonTapped:(id)a3
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
  sub_20CDBBB04();

  __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

@end