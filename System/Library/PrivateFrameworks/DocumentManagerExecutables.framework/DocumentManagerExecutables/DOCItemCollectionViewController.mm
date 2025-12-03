@interface DOCItemCollectionViewController
+ (void)resetRestorableSettingsCache;
- (BOOL)acceptsKeyboardFocus;
- (BOOL)accessibilityIsInListMode;
- (BOOL)accessibilityIsRenamingInline;
- (BOOL)becomeFirstResponder;
- (BOOL)becomeKeyboardFocused;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view canHandleDropSession:(id)session;
- (BOOL)collectionView:(id)view canPerformAction:(SEL)action forItemAtIndexPath:(id)path withSender:(id)sender;
- (BOOL)collectionView:(id)view canPerformPrimaryActionForItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldBeginMultipleSelectionInteractionAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSpringLoadItemAtIndexPath:(id)path withContext:(id)context;
- (BOOL)establishFirstResponder;
- (BOOL)forceEditingMode;
- (BOOL)hidesNavigationBackButton;
- (BOOL)isInKeyWindow;
- (BOOL)needsForcedUnderNavBarAppearanceOnAppear;
- (BOOL)resignFirstResponder;
- (CGPoint)collectionView:(id)view targetContentOffsetForProposedContentOffset:(CGPoint)offset;
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
- (id)_collectionView:(id)view typeSelectStringForItemAtIndexPath:(id)path;
- (id)_multitaskingDragExclusionRects;
- (id)collectionView:(id)view contextMenuConfiguration:(id)configuration dismissalPreviewForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfiguration:(id)configuration highlightPreviewForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (id)collectionView:(id)view dragPreviewParametersForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (id)collectionView:(id)view previewForDismissingContextMenuWithConfiguration:(id)configuration;
- (id)collectionView:(id)view previewForHighlightingContextMenuWithConfiguration:(id)configuration;
- (id)contextMenuForFolder;
- (id)contextMenuForItemsAt:(id)at;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view;
- (id)providerForDeferredMenuElement:(id)element;
- (int64_t)_collectionView:(id)view dataOwnerForDragSession:(id)session atIndexPath:(id)path;
- (int64_t)_collectionView:(id)view dataOwnerForDropSession:(id)session withDestinationIndexPath:(id)path;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection;
- (int64_t)displayMode;
- (void)_collectionView:(id)view updateTypeSelectResultForCell:(id)cell atIndexPath:(id)path withItemResult:(id)result animator:(id)animator;
- (void)_doc_performLiveResizeSkippedWork;
- (void)_doc_performLiveResizeSkipped_updateOverlay;
- (void)_setContentOverlayInsets:(UIEdgeInsets)insets;
- (void)actionBarButtonTriggeredWithActionBarButton:(id)button;
- (void)appProtectionStatusChangedWithNotification:(id)notification;
- (void)barButtonTappedWithSender:(id)sender;
- (void)checkIfOutlineModeNeedsChange;
- (void)collectionView:(id)view didBeginMultipleSelectionInteractionAtIndexPath:(id)path;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)collectionView:(id)view dragSessionDidEnd:(id)end;
- (void)collectionView:(id)view dragSessionWillBegin:(id)begin;
- (void)collectionView:(id)view dropSessionDidEnd:(id)end;
- (void)collectionView:(id)view dropSessionDidEnter:(id)enter;
- (void)collectionView:(id)view dropSessionDidExit:(id)exit;
- (void)collectionView:(id)view performAction:(SEL)action forItemAtIndexPath:(id)path withSender:(id)sender;
- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator;
- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayContextMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path;
- (void)collectionView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)createFolder:(id)folder;
- (void)deselectAllItems;
- (void)didUpdateCollectionViewContentOffsetWithNotification:(id)notification;
- (void)didUpdateCollectionViewIsScrollEnabledWithNotification:(id)notification;
- (void)displayInfoForCurrentItem:(id)item;
- (void)docUpdateContentUnavailableConfigurationUsingState:(id)state;
- (void)documentCameraViewController:(id)controller didFinishWithScan:(id)scan;
- (void)effectiveAppearanceDidChange:(id)change;
- (void)firstItemInsertionRequestsFocusExpired;
- (void)getCellFor:(id)for :(id)a4;
- (void)getPopoverTrackerForItem:(id)item completionBlock:(id)block;
- (void)getTransitionControllerForItem:(id)item completionBlock:(id)block;
- (void)getTransitionControllerForURL:(id)l completionBlock:(id)block;
- (void)getViewFor:(id)for waitForNewThumbnail:(BOOL)thumbnail :(id)a5;
- (void)loadView;
- (void)menuControllerWillHide;
- (void)menuControllerWillShow;
- (void)moveHere:(id)here;
- (void)performActionWithAction:(id)action actionContext:(id)context;
- (void)performAddFolderToDock:(id)dock;
- (void)performArrowKeyDisclosure:(id)disclosure;
- (void)performCommandReturnKey:(id)key;
- (void)performCompress:(id)compress;
- (void)performConfirmPickerExportOrDrillIn:(id)in;
- (void)performCopyAsPathname:(id)pathname;
- (void)performCreateFolder:(id)folder;
- (void)performCreateFolderWithSelection:(id)selection;
- (void)performDeleteNow:(id)now;
- (void)performDeselectAll:(id)all;
- (void)performDismiss:(id)dismiss;
- (void)performDuplicate:(id)duplicate;
- (void)performGetInfo:(id)info;
- (void)performGoToEnclosingFolder:(id)folder;
- (void)performGoToEnclosingFolderInNewWindow:(id)window;
- (void)performKeyboardFocusKeyCommand:(id)command;
- (void)performMarkAsFavorite:(id)favorite;
- (void)performMoveHere:(id)here;
- (void)performOpen:(id)open;
- (void)performPreview:(id)preview;
- (void)performRename:(id)rename;
- (void)performRevealItem:(id)item;
- (void)performShare:(id)share;
- (void)prepareForPopoverPresentation:(id)presentation;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesChanged:(id)changed withEvent:(id)event;
- (void)resizeColumnsIfNeeded;
- (void)revealWithNodes:(id)nodes selectEvenIfVisible:(BOOL)visible completionBlock:(id)block;
- (void)scrollViewDidScroll:(id)scroll;
- (void)selectAll:(id)all;
- (void)selectAllItems;
- (void)setActionReporting:(id)reporting;
- (void)setDisplayMode:(int64_t)mode;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setForceEditingMode:(BOOL)mode;
- (void)setNeedsForcedUnderNavBarAppearanceOnAppear:(BOOL)appear;
- (void)setProtectedStateToLockedForDidEnterBackground;
- (void)startFolderCreation:(id)creation;
- (void)traitCollectionDidChange:(id)change;
- (void)updateProtectedStateForDidEnterForeground;
- (void)validateCommand:(id)command;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)wantsToCreateNewFile;
- (void)wantsToCreateNewFolder;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation DOCItemCollectionViewController

