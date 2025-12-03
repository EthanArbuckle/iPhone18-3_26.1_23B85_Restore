@interface HUQuickControlRingSliderRangeViewController
+ (id)controlItemPredicate;
- (id)controlToViewValueTransformer;
- (id)createInteractionCoordinator;
- (id)createViewProfile;
- (void)_getHeaterCoolerThresholdControlItemStateString:(id *)string temperatureString:(id *)temperatureString withRangeControlItemValue:(id)value;
- (void)_getTemperatureThresholdControlItemStateString:(id *)string temperatureString:(id *)temperatureString withRangeControlItemValue:(id)value;
- (void)interactionCoordinator:(id)coordinator viewValueDidChange:(id)change;
- (void)invalidateViewProfile;
- (void)modelValueDidChange;
- (void)quickControlItemUpdater:(id)updater didUpdateResultsForControlItems:(id)items;
- (void)updateMainStatusStringWithValue:(id)value;
- (void)updateSupplementaryValue;
@end

@implementation HUQuickControlRingSliderRangeViewController

+ (id)controlItemPredicate
{
  v2 = [[HUQuickControlSingleItemPredicate alloc] initWithBlock:&__block_literal_global_62];

  return v2;
}

uint64_t __67__HUQuickControlRingSliderRangeViewController_controlItemPredicate__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  v4 = [v2 valueSource];
  v5 = [v4 allServices];
  v6 = [v5 na_any:&__block_literal_global_5];

  return isKindOfClass & ~v6 & 1;
}

uint64_t __67__HUQuickControlRingSliderRangeViewController_controlItemPredicate__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 serviceType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CD0E48]];

  return v3;
}

- (id)createInteractionCoordinator
{
  v3 = [HUQuickControlRingSliderView alloc];
  viewProfile = [(HUQuickControlSingleControlViewController *)self viewProfile];
  v5 = [(HUQuickControlRingSliderView *)v3 initWithProfile:viewProfile];
  [(HUQuickControlRingSliderRangeViewController *)self setRingSliderView:v5];

  v6 = [HUQuickControlRingSliderInteractionCoordinator alloc];
  ringSliderView = [(HUQuickControlRingSliderRangeViewController *)self ringSliderView];
  v8 = [(HUQuickControlRingSliderInteractionCoordinator *)v6 initWithControlView:ringSliderView delegate:self];

  ringSliderView2 = [(HUQuickControlRingSliderRangeViewController *)self ringSliderView];
  [ringSliderView2 setInteractionDelegate:v8];

  return v8;
}

