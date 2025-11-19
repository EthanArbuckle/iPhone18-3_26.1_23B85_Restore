@interface HUQuickControlIncrementalStateViewController
- (id)_createControlView;
- (id)controlToViewValueTransformer;
- (id)createInteractionCoordinator;
- (id)createViewProfile;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HUQuickControlIncrementalStateViewController

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = HUQuickControlIncrementalStateViewController;
  [(HUQuickControlSingleControlViewController *)&v8 viewWillAppear:a3];
  if (![(HUQuickControlSingleControlViewController *)self hasSetControlSize])
  {
    v4 = [(HUQuickControlIncrementalStateViewController *)self view];
    [v4 frame];
    v7 = HUViewSizeSubclassForViewSize(v5, v6);

    [(HUQuickControlSingleControlViewController *)self setControlSize:[HUQuickControlUtilities sliderQuickControlSizeForViewSizeSubclass:v7]];
  }
}

- (id)_createControlView
{
  v3 = [(HUQuickControlSingleControlViewController *)self viewProfile];
  v4 = objc_opt_class();

  if (v4 == objc_opt_class() || v4 == objc_opt_class())
  {
    v5 = objc_opt_class();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 alloc];
  v7 = [(HUQuickControlSingleControlViewController *)self viewProfile];
  v8 = [v6 initWithProfile:v7];

  return v8;
}

- (id)createInteractionCoordinator
{
  v3 = [HUQuickControlElasticSliderInteractionCoordinator alloc];
  v4 = [(HUQuickControlIncrementalStateViewController *)self _createControlView];
  v5 = [(HUQuickControlElasticSliderInteractionCoordinator *)v3 initWithControlView:v4 delegate:self];

  return v5;
}

- (id)createViewProfile
{
  v3 = [(HUQuickControlSingleControlViewController *)self controlItem];
  v4 = [(HUQuickControlSingleControlViewController *)self controlItem];
  v5 = [v4 incrementalCharacteristicType];
  v6 = [v3 metadataForCharacteristicType:v5];

  v7 = objc_alloc_init(HUQuickControlSliderViewProfile);
  v8 = [v6 hf_numericValueConstraints];
  v9 = [v8 percentageConstraints];
  [(HUQuickControlSliderViewProfile *)v7 setPrimaryValueConstraints:v9];

  v10 = [(HUQuickControlSingleControlViewController *)self controlItem];
  v11 = [v10 latestResults];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277D13B10]];
  v13 = [v12 BOOLValue];

  [(HUQuickControlSliderViewProfile *)v7 setPreferredFillSection:v13];
  [(HUQuickControlSliderViewProfile *)v7 setHasOffState:v13 ^ 1];

  return v7;
}

- (id)controlToViewValueTransformer
{
  v2 = [(HUQuickControlSingleControlViewController *)self viewProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 numberOfSegments];
    v4 = MEMORY[0x277D14CF0];
    v5 = objc_opt_class();
    v9[4] = v3;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __77__HUQuickControlIncrementalStateViewController_controlToViewValueTransformer__block_invoke;
    v10[3] = &__block_descriptor_40_e18__16__0__NSNumber_8l;
    v10[4] = v3;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __77__HUQuickControlIncrementalStateViewController_controlToViewValueTransformer__block_invoke_2;
    v9[3] = &__block_descriptor_40_e18__16__0__NSNumber_8l;
    v6 = [v4 transformerForValueClass:v5 transformBlock:v10 reverseTransformBlock:v9];
  }

  else
  {
    v6 = [MEMORY[0x277D14CF0] identityTransformer];
  }

  v7 = v6;

  return v7;
}

uint64_t __77__HUQuickControlIncrementalStateViewController_controlToViewValueTransformer__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCABB0];
  [a2 doubleValue];
  v5 = v4 * *(a1 + 32);

  return [v3 numberWithDouble:v5];
}

uint64_t __77__HUQuickControlIncrementalStateViewController_controlToViewValueTransformer__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCABB0];
  [a2 doubleValue];
  v5 = v4 / *(a1 + 32);

  return [v3 numberWithDouble:v5];
}

@end