- (void)checkIfOutlineModeNeedsChange
{
  selfCopy = self;
  DOCItemCollectionViewController.checkIfOutlineModeNeedsChange()();
}

- (void)performCompress:(id)compress
{
  compressCopy = compress;
  selfCopy = self;
  specialized DOCItemCollectionViewController.performCompress(_:)();
}

- (void)performCopyAsPathname:(id)pathname
{
  pathnameCopy = pathname;
  selfCopy = self;
  specialized DOCItemCollectionViewController.performCopyAsPathname(_:)();
}

- (void)performCreateFolder:(id)folder
{
  v6[3] = type metadata accessor for DOCItemCollectionViewController(0);
  v6[0] = self;
  v4 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x1548);
  selfCopy = self;
  v4(v6);

  outlined destroy of CharacterSet?(v6, &_sypSgMd);
}

- (void)performCreateFolderWithSelection:(id)selection
{
  v3 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x1550);
  selfCopy = self;
  v3(1, 1);
}

- (void)performDeselectAll:(id)all
{
  v3 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x1308);
  selfCopy = self;
  v3();
}

- (void)performDuplicate:(id)duplicate
{
  duplicateCopy = duplicate;
  selfCopy = self;
  specialized DOCItemCollectionViewController.performDuplicate(_:)();
}

- (void)performDeleteNow:(id)now
{
  nowCopy = now;
  selfCopy = self;
  specialized DOCItemCollectionViewController.performDeleteNow(_:)();
}

- (void)performMoveHere:(id)here
{
  hereCopy = here;
  selfCopy = self;
  DOCItemCollectionViewController.performMoveHere(_:)(hereCopy);
}

- (void)performOpen:(id)open
{
  openCopy = open;
  selfCopy = self;
  specialized DOCItemCollectionViewController.performOpen(_:)();
}

- (void)performCommandReturnKey:(id)key
{
  selfCopy = self;
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

- (void)performConfirmPickerExportOrDrillIn:(id)in
{
  selfCopy = self;
  DOCItemCollectionViewController.confirmPickerExportOrDrillIn()();
}

- (void)performRename:(id)rename
{
  renameCopy = rename;
  selfCopy = self;
  DOCItemCollectionViewController.performRename(_:)(renameCopy);
}

- (void)performPreview:(id)preview
{
  previewCopy = preview;
  selfCopy = self;
  DOCItemCollectionViewController.performPreview(_:)(previewCopy);
}

- (void)performMarkAsFavorite:(id)favorite
{
  favoriteCopy = favorite;
  selfCopy = self;
  specialized DOCItemCollectionViewController.performDeleteNow(_:)();
}

- (void)performAddFolderToDock:(id)dock
{
  dockCopy = dock;
  selfCopy = self;
  specialized DOCItemCollectionViewController.performAddFolderToDock(_:)();
}

- (void)performGoToEnclosingFolder:(id)folder
{
  v3 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x1010);
  selfCopy = self;
  v4 = v3();
  v5 = v3();
  effectiveUserInterfaceLayoutDirection = [v5 effectiveUserInterfaceLayoutDirection];

  if (effectiveUserInterfaceLayoutDirection)
  {
    v7 = 4;
  }

  else
  {
    v7 = 3;
  }

  specialized DOCFocusableCollectionView.performNavigation(into:modifierFlags:)(v7, 0);
}

- (void)performGoToEnclosingFolderInNewWindow:(id)window
{
  windowCopy = window;
  selfCopy = self;
  DOCItemCollectionViewController.performGoToEnclosingFolderInNewWindow(_:)(windowCopy);
}

