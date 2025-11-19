@interface DOCItemCollectionViewController
+ (void)resetRestorableSettingsCache;
- (BOOL)acceptsKeyboardFocus;
- (BOOL)accessibilityIsInListMode;
- (BOOL)accessibilityIsRenamingInline;
- (BOOL)becomeFirstResponder;
- (BOOL)becomeKeyboardFocused;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 canHandleDropSession:(id)a4;
- (BOOL)collectionView:(id)a3 canPerformAction:(SEL)a4 forItemAtIndexPath:(id)a5 withSender:(id)a6;
- (BOOL)collectionView:(id)a3 canPerformPrimaryActionForItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldBeginMultipleSelectionInteractionAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSpringLoadItemAtIndexPath:(id)a4 withContext:(id)a5;
- (BOOL)establishFirstResponder;
- (BOOL)forceEditingMode;
- (BOOL)hidesNavigationBackButton;
- (BOOL)isInKeyWindow;
- (BOOL)needsForcedUnderNavBarAppearanceOnAppear;
- (BOOL)resignFirstResponder;
- (CGPoint)collectionView:(id)a3 targetContentOffsetForProposedContentOffset:(CGPoint)a4;
- (CGRect)absoluteFrame;
- (DOCContentUnavailableConfigurationState)docContentUnavailableConfigurationState;
- (NSArray)keyCommands;
- (NSArray)preferredFocusEnvironments;
- (NSString)description;
- (NSString)title;
- (NSUndoManager)undoManager;
- (UIEdgeInsets)_contentOverlayInsets;
- (UISplitViewController)splitViewController;
- (UITraitCollection)traitCollection;
- (_TtP26DocumentManagerExecutables27DOCScannedDocumentReceiving_)doc_documentScannerReceivingTarget;
- (_TtP26DocumentManagerExecutables34DOCBrowserContainedActionReporting_)actionReporting;
- (id)_collectionView:(id)a3 typeSelectStringForItemAtIndexPath:(id)a4;
- (id)_multitaskingDragExclusionRects;
- (id)collectionView:(id)a3 contextMenuConfiguration:(id)a4 dismissalPreviewForItemAtIndexPath:(id)a5;
- (id)collectionView:(id)a3 contextMenuConfiguration:(id)a4 highlightPreviewForItemAtIndexPath:(id)a5;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 dragPreviewParametersForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (id)collectionView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6;
- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (id)collectionView:(id)a3 previewForDismissingContextMenuWithConfiguration:(id)a4;
- (id)collectionView:(id)a3 previewForHighlightingContextMenuWithConfiguration:(id)a4;
- (id)contextMenuForFolder;
- (id)contextMenuForItemsAt:(id)a3;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3;
- (id)providerForDeferredMenuElement:(id)a3;
- (int64_t)_collectionView:(id)a3 dataOwnerForDragSession:(id)a4 atIndexPath:(id)a5;
- (int64_t)_collectionView:(id)a3 dataOwnerForDropSession:(id)a4 withDestinationIndexPath:(id)a5;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4;
- (int64_t)displayMode;
- (void)_collectionView:(id)a3 updateTypeSelectResultForCell:(id)a4 atIndexPath:(id)a5 withItemResult:(id)a6 animator:(id)a7;
- (void)_doc_performLiveResizeSkippedWork;
- (void)_doc_performLiveResizeSkipped_updateOverlay;
- (void)_setContentOverlayInsets:(UIEdgeInsets)a3;
- (void)actionBarButtonTriggeredWithActionBarButton:(id)a3;
- (void)appProtectionStatusChangedWithNotification:(id)a3;
- (void)barButtonTappedWithSender:(id)a3;
- (void)checkIfOutlineModeNeedsChange;
- (void)collectionView:(id)a3 didBeginMultipleSelectionInteractionAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5;
- (void)collectionView:(id)a3 dragSessionDidEnd:(id)a4;
- (void)collectionView:(id)a3 dragSessionWillBegin:(id)a4;
- (void)collectionView:(id)a3 dropSessionDidEnd:(id)a4;
- (void)collectionView:(id)a3 dropSessionDidEnter:(id)a4;
- (void)collectionView:(id)a3 dropSessionDidExit:(id)a4;
- (void)collectionView:(id)a3 performAction:(SEL)a4 forItemAtIndexPath:(id)a5 withSender:(id)a6;
- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4;
- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplayContextMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6;
- (void)collectionView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)createFolder:(id)a3;
- (void)deselectAllItems;
- (void)didUpdateCollectionViewContentOffsetWithNotification:(id)a3;
- (void)didUpdateCollectionViewIsScrollEnabledWithNotification:(id)a3;
- (void)displayInfoForCurrentItem:(id)a3;
- (void)docUpdateContentUnavailableConfigurationUsingState:(id)a3;
- (void)documentCameraViewController:(id)a3 didFinishWithScan:(id)a4;
- (void)effectiveAppearanceDidChange:(id)a3;
- (void)firstItemInsertionRequestsFocusExpired;
- (void)getCellFor:(id)a3 :(id)a4;
- (void)getPopoverTrackerForItem:(id)a3 completionBlock:(id)a4;
- (void)getTransitionControllerForItem:(id)a3 completionBlock:(id)a4;
- (void)getTransitionControllerForURL:(id)a3 completionBlock:(id)a4;
- (void)getViewFor:(id)a3 waitForNewThumbnail:(BOOL)a4 :(id)a5;
- (void)loadView;
- (void)menuControllerWillHide;
- (void)menuControllerWillShow;
- (void)moveHere:(id)a3;
- (void)performActionWithAction:(id)a3 actionContext:(id)a4;
- (void)performAddFolderToDock:(id)a3;
- (void)performArrowKeyDisclosure:(id)a3;
- (void)performCommandReturnKey:(id)a3;
- (void)performCompress:(id)a3;
- (void)performConfirmPickerExportOrDrillIn:(id)a3;
- (void)performCopyAsPathname:(id)a3;
- (void)performCreateFolder:(id)a3;
- (void)performCreateFolderWithSelection:(id)a3;
- (void)performDeleteNow:(id)a3;
- (void)performDeselectAll:(id)a3;
- (void)performDismiss:(id)a3;
- (void)performDuplicate:(id)a3;
- (void)performGetInfo:(id)a3;
- (void)performGoToEnclosingFolder:(id)a3;
- (void)performGoToEnclosingFolderInNewWindow:(id)a3;
- (void)performKeyboardFocusKeyCommand:(id)a3;
- (void)performMarkAsFavorite:(id)a3;
- (void)performMoveHere:(id)a3;
- (void)performOpen:(id)a3;
- (void)performPreview:(id)a3;
- (void)performRename:(id)a3;
- (void)performRevealItem:(id)a3;
- (void)performShare:(id)a3;
- (void)prepareForPopoverPresentation:(id)a3;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesChanged:(id)a3 withEvent:(id)a4;
- (void)resizeColumnsIfNeeded;
- (void)revealWithNodes:(id)a3 selectEvenIfVisible:(BOOL)a4 completionBlock:(id)a5;
- (void)scrollViewDidScroll:(id)a3;
- (void)selectAll:(id)a3;
- (void)selectAllItems;
- (void)setActionReporting:(id)a3;
- (void)setDisplayMode:(int64_t)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setForceEditingMode:(BOOL)a3;
- (void)setNeedsForcedUnderNavBarAppearanceOnAppear:(BOOL)a3;
- (void)setProtectedStateToLockedForDidEnterBackground;
- (void)startFolderCreation:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateProtectedStateForDidEnterForeground;
- (void)validateCommand:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)wantsToCreateNewFile;
- (void)wantsToCreateNewFolder;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation DOCItemCollectionViewController

