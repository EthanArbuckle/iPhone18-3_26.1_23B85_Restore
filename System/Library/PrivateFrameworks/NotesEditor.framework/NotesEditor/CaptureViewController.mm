@interface CaptureViewController
- (BOOL)shouldAutorotate;
- (_TtC11NotesEditorP33_4045383A19295915DBCF26644168878021CaptureViewController)initWithCoder:(id)a3;
- (_TtC11NotesEditorP33_4045383A19295915DBCF26644168878021CaptureViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC11NotesEditorP33_4045383A19295915DBCF26644168878021CaptureViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC11NotesEditorP33_4045383A19295915DBCF26644168878021CaptureViewController)initWithRootViewController:(id)a3;
@end

@implementation CaptureViewController

- (BOOL)shouldAutorotate
{
  if (*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11NotesEditorP33_4045383A19295915DBCF26644168878021CaptureViewController_disableAutorotate))
  {
    return 0;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(CaptureViewController *)&v5 shouldAutorotate];
}

- (_TtC11NotesEditorP33_4045383A19295915DBCF26644168878021CaptureViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11NotesEditorP33_4045383A19295915DBCF26644168878021CaptureViewController_disableAutorotate) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  return [(CaptureViewController *)&v9 initWithNavigationBarClass:a3 toolbarClass:a4];
}

- (_TtC11NotesEditorP33_4045383A19295915DBCF26644168878021CaptureViewController)initWithRootViewController:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11NotesEditorP33_4045383A19295915DBCF26644168878021CaptureViewController_disableAutorotate) = 0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(CaptureViewController *)&v7 initWithRootViewController:a3];
}

- (_TtC11NotesEditorP33_4045383A19295915DBCF26644168878021CaptureViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_2154A1D6C();
    *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11NotesEditorP33_4045383A19295915DBCF26644168878021CaptureViewController_disableAutorotate) = 0;
    v8 = a4;
    a3 = sub_2154A1D2C();
  }

  else
  {
    *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11NotesEditorP33_4045383A19295915DBCF26644168878021CaptureViewController_disableAutorotate) = 0;
    v9 = a4;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(CaptureViewController *)&v12 initWithNibName:a3 bundle:a4];

  return v10;
}

- (_TtC11NotesEditorP33_4045383A19295915DBCF26644168878021CaptureViewController)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11NotesEditorP33_4045383A19295915DBCF26644168878021CaptureViewController_disableAutorotate) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(CaptureViewController *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end