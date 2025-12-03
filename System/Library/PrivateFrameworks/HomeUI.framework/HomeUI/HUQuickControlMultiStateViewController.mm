@interface HUQuickControlMultiStateViewController
- (BOOL)_isCharacteristicTypeRotationDirection;
- (BOOL)_shouldUseWheelPickerView;
- (BOOL)_useOverrideStatusText;
- (id)controlToViewValueTransformer;
- (id)createInteractionCoordinator;
- (id)createViewProfile;
- (id)overrideStatusText;
- (void)modelValueDidChange;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HUQuickControlMultiStateViewController

- (BOOL)_useOverrideStatusText
{
  viewProfile = [(HUQuickControlSingleControlViewController *)self viewProfile];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)overrideStatusText
{
  if ([(HUQuickControlMultiStateViewController *)self _useOverrideStatusText])
  {
    controlItem = [(HUQuickControlSingleControlViewController *)self controlItem];
    possibleValueSet = [controlItem possibleValueSet];

    modelValue = [(HUQuickControlSingleControlViewController *)self modelValue];

    if (modelValue)
    {
      modelValue2 = [(HUQuickControlSingleControlViewController *)self modelValue];
      v7 = [possibleValueSet displayResultsForValue:modelValue2];
      v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)modelValueDidChange
{
  v4.receiver = self;
  v4.super_class = HUQuickControlMultiStateViewController;
  [(HUQuickControlSingleControlViewController *)&v4 modelValueDidChange];
  if ([(HUQuickControlMultiStateViewController *)self _useOverrideStatusText])
  {
    delegate = [(HUQuickControlViewController *)self delegate];
    [delegate quickControlViewControllerDidUpdateStatusOverrides:self];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = HUQuickControlMultiStateViewController;
  [(HUQuickControlSingleControlViewController *)&v13 viewWillAppear:appear];
  if (![(HUQuickControlSingleControlViewController *)self hasSetControlSize])
  {
    view = [(HUQuickControlMultiStateViewController *)self view];
    [view frame];
    v7 = HUViewSizeSubclassForViewSize(v5, v6);

    viewProfile = [(HUQuickControlSingleControlViewController *)self viewProfile];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = [HUQuickControlUtilities sliderQuickControlSizeForViewSizeSubclass:v7];
    }

    else
    {
      viewProfile2 = [(HUQuickControlSingleControlViewController *)self viewProfile];
      objc_opt_class();
      v12 = objc_opt_isKindOfClass();

      if ((v12 & 1) == 0)
      {
        return;
      }

      v10 = [HUQuickControlUtilities quickControlStepperViewSizeForViewSizeSubclass:v7];
    }

    [(HUQuickControlSingleControlViewController *)self setControlSize:v10];
  }
}

- (id)createInteractionCoordinator
{
  viewProfile = [(HUQuickControlSingleControlViewController *)self viewProfile];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = HUQuickControlStepperView;
LABEL_7:
    v11 = [v6 alloc];
    viewProfile2 = [(HUQuickControlSingleControlViewController *)self viewProfile];
    currentHandler = [v11 initWithProfile:viewProfile2];

    v14 = HUQuickControlSimpleInteractionCoordinator;
LABEL_8:
    v15 = [[v14 alloc] initWithControlView:currentHandler delegate:self];
    goto LABEL_9;
  }

  viewProfile3 = [(HUQuickControlSingleControlViewController *)self viewProfile];
  objc_opt_class();
  v8 = objc_opt_isKindOfClass();

  if (v8)
  {
    v6 = HUQuickControlWheelPickerView;
    goto LABEL_7;
  }

  viewProfile4 = [(HUQuickControlSingleControlViewController *)self viewProfile];
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();

  if (v10)
  {
    v6 = HUQuickControlPushButtonView;
    goto LABEL_7;
  }

  viewProfile5 = [(HUQuickControlSingleControlViewController *)self viewProfile];
  objc_opt_class();
  v18 = objc_opt_isKindOfClass();

  if (v18)
  {
    v19 = [HUQuickControlSwitchView alloc];
    viewProfile6 = [(HUQuickControlSingleControlViewController *)self viewProfile];
    currentHandler = [(HUQuickControlSwitchView *)v19 initWithProfile:viewProfile6];

    v14 = HUQuickControlElasticSliderInteractionCoordinator;
    goto LABEL_8;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  viewProfile7 = [(HUQuickControlSingleControlViewController *)self viewProfile];
  [(HUQuickControlSwitchView *)currentHandler handleFailureInMethod:a2 object:self file:@"HUQuickControlMultiStateViewController.m" lineNumber:91 description:@"Unknown view profile class %@", viewProfile7];

  v15 = 0;
LABEL_9:

  return v15;
}

- (id)createViewProfile
{
  controlItem = [(HUQuickControlSingleControlViewController *)self controlItem];
  possibleValueSet = [controlItem possibleValueSet];

  allValues = [possibleValueSet allValues];
  v6 = [allValues count];

  if (v6 == 2)
  {
    controlItem2 = [(HUQuickControlSingleControlViewController *)self controlItem];
    v8 = [HUQuickControlUtilities shouldDisplayQuickControlAsPushButton:controlItem2 preferredControl:[(HUQuickControlViewController *)self preferredControl]];

    if (v8)
    {
      v9 = objc_alloc_init(HUQuickControlPushButtonViewProfile);
      [(HUQuickControlPushButtonViewProfile *)v9 setToggleColorScheme:[(HUQuickControlMultiStateViewController *)self _isCharacteristicTypeRotationDirection]^ 1];
    }

    else
    {
      v9 = objc_alloc_init(HUQuickControlSwitchViewProfile);
    }
  }

  else if ([(HUQuickControlMultiStateViewController *)self _shouldUseWheelPickerView])
  {
    v9 = objc_alloc_init(HUQuickControlWheelPickerViewProfile);
    [(HUQuickControlPushButtonViewProfile *)v9 setStyle:1];
  }

  else
  {
    v9 = objc_alloc_init(HUQuickControlStepperViewProfile);
    [(HUQuickControlPushButtonViewProfile *)v9 setStepperBehavior:0];
    allValues2 = [possibleValueSet allValues];
    -[HUQuickControlPushButtonViewProfile setNumberOfSegments:](v9, "setNumberOfSegments:", [allValues2 count]);

    [(HUQuickControlPushButtonViewProfile *)v9 setShowSegmentTitles:1];
    sortedValues = [possibleValueSet sortedValues];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __59__HUQuickControlMultiStateViewController_createViewProfile__block_invoke;
    v14[3] = &unk_277DC4E98;
    v15 = possibleValueSet;
    v12 = [sortedValues na_map:v14];
    [(HUQuickControlPushButtonViewProfile *)v9 setSegmentTitles:v12];

    [(HUQuickControlPushButtonViewProfile *)v9 setStepperStyle:0];
    [(HUQuickControlViewProfile *)v9 setControlSize:[(HUQuickControlViewController *)self controlSize]];
  }

  return v9;
}

id __59__HUQuickControlMultiStateViewController_createViewProfile__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) displayResultsForValue:a2];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D13F60]];

  return v3;
}

