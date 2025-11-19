@interface DOCBrowserNavigationDataSource
- (NSArray)currentContainers;
- (NSArray)currentViewControllers;
- (NSString)description;
- (NSString)shortDebugID;
- (UIViewControllerTransitionCoordinator)hierarchyChangeTransitionCoordinator;
- (_TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource)init;
- (_TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource)initWithConfiguration:(id)a3 sourceObserver:(id)a4;
- (int64_t)currentViewStyle;
- (void)hierarchyController:(id)a3 didAppend:(id)a4 animated:(BOOL)a5;
- (void)hierarchyController:(id)a3 didPopLocations:(int64_t)a4 animated:(BOOL)a5;
- (void)hierarchyController:(id)a3 didPrepend:(id)a4 source:(id)a5;
- (void)hierarchyController:(id)a3 didReplaceTrailingLocations:(int64_t)a4 with:(id)a5 animated:(BOOL)a6;
- (void)hierarchyController:(id)a3 didReveal:(id)a4 source:(id)a5;
- (void)hierarchyController:(id)a3 didSet:(id)a4 animated:(BOOL)a5;
- (void)hierarchyController:(id)a3 didUpdateLastDisplayedLocationPath:(id)a4 anchorLocation:(id)a5 source:(id)a6;
- (void)hierarchyController:(id)a3 prepareByDismissingSearchWithCompletion:(id)a4;
- (void)hierarchyController:(id)a3 prepareControllersFor:(id)a4 :(id)a5 isUserInteraction:(BOOL)a6 isBrowsingTrash:(BOOL)a7 completion:(id)a8;
- (void)hierarchyController:(id)a3 willAppend:(id)a4 animated:(BOOL)a5;
- (void)hierarchyController:(id)a3 willPopLocations:(int64_t)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)hierarchyController:(id)a3 willReplaceTrailingLocations:(int64_t)a4 with:(id)a5 animated:(BOOL)a6 completion:(id)a7;
- (void)hierarchyController:(id)a3 willSet:(id)a4 animated:(BOOL)a5;
- (void)popLastViewController;
- (void)setCurrentContainers:(id)a3;
- (void)setCurrentViewControllers:(id)a3;
- (void)setShortDebugID:(id)a3;
@end

@implementation DOCBrowserNavigationDataSource

- (NSArray)currentViewControllers
{
  v2 = self;
  DOCBrowserNavigationDataSource.currentViewControllers.getter();

  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)setCurrentViewControllers:(id)a3
{
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  DOCBrowserNavigationDataSource.currentViewControllers.setter(v4);
}

- (NSArray)currentContainers
{
  swift_beginAccess();
  type metadata accessor for DOCBrowserContainerController();

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setCurrentContainers:(id)a3
{
  type metadata accessor for DOCBrowserContainerController();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_currentContainers;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (void)popLastViewController
{
  v2 = self;
  DOCBrowserNavigationDataSource.popLastViewController()();
}

- (NSString)shortDebugID
{
  v2 = (self + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_shortDebugID);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = MEMORY[0x24C1FAD20](v4, v3);

  return v5;
}

- (void)setShortDebugID:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = (self + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_shortDebugID);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
  v8 = self;

  v10 = MEMORY[0x277D85000];
  v11 = (*((*MEMORY[0x277D85000] & *v8) + 0xA8))(v9);
  v12 = *v7;
  v13 = v7[1];
  v14 = *((*v10 & *v11) + 0x70);

  v14(v12, v13);
}

- (int64_t)currentViewStyle
{
  v2 = *((*MEMORY[0x277D85000] & *self) + 0x188);
  v3 = self;
  v4 = v2();

  return v4;
}

- (_TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource)initWithConfiguration:(id)a3 sourceObserver:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = specialized DOCBrowserNavigationDataSource.init(configuration:sourceObserver:)(v5, v6);

  return v7;
}

- (NSString)description
{
  v2 = self;
  v3 = DOCBrowserNavigationDataSource.description.getter();
  v5 = v4;

  v6 = MEMORY[0x24C1FAD20](v3, v5);

  return v6;
}

