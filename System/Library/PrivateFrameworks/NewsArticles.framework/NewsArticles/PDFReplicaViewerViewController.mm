@interface PDFReplicaViewerViewController
- (BOOL)prefersHomeIndicatorAutoHidden;
- (BOOL)prefersStatusBarHidden;
- (_TtC12NewsArticles30PDFReplicaViewerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)nextPageKeyCommand;
- (void)previousPageKeyCommand;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PDFReplicaViewerViewController

- (BOOL)prefersStatusBarHidden
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_barVisibilityAnimator))
  {
    selfCopy = self;
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
  selfCopy = self;
  v3 = sub_1D79DAACC();

  return v3 & 1;
}

- (_TtC12NewsArticles30PDFReplicaViewerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D79DB240();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1D79DC3A8();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1D79DC6C0(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1D79DCE5C(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1D79DD9A0(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(PDFReplicaViewerViewController *)&v5 viewDidDisappear:disappearCopy];
  if (*&v4[OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_pageSheetPresentationObserver])
  {

    sub_1D7D2B9BC();
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1D79DDB48(change);
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
  selfCopy = self;
  sub_1D7D2AADC();
}

- (void)nextPageKeyCommand
{
  selfCopy = self;
  sub_1D7D2AAAC();
}

@end