@interface DOCSharedSplitBrowserViewController
- (DOCSharedSplitBrowserViewController)init;
- (DOCTabbedBrowserViewController)tabbedBrowser;
- (NSArray)preferredFocusEnvironments;
- (NSString)description;
- (void)_workaround_122589472_fixupDescendantSafeAreas;
- (void)_workaround_122589743_fixupDescendantSearchMargins;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation DOCSharedSplitBrowserViewController

- (DOCTabbedBrowserViewController)tabbedBrowser
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSArray)preferredFocusEnvironments
{
  v2 = *(self + OBJC_IVAR___DOCSharedSplitBrowserViewController_sharedSplitBrowser);
  v3 = self;
  isa = [v2 preferredFocusEnvironments];
  if (!isa)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18UIFocusEnvironment_pMd);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  return isa;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for DOCSharedSplitBrowserViewController();
  v4 = v5.receiver;
  [(DOCViewController *)&v5 viewWillAppear:v3];
  DOCSharedSplitBrowserViewController.startOwning()();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v12.receiver = self;
  v12.super_class = type metadata accessor for DOCSharedSplitBrowserViewController();
  swift_unknownObjectRetain();
  v7 = v12.receiver;
  [(DOCSharedSplitBrowserViewController *)&v12 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v11[4] = closure #1 in DOCSharedSplitBrowserViewController.viewWillTransition(to:with:)partial apply;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v11[3] = &block_descriptor_35_1;
  v9 = _Block_copy(v11);
  v10 = v7;

  [a4 animateAlongsideTransition:v9 completion:0];
  swift_unknownObjectRelease();

  _Block_release(v9);
}

- (void)_workaround_122589472_fixupDescendantSafeAreas
{
  v2 = one-time initialization token for disableWorkaroundFor122589472;
  v3 = self;
  if (v2 != -1)
  {
    v5 = v3;
    swift_once();
    v3 = v5;
  }

  if (!disableWorkaroundFor122589472)
  {
    v4 = v3;
    [(DOCSharedSplitBrowserViewController *)v3 _doc_ipi_updateContentOverlayInsetsForSelfAndChildren];
    v3 = v4;
  }
}

- (void)_workaround_122589743_fixupDescendantSearchMargins
{
  v2 = self;
  DOCSharedSplitBrowserViewController._workaround_122589743_fixupDescendantSearchMargins()();
}

- (NSString)description
{
  v2 = self;
  v3 = DOCSharedSplitBrowserViewController.description.getter();
  v5 = v4;

  v6 = MEMORY[0x24C1FAD20](v3, v5);

  return v6;
}

- (DOCSharedSplitBrowserViewController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end