- (_TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)hierarchyController:(id)a3 prepareByDismissingSearchWithCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  specialized DOCBrowserNavigationDataSource.hierarchyController(_:prepareByDismissingSearchWithCompletion:)(v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (UIViewControllerTransitionCoordinator)hierarchyChangeTransitionCoordinator
{
  v2 = *((*MEMORY[0x277D85000] & *self) + 0x140);
  v3 = self;
  v4 = v2();
  if (v4)
  {
    v5 = [v4 hierarchyChangeTransitionCoordinator];
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)hierarchyController:(id)a3 prepareControllersFor:(id)a4 :(id)a5 isUserInteraction:(BOOL)a6 isBrowsingTrash:(BOOL)a7 completion:(id)a8
{
  v13 = _Block_copy(a8);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  v16 = a3;
  v17 = a5;
  v18 = self;
  specialized DOCBrowserNavigationDataSource.hierarchyController(_:prepareControllersFor:_:isUserInteraction:isBrowsingTrash:completion:)(v14, a5, a6, a7, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> (), v15);
}

- (void)hierarchyController:(id)a3 willSet:(id)a4 animated:(BOOL)a5
{
  v6 = self;
  specialized DOCBrowserNavigationDataSource.willSetViewControllers(_:effectiveViewControllers:animated:)(a5);
}

- (void)hierarchyController:(id)a3 didSet:(id)a4 animated:(BOOL)a5
{
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  DOCBrowserNavigationDataSource.didSetViewControllers(_:effectiveViewControllers:animated:)(v7, 0, a5);
}

- (void)hierarchyController:(id)a3 willAppend:(id)a4 animated:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  DOCBrowserNavigationDataSource.hierarchyController(_:willAppend:animated:)(v8, v9, a5);
}

- (void)hierarchyController:(id)a3 didAppend:(id)a4 animated:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  DOCBrowserNavigationDataSource.hierarchyController(_:didAppend:animated:)(v8, v9, a5);
}

- (void)hierarchyController:(id)a3 willReplaceTrailingLocations:(int64_t)a4 with:(id)a5 animated:(BOOL)a6 completion:(id)a7
{
  v11 = _Block_copy(a7);
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v11);
  v13 = a3;
  v14 = self;
  specialized DOCBrowserNavigationDataSource.hierarchyController(_:willReplaceTrailingLocations:with:animated:completion:)(v13, a4, v12, a6, v14, v11);
  _Block_release(v11);
  _Block_release(v11);
}

- (void)hierarchyController:(id)a3 didReplaceTrailingLocations:(int64_t)a4 with:(id)a5 animated:(BOOL)a6
{
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  DOCBrowserNavigationDataSource.hierarchyController(_:didReplaceTrailingLocations:with:animated:)(v11, a4, v10, a6);
}

- (void)hierarchyController:(id)a3 didReveal:(id)a4 source:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = self;
  specialized DOCBrowserNavigationDataSource.hierarchyController(_:didReveal:source:)();
}

- (void)hierarchyController:(id)a3 didPrepend:(id)a4 source:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  DOCBrowserNavigationDataSource.hierarchyController(_:didPrepend:source:)(v8, v9, a5);
}

- (void)hierarchyController:(id)a3 willPopLocations:(int64_t)a4 animated:(BOOL)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
  _Block_copy(v9);
  v10 = self;
  specialized DOCBrowserNavigationDataSource.scrollColumnModeToLastColumn(afterDroppingColumns:animated:completion:)(a4, a5, v10, v9);
  _Block_release(v9);

  _Block_release(v9);
}

- (void)hierarchyController:(id)a3 didPopLocations:(int64_t)a4 animated:(BOOL)a5
{
  v8 = a3;
  v9 = self;
  specialized DOCBrowserNavigationDataSource.hierarchyController(_:didPopLocations:animated:)(a4, a5);
}

- (void)hierarchyController:(id)a3 didUpdateLastDisplayedLocationPath:(id)a4 anchorLocation:(id)a5 source:(id)a6
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = MEMORY[0x277D85000];
  v11 = *((*MEMORY[0x277D85000] & *self) + 0xA8);
  v12 = a5;
  v13 = a6;
  v14 = self;
  v15 = v11();
  (*((*v10 & *v15) + 0x1D0))(v9, a5, v13);
}

@end