- (void)performRevealItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  specialized DOCItemCollectionViewController.performRevealItem(_:)();
}

- (void)performShare:(id)share
{
  shareCopy = share;
  selfCopy = self;
  specialized DOCItemCollectionViewController.performDeleteNow(_:)();
}

- (void)performGetInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  specialized DOCItemCollectionViewController.performDeleteNow(_:)();
}

- (void)performDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  DOCItemCollectionViewController.performDismiss(_:)(dismissCopy);
}

- (NSArray)keyCommands
{
  selfCopy = self;
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

- (void)performArrowKeyDisclosure:(id)disclosure
{
  disclosureCopy = disclosure;
  selfCopy = self;
  DOCItemCollectionViewController.performArrowKeyDisclosure(_:)(disclosureCopy);
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = DOCItemCollectionViewController.canPerformAction(_:withSender:)(action, v10);

  outlined destroy of CharacterSet?(v10, &_sypSgMd);
  return v8 & 1;
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  DOCItemCollectionViewController.validate(_:)(commandCopy);
}

- (DOCContentUnavailableConfigurationState)docContentUnavailableConfigurationState
{
  selfCopy = self;
  v3 = DOCItemCollectionViewController.docContentUnavailableConfigurationState.getter();

  return v3;
}

- (void)docUpdateContentUnavailableConfigurationUsingState:(id)state
{
  stateCopy = state;
  v5.super._impl = self;
  impl = v5.super._impl;
  v5.super.super.isa = stateCopy;
  DOCItemCollectionViewController.docUpdateContentUnavailableConfiguration(using:)(v5);
}

- (_TtP26DocumentManagerExecutables34DOCBrowserContainedActionReporting_)actionReporting
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setActionReporting:(id)reporting
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  selfCopy = self;
  swift_unknownObjectRetain();
  v5 = DOCBrowserContainedViewController.searchCollection.getter();
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0x277D85000];
    v8 = (*((*MEMORY[0x277D85000] & *selfCopy->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0xE8))();
    (*((*v7 & *v6) + 0xF0))(v8);
  }

  swift_unknownObjectRelease();
}

- (NSString)description
{
  selfCopy = self;
  v3 = DOCItemCollectionViewController.description.getter();
  v5 = v4;

  v6 = MEMORY[0x24C1FAD20](v3, v5);

  return v6;
}

- (UITraitCollection)traitCollection
{
  selfCopy = self;
  v3 = DOCItemCollectionViewController.traitCollection.getter();

  return v3;
}

- (int64_t)displayMode
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_displayMode;
  swift_beginAccess();
  return *&self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque[v3];
}

- (void)setDisplayMode:(int64_t)mode
{
  selfCopy = self;
  DOCItemCollectionViewController.displayMode.setter(mode);
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
  selfCopy = self;
  DOCItemCollectionViewController.preferredFocusEnvironments.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18UIFocusEnvironment_pMd);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (UISplitViewController)splitViewController
{
  v2 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0xF18);
  selfCopy = self;
  if ((v2() & 1) == 0 || (v4 = -[DOCItemCollectionViewController presentingViewController](selfCopy, sel_presentingViewController)) == 0 || (v5 = v4, splitViewController = [v4 splitViewController], v5, !splitViewController))
  {
    v8.receiver = selfCopy;
    v8.super_class = type metadata accessor for DOCItemCollectionViewController(0);
    splitViewController = [(DOCItemCollectionViewController *)&v8 splitViewController];
  }

  return splitViewController;
}

- (NSString)title
{
  selfCopy = self;
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

- (void)_setContentOverlayInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v7 = *&self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration];
  selfCopy = self;
  if ([v7 shouldAdjustContentInset])
  {
    v13.super_class = type metadata accessor for DOCItemCollectionViewController(0);
    [(DOCItemCollectionViewController *)&v13 _setContentOverlayInsets:top, left, bottom, right, selfCopy, v13.super_class, v14.receiver, v14.super_class];
  }

  else
  {
    v9 = *MEMORY[0x277D768C8];
    v10 = *(MEMORY[0x277D768C8] + 8);
    v11 = *(MEMORY[0x277D768C8] + 16);
    v12 = *(MEMORY[0x277D768C8] + 24);
    v14.super_class = type metadata accessor for DOCItemCollectionViewController(0);
    [(DOCItemCollectionViewController *)&v14 _setContentOverlayInsets:v9, v10, v11, v12, v13.receiver, v13.super_class, selfCopy, v14.super_class];
  }
}

- (void)selectAllItems
{
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x1310);
  selfCopy = self;
  if ((v3() & 1) == 0)
  {
    v4 = *((*v2 & *selfCopy->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x1318);
    v4(1);
    closure #1 in DOCItemCollectionViewController.selectAllItems()(selfCopy);
    v4(0);
  }
}

- (void)deselectAllItems
{
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x1310);
  selfCopy = self;
  if ((v3() & 1) == 0)
  {
    v4 = *((*v2 & *selfCopy->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x1318);
    v4(1);
    (*((*v2 & *selfCopy->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x1300))(0, MEMORY[0x277D84F90]);
    v4(0);
  }
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  windowCopy = window;
  selfCopy = self;
  DOCItemCollectionViewController.viewDidMove(to:shouldAppearOrDisappear:)(window, disappear);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  DOCItemCollectionViewController.traitCollectionDidChange(_:)(v9);
}

- (void)_doc_performLiveResizeSkippedWork
{
  selfCopy = self;
  DOCItemCollectionViewController._doc_performLiveResizeSkippedWork()();
}

- (void)effectiveAppearanceDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  DOCItemCollectionViewController.effectiveAppearanceDidChange(_:)(changeCopy);
}

