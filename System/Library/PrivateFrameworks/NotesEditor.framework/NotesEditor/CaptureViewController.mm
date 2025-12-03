@interface CaptureViewController
- (BOOL)shouldAutorotate;
- (_TtC11NotesEditorP33_4045383A19295915DBCF26644168878021CaptureViewController)initWithCoder:(id)coder;
- (_TtC11NotesEditorP33_4045383A19295915DBCF26644168878021CaptureViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC11NotesEditorP33_4045383A19295915DBCF26644168878021CaptureViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC11NotesEditorP33_4045383A19295915DBCF26644168878021CaptureViewController)initWithRootViewController:(id)controller;
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

- (_TtC11NotesEditorP33_4045383A19295915DBCF26644168878021CaptureViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11NotesEditorP33_4045383A19295915DBCF26644168878021CaptureViewController_disableAutorotate) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  return [(CaptureViewController *)&v9 initWithNavigationBarClass:class toolbarClass:toolbarClass];
}

- (_TtC11NotesEditorP33_4045383A19295915DBCF26644168878021CaptureViewController)initWithRootViewController:(id)controller
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11NotesEditorP33_4045383A19295915DBCF26644168878021CaptureViewController_disableAutorotate) = 0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(CaptureViewController *)&v7 initWithRootViewController:controller];
}

- (_TtC11NotesEditorP33_4045383A19295915DBCF26644168878021CaptureViewController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    sub_2154A1D6C();
    *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11NotesEditorP33_4045383A19295915DBCF26644168878021CaptureViewController_disableAutorotate) = 0;
    bundleCopy = bundle;
    name = sub_2154A1D2C();
  }

  else
  {
    *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11NotesEditorP33_4045383A19295915DBCF26644168878021CaptureViewController_disableAutorotate) = 0;
    bundleCopy2 = bundle;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(CaptureViewController *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (_TtC11NotesEditorP33_4045383A19295915DBCF26644168878021CaptureViewController)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11NotesEditorP33_4045383A19295915DBCF26644168878021CaptureViewController_disableAutorotate) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(CaptureViewController *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end