@interface ContentViewController
- (_TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController)initWithCoder:(id)a3;
- (_TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation ContentViewController

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ContentViewController();
  v2 = v5.receiver;
  [(ContentViewController *)&v5 viewDidLayoutSubviews];
  if (*(v2 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_isActive) != 1)
  {
    goto LABEL_4;
  }

  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    sub_1C592D4C8(v3);

LABEL_4:
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0xB8))();

    return;
  }

  __break(1u);
}

- (_TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_isActive) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_contentView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_backdropView) = 0;
  result = sub_1C5BCBBC4();
  __break(1u);
  return result;
}

- (void)viewSafeAreaInsetsDidChange
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ContentViewController();
  v2 = v5.receiver;
  [(ContentViewController *)&v5 viewSafeAreaInsetsDidChange];
  if (v2[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_isActive] != 1)
  {
    goto LABEL_4;
  }

  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    sub_1C592D4C8(v3);

    v2 = v4;
LABEL_4:

    return;
  }

  __break(1u);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_1C5BA790C(a4, width, height);
  swift_unknownObjectRelease();
}

- (_TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end