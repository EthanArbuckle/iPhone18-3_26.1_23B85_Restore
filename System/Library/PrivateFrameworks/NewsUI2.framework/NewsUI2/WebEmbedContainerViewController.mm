@interface WebEmbedContainerViewController
- (_TtC7NewsUI231WebEmbedContainerViewController)initWithCoder:(id)coder;
- (_TtC7NewsUI231WebEmbedContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)showShareSheet:(id)sheet;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation WebEmbedContainerViewController

- (_TtC7NewsUI231WebEmbedContainerViewController)initWithCoder:(id)coder
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

- (_TtC7NewsUI231WebEmbedContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_219884F2C();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_21988625C(change);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_2198863D0();
}

- (void)showShareSheet:(id)sheet
{
  sheetCopy = sheet;
  selfCopy = self;
  sub_219886594(sheetCopy);
}

@end