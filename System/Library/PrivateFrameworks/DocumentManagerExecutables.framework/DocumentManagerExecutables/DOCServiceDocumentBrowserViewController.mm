@interface DOCServiceDocumentBrowserViewController
- (BOOL)documentBrowser:(id)browser shouldShowActivityViewControllerForDocumentURLs:(id)ls popoverTracker:(id)tracker isContentManaged:(BOOL)managed additionalActivities:(id)activities activityProxy:(id)proxy;
- (BOOL)establishFirstResponder;
- (_TtC26DocumentManagerExecutables39DOCServiceDocumentBrowserViewController)initWithCoder:(id)coder;
- (_TtC26DocumentManagerExecutables39DOCServiceDocumentBrowserViewController)initWithConfiguration:(id)configuration;
- (id)initForOpeningContentTypes:(id)types;
- (id)initForOpeningFilesWithContentTypes:(id)types;
- (void)_applyBrowserStateChange:(id)change force:(BOOL)force;
- (void)_clearCurrentOpenInteraction;
- (void)_dismissAllPresentedViewControllers:(BOOL)controllers completion:(id)completion;
- (void)_getAnimationInfoForDocumentAtURL:(id)l completion:(id)completion;
- (void)_importDocumentAtURLWrapper:(id)wrapper mode:(unint64_t)mode toCurrentBrowserLocationWithCompletion:(id)completion;
- (void)_importDocumentAtURLWrapper:(id)wrapper nextToDocumentAtURLWrapper:(id)lWrapper mode:(unint64_t)mode completionHandler:(id)handler;
- (void)_initiateDocumentCreationWithIntent:(id)intent;
- (void)_renameDocumentAtURL:(id)l newName:(id)name completion:(id)completion;
- (void)_revealDocumentAtURL:(id)l importIfNeeded:(BOOL)needed completion:(id)completion;
- (void)_revealSymbolicLocation:(unint64_t)location completion:(id)completion;
- (void)_setCustomActions:(id)actions;
- (void)_setDefaultDocumentAspectRatio:(double)ratio;
- (void)configureUIPDocumentLandingStyleIfNecessary;
- (void)didPerformActionOn:(id)on;
- (void)didPerformActionOn:(id)on overflowAction:(BOOL)action;
- (void)documentBrowser:(id)browser didImportDocumentAtURL:(id)l toDestinationURL:(id)rL;
- (void)documentBrowser:(id)browser didPickDocumentsAtURLs:(id)ls;
- (void)documentBrowser:(id)browser didRequestDocumentCreationWithHandler:(id)handler;
- (void)documentBrowser:(id)browser failedToImportDocumentAtURL:(id)l error:(id)error;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)tabbedBrowserViewController:(id)controller didFinishInitialLoad:(BOOL)load ofTab:(unint64_t)tab;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation DOCServiceDocumentBrowserViewController

- (_TtC26DocumentManagerExecutables39DOCServiceDocumentBrowserViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCServiceDocumentBrowserViewController_remoteAdditionalLeadingNavigationBarButtonItems) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCServiceDocumentBrowserViewController_remoteAdditionalTrailingNavigationBarButtonItems) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCServiceDocumentBrowserViewController_hasAddedUIPBackdrop) = 0;
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCServiceDocumentBrowserViewController_updateBarButtonTrackingViews_lastSentFramesByUUID;
  *(&self->super.super.super.super.super.isa + v3) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So6CGRectVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v9.receiver = self;
  v9.super_class = type metadata accessor for DOCServiceDocumentBrowserViewController();
  windowCopy = window;
  v7 = v9.receiver;
  [(UIDocumentBrowserViewController *)&v9 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  v8 = windowCopy;
  [v8 makeKeyWindow];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCServiceDocumentBrowserViewController();
  v2 = v3.receiver;
  [(DOCTabbedBrowserViewController *)&v3 viewDidLoad];
  if ([v2 enclosedInUIPDocumentLanding])
  {
    (*((*MEMORY[0x277D85000] & *v2) + 0xF8))();
  }

  [v2 setTabbedBrowserViewControllerDelegate_];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCServiceDocumentBrowserViewController();
  v4 = v8.receiver;
  [(DOCTabbedBrowserViewController *)&v8 viewDidAppear:appearCopy];
  view = [v4 view];
  if (view)
  {
    v6 = view;
    window = [view window];

    [window makeKeyWindow];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  DOCServiceDocumentBrowserViewController.viewDidDisappear(_:)(disappear);
}

- (void)didPerformActionOn:(id)on overflowAction:(BOOL)action
{
  onCopy = on;
  selfCopy = self;
  DOCServiceDocumentBrowserViewController.didPerformAction(on:overflowAction:)(onCopy, action);
}

- (void)didPerformActionOn:(id)on
{
  v4 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.isa) + 0x100);
  onCopy = on;
  selfCopy = self;
  v4(onCopy, 0);
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for DOCServiceDocumentBrowserViewController();
  swift_unknownObjectRetain();
  v4 = v5.receiver;
  [(UIDocumentBrowserViewController *)&v5 preferredContentSizeDidChangeForChildContentContainer:container];
  [container preferredContentSize];
  [v4 setPreferredContentSize_];
  swift_unknownObjectRelease();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  DOCServiceDocumentBrowserViewController.viewWillTransition(to:with:)(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)_revealDocumentAtURL:(id)l importIfNeeded:(BOOL)needed completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = self;
  *(v10 + 24) = l;
  *(v10 + 32) = needed;
  *(v10 + 40) = thunk for @escaping @callee_unowned @convention(block) (@unowned DOCItemBookmark?, @unowned NSError?) -> ()partial apply;
  *(v10 + 48) = v9;
  lCopy = l;
  selfCopy = self;
  v12 = lCopy;

  DOCRunInMainThread(_:)();
}