- (id)createViewProfile
{
  v3 = objc_alloc_init(HUQuickControlRingSliderViewProfile);
  [(HUQuickControlRingSliderViewProfile *)v3 setIsHandleViewVisible:0];
  [(HUQuickControlRingSliderViewProfile *)v3 setHasOffState:0];
  [(HUQuickControlRingSliderViewProfile *)v3 setHandleViewStyle:2];
  controlItem = [(HUQuickControlSingleControlViewController *)self controlItem];
  latestResults = [controlItem latestResults];
  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13818]];

  mode = [v6 mode];
  if (mode == 2)
  {
    v104 = v6;
    [(HUQuickControlRingSliderViewProfile *)v3 setHasSecondaryValue:1];
    v28 = MEMORY[0x277D14BE0];
    controlItem2 = [(HUQuickControlSingleControlViewController *)self controlItem];
    minimumValueConstraints = [controlItem2 minimumValueConstraints];
    validRange = [minimumValueConstraints validRange];
    mEMORY[0x277D14BF8] = [MEMORY[0x277D14BF8] sharedCoordinator];
    v13 = [v28 integerTemperatureRangeWithinNumberRange:validRange representsCelsius:{objc_msgSend(mEMORY[0x277D14BF8], "isCelsius")}];

    v33 = objc_alloc(MEMORY[0x277D148E0]);
    minValue = [v13 minValue];
    maxValue = [v13 maxValue];
    controlItem3 = [(HUQuickControlSingleControlViewController *)self controlItem];
    [controlItem3 minimumValueConstraints];
    v38 = v37 = self;
    stepValue = [v38 stepValue];
    v20 = [v33 initWithMinValue:minValue maxValue:maxValue stepValue:stepValue];

    v40 = MEMORY[0x277D14BE0];
    controlItem4 = [(HUQuickControlSingleControlViewController *)v37 controlItem];
    maximumValueConstraints = [controlItem4 maximumValueConstraints];
    validRange2 = [maximumValueConstraints validRange];
    mEMORY[0x277D14BF8]2 = [MEMORY[0x277D14BF8] sharedCoordinator];
    maxValue5 = [v40 integerTemperatureRangeWithinNumberRange:validRange2 representsCelsius:{objc_msgSend(mEMORY[0x277D14BF8]2, "isCelsius")}];

    v45 = objc_alloc(MEMORY[0x277D148E0]);
    minValue2 = [maxValue5 minValue];
    maxValue2 = [maxValue5 maxValue];
    selfCopy = v37;
    controlItem5 = [(HUQuickControlSingleControlViewController *)v37 controlItem];
    maximumValueConstraints2 = [controlItem5 maximumValueConstraints];
    stepValue2 = [maximumValueConstraints2 stepValue];
    v51 = [v45 initWithMinValue:minValue2 maxValue:maxValue2 stepValue:stepValue2];

    v52 = [v13 unionRange:maxValue5];
    minValue3 = [v52 minValue];
    [minValue3 floatValue];
    v24 = v54;

    maxValue3 = [v52 maxValue];
    [maxValue3 floatValue];
    v27 = v56;

    v57 = [v51 percentageConstraintsWithinRange:v52];
    [(HUQuickControlRingSliderViewProfile *)v3 setPrimaryValueConstraints:v57];

    v58 = [v20 percentageConstraintsWithinRange:v52];
    [(HUQuickControlRingSliderViewProfile *)v3 setSecondaryValueConstraints:v58];
  }

  else
  {
    if (mode != 1)
    {
      goto LABEL_47;
    }

    v104 = v6;
    v8 = MEMORY[0x277D14BE0];
    controlItem6 = [(HUQuickControlSingleControlViewController *)self controlItem];
    targetValueConstraints = [controlItem6 targetValueConstraints];
    validRange3 = [targetValueConstraints validRange];
    mEMORY[0x277D14BF8]3 = [MEMORY[0x277D14BF8] sharedCoordinator];
    v13 = [v8 integerTemperatureRangeWithinNumberRange:validRange3 representsCelsius:{objc_msgSend(mEMORY[0x277D14BF8]3, "isCelsius")}];

    v14 = objc_alloc(MEMORY[0x277D148E0]);
    minValue4 = [v13 minValue];
    maxValue4 = [v13 maxValue];
    selfCopy = self;
    controlItem7 = [(HUQuickControlSingleControlViewController *)self controlItem];
    targetValueConstraints2 = [controlItem7 targetValueConstraints];
    stepValue3 = [targetValueConstraints2 stepValue];
    v20 = [v14 initWithMinValue:minValue4 maxValue:maxValue4 stepValue:stepValue3];

    v21 = [v20 percentageConstraintsWithinRange:v13];
    [(HUQuickControlRingSliderViewProfile *)v3 setPrimaryValueConstraints:v21];

    minValue5 = [v13 minValue];
    [minValue5 floatValue];
    v24 = v23;

    maxValue5 = [v13 maxValue];
    [maxValue5 floatValue];
    v27 = v26;
  }

  v6 = v104;
  self = selfCopy;
  if (v24 != v27)
  {
    v59 = v24;
    v60 = v27;
    mEMORY[0x277D14BF8]4 = [MEMORY[0x277D14BF8] sharedCoordinator];
    isCelsius = [mEMORY[0x277D14BF8]4 isCelsius];

    if (!isCelsius)
    {
      v75 = v59 * 9.0 / 5.0 + 32.0;
      v76 = v60 * 9.0 / 5.0 + 32.0;
      if (v75 <= v76)
      {
        v78 = v60 - v59;
        v77 = 1;
        do
        {
          v79 = ((v75 + -32.0) * 5.0 / 9.0 - v59) / v78;
          *&v79 = v79;
          v80 = [MEMORY[0x277CCABB0] numberWithFloat:v79];
          gradationMarkingValues = [(HUQuickControlRingSliderViewProfile *)v3 gradationMarkingValues];
          v82 = [gradationMarkingValues arrayByAddingObject:v80];
          [(HUQuickControlRingSliderViewProfile *)v3 setGradationMarkingValues:v82];

          v75 = v75 + 1.0;
        }

        while (v75 <= v76);
      }

      else
      {
        v77 = 1;
      }

LABEL_46:
      [(HUQuickControlRingSliderViewProfile *)v3 setGradationMarkingViewStyle:v77];
      goto LABEL_47;
    }

    objc_opt_class();
    controlItem8 = [(HUQuickControlSingleControlViewController *)selfCopy controlItem];
    if (objc_opt_isKindOfClass())
    {
      v64 = controlItem8;
    }

    else
    {
      v64 = 0;
    }

    v65 = v64;

    objc_opt_class();
    controlItem9 = [(HUQuickControlSingleControlViewController *)selfCopy controlItem];
    if (objc_opt_isKindOfClass())
    {
      v67 = controlItem9;
    }

    else
    {
      v67 = 0;
    }

    v68 = v67;

    mode2 = [v104 mode];
    if (mode2 != 2)
    {
      if (mode2 != 1)
      {
        goto LABEL_41;
      }

      targetValueConstraints3 = [v65 targetValueConstraints];
      stepValue4 = [targetValueConstraints3 stepValue];

      if (v68)
      {
        targetValueConstraints4 = [v68 targetValueConstraints];
        stepValue5 = [targetValueConstraints4 stepValue];

        stepValue4 = stepValue5;
      }

      v74 = [stepValue4 isEqualToNumber:&unk_282491088];

      if ((v74 & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_39:
      v95 = 1.0;
      v77 = 1;
LABEL_42:
      if (v24 <= v27)
      {
        v96 = v24;
        do
        {
          v97 = (v96 - v59) / (v60 - v59);
          *&v97 = v97;
          v98 = [MEMORY[0x277CCABB0] numberWithFloat:v97];
          gradationMarkingValues2 = [(HUQuickControlRingSliderViewProfile *)v3 gradationMarkingValues];
          v100 = [gradationMarkingValues2 arrayByAddingObject:v98];
          [(HUQuickControlRingSliderViewProfile *)v3 setGradationMarkingValues:v100];

          v96 = v95 + v96;
        }

        while (v96 <= v60);
      }

      goto LABEL_46;
    }

    minimumValueConstraints2 = [v65 minimumValueConstraints];
    stepValue6 = [minimumValueConstraints2 stepValue];

    maximumValueConstraints3 = [v65 maximumValueConstraints];
    stepValue7 = [maximumValueConstraints3 stepValue];

    if (v68)
    {
      minimumValueConstraints3 = [v68 minimumValueConstraints];
      stepValue8 = [minimumValueConstraints3 stepValue];

      maximumValueConstraints4 = [v68 maximumValueConstraints];
      stepValue9 = [maximumValueConstraints4 stepValue];

      stepValue7 = stepValue9;
      stepValue6 = stepValue8;
    }

    if (stepValue6 && stepValue7)
    {
      intValue = [stepValue6 intValue];
      intValue2 = [stepValue7 intValue];
      if (intValue <= intValue2)
      {
        v93 = intValue2;
      }

      else
      {
        v93 = intValue;
      }

      if (v93 != 1)
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (!(stepValue6 | stepValue7))
      {
LABEL_40:

LABEL_41:
        v95 = 0.5;
        v77 = 2;
        goto LABEL_42;
      }

      if (stepValue6)
      {
        v94 = stepValue6;
      }

      else
      {
        v94 = stepValue7;
      }

      [v94 isEqualToNumber:&unk_282491088];
    }

    goto LABEL_39;
  }

LABEL_47:
  [(HUQuickControlRingSliderViewProfile *)v3 setStyle:0];
  controlItem10 = [(HUQuickControlSingleControlViewController *)self controlItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(HUQuickControlRingSliderViewProfile *)v3 setShouldShowSupplementaryValue:1];
  }

  else
  {
    controlItem11 = [(HUQuickControlSingleControlViewController *)self controlItem];
    objc_opt_class();
    [(HUQuickControlRingSliderViewProfile *)v3 setShouldShowSupplementaryValue:objc_opt_isKindOfClass() & 1];
  }

  return v3;
}