- (void)checkIfOutlineModeNeedsChange
{
  v2 = self;
  DOCItemCollectionViewController.checkIfOutlineModeNeedsChange()();
}

- (void)performCompress:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DOCItemCollectionViewController.performCompress(_:)();
}

- (void)performCopyAsPathname:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DOCItemCollectionViewController.performCopyAsPathname(_:)();
}

- (void)performCreateFolder:(id)a3
{
  v6[3] = type metadata accessor for DOCItemCollectionViewController(0);
  v6[0] = self;
  v4 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x1548);
  v5 = self;
  v4(v6);

  outlined destroy of CharacterSet?(v6, &_sypSgMd);
}

- (void)performCreateFolderWithSelection:(id)a3
{
  v3 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x1550);
  v4 = self;
  v3(1, 1);
}

- (void)performDeselectAll:(id)a3
{
  v3 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x1308);
  v4 = self;
  v3();
}

- (void)performDuplicate:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DOCItemCollectionViewController.performDuplicate(_:)();
}

- (void)performDeleteNow:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DOCItemCollectionViewController.performDeleteNow(_:)();
}

- (void)performMoveHere:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCItemCollectionViewController.performMoveHere(_:)(v4);
}

- (void)performOpen:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DOCItemCollectionViewController.performOpen(_:)();
}

- (void)performCommandReturnKey:(id)a3
{
  v3 = self;
  if (DOCItemCollectionViewController.canConfirmPickerImport.getter())
  {
    DOCItemCollectionViewController.confirmPickerImport()();
    goto LABEL_7;
  }

  if ((DOCItemCollectionViewController.canDrillInToPickerSelection.getter() & 1) == 0)
  {
    if (!DOCItemCollectionViewController.exportablePickerTargetNode.getter())
    {
      goto LABEL_7;
    }

    swift_unknownObjectRelease();
  }

  DOCItemCollectionViewController.confirmPickerExportOrDrillIn()();
LABEL_7:
}

- (void)performConfirmPickerExportOrDrillIn:(id)a3
{
  v3 = self;
  DOCItemCollectionViewController.confirmPickerExportOrDrillIn()();
}

- (void)performRename:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCItemCollectionViewController.performRename(_:)(v4);
}

- (void)performPreview:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCItemCollectionViewController.performPreview(_:)(v4);
}

- (void)performMarkAsFavorite:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DOCItemCollectionViewController.performDeleteNow(_:)();
}

- (void)performAddFolderToDock:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DOCItemCollectionViewController.performAddFolderToDock(_:)();
}

- (void)performGoToEnclosingFolder:(id)a3
{
  v3 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x1010);
  v8 = self;
  v4 = v3();
  v5 = v3();
  v6 = [v5 effectiveUserInterfaceLayoutDirection];

  if (v6)
  {
    v7 = 4;
  }

  else
  {
    v7 = 3;
  }

  specialized DOCFocusableCollectionView.performNavigation(into:modifierFlags:)(v7, 0);
}

- (void)performGoToEnclosingFolderInNewWindow:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCItemCollectionViewController.performGoToEnclosingFolderInNewWindow(_:)(v4);
}

- (void)performRevealItem:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DOCItemCollectionViewController.performRevealItem(_:)();
}

- (void)performShare:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DOCItemCollectionViewController.performDeleteNow(_:)();
}

- (void)performGetInfo:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DOCItemCollectionViewController.performDeleteNow(_:)();
}

- (void)performDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCItemCollectionViewController.performDismiss(_:)(v4);
}

- (NSArray)keyCommands
{
  v2 = self;
  v3 = DOCItemCollectionViewController.keyCommands.getter();

  if (v3)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIKeyCommand);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)performArrowKeyDisclosure:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCItemCollectionViewController.performArrowKeyDisclosure(_:)(v4);
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = DOCItemCollectionViewController.canPerformAction(_:withSender:)(a3, v10);

  outlined destroy of CharacterSet?(v10, &_sypSgMd);
  return v8 & 1;
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCItemCollectionViewController.validate(_:)(v4);
}

