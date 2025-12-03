@interface DOCSidebarViewController
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)collectionView:(id)view canHandleDropSession:(id)session;
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSpringLoadItemAtIndexPath:(id)path withContext:(id)context;
- (BOOL)isEditing;
- (BOOL)scrollViewShouldScrollToTop:(id)top;
- (BOOL)sidebarHasActiveFocus;
- (DOCItemCollectionObserver)trashObserver;
- (DOCItemCollectionSubscriber)trashSubscriber;
- (DOCPickerContext)pickerContext;
- (DOCSidebarViewController)initWithCollectionViewLayout:(id)layout;
- (UICollectionView)collectionView;
- (UICollectionViewCompositionalLayout)collectionViewLayout;
- (_TtC26DocumentManagerExecutables19DOCSearchController)searchController;
- (_TtP26DocumentManagerExecutables27DOCScannedDocumentReceiving_)doc_documentScannerReceivingTarget;
- (_TtP26DocumentManagerExecutables32DOCSidebarViewControllerDelegate_)sidebarDelegate;
- (id)_multitaskingDragExclusionRects;
- (id)_newCollectionViewWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)collectionView:(id)view targetIndexPathForMoveFromItemAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view;
- (id)targetForAction:(SEL)action withSender:(id)sender;
- (int64_t)_collectionView:(id)view dataOwnerForDropSession:(id)session withDestinationIndexPath:(id)path;
- (void)_doc_performLiveResizeSkipped_updateNavigationButtons;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)collectionView:(id)view dropSessionDidEnd:(id)end;
- (void)collectionView:(id)view dropSessionDidEnter:(id)enter;
- (void)collectionView:(id)view dropSessionDidExit:(id)exit;
- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator;
- (void)documentCameraViewController:(id)controller didFinishWithScan:(id)scan;
- (void)effectiveAppearanceDidChange:(id)change;
- (void)noteBrowserDidUpdateHierarchy:(id)hierarchy displayedRootLocation:(id)location;
- (void)performFind:(id)find;
- (void)revealWithNodes:(id)nodes selectEvenIfVisible:(BOOL)visible completionBlock:(id)block;
- (void)setAdditionalTrailingNavigationBarButtonItems:(id)items;
- (void)setCollectionView:(id)view;
- (void)setCustomActions:(id)actions;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setPickerContext:(id)context;
- (void)setSidebarHasActiveFocus:(BOOL)focus;
- (void)traitCollectionDidChange:(id)change;
- (void)updateSelectionToMatchBrowsedLocation:(id)location scrollToVisible:(BOOL)visible;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)withLocationChangePacingDisabled:(id)disabled;
@end

@implementation DOCSidebarViewController

- (UICollectionViewCompositionalLayout)collectionViewLayout
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCSidebarViewController(0);
  v2 = v7.receiver;
  result = [(DOCSidebarViewController *)&v7 collectionView];
  if (result)
  {
    v4 = result;
    v5 = [(UICollectionViewCompositionalLayout *)result collectionViewLayout:v7.receiver];

    objc_opt_self();
    v6 = swift_dynamicCastObjCClassUnconditional();

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (_TtP26DocumentManagerExecutables27DOCScannedDocumentReceiving_)doc_documentScannerReceivingTarget
{
  v2 = *((*MEMORY[0x277D85000] & *self) + 0x1E8);
  selfCopy = self;
  v4 = v2();

  return v4;
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

- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v14 = specialized DOCSidebarViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(v11);

  (*(v8 + 8))(v11, v7);

  return v14;
}

- (id)_newCollectionViewWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  layoutCopy = layout;
  selfCopy = self;
  v12 = specialized DOCSidebarViewController._newCollectionView(withFrame:collectionViewLayout:)(layout, x, y, width, height);

  return v12;
}

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v17 - v7;
  viewCopy = view;
  selfCopy = self;
  DOCSidebarViewController.indexPathForPreferredFocusedView(in:)(viewCopy, v8);

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

- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  viewCopy = view;
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  specialized DOCSidebarViewController.collectionView(_:didUpdateFocusIn:with:)(viewCopy, contextCopy);
}

