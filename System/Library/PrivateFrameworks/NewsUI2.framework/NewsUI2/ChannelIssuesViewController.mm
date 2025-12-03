@interface ChannelIssuesViewController
- (_TtC7NewsUI227ChannelIssuesViewController)initWithCoder:(id)coder;
- (_TtC7NewsUI227ChannelIssuesViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)deselect;
- (void)startTraversingWithDirection:(int64_t)direction;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ChannelIssuesViewController

- (_TtC7NewsUI227ChannelIssuesViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI227ChannelIssuesViewController_isBeingUsedAsPlugin) = 0;
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC7NewsUI227ChannelIssuesViewController_pluggableDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI227ChannelIssuesViewController_blueprintHorizontalShimView) = 0;
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (_TtC7NewsUI227ChannelIssuesViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2195C3A2C();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_2195C3C7C();
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(ChannelIssuesViewController *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_2195C5164();
}

- (void)startTraversingWithDirection:(int64_t)direction
{
  selfCopy = self;
  sub_219BE8684();
}

- (void)deselect
{
  selfCopy = self;
  sub_219BE8664();
  v2 = sub_219BE7BC4();

  [v2 selectItemAtIndexPath:0 animated:0 scrollPosition:0];
}

@end