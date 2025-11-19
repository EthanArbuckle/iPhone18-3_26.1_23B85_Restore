@interface PDFReplicaViewerViewController
- (BOOL)prefersHomeIndicatorAutoHidden;
- (BOOL)prefersStatusBarHidden;
- (_TtC12NewsArticles30PDFReplicaViewerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)nextPageKeyCommand;
- (void)previousPageKeyCommand;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PDFReplicaViewerViewController

- (BOOL)prefersStatusBarHidden
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_barVisibilityAnimator))
  {
    v2 = self;
    swift_unknownObjectRetain();
    v3 = sub_1D7D0BF64();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  v2 = self;
  v3 = sub_1D79DAACC();

  return v3 & 1;
}

- (_TtC12NewsArticles30PDFReplicaViewerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D79DB240();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1D79DC3A8();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1D79DC6C0(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1D79DCE5C(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1D79DD9A0(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(PDFReplicaViewerViewController *)&v5 viewDidDisappear:v3];
  if (*&v4[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_pageSheetPresentationObserver])
  {

    sub_1D7D2B9BC();
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1D79DDB48(a3);
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(PDFReplicaViewerViewController *)&v3 viewSafeAreaInsetsDidChange];
  if (*&v2[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_barVisibilityAnimator])
  {
    swift_unknownObjectRetain();
    sub_1D7AF4688(0, 1);
    swift_unknownObjectRelease();
  }
}

- (void)previousPageKeyCommand
{
  v2 = self;
  sub_1D7D2AADC();
}

- (void)nextPageKeyCommand
{
  v2 = self;
  sub_1D7D2AAAC();
}

@end