@interface HUQuickControlColorViewController
- (CGSize)preferredContentSize;
- (HUQuickControlColorViewController)presentingColorViewController;
- (id)controlToViewValueTransformer;
- (id)createInteractionCoordinator;
- (id)createViewProfile;
- (unint64_t)_paletteType;
- (void)cancelButtonTapped;
- (void)didSelectColorAtIndexPath:(id)a3;
- (void)doneButtonTapped;
- (void)interactionCoordinator:(id)a3 colorPaletteDidChange:(id)a4;
- (void)interactionCoordinator:(id)a3 didSelectColorAtIndexPath:(id)a4;
- (void)interactionCoordinator:(id)a3 viewValueDidChange:(id)a4;
- (void)presentFullColorViewForInteractionCoordinator:(id)a3 selectedColorIndexPath:(id)a4;
- (void)quickControlItemUpdater:(id)a3 didUpdateResultsForControlItems:(id)a4;
- (void)updateValueFromControlItem;
@end

@implementation HUQuickControlColorViewController

- (void)updateValueFromControlItem
{
  v3 = [(HUQuickControlSingleControlViewController *)self controlItem];
  v4 = [v3 latestResults];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D14008]];

  if (v5)
  {
    v6 = [v5 BOOLValue];
    v7 = [(HUQuickControlSingleControlViewController *)self viewProfile];
    [v7 setNaturalLightingEnabled:v6];
  }

  v8.receiver = self;
  v8.super_class = HUQuickControlColorViewController;
  [(HUQuickControlSingleControlViewController *)&v8 updateValueFromControlItem];
}

- (unint64_t)_paletteType
{
  v3 = [(HUQuickControlSingleControlViewController *)self viewProfile];
  v4 = [v3 supportsNaturalLighting];

  v5 = [(HUQuickControlSingleControlViewController *)self controlItem];
  v6 = [v5 supportsRGBColor];

  v7 = 2;
  if (!v4)
  {
    v7 = 0;
  }

  v8 = 3;
  if (!v4)
  {
    v8 = 1;
  }

  if (v6)
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
  v3 = [(HUQuickControlViewController *)self home];
  v4 = [v3 hf_colorPaletteOfType:{-[HUQuickControlColorViewController _paletteType](self, "_paletteType")}];

  v5 = [HUQuickControlColorView alloc];
  v6 = [(HUQuickControlSingleControlViewController *)self viewProfile];
  v7 = [(HUQuickControlColorView *)v5 initWithProfile:v6 colorPalette:v4];

  v8 = [[HUQuickControlColorInteractionCoordinator alloc] initWithControlView:v7 colorPalette:v4 delegate:self];
  [(HUQuickControlSimpleInteractionCoordinator *)v8 setShouldDismissAutomatically:0];

  return v8;
}

- (id)createViewProfile
{
  v3 = objc_alloc_init(HUQuickControlColorViewProfile);
  v4 = [(HUQuickControlSingleControlViewController *)self controlItem];
  -[HUQuickControlColorViewProfile setSupportsRGBColor:](v3, "setSupportsRGBColor:", [v4 supportsRGBColor]);

  v5 = [(HUQuickControlSingleControlViewController *)self controlItem];
  -[HUQuickControlColorViewProfile setSupportsNaturalLighting:](v3, "setSupportsNaturalLighting:", [v5 supportsNaturalLighting]);

  v6 = [(HUQuickControlSingleControlViewController *)self controlItem];
  -[HUQuickControlColorViewProfile setNaturalLightingEnabled:](v3, "setNaturalLightingEnabled:", [v6 naturalLightingEnabled]);

  v7 = [(HUQuickControlSingleControlViewController *)self controlItem];
  v8 = [v7 colorProfile];
  [(HUQuickControlColorViewProfile *)v3 setColorProfile:v8];

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

- (void)interactionCoordinator:(id)a3 colorPaletteDidChange:(id)a4
{
  v5 = a4;
  v6 = [(HUQuickControlViewController *)self home];
  v7 = [v6 hf_updateColorPalette:v5 type:{-[HUQuickControlColorViewController _paletteType](self, "_paletteType")}];

  v8 = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
  v10 = [v8 controlView];

  [v10 setColorPalette:v5];
  if ([v10 isSelectedColorInPalette])
  {
    v9 = [(HUQuickControlViewController *)self delegate];
    [v9 quickControlViewControllerDidUpdateStatusOverrides:self];
  }
}

- (void)presentFullColorViewForInteractionCoordinator:(id)a3 selectedColorIndexPath:(id)a4
{
  objc_opt_class();
  v5 = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
  v6 = [v5 controlView];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
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
  v9 = [(HUQuickControlSingleControlViewController *)self controlItem];
  v10 = [(HUQuickControlViewController *)self home];
  v11 = [(HUQuickControlViewController *)self itemUpdater];
  v12 = [(HUQuickControlSingleControlViewController *)v8 initWithControlItem:v9 home:v10 itemUpdater:v11 controlOrientation:[(HUQuickControlViewController *)self controlOrientation] preferredControl:[(HUQuickControlViewController *)self preferredControl]];
  [(HUQuickControlColorViewController *)self setColorViewController:v12];

  v13 = [(HUQuickControlColorViewController *)self colorViewController];
  [v13 setMode:1];

  v14 = [(HUQuickControlColorViewController *)self colorViewController];
  [v14 setPresentingColorViewController:self];

  objc_opt_class();
  v15 = [(HUQuickControlColorViewController *)self colorViewController];
  v16 = [v15 interactionCoordinator];
  v17 = [v16 controlView];
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  if (v19)
  {
    v20 = [v40 linearPaletteViewSelectedColorIndexPath];
    [v19 updateSelectedColorIndexPathToIndexPath:v20];

    v21 = [v40 value];
    [v19 setValue:v21];

    [v19 storeCurrentColorInformationAsOriginalValues];
  }

  v22 = objc_alloc(MEMORY[0x277D757A0]);
  v23 = [(HUQuickControlColorViewController *)self colorViewController];
  v24 = [v22 initWithRootViewController:v23];

  v25 = 2;
  [v24 setModalPresentationStyle:2];
  v26 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonTapped];
  v27 = [(HUQuickControlColorViewController *)self colorViewController];
  v28 = [v27 navigationItem];
  [v28 setLeftBarButtonItem:v26];

  v29 = _HULocalizedStringWithDefaultValue(@"HUQuickControlColorFullPickerModeViewControllerTitle", @"HUQuickControlColorFullPickerModeViewControllerTitle", 1);
  v30 = [(HUQuickControlColorViewController *)self colorViewController];
  [v30 setTitle:v29];

  v31 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_doneButtonTapped];
  v32 = [(HUQuickControlColorViewController *)self colorViewController];
  v33 = [v32 navigationItem];
  [v33 setRightBarButtonItem:v31];

  if (([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials] & 1) == 0)
  {
    v34 = [(HUQuickControlColorViewController *)self view];
    v35 = [v34 traitCollection];
    v25 = [v35 userInterfaceStyle];
  }

  v36 = [HUQuickControlUtilities backgroundColorForUserInterfaceStyle:v25];
  v37 = [(HUQuickControlColorViewController *)self colorViewController];
  v38 = [v37 view];
  [v38 setBackgroundColor:v36];

  [v24 setOverrideUserInterfaceStyle:v25];
  v39 = [(UIViewController *)self hu_presentPreloadableViewController:v24 animated:1];
}