- (id)controlToViewValueTransformer
{
  viewProfile = [(HUQuickControlSingleControlViewController *)self viewProfile];
  controlItem = [(HUQuickControlSingleControlViewController *)self controlItem];
  v5 = [MEMORY[0x277D14CF0] transformerForRingSliderViewProfile:viewProfile rangeControlItem:controlItem];

  return v5;
}

- (void)interactionCoordinator:(id)coordinator viewValueDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = HUQuickControlRingSliderRangeViewController;
  changeCopy = change;
  [(HUQuickControlSingleControlViewController *)&v7 interactionCoordinator:coordinator viewValueDidChange:changeCopy];
  [(HUQuickControlRingSliderRangeViewController *)self updateMainStatusStringWithValue:changeCopy, v7.receiver, v7.super_class];

  [(HUQuickControlRingSliderRangeViewController *)self updateSupplementaryValue];
}

- (void)invalidateViewProfile
{
  v4.receiver = self;
  v4.super_class = HUQuickControlRingSliderRangeViewController;
  [(HUQuickControlSingleControlViewController *)&v4 invalidateViewProfile];
  modelValue = [(HUQuickControlSingleControlViewController *)self modelValue];
  [(HUQuickControlRingSliderRangeViewController *)self updateMainStatusStringWithValue:modelValue];
}

