@interface RecipeArticleDrawerViewController
- (_TtC12NewsArticles33RecipeArticleDrawerViewController)initWithCoder:(id)coder;
- (_TtC12NewsArticles33RecipeArticleDrawerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation RecipeArticleDrawerViewController

- (_TtC12NewsArticles33RecipeArticleDrawerViewController)initWithCoder:(id)coder
{
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(RecipeArticleDrawerViewController *)&v8 viewWillAppear:appearCopy];
  navigationController = [v4 navigationController];
  if (navigationController)
  {
    v6 = navigationController;
    navigationBar = [navigationController navigationBar];

    [navigationBar setPrefersLargeTitles_];
  }
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D7A140A8();
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v6.receiver;
  [(RecipeArticleDrawerViewController *)&v6 traitCollectionDidChange:changeCopy];
  sub_1D7A14490();
}

- (_TtC12NewsArticles33RecipeArticleDrawerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end