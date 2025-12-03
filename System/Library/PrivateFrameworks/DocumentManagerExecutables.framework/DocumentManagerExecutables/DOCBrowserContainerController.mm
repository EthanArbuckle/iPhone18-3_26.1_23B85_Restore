@interface DOCBrowserContainerController
- (BOOL)allowsPickingMultipleItems;
- (BOOL)establishFirstResponder;
- (BOOL)preventAppearanceForwarding;
- (NSArray)preferredFocusEnvironments;
- (NSString)description;
- (_TtC26DocumentManagerExecutables29DOCBrowserContainerController)init;
- (_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController)contentViewController;
- (void)activateContentViewController;
- (void)didMoveToParentViewController:(id)controller;
- (void)effectiveAppearanceDidChange:(id)change;
- (void)loadView;
- (void)revealWithNodes:(id)nodes selectEvenIfVisible:(BOOL)visible completionBlock:(id)block;
- (void)setAllowsPickingMultipleItems:(BOOL)items;
- (void)setContentViewController:(id)controller;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setPreventAppearanceForwarding:(BOOL)forwarding;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation DOCBrowserContainerController

- (_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController)contentViewController
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables29DOCBrowserContainerController_contentViewController;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setContentViewController:(id)controller
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables29DOCBrowserContainerController_contentViewController;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = controller;
  controllerCopy = controller;
}

- (BOOL)allowsPickingMultipleItems
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables29DOCBrowserContainerController_allowsPickingMultipleItems;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsPickingMultipleItems:(BOOL)items
{
  selfCopy = self;
  DOCBrowserContainerController.allowsPickingMultipleItems.setter(items);
}

- (NSArray)preferredFocusEnvironments
{
  v2 = *((*MEMORY[0x277D85000] & *self) + 0xE8);
  selfCopy = self;
  v4 = v2();
  if (v4)
  {
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_249BA0290;
    *(v6 + 32) = v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18UIFocusEnvironment_pMd);
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (BOOL)preventAppearanceForwarding
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables29DOCBrowserContainerController_preventAppearanceForwarding;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPreventAppearanceForwarding:(BOOL)forwarding
{
  forwardingCopy = forwarding;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables29DOCBrowserContainerController_preventAppearanceForwarding;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = forwardingCopy;
  if (v6 == 1 && !forwardingCopy)
  {
    v8 = *((*MEMORY[0x277D85000] & *self) + 0x2B8);
    selfCopy = self;
    v8();
  }
}

- (void)activateContentViewController
{
  v3 = *(self + OBJC_IVAR____TtC26DocumentManagerExecutables29DOCBrowserContainerController_dataSource + 8);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 16);
  selfCopy = self;
  v5(1, ObjectType, v3);
}

- (NSString)description
{
  selfCopy = self;
  v3 = DOCBrowserContainerController.description.getter();
  v5 = v4;

  v6 = MEMORY[0x24C1FAD20](v3, v5);

  return v6;
}

- (void)loadView
{
  type metadata accessor for DOCBrowserContainerController.DOCBrowserContainerControllerView();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  selfCopy = self;
  v4 = [v3 init];
  [(DOCBrowserContainerController *)selfCopy setView:v4];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCBrowserContainerController();
  v2 = v8.receiver;
  [(DOCBrowserContainerController *)&v8 viewDidLoad];
  v3 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables29DOCBrowserContainerController_dataSource + 8);
  ObjectType = swift_getObjectType();
  if (((*(v3 + 40))(ObjectType, v3) & 1) == 0)
  {
    DOCBrowserContainerController.installContainedViewControllers()();
    v7 = (*((*MEMORY[0x277D85000] & *v2) + 0x158))(v5, v6);
    if (v7 == 5)
    {
      DOCBrowserContainerController.updateState(to:preferredStateViewController:animated:)(0, 0, 0);
    }

    else
    {
      outlined consume of DOCBrowserContainerState?(v7);
    }
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v9.receiver = self;
  v9.super_class = type metadata accessor for DOCBrowserContainerController();
  v6 = v9.receiver;
  v7 = [(DOCBrowserContainerController *)&v9 setEditing:editingCopy animated:animatedCopy];
  v8 = (*((*MEMORY[0x277D85000] & *v6) + 0xE8))(v7);
  [v8 setEditing:editingCopy animated:{animatedCopy, v9.receiver, v9.super_class}];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  windowCopy = window;
  selfCopy = self;
  DOCBrowserContainerController.viewDidMove(to:shouldAppearOrDisappear:)(window, disappear);
}

- (void)willMoveToParentViewController:(id)controller
{
  v5 = type metadata accessor for UITraitOverrides();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = type metadata accessor for DOCBrowserContainerController();
  v10.receiver = self;
  v10.super_class = v7;
  controllerCopy = controller;
  selfCopy = self;
  [(DOCBrowserContainerController *)&v10 willMoveToParentViewController:controllerCopy];
  type metadata accessor for UITraitHorizontalSizeClass();
  UIViewController.traitOverrides.getter();
  UITraitOverrides.remove(_:)();
  UIViewController.traitOverrides.setter();
}

- (void)didMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  DOCBrowserContainerController.didMove(toParent:)(controller);
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCBrowserContainerController();
  changeCopy = change;
  v5 = v7.receiver;
  v6 = [(DOCBrowserContainerController *)&v7 traitCollectionDidChange:changeCopy];
  (*((*MEMORY[0x277D85000] & *v5) + 0x2B0))(v6);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for DOCBrowserContainerController();
  v4 = v5.receiver;
  [(DOCViewController *)&v5 viewWillAppear:appearCopy];
  DOCBrowserContainerController.__coreViewWillAppear(animated:)(appearCopy);
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  DOCBrowserContainerController.viewIsAppearing(_:)(appearing);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  DOCBrowserContainerController.viewWillDisappear(_:)(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  DOCBrowserContainerController.viewDidDisappear(_:)(disappear);
}

- (_TtC26DocumentManagerExecutables29DOCBrowserContainerController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)effectiveAppearanceDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for DOCBrowserContainerController();
  changeCopy = change;
  v5 = v9.receiver;
  [(DOCBrowserContainerController *)&v9 effectiveAppearanceDidChange:changeCopy];
  viewIfLoaded = [v5 viewIfLoaded];
  if (viewIfLoaded)
  {
    v7 = viewIfLoaded;
    backgroundColor = [changeCopy backgroundColor];
    [v7 setBackgroundColor_];
  }
}

- (void)revealWithNodes:(id)nodes selectEvenIfVisible:(BOOL)visible completionBlock:(id)block
{
  v7 = _Block_copy(block);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  selfCopy = self;
  DOCBrowserContainerController.reveal(nodes:selectEvenIfVisible:completionBlock:)(v8, visible, thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> ()partial apply, v9);
}

- (BOOL)establishFirstResponder
{
  selfCopy = self;
  v3 = DOCBrowserContainerController.establishFirstResponder()();

  return v3;
}

@end