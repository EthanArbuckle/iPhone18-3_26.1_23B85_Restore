@interface EndOfRecipeViewController
- (_TtC12NewsArticles25EndOfRecipeViewController)initWithCoder:(id)a3;
- (_TtC12NewsArticles25EndOfRecipeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation EndOfRecipeViewController

- (_TtC12NewsArticles25EndOfRecipeViewController)initWithCoder:(id)a3
{
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

- (_TtC12NewsArticles25EndOfRecipeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D7B2A27C();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1D7B2A5EC();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(EndOfRecipeViewController *)&v8 viewDidAppear:v3];
  v5 = *&v4[OBJC_IVAR____TtC12NewsArticles25EndOfRecipeViewController_eventHandler];
  if (*(v5 + 88))
  {
    v6 = *(v5 + 96);
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(ObjectType, v6);
  }
}

@end