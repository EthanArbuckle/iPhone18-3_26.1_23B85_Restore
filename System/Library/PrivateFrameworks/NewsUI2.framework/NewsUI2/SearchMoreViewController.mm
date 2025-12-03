@interface SearchMoreViewController
- (_TtC7NewsUI224SearchMoreViewController)initWithCoder:(id)coder;
- (_TtC7NewsUI224SearchMoreViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation SearchMoreViewController

- (_TtC7NewsUI224SearchMoreViewController)initWithCoder:(id)coder
{
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (_TtC7NewsUI224SearchMoreViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_219019490();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_2190196B0();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_219019880(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(SearchMoreViewController *)&v5 viewWillDisappear:disappearCopy];
  swift_getObjectType();
  sub_219BE7534();
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(SearchMoreViewController *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_21901AD94();
}

@end