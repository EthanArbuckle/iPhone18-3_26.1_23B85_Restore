@interface ArticleViewController
- (BOOL)canResetZoom;
- (BOOL)canZoomIn;
- (BOOL)canZoomOut;
- (BOOL)isExperimentationEnabled;
- (BOOL)isPreviewing;
- (BOOL)resignFirstResponder;
- (BOOL)shouldOccludeAccessibilityElement:(id)a3;
- (BOOL)shouldUpdateFocusInContext:(id)a3;
- (_TtC12NewsArticles21ArticleViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)URLHandler:(id)a3 willOpenURL:(id)a4;
- (void)articleHostViewController:(id)a3 didScrollToPosition:(id)a4;
- (void)articleHostViewControllerDidScrollToBottomOfPrimaryContent:(id)a3;
- (void)bundleSubscriptionDidSubscribe:(id)a3;
- (void)decreaseTextSize;
- (void)didLoadArticle:(id)a3 withContext:(id)a4;
- (void)didStartExperimentForArticleID:(id)a3 experimentIdentifier:(id)a4 treatmentGroup:(id)a5;
- (void)footerNeedsLayout:(id)a3;
- (void)handleKeyCommandWithKeyCommand:(id)a3;
- (void)increaseTextSize;
- (void)loadedArticle:(id)a3 didApplyDocumentStyle:(id)a4;
- (void)loadingDidFinishWithError:(id)a3;
- (void)loadingWillStart;
- (void)resetZoom;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willLoadArticle:(id)a3 withContext:(id)a4;
- (void)zoomIn;
- (void)zoomOut;
@end

@implementation ArticleViewController

- (_TtC12NewsArticles21ArticleViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  ArticleViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  ArticleViewController.viewWillAppear(_:)(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  ArticleViewController.viewDidAppear(_:)(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(ArticleViewController *)&v5 viewWillDisappear:v3];
  sub_1D7D2A4EC();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  ArticleViewController.viewDidDisappear(_:)(a3);
}

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  v4 = v10.receiver;
  v5 = a3;
  [(ArticleViewController *)&v10 traitCollectionDidChange:v5];
  v6 = [v4 traitCollection];
  v7 = [v4 view];
  if (v7)
  {
    v8 = v7;

    v9 = [objc_opt_self() systemBackgroundColor];
    [v8 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  ArticleViewController.viewWillLayoutSubviews()();
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(ArticleViewController *)&v3 viewDidLayoutSubviews];
  sub_1D7D2A55C();
}

- (void)viewSafeAreaInsetsDidChange
{
  v2 = self;
  ArticleViewController.viewSafeAreaInsetsDidChange()();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v7 = v9.receiver;
  [(ArticleViewController *)&v9 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
  v8 = &v7[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_destinationViewSize];
  *v8 = width;
  v8[1] = height;
}

- (BOOL)resignFirstResponder
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController);
  v5 = self;
  [v4 resignFirstResponder];
  v7.receiver = v5;
  v7.super_class = ObjectType;
  LOBYTE(ObjectType) = [(ArticleViewController *)&v7 resignFirstResponder];

  return ObjectType;
}

- (void)handleKeyCommandWithKeyCommand:(id)a3
{
  v7 = a3;
  v4 = self;
  v5 = sub_1D7AFD344(v7);
  if (_s12NewsArticles21ArticleViewControllerC12isPreviewingSbyF_0())
  {
    if ((v5 & 1) == 0)
    {
LABEL_3:
      v6 = v7;
      v7 = v4;
      goto LABEL_6;
    }
  }

  else if (!((*(&v4->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_hardPaywallViewController) == 0) | v5 & 1))
  {
    goto LABEL_3;
  }

  [*(&v4->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_keyCommandManager) handleKeyCommand_];
  v6 = v4;
LABEL_6:
}

- (void)articleHostViewController:(id)a3 didScrollToPosition:(id)a4
{
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a4;
  v9 = a4;
  v8 = self;

  sub_1D79E75B0();
}

- (void)articleHostViewControllerDidScrollToBottomOfPrimaryContent:(id)a3
{
  v4 = a3;
  v5 = self;
  _s12NewsArticles21ArticleViewControllerC011articleHostdE33DidScrollToBottomOfPrimaryContentyySo09NUArticlegdE0CF_0();
}

