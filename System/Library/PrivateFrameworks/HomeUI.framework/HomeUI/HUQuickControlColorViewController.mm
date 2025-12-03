@interface HUQuickControlColorViewController
- (CGSize)preferredContentSize;
- (HUQuickControlColorViewController)presentingColorViewController;
- (id)controlToViewValueTransformer;
- (id)createInteractionCoordinator;
- (id)createViewProfile;
- (unint64_t)_paletteType;
- (void)cancelButtonTapped;
- (void)didSelectColorAtIndexPath:(id)path;
- (void)doneButtonTapped;
- (void)interactionCoordinator:(id)coordinator colorPaletteDidChange:(id)change;
- (void)interactionCoordinator:(id)coordinator didSelectColorAtIndexPath:(id)path;
- (void)interactionCoordinator:(id)coordinator viewValueDidChange:(id)change;
- (void)presentFullColorViewForInteractionCoordinator:(id)coordinator selectedColorIndexPath:(id)path;
- (void)quickControlItemUpdater:(id)updater didUpdateResultsForControlItems:(id)items;
- (void)updateValueFromControlItem;
@end

@implementation HUQuickControlColorViewController

- (void)updateValueFromControlItem
{
  controlItem = [(HUQuickControlSingleControlViewController *)self controlItem];
  latestResults = [controlItem latestResults];
  v5 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14008]];

  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
    viewProfile = [(HUQuickControlSingleControlViewController *)self viewProfile];
    [viewProfile setNaturalLightingEnabled:bOOLValue];
  }

  v8.receiver = self;
  v8.super_class = HUQuickControlColorViewController;
  [(HUQuickControlSingleControlViewController *)&v8 updateValueFromControlItem];
}

