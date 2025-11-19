@interface RecipeViewerViewController
- (_TtC12NewsArticles26RecipeViewerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)childViewControllerForStatusBarHidden;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation RecipeViewerViewController

- (id)childViewControllerForStatusBarHidden
{
  v1 = a1;
  v2 = RecipeViewerViewController.childForStatusBarStyle.getter();

  return v2;
}

- (_TtC12NewsArticles26RecipeViewerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  RecipeViewerViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  RecipeViewerViewController.viewWillAppear(_:)(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(RecipeViewerViewController *)&v5 viewWillDisappear:v3];
  sub_1D7D2A4EC();
}

@end