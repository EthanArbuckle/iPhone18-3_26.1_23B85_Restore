@interface DOCSidebarViewController
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)collectionView:(id)a3 canHandleDropSession:(id)a4;
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSpringLoadItemAtIndexPath:(id)a4 withContext:(id)a5;
- (BOOL)isEditing;
- (BOOL)scrollViewShouldScrollToTop:(id)a3;
- (BOOL)sidebarHasActiveFocus;
- (DOCItemCollectionObserver)trashObserver;
- (DOCItemCollectionSubscriber)trashSubscriber;
- (DOCPickerContext)pickerContext;
- (DOCSidebarViewController)initWithCollectionViewLayout:(id)a3;
- (UICollectionView)collectionView;
- (UICollectionViewCompositionalLayout)collectionViewLayout;
- (_TtC26DocumentManagerExecutables19DOCSearchController)searchController;
- (_TtP26DocumentManagerExecutables27DOCScannedDocumentReceiving_)doc_documentScannerReceivingTarget;
- (_TtP26DocumentManagerExecutables32DOCSidebarViewControllerDelegate_)sidebarDelegate;
- (id)_multitaskingDragExclusionRects;
- (id)_newCollectionViewWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (id)collectionView:(id)a3 targetIndexPathForMoveFromItemAtIndexPath:(id)a4 toProposedIndexPath:(id)a5;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3;
- (id)targetForAction:(SEL)a3 withSender:(id)a4;
- (int64_t)_collectionView:(id)a3 dataOwnerForDropSession:(id)a4 withDestinationIndexPath:(id)a5;
- (void)_doc_performLiveResizeSkipped_updateNavigationButtons;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5;
- (void)collectionView:(id)a3 dropSessionDidEnd:(id)a4;
- (void)collectionView:(id)a3 dropSessionDidEnter:(id)a4;
- (void)collectionView:(id)a3 dropSessionDidExit:(id)a4;
- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4;
- (void)documentCameraViewController:(id)a3 didFinishWithScan:(id)a4;
- (void)effectiveAppearanceDidChange:(id)a3;
- (void)noteBrowserDidUpdateHierarchy:(id)a3 displayedRootLocation:(id)a4;
- (void)performFind:(id)a3;
- (void)revealWithNodes:(id)a3 selectEvenIfVisible:(BOOL)a4 completionBlock:(id)a5;
- (void)setAdditionalTrailingNavigationBarButtonItems:(id)a3;
- (void)setCollectionView:(id)a3;
- (void)setCustomActions:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setPickerContext:(id)a3;
- (void)setSidebarHasActiveFocus:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateSelectionToMatchBrowsedLocation:(id)a3 scrollToVisible:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)withLocationChangePacingDisabled:(id)a3;
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
  v3 = self;
  v4 = v2();

  return v4;
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

- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = self;
  v14 = specialized DOCSidebarViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(v11);

  (*(v8 + 8))(v11, v7);

  return v14;
}

- (id)_newCollectionViewWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v11 = self;
  v12 = specialized DOCSidebarViewController._newCollectionView(withFrame:collectionViewLayout:)(a4, x, y, width, height);

  return v12;
}

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v17 - v7;
  v9 = a3;
  v10 = self;
  DOCSidebarViewController.indexPathForPreferredFocusedView(in:)(v9, v8);

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

- (void)collectionView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  specialized DOCSidebarViewController.collectionView(_:didUpdateFocusIn:with:)(v8, v9);
}

- (BOOL)sidebarHasActiveFocus
{
  v3 = OBJC_IVAR___DOCSidebarViewController_sidebarHasActiveFocus;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSidebarHasActiveFocus:(BOOL)a3
{
  v5 = OBJC_IVAR___DOCSidebarViewController_sidebarHasActiveFocus;
  swift_beginAccess();
  *(self + v5) = a3;
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

- (void)setPickerContext:(id)a3
{
  v5 = OBJC_IVAR___DOCSidebarViewController_pickerContext;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
  v8 = self;

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

- (void)setAdditionalTrailingNavigationBarButtonItems:(id)a3
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR___DOCSidebarViewController_additionalTrailingNavigationBarButtonItems;
  swift_beginAccess();
  *(self + v5) = v4;
  v6 = self;

  DOCSidebarViewController.updateNavigationButtons()();
}

- (void)setCustomActions:(id)a3
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR___DOCSidebarViewController_customActions;
  swift_beginAccess();
  *(self + v5) = v4;
  v6 = self;

  v7 = *(v6 + OBJC_IVAR___DOCSidebarViewController_actionManager);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 setActions_];
}

