@interface EndOfArticleViewController
- (BOOL)shouldUpdateFocusInContext:(id)a3;
- (_TtC12NewsArticles26EndOfArticleViewController)initWithCoder:(id)a3;
- (_TtC12NewsArticles26EndOfArticleViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)sectionItemHeightForSize:(CGSize)a3 traitCollection:(id)a4;
- (void)dealloc;
- (void)deselect;
- (void)smartInvertStatusDidChange;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation EndOfArticleViewController

- (_TtC12NewsArticles26EndOfArticleViewController)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_gutterViewController) = 0;
  v4 = OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_overscrollBackgroundView;
  *(self + v4) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  v5 = self;
  v6 = [v4 defaultCenter];
  [v6 removeObserver:v5 name:*MEMORY[0x1E69DD8D8] object:0];

  v7.receiver = v5;
  v7.super_class = ObjectType;
  [(EndOfArticleViewController *)&v7 dealloc];
}

- (_TtC12NewsArticles26EndOfArticleViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  EndOfArticleViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(EndOfArticleViewController *)&v7 viewDidAppear:v3];
  v5 = *(*&v4[OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_eventHandler] + 40);
  ObjectType = swift_getObjectType();
  (*(v5 + 48))(ObjectType, v5);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  ObjectType = swift_getObjectType();
  v6 = sub_1D7D2B6DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.receiver = self;
  v12.super_class = ObjectType;
  v11 = self;
  [(EndOfArticleViewController *)&v12 viewDidDisappear:v3];
  (*(v7 + 104))(v10, *MEMORY[0x1E69D81C8], v6);
  sub_1D7D2B2EC();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  EndOfArticleViewController.viewWillLayoutSubviews()();
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  v5 = a3;
  [(EndOfArticleViewController *)&v9 traitCollectionDidChange:v5];
  v6 = *&v4[OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_overriddenTraitCollection];
  if (v6)
  {
    v7 = *&v4[OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_overriddenTraitCollection];
  }

  else
  {
    v7 = [v4 traitCollection];
    v6 = 0;
  }

  v8 = v6;
  sub_1D7B18B28();
}

- (BOOL)shouldUpdateFocusInContext:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = EndOfArticleViewController.shouldUpdateFocus(in:)(v4);

  return self & 1;
}

- (void)smartInvertStatusDidChange
{
  ObjectType = swift_getObjectType();
  v4 = self;
  v5 = [(EndOfArticleViewController *)v4 traitCollection];
  v9.receiver = v4;
  v9.super_class = ObjectType;
  [(EndOfArticleViewController *)&v9 traitCollectionDidChange:v5];
  v6 = *(v4 + OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_overriddenTraitCollection);
  if (v6)
  {
    v7 = *(v4 + OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_overriddenTraitCollection);
  }

  else
  {
    v7 = [(EndOfArticleViewController *)v4 traitCollection];
    v6 = 0;
  }

  v8 = v6;
  sub_1D7B18B28();
}

- (void)deselect
{
  v3 = self;
  sub_1D7D2B2CC();
  v2 = sub_1D7D2AF0C();

  [v2 selectItemAtIndexPath:0 animated:0 scrollPosition:0];
}

- (double)sectionItemHeightForSize:(CGSize)a3 traitCollection:(id)a4
{
  v4 = self;
  sub_1D7D2B2CC();
  v5 = sub_1D7D2AF0C();

  v6 = [v5 collectionViewLayout];

  [v6 collectionViewContentSize];
  v8 = v7;

  return fmax(v8, 1.0);
}

@end