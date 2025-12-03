@interface ArticleViewerViewController
- (_TtC12NewsArticles27ArticleViewerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)showMessage:(int64_t)message;
- (void)enableNavigation:(BOOL)navigation;
- (void)smartInvertStatusDidChange;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation ArticleViewerViewController

- (void)smartInvertStatusDidChange
{
  selfCopy = self;
  traitCollection = [(ArticleViewerViewController *)selfCopy traitCollection];
  [(ArticleViewerViewController *)selfCopy traitCollectionDidChange:traitCollection];
}

- (_TtC12NewsArticles27ArticleViewerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  ArticleViewerViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  ArticleViewerViewController.viewWillAppear(_:)(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  ArticleViewerViewController.viewDidAppear(_:)(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  ArticleViewerViewController.viewWillDisappear(_:)(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  ArticleViewerViewController.viewDidDisappear(_:)(disappear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  ArticleViewerViewController.viewWillTransition(to:with:)(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)enableNavigation:(BOOL)navigation
{
  navigationCopy = navigation;
  selfCopy = self;
  if (navigationCopy)
  {
    sub_1D7C10660();
  }

  sub_1D7D2AA9C();
}

- (id)showMessage:(int64_t)message
{
  selfCopy = self;
  ArticleViewerViewController.show(_:)(message, v13);

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