- (DOCContentUnavailableConfigurationState)docContentUnavailableConfigurationState
{
  v2 = self;
  v3 = DOCItemCollectionViewController.docContentUnavailableConfigurationState.getter();

  return v3;
}

- (void)docUpdateContentUnavailableConfigurationUsingState:(id)a3
{
  v4 = a3;
  v5.super._impl = self;
  impl = v5.super._impl;
  v5.super.super.isa = v4;
  DOCItemCollectionViewController.docUpdateContentUnavailableConfiguration(using:)(v5);
}

- (_TtP26DocumentManagerExecutables34DOCBrowserContainedActionReporting_)actionReporting
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setActionReporting:(id)a3
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v4 = self;
  swift_unknownObjectRetain();
  v5 = DOCBrowserContainedViewController.searchCollection.getter();
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0x277D85000];
    v8 = (*((*MEMORY[0x277D85000] & *v4->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0xE8))();
    (*((*v7 & *v6) + 0xF0))(v8);
  }

  swift_unknownObjectRelease();
}

- (NSString)description
{
  v2 = self;
  v3 = DOCItemCollectionViewController.description.getter();
  v5 = v4;

  v6 = MEMORY[0x24C1FAD20](v3, v5);

  return v6;
}

- (UITraitCollection)traitCollection
{
  v2 = self;
  v3 = DOCItemCollectionViewController.traitCollection.getter();

  return v3;
}

- (int64_t)displayMode
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_displayMode;
  swift_beginAccess();
  return *&self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque[v3];
}

- (void)setDisplayMode:(int64_t)a3
{
  v4 = self;
  DOCItemCollectionViewController.displayMode.setter(a3);
}

+ (void)resetRestorableSettingsCache
{
  if (one-time initialization token for restorableSettingsCache != -1)
  {
    swift_once();
  }

  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables31DOCItemCollectionViewControllerC26RestorableSettingsCacheKeyO_AC0jK033_45098A9DF3FF02797EF1E06F74668D65LLVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  swift_beginAccess();
  static DOCItemCollectionViewController.restorableSettingsCache = v2;
}

- (NSArray)preferredFocusEnvironments
{
  v2 = self;
  DOCItemCollectionViewController.preferredFocusEnvironments.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18UIFocusEnvironment_pMd);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (UISplitViewController)splitViewController
{
  v2 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0xF18);
  v3 = self;
  if ((v2() & 1) == 0 || (v4 = -[DOCItemCollectionViewController presentingViewController](v3, sel_presentingViewController)) == 0 || (v5 = v4, v6 = [v4 splitViewController], v5, !v6))
  {
    v8.receiver = v3;
    v8.super_class = type metadata accessor for DOCItemCollectionViewController(0);
    v6 = [(DOCItemCollectionViewController *)&v8 splitViewController];
  }

  return v6;
}

- (NSString)title
{
  v2 = self;
  v3 = DOCItemCollectionViewController.title.getter();
  v5 = v4;

  if (v5)
  {
    v6 = MEMORY[0x24C1FAD20](v3, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (UIEdgeInsets)_contentOverlayInsets
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  [(DOCItemCollectionViewController *)&v6 _contentOverlayInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)_setContentOverlayInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = *&self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration];
  v8 = self;
  if ([v7 shouldAdjustContentInset])
  {
    v13.super_class = type metadata accessor for DOCItemCollectionViewController(0);
    [(DOCItemCollectionViewController *)&v13 _setContentOverlayInsets:top, left, bottom, right, v8, v13.super_class, v14.receiver, v14.super_class];
  }

  else
  {
    v9 = *MEMORY[0x277D768C8];
    v10 = *(MEMORY[0x277D768C8] + 8);
    v11 = *(MEMORY[0x277D768C8] + 16);
    v12 = *(MEMORY[0x277D768C8] + 24);
    v14.super_class = type metadata accessor for DOCItemCollectionViewController(0);
    [(DOCItemCollectionViewController *)&v14 _setContentOverlayInsets:v9, v10, v11, v12, v13.receiver, v13.super_class, v8, v14.super_class];
  }
}

- (void)selectAllItems
{
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x1310);
  v5 = self;
  if ((v3() & 1) == 0)
  {
    v4 = *((*v2 & *v5->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x1318);
    v4(1);
    closure #1 in DOCItemCollectionViewController.selectAllItems()(v5);
    v4(0);
  }
}

- (void)deselectAllItems
{
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x1310);
  v5 = self;
  if ((v3() & 1) == 0)
  {
    v4 = *((*v2 & *v5->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x1318);
    v4(1);
    (*((*v2 & *v5->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x1300))(0, MEMORY[0x277D84F90]);
    v4(0);
  }
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v7 = a3;
  v8 = self;
  DOCItemCollectionViewController.viewDidMove(to:shouldAppearOrDisappear:)(a3, a4);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  DOCItemCollectionViewController.traitCollectionDidChange(_:)(v9);
}

- (void)_doc_performLiveResizeSkippedWork
{
  v2 = self;
  DOCItemCollectionViewController._doc_performLiveResizeSkippedWork()();
}

- (void)effectiveAppearanceDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCItemCollectionViewController.effectiveAppearanceDidChange(_:)(v4);
}

- (void)loadView
{
  v2 = self;
  DOCItemCollectionViewController.loadView()();
}

- (void)viewDidLoad
{
  v2 = self;
  DOCItemCollectionViewController.viewDidLoad()();
}

- (void)resizeColumnsIfNeeded
{
  v2 = self;
  DOCItemCollectionViewController.resizeColumnsIfNeeded()();
}

- (NSUndoManager)undoManager
{
  v2 = [objc_opt_self() shared];

  return v2;
}

- (BOOL)canBecomeFirstResponder
{
  v2 = self;
  v3 = DOCItemCollectionViewController.canBecomeFirstResponder.getter();

  return v3;
}

- (BOOL)resignFirstResponder
{
  v2 = self;
  v3 = DOCItemCollectionViewController.resignFirstResponder()();

  return v3;
}

- (BOOL)becomeFirstResponder
{
  v2 = self;
  v3 = DOCItemCollectionViewController.becomeFirstResponder()();

  return v3;
}

- (void)performKeyboardFocusKeyCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCItemCollectionViewController.performKeyboardFocusKeyCommand(_:)(v4);
}