- (void)_revealSymbolicLocation:(unint64_t)location completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  v8[2] = location;
  v8[3] = thunk for @escaping @callee_unowned @convention(block) (@unowned DOCItemBookmark?, @unowned NSError?) -> ()partial apply;
  v8[4] = v7;
  v8[5] = self;
  selfCopy = self;

  DOCRunInMainThread(_:)();
}

- (void)_initiateDocumentCreationWithIntent:(id)intent
{
  intentCopy = intent;
  selfCopy = self;
  specialized DOCServiceDocumentBrowserViewController._initiateDocumentCreation(withIntent:)();
}

- (void)_renameDocumentAtURL:(id)l newName:(id)name completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);
  lCopy = l;
  selfCopy = self;
  specialized DOCServiceDocumentBrowserViewController._renameDocument(atURL:newName:completion:)(lCopy, v8, v10, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)_dismissAllPresentedViewControllers:(BOOL)controllers completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = self;
  *(v8 + 24) = controllers;
  *(v8 + 32) = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned CGRect) -> ();
  *(v8 + 40) = v7;
  selfCopy = self;

  DOCRunInMainThread(_:)();
}

- (void)_setCustomActions:(id)actions
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  *(v5 + 24) = v4;
  selfCopy = self;
  DOCRunInMainThread(_:)();
}

- (void)_importDocumentAtURLWrapper:(id)wrapper mode:(unint64_t)mode toCurrentBrowserLocationWithCompletion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  v10[2] = wrapper;
  v10[3] = self;
  v10[4] = mode;
  v10[5] = thunk for @escaping @callee_unowned @convention(block) (@unowned DOCItemBookmark?, @unowned NSError?) -> ()partial apply;
  v10[6] = v9;
  wrapperCopy = wrapper;
  selfCopy = self;
  v13 = wrapperCopy;
  v14 = selfCopy;

  DOCRunInMainThread(_:)();
}

- (void)_importDocumentAtURLWrapper:(id)wrapper nextToDocumentAtURLWrapper:(id)lWrapper mode:(unint64_t)mode completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = swift_allocObject();
  v12[2] = wrapper;
  v12[3] = lWrapper;
  v12[4] = self;
  v12[5] = mode;
  v12[6] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned DOCItemBookmark?, @unowned NSError?) -> ();
  v12[7] = v11;
  wrapperCopy = wrapper;
  lWrapperCopy = lWrapper;
  selfCopy = self;
  v16 = wrapperCopy;
  v17 = lWrapperCopy;
  v18 = selfCopy;

  DOCRunInMainThread(_:)();
}

- (void)_setDefaultDocumentAspectRatio:(double)ratio
{
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  *(v5 + 24) = ratio;
  selfCopy = self;
  DOCRunInMainThread(_:)();
}

- (void)_clearCurrentOpenInteraction
{
  selfCopy = self;
  DOCServiceDocumentBrowserViewController._clearCurrentOpenInteraction()();
}

- (void)_getAnimationInfoForDocumentAtURL:(id)l completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  lCopy = l;
  selfCopy = self;
  DOCServiceDocumentBrowserViewController._getAnimationInfoForDocument(atURL:completion:)(lCopy, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned DOCSourceByType) -> (), v7);
}