- (void)loadView
{
  selfCopy = self;
  DOCItemCollectionViewController.loadView()();
}

- (void)viewDidLoad
{
  selfCopy = self;
  DOCItemCollectionViewController.viewDidLoad()();
}

- (void)resizeColumnsIfNeeded
{
  selfCopy = self;
  DOCItemCollectionViewController.resizeColumnsIfNeeded()();
}

- (NSUndoManager)undoManager
{
  shared = [objc_opt_self() shared];

  return shared;
}

- (BOOL)canBecomeFirstResponder
{
  selfCopy = self;
  v3 = DOCItemCollectionViewController.canBecomeFirstResponder.getter();

  return v3;
}

- (BOOL)resignFirstResponder
{
  selfCopy = self;
  v3 = DOCItemCollectionViewController.resignFirstResponder()();

  return v3;
}

- (BOOL)becomeFirstResponder
{
  selfCopy = self;
  v3 = DOCItemCollectionViewController.becomeFirstResponder()();

  return v3;
}

- (void)performKeyboardFocusKeyCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  DOCItemCollectionViewController.performKeyboardFocusKeyCommand(_:)(commandCopy);
}

- (void)selectAll:(id)all
{
  if (all)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    selfCopy2 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    selfCopy2 = self;
  }

  v6 = MEMORY[0x277D85000];
  v7 = (*((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0xCB8))(selfCopy2);
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

- (void)moveHere:(id)here
{
  if (here)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  DOCItemCollectionViewController.moveHere(_:)();

  outlined destroy of CharacterSet?(v6, &_sypSgMd);
}

- (void)createFolder:(id)folder
{
  if (folder)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  (*((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x1550))(0, 1);

  outlined destroy of CharacterSet?(v6, &_sypSgMd);
}

- (id)providerForDeferredMenuElement:(id)element
{
  elementCopy = element;
  selfCopy = self;
  v6 = DOCItemCollectionViewController.provider(for:)(elementCopy);

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

- (void)didUpdateCollectionViewIsScrollEnabledWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  DOCItemCollectionViewController.didUpdateCollectionViewIsScrollEnabled(notification:)(notificationCopy);
}

- (void)didUpdateCollectionViewContentOffsetWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  DOCItemCollectionViewController.didUpdateCollectionViewContentOffset(notification:)(notificationCopy);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  DOCItemCollectionViewController.viewWillAppear(_:)(appear);
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  DOCItemCollectionViewController.viewIsAppearing(_:)(appearing);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  DOCItemCollectionViewController.viewDidAppear(_:)(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  DOCItemCollectionViewController.viewWillDisappear(_:)(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v11.receiver = self;
  v11.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  v4 = v11.receiver;
  v5 = [(DOCItemCollectionViewController *)&v11 viewDidDisappear:disappearCopy];
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

- (void)setNeedsForcedUnderNavBarAppearanceOnAppear:(BOOL)appear
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsForcedUnderNavBarAppearanceOnAppear;
  swift_beginAccess();
  self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque[v5] = appear;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  selfCopy = self;
  DOCItemCollectionViewController.setEditing(_:animated:)(editing, animated);
}

- (BOOL)forceEditingMode
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_forceEditingMode;
  swift_beginAccess();
  return self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque[v3];
}

- (void)setForceEditingMode:(BOOL)mode
{
  selfCopy = self;
  DOCItemCollectionViewController.forceEditingMode.setter(mode);
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  swift_unknownObjectRetain();
  selfCopy = self;
  DOCItemCollectionViewController.willTransition(to:with:)(collectionCopy, coordinator);

  swift_unknownObjectRelease();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  DOCItemCollectionViewController.viewWillTransition(to:with:)(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)viewWillLayoutSubviews
{
  v2 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x1728);
  selfCopy = self;
  v2();
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  [(DOCItemCollectionViewController *)&v4 viewWillLayoutSubviews];
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  DOCItemCollectionViewController.viewDidLayoutSubviews()();
}

- (void)menuControllerWillShow
{
  selfCopy = self;
  if ([(DOCItemCollectionViewController *)selfCopy isFirstResponder])
  {
    v2 = *&selfCopy->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection];
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
  selfCopy = self;
  if ([(DOCItemCollectionViewController *)selfCopy isFirstResponder])
  {
    v2 = *&selfCopy->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection];
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
    selfCopy = self;
    DOCItemCollectionViewController.getCurrentLocation()(v4);
    v6 = v5;
    (*((*MEMORY[0x277D85000] & *v2) + 0x110))();
  }
}

- (void)wantsToCreateNewFolder
{
  selfCopy = self;
  DOCItemCollectionViewController.wantsToCreateNewFolder()();
}

- (BOOL)accessibilityIsInListMode
{
  v2 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0xBD8);
  selfCopy = self;
  v4 = v2();

  return v4 == 1;
}