- (void)selectAll:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    v5 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    v5 = self;
  }

  v6 = MEMORY[0x277D85000];
  v7 = (*((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0xCB8))(v5);
  if (v7 >> 62)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8 >= 1 && (*((*v6 & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0xA98))(v9))
  {
    v11 = v10;
    ObjectType = swift_getObjectType();
    (*(v11 + 56))(v13, 0, ObjectType, v11);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  outlined destroy of CharacterSet?(v13, &_sypSgMd);
}

- (void)moveHere:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  DOCItemCollectionViewController.moveHere(_:)();

  outlined destroy of CharacterSet?(v6, &_sypSgMd);
}

- (void)createFolder:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  (*((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x1550))(0, 1);

  outlined destroy of CharacterSet?(v6, &_sypSgMd);
}

- (id)providerForDeferredMenuElement:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = DOCItemCollectionViewController.provider(for:)(v4);

  return v6;
}

- (BOOL)hidesNavigationBackButton
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  v2 = v7.receiver;
  if ([(DOCBrowserContainedViewController *)&v7 hidesNavigationBackButton])
  {

    v3 = 1;
  }

  else if ([v2 isEditing])
  {
    v4 = (*((*MEMORY[0x277D85000] & *v2) + 0x148))();

    v3 = v4 ^ 1;
  }

  else
  {
    v5 = (*((*MEMORY[0x277D85000] & *v2) + 0xBD8))();

    v3 = v5 == 3;
  }

  return v3 & 1;
}

- (void)didUpdateCollectionViewIsScrollEnabledWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCItemCollectionViewController.didUpdateCollectionViewIsScrollEnabled(notification:)(v4);
}

- (void)didUpdateCollectionViewContentOffsetWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCItemCollectionViewController.didUpdateCollectionViewContentOffset(notification:)(v4);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  DOCItemCollectionViewController.viewWillAppear(_:)(a3);
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  DOCItemCollectionViewController.viewIsAppearing(_:)(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  DOCItemCollectionViewController.viewDidAppear(_:)(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  DOCItemCollectionViewController.viewWillDisappear(_:)(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v11.receiver = self;
  v11.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  v4 = v11.receiver;
  v5 = [(DOCItemCollectionViewController *)&v11 viewDidDisappear:v3];
  v6 = MEMORY[0x277D85000];
  v7 = (*((*MEMORY[0x277D85000] & *v4) + 0x1010))(v5);
  UICollectionView.appIntentsDataSource.setter();

  v8 = (*((*v6 & *v4) + 0x16B0))(0);
  v9 = (*((*v6 & *v4) + 0x1018))(v8);
  if (v9)
  {
    v10 = v9;
    specialized DOCFocusableCollectionView.resignFocus()();
  }

  (*((*v6 & *v4) + 0xAD0))(0);
}

- (BOOL)needsForcedUnderNavBarAppearanceOnAppear
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsForcedUnderNavBarAppearanceOnAppear;
  swift_beginAccess();
  return self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque[v3];
}

- (void)setNeedsForcedUnderNavBarAppearanceOnAppear:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsForcedUnderNavBarAppearanceOnAppear;
  swift_beginAccess();
  self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque[v5] = a3;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  DOCItemCollectionViewController.setEditing(_:animated:)(a3, a4);
}

- (BOOL)forceEditingMode
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_forceEditingMode;
  swift_beginAccess();
  return self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque[v3];
}

- (void)setForceEditingMode:(BOOL)a3
{
  v4 = self;
  DOCItemCollectionViewController.forceEditingMode.setter(a3);
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  DOCItemCollectionViewController.willTransition(to:with:)(v6, a4);

  swift_unknownObjectRelease();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  DOCItemCollectionViewController.viewWillTransition(to:with:)(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)viewWillLayoutSubviews
{
  v2 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x1728);
  v3 = self;
  v2();
  v4.receiver = v3;
  v4.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  [(DOCItemCollectionViewController *)&v4 viewWillLayoutSubviews];
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  DOCItemCollectionViewController.viewDidLayoutSubviews()();
}

- (void)menuControllerWillShow
{
  v3 = self;
  if ([(DOCItemCollectionViewController *)v3 isFirstResponder])
  {
    v2 = *&v3->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection];
    if (!v2)
    {
      __break(1u);
      return;
    }

    (*((*MEMORY[0x277D85000] & *v2) + 0x1C8))();
  }
}

- (void)menuControllerWillHide
{
  v3 = self;
  if ([(DOCItemCollectionViewController *)v3 isFirstResponder])
  {
    v2 = *&v3->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection];
    if (!v2)
    {
      __break(1u);
      return;
    }

    (*((*MEMORY[0x277D85000] & *v2) + 0x1C0))();
  }
}

- (void)wantsToCreateNewFile
{
  v2 = *&self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_documentManager];
  if (v2)
  {
    v3 = self;
    DOCItemCollectionViewController.getCurrentLocation()(v4);
    v6 = v5;
    (*((*MEMORY[0x277D85000] & *v2) + 0x110))();
  }
}

