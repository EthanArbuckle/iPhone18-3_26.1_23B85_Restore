@interface DOCServiceViewController
- (BOOL)isBrowserViewController;
- (BOOL)shouldOverrideWindowAppearance;
- (DOCConfiguration)configuration;
- (NSArray)preferredFocusEnvironments;
- (UIViewController)childViewControllerForScreenEdgesDeferringSystemGestures;
- (_TtC26DocumentManagerExecutables24DOCServiceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)embedViewController:(id)controller;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)setIsBrowserViewController:(BOOL)controller;
- (void)setShouldOverrideWindowAppearance:(BOOL)appearance;
- (void)updateAppearance:(id)appearance completionBlock:(id)block;
- (void)updateAppearance:(id)appearance shouldFlushCA:(BOOL)a completionBlock:(id)block;
- (void)updateEditingTo:(BOOL)to animated:(BOOL)animated;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
@end

@implementation DOCServiceViewController

- (DOCConfiguration)configuration
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0xB8);
  selfCopy = self;
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

- (void)setIsBrowserViewController:(BOOL)controller
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCServiceViewController_isBrowserViewController;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = controller;
}

- (BOOL)shouldOverrideWindowAppearance
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCServiceViewController_shouldOverrideWindowAppearance;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setShouldOverrideWindowAppearance:(BOOL)appearance
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCServiceViewController_shouldOverrideWindowAppearance;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = appearance;
}

- (_TtC26DocumentManagerExecutables24DOCServiceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return DOCServiceViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (void)loadView
{
  type metadata accessor for DOCServiceView();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  selfCopy = self;
  v4 = [v3 init];
  [(DOCServiceViewController *)selfCopy setView:v4];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for DOCServiceViewController();
  v2 = v6.receiver;
  [(DOCServiceViewController *)&v6 viewDidLoad];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    layer = [view layer];

    [layer setHitTestsAsOpaque_];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (window)
  {
    v7 = MEMORY[0x277D85000];
    v8 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0xF0);
    windowCopy = window;
    selfCopy = self;
    if (v8())
    {
      v11 = (*((*v7 & selfCopy->super.super.super.isa) + 0x108))();
      [windowCopy setAppearance_];
    }

    else
    {
    }
  }

  else
  {
    selfCopy2 = self;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for DOCServiceViewController();
  [(DOCServiceViewController *)&v13 viewDidMoveToWindow:window shouldAppearOrDisappear:disappearCopy];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for DOCServiceViewController();
  swift_unknownObjectRetain();
  v4 = v5.receiver;
  [(DOCServiceViewController *)&v5 preferredContentSizeDidChangeForChildContentContainer:container];
  [container preferredContentSize];
  [v4 setPreferredContentSize_];
  swift_unknownObjectRelease();
}

- (UIViewController)childViewControllerForScreenEdgesDeferringSystemGestures
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x88);
  selfCopy = self;
  v4 = v2();

  return v4;
}

- (void)updateAppearance:(id)appearance completionBlock:(id)block
{
  v6 = _Block_copy(block);
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
  appearanceCopy = appearance;
  selfCopy = self;
  v8(appearanceCopy, 0, v6, v7);

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6);
}

- (void)updateAppearance:(id)appearance shouldFlushCA:(BOOL)a completionBlock:(id)block
{
  v8 = _Block_copy(block);
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
  *(v10 + 24) = appearance;
  *(v10 + 32) = v8;
  *(v10 + 40) = v9;
  *(v10 + 48) = a;
  appearanceCopy = appearance;
  selfCopy = self;
  v13 = appearanceCopy;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v8);
  DOCRunInMainThread(_:)();

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v8);
}

- (void)updateEditingTo:(BOOL)to animated:(BOOL)animated
{
  v7 = swift_allocObject();
  *(v7 + 16) = self;
  *(v7 + 24) = to;
  *(v7 + 25) = animated;
  selfCopy = self;
  DOCRunInMainThread(_:)();
}

- (NSArray)preferredFocusEnvironments
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x88);
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

  else
  {
    v10.receiver = selfCopy;
    v10.super_class = type metadata accessor for DOCServiceViewController();
    preferredFocusEnvironments = [(DOCServiceViewController *)&v10 preferredFocusEnvironments];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18UIFocusEnvironment_pMd);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18UIFocusEnvironment_pMd);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (void)embedViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  DOCServiceViewController.embedViewController(_:)(controllerCopy);
}

@end