@interface PuzzleContinuePlayingViewController
- (_TtC7NewsUI235PuzzleContinuePlayingViewController)initWithCoder:(id)a3;
- (_TtC7NewsUI235PuzzleContinuePlayingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PuzzleContinuePlayingViewController

- (_TtC7NewsUI235PuzzleContinuePlayingViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_isBeingUsedAsPlugin) = 0;
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_pluggableDelegate) = 0;
  swift_unknownObjectWeakInit();
  v4 = self + OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_lastComputedSize;
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_blueprintHorizontalShimView) = 0;
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (_TtC7NewsUI235PuzzleContinuePlayingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_218ADFB44();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_218ADFDC4();
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  [(PuzzleContinuePlayingViewController *)&v7 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  sub_218AE1884();
}

@end