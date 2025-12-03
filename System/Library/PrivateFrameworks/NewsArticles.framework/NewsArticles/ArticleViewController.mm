@interface ArticleViewController
- (BOOL)canResetZoom;
- (BOOL)canZoomIn;
- (BOOL)canZoomOut;
- (BOOL)isExperimentationEnabled;
- (BOOL)isPreviewing;
- (BOOL)resignFirstResponder;
- (BOOL)shouldOccludeAccessibilityElement:(id)element;
- (BOOL)shouldUpdateFocusInContext:(id)context;
- (_TtC12NewsArticles21ArticleViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)URLHandler:(id)handler willOpenURL:(id)l;
- (void)articleHostViewController:(id)controller didScrollToPosition:(id)position;
- (void)articleHostViewControllerDidScrollToBottomOfPrimaryContent:(id)content;
- (void)bundleSubscriptionDidSubscribe:(id)subscribe;
- (void)decreaseTextSize;
- (void)didLoadArticle:(id)article withContext:(id)context;
- (void)didStartExperimentForArticleID:(id)d experimentIdentifier:(id)identifier treatmentGroup:(id)group;
- (void)footerNeedsLayout:(id)layout;
- (void)handleKeyCommandWithKeyCommand:(id)command;
- (void)increaseTextSize;
- (void)loadedArticle:(id)article didApplyDocumentStyle:(id)style;
- (void)loadingDidFinishWithError:(id)error;
- (void)loadingWillStart;
- (void)resetZoom;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willLoadArticle:(id)article withContext:(id)context;
- (void)zoomIn;
- (void)zoomOut;
@end

@implementation ArticleViewController

- (_TtC12NewsArticles21ArticleViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  ArticleViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  ArticleViewController.viewWillAppear(_:)(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  ArticleViewController.viewDidAppear(_:)(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(ArticleViewController *)&v5 viewWillDisappear:disappearCopy];
  sub_1D7D2A4EC();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  ArticleViewController.viewDidDisappear(_:)(disappear);
}

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  v4 = v10.receiver;
  changeCopy = change;
  [(ArticleViewController *)&v10 traitCollectionDidChange:changeCopy];
  traitCollection = [v4 traitCollection];
  view = [v4 view];
  if (view)
  {
    v8 = view;

    systemBackgroundColor = [objc_opt_self() systemBackgroundColor];
    [v8 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
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
  selfCopy = self;
  ArticleViewController.viewSafeAreaInsetsDidChange()();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v7 = v9.receiver;
  [(ArticleViewController *)&v9 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  v8 = &v7[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_destinationViewSize];
  *v8 = width;
  v8[1] = height;
}

- (BOOL)resignFirstResponder
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController);
  selfCopy = self;
  [v4 resignFirstResponder];
  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  LOBYTE(ObjectType) = [(ArticleViewController *)&v7 resignFirstResponder];

  return ObjectType;
}

- (void)handleKeyCommandWithKeyCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  v5 = sub_1D7AFD344(commandCopy);
  if (_s12NewsArticles21ArticleViewControllerC12isPreviewingSbyF_0())
  {
    if ((v5 & 1) == 0)
    {
LABEL_3:
      v6 = commandCopy;
      commandCopy = selfCopy;
      goto LABEL_6;
    }
  }

  else if (!((*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_hardPaywallViewController) == 0) | v5 & 1))
  {
    goto LABEL_3;
  }

  [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_keyCommandManager) handleKeyCommand_];
  v6 = selfCopy;
LABEL_6:
}

- (void)articleHostViewController:(id)controller didScrollToPosition:(id)position
{
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = position;
  positionCopy = position;
  selfCopy = self;

  sub_1D79E75B0();
}

- (void)articleHostViewControllerDidScrollToBottomOfPrimaryContent:(id)content
{
  contentCopy = content;
  selfCopy = self;
  _s12NewsArticles21ArticleViewControllerC011articleHostdE33DidScrollToBottomOfPrimaryContentyySo09NUArticlegdE0CF_0();
}

- (void)didStartExperimentForArticleID:(id)d experimentIdentifier:(id)identifier treatmentGroup:(id)group
{
  v6 = sub_1D7D3034C();
  v8 = v7;
  v9 = sub_1D7D3034C();
  v11 = v10;
  v12 = sub_1D7D3034C();
  v14 = v13;
  selfCopy = self;
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
  selfCopy = self;
  v3 = ArticleViewController.isExperimentationEnabled()();

  return v3;
}

