@interface DOCServiceDocumentBrowserViewController
- (BOOL)documentBrowser:(id)a3 shouldShowActivityViewControllerForDocumentURLs:(id)a4 popoverTracker:(id)a5 isContentManaged:(BOOL)a6 additionalActivities:(id)a7 activityProxy:(id)a8;
- (BOOL)establishFirstResponder;
- (_TtC26DocumentManagerExecutables39DOCServiceDocumentBrowserViewController)initWithCoder:(id)a3;
- (_TtC26DocumentManagerExecutables39DOCServiceDocumentBrowserViewController)initWithConfiguration:(id)a3;
- (id)initForOpeningContentTypes:(id)a3;
- (id)initForOpeningFilesWithContentTypes:(id)a3;
- (void)_applyBrowserStateChange:(id)a3 force:(BOOL)a4;
- (void)_clearCurrentOpenInteraction;
- (void)_dismissAllPresentedViewControllers:(BOOL)a3 completion:(id)a4;
- (void)_getAnimationInfoForDocumentAtURL:(id)a3 completion:(id)a4;
- (void)_importDocumentAtURLWrapper:(id)a3 mode:(unint64_t)a4 toCurrentBrowserLocationWithCompletion:(id)a5;
- (void)_importDocumentAtURLWrapper:(id)a3 nextToDocumentAtURLWrapper:(id)a4 mode:(unint64_t)a5 completionHandler:(id)a6;
- (void)_initiateDocumentCreationWithIntent:(id)a3;
- (void)_renameDocumentAtURL:(id)a3 newName:(id)a4 completion:(id)a5;
- (void)_revealDocumentAtURL:(id)a3 importIfNeeded:(BOOL)a4 completion:(id)a5;
- (void)_revealSymbolicLocation:(unint64_t)a3 completion:(id)a4;
- (void)_setCustomActions:(id)a3;
- (void)_setDefaultDocumentAspectRatio:(double)a3;
- (void)configureUIPDocumentLandingStyleIfNecessary;
- (void)didPerformActionOn:(id)a3;
- (void)didPerformActionOn:(id)a3 overflowAction:(BOOL)a4;
- (void)documentBrowser:(id)a3 didImportDocumentAtURL:(id)a4 toDestinationURL:(id)a5;
- (void)documentBrowser:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)documentBrowser:(id)a3 didRequestDocumentCreationWithHandler:(id)a4;
- (void)documentBrowser:(id)a3 failedToImportDocumentAtURL:(id)a4 error:(id)a5;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)tabbedBrowserViewController:(id)a3 didFinishInitialLoad:(BOOL)a4 ofTab:(unint64_t)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation DOCServiceDocumentBrowserViewController

- (_TtC26DocumentManagerExecutables39DOCServiceDocumentBrowserViewController)initWithCoder:(id)a3
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

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v9.receiver = self;
  v9.super_class = type metadata accessor for DOCServiceDocumentBrowserViewController();
  v6 = a3;
  v7 = v9.receiver;
  [(UIDocumentBrowserViewController *)&v9 viewDidMoveToWindow:v6 shouldAppearOrDisappear:v4];
  v8 = v6;
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

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCServiceDocumentBrowserViewController();
  v4 = v8.receiver;
  [(DOCTabbedBrowserViewController *)&v8 viewDidAppear:v3];
  v5 = [v4 view];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 window];

    [v7 makeKeyWindow];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  DOCServiceDocumentBrowserViewController.viewDidDisappear(_:)(a3);
}

- (void)didPerformActionOn:(id)a3 overflowAction:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  DOCServiceDocumentBrowserViewController.didPerformAction(on:overflowAction:)(v6, a4);
}

- (void)didPerformActionOn:(id)a3
{
  v4 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.isa) + 0x100);
  v5 = a3;
  v6 = self;
  v4(v5, 0);
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for DOCServiceDocumentBrowserViewController();
  swift_unknownObjectRetain();
  v4 = v5.receiver;
  [(UIDocumentBrowserViewController *)&v5 preferredContentSizeDidChangeForChildContentContainer:a3];
  [a3 preferredContentSize];
  [v4 setPreferredContentSize_];
  swift_unknownObjectRelease();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  DOCServiceDocumentBrowserViewController.viewWillTransition(to:with:)(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)_revealDocumentAtURL:(id)a3 importIfNeeded:(BOOL)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = self;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = thunk for @escaping @callee_unowned @convention(block) (@unowned DOCItemBookmark?, @unowned NSError?) -> ()partial apply;
  *(v10 + 48) = v9;
  v11 = a3;
  v13 = self;
  v12 = v11;

  DOCRunInMainThread(_:)();
}

- (void)_revealSymbolicLocation:(unint64_t)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = thunk for @escaping @callee_unowned @convention(block) (@unowned DOCItemBookmark?, @unowned NSError?) -> ()partial apply;
  v8[4] = v7;
  v8[5] = self;
  v9 = self;

  DOCRunInMainThread(_:)();
}

- (void)_initiateDocumentCreationWithIntent:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DOCServiceDocumentBrowserViewController._initiateDocumentCreation(withIntent:)();
}

