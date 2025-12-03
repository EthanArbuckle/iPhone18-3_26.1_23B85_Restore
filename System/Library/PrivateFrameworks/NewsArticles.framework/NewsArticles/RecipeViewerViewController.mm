@interface RecipeViewerViewController
- (_TtC12NewsArticles26RecipeViewerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)childViewControllerForStatusBarHidden;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation RecipeViewerViewController

- (id)childViewControllerForStatusBarHidden
{
  selfCopy = self;
  v2 = RecipeViewerViewController.childForStatusBarStyle.getter();

  return v2;
}

- (_TtC12NewsArticles26RecipeViewerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  RecipeViewerViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  RecipeViewerViewController.viewWillAppear(_:)(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(RecipeViewerViewController *)&v5 viewWillDisappear:disappearCopy];
  sub_1D7D2A4EC();
}

@end