@interface MagazineSectionsViewController
- (_TtC7NewsUI230MagazineSectionsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didReceiveMemoryWarning;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation MagazineSectionsViewController

- (_TtC7NewsUI230MagazineSectionsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_218E51750();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_218E5221C();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_218E52450(a3);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_218E5252C(a3);
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