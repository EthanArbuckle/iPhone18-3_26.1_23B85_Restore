@interface HUQuickControlIncrementalStateViewController
- (id)_createControlView;
- (id)controlToViewValueTransformer;
- (id)createInteractionCoordinator;
- (id)createViewProfile;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HUQuickControlIncrementalStateViewController

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = HUQuickControlIncrementalStateViewController;
  [(HUQuickControlSingleControlViewController *)&v8 viewWillAppear:appear];
  if (![(HUQuickControlSingleControlViewController *)self hasSetControlSize])
  {
    view = [(HUQuickControlIncrementalStateViewController *)self view];
    [view frame];
    v7 = HUViewSizeSubclassForViewSize(v5, v6);

    [(HUQuickControlSingleControlViewController *)self setControlSize:[HUQuickControlUtilities sliderQuickControlSizeForViewSizeSubclass:v7]];
  }
}

- (id)_createControlView
{
  viewProfile = [(HUQuickControlSingleControlViewController *)self viewProfile];
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
  viewProfile2 = [(HUQuickControlSingleControlViewController *)self viewProfile];
  v8 = [v6 initWithProfile:viewProfile2];

  return v8;
}

- (id)createInteractionCoordinator
{
  v3 = [HUQuickControlElasticSliderInteractionCoordinator alloc];
  _createControlView = [(HUQuickControlIncrementalStateViewController *)self _createControlView];
  v5 = [(HUQuickControlElasticSliderInteractionCoordinator *)v3 initWithControlView:_createControlView delegate:self];

  return v5;
}

- (id)createViewProfile
{
  controlItem = [(HUQuickControlSingleControlViewController *)self controlItem];
  controlItem2 = [(HUQuickControlSingleControlViewController *)self controlItem];
  incrementalCharacteristicType = [controlItem2 incrementalCharacteristicType];
  v6 = [controlItem metadataForCharacteristicType:incrementalCharacteristicType];

  v7 = objc_alloc_init(HUQuickControlSliderViewProfile);
  hf_numericValueConstraints = [v6 hf_numericValueConstraints];
  percentageConstraints = [hf_numericValueConstraints percentageConstraints];
  [(HUQuickControlSliderViewProfile *)v7 setPrimaryValueConstraints:percentageConstraints];

  controlItem3 = [(HUQuickControlSingleControlViewController *)self controlItem];
  latestResults = [controlItem3 latestResults];
  v12 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13B10]];
  bOOLValue = [v12 BOOLValue];

  [(HUQuickControlSliderViewProfile *)v7 setPreferredFillSection:bOOLValue];
  [(HUQuickControlSliderViewProfile *)v7 setHasOffState:bOOLValue ^ 1];

  return v7;
}

- (id)controlToViewValueTransformer
{
  viewProfile = [(HUQuickControlSingleControlViewController *)self viewProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    numberOfSegments = [viewProfile numberOfSegments];
    v4 = MEMORY[0x277D14CF0];
    v5 = objc_opt_class();
    v9[4] = numberOfSegments;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __77__HUQuickControlIncrementalStateViewController_controlToViewValueTransformer__block_invoke;
    v10[3] = &__block_descriptor_40_e18__16__0__NSNumber_8l;
    v10[4] = numberOfSegments;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __77__HUQuickControlIncrementalStateViewController_controlToViewValueTransformer__block_invoke_2;
    v9[3] = &__block_descriptor_40_e18__16__0__NSNumber_8l;
    identityTransformer = [v4 transformerForValueClass:v5 transformBlock:v10 reverseTransformBlock:v9];
  }

  else
  {
    identityTransformer = [MEMORY[0x277D14CF0] identityTransformer];
  }

  v7 = identityTransformer;

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