- (void)wantsToCreateNewFolder
{
  v2 = self;
  DOCItemCollectionViewController.wantsToCreateNewFolder()();
}

- (BOOL)accessibilityIsInListMode
{
  v2 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0xBD8);
  v3 = self;
  v4 = v2();

  return v4 == 1;
}

- (BOOL)accessibilityIsRenamingInline
{
  v2 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x1448);
  v3 = self;
  LOBYTE(v2) = v2();

  return v2 & 1;
}

- (BOOL)establishFirstResponder
{
  v2 = self;
  [(DOCItemCollectionViewController *)v2 setNeedsFocusUpdate];
  v3 = [objc_opt_self() sharedManager];
  v4 = [v3 requestCurrentFocus_];

  return v4;
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0xB20);
  v6 = a3;
  v11 = self;
  v7 = v5();
  if (v7 && (v8 = v7, type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIScrollView), v9 = v6, v10 = static NSObject.== infix(_:_:)(), v8, v9, (v10 & 1) != 0))
  {
    DOCItemCollectionViewController.resetButtons()();
  }

  else
  {
    (*((*v4 & *v11->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x17E0))();
    (*((*v4 & *v11->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0xF60))();
  }
}

- (CGPoint)collectionView:(id)a3 targetContentOffsetForProposedContentOffset:(CGPoint)a4
{
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x1010);
  v7 = a3;
  v8 = self;
  v9 = v6();
  (*((*v5 & *v9) + 0x140))();
  v11 = v10;

  [v7 contentOffset];
  v13 = v12;

  if (v13 >= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v13;
  }

  v15 = 0.0;
  result.y = v14;
  result.x = v15;
  return result;
}

- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  LOBYTE(self) = specialized DOCItemCollectionViewController.collectionView(_:canFocusItemAt:)(v10);

  (*(v7 + 8))(v10, v6);
  return self & 1;
}

- (id)_collectionView:(id)a3 typeSelectStringForItemAtIndexPath:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v20 - v9;
  if (a4)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for IndexPath();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = type metadata accessor for IndexPath();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  v13 = self;
  v14 = a3;
  v15 = specialized DOCItemCollectionViewController._collectionView(_:typeSelectStringForItemAt:)(v10);
  v17 = v16;

  outlined destroy of CharacterSet?(v10, &_s10Foundation9IndexPathVSgMd);
  if (v17)
  {
    v18 = MEMORY[0x24C1FAD20](v15, v17);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)_collectionView:(id)a3 updateTypeSelectResultForCell:(id)a4 atIndexPath:(id)a5 withItemResult:(id)a6 animator:(id)a7
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v22 - v14;
  if (a5)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = type metadata accessor for IndexPath();
    (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  }

  else
  {
    v17 = type metadata accessor for IndexPath();
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  }

  v18 = a3;
  v19 = a4;
  v20 = a6;
  swift_unknownObjectRetain();
  v21 = self;
  specialized DOCItemCollectionViewController._collectionView(_:updateTypeSelectResultFor:at:with:animator:)(a4, v15, a6);

  swift_unknownObjectRelease();
  outlined destroy of CharacterSet?(v15, &_s10Foundation9IndexPathVSgMd);
}

- (BOOL)collectionView:(id)a3 canPerformPrimaryActionForItemAtIndexPath:(id)a4
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x17A8);
  v11 = self;
  v12 = v10(v9);

  (*(v6 + 8))(v9, v5);
  return v12 & 1;
}

- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  DOCItemCollectionViewController.collectionView(_:performPrimaryActionForItemAt:)(v11, v10);

  (*(v7 + 8))(v10, v6);
}

- (id)_multitaskingDragExclusionRects
{
  v2 = self;
  DOCItemCollectionViewController._multitaskingDragExclusionRects()();

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSValue);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (BOOL)collectionView:(id)a3 canPerformAction:(SEL)a4 forItemAtIndexPath:(id)a5 withSender:(id)a6
{
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  if (a6)
  {
    v14 = a3;
    v15 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v20, 0, sizeof(v20));
    v16 = a3;
    v17 = self;
  }

  v18 = specialized DOCItemCollectionViewController.collectionView(_:canPerformAction:forItemAt:withSender:)(v13);

  outlined destroy of CharacterSet?(v20, &_sypSgMd);
  (*(v10 + 8))(v13, v9);
  return v18 & 1;
}

- (void)collectionView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  specialized DOCItemCollectionViewController.collectionView(_:didUpdateFocusIn:with:)(v9);
}

- (void)collectionView:(id)a3 performAction:(SEL)a4 forItemAtIndexPath:(id)a5 withSender:(id)a6
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  if (a6)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    (*(v8 + 8))(v11, v7);
    memset(v12, 0, sizeof(v12));
  }

  outlined destroy of CharacterSet?(v12, &_sypSgMd);
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  v14 = a4;
  v15 = self;
  specialized DOCItemCollectionViewController.collectionView(_:didEndDisplaying:forItemAt:)(v14);

  (*(v9 + 8))(v12, v8);
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for DOCItemCollectionCell();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = *((*MEMORY[0x277D85000] & *v11) + 0x228);
    v13 = a4;
    v12();
  }

  (*(v7 + 8))(v10, v6);
}

- (BOOL)collectionView:(id)a3 shouldSpringLoadItemAtIndexPath:(id)a4 withContext:(id)a5
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  swift_unknownObjectRetain();
  v14 = self;
  LOBYTE(self) = DOCItemCollectionViewController.collectionView(_:shouldSpringLoadItemAt:with:)(v13, v12, a5);

  swift_unknownObjectRelease();
  (*(v9 + 8))(v12, v8);
  return self & 1;
}

- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6
{
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a4;
  v16 = self;
  specialized DOCItemCollectionViewController.collectionView(_:willDisplaySupplementaryView:forElementKind:at:)(v15);

  (*(v10 + 8))(v13, v9);
}

