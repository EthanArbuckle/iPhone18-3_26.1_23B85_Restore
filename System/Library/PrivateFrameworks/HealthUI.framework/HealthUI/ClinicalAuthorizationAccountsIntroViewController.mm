@interface ClinicalAuthorizationAccountsIntroViewController
- (void)cancelButtonPressed:(id)pressed;
- (void)nextButtonPressed:(id)pressed;
- (void)viewDidLoad;
@end

@implementation ClinicalAuthorizationAccountsIntroViewController

- (void)viewDidLoad
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4.receiver = self;
  v4.super_class = type metadata accessor for ClinicalAuthorizationAccountsIntroViewController();
  selfCopy = self;
  [(OBBaseWelcomeController *)&v4 viewDidLoad];
  sub_1C3C8875C();
  sub_1C3C88944();
}

- (void)nextButtonPressed:(id)pressed
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (pressed)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1C3D20774();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    selfCopy2 = self;
  }

  sub_1C3C88E68(*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8HealthUI48ClinicalAuthorizationAccountsIntroViewController_viewControllerToPush), 1);
  sub_1C396C69C(v7);
}

- (void)cancelButtonPressed:(id)pressed
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (pressed)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1C3D20774();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    selfCopy2 = self;
  }

  sub_1C3C88CB8();

  sub_1C396C69C(v7);
}

@end