- (void)updateMainStatusStringWithValue:(id)value
{
  v44 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  ringSliderView3 = 0x277D14000;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = valueCopy;
    if (!v6)
    {
LABEL_12:
      v6 = HFLogForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v41 = objc_opt_class();
        v42 = 2112;
        v43 = valueCopy;
        v21 = v41;
        _os_log_error_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_ERROR, "value is neither HFRangeCotrolItemValue, NSNumber, or HFNumberRange class. Value's class type is %@. value = %@", buf, 0x16u);
      }

      goto LABEL_42;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v7 = MEMORY[0x277D14CF0];
    viewProfile = [(HUQuickControlSingleControlViewController *)self viewProfile];
    controlItem = [(HUQuickControlSingleControlViewController *)self controlItem];
    v10 = [v7 transformerForRingSliderViewProfile:viewProfile rangeControlItem:controlItem];

    v11 = [v10 valueForTransformedValue:valueCopy];
    controlItem2 = [(HUQuickControlSingleControlViewController *)self controlItem];
    v13 = [controlItem2 normalizedValueForValue:v11];

    objc_opt_class();
    v6 = (objc_opt_isKindOfClass() & 1) != 0 ? v13 : 0;

    if (!v6)
    {
      goto LABEL_12;
    }
  }

  controlItem3 = [(HUQuickControlSingleControlViewController *)self controlItem];
  latestResults = [controlItem3 latestResults];
  v16 = [latestResults objectForKey:*MEMORY[0x277D137E0]];

  controlItem4 = [(HUQuickControlSingleControlViewController *)self controlItem];
  objc_opt_class();
  LOBYTE(latestResults) = objc_opt_isKindOfClass();

  v35 = v16;
  if (latestResults)
  {
    v38 = 0;
    v39 = 0;
    [(HUQuickControlRingSliderRangeViewController *)self _getTemperatureThresholdControlItemStateString:&v39 temperatureString:&v38 withRangeControlItemValue:v6];
    v18 = v39;
    v19 = v38;
    v20 = MEMORY[0x277CCFB20];
  }

  else
  {
    controlItem5 = [(HUQuickControlSingleControlViewController *)self controlItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v19 = 0;
      v26 = 0;
      v18 = 0;
      goto LABEL_21;
    }

    v36 = 0;
    v37 = 0;
    [(HUQuickControlRingSliderRangeViewController *)self _getHeaterCoolerThresholdControlItemStateString:&v37 temperatureString:&v36 withRangeControlItemValue:v6];
    v18 = v37;
    v19 = v36;
    v20 = MEMORY[0x277CCF748];
  }

  v24 = [v16 objectForKey:*v20];
  v25 = v24;
  if (v24)
  {
    v26 = [v24 integerValue] == 0;
  }

  else
  {
    v26 = 0;
  }