- (BOOL)collectionView:(id)a3 shouldBeginMultipleSelectionInteractionAtIndexPath:(id)a4
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = self;
  v11 = DOCItemCollectionViewController.shouldAllowSelection()();

  (*(v6 + 8))(v9, v5);
  return v11;
}

- (void)collectionView:(id)a3 didBeginMultipleSelectionInteractionAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  DOCItemCollectionViewController.collectionView(_:didBeginMultipleSelectionInteractionAt:)(v11);

  (*(v7 + 8))(v10, v6);
}

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v17 - v7;
  v9 = a3;
  v10 = self;
  DOCItemCollectionViewController.indexPathForPreferredFocusedView(in:)(v8);

  v11 = type metadata accessor for IndexPath();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v8, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v12 + 8))(v8, v11);
    v14 = isa;
  }

  return v14;
}

- (void)collectionView:(id)a3 willDisplayContextMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  specialized DOCItemCollectionViewController.collectionView(_:willDisplayContextMenu:animator:)(v7, v8);

  swift_unknownObjectRelease();
}

- (void)collectionView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  specialized DOCItemCollectionViewController.collectionView(_:willEndContextMenuInteraction:animator:)(v9, a5);

  swift_unknownObjectRelease();
}

- (id)collectionView:(id)a3 contextMenuConfiguration:(id)a4 highlightPreviewForItemAtIndexPath:(id)a5
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  v14 = a4;
  v15 = self;
  v16 = DOCItemCollectionViewController.collectionView(_:contextMenuConfiguration:highlightPreviewForItemAt:)(v13);

  (*(v9 + 8))(v12, v8);

  return v16;
}

- (id)collectionView:(id)a3 previewForHighlightingContextMenuWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = DOCItemCollectionViewController.collectionView(_:previewForHighlightingContextMenuWithConfiguration:)(v6, v7);

  return v9;
}

- (id)collectionView:(id)a3 contextMenuConfiguration:(id)a4 dismissalPreviewForItemAtIndexPath:(id)a5
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  v14 = a4;
  v15 = self;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v17 = [(DOCItemCollectionViewController *)v15 collectionView:v13 contextMenuConfiguration:v14 highlightPreviewForItemAtIndexPath:isa];

  (*(v9 + 8))(v12, v8);

  return v17;
}

- (id)collectionView:(id)a3 previewForDismissingContextMenuWithConfiguration:(id)a4
{
  v4 = [(DOCItemCollectionViewController *)self collectionView:a3 previewForHighlightingContextMenuWithConfiguration:a4];

  return v4;
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  type metadata accessor for IndexPath();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  DOCItemCollectionViewController.collectionView(_:contextMenuConfigurationForItemsAt:point:)(v12, v10, v9, __PAIR128__(*&y, *&x));
  v14 = v13;

  return v14;
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = self;
  v16 = DOCItemCollectionViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(v14, v13, x, y);

  (*(v10 + 8))(v13, v9);

  return v16;
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v7 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x8E0);
  v8 = a3;
  v9 = self;
  v7(a3);
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  specialized DOCItemCollectionViewController.contextMenuInteraction(_:willEndFor:animator:)(a5);

  swift_unknownObjectRelease();
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = self;
  DOCItemCollectionViewController.contextMenuInteraction(_:configurationForMenuAtLocation:)(v9, v7, __PAIR128__(*&y, *&x));
  v11 = v10;

  return v11;
}

- (id)contextMenuForItemsAt:(id)a3
{
  type metadata accessor for IndexPath();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  DOCItemCollectionViewController.contextMenuForItems(at:)(v6, v4);
  v8 = v7;

  return v8;
}

- (id)contextMenuForFolder
{
  v2 = self;
  DOCItemCollectionViewController.contextMenuForFolder()(v3);
  v5 = v4;

  return v5;
}

- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized DOCItemCollectionViewController.contextMenuInteraction(_:previewForHighlightingMenuWithConfiguration:)(v6);
  v10 = v9;

  return v10;
}

- (void)revealWithNodes:(id)a3 selectEvenIfVisible:(BOOL)a4 completionBlock:(id)a5
{
  v7 = _Block_copy(a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = self;
  DOCItemCollectionViewController.reveal(nodes:selectEvenIfVisible:completionBlock:)(v8, a4, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> (), v9);
}

- (void)getTransitionControllerForURL:(id)a3 completionBlock:(id)a4
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = self;
  specialized DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(v10, v13, thunk for @escaping @callee_unowned @convention(block) (@unowned DOCServiceTransitionProtocol?) -> ()partial apply, v12, v13);

  (*(v7 + 8))(v10, v6);
}

- (void)getTransitionControllerForItem:(id)a3 completionBlock:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = objc_opt_self();
  v9 = a3;
  v10 = self;
  v11 = [v8 defaultManager];
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = v9;
  v12[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned DOCItemCollectionCell?) -> ();
  v12[5] = v7;
  v16[4] = closure #1 in DOCItemCollectionViewController.getTransitionController(forItem:completionBlock:)partial apply;
  v16[5] = v12;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
  v16[3] = &block_descriptor_860;
  v13 = _Block_copy(v16);
  v14 = v9;
  v15 = v10;

  [v11 fetchURLForItem:v14 completionHandler:v13];

  _Block_release(v13);
}

- (void)getPopoverTrackerForItem:(id)a3 completionBlock:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = objc_opt_self();
  v9 = a3;
  v10 = self;
  v11 = [v8 defaultManager];
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = v9;
  v12[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned DOCItemCollectionCell?) -> ();
  v12[5] = v7;
  v16[4] = closure #1 in DOCItemCollectionViewController.getPopoverTracker(for:completionBlock:)partial apply;
  v16[5] = v12;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
  v16[3] = &block_descriptor_850;
  v13 = _Block_copy(v16);
  v14 = v9;
  v15 = v10;

  [v11 fetchURLForItem:v14 completionHandler:v13];

  _Block_release(v13);
}