- (BOOL)accessibilityIsRenamingInline
{
  v2 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x1448);
  selfCopy = self;
  LOBYTE(v2) = v2();

  return v2 & 1;
}

- (BOOL)establishFirstResponder
{
  selfCopy = self;
  [(DOCItemCollectionViewController *)selfCopy setNeedsFocusUpdate];
  sharedManager = [objc_opt_self() sharedManager];
  requestCurrentFocus_ = [sharedManager requestCurrentFocus_];

  return requestCurrentFocus_;
}

- (void)scrollViewDidScroll:(id)scroll
{
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0xB20);
  scrollCopy = scroll;
  selfCopy = self;
  v7 = v5();
  if (v7 && (v8 = v7, type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIScrollView), v9 = scrollCopy, v10 = static NSObject.== infix(_:_:)(), v8, v9, (v10 & 1) != 0))
  {
    DOCItemCollectionViewController.resetButtons()();
  }

  else
  {
    (*((*v4 & *selfCopy->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x17E0))();
    (*((*v4 & *selfCopy->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0xF60))();
  }
}

- (CGPoint)collectionView:(id)view targetContentOffsetForProposedContentOffset:(CGPoint)offset
{
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x1010);
  viewCopy = view;
  selfCopy = self;
  v9 = v6();
  (*((*v5 & *v9) + 0x140))();
  v11 = v10;

  [viewCopy contentOffset];
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

- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = specialized DOCItemCollectionViewController.collectionView(_:canFocusItemAt:)(v10);

  (*(v7 + 8))(v10, v6);
  return self & 1;
}

- (id)_collectionView:(id)view typeSelectStringForItemAtIndexPath:(id)path
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v20 - v9;
  if (path)
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

  selfCopy = self;
  viewCopy = view;
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

- (void)_collectionView:(id)view updateTypeSelectResultForCell:(id)cell atIndexPath:(id)path withItemResult:(id)result animator:(id)animator
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v22 - v14;
  if (path)
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

  viewCopy = view;
  cellCopy = cell;
  resultCopy = result;
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized DOCItemCollectionViewController._collectionView(_:updateTypeSelectResultFor:at:with:animator:)(cell, v15, result);

  swift_unknownObjectRelease();
  outlined destroy of CharacterSet?(v15, &_s10Foundation9IndexPathVSgMd);
}

- (BOOL)collectionView:(id)view canPerformPrimaryActionForItemAtIndexPath:(id)path
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x17A8);
  selfCopy = self;
  v12 = v10(v9);

  (*(v6 + 8))(v9, v5);
  return v12 & 1;
}

- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  DOCItemCollectionViewController.collectionView(_:performPrimaryActionForItemAt:)(viewCopy, v10);

  (*(v7 + 8))(v10, v6);
}

- (id)_multitaskingDragExclusionRects
{
  selfCopy = self;
  DOCItemCollectionViewController._multitaskingDragExclusionRects()();

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSValue);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (BOOL)collectionView:(id)view canPerformAction:(SEL)action forItemAtIndexPath:(id)path withSender:(id)sender
{
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  if (sender)
  {
    viewCopy = view;
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v20, 0, sizeof(v20));
    viewCopy2 = view;
    selfCopy2 = self;
  }

  v18 = specialized DOCItemCollectionViewController.collectionView(_:canPerformAction:forItemAt:withSender:)(v13);

  outlined destroy of CharacterSet?(v20, &_sypSgMd);
  (*(v10 + 8))(v13, v9);
  return v18 & 1;
}

- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  viewCopy = view;
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  specialized DOCItemCollectionViewController.collectionView(_:didUpdateFocusIn:with:)(contextCopy);
}

- (void)collectionView:(id)view performAction:(SEL)action forItemAtIndexPath:(id)path withSender:(id)sender
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  if (sender)
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

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  specialized DOCItemCollectionViewController.collectionView(_:didEndDisplaying:forItemAt:)(cellCopy);

  (*(v9 + 8))(v12, v8);
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
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
    cellCopy = cell;
    v12();
  }

  (*(v7 + 8))(v10, v6);
}

- (BOOL)collectionView:(id)view shouldSpringLoadItemAtIndexPath:(id)path withContext:(id)context
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  LOBYTE(self) = DOCItemCollectionViewController.collectionView(_:shouldSpringLoadItemAt:with:)(viewCopy, v12, context);

  swift_unknownObjectRelease();
  (*(v9 + 8))(v12, v8);
  return self & 1;
}

- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path
{
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  supplementaryViewCopy = supplementaryView;
  selfCopy = self;
  specialized DOCItemCollectionViewController.collectionView(_:willDisplaySupplementaryView:forElementKind:at:)(supplementaryViewCopy);

  (*(v10 + 8))(v13, v9);
}

- (BOOL)collectionView:(id)view shouldBeginMultipleSelectionInteractionAtIndexPath:(id)path
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v11 = DOCItemCollectionViewController.shouldAllowSelection()();

  (*(v6 + 8))(v9, v5);
  return v11;
}

- (void)collectionView:(id)view didBeginMultipleSelectionInteractionAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  DOCItemCollectionViewController.collectionView(_:didBeginMultipleSelectionInteractionAt:)(viewCopy);

  (*(v7 + 8))(v10, v6);
}

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v17 - v7;
  viewCopy = view;
  selfCopy = self;
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

