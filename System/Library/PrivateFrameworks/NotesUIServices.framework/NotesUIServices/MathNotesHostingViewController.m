@interface MathNotesHostingViewController
- (_TtC15NotesUIServices30MathNotesHostingViewController)init;
- (_TtC15NotesUIServices30MathNotesHostingViewController)initWithCoder:(id)a3;
- (_TtC15NotesUIServices30MathNotesHostingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation MathNotesHostingViewController

- (_TtC15NotesUIServices30MathNotesHostingViewController)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController____lazy_storage___appProtectionController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_sceneHostingController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_shieldView) = 0;
  v3 = self + OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_delegate;
  v4 = type metadata accessor for MathNotesHostingViewController();
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(MathNotesHostingViewController *)&v6 initWithNibName:0 bundle:0];
}

- (_TtC15NotesUIServices30MathNotesHostingViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController____lazy_storage___appProtectionController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_sceneHostingController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_shieldView) = 0;
  v3 = self + OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_delegate;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  result = sub_25C7AAC6C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for MathNotesHostingViewController();
  v2 = v6.receiver;
  [(MathNotesHostingViewController *)&v6 viewDidLoad];
  v3 = [objc_opt_self() subjectMonitorRegistry];
  v4 = sub_25C79E5D8();
  v5 = [v3 addMonitor:v4 subjectMask:1 subscriptionOptions:1];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_25C7A002C();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_25C79EAC0(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_25C79EDE0(a3);
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = sub_25C7AA45C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25C7AA44C();
  v9 = self;
  sub_25C79EF78();

  (*(v5 + 8))(v8, v4);
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = sub_25C7AA45C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25C7AA44C();
  v9 = qword_27FC15050;
  v10 = self;
  if (v9 != -1)
  {
    swift_once();
  }

  sub_25C79F238([qword_27FC15100 isLocked], 1);

  (*(v5 + 8))(v8, v4);
}

- (_TtC15NotesUIServices30MathNotesHostingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end