- (BOOL)_isCharacteristicTypeRotationDirection
{
  controlItem = [(HUQuickControlSingleControlViewController *)self controlItem];
  characteristicOptions = [controlItem characteristicOptions];
  v4 = [characteristicOptions characteristicTypesForUsage:0];
  allObjects = [v4 allObjects];
  firstObject = [allObjects firstObject];

  LOBYTE(controlItem) = [firstObject isEqualToString:*MEMORY[0x277CCFA18]];
  return controlItem;
}

- (id)controlToViewValueTransformer
{
  controlItem = [(HUQuickControlSingleControlViewController *)self controlItem];
  possibleValueSet = [controlItem possibleValueSet];

  v5 = MEMORY[0x277D14CF0];
  v6 = objc_opt_class();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__HUQuickControlMultiStateViewController_controlToViewValueTransformer__block_invoke;
  v12[3] = &unk_277DC4EC0;
  v13 = possibleValueSet;
  selfCopy = self;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__HUQuickControlMultiStateViewController_controlToViewValueTransformer__block_invoke_2;
  v10[3] = &unk_277DC4EC0;
  v10[4] = self;
  v11 = v13;
  v7 = v13;
  v8 = [v5 transformerForValueClass:v6 transformBlock:v12 reverseTransformBlock:v10];

  return v8;
}

id __71__HUQuickControlMultiStateViewController_controlToViewValueTransformer__block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) sortedValues];
    v5 = [v4 indexOfObject:v3];

    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      NSLog(&cfstr_NoValueFoundFo.isa, v3);
      v6 = 0;
    }

    else
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
    }

    v7 = [*(a1 + 40) viewProfile];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v25 = v6;
      v23 = v3;
      v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      obj = [*(a1 + 32) sortedValues];
      v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v28;
        v12 = *MEMORY[0x277D13F60];
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v28 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v27 + 1) + 8 * i);
            v15 = [*(a1 + 32) sortedValues];
            v16 = [v15 indexOfObject:v14];

            v17 = [HUQuickControlWheelPickerViewItem alloc];
            v18 = [*(a1 + 32) displayResultsForValue:v14];
            v19 = [v18 objectForKeyedSubscript:v12];
            v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
            v21 = -[HUQuickControlWheelPickerViewItem initWithHFMultiStateControlItemValue:text:isSelected:](v17, "initWithHFMultiStateControlItemValue:text:isSelected:", v14, v19, [v25 isEqualToNumber:v20]);

            [v26 addObject:v21];
          }

          v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v10);
      }

      v3 = v23;
      v6 = v25;
    }

    else
    {
      v26 = v6;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

id __71__HUQuickControlMultiStateViewController_controlToViewValueTransformer__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) viewProfile];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [*(a1 + 32) controlItem];
    v7 = [v6 latestResults];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13818]];
    v9 = [v8 isEqual:v3];

    v10 = v3;
    if (v9)
    {
      goto LABEL_8;
    }

    v11 = [*(a1 + 32) controlItem];
    v12 = [v11 writeValue:v3];
    v10 = v3;
    goto LABEL_6;
  }

  if (v3)
  {
    v11 = [*(a1 + 40) sortedValues];
    v10 = [v11 objectAtIndexedSubscript:{objc_msgSend(v3, "integerValue")}];

LABEL_6:
    goto LABEL_8;
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (BOOL)_shouldUseWheelPickerView
{
  controlItem = [(HUQuickControlSingleControlViewController *)self controlItem];
  multiStateCharacteristicType = [controlItem multiStateCharacteristicType];

  if ([multiStateCharacteristicType isEqualToString:*MEMORY[0x277CCFB20]])
  {
    v4 = 1;
  }

  else
  {
    v4 = [multiStateCharacteristicType isEqualToString:*MEMORY[0x277CCFB18]];
  }

  return v4;
}

@end