@interface ChannelIssuesViewController
- (_TtC7NewsUI227ChannelIssuesViewController)initWithCoder:(id)a3;
- (_TtC7NewsUI227ChannelIssuesViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)deselect;
- (void)startTraversingWithDirection:(int64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ChannelIssuesViewController

- (_TtC7NewsUI227ChannelIssuesViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI227ChannelIssuesViewController_isBeingUsedAsPlugin) = 0;
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC7NewsUI227ChannelIssuesViewController_pluggableDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI227ChannelIssuesViewController_blueprintHorizontalShimView) = 0;
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (_TtC7NewsUI227ChannelIssuesViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_2195C3A2C();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_2195C3C7C();
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  [(ChannelIssuesViewController *)&v7 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  sub_2195C5164();
}

- (void)startTraversingWithDirection:(int64_t)a3
{
  v3 = self;
  sub_219BE8684();
}

- (void)deselect
{
  v3 = self;
  sub_219BE8664();
  v2 = sub_219BE7BC4();

  [v2 selectItemAtIndexPath:0 animated:0 scrollPosition:0];
}

@end