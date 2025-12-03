@interface HKNavigationController
- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)orientations;
- (void)horizontalSizeClassDidChangeWithTraitEnvironment:(id)environment previousTraitCollection:(id)collection;
- (void)onInternalSettingsGesture;
- (void)reparentViewControllerIfNecessaryWithTraitCollection:(id)collection previousTraitCollection:(id)traitCollection;
- (void)updateTraits;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation HKNavigationController

- (void)viewDidLoad
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = HKNavigationController;
  [(HKNavigationController *)&v6 viewDidLoad];
  [(HKNavigationController *)self setDelegate:self];
  v7[0] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v4 = [(HKNavigationController *)self registerForTraitChanges:v3 withAction:sel_horizontalSizeClassDidChangeWithTraitEnvironment_previousTraitCollection_];

  v5 = [[_TtC8HealthUI36InternalSettingsTapGestureRecognizer alloc] initWithTarget:self action:sel_onInternalSettingsGesture];
  [(HKNavigationController *)self setInternalSettingsGestureRecognizer:v5];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = HKNavigationController;
  [(HKNavigationController *)&v3 viewWillLayoutSubviews];
  [(HKNavigationController *)self updateTraits];
}

- (void)updateTraits
{
  view = [(HKNavigationController *)self view];
  [view bounds];
  v5 = v4;
  view2 = [(HKNavigationController *)self view];
  [view2 safeAreaInsets];
  v8 = v5 - v7;
  view3 = [(HKNavigationController *)self view];
  [view3 safeAreaInsets];
  v11 = v8 - v10;

  v12 = [HKWidthDesignationProvider widthDesignationFromViewWidth:v11];
  if (v12 <= 3)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  traitOverrides = [(HKNavigationController *)self traitOverrides];
  [traitOverrides setNSIntegerValue:v12 forTrait:objc_opt_class()];

  traitOverrides2 = [(HKNavigationController *)self traitOverrides];
  [traitOverrides2 setNSIntegerValue:v13 forTrait:objc_opt_class()];

  view4 = [(HKNavigationController *)self view];
  window = [view4 window];

  if (window)
  {

    [(HKNavigationController *)self updateTraitsIfNeeded];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = HKNavigationController;
  [(HKNavigationController *)&v8 viewDidAppear:appear];
  mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
  isAppleInternalInstall = [mEMORY[0x1E696C608] isAppleInternalInstall];

  if (isAppleInternalInstall)
  {
    navigationBar = [(HKNavigationController *)self navigationBar];
    internalSettingsGestureRecognizer = [(HKNavigationController *)self internalSettingsGestureRecognizer];
    [navigationBar addGestureRecognizer:internalSettingsGestureRecognizer];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = HKNavigationController;
  [(HKNavigationController *)&v8 viewDidDisappear:disappear];
  mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
  isAppleInternalInstall = [mEMORY[0x1E696C608] isAppleInternalInstall];

  if (isAppleInternalInstall)
  {
    navigationBar = [(HKNavigationController *)self navigationBar];
    internalSettingsGestureRecognizer = [(HKNavigationController *)self internalSettingsGestureRecognizer];
    [navigationBar removeGestureRecognizer:internalSettingsGestureRecognizer];
  }
}

- (void)horizontalSizeClassDidChangeWithTraitEnvironment:(id)environment previousTraitCollection:(id)collection
{
  environmentCopy = environment;
  collectionCopy = collection;
  view = [(HKNavigationController *)self view];
  window = [view window];

  if (window)
  {
    traitCollection = [environmentCopy traitCollection];
    [(HKNavigationController *)self reparentViewControllerIfNecessaryWithTraitCollection:traitCollection previousTraitCollection:collectionCopy];
  }
}

- (void)onInternalSettingsGesture
{
  topViewController = [(HKNavigationController *)self topViewController];
  v4 = [topViewController conformsToProtocol:&unk_1F43D7090];

  if (v4)
  {
    topViewController2 = [(HKNavigationController *)self topViewController];
    [topViewController2 onInternalSettingsGesture];
  }
}

- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)orientations
{
  topViewController = [(HKNavigationController *)self topViewController];
  v4 = topViewController;
  if (topViewController)
  {
    supportedInterfaceOrientations = [topViewController supportedInterfaceOrientations];
  }

  else
  {
    supportedInterfaceOrientations = 6;
  }

  return supportedInterfaceOrientations;
}

- (void)reparentViewControllerIfNecessaryWithTraitCollection:(id)collection previousTraitCollection:(id)traitCollection
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  collectionCopy = collection;
  traitCollectionCopy = traitCollection;
  selfCopy = self;
  v12.is_nil = selfCopy;
  v10 = selfCopy;
  v12.value.super.isa = traitCollection;
  HKNavigationController.reparentViewControllerIfNecessary(traitCollection:previousTraitCollection:)(collectionCopy, v12);
}

@end