- (void)_renameDocumentAtURL:(id)a3 newName:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);
  v11 = a3;
  v12 = self;
  specialized DOCServiceDocumentBrowserViewController._renameDocument(atURL:newName:completion:)(v11, v8, v10, v12, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)_dismissAllPresentedViewControllers:(BOOL)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = self;
  *(v8 + 24) = a3;
  *(v8 + 32) = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned CGRect) -> ();
  *(v8 + 40) = v7;
  v9 = self;

  DOCRunInMainThread(_:)();
}

- (void)_setCustomActions:(id)a3
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  *(v5 + 24) = v4;
  v6 = self;
  DOCRunInMainThread(_:)();
}

- (void)_importDocumentAtURLWrapper:(id)a3 mode:(unint64_t)a4 toCurrentBrowserLocationWithCompletion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = self;
  v10[4] = a4;
  v10[5] = thunk for @escaping @callee_unowned @convention(block) (@unowned DOCItemBookmark?, @unowned NSError?) -> ()partial apply;
  v10[6] = v9;
  v11 = a3;
  v12 = self;
  v13 = v11;
  v14 = v12;

  DOCRunInMainThread(_:)();
}

- (void)_importDocumentAtURLWrapper:(id)a3 nextToDocumentAtURLWrapper:(id)a4 mode:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = self;
  v12[5] = a5;
  v12[6] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned DOCItemBookmark?, @unowned NSError?) -> ();
  v12[7] = v11;
  v13 = a3;
  v14 = a4;
  v15 = self;
  v16 = v13;
  v17 = v14;
  v18 = v15;

  DOCRunInMainThread(_:)();
}

- (void)_setDefaultDocumentAspectRatio:(double)a3
{
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  *(v5 + 24) = a3;
  v6 = self;
  DOCRunInMainThread(_:)();
}

- (void)_clearCurrentOpenInteraction
{
  v2 = self;
  DOCServiceDocumentBrowserViewController._clearCurrentOpenInteraction()();
}

- (void)_getAnimationInfoForDocumentAtURL:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  DOCServiceDocumentBrowserViewController._getAnimationInfoForDocument(atURL:completion:)(v8, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned DOCSourceByType) -> (), v7);
}

- (BOOL)documentBrowser:(id)a3 shouldShowActivityViewControllerForDocumentURLs:(id)a4 popoverTracker:(id)a5 isContentManaged:(BOOL)a6 additionalActivities:(id)a7 activityProxy:(id)a8
{
  v24 = a6;
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
  *(v18 + 32) = v24;
  v19 = *MEMORY[0x277D85000] & self->super.super.super.super.super.isa;
  *(v18 + 16) = v17;
  *(v18 + 24) = a5;
  *(v18 + 40) = v16;
  *(v18 + 48) = a8;
  v20 = *(v19 + 552);
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain_n();
  v21 = self;

  v20(v25, 0, v15, closure #1 in DOCServiceDocumentBrowserViewController.documentBrowser(_:shouldShowActivityViewControllerForDocumentURLs:popoverTracker:isContentManaged:additionalActivities:activityProxy:)partial apply, v18);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v12 + 8))(v15, v26);

  return 0;
}

- (void)documentBrowser:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  type metadata accessor for URL();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  specialized DOCServiceDocumentBrowserViewController.documentBrowser(_:didPickDocumentsAt:)(v6);
}

- (void)documentBrowser:(id)a3 didRequestDocumentCreationWithHandler:(id)a4
{
  v5 = _Block_copy(a4);
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
  v10 = self;

  [v7 _didRequestDocumentCreationWithHandler_];

  _Block_release(v9);
}

- (void)documentBrowser:(id)a3 didImportDocumentAtURL:(id)a4 toDestinationURL:(id)a5
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v19 - v14;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = a3;
  v17 = self;
  specialized DOCServiceDocumentBrowserViewController.documentBrowser(_:didImportDocumentAt:toDestinationURL:)(v15, v11);

  v18 = *(v8 + 8);
  v18(v11, v7);
  v18(v15, v7);
}

- (void)documentBrowser:(id)a3 failedToImportDocumentAtURL:(id)a4 error:(id)a5
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCServiceDocumentBrowserViewController_hostProxy);
  v13 = self;
  v14 = a5;
  URL._bridgeToObjectiveC()(v15);
  v17 = v16;
  if (v14)
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

- (id)initForOpeningFilesWithContentTypes:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)initForOpeningContentTypes:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables39DOCServiceDocumentBrowserViewController)initWithConfiguration:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)tabbedBrowserViewController:(id)a3 didFinishInitialLoad:(BOOL)a4 ofTab:(unint64_t)a5
{
  if (a4)
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
  v2 = self;
  v3 = DOCServiceDocumentBrowserViewController.establishFirstResponder()();

  return v3;
}

- (void)_applyBrowserStateChange:(id)a3 force:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  DOCServiceDocumentBrowserViewController._applyBrowserStateChange(_:force:)(v6, a4);
}

- (void)configureUIPDocumentLandingStyleIfNecessary
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for DOCServiceDocumentBrowserViewController();
  v2 = v9.receiver;
  v3 = [(DOCTabbedBrowserViewController *)&v9 configureUIPDocumentLandingStyleIfNecessary];
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v2) + 0xF8))(v3);
  v6 = (*((*v4 & *v2) + 0x158))(v5);
  if (v6)
  {
    v8 = v6;
    (*((*v4 & *v6) + 0x160))(v6, v7);
  }
}

@end