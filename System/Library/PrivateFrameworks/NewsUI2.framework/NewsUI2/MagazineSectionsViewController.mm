@interface MagazineSectionsViewController
- (_TtC7NewsUI230MagazineSectionsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didReceiveMemoryWarning;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation MagazineSectionsViewController

- (_TtC7NewsUI230MagazineSectionsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_218E51750();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_218E5221C();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_218E52450(appear);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_218E5252C(change);
}

- (void)didReceiveMemoryWarning
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(MagazineSectionsViewController *)&v3 didReceiveMemoryWarning];
  sub_219BE3264();
}

@end