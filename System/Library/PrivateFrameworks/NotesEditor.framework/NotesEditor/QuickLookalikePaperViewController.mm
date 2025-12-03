@interface QuickLookalikePaperViewController
- (_TtC11NotesEditor33QuickLookalikePaperViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC11NotesEditor33QuickLookalikePaperViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC11NotesEditor33QuickLookalikePaperViewController)initWithRootViewController:(id)controller;
- (void)done:(id)done;
- (void)print:(id)print;
- (void)saveToFiles;
- (void)share:(id)share;
- (void)toolPickerVisibilityDidChange:(id)change;
- (void)updateBarButtonItems;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation QuickLookalikePaperViewController

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = type metadata accessor for QuickLookalikePaperViewController();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  [(QuickLookalikePaperViewController *)&v9 viewDidAppear:appearCopy];
  if (*(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_wantsToJumpIntoAutoFill) == 1)
  {
    v8[3] = v5;
    v8[0] = selfCopy;
    v7 = selfCopy;
    sub_2153CFB98();

    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  else
  {
  }
}

- (void)toolPickerVisibilityDidChange:(id)change
{
  selfCopy = self;
  sub_2153D0FFC();
}

- (void)done:(id)done
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2154A2BCC();
  swift_unknownObjectRelease();
  v5 = (selfCopy + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_dismissAction);
  v6 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_dismissAction);
  if (v6)
  {

    v6(selfCopy);
    sub_21532594C(v6);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v8);
  v7 = *v5;
  *v5 = 0;
  v5[1] = 0;
  sub_21532594C(v7);
}

- (void)share:(id)share
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2154A2BCC();
  swift_unknownObjectRelease();
  v5 = sub_2153CF848();
  popoverPresentationController = [v5 popoverPresentationController];
  if (popoverPresentationController)
  {
    v7 = popoverPresentationController;
    v8 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_shareButton);
    [v7 setBarButtonItem_];
  }

  [(QuickLookalikePaperViewController *)selfCopy presentViewController:v5 animated:1 completion:0];

  __swift_destroy_boxed_opaque_existential_0Tm(&v9);
}

- (void)print:(id)print
{
  if (print)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_2154A2BCC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_2153D010C();

  sub_2151ADCD8(v6, &qword_27CA5ABC0);
}

- (void)saveToFiles
{
  selfCopy = self;
  sub_2153D04A8();
}

- (void)updateBarButtonItems
{
  selfCopy = self;
  sub_2153D0FFC();
}

- (_TtC11NotesEditor33QuickLookalikePaperViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11NotesEditor33QuickLookalikePaperViewController)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11NotesEditor33QuickLookalikePaperViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end