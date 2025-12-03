@interface HUQuickControlRangeViewController
- (id)controlToViewValueTransformer;
- (id)createInteractionCoordinator;
- (id)createViewProfile;
@end

@implementation HUQuickControlRangeViewController

- (id)createInteractionCoordinator
{
  v3 = [HUQuickControlSliderView alloc];
  viewProfile = [(HUQuickControlSingleControlViewController *)self viewProfile];
  v5 = [(HUQuickControlSliderView *)v3 initWithProfile:viewProfile];

  v6 = [[HUQuickControlElasticSliderInteractionCoordinator alloc] initWithControlView:v5 delegate:self];

  return v6;
}

- (id)createViewProfile
{
  v3 = objc_alloc_init(HUQuickControlSliderViewProfile);
  [(HUQuickControlSliderViewProfile *)v3 setHasOffState:0];
  controlItem = [(HUQuickControlSingleControlViewController *)self controlItem];
  latestResults = [controlItem latestResults];
  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13B18]];
  v7 = v6;
  if (!v6)
  {
    v6 = &unk_282491B08;
  }

  -[HUQuickControlSliderViewProfile setInteractionFidelity:](v3, "setInteractionFidelity:", [v6 unsignedIntegerValue]);

  controlItem2 = [(HUQuickControlSingleControlViewController *)self controlItem];
  latestResults2 = [controlItem2 latestResults];
  v10 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13818]];

  mode = [v10 mode];
  if (mode == 2)
  {
    controlItem3 = [(HUQuickControlSingleControlViewController *)self controlItem];
    minimumValueConstraints = [controlItem3 minimumValueConstraints];

    controlItem4 = [(HUQuickControlSingleControlViewController *)self controlItem];
    maximumValueConstraints = [controlItem4 maximumValueConstraints];

    validRange = [minimumValueConstraints validRange];
    validRange2 = [maximumValueConstraints validRange];
    v15 = [validRange unionRange:validRange2];

    v20 = [maximumValueConstraints percentageConstraintsWithinRange:v15];
    [(HUQuickControlSliderViewProfile *)v3 setPrimaryValueConstraints:v20];

    v21 = [minimumValueConstraints percentageConstraintsWithinRange:v15];
    [(HUQuickControlSliderViewProfile *)v3 setSecondaryValueConstraints:v21];

    [(HUQuickControlSliderViewProfile *)v3 setHasSecondaryValue:1];
  }

  else
  {
    if (mode != 1)
    {
      goto LABEL_8;
    }

    controlItem5 = [(HUQuickControlSingleControlViewController *)self controlItem];
    minimumValueConstraints = [controlItem5 targetValueConstraints];

    maximumValueConstraints = [minimumValueConstraints validRange];
    v15 = [minimumValueConstraints percentageConstraintsWithinRange:maximumValueConstraints];
    [(HUQuickControlSliderViewProfile *)v3 setPrimaryValueConstraints:v15];
  }

LABEL_8:

  return v3;
}

- (id)controlToViewValueTransformer
{
  viewProfile = [(HUQuickControlSingleControlViewController *)self viewProfile];
  controlItem = [(HUQuickControlSingleControlViewController *)self controlItem];
  latestResults = [controlItem latestResults];
  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13818]];

  mode = [v6 mode];
  v8 = MEMORY[0x277D14CF0];
  v9 = objc_opt_class();
  if (mode == 2)
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __66__HUQuickControlRangeViewController_controlToViewValueTransformer__block_invoke;
    v29[3] = &unk_277DC01C8;
    v10 = &v30;
    v11 = viewProfile;
    v30 = v11;
    v12 = &v31;
    v31 = controlItem;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __66__HUQuickControlRangeViewController_controlToViewValueTransformer__block_invoke_2;
    v26[3] = &unk_277DC01F0;
    v13 = &v27;
    v27 = v31;
    v14 = &v28;
    v28 = v11;
    v15 = v29;
    v16 = v26;
  }

  else
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __66__HUQuickControlRangeViewController_controlToViewValueTransformer__block_invoke_3;
    v23[3] = &unk_277DBE620;
    v10 = &v24;
    v17 = viewProfile;
    v24 = v17;
    v12 = &v25;
    v25 = controlItem;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __66__HUQuickControlRangeViewController_controlToViewValueTransformer__block_invoke_4;
    v20[3] = &unk_277DBE648;
    v13 = &v21;
    v21 = v25;
    v14 = &v22;
    v22 = v17;
    v15 = v23;
    v16 = v20;
  }

  v18 = [v8 transformerForValueClass:v9 transformBlock:v15 reverseTransformBlock:v16];

  return v18;
}

id __66__HUQuickControlRangeViewController_controlToViewValueTransformer__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 primaryValueConstraints];
  v6 = [v5 validRange];
  v7 = [v4 maximumValue];
  v8 = [*(a1 + 40) maximumValueConstraints];
  v9 = [v8 validRange];
  v10 = [v6 mapValue:v7 fromRange:v9];

  v11 = [*(a1 + 32) secondaryValueConstraints];
  v12 = [v11 validRange];
  v13 = [v4 minimumValue];

  v14 = [*(a1 + 40) minimumValueConstraints];
  v15 = [v14 validRange];
  v16 = [v12 mapValue:v13 fromRange:v15];

  v17 = [MEMORY[0x277D148D8] rangeWithMaxValue:v10 minValue:v16];

  return v17;
}

id __66__HUQuickControlRangeViewController_controlToViewValueTransformer__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 minimumValueConstraints];
  v6 = [v5 validRange];
  v7 = [v4 minValue];
  v8 = [*(a1 + 40) secondaryValueConstraints];
  v9 = [v8 validRange];
  v10 = [v6 mapValue:v7 fromRange:v9];

  v11 = [*(a1 + 32) maximumValueConstraints];
  v12 = [v11 validRange];
  v13 = [v4 maxValue];

  v14 = [*(a1 + 40) primaryValueConstraints];
  v15 = [v14 validRange];
  v16 = [v12 mapValue:v13 fromRange:v15];

  v17 = [MEMORY[0x277D149A8] thresholdValueWithMinimumValue:v10 maximumValue:v16];

  return v17;
}

id __66__HUQuickControlRangeViewController_controlToViewValueTransformer__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 primaryValueConstraints];
  v6 = [v5 validRange];
  v7 = [v4 targetValue];

  v8 = [*(a1 + 40) targetValueConstraints];
  v9 = [v8 validRange];
  v10 = [v6 mapValue:v7 fromRange:v9];

  return v10;
}

id __66__HUQuickControlRangeViewController_controlToViewValueTransformer__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 targetValueConstraints];
  v6 = [v5 validRange];
  v7 = [*(a1 + 40) primaryValueConstraints];
  v8 = [v7 validRange];
  v9 = [v6 mapValue:v4 fromRange:v8];

  v10 = [MEMORY[0x277D149A8] targetValueWithValue:v9];

  return v10;
}

@end