- (void)didStartExperimentForArticleID:(id)a3 experimentIdentifier:(id)a4 treatmentGroup:(id)a5
{
  v6 = sub_1D7D3034C();
  v8 = v7;
  v9 = sub_1D7D3034C();
  v11 = v10;
  v12 = sub_1D7D3034C();
  v14 = v13;
  v15 = self;
  v16._countAndFlagsBits = v6;
  v16._object = v8;
  v17._countAndFlagsBits = v9;
  v17._object = v11;
  v18._countAndFlagsBits = v12;
  v18._object = v14;
  ArticleViewController.didStartExperiment(forArticleID:experimentIdentifier:treatmentGroup:)(v16, v17, v18);
}

- (BOOL)isExperimentationEnabled
{
  v2 = self;
  v3 = ArticleViewController.isExperimentationEnabled()();

  return v3;
}

- (void)loadingWillStart
{
  v2 = self;
  ArticleViewController.loadingWillStart()();
}

- (void)loadingDidFinishWithError:(id)a3
{
  v4 = self;
  v5 = a3;
  ArticleViewController.loadingDidFinishWithError(_:)(a3);
}

- (void)willLoadArticle:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  _s12NewsArticles21ArticleViewControllerC8willLoad_4withySo9FCArticleC_So9SXContextCtF_0(v6);
}

- (void)didLoadArticle:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  ArticleViewController.didLoad(_:with:)(v6, v7);
}

- (void)loadedArticle:(id)a3 didApplyDocumentStyle:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  ArticleViewController.loadedArticle(_:didApply:)(v6, a4);

  swift_unknownObjectRelease();
}

- (void)footerNeedsLayout:(id)a3
{
  v4 = a3;
  v5 = self;
  _s12NewsArticles21ArticleViewControllerC17footerNeedsLayoutyyAA0C10FooterType_So06UIViewE0CXcF_0();
}

- (BOOL)isPreviewing
{
  v2 = self;
  v3 = _s12NewsArticles21ArticleViewControllerC12isPreviewingSbyF_0();

  return v3 & 1;
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  ArticleViewController.scrollViewDidScroll(_:)(v4);
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v6 = a3;
  v4 = self;
  if (sub_1D7AFEC98(v4))
  {
    sub_1D7A348AC((*(&v4->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_eventHandler))[11]);
    v5 = v4;
  }

  else
  {
    v5 = v6;
    v6 = v4;
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    v8 = a3;
    v6 = self;
    if (sub_1D7AFEC98(v6))
    {
      sub_1D7A348AC((*(&v6->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_eventHandler))[11]);
      v7 = v6;
    }

    else
    {
      v7 = v8;
      v8 = v6;
    }
  }
}

- (BOOL)shouldOccludeAccessibilityElement:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1D7B04390(v4);

  return self & 1;
}

- (void)increaseTextSize
{
  v2 = self;
  ArticleViewController.increaseTextSize()();
}

- (void)decreaseTextSize
{
  v2 = self;
  ArticleViewController.decreaseTextSize()();
}

- (BOOL)canZoomIn
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_hardPaywallViewController))
  {
    return 0;
  }

  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController);
  v4 = self;
  v5 = [v3 contentScale];

  return v5 != 11;
}

- (BOOL)canZoomOut
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_hardPaywallViewController))
  {
    return 0;
  }

  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController);
  v4 = self;
  v5 = [v3 contentScale];

  return v5 != 1;
}

- (void)zoomIn
{
  if (!*(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_hardPaywallViewController))
  {
    v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController);
    v4 = self;
    if ([v3 contentScale] != 11)
    {
      [v3 setContentScale_];
    }
  }
}

- (void)zoomOut
{
  if (!*(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_hardPaywallViewController))
  {
    v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController);
    v4 = self;
    if ([v3 contentScale] != 1)
    {
      [v3 setContentScale_];
    }
  }
}

- (BOOL)canResetZoom
{
  v2 = self;
  v3 = ArticleViewController.canResetZoom()();

  return v3;
}

- (void)resetZoom
{
  v2 = self;
  ArticleViewController.resetZoom()();
}

- (void)bundleSubscriptionDidSubscribe:(id)a3
{
  v4 = a3;
  v5 = self;
  _s12NewsArticles21ArticleViewControllerC30bundleSubscriptionDidSubscribeyySo08FCBundleG0CF_0();
}

- (void)URLHandler:(id)a3 willOpenURL:(id)a4
{
  v4 = sub_1D7D2824C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D281EC();
  (*(v5 + 8))(v8, v4);
}

- (BOOL)shouldUpdateFocusInContext:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = ArticleViewController.shouldUpdateFocus(in:)(v4);

  return self & 1;
}

@end