- (void)collectionView:(id)view willDisplayContextMenuWithConfiguration:(id)configuration animator:(id)animator
{
  viewCopy = view;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized DOCItemCollectionViewController.collectionView(_:willDisplayContextMenu:animator:)(viewCopy, configurationCopy);

  swift_unknownObjectRelease();
}

- (void)collectionView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator
{
  viewCopy = view;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized DOCItemCollectionViewController.collectionView(_:willEndContextMenuInteraction:animator:)(configurationCopy, animator);

  swift_unknownObjectRelease();
}

- (id)collectionView:(id)view contextMenuConfiguration:(id)configuration highlightPreviewForItemAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  configurationCopy = configuration;
  selfCopy = self;
  v16 = DOCItemCollectionViewController.collectionView(_:contextMenuConfiguration:highlightPreviewForItemAt:)(viewCopy);

  (*(v9 + 8))(v12, v8);

  return v16;
}

- (id)collectionView:(id)view previewForHighlightingContextMenuWithConfiguration:(id)configuration
{
  viewCopy = view;
  configurationCopy = configuration;
  selfCopy = self;
  v9 = DOCItemCollectionViewController.collectionView(_:previewForHighlightingContextMenuWithConfiguration:)(viewCopy, configurationCopy);

  return v9;
}

- (id)collectionView:(id)view contextMenuConfiguration:(id)configuration dismissalPreviewForItemAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  configurationCopy = configuration;
  selfCopy = self;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v17 = [(DOCItemCollectionViewController *)selfCopy collectionView:viewCopy contextMenuConfiguration:configurationCopy highlightPreviewForItemAtIndexPath:isa];

  (*(v9 + 8))(v12, v8);

  return v17;
}

- (id)collectionView:(id)view previewForDismissingContextMenuWithConfiguration:(id)configuration
{
  v4 = [(DOCItemCollectionViewController *)self collectionView:view previewForHighlightingContextMenuWithConfiguration:configuration];

  return v4;
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  type metadata accessor for IndexPath();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  DOCItemCollectionViewController.collectionView(_:contextMenuConfigurationForItemsAt:point:)(v12, viewCopy, v9, __PAIR128__(*&y, *&x));
  v14 = v13;

  return v14;
}

- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v16 = DOCItemCollectionViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(viewCopy, v13, x, y);

  (*(v10 + 8))(v13, v9);

  return v16;
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  v7 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x8E0);
  interactionCopy = interaction;
  selfCopy = self;
  v7(interaction);
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized DOCItemCollectionViewController.contextMenuInteraction(_:willEndFor:animator:)(animator);

  swift_unknownObjectRelease();
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  interactionCopy = interaction;
  selfCopy = self;
  DOCItemCollectionViewController.contextMenuInteraction(_:configurationForMenuAtLocation:)(v9, interactionCopy, __PAIR128__(*&y, *&x));
  v11 = v10;

  return v11;
}

- (id)contextMenuForItemsAt:(id)at
{
  type metadata accessor for IndexPath();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  DOCItemCollectionViewController.contextMenuForItems(at:)(v6, v4);
  v8 = v7;

  return v8;
}

- (id)contextMenuForFolder
{
  selfCopy = self;
  DOCItemCollectionViewController.contextMenuForFolder()(v3);
  v5 = v4;

  return v5;
}

- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  selfCopy = self;
  specialized DOCItemCollectionViewController.contextMenuInteraction(_:previewForHighlightingMenuWithConfiguration:)(interactionCopy);
  v10 = v9;

  return v10;
}

- (void)revealWithNodes:(id)nodes selectEvenIfVisible:(BOOL)visible completionBlock:(id)block
{
  v7 = _Block_copy(block);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  selfCopy = self;
  DOCItemCollectionViewController.reveal(nodes:selectEvenIfVisible:completionBlock:)(v8, visible, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> (), v9);
}

- (void)getTransitionControllerForURL:(id)l completionBlock:(id)block
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(block);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  selfCopy = self;
  specialized DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(v10, selfCopy, thunk for @escaping @callee_unowned @convention(block) (@unowned DOCServiceTransitionProtocol?) -> ()partial apply, v12, selfCopy);

  (*(v7 + 8))(v10, v6);
}

- (void)getTransitionControllerForItem:(id)item completionBlock:(id)block
{
  v6 = _Block_copy(block);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = objc_opt_self();
  itemCopy = item;
  selfCopy = self;
  defaultManager = [v8 defaultManager];
  v12 = swift_allocObject();
  v12[2] = selfCopy;
  v12[3] = itemCopy;
  v12[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned DOCItemCollectionCell?) -> ();
  v12[5] = v7;
  v16[4] = closure #1 in DOCItemCollectionViewController.getTransitionController(forItem:completionBlock:)partial apply;
  v16[5] = v12;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
  v16[3] = &block_descriptor_860;
  v13 = _Block_copy(v16);
  v14 = itemCopy;
  v15 = selfCopy;

  [defaultManager fetchURLForItem:v14 completionHandler:v13];

  _Block_release(v13);
}

