@interface DOCServiceViewController
- (BOOL)isBrowserViewController;
- (BOOL)shouldOverrideWindowAppearance;
- (DOCConfiguration)configuration;
- (NSArray)preferredFocusEnvironments;
- (UIViewController)childViewControllerForScreenEdgesDeferringSystemGestures;
- (_TtC26DocumentManagerExecutables24DOCServiceViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)embedViewController:(id)a3;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)setIsBrowserViewController:(BOOL)a3;
- (void)setShouldOverrideWindowAppearance:(BOOL)a3;
- (void)updateAppearance:(id)a3 completionBlock:(id)a4;
- (void)updateAppearance:(id)a3 shouldFlushCA:(BOOL)a4 completionBlock:(id)a5;
- (void)updateEditingTo:(BOOL)a3 animated:(BOOL)a4;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
@end

@implementation DOCServiceViewController

- (DOCConfiguration)configuration
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0xB8);
  v3 = self;
  result = v2();
  if (result)
  {
    v5 = result;

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (BOOL)isBrowserViewController
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCServiceViewController_isBrowserViewController;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setIsBrowserViewController:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCServiceViewController_isBrowserViewController;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
}

- (BOOL)shouldOverrideWindowAppearance
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCServiceViewController_shouldOverrideWindowAppearance;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setShouldOverrideWindowAppearance:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCServiceViewController_shouldOverrideWindowAppearance;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
}

- (_TtC26DocumentManagerExecutables24DOCServiceViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return DOCServiceViewController.init(nibName:bundle:)(v5, v7, a4);
}

- (void)loadView
{
  type metadata accessor for DOCServiceView();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = self;
  v4 = [v3 init];
  [(DOCServiceViewController *)v5 setView:v4];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for DOCServiceViewController();
  v2 = v6.receiver;
  [(DOCServiceViewController *)&v6 viewDidLoad];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 layer];

    [v5 setHitTestsAsOpaque_];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  if (a3)
  {
    v7 = MEMORY[0x277D85000];
    v8 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0xF0);
    v9 = a3;
    v10 = self;
    if (v8())
    {
      v11 = (*((*v7 & v10->super.super.super.isa) + 0x108))();
      [v9 setAppearance_];
    }

    else
    {
    }
  }

  else
  {
    v12 = self;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for DOCServiceViewController();
  [(DOCServiceViewController *)&v13 viewDidMoveToWindow:a3 shouldAppearOrDisappear:v4];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for DOCServiceViewController();
  swift_unknownObjectRetain();
  v4 = v5.receiver;
  [(DOCServiceViewController *)&v5 preferredContentSizeDidChangeForChildContentContainer:a3];
  [a3 preferredContentSize];
  [v4 setPreferredContentSize_];
  swift_unknownObjectRelease();
}

- (UIViewController)childViewControllerForScreenEdgesDeferringSystemGestures
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x88);
  v3 = self;
  v4 = v2();

  return v4;
}

- (void)updateAppearance:(id)a3 completionBlock:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
  }

  else
  {
    v7 = 0;
  }

  v8 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x130);
  v10 = a3;
  v9 = self;
  v8(v10, 0, v6, v7);

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6);
}

- (void)updateAppearance:(id)a3 shouldFlushCA:(BOOL)a4 completionBlock:(id)a5
{
  v8 = _Block_copy(a5);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> ();
  }

  else
  {
    v9 = 0;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = self;
  *(v10 + 24) = a3;
  *(v10 + 32) = v8;
  *(v10 + 40) = v9;
  *(v10 + 48) = a4;
  v11 = a3;
  v12 = self;
  v13 = v11;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v8);
  DOCRunInMainThread(_:)();

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v8);
}

- (void)updateEditingTo:(BOOL)a3 animated:(BOOL)a4
{
  v7 = swift_allocObject();
  *(v7 + 16) = self;
  *(v7 + 24) = a3;
  *(v7 + 25) = a4;
  v8 = self;
  DOCRunInMainThread(_:)();
}

- (NSArray)preferredFocusEnvironments
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x88);
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

  else
  {
    v10.receiver = v3;
    v10.super_class = type metadata accessor for DOCServiceViewController();
    v7 = [(DOCServiceViewController *)&v10 preferredFocusEnvironments];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18UIFocusEnvironment_pMd);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18UIFocusEnvironment_pMd);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (void)embedViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCServiceViewController.embedViewController(_:)(v4);
}

@end