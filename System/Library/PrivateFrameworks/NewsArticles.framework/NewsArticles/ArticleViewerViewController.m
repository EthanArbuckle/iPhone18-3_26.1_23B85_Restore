@interface ArticleViewerViewController
- (_TtC12NewsArticles27ArticleViewerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)showMessage:(int64_t)a3;
- (void)enableNavigation:(BOOL)a3;
- (void)smartInvertStatusDidChange;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation ArticleViewerViewController

- (void)smartInvertStatusDidChange
{
  v3 = self;
  v2 = [(ArticleViewerViewController *)v3 traitCollection];
  [(ArticleViewerViewController *)v3 traitCollectionDidChange:v2];
}

- (_TtC12NewsArticles27ArticleViewerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  ArticleViewerViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  ArticleViewerViewController.viewWillAppear(_:)(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  ArticleViewerViewController.viewDidAppear(_:)(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  ArticleViewerViewController.viewWillDisappear(_:)(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  ArticleViewerViewController.viewDidDisappear(_:)(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  ArticleViewerViewController.viewWillLayoutSubviews()();
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(ArticleViewerViewController *)&v3 viewDidLayoutSubviews];
  sub_1D7D28C6C();
  sub_1D7D2A55C();
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(ArticleViewerViewController *)&v3 viewSafeAreaInsetsDidChange];
  sub_1D7D2AEAC();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  ArticleViewerViewController.viewWillTransition(to:with:)(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)enableNavigation:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  if (v3)
  {
    sub_1D7C10660();
  }

  sub_1D7D2AA9C();
}

- (id)showMessage:(int64_t)a3
{
  v4 = self;
  ArticleViewerViewController.show(_:)(a3, v13);

  v5 = v14;
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6, v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1D7D3195C();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end