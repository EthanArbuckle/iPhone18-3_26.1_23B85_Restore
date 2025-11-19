@interface ClinicalAuthorizationYouShouldKnowViewController
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (void)cancelButtonPressed:(id)a3;
- (void)nextButtonPressed:(id)a3;
- (void)viewDidLoad;
@end

@implementation ClinicalAuthorizationYouShouldKnowViewController

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
  v4.super_class = type metadata accessor for ClinicalAuthorizationYouShouldKnowViewController();
  v3 = self;
  [(OBBaseWelcomeController *)&v4 viewDidLoad];
  sub_1C3C7AE08();
  sub_1C3C7BB5C();
}

- (void)nextButtonPressed:(id)a3
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    v5 = self;
    swift_unknownObjectRetain();
    sub_1C3D20774();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v6 = self;
  }

  sub_1C3C7BE24(*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8HealthUI48ClinicalAuthorizationYouShouldKnowViewController_viewControllerToPush), 1);
  sub_1C3C7C9A4(v7, &qword_1EC0810F0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1C396C43C);
}

- (void)cancelButtonPressed:(id)a3
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    v5 = self;
    swift_unknownObjectRetain();
    sub_1C3D20774();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v6 = self;
  }

  sub_1C3C7AC1C();

  sub_1C3C7C9A4(v7, &qword_1EC0810F0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1C396C43C);
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v7 = sub_1C3D1E064();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1C3D1E034();
  v11 = sub_1C3C7C7C4(v10, a6);
  (*(v8 + 8))(v10, v7);

  return v11 & 1;
}

@end