LABEL_21:
  ringSliderView = [(HUQuickControlRingSliderRangeViewController *)self ringSliderView];
  [ringSliderView updateSupplementaryLabelWithString:v18];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = 40.0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      ringSliderView3 = valueCopy;
      if (objc_opt_isKindOfClass())
      {
        v29 = ringSliderView3;
      }

      else
      {
        v29 = 0;
      }

      v30 = v29;

      if ([v30 mode] == 2)
      {
        v28 = 40.0;
      }

      else
      {
        v28 = 65.0;
      }
    }

    else
    {
      v28 = 65.0;
    }
  }

  ringSliderView2 = [(HUQuickControlRingSliderRangeViewController *)self ringSliderView];
  [ringSliderView2 updatePrimaryLabelWithString:v19 fontSize:v28];

  if (v26)
  {
    v32 = 0;
    v33 = 1;
  }

  else
  {
    ringSliderView2 = [(HUQuickControlRingSliderRangeViewController *)self ringSliderView];
    if ([ringSliderView2 reachabilityState] == 1)
    {
      v32 = 0;
      v33 = 1;
    }

    else
    {
      ringSliderView3 = [(HUQuickControlRingSliderRangeViewController *)self ringSliderView];
      v33 = [ringSliderView3 reachabilityState] == 0;
      v32 = 1;
    }
  }

  ringSliderView4 = [(HUQuickControlRingSliderRangeViewController *)self ringSliderView];
  [ringSliderView4 setShowOffState:v33];

  if (v32)
  {
  }

  if (!v26)
  {
  }

LABEL_42:
}

- (void)modelValueDidChange
{
  v4.receiver = self;
  v4.super_class = HUQuickControlRingSliderRangeViewController;
  [(HUQuickControlSingleControlViewController *)&v4 modelValueDidChange];
  modelValue = [(HUQuickControlSingleControlViewController *)self modelValue];
  [(HUQuickControlRingSliderRangeViewController *)self updateMainStatusStringWithValue:modelValue];

  [(HUQuickControlRingSliderRangeViewController *)self updateSupplementaryValue];
}

- (void)quickControlItemUpdater:(id)updater didUpdateResultsForControlItems:(id)items
{
  updaterCopy = updater;
  itemsCopy = items;
  objc_opt_class();
  interactionCoordinator = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
  controlView = [interactionCoordinator controlView];
  if (objc_opt_isKindOfClass())
  {
    v10 = controlView;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  isUserInteractionActive = [v11 isUserInteractionActive];
  if ((isUserInteractionActive & 1) == 0)
  {
    v13.receiver = self;
    v13.super_class = HUQuickControlRingSliderRangeViewController;
    [(HUQuickControlSingleControlViewController *)&v13 quickControlItemUpdater:updaterCopy didUpdateResultsForControlItems:itemsCopy];
  }

  [(HUQuickControlRingSliderRangeViewController *)self updateSupplementaryValue];
}

- (void)updateSupplementaryValue
{
  v47 = *MEMORY[0x277D85DE8];
  controlItems = [(HUQuickControlViewController *)self controlItems];
  allObjects = [controlItems allObjects];
  firstObject = [allObjects firstObject];
  controlItem = [(HUQuickControlSingleControlViewController *)self controlItem];
  if ([firstObject isEqual:controlItem])
  {
    controlItem2 = [(HUQuickControlSingleControlViewController *)self controlItem];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
    }

    else
    {
      controlItem3 = [(HUQuickControlSingleControlViewController *)self controlItem];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        return;
      }
    }

    controlItem4 = [(HUQuickControlSingleControlViewController *)self controlItem];
    latestResults = [controlItem4 latestResults];
    v11 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13818]];

    mode = [v11 mode];
    if (mode == 2)
    {
      controlItem5 = [(HUQuickControlSingleControlViewController *)self controlItem];
      minimumValueConstraints = [controlItem5 minimumValueConstraints];

      controlItem6 = [(HUQuickControlSingleControlViewController *)self controlItem];
      maximumValueConstraints = [controlItem6 maximumValueConstraints];
    }

    else
    {
      if (mode != 1)
      {
        minimumValueConstraints = 0;
        v18 = 0;
        goto LABEL_16;
      }

      controlItem7 = [(HUQuickControlSingleControlViewController *)self controlItem];
      minimumValueConstraints = [controlItem7 targetValueConstraints];

      controlItem6 = [(HUQuickControlSingleControlViewController *)self controlItem];
      maximumValueConstraints = [controlItem6 targetValueConstraints];
    }

    v18 = maximumValueConstraints;

    if (minimumValueConstraints && v18)
    {
      validRange = [minimumValueConstraints validRange];
      validRange2 = [v18 validRange];
      v21 = [validRange unionRange:validRange2];

      controlItem8 = [(HUQuickControlSingleControlViewController *)self controlItem];
      latestResults2 = [controlItem8 latestResults];
      v24 = [latestResults2 objectForKey:*MEMORY[0x277D137E0]];

      v25 = [v24 objectForKey:*MEMORY[0x277CCF868]];
      [v25 floatValue];
      v27 = v26;
      minValue = [v21 minValue];
      [minValue floatValue];
      v30 = v27 - v29;
      maxValue = [v21 maxValue];
      [maxValue floatValue];
      v33 = v32;
      minValue2 = [v21 minValue];
      [minValue2 floatValue];
      v36 = (v30 / (v33 - v35));

      ringSliderView = [(HUQuickControlRingSliderRangeViewController *)self ringSliderView];
      [ringSliderView setSupplementaryValue:v36];

LABEL_19:
      return;
    }