- (BOOL)documentBrowser:(id)browser shouldShowActivityViewControllerForDocumentURLs:(id)ls popoverTracker:(id)tracker isContentManaged:(BOOL)managed additionalActivities:(id)activities activityProxy:(id)proxy
{
  managedCopy = managed;
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v26 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for URL();
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v12 + 104))(v15, *MEMORY[0x277D851B8], v11);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 32) = managedCopy;
  v19 = *MEMORY[0x277D85000] & self->super.super.super.super.super.isa;
  *(v18 + 16) = v17;
  *(v18 + 24) = tracker;
  *(v18 + 40) = v16;
  *(v18 + 48) = proxy;
  v20 = *(v19 + 552);
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain_n();
  selfCopy = self;

  v20(v25, 0, v15, closure #1 in DOCServiceDocumentBrowserViewController.documentBrowser(_:shouldShowActivityViewControllerForDocumentURLs:popoverTracker:isContentManaged:additionalActivities:activityProxy:)partial apply, v18);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v12 + 8))(v15, v26);

  return 0;
}

- (void)documentBrowser:(id)browser didPickDocumentsAtURLs:(id)ls
{
  type metadata accessor for URL();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  browserCopy = browser;
  selfCopy = self;
  specialized DOCServiceDocumentBrowserViewController.documentBrowser(_:didPickDocumentsAt:)(v6);
}

- (void)documentBrowser:(id)browser didRequestDocumentCreationWithHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCServiceDocumentBrowserViewController_hostProxy);
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSURL?, @unowned UIDocumentBrowserImportMode) -> ();
  *(v8 + 24) = v6;
  v11[4] = closure #1 in DOCServiceDocumentBrowserViewController.documentBrowser(_:didRequestDocumentCreationWithHandler:)partial apply;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@guaranteed FPSandboxingURLWrapper?, @unowned UIDocumentBrowserImportMode) -> ();
  v11[3] = &block_descriptor_162_0;
  v9 = _Block_copy(v11);
  selfCopy = self;

  [v7 _didRequestDocumentCreationWithHandler_];

  _Block_release(v9);
}

- (void)documentBrowser:(id)browser didImportDocumentAtURL:(id)l toDestinationURL:(id)rL
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v19 - v14;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  browserCopy = browser;
  selfCopy = self;
  specialized DOCServiceDocumentBrowserViewController.documentBrowser(_:didImportDocumentAt:toDestinationURL:)(v15, v11);

  v18 = *(v8 + 8);
  v18(v11, v7);
  v18(v15, v7);
}

- (void)documentBrowser:(id)browser failedToImportDocumentAtURL:(id)l error:(id)error
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCServiceDocumentBrowserViewController_hostProxy);
  selfCopy = self;
  errorCopy = error;
  URL._bridgeToObjectiveC()(v15);
  v17 = v16;
  if (errorCopy)
  {
    v18 = _convertErrorToNSError(_:)();
  }

  else
  {
    v18 = 0;
  }

  [v12 _failedToImportDocumentAtURL_error_];

  (*(v8 + 8))(v11, v7);
}

- (id)initForOpeningFilesWithContentTypes:(id)types
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)initForOpeningContentTypes:(id)types
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables39DOCServiceDocumentBrowserViewController)initWithConfiguration:(id)configuration
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)tabbedBrowserViewController:(id)controller didFinishInitialLoad:(BOOL)load ofTab:(unint64_t)tab
{
  if (load)
  {
    v5 = objc_opt_self();
    v7[4] = closure #1 in DOCServiceDocumentBrowserViewController.tabbedBrowserViewController(_:didFinishInitialLoad:of:);
    v7[5] = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v7[3] = &block_descriptor_152_2;
    v6 = _Block_copy(v7);
    [v5 performAfterCATransactionCommits_];
    _Block_release(v6);
  }
}

- (BOOL)establishFirstResponder
{
  selfCopy = self;
  v3 = DOCServiceDocumentBrowserViewController.establishFirstResponder()();

  return v3;
}

- (void)_applyBrowserStateChange:(id)change force:(BOOL)force
{
  changeCopy = change;
  selfCopy = self;
  DOCServiceDocumentBrowserViewController._applyBrowserStateChange(_:force:)(changeCopy, force);
}

- (void)configureUIPDocumentLandingStyleIfNecessary
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for DOCServiceDocumentBrowserViewController();
  v2 = v9.receiver;
  configureUIPDocumentLandingStyleIfNecessary = [(DOCTabbedBrowserViewController *)&v9 configureUIPDocumentLandingStyleIfNecessary];
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v2) + 0xF8))(configureUIPDocumentLandingStyleIfNecessary);
  v6 = (*((*v4 & *v2) + 0x158))(v5);
  if (v6)
  {
    v8 = v6;
    (*((*v4 & *v6) + 0x160))(v6, v7);
  }
}

@end