- (void)getPopoverTrackerForItem:(id)item completionBlock:(id)block
{
  v6 = _Block_copy(block);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = objc_opt_self();
  itemCopy = item;
  selfCopy = self;
  defaultManager = [v8 defaultManager];
  v12 = swift_allocObject();
  v12[2] = selfCopy;
  v12[3] = itemCopy;
  v12[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned DOCItemCollectionCell?) -> ();
  v12[5] = v7;
  v16[4] = closure #1 in DOCItemCollectionViewController.getPopoverTracker(for:completionBlock:)partial apply;
  v16[5] = v12;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
  v16[3] = &block_descriptor_850;
  v13 = _Block_copy(v16);
  v14 = itemCopy;
  v15 = selfCopy;

  [defaultManager fetchURLForItem:v14 completionHandler:v13];

  _Block_release(v13);
}

- (void)getViewFor:(id)for waitForNewThumbnail:(BOOL)thumbnail :(id)a5
{
  thumbnailCopy = thumbnail;
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized DOCItemCollectionViewController.getView(for:waitForNewThumbnail:_:)(for, thumbnailCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
  swift_unknownObjectRelease();
}

- (void)getCellFor:(id)for :(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = for;
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
  selfCopy = self;

  [for fetchURL_];
  swift_unknownObjectRelease();

  _Block_release(v9);
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection
{
  controllerCopy = controller;
  collectionCopy = collection;
  selfCopy = self;
  v9 = specialized DOCItemCollectionViewController.adaptivePresentationStyle(for:traitCollection:)(controllerCopy);

  return v9;
}

- (void)setProtectedStateToLockedForDidEnterBackground
{
  selfCopy = self;
  DOCItemCollectionViewController.setProtectedStateToLockedForDidEnterBackground()();
}

- (void)updateProtectedStateForDidEnterForeground
{
  selfCopy = self;
  DOCItemCollectionViewController.updateProtectedStateForDidEnterForeground()();
}

- (void)appProtectionStatusChangedWithNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  DOCItemCollectionViewController.appProtectionStatusChanged(notification:)(v8);

  (*(v5 + 8))(v8, v4);
}

- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized DOCItemCollectionViewController.collectionView(_:itemsForBeginning:at:)(session, v12);

  swift_unknownObjectRelease();
  (*(v9 + 8))(v12, v8);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem);
  v15.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v15.super.isa;
}

- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point
{
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized DOCItemCollectionViewController.collectionView(_:itemsForAddingTo:at:point:)(session, v13);

  swift_unknownObjectRelease();
  (*(v10 + 8))(v13, v9);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem);
  v16.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v16.super.isa;
}

- (void)collectionView:(id)view dragSessionWillBegin:(id)begin
{
  v6 = MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x8B0);
  swift_unknownObjectRetain_n();
  selfCopy = self;
  v7(begin);
  (*((*v6 & *selfCopy->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x848))(1);
  swift_unknownObjectRelease();
}

- (id)collectionView:(id)view dragPreviewParametersForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v13 = specialized DOCItemCollectionViewController.collectionView(_:dragPreviewParametersForItemAt:)(v10);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (void)collectionView:(id)view dragSessionDidEnd:(id)end
{
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x8B0);
  selfCopy = self;
  v5(0);
  (*((*v4 & *selfCopy->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x1150))(0);
  (*((*v4 & *selfCopy->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x848))(0);
}

- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  DOCItemCollectionViewController.collectionView(_:performDropWith:)(viewCopy, coordinator);

  swift_unknownObjectRelease();
}

- (BOOL)collectionView:(id)view canHandleDropSession:(id)session
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = specialized DOCItemCollectionViewController.collectionView(_:canHandle:)(session);

  swift_unknownObjectRelease();
  return v8 & 1;
}

- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v19 - v11;
  if (path)
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

  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v17 = DOCItemCollectionViewController.collectionView(_:dropSessionDidUpdate:withDestinationIndexPath:)(viewCopy, update, v12);

  swift_unknownObjectRelease();
  outlined destroy of CharacterSet?(v12, &_s10Foundation9IndexPathVSgMd);

  return v17;
}

- (void)collectionView:(id)view dropSessionDidEnter:(id)enter
{
  swift_unknownObjectRetain();
  selfCopy = self;
  localDragSession = [enter localDragSession];
  v8 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *selfCopy->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x8B0))(localDragSession);
  v9 = swift_dynamicCastObjCProtocolConditional();
  if (v9)
  {
    v10 = v9;
    swift_unknownObjectRetain();
    v9 = v10;
  }

  (*((*v8 & *selfCopy->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x8C8))(v9);
  swift_unknownObjectRelease();
}

- (void)collectionView:(id)view dropSessionDidEnd:(id)end
{
  v4 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x8C8);
  selfCopy = self;
  v4(0);
}

- (void)collectionView:(id)view dropSessionDidExit:(id)exit
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized DOCItemCollectionViewController.collectionView(_:dropSessionDidExit:)();

  swift_unknownObjectRelease();
}

- (int64_t)_collectionView:(id)view dataOwnerForDragSession:(id)session atIndexPath:(id)path
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v21 - v13;
  if (path)
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
    selfCopy = self;
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

- (int64_t)_collectionView:(id)view dataOwnerForDropSession:(id)session withDestinationIndexPath:(id)path
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v19 - v11;
  if (path)
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

  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v17 = DOCItemCollectionViewController._collectionView(_:dataOwnerFor:withDestinationIndexPath:)(view, session, v12);

  swift_unknownObjectRelease();
  outlined destroy of CharacterSet?(v12, &_s10Foundation9IndexPathVSgMd);
  return v17;
}