- (UICollectionView)collectionView
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCSidebarViewController(0);
  v2 = [(DOCSidebarViewController *)&v4 collectionView];

  return v2;
}

- (void)setCollectionView:(id)a3
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCSidebarViewController(0);
  [(DOCSidebarViewController *)&v4 setCollectionView:a3];
}

- (DOCSidebarViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)effectiveAppearanceDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for DOCSidebarViewController(0);
  v4 = a3;
  v5 = v6.receiver;
  [(DOCSidebarViewController *)&v6 effectiveAppearanceDidChange:v4];
  if ([v5 isViewLoaded])
  {
    DOCSidebarViewController.updateBackgroundColor()();
  }
}

- (void)viewDidLoad
{
  v2 = self;
  DOCSidebarViewController.viewDidLoad()();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  DOCSidebarViewController.viewDidLayoutSubviews()();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  DOCSidebarViewController.traitCollectionDidChange(_:)(v9);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  DOCSidebarViewController.viewWillAppear(_:)(a3);
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for DOCSidebarViewController(0);
  v4 = v6.receiver;
  v5 = [(DOCSidebarViewController *)&v6 viewIsAppearing:v3];
  if ((*((*MEMORY[0x277D85000] & *v4) + 0x358))(v5))
  {
    DOCSidebarViewController.coalescedReloadOutlineDiffableData(animatingDifferences:reflectSelection:)(v3, 1);
  }

  DOCSidebarViewController.reflectCurrentLocationToSelectedInSidebar(scrollToVisible:forAppearance:)(0, 1);
  if (DOCSidebarViewController.currentPresentationContext.getter() == 2)
  {
    DOCSidebarViewController.performAlongsideTransitionDeselection(animated:coordinator:)(v3, [v4 transitionCoordinator]);
    swift_unknownObjectRelease();
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCSidebarViewController(0);
  v4 = v7.receiver;
  [(DOCSidebarViewController *)&v7 viewDidAppear:v3];
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v4) + 0x390))(0);
  if ((*((*v5 & *v4) + 0x358))(v6))
  {
    DOCSidebarViewController.coalescedReloadOutlineDiffableData(animatingDifferences:reflectSelection:)(0, 1);
  }
}

- (id)_multitaskingDragExclusionRects
{
  v2 = self;
  DOCSidebarViewController._multitaskingDragExclusionRects()();

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSValue);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)_doc_performLiveResizeSkipped_updateNavigationButtons
{
  v2 = self;
  DOCSidebarViewController.updateNavigationButtons()();
}

- (id)targetForAction:(SEL)a3 withSender:(id)a4
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
    memset(v16, 0, sizeof(v16));
    v7 = self;
  }

  DOCSidebarViewController.target(forAction:withSender:)(a3, v16, v17);

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

  v8 = DOCSidebarViewController.canPerformAction(_:withSender:)(a3, v10);

  outlined destroy of CharacterSet?(v10, &_sypSgMd);
  return v8 & 1;
}

- (void)performFind:(id)a3
{
  v6 = self;
  v3 = [(DOCSidebarViewController *)v6 navigationItem];
  v4 = [v3 searchController];

  if (v4)
  {
    [v4 setActive_];
    v5 = [v4 searchBar];
    [v5 becomeFirstResponder];
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  specialized DOCSidebarViewController.collectionView(_:didSelectItemAt:)(v10);

  (*(v7 + 8))(v10, v6);
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
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
  v16 = a3;
  v17 = self;
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
  v19 = [(DOCSidebarViewController *)v17 collectionView:v16 shouldHighlightItemAtIndexPath:isa];

  v16 = v17;
  v17 = isa;
LABEL_6:

  (*(v12 + 8))(v15, v11);
  return v19;
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
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
  v15 = self;
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

- (void)withLocationChangePacingDisabled:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = *((*MEMORY[0x277D85000] & *self) + 0x488);
  v7 = self;
  v6 = *v5();
  (*(v6 + 320))();

  v4[2](v4);
  _Block_release(v4);
}

- (void)updateSelectionToMatchBrowsedLocation:(id)a3 scrollToVisible:(BOOL)a4
{
  v7 = a3;
  v8 = self;
  DOCSidebarViewController.updateSelectionToMatchBrowsedLocation(_:scrollToVisible:)(a3, a4);
}

- (void)noteBrowserDidUpdateHierarchy:(id)a3 displayedRootLocation:(id)a4
{
  v5 = a4;
  v6 = self;
  [(DOCSidebarViewController *)v6 updateSelectionToMatchBrowsedLocation:v5 scrollToVisible:0];
  DOCSidebarViewController.updatePreferredFocusIndexPath()();
}

- (BOOL)scrollViewShouldScrollToTop:(id)a3
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCSidebarViewController(0);
  v3 = v8.receiver;
  v4 = [(DOCSidebarViewController *)&v8 collectionView];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for DOCSidebarCollectionView();
    v6 = [swift_dynamicCastClassUnconditional() hasUncommittedUpdates];

    LOBYTE(v4) = v6 ^ 1;
  }

  else
  {
    __break(1u);
  }

  return v4;
}