- (void)interactionCoordinator:(id)a3 didSelectColorAtIndexPath:(id)a4
{
  v10 = a4;
  objc_opt_class();
  v5 = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
  v6 = [v5 controlView];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8 && [v8 mode] == 1)
  {
    v9 = [(HUQuickControlColorViewController *)self presentingColorViewController];
    [v9 didSelectColorAtIndexPath:v10];
  }
}

- (void)interactionCoordinator:(id)a3 viewValueDidChange:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (([v7 isUserInteractionActive] & 1) == 0)
  {
    NSLog(&cfstr_ReceivedAValue.isa, v7);
  }

  v9 = [(HUQuickControlColorViewController *)self controlToViewValueTransformer];
  v10 = [v9 valueForTransformedValue:v8];

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
    v17 = [(HUQuickControlSingleControlViewController *)self controlItem];
    [v17 setNaturalLightingEnabled:0];

    v20.receiver = self;
    v20.super_class = HUQuickControlColorViewController;
    [(HUQuickControlSingleControlViewController *)&v20 interactionCoordinator:v7 viewValueDidChange:v8];
  }

  else if (v16)
  {
    v18 = [(HUQuickControlSingleControlViewController *)self controlItem];
    [v18 setNaturalLightingEnabled:1];
  }

  else
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"HUQuickControlColorViewController.m" lineNumber:205 description:{@"Unknown color value: %@", v14}];
  }
}

- (void)didSelectColorAtIndexPath:(id)a3
{
  v8 = a3;
  objc_opt_class();
  v4 = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
  v5 = [v4 controlView];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7 && ![v7 mode])
  {
    [v7 updateSelectedColorIndexPathToIndexPath:v8];
  }
}

- (void)cancelButtonTapped
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = self;
    v9 = 2080;
    v10 = "[HUQuickControlColorViewController cancelButtonTapped]";
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%@:%s User tapped cancel button", &v7, 0x16u);
  }

  v4 = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
  [v4 cancelButtonTappedToDismissColorViewController];

  v5 = [(HUQuickControlColorViewController *)self colorViewController];
  v6 = [v5 interactionCoordinator];
  [v6 cancelButtonTappedToDismissColorViewController];

  [(HUQuickControlColorViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)doneButtonTapped
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412546;
    v21 = self;
    v22 = 2080;
    v23 = "[HUQuickControlColorViewController doneButtonTapped]";
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%@:%s User tapped done button", &v20, 0x16u);
  }

  objc_opt_class();
  v4 = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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
  v10 = [v9 controlView];
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  objc_opt_class();
  v13 = [(HUQuickControlColorViewController *)self colorViewController];
  v14 = [v13 interactionCoordinator];
  v15 = [v14 controlView];
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  v18 = [v17 colorPalette];

  if (v9)
  {
    if (v12)
    {
      v19 = v18 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      [v9 controlView:v12 colorPaletteDidChange:v18];
    }
  }

  [(HUQuickControlColorViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)quickControlItemUpdater:(id)a3 didUpdateResultsForControlItems:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = HUQuickControlColorViewController;
  [(HUQuickControlSingleControlViewController *)&v10 quickControlItemUpdater:v6 didUpdateResultsForControlItems:v7];
  v8 = [(HUQuickControlColorViewController *)self colorViewController];

  if (v8)
  {
    v9 = [(HUQuickControlColorViewController *)self colorViewController];
    [v9 quickControlItemUpdater:v6 didUpdateResultsForControlItems:v7];
  }
}

- (CGSize)preferredContentSize
{
  v2 = [(HUQuickControlColorViewController *)self presentingViewController];
  [v2 preferredContentSize];
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