LABEL_16:
    v38 = HFLogForCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v42 = "[HUQuickControlRingSliderRangeViewController updateSupplementaryValue]";
      v43 = 2112;
      v44 = minimumValueConstraints;
      v45 = 2112;
      v46 = v18;
      _os_log_error_impl(&dword_20CEB6000, v38, OS_LOG_TYPE_ERROR, "%s. Either HFNumberValueConstraints for min and max are nil. (minConstraints = %@, maxConstraints = %@)", buf, 0x20u);
    }

    ringSliderView2 = [(HUQuickControlRingSliderRangeViewController *)self ringSliderView];
    [ringSliderView2 setSupplementaryValue:1.79769313e308];

    goto LABEL_19;
  }
}

- (void)_getTemperatureThresholdControlItemStateString:(id *)string temperatureString:(id *)temperatureString withRangeControlItemValue:(id)value
{
  valueCopy = value;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__8;
  v57 = __Block_byref_object_dispose__8;
  v58 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__8;
  v51 = __Block_byref_object_dispose__8;
  v52 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __138__HUQuickControlRingSliderRangeViewController__getTemperatureThresholdControlItemStateString_temperatureString_withRangeControlItemValue___block_invoke;
  aBlock[3] = &unk_277DBACF0;
  aBlock[6] = string;
  aBlock[7] = temperatureString;
  aBlock[4] = &v53;
  aBlock[5] = &v47;
  v9 = _Block_copy(aBlock);
  controlItem = [(HUQuickControlSingleControlViewController *)self controlItem];
  latestResults = [controlItem latestResults];
  v12 = [latestResults objectForKey:*MEMORY[0x277D137E0]];

  mEMORY[0x277D146A0] = [MEMORY[0x277D146A0] sharedInstance];
  temperatureFormatter = [mEMORY[0x277D146A0] temperatureFormatter];

  [temperatureFormatter setInputIsCelsius:1];
  v15 = [v12 objectForKey:*MEMORY[0x277CCF868]];
  v16 = [v12 objectForKey:*MEMORY[0x277CCFB20]];
  integerValue = [v16 integerValue];
  if (integerValue > 1)
  {
    if (integerValue == 2)
    {
      v30 = _HULocalizedStringWithDefaultValue(@"HUQuickControlTemperatureCoolTo", @"HUQuickControlTemperatureCoolTo", 1);
      localizedUppercaseString = [v30 localizedUppercaseString];
      v32 = v54[5];
      v54[5] = localizedUppercaseString;

      targetValue = [valueCopy targetValue];
      v22 = [temperatureFormatter stringForObjectValue:targetValue];
LABEL_17:
      v36 = v48[5];
      v48[5] = v22;

      goto LABEL_18;
    }

    if (integerValue != 3)
    {
      goto LABEL_19;
    }

    if ([v16 integerValue] == 3)
    {
      minimumValue = [valueCopy minimumValue];
      if (minimumValue)
      {
        maximumValue = [valueCopy maximumValue];
        if (maximumValue)
        {
          targetValue2 = [valueCopy targetValue];

          if (targetValue2)
          {
            goto LABEL_22;
          }
        }

        else
        {
        }
      }
    }

    if ([v16 integerValue] == 3)
    {
      v33 = _HULocalizedStringWithDefaultValue(@"HUQuickControlTemperatureSetTo", @"HUQuickControlTemperatureSetTo", 1);
      localizedUppercaseString2 = [v33 localizedUppercaseString];
      v35 = v54[5];
      v54[5] = localizedUppercaseString2;

      targetValue = [valueCopy targetValue];
      v22 = [temperatureFormatter stringForObjectValue:targetValue];
      goto LABEL_17;
    }

LABEL_22:
    v37 = _HULocalizedStringWithDefaultValue(@"HUQuickControlTemperatureKeepBetween", @"HUQuickControlTemperatureKeepBetween", 1);
    localizedUppercaseString3 = [v37 localizedUppercaseString];
    v39 = v54[5];
    v54[5] = localizedUppercaseString3;

    targetValue = [valueCopy maximumValue];
    v45 = [temperatureFormatter stringForObjectValue:targetValue];
    minimumValue2 = [valueCopy minimumValue];
    v41 = [temperatureFormatter stringForObjectValue:minimumValue2];
    v42 = HFLocalizedStringWithFormat();
    localizedUppercaseString4 = [v42 localizedUppercaseString];
    v44 = v48[5];
    v48[5] = localizedUppercaseString4;

    goto LABEL_18;
  }

  if (integerValue)
  {
    if (integerValue != 1)
    {
      goto LABEL_19;
    }

    v18 = _HULocalizedStringWithDefaultValue(@"HUQuickControlTemperatureHeatTo", @"HUQuickControlTemperatureHeatTo", 1);
    localizedUppercaseString5 = [v18 localizedUppercaseString];
    v20 = v54[5];
    v54[5] = localizedUppercaseString5;

    targetValue = [valueCopy targetValue];
    v22 = [temperatureFormatter stringForObjectValue:targetValue];
    goto LABEL_17;
  }

  v26 = _HULocalizedStringWithDefaultValue(@"HUQuickControlTemperatureNow", @"HUQuickControlTemperatureNow", 1);
  localizedUppercaseString6 = [v26 localizedUppercaseString];
  v28 = v54[5];
  v54[5] = localizedUppercaseString6;

  v29 = [temperatureFormatter stringForObjectValue:v15];
  targetValue = v48[5];
  v48[5] = v29;
LABEL_18:

LABEL_19:
  if (v9)
  {
    v9[2](v9);
  }

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v53, 8);
}

