@interface NewsArticleViewController
- (_TtC7NewsKit25NewsArticleViewController)initWithCoder:(id)a3;
- (_TtC7NewsKit25NewsArticleViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation NewsArticleViewController

- (_TtC7NewsKit25NewsArticleViewController)initWithCoder:(id)a3
{
  result = sub_25BEF8BF8();
  __break(1u);
  return result;
}

- (void)loadView
{
  sub_25BEEE6DC(self + OBJC_IVAR____TtC7NewsKit25NewsArticleViewController_sceneProvider, v8);
  v3 = type metadata accessor for SceneProvidingView();
  v4 = objc_allocWithZone(v3);
  sub_25BEEE6DC(v8, v4 + OBJC_IVAR____TtC7NewsKit18SceneProvidingView_sceneProvider);
  v7.receiver = v4;
  v7.super_class = v3;
  v5 = self;
  v6 = [(NewsArticleViewController *)&v7 initWithFrame:0.0, 0.0, 0.0, 0.0];
  __swift_destroy_boxed_opaque_existential_1(v8);
  [(NewsArticleViewController *)v5 setView:v6];
}

- (void)viewDidLoad
{
  v2 = self;
  NewsArticleViewController.viewDidLoad()();
}

- (void)viewDidLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v2 = v15.receiver;
  [(NewsArticleViewController *)&v15 viewDidLayoutSubviews];
  v3 = [*&v2[OBJC_IVAR____TtC7NewsKit25NewsArticleViewController_contentViewController] view];
  if (v3)
  {
    v4 = v3;
    v5 = [v2 view];
    if (v5)
    {
      v6 = v5;
      [v5 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      [v4 setFrame_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (_TtC7NewsKit25NewsArticleViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end