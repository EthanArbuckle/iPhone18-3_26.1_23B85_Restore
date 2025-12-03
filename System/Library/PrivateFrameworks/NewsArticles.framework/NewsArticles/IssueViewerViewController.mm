@interface IssueViewerViewController
- (_TtC12NewsArticles25IssueViewerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)contentScrollViewForEdge:(unint64_t)edge;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation IssueViewerViewController

- (_TtC12NewsArticles25IssueViewerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  IssueViewerViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(IssueViewerViewController *)&v8 viewWillAppear:appearCopy];
  navigationController = [v4 navigationController];
  if (navigationController)
  {
    v6 = navigationController;
    navigationBar = [navigationController navigationBar];

    [navigationBar setPrefersLargeTitles_];
  }

  sub_1D7D28E7C();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(IssueViewerViewController *)&v7 viewDidAppear:appearCopy];
  __swift_project_boxed_opaque_existential_1(&v4[OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_sceneStateManager], *&v4[OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_sceneStateManager + 24]);
  sub_1D7CCA100(&qword_1EC9E8440, v5, type metadata accessor for IssueViewerViewController);
  sub_1D7D291FC();

  __swift_destroy_boxed_opaque_existential_1(v6);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(IssueViewerViewController *)&v7 viewWillDisappear:disappearCopy];
  if ([v4 isMovingFromParentViewController])
  {
    navigationController = [v4 navigationController];
    if (navigationController)
    {
      v6 = navigationController;
      [navigationController setToolbarHidden:1 animated:1];
    }
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  IssueViewerViewController.viewDidDisappear(_:)(disappear);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  IssueViewerViewController.traitCollectionDidChange(_:)(v9);
}

- (id)contentScrollViewForEdge:(unint64_t)edge
{
  contentScrollViewForEdge_ = *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_contentViewController);
  if (contentScrollViewForEdge_)
  {
    contentScrollViewForEdge_ = [contentScrollViewForEdge_ contentScrollViewForEdge_];
    v3 = vars8;
  }

  return contentScrollViewForEdge_;
}

@end