- (BOOL)becomeKeyboardFocused
{
  selfCopy = self;
  v3 = DOCItemCollectionViewController.becomeKeyboardFocused()();

  return v3;
}

- (BOOL)isInKeyWindow
{
  selfCopy = self;
  viewIfLoaded = [(DOCItemCollectionViewController *)selfCopy viewIfLoaded];
  if (viewIfLoaded && (v4 = viewIfLoaded, v5 = [viewIfLoaded window], v4, v5))
  {
    isKeyWindow = [v5 isKeyWindow];
  }

  else
  {
    isKeyWindow = 0;
  }

  return isKeyWindow;
}

- (BOOL)acceptsKeyboardFocus
{
  selfCopy = self;
  v3 = DOCItemCollectionViewController.acceptsKeyboardFocus.getter();

  return v3 & 1;
}

- (CGRect)absoluteFrame
{
  v2 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x1010);
  selfCopy = self;
  v4 = v2();
  superview = [v4 superview];

  if (superview)
  {
    v10 = v2();
    [v10 frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    [superview convertRect:0 toView:{v12, v14, v16, v18}];
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
  selfCopy = self;
  DOCItemCollectionViewController.firstItemInsertionRequestsFocusExpired()();
}

- (void)pressesChanged:(id)changed withEvent:(id)event
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIPress);
  lazy protocol witness table accessor for type UIPress and conformance NSObject();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  eventCopy = event;
  selfCopy = self;
  isa = Set._bridgeToObjectiveC()().super.isa;
  v12.receiver = selfCopy;
  v12.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  [(DOCItemCollectionViewController *)&v12 pressesChanged:isa withEvent:eventCopy];

  v10 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *selfCopy->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x1448))() & 1) != 0 || [objc_opt_self() typeToFocusIsSupported])
  {
    v11 = eventCopy;
    eventCopy = selfCopy;
  }

  else
  {
    (*((*v10 & **&selfCopy->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_typeToFocusController]) + 0x130))(v6, event);
    v11 = selfCopy;
  }
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIPress);
  lazy protocol witness table accessor for type UIPress and conformance NSObject();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  eventCopy = event;
  selfCopy = self;
  isa = Set._bridgeToObjectiveC()().super.isa;
  v12.receiver = selfCopy;
  v12.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  [(DOCItemCollectionViewController *)&v12 pressesCancelled:isa withEvent:eventCopy];

  v10 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *selfCopy->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x1448))() & 1) != 0 || [objc_opt_self() typeToFocusIsSupported])
  {
    v11 = eventCopy;
    eventCopy = selfCopy;
  }

  else
  {
    (*((*v10 & **&selfCopy->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_typeToFocusController]) + 0x140))(v6, event);
    v11 = selfCopy;
  }
}

- (void)startFolderCreation:(id)creation
{
  if (creation)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  (*((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0x1548))(v6);

  outlined destroy of CharacterSet?(v6, &_sypSgMd);
}

- (void)displayInfoForCurrentItem:(id)item
{
  if (item)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  DOCItemCollectionViewController.displayInfoForCurrentItem(_:)(v6);

  outlined destroy of CharacterSet?(v6, &_sypSgMd);
}

- (_TtP26DocumentManagerExecutables27DOCScannedDocumentReceiving_)doc_documentScannerReceivingTarget
{
  v2 = *((*MEMORY[0x277D85000] & *self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque) + 0xA98);
  selfCopy = self;
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

- (void)documentCameraViewController:(id)controller didFinishWithScan:(id)scan
{
  v7 = swift_allocObject();
  *(v7 + 16) = self;
  *(v7 + 24) = controller;
  controllerCopy = controller;
  selfCopy = self;
  v9 = controllerCopy;
  scanCopy = scan;
  specialized DOCDocumentScannerWriter.convertToPDFAndWrite(document:completionHandler:)(scanCopy, closure #1 in UIViewController.doc_documentCameraViewController(_:didFinishWith:)partial apply, v7);
}

- (void)_doc_performLiveResizeSkipped_updateOverlay
{
  selfCopy = self;
  specialized DOCItemCollectionViewController.updateOverlay(animated:)();
}

- (void)barButtonTappedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  DOCItemCollectionViewController.barButtonTapped(sender:)(senderCopy);
}

- (void)prepareForPopoverPresentation:(id)presentation
{
  presentationCopy = presentation;
  selfCopy = self;
  DOCItemCollectionViewController.prepareForPopoverPresentation(_:)(presentationCopy);
}

- (void)actionBarButtonTriggeredWithActionBarButton:(id)button
{
  v4 = *((*MEMORY[0x277D85000] & *button) + 0x58);
  buttonCopy = button;
  selfCopy = self;
  v6 = v4();
  if (v6)
  {
    v7 = v6;
    v8 = DOCItemCollectionViewController.actionContext(from:)();
    [(DOCItemCollectionViewController *)selfCopy performActionWithAction:v7 actionContext:v8];
  }
}

- (void)performActionWithAction:(id)action actionContext:(id)context
{
  actionCopy = action;
  contextCopy = context;
  selfCopy = self;
  DOCItemCollectionViewController.performAction(action:actionContext:)(actionCopy, contextCopy);
}

@end