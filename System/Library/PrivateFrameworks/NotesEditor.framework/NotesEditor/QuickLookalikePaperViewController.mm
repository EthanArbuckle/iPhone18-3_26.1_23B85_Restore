@interface QuickLookalikePaperViewController
- (_TtC11NotesEditor33QuickLookalikePaperViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC11NotesEditor33QuickLookalikePaperViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC11NotesEditor33QuickLookalikePaperViewController)initWithRootViewController:(id)a3;
- (void)done:(id)a3;
- (void)print:(id)a3;
- (void)saveToFiles;
- (void)share:(id)a3;
- (void)toolPickerVisibilityDidChange:(id)a3;
- (void)updateBarButtonItems;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation QuickLookalikePaperViewController

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for QuickLookalikePaperViewController();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  [(QuickLookalikePaperViewController *)&v9 viewDidAppear:v3];
  if (*(&v6->super.super.super.super.isa + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_wantsToJumpIntoAutoFill) == 1)
  {
    v8[3] = v5;
    v8[0] = v6;
    v7 = v6;
    sub_2153CFB98();

    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  else
  {
  }
}

- (void)toolPickerVisibilityDidChange:(id)a3
{
  v3 = self;
  sub_2153D0FFC();
}

- (void)done:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_2154A2BCC();
  swift_unknownObjectRelease();
  v5 = (v4 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_dismissAction);
  v6 = *(&v4->super.super.super.super.isa + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_dismissAction);
  if (v6)
  {

    v6(v4);
    sub_21532594C(v6);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v8);
  v7 = *v5;
  *v5 = 0;
  v5[1] = 0;
  sub_21532594C(v7);
}

- (void)share:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_2154A2BCC();
  swift_unknownObjectRelease();
  v5 = sub_2153CF848();
  v6 = [v5 popoverPresentationController];
  if (v6)
  {
    v7 = v6;
    v8 = *(&v4->super.super.super.super.isa + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_shareButton);
    [v7 setBarButtonItem_];
  }

  [(QuickLookalikePaperViewController *)v4 presentViewController:v5 animated:1 completion:0];

  __swift_destroy_boxed_opaque_existential_0Tm(&v9);
}

- (void)print:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_2154A2BCC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_2153D010C();

  sub_2151ADCD8(v6, &qword_27CA5ABC0);
}

- (void)saveToFiles
{
  v2 = self;
  sub_2153D04A8();
}

- (void)updateBarButtonItems
{
  v2 = self;
  sub_2153D0FFC();
}

- (_TtC11NotesEditor33QuickLookalikePaperViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11NotesEditor33QuickLookalikePaperViewController)initWithRootViewController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11NotesEditor33QuickLookalikePaperViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end