void *__138__HUQuickControlRingSliderRangeViewController__getTemperatureThresholdControlItemStateString_temperatureString_withRangeControlItemValue___block_invoke(void *result)
{
  v1 = result;
  if (result[6])
  {
    result = *(*(result[4] + 8) + 40);
    *v1[6] = result;
  }

  if (v1[7])
  {
    result = *(*(v1[5] + 8) + 40);
    *v1[7] = result;
  }

  return result;
}

- (void)_getHeaterCoolerThresholdControlItemStateString:(id *)string temperatureString:(id *)temperatureString withRangeControlItemValue:(id)value
{
  valueCopy = value;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__8;
  v53 = __Block_byref_object_dispose__8;
  v54 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__8;
  v47 = __Block_byref_object_dispose__8;
  v48 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __139__HUQuickControlRingSliderRangeViewController__getHeaterCoolerThresholdControlItemStateString_temperatureString_withRangeControlItemValue___block_invoke;
  aBlock[3] = &unk_277DBACF0;
  aBlock[6] = string;
  aBlock[7] = temperatureString;
  aBlock[4] = &v49;
  aBlock[5] = &v43;
  v9 = _Block_copy(aBlock);
  controlItem = [(HUQuickControlSingleControlViewController *)self controlItem];
  latestResults = [controlItem latestResults];
  v12 = [latestResults objectForKey:*MEMORY[0x277D137E0]];

  mEMORY[0x277D146A0] = [MEMORY[0x277D146A0] sharedInstance];
  temperatureFormatter = [mEMORY[0x277D146A0] temperatureFormatter];

  [temperatureFormatter setInputIsCelsius:1];
  v15 = [v12 objectForKey:*MEMORY[0x277CCF868]];
  v16 = [v12 objectForKey:*MEMORY[0x277CCFB18]];
  v17 = [v12 objectForKey:*MEMORY[0x277CCF748]];
  if (![v17 integerValue])
  {
    v27 = _HULocalizedStringWithDefaultValue(@"HUQuickControlTemperatureNow", @"HUQuickControlTemperatureNow", 1);
    localizedUppercaseString = [v27 localizedUppercaseString];
    v29 = v50[5];
    v50[5] = localizedUppercaseString;

    v30 = [temperatureFormatter stringForObjectValue:v15];
    targetValue = v44[5];
    v44[5] = v30;
    goto LABEL_13;
  }

  integerValue = [v16 integerValue];
  if (integerValue == 2)
  {
    v34 = _HULocalizedStringWithDefaultValue(@"HUQuickControlTemperatureCoolingTo", @"HUQuickControlTemperatureCoolingTo", 1);
    v35 = v50[5];
    v50[5] = v34;

    targetValue = [valueCopy targetValue];
    v33 = [temperatureFormatter stringForObjectValue:targetValue];
    goto LABEL_12;
  }

  if (integerValue == 1)
  {
    v31 = _HULocalizedStringWithDefaultValue(@"HUQuickControlTemperatureHeatingTo", @"HUQuickControlTemperatureHeatingTo", 1);
    v32 = v50[5];
    v50[5] = v31;

    targetValue = [valueCopy targetValue];
    v33 = [temperatureFormatter stringForObjectValue:targetValue];
LABEL_12:
    v39 = v44[5];
    v44[5] = v33;

    goto LABEL_13;
  }

  if (integerValue)
  {
    goto LABEL_14;
  }

  minimumValue = [valueCopy minimumValue];
  if (!minimumValue || ([valueCopy maximumValue], v20 = objc_claimAutoreleasedReturnValue(), v20, minimumValue, !v20))
  {
    v36 = _HULocalizedStringWithDefaultValue(@"HUQuickControlTemperatureSetTo", @"HUQuickControlTemperatureSetTo", 1);
    localizedUppercaseString2 = [v36 localizedUppercaseString];
    v38 = v50[5];
    v50[5] = localizedUppercaseString2;

    targetValue = [valueCopy targetValue];
    v33 = [temperatureFormatter stringForObjectValue:targetValue];
    goto LABEL_12;
  }

  v21 = _HULocalizedStringWithDefaultValue(@"HUQuickControlTemperatureKeepBetween", @"HUQuickControlTemperatureKeepBetween", 1);
  v22 = v50[5];
  v50[5] = v21;

  targetValue = [valueCopy maximumValue];
  v24 = [temperatureFormatter stringForObjectValue:targetValue];
  minimumValue2 = [valueCopy minimumValue];
  v40 = [temperatureFormatter stringForObjectValue:minimumValue2];
  v25 = HFLocalizedStringWithFormat();
  v26 = v44[5];
  v44[5] = v25;

LABEL_13:
LABEL_14:

  if (v9)
  {
    v9[2](v9);
  }

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v49, 8);
}

void *__139__HUQuickControlRingSliderRangeViewController__getHeaterCoolerThresholdControlItemStateString_temperatureString_withRangeControlItemValue___block_invoke(void *result)
{
  v1 = result;
  if (result[6])
  {
    result = *(*(result[4] + 8) + 40);
    *v1[6] = result;
  }

  if (v1[7])
  {
    result = *(*(v1[5] + 8) + 40);
    *v1[7] = result;
  }

  return result;
}

@end