@interface DOCBrowserNavigationDataSource
- (NSArray)currentContainers;
- (NSArray)currentViewControllers;
- (NSString)description;
- (NSString)shortDebugID;
- (UIViewControllerTransitionCoordinator)hierarchyChangeTransitionCoordinator;
- (_TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource)init;
- (_TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource)initWithConfiguration:(id)configuration sourceObserver:(id)observer;
- (int64_t)currentViewStyle;
- (void)hierarchyController:(id)controller didAppend:(id)append animated:(BOOL)animated;
- (void)hierarchyController:(id)controller didPopLocations:(int64_t)locations animated:(BOOL)animated;
- (void)hierarchyController:(id)controller didPrepend:(id)prepend source:(id)source;
- (void)hierarchyController:(id)controller didReplaceTrailingLocations:(int64_t)locations with:(id)with animated:(BOOL)animated;
- (void)hierarchyController:(id)controller didReveal:(id)reveal source:(id)source;
- (void)hierarchyController:(id)controller didSet:(id)set animated:(BOOL)animated;
- (void)hierarchyController:(id)controller didUpdateLastDisplayedLocationPath:(id)path anchorLocation:(id)location source:(id)source;
- (void)hierarchyController:(id)controller prepareByDismissingSearchWithCompletion:(id)completion;
- (void)hierarchyController:(id)controller prepareControllersFor:(id)for :(id)a5 isUserInteraction:(BOOL)interaction isBrowsingTrash:(BOOL)trash completion:(id)completion;
- (void)hierarchyController:(id)controller willAppend:(id)append animated:(BOOL)animated;
- (void)hierarchyController:(id)controller willPopLocations:(int64_t)locations animated:(BOOL)animated completion:(id)completion;
- (void)hierarchyController:(id)controller willReplaceTrailingLocations:(int64_t)locations with:(id)with animated:(BOOL)animated completion:(id)completion;
- (void)hierarchyController:(id)controller willSet:(id)set animated:(BOOL)animated;
- (void)popLastViewController;
- (void)setCurrentContainers:(id)containers;
- (void)setCurrentViewControllers:(id)controllers;
- (void)setShortDebugID:(id)d;
@end

@implementation DOCBrowserNavigationDataSource

- (NSArray)currentViewControllers
{
  selfCopy = self;
  DOCBrowserNavigationDataSource.currentViewControllers.getter();

  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)setCurrentViewControllers:(id)controllers
{
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  DOCBrowserNavigationDataSource.currentViewControllers.setter(v4);
}