- (void)loadingWillStart
{
  selfCopy = self;
  ArticleViewController.loadingWillStart()();
}

- (void)loadingDidFinishWithError:(id)error
{
  selfCopy = self;
  errorCopy = error;
  ArticleViewController.loadingDidFinishWithError(_:)(error);
}

- (void)willLoadArticle:(id)article withContext:(id)context
{
  articleCopy = article;
  contextCopy = context;
  selfCopy = self;
  _s12NewsArticles21ArticleViewControllerC8willLoad_4withySo9FCArticleC_So9SXContextCtF_0(articleCopy);
}

- (void)didLoadArticle:(id)article withContext:(id)context
{
  articleCopy = article;
  contextCopy = context;
  selfCopy = self;
  ArticleViewController.didLoad(_:with:)(articleCopy, contextCopy);
}

- (void)loadedArticle:(id)article didApplyDocumentStyle:(id)style
{
  articleCopy = article;
  swift_unknownObjectRetain();
  selfCopy = self;
  ArticleViewController.loadedArticle(_:didApply:)(articleCopy, style);

  swift_unknownObjectRelease();
}

- (void)footerNeedsLayout:(id)layout
{
  layoutCopy = layout;
  selfCopy = self;
  _s12NewsArticles21ArticleViewControllerC17footerNeedsLayoutyyAA0C10FooterType_So06UIViewE0CXcF_0();
}

- (BOOL)isPreviewing
{
  selfCopy = self;
  v3 = _s12NewsArticles21ArticleViewControllerC12isPreviewingSbyF_0();

  return v3 & 1;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  ArticleViewController.scrollViewDidScroll(_:)(scrollCopy);
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  selfCopy = self;
  if (sub_1D7AFEC98(selfCopy))
  {
    sub_1D7A348AC((*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_eventHandler))[11]);
    v5 = selfCopy;
  }

  else
  {
    v5 = deceleratingCopy;
    deceleratingCopy = selfCopy;
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    draggingCopy = dragging;
    selfCopy = self;
    if (sub_1D7AFEC98(selfCopy))
    {
      sub_1D7A348AC((*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_eventHandler))[11]);
      v7 = selfCopy;
    }

    else
    {
      v7 = draggingCopy;
      draggingCopy = selfCopy;
    }
  }
}

- (BOOL)shouldOccludeAccessibilityElement:(id)element
{
  elementCopy = element;
  selfCopy = self;
  LOBYTE(self) = sub_1D7B04390(elementCopy);

  return self & 1;
}

- (void)increaseTextSize
{
  selfCopy = self;
  ArticleViewController.increaseTextSize()();
}

- (void)decreaseTextSize
{
  selfCopy = self;
  ArticleViewController.decreaseTextSize()();
}

- (BOOL)canZoomIn
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_hardPaywallViewController))
  {
    return 0;
  }

  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController);
  selfCopy = self;
  contentScale = [v3 contentScale];

  return contentScale != 11;
}

- (BOOL)canZoomOut
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_hardPaywallViewController))
  {
    return 0;
  }

  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController);
  selfCopy = self;
  contentScale = [v3 contentScale];

  return contentScale != 1;
}

- (void)zoomIn
{
  if (!*(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_hardPaywallViewController))
  {
    v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController);
    selfCopy = self;
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
    selfCopy = self;
    if ([v3 contentScale] != 1)
    {
      [v3 setContentScale_];
    }
  }
}

- (BOOL)canResetZoom
{
  selfCopy = self;
  v3 = ArticleViewController.canResetZoom()();

  return v3;
}

- (void)resetZoom
{
  selfCopy = self;
  ArticleViewController.resetZoom()();
}

- (void)bundleSubscriptionDidSubscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  selfCopy = self;
  _s12NewsArticles21ArticleViewControllerC30bundleSubscriptionDidSubscribeyySo08FCBundleG0CF_0();
}

- (void)URLHandler:(id)handler willOpenURL:(id)l
{
  v4 = sub_1D7D2824C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D281EC();
  (*(v5 + 8))(v8, v4);
}

- (BOOL)shouldUpdateFocusInContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  LOBYTE(self) = ArticleViewController.shouldUpdateFocus(in:)(contextCopy);

  return self & 1;
}

@end