@interface IssueViewerViewController
- (_TtC12NewsArticles25IssueViewerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)contentScrollViewForEdge:(unint64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation IssueViewerViewController

- (_TtC12NewsArticles25IssueViewerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  IssueViewerViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(IssueViewerViewController *)&v8 viewWillAppear:v3];
  v5 = [v4 navigationController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 navigationBar];

    [v7 setPrefersLargeTitles_];
  }

  sub_1D7D28E7C();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(IssueViewerViewController *)&v7 viewDidAppear:v3];
  __swift_project_boxed_opaque_existential_1(&v4[OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_sceneStateManager], *&v4[OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_sceneStateManager + 24]);
  sub_1D7CCA100(&qword_1EC9E8440, v5, type metadata accessor for IssueViewerViewController);
  sub_1D7D291FC();

  __swift_destroy_boxed_opaque_existential_1(v6);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(IssueViewerViewController *)&v7 viewWillDisappear:v3];
  if ([v4 isMovingFromParentViewController])
  {
    v5 = [v4 navigationController];
    if (v5)
    {
      v6 = v5;
      [v5 setToolbarHidden:1 animated:1];
    }
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  IssueViewerViewController.viewDidDisappear(_:)(a3);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  IssueViewerViewController.traitCollectionDidChange(_:)(v9);
}

- (id)contentScrollViewForEdge:(unint64_t)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_contentViewController);
  if (v4)
  {
    v4 = [v4 contentScrollViewForEdge_];
    v3 = vars8;
  }

  return v4;
}

@end