- (BOOL)sidebarHasActiveFocus
{
  v3 = OBJC_IVAR___DOCSidebarViewController_sidebarHasActiveFocus;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSidebarHasActiveFocus:(BOOL)focus
{
  v5 = OBJC_IVAR___DOCSidebarViewController_sidebarHasActiveFocus;
  swift_beginAccess();
  *(self + v5) = focus;
}

- (_TtP26DocumentManagerExecutables32DOCSidebarViewControllerDelegate_)sidebarDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (DOCPickerContext)pickerContext
{
  v3 = OBJC_IVAR___DOCSidebarViewController_pickerContext;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPickerContext:(id)context
{
  v5 = OBJC_IVAR___DOCSidebarViewController_pickerContext;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = context;
  contextCopy = context;
  selfCopy = self;

  DOCSidebarViewController.updateRecentlyUsedSection()();
}

- (DOCItemCollectionObserver)trashObserver
{
  v3 = OBJC_IVAR___DOCSidebarViewController_trashObserver;
  swift_beginAccess();
  return *(self + v3);
}

- (DOCItemCollectionSubscriber)trashSubscriber
{
  v3 = OBJC_IVAR___DOCSidebarViewController_trashSubscriber;
  swift_beginAccess();
  return *(self + v3);
}

- (_TtC26DocumentManagerExecutables19DOCSearchController)searchController
{
  v3 = OBJC_IVAR___DOCSidebarViewController_searchController;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAdditionalTrailingNavigationBarButtonItems:(id)items
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR___DOCSidebarViewController_additionalTrailingNavigationBarButtonItems;
  swift_beginAccess();
  *(self + v5) = v4;
  selfCopy = self;

  DOCSidebarViewController.updateNavigationButtons()();
}

- (void)setCustomActions:(id)actions
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR___DOCSidebarViewController_customActions;
  swift_beginAccess();
  *(self + v5) = v4;
  selfCopy = self;

  v7 = *(selfCopy + OBJC_IVAR___DOCSidebarViewController_actionManager);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 setActions_];
}

- (UICollectionView)collectionView
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCSidebarViewController(0);
  collectionView = [(DOCSidebarViewController *)&v4 collectionView];

  return collectionView;
}

- (void)setCollectionView:(id)view
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCSidebarViewController(0);
  [(DOCSidebarViewController *)&v4 setCollectionView:view];
}

- (DOCSidebarViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)effectiveAppearanceDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for DOCSidebarViewController(0);
  changeCopy = change;
  v5 = v6.receiver;
  [(DOCSidebarViewController *)&v6 effectiveAppearanceDidChange:changeCopy];
  if ([v5 isViewLoaded])
  {
    DOCSidebarViewController.updateBackgroundColor()();
  }
}

- (void)viewDidLoad
{
  selfCopy = self;
  DOCSidebarViewController.viewDidLoad()();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  DOCSidebarViewController.viewDidLayoutSubviews()();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  DOCSidebarViewController.traitCollectionDidChange(_:)(v9);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  DOCSidebarViewController.viewWillAppear(_:)(appear);
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v6.receiver = self;
  v6.super_class = type metadata accessor for DOCSidebarViewController(0);
  v4 = v6.receiver;
  v5 = [(DOCSidebarViewController *)&v6 viewIsAppearing:appearingCopy];
  if ((*((*MEMORY[0x277D85000] & *v4) + 0x358))(v5))
  {
    DOCSidebarViewController.coalescedReloadOutlineDiffableData(animatingDifferences:reflectSelection:)(appearingCopy, 1);
  }

  DOCSidebarViewController.reflectCurrentLocationToSelectedInSidebar(scrollToVisible:forAppearance:)(0, 1);
  if (DOCSidebarViewController.currentPresentationContext.getter() == 2)
  {
    DOCSidebarViewController.performAlongsideTransitionDeselection(animated:coordinator:)(appearingCopy, [v4 transitionCoordinator]);
    swift_unknownObjectRelease();
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCSidebarViewController(0);
  v4 = v7.receiver;
  [(DOCSidebarViewController *)&v7 viewDidAppear:appearCopy];
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v4) + 0x390))(0);
  if ((*((*v5 & *v4) + 0x358))(v6))
  {
    DOCSidebarViewController.coalescedReloadOutlineDiffableData(animatingDifferences:reflectSelection:)(0, 1);
  }
}

- (id)_multitaskingDragExclusionRects
{
  selfCopy = self;
  DOCSidebarViewController._multitaskingDragExclusionRects()();

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSValue);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)_doc_performLiveResizeSkipped_updateNavigationButtons
{
  selfCopy = self;
  DOCSidebarViewController.updateNavigationButtons()();
}

- (id)targetForAction:(SEL)action withSender:(id)sender
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
    memset(v16, 0, sizeof(v16));
    selfCopy2 = self;
  }

  DOCSidebarViewController.target(forAction:withSender:)(action, v16, v17);

  outlined destroy of CharacterSet?(v16, &_sypSgMd);
  v8 = v18;
  if (v18)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v10 = *(v8 - 8);
    v11 = MEMORY[0x28223BE20](v9, v9);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    v14 = 0;
  }

  return v14;
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

  v8 = DOCSidebarViewController.canPerformAction(_:withSender:)(action, v10);

  outlined destroy of CharacterSet?(v10, &_sypSgMd);
  return v8 & 1;
}

