@interface HKNavigationController
- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)a3;
- (void)horizontalSizeClassDidChangeWithTraitEnvironment:(id)a3 previousTraitCollection:(id)a4;
- (void)onInternalSettingsGesture;
- (void)reparentViewControllerIfNecessaryWithTraitCollection:(id)a3 previousTraitCollection:(id)a4;
- (void)updateTraits;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
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
  v3 = [(HKNavigationController *)self view];
  [v3 bounds];
  v5 = v4;
  v6 = [(HKNavigationController *)self view];
  [v6 safeAreaInsets];
  v8 = v5 - v7;
  v9 = [(HKNavigationController *)self view];
  [v9 safeAreaInsets];
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

  v14 = [(HKNavigationController *)self traitOverrides];
  [v14 setNSIntegerValue:v12 forTrait:objc_opt_class()];

  v15 = [(HKNavigationController *)self traitOverrides];
  [v15 setNSIntegerValue:v13 forTrait:objc_opt_class()];

  v16 = [(HKNavigationController *)self view];
  v17 = [v16 window];

  if (v17)
  {

    [(HKNavigationController *)self updateTraitsIfNeeded];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = HKNavigationController;
  [(HKNavigationController *)&v8 viewDidAppear:a3];
  v4 = [MEMORY[0x1E696C608] sharedBehavior];
  v5 = [v4 isAppleInternalInstall];

  if (v5)
  {
    v6 = [(HKNavigationController *)self navigationBar];
    v7 = [(HKNavigationController *)self internalSettingsGestureRecognizer];
    [v6 addGestureRecognizer:v7];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = HKNavigationController;
  [(HKNavigationController *)&v8 viewDidDisappear:a3];
  v4 = [MEMORY[0x1E696C608] sharedBehavior];
  v5 = [v4 isAppleInternalInstall];

  if (v5)
  {
    v6 = [(HKNavigationController *)self navigationBar];
    v7 = [(HKNavigationController *)self internalSettingsGestureRecognizer];
    [v6 removeGestureRecognizer:v7];
  }
}

- (void)horizontalSizeClassDidChangeWithTraitEnvironment:(id)a3 previousTraitCollection:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(HKNavigationController *)self view];
  v8 = [v7 window];

  if (v8)
  {
    v9 = [v10 traitCollection];
    [(HKNavigationController *)self reparentViewControllerIfNecessaryWithTraitCollection:v9 previousTraitCollection:v6];
  }
}

- (void)onInternalSettingsGesture
{
  v3 = [(HKNavigationController *)self topViewController];
  v4 = [v3 conformsToProtocol:&unk_1F43D7090];

  if (v4)
  {
    v5 = [(HKNavigationController *)self topViewController];
    [v5 onInternalSettingsGesture];
  }
}

- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)a3
{
  v3 = [(HKNavigationController *)self topViewController];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 supportedInterfaceOrientations];
  }

  else
  {
    v5 = 6;
  }

  return v5;
}

- (void)reparentViewControllerIfNecessaryWithTraitCollection:(id)a3 previousTraitCollection:(id)a4
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a3;
  v8 = a4;
  v9 = self;
  v12.is_nil = v9;
  v10 = v9;
  v12.value.super.isa = a4;
  HKNavigationController.reparentViewControllerIfNecessary(traitCollection:previousTraitCollection:)(v7, v12);
}

@end