- (void)getViewFor:(id)a3 waitForNewThumbnail:(BOOL)a4 :(id)a5
{
  v5 = a4;
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  swift_unknownObjectRetain();
  v9 = self;
  specialized DOCItemCollectionViewController.getView(for:waitForNewThumbnail:_:)(a3, v5, v9, v8);
  _Block_release(v8);
  _Block_release(v8);
  swift_unknownObjectRelease();
}

- (void)getCellFor:(id)a3 :(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = a3;
  v8[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned DOCItemCollectionCell?) -> ();
  v8[5] = v7;
  v11[4] = closure #1 in DOCItemCollectionViewController.getCell(for:_:)partial apply;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
  v11[3] = &block_descriptor_827;
  v9 = _Block_copy(v11);
  swift_unknownObjectRetain_n();
  v10 = self;

  [a3 fetchURL_];
  swift_unknownObjectRelease();

  _Block_release(v9);
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = specialized DOCItemCollectionViewController.adaptivePresentationStyle(for:traitCollection:)(v6);

  return v9;
}

- (void)setProtectedStateToLockedForDidEnterBackground
{
  v2 = self;
  DOCItemCollectionViewController.setProtectedStateToLockedForDidEnterBackground()();
}

- (void)updateProtectedStateForDidEnterForeground
{
  v2 = self;
  DOCItemCollectionViewController.updateProtectedStateForDidEnterForeground()();
}

- (void)appProtectionStatusChangedWithNotification:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  DOCItemCollectionViewController.appProtectionStatusChanged(notification:)(v8);

  (*(v5 + 8))(v8, v4);
}

- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  swift_unknownObjectRetain();
  v14 = self;
  specialized DOCItemCollectionViewController.collectionView(_:itemsForBeginning:at:)(a4, v12);

  swift_unknownObjectRelease();
  (*(v9 + 8))(v12, v8);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem);
  v15.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v15.super.isa;
}

- (id)collectionView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6
{
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  swift_unknownObjectRetain();
  v15 = self;
  specialized DOCItemCollectionViewController.collectionView(_:itemsForAddingTo:at:point:)(a4, v13);

  swift_unknownObjectRelease();
  (*(v10 + 8))(v13, v9);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem);
  v16.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v16.super.isa;
}

- (void)collectionView:(id)a3 dragSessionWillBegin:(id)a4
{
  v6 = MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x8B0);
  swift_unknownObjectRetain_n();
  v8 = self;
  v7(a4);
  (*((*v6 & *v8->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x848))(1);
  swift_unknownObjectRelease();
}

- (id)collectionView:(id)a3 dragPreviewParametersForItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  v13 = specialized DOCItemCollectionViewController.collectionView(_:dragPreviewParametersForItemAt:)(v10);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (void)collectionView:(id)a3 dragSessionDidEnd:(id)a4
{
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x8B0);
  v6 = self;
  v5(0);
  (*((*v4 & *v6->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x1150))(0);
  (*((*v4 & *v6->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x848))(0);
}

- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  DOCItemCollectionViewController.collectionView(_:performDropWith:)(v6, a4);

  swift_unknownObjectRelease();
}

- (BOOL)collectionView:(id)a3 canHandleDropSession:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = specialized DOCItemCollectionViewController.collectionView(_:canHandle:)(a4);

  swift_unknownObjectRelease();
  return v8 & 1;
}

- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v19 - v11;
  if (a5)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = type metadata accessor for IndexPath();
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  }

  else
  {
    v14 = type metadata accessor for IndexPath();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  }

  v15 = a3;
  swift_unknownObjectRetain();
  v16 = self;
  v17 = DOCItemCollectionViewController.collectionView(_:dropSessionDidUpdate:withDestinationIndexPath:)(v15, a4, v12);

  swift_unknownObjectRelease();
  outlined destroy of CharacterSet?(v12, &_s10Foundation9IndexPathVSgMd);

  return v17;
}

- (void)collectionView:(id)a3 dropSessionDidEnter:(id)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  v7 = [a4 localDragSession];
  v8 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v6->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x8B0))(v7);
  v9 = swift_dynamicCastObjCProtocolConditional();
  if (v9)
  {
    v10 = v9;
    swift_unknownObjectRetain();
    v9 = v10;
  }

  (*((*v8 & *v6->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x8C8))(v9);
  swift_unknownObjectRelease();
}

- (void)collectionView:(id)a3 dropSessionDidEnd:(id)a4
{
  v4 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x8C8);
  v5 = self;
  v4(0);
}

- (void)collectionView:(id)a3 dropSessionDidExit:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  specialized DOCItemCollectionViewController.collectionView(_:dropSessionDidExit:)();

  swift_unknownObjectRelease();
}

- (int64_t)_collectionView:(id)a3 dataOwnerForDragSession:(id)a4 atIndexPath:(id)a5
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v21 - v13;
  if (a5)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = type metadata accessor for IndexPath();
    (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  }

  else
  {
    v15 = type metadata accessor for IndexPath();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  }

  outlined init with copy of DOCGridLayout.Spec?(v14, v10, &_s10Foundation9IndexPathVSgMd);
  type metadata accessor for IndexPath();
  v16 = *(v15 - 8);
  result = (*(v16 + 48))(v10, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    swift_unknownObjectRetain();
    v18 = self;
    v19 = specialized DOCItemCollectionViewController.nodeForDrag(session:at:)(v10);
    (*(v16 + 8))(v10, v15);
    if (v19)
    {
      swift_getObjectType();
      v20 = DOCNode.dataOwner.getter();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();

      v20 = 0;
    }

    outlined destroy of CharacterSet?(v14, &_s10Foundation9IndexPathVSgMd);
    return v20;
  }

  return result;
}

