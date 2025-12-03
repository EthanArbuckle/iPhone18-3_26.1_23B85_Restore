@interface DOCColumnViewController
+ (BOOL)supportsDisplayInTraitCollection:(id)collection availableArea:(CGSize)area;
+ (NSString)DOCColumnViewControllerUpdatedNavigationItem;
- (BOOL)showsHierarchyIndicator;
- (DOCColumnViewController)initWithCollectionViewLayout:(id)layout;
- (DOCColumnViewController)initWithNibName:(id)name bundle:(id)bundle;
- (NSArray)containerControllers;
- (NSArray)preferredFocusEnvironments;
- (NSString)description;
- (id)_newCollectionViewWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)getCellFor:(id)for :(id)a4;
- (void)getTransitionControllerForURL:(id)l completionBlock:(id)block;
- (void)getViewFor:(id)for waitForNewThumbnail:(BOOL)thumbnail :(id)a5;
- (void)removeChildViewController:(id)controller;
- (void)revealWithNodes:(id)nodes selectEvenIfVisible:(BOOL)visible completionBlock:(id)block;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setContainerControllers:(id)controllers;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setShowsHierarchyIndicator:(BOOL)indicator;
- (void)traitCollectionDidChange:(id)change;
- (void)updateFocusHierarchy;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)appear;
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

+ (BOOL)supportsDisplayInTraitCollection:(id)collection availableArea:(CGSize)area
{
  height = area.height;
  width = area.width;
  collectionCopy = collection;
  v7 = specialized static DOCColumnViewSpecs.specWithBrowsingContext(traitCollection:columnBrowserSize:)(collectionCopy, width, height);

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

- (void)setContainerControllers:(id)controllers
{
  type metadata accessor for DOCBrowserContainerController();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR___DOCColumnViewController_containerControllers;
  swift_beginAccess();
  v6 = *(self + v5);
  selfCopy = self;

  DOCColumnViewController.containerControllers.willset(v4);
  *(self + v5) = v4;

  DOCColumnViewController.containerControllers.didset(v6);
}

- (id)_newCollectionViewWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  if (layout)
  {
    height = frame.size.height;
    width = frame.size.width;
    y = frame.origin.y;
    x = frame.origin.x;
    v9 = objc_allocWithZone(type metadata accessor for DOCColumnViewControllerCollectionView());

    return [v9 initWithFrame:layout collectionViewLayout:{x, y, width, height}];
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (NSString)description
{
  selfCopy = self;
  v3 = DOCColumnViewController.description.getter();
  v5 = v4;

  v6 = MEMORY[0x24C1FAD20](v3, v5);

  return v6;
}

- (void)viewDidLoad
{
  selfCopy = self;
  DOCColumnViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCColumnViewController(0);
  v4 = v7.receiver;
  v5 = [(DOCColumnViewController *)&v7 viewWillAppear:appearCopy];
  if (*(v4 + OBJC_IVAR___DOCColumnViewController_needsUpdateDiffableSnapshot) == 1)
  {
    v6 = (*((*MEMORY[0x277D85000] & *v4) + 0xB0))(v5);
    DOCColumnViewController.updateSnapshot(newValue:)(v6);
  }

  DOCColumnViewController.updateContainerNavigationItem()();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  DOCColumnViewController.viewDidAppear(_:)(appear);
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
  viewDidLayoutSubviews = [(DOCColumnViewController *)&v6 viewDidLayoutSubviews];
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v2) + 0x260))(viewDidLayoutSubviews);
  (*((*v4 & *v2) + 0x238))(v5);
  DOCColumnViewController.updateCellScrollPositionRelatedLayout()();
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  selfCopy = self;
  DOCColumnViewController.setEditing(_:animated:)(editing, animated);
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  selfCopy = self;
  DOCColumnViewController.finishActiveScrollToItem(didComplete:)(1);
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  windowCopy = window;
  selfCopy = self;
  DOCColumnViewController.viewDidMove(to:shouldAppearOrDisappear:)(window, disappear);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  DOCColumnViewController.traitCollectionDidChange(_:)(v9);
}

- (void)viewLayoutMarginsDidChange
{
  selfCopy = self;
  DOCColumnViewController.viewLayoutMarginsDidChange()();
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  specialized DOCColumnViewController.collectionView(_:willDisplay:forItemAt:)(cellCopy);

  (*(v9 + 8))(v12, v8);
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
  specialized DOCColumnViewController.collectionView(_:didEndDisplaying:forItemAt:)(cellCopy);

  (*(v9 + 8))(v12, v8);
}

- (void)updateFocusHierarchy
{
  selfCopy = self;
  DOCColumnViewController.updateFocusHierarchy()();
}

- (NSArray)preferredFocusEnvironments
{
  selfCopy = self;
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

- (void)setShowsHierarchyIndicator:(BOOL)indicator
{
  indicatorCopy = indicator;
  v5 = OBJC_IVAR___DOCColumnViewController_showsHierarchyIndicator;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = indicatorCopy;
  if (v6 != indicatorCopy)
  {
    selfCopy = self;
    DOCColumnViewController.updateFakeSeparator()();
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  selfCopy = self;
  DOCColumnViewController.updateFakeSeparator()();
  DOCColumnViewController.updateCellScrollPositionRelatedLayout()();
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  selfCopy = self;
  [draggingCopy contentOffset];
  if (v6 <= -100.0 && (DOCColumnViewController.canLoadAdditionalParents()() & 1) != 0)
  {
    DOCColumnViewController.beginLoadingAdditionalParents()();
  }
}

- (DOCColumnViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (DOCColumnViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)removeChildViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  DOCColumnViewController.removeChildViewController(_:)(controllerCopy);
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = *((*MEMORY[0x277D85000] & *self) + 0xB0);
  selfCopy = self;
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
  DOCColumnViewController.getTransitionController(forURL:completionBlock:)(v10, thunk for @escaping @callee_unowned @convention(block) (@unowned DOCServiceTransitionProtocol?) -> ()partial apply, v12);

  (*(v7 + 8))(v10, v6);
}

- (void)getViewFor:(id)for waitForNewThumbnail:(BOOL)thumbnail :(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  swift_unknownObjectRetain();
  selfCopy = self;
  DOCColumnViewController.getView(for:waitForNewThumbnail:_:)(for, thumbnail, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned UIView?, @unowned UIBezierPath?) -> (), v9);
  swift_unknownObjectRelease();
}

- (void)getCellFor:(id)for :(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  swift_unknownObjectRetain();
  selfCopy = self;
  DOCColumnViewController.getCell(for:_:)(for, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned DOCItemCollectionCell?) -> (), v7);
  swift_unknownObjectRelease();
}

- (void)revealWithNodes:(id)nodes selectEvenIfVisible:(BOOL)visible completionBlock:(id)block
{
  v7 = _Block_copy(block);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  selfCopy = self;
  DOCColumnViewController.reveal(nodes:selectEvenIfVisible:completionBlock:)(v8, visible, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> (), v9);
}

@end