- (unint64_t)_paletteType
{
  viewProfile = [(HUQuickControlSingleControlViewController *)self viewProfile];
  supportsNaturalLighting = [viewProfile supportsNaturalLighting];

  controlItem = [(HUQuickControlSingleControlViewController *)self controlItem];
  supportsRGBColor = [controlItem supportsRGBColor];

  v7 = 2;
  if (!supportsNaturalLighting)
  {
    v7 = 0;
  }

  v8 = 3;
  if (!supportsNaturalLighting)
  {
    v8 = 1;
  }

  if (supportsRGBColor)
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

- (id)createInteractionCoordinator
{
  home = [(HUQuickControlViewController *)self home];
  v4 = [home hf_colorPaletteOfType:{-[HUQuickControlColorViewController _paletteType](self, "_paletteType")}];

  v5 = [HUQuickControlColorView alloc];
  viewProfile = [(HUQuickControlSingleControlViewController *)self viewProfile];
  v7 = [(HUQuickControlColorView *)v5 initWithProfile:viewProfile colorPalette:v4];

  v8 = [[HUQuickControlColorInteractionCoordinator alloc] initWithControlView:v7 colorPalette:v4 delegate:self];
  [(HUQuickControlSimpleInteractionCoordinator *)v8 setShouldDismissAutomatically:0];

  return v8;
}

- (id)createViewProfile
{
  v3 = objc_alloc_init(HUQuickControlColorViewProfile);
  controlItem = [(HUQuickControlSingleControlViewController *)self controlItem];
  -[HUQuickControlColorViewProfile setSupportsRGBColor:](v3, "setSupportsRGBColor:", [controlItem supportsRGBColor]);

  controlItem2 = [(HUQuickControlSingleControlViewController *)self controlItem];
  -[HUQuickControlColorViewProfile setSupportsNaturalLighting:](v3, "setSupportsNaturalLighting:", [controlItem2 supportsNaturalLighting]);

  controlItem3 = [(HUQuickControlSingleControlViewController *)self controlItem];
  -[HUQuickControlColorViewProfile setNaturalLightingEnabled:](v3, "setNaturalLightingEnabled:", [controlItem3 naturalLightingEnabled]);

  controlItem4 = [(HUQuickControlSingleControlViewController *)self controlItem];
  colorProfile = [controlItem4 colorProfile];
  [(HUQuickControlColorViewProfile *)v3 setColorProfile:colorProfile];

  [(HUQuickControlColorViewProfile *)v3 setMode:[(HUQuickControlColorViewController *)self mode]];
  [(HUQuickControlViewProfile *)v3 setOrientation:1];

  return v3;
}

- (id)controlToViewValueTransformer
{
  v2 = MEMORY[0x277D14CF0];
  v3 = objc_opt_class();

  return [v2 transformerForValueClass:v3 transformBlock:&__block_literal_global_19 reverseTransformBlock:&__block_literal_global_9];
}

id __66__HUQuickControlColorViewController_controlToViewValueTransformer__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = MEMORY[0x277D14588];
    v3 = a2;
    v4 = [[v2 alloc] initWithColorCollection:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)interactionCoordinator:(id)coordinator colorPaletteDidChange:(id)change
{
  changeCopy = change;
  home = [(HUQuickControlViewController *)self home];
  v7 = [home hf_updateColorPalette:changeCopy type:{-[HUQuickControlColorViewController _paletteType](self, "_paletteType")}];

  interactionCoordinator = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
  controlView = [interactionCoordinator controlView];

  [controlView setColorPalette:changeCopy];
  if ([controlView isSelectedColorInPalette])
  {
    delegate = [(HUQuickControlViewController *)self delegate];
    [delegate quickControlViewControllerDidUpdateStatusOverrides:self];
  }
}

- (void)presentFullColorViewForInteractionCoordinator:(id)coordinator selectedColorIndexPath:(id)path
{
  objc_opt_class();
  interactionCoordinator = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
  controlView = [interactionCoordinator controlView];
  if (objc_opt_isKindOfClass())
  {
    v7 = controlView;
  }

  else
  {
    v7 = 0;
  }

  v40 = v7;

  if (v40)
  {
    [v40 storeCurrentColorInformationAsOriginalValues];
  }

  v8 = [HUQuickControlColorViewController alloc];
  controlItem = [(HUQuickControlSingleControlViewController *)self controlItem];
  home = [(HUQuickControlViewController *)self home];
  itemUpdater = [(HUQuickControlViewController *)self itemUpdater];
  v12 = [(HUQuickControlSingleControlViewController *)v8 initWithControlItem:controlItem home:home itemUpdater:itemUpdater controlOrientation:[(HUQuickControlViewController *)self controlOrientation] preferredControl:[(HUQuickControlViewController *)self preferredControl]];
  [(HUQuickControlColorViewController *)self setColorViewController:v12];

  colorViewController = [(HUQuickControlColorViewController *)self colorViewController];
  [colorViewController setMode:1];

  colorViewController2 = [(HUQuickControlColorViewController *)self colorViewController];
  [colorViewController2 setPresentingColorViewController:self];

  objc_opt_class();
  colorViewController3 = [(HUQuickControlColorViewController *)self colorViewController];
  interactionCoordinator2 = [colorViewController3 interactionCoordinator];
  controlView2 = [interactionCoordinator2 controlView];
  if (objc_opt_isKindOfClass())
  {
    v18 = controlView2;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  if (v19)
  {
    linearPaletteViewSelectedColorIndexPath = [v40 linearPaletteViewSelectedColorIndexPath];
    [v19 updateSelectedColorIndexPathToIndexPath:linearPaletteViewSelectedColorIndexPath];

    value = [v40 value];
    [v19 setValue:value];

    [v19 storeCurrentColorInformationAsOriginalValues];
  }

  v22 = objc_alloc(MEMORY[0x277D757A0]);
  colorViewController4 = [(HUQuickControlColorViewController *)self colorViewController];
  v24 = [v22 initWithRootViewController:colorViewController4];

  userInterfaceStyle = 2;
  [v24 setModalPresentationStyle:2];
  v26 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonTapped];
  colorViewController5 = [(HUQuickControlColorViewController *)self colorViewController];
  navigationItem = [colorViewController5 navigationItem];
  [navigationItem setLeftBarButtonItem:v26];

  v29 = _HULocalizedStringWithDefaultValue(@"HUQuickControlColorFullPickerModeViewControllerTitle", @"HUQuickControlColorFullPickerModeViewControllerTitle", 1);
  colorViewController6 = [(HUQuickControlColorViewController *)self colorViewController];
  [colorViewController6 setTitle:v29];

  v31 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_doneButtonTapped];
  colorViewController7 = [(HUQuickControlColorViewController *)self colorViewController];
  navigationItem2 = [colorViewController7 navigationItem];
  [navigationItem2 setRightBarButtonItem:v31];

  if (([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials] & 1) == 0)
  {
    view = [(HUQuickControlColorViewController *)self view];
    traitCollection = [view traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];
  }

  v36 = [HUQuickControlUtilities backgroundColorForUserInterfaceStyle:userInterfaceStyle];
  colorViewController8 = [(HUQuickControlColorViewController *)self colorViewController];
  view2 = [colorViewController8 view];
  [view2 setBackgroundColor:v36];

  [v24 setOverrideUserInterfaceStyle:userInterfaceStyle];
  v39 = [(UIViewController *)self hu_presentPreloadableViewController:v24 animated:1];
}

