@interface LinkAcceleratorViewController
- (_TtC11NotesEditor29LinkAcceleratorViewController)init;
- (_TtC11NotesEditor29LinkAcceleratorViewController)initWithCoder:(id)coder;
- (_TtC11NotesEditor29LinkAcceleratorViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation LinkAcceleratorViewController

- (_TtC11NotesEditor29LinkAcceleratorViewController)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_linkAcceleratorController) = 0;
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_didSelectNoteLinkCompletion);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_currentSuggestionContainer;
  v5 = sub_21549F8CC();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_currentSelection;
  v7 = sub_21549E93C();
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  v9.receiver = self;
  v9.super_class = type metadata accessor for LinkAcceleratorViewController();
  return [(LinkAcceleratorViewController *)&v9 initWithNibName:0 bundle:0];
}

- (_TtC11NotesEditor29LinkAcceleratorViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_linkAcceleratorController) = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_didSelectNoteLinkCompletion);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_currentSuggestionContainer;
  v6 = sub_21549F8CC();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_currentSelection;
  v8 = sub_21549E93C();
  (*(*(v8 - 8) + 56))(self + v7, 1, 1, v8);
  result = sub_2154A2EDC();
  __break(1u);
  return result;
}

- (_TtC11NotesEditor29LinkAcceleratorViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end