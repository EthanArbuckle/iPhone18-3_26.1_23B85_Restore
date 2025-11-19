@interface WebEmbedContainerViewController
- (_TtC7NewsUI231WebEmbedContainerViewController)initWithCoder:(id)a3;
- (_TtC7NewsUI231WebEmbedContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)showShareSheet:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation WebEmbedContainerViewController

- (_TtC7NewsUI231WebEmbedContainerViewController)initWithCoder:(id)a3
{
  v4 = sub_219BF1664();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_embedLocation;
  (*(v5 + 104))(v8, *MEMORY[0x277D33428], v4, v6);
  v10 = sub_219BF1654();
  (*(v5 + 8))(v8, v4);
  *(&self->super.super.super.isa + v9) = v10;
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (_TtC7NewsUI231WebEmbedContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_219884F2C();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_21988625C(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_2198863D0();
}

- (void)showShareSheet:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_219886594(v4);
}

@end