@interface DOCColumnViewController
+ (BOOL)supportsDisplayInTraitCollection:(id)a3 availableArea:(CGSize)a4;
+ (NSString)DOCColumnViewControllerUpdatedNavigationItem;
- (BOOL)showsHierarchyIndicator;
- (DOCColumnViewController)initWithCollectionViewLayout:(id)a3;
- (DOCColumnViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (NSArray)containerControllers;
- (NSArray)preferredFocusEnvironments;
- (NSString)description;
- (id)_newCollectionViewWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)getCellFor:(id)a3 :(id)a4;
- (void)getTransitionControllerForURL:(id)a3 completionBlock:(id)a4;
- (void)getViewFor:(id)a3 waitForNewThumbnail:(BOOL)a4 :(id)a5;
- (void)removeChildViewController:(id)a3;
- (void)revealWithNodes:(id)a3 selectEvenIfVisible:(BOOL)a4 completionBlock:(id)a5;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)setContainerControllers:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setShowsHierarchyIndicator:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateFocusHierarchy;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation DOCColumnViewController

+ (NSString)DOCColumnViewControllerUpdatedNavigationItem
{
  if (one-time initialization token for DOCColumnViewControllerUpdatedNavigationItem != -1)
  {
    swift_once();
  }

  v3 = static DOCColumnViewController.DOCColumnViewControllerUpdatedNavigationItem;

  return v3;
}

+ (BOOL)supportsDisplayInTraitCollection:(id)a3 availableArea:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  v7 = specialized static DOCColumnViewSpecs.specWithBrowsingContext(traitCollection:columnBrowserSize:)(v6, width, height);

  if (v7)
  {
  }

  return v7 != 0;
}

- (NSArray)containerControllers
{
  swift_beginAccess();
  type metadata accessor for DOCBrowserContainerController();

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setContainerControllers:(id)a3
{
  type metadata accessor for DOCBrowserContainerController();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR___DOCColumnViewController_containerControllers;
  swift_beginAccess();
  v6 = *(self + v5);
  v7 = self;

  DOCColumnViewController.containerControllers.willset(v4);
  *(self + v5) = v4;

  DOCColumnViewController.containerControllers.didset(v6);
}

- (id)_newCollectionViewWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  if (a4)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    v9 = objc_allocWithZone(type metadata accessor for DOCColumnViewControllerCollectionView());

    return [v9 initWithFrame:a4 collectionViewLayout:{x, y, width, height}];
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (NSString)description
{
  v2 = self;
  v3 = DOCColumnViewController.description.getter();
  v5 = v4;

  v6 = MEMORY[0x24C1FAD20](v3, v5);

  return v6;
}

- (void)viewDidLoad
{
  v2 = self;
  DOCColumnViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCColumnViewController(0);
  v4 = v7.receiver;
  v5 = [(DOCColumnViewController *)&v7 viewWillAppear:v3];
  if (*(v4 + OBJC_IVAR___DOCColumnViewController_needsUpdateDiffableSnapshot) == 1)
  {
    v6 = (*((*MEMORY[0x277D85000] & *v4) + 0xB0))(v5);
    DOCColumnViewController.updateSnapshot(newValue:)(v6);
  }

  DOCColumnViewController.updateContainerNavigationItem()();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  DOCColumnViewController.viewDidAppear(_:)(a3);
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCColumnViewController(0);
  v2 = v3.receiver;
  [(DOCColumnViewController *)&v3 viewWillLayoutSubviews];
  DOCColumnViewController.invalidateCollectionViewLayoutIfNeeded()();
  DOCColumnViewController.updateFakeSeparator()();
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for DOCColumnViewController(0);
  v2 = v6.receiver;
  v3 = [(DOCColumnViewController *)&v6 viewDidLayoutSubviews];
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v2) + 0x260))(v3);
  (*((*v4 & *v2) + 0x238))(v5);
  DOCColumnViewController.updateCellScrollPositionRelatedLayout()();
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  DOCColumnViewController.setEditing(_:animated:)(a3, a4);
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v3 = self;
  DOCColumnViewController.finishActiveScrollToItem(didComplete:)(1);
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v7 = a3;
  v8 = self;
  DOCColumnViewController.viewDidMove(to:shouldAppearOrDisappear:)(a3, a4);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  DOCColumnViewController.traitCollectionDidChange(_:)(v9);
}

- (void)viewLayoutMarginsDidChange
{
  v2 = self;
  DOCColumnViewController.viewLayoutMarginsDidChange()();
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  v14 = a4;
  v15 = self;
  specialized DOCColumnViewController.collectionView(_:willDisplay:forItemAt:)(v14);

  (*(v9 + 8))(v12, v8);
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
  specialized DOCColumnViewController.collectionView(_:didEndDisplaying:forItemAt:)(v14);

  (*(v9 + 8))(v12, v8);
}

- (void)updateFocusHierarchy
{
  v2 = self;
  DOCColumnViewController.updateFocusHierarchy()();
}

- (NSArray)preferredFocusEnvironments
{
  v2 = self;
  DOCColumnViewController.preferredFocusEnvironments.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18UIFocusEnvironment_pMd);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (BOOL)showsHierarchyIndicator
{
  v3 = OBJC_IVAR___DOCColumnViewController_showsHierarchyIndicator;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShowsHierarchyIndicator:(BOOL)a3
{
  v3 = a3;
  v5 = OBJC_IVAR___DOCColumnViewController_showsHierarchyIndicator;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v3;
  if (v6 != v3)
  {
    v7 = self;
    DOCColumnViewController.updateFakeSeparator()();
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v3 = self;
  DOCColumnViewController.updateFakeSeparator()();
  DOCColumnViewController.updateCellScrollPositionRelatedLayout()();
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v5 = a3;
  v7 = self;
  [v5 contentOffset];
  if (v6 <= -100.0 && (DOCColumnViewController.canLoadAdditionalParents()() & 1) != 0)
  {
    DOCColumnViewController.beginLoadingAdditionalParents()();
  }
}

- (DOCColumnViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (DOCColumnViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)removeChildViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCColumnViewController.removeChildViewController(_:)(v4);
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = *((*MEMORY[0x277D85000] & *self) + 0xB0);
  v5 = self;
  v6 = v4();
  if (v6 >> 62)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v7;
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
  DOCColumnViewController.getTransitionController(forURL:completionBlock:)(v10, thunk for @escaping @callee_unowned @convention(block) (@unowned DOCServiceTransitionProtocol?) -> ()partial apply, v12);

  (*(v7 + 8))(v10, v6);
}

- (void)getViewFor:(id)a3 waitForNewThumbnail:(BOOL)a4 :(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  swift_unknownObjectRetain();
  v10 = self;
  DOCColumnViewController.getView(for:waitForNewThumbnail:_:)(a3, a4, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned UIView?, @unowned UIBezierPath?) -> (), v9);
  swift_unknownObjectRelease();
}

- (void)getCellFor:(id)a3 :(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  swift_unknownObjectRetain();
  v8 = self;
  DOCColumnViewController.getCell(for:_:)(a3, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned DOCItemCollectionCell?) -> (), v7);
  swift_unknownObjectRelease();
}

- (void)revealWithNodes:(id)a3 selectEvenIfVisible:(BOOL)a4 completionBlock:(id)a5
{
  v7 = _Block_copy(a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = self;
  DOCColumnViewController.reveal(nodes:selectEvenIfVisible:completionBlock:)(v8, a4, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> (), v9);
}

@end