- (NSArray)currentContainers
{
  swift_beginAccess();
  type metadata accessor for DOCBrowserContainerController();

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setCurrentContainers:(id)containers
{
  type metadata accessor for DOCBrowserContainerController();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_currentContainers;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (void)popLastViewController
{
  selfCopy = self;
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

- (void)setShortDebugID:(id)d
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = (self + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource_shortDebugID);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
  selfCopy = self;

  v10 = MEMORY[0x277D85000];
  v11 = (*((*MEMORY[0x277D85000] & *selfCopy) + 0xA8))(v9);
  v12 = *v7;
  v13 = v7[1];
  v14 = *((*v10 & *v11) + 0x70);

  v14(v12, v13);
}

- (int64_t)currentViewStyle
{
  v2 = *((*MEMORY[0x277D85000] & *self) + 0x188);
  selfCopy = self;
  v4 = v2();

  return v4;
}

- (_TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource)initWithConfiguration:(id)configuration sourceObserver:(id)observer
{
  configurationCopy = configuration;
  observerCopy = observer;
  v7 = specialized DOCBrowserNavigationDataSource.init(configuration:sourceObserver:)(configurationCopy, observerCopy);

  return v7;
}

- (NSString)description
{
  selfCopy = self;
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

- (void)hierarchyController:(id)controller prepareByDismissingSearchWithCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  controllerCopy = controller;
  selfCopy = self;
  specialized DOCBrowserNavigationDataSource.hierarchyController(_:prepareByDismissingSearchWithCompletion:)(selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (UIViewControllerTransitionCoordinator)hierarchyChangeTransitionCoordinator
{
  v2 = *((*MEMORY[0x277D85000] & *self) + 0x140);
  selfCopy = self;
  v4 = v2();
  if (v4)
  {
    hierarchyChangeTransitionCoordinator = [v4 hierarchyChangeTransitionCoordinator];
    swift_unknownObjectRelease();
  }

  else
  {
    hierarchyChangeTransitionCoordinator = 0;
  }

  return hierarchyChangeTransitionCoordinator;
}

- (void)hierarchyController:(id)controller prepareControllersFor:(id)for :(id)a5 isUserInteraction:(BOOL)interaction isBrowsingTrash:(BOOL)trash completion:(id)completion
{
  v13 = _Block_copy(completion);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  controllerCopy = controller;
  v17 = a5;
  selfCopy = self;
  specialized DOCBrowserNavigationDataSource.hierarchyController(_:prepareControllersFor:_:isUserInteraction:isBrowsingTrash:completion:)(v14, a5, interaction, trash, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> (), v15);
}

- (void)hierarchyController:(id)controller willSet:(id)set animated:(BOOL)animated
{
  selfCopy = self;
  specialized DOCBrowserNavigationDataSource.willSetViewControllers(_:effectiveViewControllers:animated:)(animated);
}

- (void)hierarchyController:(id)controller didSet:(id)set animated:(BOOL)animated
{
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  DOCBrowserNavigationDataSource.didSetViewControllers(_:effectiveViewControllers:animated:)(v7, 0, animated);
}

- (void)hierarchyController:(id)controller willAppend:(id)append animated:(BOOL)animated
{
  controllerCopy = controller;
  appendCopy = append;
  selfCopy = self;
  DOCBrowserNavigationDataSource.hierarchyController(_:willAppend:animated:)(controllerCopy, appendCopy, animated);
}

- (void)hierarchyController:(id)controller didAppend:(id)append animated:(BOOL)animated
{
  controllerCopy = controller;
  appendCopy = append;
  selfCopy = self;
  DOCBrowserNavigationDataSource.hierarchyController(_:didAppend:animated:)(controllerCopy, appendCopy, animated);
}

- (void)hierarchyController:(id)controller willReplaceTrailingLocations:(int64_t)locations with:(id)with animated:(BOOL)animated completion:(id)completion
{
  v11 = _Block_copy(completion);
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v11);
  controllerCopy = controller;
  selfCopy = self;
  specialized DOCBrowserNavigationDataSource.hierarchyController(_:willReplaceTrailingLocations:with:animated:completion:)(controllerCopy, locations, v12, animated, selfCopy, v11);
  _Block_release(v11);
  _Block_release(v11);
}

- (void)hierarchyController:(id)controller didReplaceTrailingLocations:(int64_t)locations with:(id)with animated:(BOOL)animated
{
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  DOCBrowserNavigationDataSource.hierarchyController(_:didReplaceTrailingLocations:with:animated:)(controllerCopy, locations, v10, animated);
}

- (void)hierarchyController:(id)controller didReveal:(id)reveal source:(id)source
{
  controllerCopy = controller;
  sourceCopy = source;
  selfCopy = self;
  specialized DOCBrowserNavigationDataSource.hierarchyController(_:didReveal:source:)();
}

- (void)hierarchyController:(id)controller didPrepend:(id)prepend source:(id)source
{
  controllerCopy = controller;
  prependCopy = prepend;
  sourceCopy = source;
  selfCopy = self;
  DOCBrowserNavigationDataSource.hierarchyController(_:didPrepend:source:)(controllerCopy, prependCopy, source);
}

- (void)hierarchyController:(id)controller willPopLocations:(int64_t)locations animated:(BOOL)animated completion:(id)completion
{
  v9 = _Block_copy(completion);
  _Block_copy(v9);
  selfCopy = self;
  specialized DOCBrowserNavigationDataSource.scrollColumnModeToLastColumn(afterDroppingColumns:animated:completion:)(locations, animated, selfCopy, v9);
  _Block_release(v9);

  _Block_release(v9);
}

- (void)hierarchyController:(id)controller didPopLocations:(int64_t)locations animated:(BOOL)animated
{
  controllerCopy = controller;
  selfCopy = self;
  specialized DOCBrowserNavigationDataSource.hierarchyController(_:didPopLocations:animated:)(locations, animated);
}

- (void)hierarchyController:(id)controller didUpdateLastDisplayedLocationPath:(id)path anchorLocation:(id)location source:(id)source
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = MEMORY[0x277D85000];
  v11 = *((*MEMORY[0x277D85000] & *self) + 0xA8);
  locationCopy = location;
  sourceCopy = source;
  selfCopy = self;
  v15 = v11();
  (*((*v10 & *v15) + 0x1D0))(v9, location, sourceCopy);
}

@end