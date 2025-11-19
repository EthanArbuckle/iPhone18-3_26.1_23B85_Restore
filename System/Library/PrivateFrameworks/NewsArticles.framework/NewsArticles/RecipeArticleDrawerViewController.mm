@interface RecipeArticleDrawerViewController
- (_TtC12NewsArticles33RecipeArticleDrawerViewController)initWithCoder:(id)a3;
- (_TtC12NewsArticles33RecipeArticleDrawerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation RecipeArticleDrawerViewController

- (_TtC12NewsArticles33RecipeArticleDrawerViewController)initWithCoder:(id)a3
{
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(RecipeArticleDrawerViewController *)&v8 viewWillAppear:v3];
  v5 = [v4 navigationController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 navigationBar];

    [v7 setPrefersLargeTitles_];
  }
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D7A140A8();
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v6.receiver;
  [(RecipeArticleDrawerViewController *)&v6 traitCollectionDidChange:v4];
  sub_1D7A14490();
}

- (_TtC12NewsArticles33RecipeArticleDrawerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end