- (BOOL)collectionView:(id)a3 shouldSpringLoadItemAtIndexPath:(id)a4 withContext:(id)a5
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  swift_unknownObjectRetain();
  v13 = self;
  LOBYTE(self) = specialized DOCSidebarViewController.collectionView(_:shouldSpringLoadItemAt:with:)(v11);

  swift_unknownObjectRelease();
  (*(v8 + 8))(v11, v7);
  return self & 1;
}

- (id)collectionView:(id)a3 targetIndexPathForMoveFromItemAtIndexPath:(id)a4 toProposedIndexPath:(id)a5
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
  v20 = a3;
  v21 = self;
  DOCSidebarViewController.collectionView(_:targetIndexPathForMoveFromItemAt:toProposedIndexPath:)(v20, v15, v11, v19);

  v22 = *(v8 + 8);
  v22(v11, v7);
  v22(v15, v7);
  v23.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v22(v19, v7);

  return v23.super.isa;
}

- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  DOCSidebarViewController.performDrop(in:with:)(v6, a4);

  swift_unknownObjectRelease();
}

- (BOOL)collectionView:(id)a3 canHandleDropSession:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = specialized DOCSidebarViewController.collectionView(_:canHandle:)(a4);

  swift_unknownObjectRelease();
  return v8 & 1;
}

- (void)collectionView:(id)a3 dropSessionDidEnter:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  specialized DOCSidebarViewController.collectionView(_:dropSessionDidEnter:)(a4);

  swift_unknownObjectRelease();
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
  v17 = specialized DOCSidebarViewController.collectionView(_:dropSessionDidUpdate:withDestinationIndexPath:)(a4, v12);

  swift_unknownObjectRelease();
  outlined destroy of CharacterSet?(v12, &_s10Foundation9IndexPathVSgMd);

  return v17;
}

- (void)collectionView:(id)a3 dropSessionDidExit:(id)a4
{
  v5 = one-time initialization token for shared;
  v6 = a3;
  swift_unknownObjectRetain();
  v8 = self;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = *(*static DOCSidebarViewController.dbg.shared + 144);

  v7(0xD00000000000001BLL, 0x8000000249BFB910);

  (*((*MEMORY[0x277D85000] & *v8) + 0x3E0))(0);
  DOCSidebarViewController.updateDropPointIndicatorView()();

  swift_unknownObjectRelease();
}

- (void)collectionView:(id)a3 dropSessionDidEnd:(id)a4
{
  v5 = one-time initialization token for shared;
  v6 = a3;
  swift_unknownObjectRetain();
  v8 = self;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = *(*static DOCSidebarViewController.dbg.shared + 144);

  v7(0xD000000000000026, 0x8000000249BFB930);

  (*((*MEMORY[0x277D85000] & *v8) + 0x3E0))(0);
  DOCSidebarViewController.updateDropPointIndicatorView()();

  swift_unknownObjectRelease();
}

- (int64_t)_collectionView:(id)a3 dataOwnerForDropSession:(id)a4 withDestinationIndexPath:(id)a5
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v22 - v14;
  if (!a5)
  {
    v21 = type metadata accessor for IndexPath();
    (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
    goto LABEL_6;
  }

  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = type metadata accessor for IndexPath();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v15, 0, 1, v16);
  if (!a4)
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
    v19 = self;
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
  v3 = self;
  LOBYTE(v2) = v2();

  return v2 != 0;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  DOCSidebarViewController.setEditing(_:animated:)(a3, a4);
}

- (void)revealWithNodes:(id)a3 selectEvenIfVisible:(BOOL)a4 completionBlock:(id)a5
{
  v5 = a4;
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = self;
  v12 = DOCSidebarViewController.effectiveTransitionableController.getter();
  v14[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ();
  v14[5] = v9;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v14[3] = &block_descriptor_94_2;
  v13 = _Block_copy(v14);

  [v12 revealWithNodes:v10 selectEvenIfVisible:v5 completionBlock:v13];

  _Block_release(v13);
  swift_unknownObjectRelease();
}

@end