- (int64_t)_collectionView:(id)a3 dataOwnerForDropSession:(id)a4 withDestinationIndexPath:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v19 - v11;
  if (a5)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = type metadata accessor for IndexPath();
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  }

  else
  {
    v14 = type metadata accessor for IndexPath();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  }

  v15 = a3;
  swift_unknownObjectRetain();
  v16 = self;
  v17 = DOCItemCollectionViewController._collectionView(_:dataOwnerFor:withDestinationIndexPath:)(a3, a4, v12);

  swift_unknownObjectRelease();
  outlined destroy of CharacterSet?(v12, &_s10Foundation9IndexPathVSgMd);
  return v17;
}

- (BOOL)becomeKeyboardFocused
{
  v2 = self;
  v3 = DOCItemCollectionViewController.becomeKeyboardFocused()();

  return v3;
}

- (BOOL)isInKeyWindow
{
  v2 = self;
  v3 = [(DOCItemCollectionViewController *)v2 viewIfLoaded];
  if (v3 && (v4 = v3, v5 = [v3 window], v4, v5))
  {
    v6 = [v5 isKeyWindow];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)acceptsKeyboardFocus
{
  v2 = self;
  v3 = DOCItemCollectionViewController.acceptsKeyboardFocus.getter();

  return v3 & 1;
}

- (CGRect)absoluteFrame
{
  v2 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x1010);
  v3 = self;
  v4 = v2();
  v5 = [v4 superview];

  if (v5)
  {
    v10 = v2();
    [v10 frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    [v5 convertRect:0 toView:{v12, v14, v16, v18}];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v6 = v20;
    v7 = v22;
    v8 = v24;
    v9 = v26;
  }

  else
  {
    __break(1u);
  }

  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (void)firstItemInsertionRequestsFocusExpired
{
  v2 = self;
  DOCItemCollectionViewController.firstItemInsertionRequestsFocusExpired()();
}

- (void)pressesChanged:(id)a3 withEvent:(id)a4
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIPress);
  lazy protocol witness table accessor for type UIPress and conformance NSObject();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a4;
  v8 = self;
  isa = Set._bridgeToObjectiveC()().super.isa;
  v12.receiver = v8;
  v12.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  [(DOCItemCollectionViewController *)&v12 pressesChanged:isa withEvent:v7];

  v10 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v8->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x1448))() & 1) != 0 || [objc_opt_self() typeToFocusIsSupported])
  {
    v11 = v7;
    v7 = v8;
  }

  else
  {
    (*((*v10 & **&v8->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_typeToFocusController]) + 0x130))(v6, a4);
    v11 = v8;
  }
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIPress);
  lazy protocol witness table accessor for type UIPress and conformance NSObject();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a4;
  v8 = self;
  isa = Set._bridgeToObjectiveC()().super.isa;
  v12.receiver = v8;
  v12.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  [(DOCItemCollectionViewController *)&v12 pressesCancelled:isa withEvent:v7];

  v10 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v8->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x1448))() & 1) != 0 || [objc_opt_self() typeToFocusIsSupported])
  {
    v11 = v7;
    v7 = v8;
  }

  else
  {
    (*((*v10 & **&v8->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_typeToFocusController]) + 0x140))(v6, a4);
    v11 = v8;
  }
}

- (void)startFolderCreation:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  (*((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x1548))(v6);

  outlined destroy of CharacterSet?(v6, &_sypSgMd);
}

- (void)displayInfoForCurrentItem:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  DOCItemCollectionViewController.displayInfoForCurrentItem(_:)(v6);

  outlined destroy of CharacterSet?(v6, &_sypSgMd);
}

- (_TtP26DocumentManagerExecutables27DOCScannedDocumentReceiving_)doc_documentScannerReceivingTarget
{
  v2 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0xA98);
  v3 = self;
  v4 = v2();

  if (v4)
  {
    v5 = swift_dynamicCastObjCProtocolConditional();
    if (v5)
    {
      goto LABEL_5;
    }

    swift_unknownObjectRelease();
  }

  v5 = 0;
LABEL_5:

  return v5;
}

- (void)documentCameraViewController:(id)a3 didFinishWithScan:(id)a4
{
  v7 = swift_allocObject();
  *(v7 + 16) = self;
  *(v7 + 24) = a3;
  v8 = a3;
  v11 = self;
  v9 = v8;
  v10 = a4;
  specialized DOCDocumentScannerWriter.convertToPDFAndWrite(document:completionHandler:)(v10, closure #1 in UIViewController.doc_documentCameraViewController(_:didFinishWith:)partial apply, v7);
}

- (void)_doc_performLiveResizeSkipped_updateOverlay
{
  v2 = self;
  specialized DOCItemCollectionViewController.updateOverlay(animated:)();
}

- (void)barButtonTappedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCItemCollectionViewController.barButtonTapped(sender:)(v4);
}

- (void)prepareForPopoverPresentation:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCItemCollectionViewController.prepareForPopoverPresentation(_:)(v4);
}

- (void)actionBarButtonTriggeredWithActionBarButton:(id)a3
{
  v4 = *((*MEMORY[0x277D85000] & *a3) + 0x58);
  v5 = a3;
  v9 = self;
  v6 = v4();
  if (v6)
  {
    v7 = v6;
    v8 = DOCItemCollectionViewController.actionContext(from:)();
    [(DOCItemCollectionViewController *)v9 performActionWithAction:v7 actionContext:v8];
  }
}

- (void)performActionWithAction:(id)a3 actionContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  DOCItemCollectionViewController.performAction(action:actionContext:)(v6, v7);
}

@end