- (void)interactionCoordinator:(id)coordinator didSelectColorAtIndexPath:(id)path
{
  pathCopy = path;
  objc_opt_class();
  interactionCoordinator = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
  controlView = [interactionCoordinator controlView];
  if (objc_opt_isKindOfClass())
  {
    v7 = controlView;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8 && [v8 mode] == 1)
  {
    presentingColorViewController = [(HUQuickControlColorViewController *)self presentingColorViewController];
    [presentingColorViewController didSelectColorAtIndexPath:pathCopy];
  }
}

- (void)interactionCoordinator:(id)coordinator viewValueDidChange:(id)change
{
  coordinatorCopy = coordinator;
  changeCopy = change;
  if (([coordinatorCopy isUserInteractionActive] & 1) == 0)
  {
    NSLog(&cfstr_ReceivedAValue.isa, coordinatorCopy);
  }

  controlToViewValueTransformer = [(HUQuickControlColorViewController *)self controlToViewValueTransformer];
  v10 = [controlToViewValueTransformer valueForTransformedValue:changeCopy];

  objc_opt_class();
  v11 = v10;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  objc_opt_class();
  v14 = v11;
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (v13)
  {
    controlItem = [(HUQuickControlSingleControlViewController *)self controlItem];
    [controlItem setNaturalLightingEnabled:0];

    v20.receiver = self;
    v20.super_class = HUQuickControlColorViewController;
    [(HUQuickControlSingleControlViewController *)&v20 interactionCoordinator:coordinatorCopy viewValueDidChange:changeCopy];
  }

  else if (v16)
  {
    controlItem2 = [(HUQuickControlSingleControlViewController *)self controlItem];
    [controlItem2 setNaturalLightingEnabled:1];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUQuickControlColorViewController.m" lineNumber:205 description:{@"Unknown color value: %@", v14}];
  }
}

- (void)didSelectColorAtIndexPath:(id)path
{
  pathCopy = path;
  objc_opt_class();
  interactionCoordinator = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
  controlView = [interactionCoordinator controlView];
  if (objc_opt_isKindOfClass())
  {
    v6 = controlView;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7 && ![v7 mode])
  {
    [v7 updateSelectedColorIndexPathToIndexPath:pathCopy];
  }
}

- (void)cancelButtonTapped
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    selfCopy = self;
    v9 = 2080;
    v10 = "[HUQuickControlColorViewController cancelButtonTapped]";
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%@:%s User tapped cancel button", &v7, 0x16u);
  }

  interactionCoordinator = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
  [interactionCoordinator cancelButtonTappedToDismissColorViewController];

  colorViewController = [(HUQuickControlColorViewController *)self colorViewController];
  interactionCoordinator2 = [colorViewController interactionCoordinator];
  [interactionCoordinator2 cancelButtonTappedToDismissColorViewController];

  [(HUQuickControlColorViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)doneButtonTapped
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412546;
    selfCopy = self;
    v22 = 2080;
    v23 = "[HUQuickControlColorViewController doneButtonTapped]";
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%@:%s User tapped done button", &v20, 0x16u);
  }

  objc_opt_class();
  interactionCoordinator = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
  if (objc_opt_isKindOfClass())
  {
    v5 = interactionCoordinator;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = v6;
  if ([v7 conformsToProtocol:&unk_28256FB78])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  objc_opt_class();
  controlView = [v9 controlView];
  if (objc_opt_isKindOfClass())
  {
    v11 = controlView;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  objc_opt_class();
  colorViewController = [(HUQuickControlColorViewController *)self colorViewController];
  interactionCoordinator2 = [colorViewController interactionCoordinator];
  controlView2 = [interactionCoordinator2 controlView];
  if (objc_opt_isKindOfClass())
  {
    v16 = controlView2;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  colorPalette = [v17 colorPalette];

  if (v9)
  {
    if (v12)
    {
      v19 = colorPalette == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      [v9 controlView:v12 colorPaletteDidChange:colorPalette];
    }
  }

  [(HUQuickControlColorViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)quickControlItemUpdater:(id)updater didUpdateResultsForControlItems:(id)items
{
  updaterCopy = updater;
  itemsCopy = items;
  v10.receiver = self;
  v10.super_class = HUQuickControlColorViewController;
  [(HUQuickControlSingleControlViewController *)&v10 quickControlItemUpdater:updaterCopy didUpdateResultsForControlItems:itemsCopy];
  colorViewController = [(HUQuickControlColorViewController *)self colorViewController];

  if (colorViewController)
  {
    colorViewController2 = [(HUQuickControlColorViewController *)self colorViewController];
    [colorViewController2 quickControlItemUpdater:updaterCopy didUpdateResultsForControlItems:itemsCopy];
  }
}

- (CGSize)preferredContentSize
{
  presentingViewController = [(HUQuickControlColorViewController *)self presentingViewController];
  [presentingViewController preferredContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (HUQuickControlColorViewController)presentingColorViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingColorViewController);

  return WeakRetained;
}

@end