- (void)performFind:(id)find
{
  selfCopy = self;
  navigationItem = [(DOCSidebarViewController *)selfCopy navigationItem];
  searchController = [navigationItem searchController];

  if (searchController)
  {
    [searchController setActive_];
    searchBar = [searchController searchBar];
    [searchBar becomeFirstResponder];
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  specialized DOCSidebarViewController.collectionView(_:didSelectItemAt:)(v10);

  (*(v7 + 8))(v10, v6);
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v21 - v9;
  v11 = type metadata accessor for IndexPath();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  DOCSidebarViewController.diffableSnapshot()();
  specialized NSDiffableDataSourceSnapshot<>.itemIdentifier(for:)(v21);
  (*(v7 + 8))(v10, v6);
  if (v21[0])
  {
    v24 = v22;
    *v25 = v23[0];
    *&v25[9] = *(v23 + 9);
    v26[0] = v21[0];
    v26[1] = v21[1];
    outlined destroy of DOCSidebarViewController.OutlineSection(v26);
    if (v25[24] == 255)
    {
      v19 = 1;
      goto LABEL_6;
    }

    outlined destroy of CharacterSet?(&v24, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
  }

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v19 = [(DOCSidebarViewController *)selfCopy collectionView:viewCopy shouldHighlightItemAtIndexPath:isa];

  viewCopy = selfCopy;
  selfCopy = isa;
LABEL_6:

  (*(v12 + 8))(v15, v11);
  return v19;
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  DOCSidebarViewController.diffableSnapshot()();
  specialized NSDiffableDataSourceSnapshot<>.itemIdentifier(for:)(v18);
  (*(v6 + 8))(v9, v5);
  if (v18[0])
  {
    v27 = v19;
    *v28 = v20[0];
    *&v28[9] = *(v20 + 9);
    v29[0] = v18[0];
    v29[1] = v18[1];
    outlined destroy of DOCSidebarViewController.OutlineSection(v29);
    if (v28[24] == 255)
    {
      v16 = 1;
      goto LABEL_8;
    }

    outlined destroy of CharacterSet?(&v27, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
  }

  DOCSidebarViewController.sidebarItem(at:logIfMissing:)(v14, 1, v21);
  if (v23 == 255)
  {
    v16 = 0;
  }

  else
  {
    v24[0] = v21[0];
    v24[1] = v21[1];
    v25 = v22;
    v26 = v23;
    v16 = DOCSidebarViewController.isCellEnabledForSelection(item:)(v24);
    outlined destroy of CharacterSet?(v21, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd);
  }

LABEL_8:

  (*(v11 + 8))(v14, v10);
  return v16 & 1;
}

- (void)withLocationChangePacingDisabled:(id)disabled
{
  v4 = _Block_copy(disabled);
  v5 = *((*MEMORY[0x277D85000] & *self) + 0x488);
  selfCopy = self;
  v6 = *v5();
  (*(v6 + 320))();

  v4[2](v4);
  _Block_release(v4);
}

- (void)updateSelectionToMatchBrowsedLocation:(id)location scrollToVisible:(BOOL)visible
{
  locationCopy = location;
  selfCopy = self;
  DOCSidebarViewController.updateSelectionToMatchBrowsedLocation(_:scrollToVisible:)(location, visible);
}

- (void)noteBrowserDidUpdateHierarchy:(id)hierarchy displayedRootLocation:(id)location
{
  locationCopy = location;
  selfCopy = self;
  [(DOCSidebarViewController *)selfCopy updateSelectionToMatchBrowsedLocation:locationCopy scrollToVisible:0];
  DOCSidebarViewController.updatePreferredFocusIndexPath()();
}

- (BOOL)scrollViewShouldScrollToTop:(id)top
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCSidebarViewController(0);
  v3 = v8.receiver;
  collectionView = [(DOCSidebarViewController *)&v8 collectionView];
  if (collectionView)
  {
    v5 = collectionView;
    type metadata accessor for DOCSidebarCollectionView();
    hasUncommittedUpdates = [swift_dynamicCastClassUnconditional() hasUncommittedUpdates];

    LOBYTE(collectionView) = hasUncommittedUpdates ^ 1;
  }

  else
  {
    __break(1u);
  }

  return collectionView;
}

- (BOOL)collectionView:(id)view shouldSpringLoadItemAtIndexPath:(id)path withContext:(id)context
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  LOBYTE(self) = specialized DOCSidebarViewController.collectionView(_:shouldSpringLoadItemAt:with:)(v11);

  swift_unknownObjectRelease();
  (*(v8 + 8))(v11, v7);
  return self & 1;
}

- (id)collectionView:(id)view targetIndexPathForMoveFromItemAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v25 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v25 - v18;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  DOCSidebarViewController.collectionView(_:targetIndexPathForMoveFromItemAt:toProposedIndexPath:)(viewCopy, v15, v11, v19);

  v22 = *(v8 + 8);
  v22(v11, v7);
  v22(v15, v7);
  v23.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v22(v19, v7);

  return v23.super.isa;
}

- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  DOCSidebarViewController.performDrop(in:with:)(viewCopy, coordinator);

  swift_unknownObjectRelease();
}

- (BOOL)collectionView:(id)view canHandleDropSession:(id)session
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = specialized DOCSidebarViewController.collectionView(_:canHandle:)(session);

  swift_unknownObjectRelease();
  return v8 & 1;
}

- (void)collectionView:(id)view dropSessionDidEnter:(id)enter
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized DOCSidebarViewController.collectionView(_:dropSessionDidEnter:)(enter);

  swift_unknownObjectRelease();
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
  v17 = specialized DOCSidebarViewController.collectionView(_:dropSessionDidUpdate:withDestinationIndexPath:)(update, v12);

  swift_unknownObjectRelease();
  outlined destroy of CharacterSet?(v12, &_s10Foundation9IndexPathVSgMd);

  return v17;
}

- (void)collectionView:(id)view dropSessionDidExit:(id)exit
{
  v5 = one-time initialization token for shared;
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = *(*static DOCSidebarViewController.dbg.shared + 144);

  v7(0xD00000000000001BLL, 0x8000000249BFB910);

  (*((*MEMORY[0x277D85000] & *selfCopy) + 0x3E0))(0);
  DOCSidebarViewController.updateDropPointIndicatorView()();

  swift_unknownObjectRelease();
}

- (void)collectionView:(id)view dropSessionDidEnd:(id)end
{
  v5 = one-time initialization token for shared;
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = *(*static DOCSidebarViewController.dbg.shared + 144);

  v7(0xD000000000000026, 0x8000000249BFB930);

  (*((*MEMORY[0x277D85000] & *selfCopy) + 0x3E0))(0);
  DOCSidebarViewController.updateDropPointIndicatorView()();

  swift_unknownObjectRelease();
}

- (int64_t)_collectionView:(id)view dataOwnerForDropSession:(id)session withDestinationIndexPath:(id)path
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v22 - v14;
  if (!path)
  {
    v21 = type metadata accessor for IndexPath();
    (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
    goto LABEL_6;
  }

  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = type metadata accessor for IndexPath();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v15, 0, 1, v16);
  if (!session)
  {
LABEL_6:
    v20 = 0;
    goto LABEL_7;
  }

  outlined init with copy of DOCGridLayout.Spec?(v15, v11, &_s10Foundation9IndexPathVSgMd);
  result = (*(v17 + 48))(v11, 1, v16);
  if (result != 1)
  {
    swift_unknownObjectRetain();
    selfCopy = self;
    v20 = specialized DOCSidebarViewController.dataOwnerForSession(_:at:)(v11);
    swift_unknownObjectRelease();

    (*(v17 + 8))(v11, v16);
LABEL_7:
    outlined destroy of CharacterSet?(v15, &_s10Foundation9IndexPathVSgMd);
    return v20;
  }

  __break(1u);
  return result;
}

- (BOOL)isEditing
{
  v2 = *((*MEMORY[0x277D85000] & *self) + 0x440);
  selfCopy = self;
  LOBYTE(v2) = v2();

  return v2 != 0;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  selfCopy = self;
  DOCSidebarViewController.setEditing(_:animated:)(editing, animated);
}

- (void)revealWithNodes:(id)nodes selectEvenIfVisible:(BOOL)visible completionBlock:(id)block
{
  visibleCopy = visible;
  v8 = _Block_copy(block);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  nodesCopy = nodes;
  selfCopy = self;
  v12 = DOCSidebarViewController.effectiveTransitionableController.getter();
  v14[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ();
  v14[5] = v9;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v14[3] = &block_descriptor_94_2;
  v13 = _Block_copy(v14);

  [v12 revealWithNodes:nodesCopy selectEvenIfVisible:visibleCopy completionBlock:v13];

  _Block_release(v13);
  swift_unknownObjectRelease();
}

@end