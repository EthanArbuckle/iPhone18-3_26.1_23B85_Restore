@interface DOCBrowserContainerController
- (BOOL)allowsPickingMultipleItems;
- (BOOL)establishFirstResponder;
- (BOOL)preventAppearanceForwarding;
- (NSArray)preferredFocusEnvironments;
- (NSString)description;
- (_TtC26DocumentManagerExecutables29DOCBrowserContainerController)init;
- (_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController)contentViewController;
- (void)activateContentViewController;
- (void)didMoveToParentViewController:(id)a3;
- (void)effectiveAppearanceDidChange:(id)a3;
- (void)loadView;
- (void)revealWithNodes:(id)a3 selectEvenIfVisible:(BOOL)a4 completionBlock:(id)a5;
- (void)setAllowsPickingMultipleItems:(BOOL)a3;
- (void)setContentViewController:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setPreventAppearanceForwarding:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation DOCBrowserContainerController

- (_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController)contentViewController
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables29DOCBrowserContainerController_contentViewController;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setContentViewController:(id)a3
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables29DOCBrowserContainerController_contentViewController;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (BOOL)allowsPickingMultipleItems
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables29DOCBrowserContainerController_allowsPickingMultipleItems;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsPickingMultipleItems:(BOOL)a3
{
  v4 = self;
  DOCBrowserContainerController.allowsPickingMultipleItems.setter(a3);
}

- (NSArray)preferredFocusEnvironments
{
  v2 = *((*MEMORY[0x277D85000] & *self) + 0xE8);
  v3 = self;
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

- (void)setPreventAppearanceForwarding:(BOOL)a3
{
  v3 = a3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables29DOCBrowserContainerController_preventAppearanceForwarding;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v3;
  if (v6 == 1 && !v3)
  {
    v8 = *((*MEMORY[0x277D85000] & *self) + 0x2B8);
    v9 = self;
    v8();
  }
}

- (void)activateContentViewController
{
  v3 = *(self + OBJC_IVAR____TtC26DocumentManagerExecutables29DOCBrowserContainerController_dataSource + 8);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 16);
  v6 = self;
  v5(1, ObjectType, v3);
}

- (NSString)description
{
  v2 = self;
  v3 = DOCBrowserContainerController.description.getter();
  v5 = v4;

  v6 = MEMORY[0x24C1FAD20](v3, v5);

  return v6;
}

- (void)loadView
{
  type metadata accessor for DOCBrowserContainerController.DOCBrowserContainerControllerView();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = self;
  v4 = [v3 init];
  [(DOCBrowserContainerController *)v5 setView:v4];
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

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v9.receiver = self;
  v9.super_class = type metadata accessor for DOCBrowserContainerController();
  v6 = v9.receiver;
  v7 = [(DOCBrowserContainerController *)&v9 setEditing:v5 animated:v4];
  v8 = (*((*MEMORY[0x277D85000] & *v6) + 0xE8))(v7);
  [v8 setEditing:v5 animated:{v4, v9.receiver, v9.super_class}];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v7 = a3;
  v8 = self;
  DOCBrowserContainerController.viewDidMove(to:shouldAppearOrDisappear:)(a3, a4);
}

- (void)willMoveToParentViewController:(id)a3
{
  v5 = type metadata accessor for UITraitOverrides();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = type metadata accessor for DOCBrowserContainerController();
  v10.receiver = self;
  v10.super_class = v7;
  v8 = a3;
  v9 = self;
  [(DOCBrowserContainerController *)&v10 willMoveToParentViewController:v8];
  type metadata accessor for UITraitHorizontalSizeClass();
  UIViewController.traitOverrides.getter();
  UITraitOverrides.remove(_:)();
  UIViewController.traitOverrides.setter();
}

- (void)didMoveToParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  DOCBrowserContainerController.didMove(toParent:)(a3);
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCBrowserContainerController();
  v4 = a3;
  v5 = v7.receiver;
  v6 = [(DOCBrowserContainerController *)&v7 traitCollectionDidChange:v4];
  (*((*MEMORY[0x277D85000] & *v5) + 0x2B0))(v6);
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for DOCBrowserContainerController();
  v4 = v5.receiver;
  [(DOCViewController *)&v5 viewWillAppear:v3];
  DOCBrowserContainerController.__coreViewWillAppear(animated:)(v3);
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  DOCBrowserContainerController.viewIsAppearing(_:)(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  DOCBrowserContainerController.viewWillDisappear(_:)(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  DOCBrowserContainerController.viewDidDisappear(_:)(a3);
}

- (_TtC26DocumentManagerExecutables29DOCBrowserContainerController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)effectiveAppearanceDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for DOCBrowserContainerController();
  v4 = a3;
  v5 = v9.receiver;
  [(DOCBrowserContainerController *)&v9 effectiveAppearanceDidChange:v4];
  v6 = [v5 viewIfLoaded];
  if (v6)
  {
    v7 = v6;
    v8 = [v4 backgroundColor];
    [v7 setBackgroundColor_];
  }
}

- (void)revealWithNodes:(id)a3 selectEvenIfVisible:(BOOL)a4 completionBlock:(id)a5
{
  v7 = _Block_copy(a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = self;
  DOCBrowserContainerController.reveal(nodes:selectEvenIfVisible:completionBlock:)(v8, a4, thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> ()partial apply, v9);
}

- (BOOL)establishFirstResponder
{
  v2 = self;
  v3 = DOCBrowserContainerController.establishFirstResponder()();

  return v3;
}

@end