@interface HUQuickControlRingSliderRangeViewController
+ (id)controlItemPredicate;
- (id)controlToViewValueTransformer;
- (id)createInteractionCoordinator;
- (id)createViewProfile;
- (void)_getHeaterCoolerThresholdControlItemStateString:(id *)a3 temperatureString:(id *)a4 withRangeControlItemValue:(id)a5;
- (void)_getTemperatureThresholdControlItemStateString:(id *)a3 temperatureString:(id *)a4 withRangeControlItemValue:(id)a5;
- (void)interactionCoordinator:(id)a3 viewValueDidChange:(id)a4;
- (void)invalidateViewProfile;
- (void)modelValueDidChange;
- (void)quickControlItemUpdater:(id)a3 didUpdateResultsForControlItems:(id)a4;
- (void)updateMainStatusStringWithValue:(id)a3;
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
  v4 = [(HUQuickControlSingleControlViewController *)self viewProfile];
  v5 = [(HUQuickControlRingSliderView *)v3 initWithProfile:v4];
  [(HUQuickControlRingSliderRangeViewController *)self setRingSliderView:v5];

  v6 = [HUQuickControlRingSliderInteractionCoordinator alloc];
  v7 = [(HUQuickControlRingSliderRangeViewController *)self ringSliderView];
  v8 = [(HUQuickControlRingSliderInteractionCoordinator *)v6 initWithControlView:v7 delegate:self];

  v9 = [(HUQuickControlRingSliderRangeViewController *)self ringSliderView];
  [v9 setInteractionDelegate:v8];

  return v8;
}

- (id)createViewProfile
{
  v3 = objc_alloc_init(HUQuickControlRingSliderViewProfile);
  [(HUQuickControlRingSliderViewProfile *)v3 setIsHandleViewVisible:0];
  [(HUQuickControlRingSliderViewProfile *)v3 setHasOffState:0];
  [(HUQuickControlRingSliderViewProfile *)v3 setHandleViewStyle:2];
  v4 = [(HUQuickControlSingleControlViewController *)self controlItem];
  v5 = [v4 latestResults];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D13818]];

  v7 = [v6 mode];
  if (v7 == 2)
  {
    v104 = v6;
    [(HUQuickControlRingSliderViewProfile *)v3 setHasSecondaryValue:1];
    v28 = MEMORY[0x277D14BE0];
    v29 = [(HUQuickControlSingleControlViewController *)self controlItem];
    v30 = [v29 minimumValueConstraints];
    v31 = [v30 validRange];
    v32 = [MEMORY[0x277D14BF8] sharedCoordinator];
    v13 = [v28 integerTemperatureRangeWithinNumberRange:v31 representsCelsius:{objc_msgSend(v32, "isCelsius")}];

    v33 = objc_alloc(MEMORY[0x277D148E0]);
    v34 = [v13 minValue];
    v35 = [v13 maxValue];
    v36 = [(HUQuickControlSingleControlViewController *)self controlItem];
    [v36 minimumValueConstraints];
    v38 = v37 = self;
    v39 = [v38 stepValue];
    v20 = [v33 initWithMinValue:v34 maxValue:v35 stepValue:v39];

    v40 = MEMORY[0x277D14BE0];
    v41 = [(HUQuickControlSingleControlViewController *)v37 controlItem];
    v42 = [v41 maximumValueConstraints];
    v43 = [v42 validRange];
    v44 = [MEMORY[0x277D14BF8] sharedCoordinator];
    v25 = [v40 integerTemperatureRangeWithinNumberRange:v43 representsCelsius:{objc_msgSend(v44, "isCelsius")}];

    v45 = objc_alloc(MEMORY[0x277D148E0]);
    v46 = [v25 minValue];
    v47 = [v25 maxValue];
    v105 = v37;
    v48 = [(HUQuickControlSingleControlViewController *)v37 controlItem];
    v49 = [v48 maximumValueConstraints];
    v50 = [v49 stepValue];
    v51 = [v45 initWithMinValue:v46 maxValue:v47 stepValue:v50];

    v52 = [v13 unionRange:v25];
    v53 = [v52 minValue];
    [v53 floatValue];
    v24 = v54;

    v55 = [v52 maxValue];
    [v55 floatValue];
    v27 = v56;

    v57 = [v51 percentageConstraintsWithinRange:v52];
    [(HUQuickControlRingSliderViewProfile *)v3 setPrimaryValueConstraints:v57];

    v58 = [v20 percentageConstraintsWithinRange:v52];
    [(HUQuickControlRingSliderViewProfile *)v3 setSecondaryValueConstraints:v58];
  }

  else
  {
    if (v7 != 1)
    {
      goto LABEL_47;
    }

    v104 = v6;
    v8 = MEMORY[0x277D14BE0];
    v9 = [(HUQuickControlSingleControlViewController *)self controlItem];
    v10 = [v9 targetValueConstraints];
    v11 = [v10 validRange];
    v12 = [MEMORY[0x277D14BF8] sharedCoordinator];
    v13 = [v8 integerTemperatureRangeWithinNumberRange:v11 representsCelsius:{objc_msgSend(v12, "isCelsius")}];

    v14 = objc_alloc(MEMORY[0x277D148E0]);
    v15 = [v13 minValue];
    v16 = [v13 maxValue];
    v105 = self;
    v17 = [(HUQuickControlSingleControlViewController *)self controlItem];
    v18 = [v17 targetValueConstraints];
    v19 = [v18 stepValue];
    v20 = [v14 initWithMinValue:v15 maxValue:v16 stepValue:v19];

    v21 = [v20 percentageConstraintsWithinRange:v13];
    [(HUQuickControlRingSliderViewProfile *)v3 setPrimaryValueConstraints:v21];

    v22 = [v13 minValue];
    [v22 floatValue];
    v24 = v23;

    v25 = [v13 maxValue];
    [v25 floatValue];
    v27 = v26;
  }

  v6 = v104;
  self = v105;
  if (v24 != v27)
  {
    v59 = v24;
    v60 = v27;
    v61 = [MEMORY[0x277D14BF8] sharedCoordinator];
    v62 = [v61 isCelsius];

    if (!v62)
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
          v81 = [(HUQuickControlRingSliderViewProfile *)v3 gradationMarkingValues];
          v82 = [v81 arrayByAddingObject:v80];
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
    v63 = [(HUQuickControlSingleControlViewController *)v105 controlItem];
    if (objc_opt_isKindOfClass())
    {
      v64 = v63;
    }

    else
    {
      v64 = 0;
    }

    v65 = v64;

    objc_opt_class();
    v66 = [(HUQuickControlSingleControlViewController *)v105 controlItem];
    if (objc_opt_isKindOfClass())
    {
      v67 = v66;
    }

    else
    {
      v67 = 0;
    }

    v68 = v67;

    v69 = [v104 mode];
    if (v69 != 2)
    {
      if (v69 != 1)
      {
        goto LABEL_41;
      }

      v70 = [v65 targetValueConstraints];
      v71 = [v70 stepValue];

      if (v68)
      {
        v72 = [v68 targetValueConstraints];
        v73 = [v72 stepValue];

        v71 = v73;
      }

      v74 = [v71 isEqualToNumber:&unk_282491088];

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
          v99 = [(HUQuickControlRingSliderViewProfile *)v3 gradationMarkingValues];
          v100 = [v99 arrayByAddingObject:v98];
          [(HUQuickControlRingSliderViewProfile *)v3 setGradationMarkingValues:v100];

          v96 = v95 + v96;
        }

        while (v96 <= v60);
      }

      goto LABEL_46;
    }

    v83 = [v65 minimumValueConstraints];
    v84 = [v83 stepValue];

    v85 = [v65 maximumValueConstraints];
    v86 = [v85 stepValue];

    if (v68)
    {
      v87 = [v68 minimumValueConstraints];
      v88 = [v87 stepValue];

      v89 = [v68 maximumValueConstraints];
      v90 = [v89 stepValue];

      v86 = v90;
      v84 = v88;
    }

    if (v84 && v86)
    {
      v91 = [v84 intValue];
      v92 = [v86 intValue];
      if (v91 <= v92)
      {
        v93 = v92;
      }

      else
      {
        v93 = v91;
      }

      if (v93 != 1)
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (!(v84 | v86))
      {
LABEL_40:

LABEL_41:
        v95 = 0.5;
        v77 = 2;
        goto LABEL_42;
      }

      if (v84)
      {
        v94 = v84;
      }

      else
      {
        v94 = v86;
      }

      [v94 isEqualToNumber:&unk_282491088];
    }

    goto LABEL_39;
  }

LABEL_47:
  [(HUQuickControlRingSliderViewProfile *)v3 setStyle:0];
  v101 = [(HUQuickControlSingleControlViewController *)self controlItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(HUQuickControlRingSliderViewProfile *)v3 setShouldShowSupplementaryValue:1];
  }

  else
  {
    v102 = [(HUQuickControlSingleControlViewController *)self controlItem];
    objc_opt_class();
    [(HUQuickControlRingSliderViewProfile *)v3 setShouldShowSupplementaryValue:objc_opt_isKindOfClass() & 1];
  }

  return v3;
}

- (id)controlToViewValueTransformer
{
  v3 = [(HUQuickControlSingleControlViewController *)self viewProfile];
  v4 = [(HUQuickControlSingleControlViewController *)self controlItem];
  v5 = [MEMORY[0x277D14CF0] transformerForRingSliderViewProfile:v3 rangeControlItem:v4];

  return v5;
}

- (void)interactionCoordinator:(id)a3 viewValueDidChange:(id)a4
{
  v7.receiver = self;
  v7.super_class = HUQuickControlRingSliderRangeViewController;
  v6 = a4;
  [(HUQuickControlSingleControlViewController *)&v7 interactionCoordinator:a3 viewValueDidChange:v6];
  [(HUQuickControlRingSliderRangeViewController *)self updateMainStatusStringWithValue:v6, v7.receiver, v7.super_class];

  [(HUQuickControlRingSliderRangeViewController *)self updateSupplementaryValue];
}

- (void)invalidateViewProfile
{
  v4.receiver = self;
  v4.super_class = HUQuickControlRingSliderRangeViewController;
  [(HUQuickControlSingleControlViewController *)&v4 invalidateViewProfile];
  v3 = [(HUQuickControlSingleControlViewController *)self modelValue];
  [(HUQuickControlRingSliderRangeViewController *)self updateMainStatusStringWithValue:v3];
}

- (void)updateMainStatusStringWithValue:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = 0x277D14000;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    if (!v6)
    {
LABEL_12:
      v6 = HFLogForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v41 = objc_opt_class();
        v42 = 2112;
        v43 = v4;
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
    v8 = [(HUQuickControlSingleControlViewController *)self viewProfile];
    v9 = [(HUQuickControlSingleControlViewController *)self controlItem];
    v10 = [v7 transformerForRingSliderViewProfile:v8 rangeControlItem:v9];

    v11 = [v10 valueForTransformedValue:v4];
    v12 = [(HUQuickControlSingleControlViewController *)self controlItem];
    v13 = [v12 normalizedValueForValue:v11];

    objc_opt_class();
    v6 = (objc_opt_isKindOfClass() & 1) != 0 ? v13 : 0;

    if (!v6)
    {
      goto LABEL_12;
    }
  }

  v14 = [(HUQuickControlSingleControlViewController *)self controlItem];
  v15 = [v14 latestResults];
  v16 = [v15 objectForKey:*MEMORY[0x277D137E0]];

  v17 = [(HUQuickControlSingleControlViewController *)self controlItem];
  objc_opt_class();
  LOBYTE(v15) = objc_opt_isKindOfClass();

  v35 = v16;
  if (v15)
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
    v22 = [(HUQuickControlSingleControlViewController *)self controlItem];
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
  v27 = [(HUQuickControlRingSliderRangeViewController *)self ringSliderView];
  [v27 updateSupplementaryLabelWithString:v18];

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
      v5 = v4;
      if (objc_opt_isKindOfClass())
      {
        v29 = v5;
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

  v31 = [(HUQuickControlRingSliderRangeViewController *)self ringSliderView];
  [v31 updatePrimaryLabelWithString:v19 fontSize:v28];

  if (v26)
  {
    v32 = 0;
    v33 = 1;
  }

  else
  {
    v31 = [(HUQuickControlRingSliderRangeViewController *)self ringSliderView];
    if ([v31 reachabilityState] == 1)
    {
      v32 = 0;
      v33 = 1;
    }

    else
    {
      v5 = [(HUQuickControlRingSliderRangeViewController *)self ringSliderView];
      v33 = [v5 reachabilityState] == 0;
      v32 = 1;
    }
  }

  v34 = [(HUQuickControlRingSliderRangeViewController *)self ringSliderView];
  [v34 setShowOffState:v33];

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
  v3 = [(HUQuickControlSingleControlViewController *)self modelValue];
  [(HUQuickControlRingSliderRangeViewController *)self updateMainStatusStringWithValue:v3];

  [(HUQuickControlRingSliderRangeViewController *)self updateSupplementaryValue];
}

- (void)quickControlItemUpdater:(id)a3 didUpdateResultsForControlItems:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v8 = [(HUQuickControlSingleControlViewController *)self interactionCoordinator];
  v9 = [v8 controlView];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [v11 isUserInteractionActive];
  if ((v12 & 1) == 0)
  {
    v13.receiver = self;
    v13.super_class = HUQuickControlRingSliderRangeViewController;
    [(HUQuickControlSingleControlViewController *)&v13 quickControlItemUpdater:v6 didUpdateResultsForControlItems:v7];
  }

  [(HUQuickControlRingSliderRangeViewController *)self updateSupplementaryValue];
}

- (void)updateSupplementaryValue
{
  v47 = *MEMORY[0x277D85DE8];
  v40 = [(HUQuickControlViewController *)self controlItems];
  v3 = [v40 allObjects];
  v4 = [v3 firstObject];
  v5 = [(HUQuickControlSingleControlViewController *)self controlItem];
  if ([v4 isEqual:v5])
  {
    v6 = [(HUQuickControlSingleControlViewController *)self controlItem];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
    }

    else
    {
      v7 = [(HUQuickControlSingleControlViewController *)self controlItem];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        return;
      }
    }

    v9 = [(HUQuickControlSingleControlViewController *)self controlItem];
    v10 = [v9 latestResults];
    v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277D13818]];

    v12 = [v11 mode];
    if (v12 == 2)
    {
      v17 = [(HUQuickControlSingleControlViewController *)self controlItem];
      v14 = [v17 minimumValueConstraints];

      v15 = [(HUQuickControlSingleControlViewController *)self controlItem];
      v16 = [v15 maximumValueConstraints];
    }

    else
    {
      if (v12 != 1)
      {
        v14 = 0;
        v18 = 0;
        goto LABEL_16;
      }

      v13 = [(HUQuickControlSingleControlViewController *)self controlItem];
      v14 = [v13 targetValueConstraints];

      v15 = [(HUQuickControlSingleControlViewController *)self controlItem];
      v16 = [v15 targetValueConstraints];
    }

    v18 = v16;

    if (v14 && v18)
    {
      v19 = [v14 validRange];
      v20 = [v18 validRange];
      v21 = [v19 unionRange:v20];

      v22 = [(HUQuickControlSingleControlViewController *)self controlItem];
      v23 = [v22 latestResults];
      v24 = [v23 objectForKey:*MEMORY[0x277D137E0]];

      v25 = [v24 objectForKey:*MEMORY[0x277CCF868]];
      [v25 floatValue];
      v27 = v26;
      v28 = [v21 minValue];
      [v28 floatValue];
      v30 = v27 - v29;
      v31 = [v21 maxValue];
      [v31 floatValue];
      v33 = v32;
      v34 = [v21 minValue];
      [v34 floatValue];
      v36 = (v30 / (v33 - v35));

      v37 = [(HUQuickControlRingSliderRangeViewController *)self ringSliderView];
      [v37 setSupplementaryValue:v36];

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
      v44 = v14;
      v45 = 2112;
      v46 = v18;
      _os_log_error_impl(&dword_20CEB6000, v38, OS_LOG_TYPE_ERROR, "%s. Either HFNumberValueConstraints for min and max are nil. (minConstraints = %@, maxConstraints = %@)", buf, 0x20u);
    }

    v39 = [(HUQuickControlRingSliderRangeViewController *)self ringSliderView];
    [v39 setSupplementaryValue:1.79769313e308];

    goto LABEL_19;
  }
}

- (void)_getTemperatureThresholdControlItemStateString:(id *)a3 temperatureString:(id *)a4 withRangeControlItemValue:(id)a5
{
  v8 = a5;
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
  aBlock[6] = a3;
  aBlock[7] = a4;
  aBlock[4] = &v53;
  aBlock[5] = &v47;
  v9 = _Block_copy(aBlock);
  v10 = [(HUQuickControlSingleControlViewController *)self controlItem];
  v11 = [v10 latestResults];
  v12 = [v11 objectForKey:*MEMORY[0x277D137E0]];

  v13 = [MEMORY[0x277D146A0] sharedInstance];
  v14 = [v13 temperatureFormatter];

  [v14 setInputIsCelsius:1];
  v15 = [v12 objectForKey:*MEMORY[0x277CCF868]];
  v16 = [v12 objectForKey:*MEMORY[0x277CCFB20]];
  v17 = [v16 integerValue];
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v30 = _HULocalizedStringWithDefaultValue(@"HUQuickControlTemperatureCoolTo", @"HUQuickControlTemperatureCoolTo", 1);
      v31 = [v30 localizedUppercaseString];
      v32 = v54[5];
      v54[5] = v31;

      v21 = [v8 targetValue];
      v22 = [v14 stringForObjectValue:v21];
LABEL_17:
      v36 = v48[5];
      v48[5] = v22;

      goto LABEL_18;
    }

    if (v17 != 3)
    {
      goto LABEL_19;
    }

    if ([v16 integerValue] == 3)
    {
      v23 = [v8 minimumValue];
      if (v23)
      {
        v24 = [v8 maximumValue];
        if (v24)
        {
          v25 = [v8 targetValue];

          if (v25)
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
      v34 = [v33 localizedUppercaseString];
      v35 = v54[5];
      v54[5] = v34;

      v21 = [v8 targetValue];
      v22 = [v14 stringForObjectValue:v21];
      goto LABEL_17;
    }

LABEL_22:
    v37 = _HULocalizedStringWithDefaultValue(@"HUQuickControlTemperatureKeepBetween", @"HUQuickControlTemperatureKeepBetween", 1);
    v38 = [v37 localizedUppercaseString];
    v39 = v54[5];
    v54[5] = v38;

    v21 = [v8 maximumValue];
    v45 = [v14 stringForObjectValue:v21];
    v40 = [v8 minimumValue];
    v41 = [v14 stringForObjectValue:v40];
    v42 = HFLocalizedStringWithFormat();
    v43 = [v42 localizedUppercaseString];
    v44 = v48[5];
    v48[5] = v43;

    goto LABEL_18;
  }

  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_19;
    }

    v18 = _HULocalizedStringWithDefaultValue(@"HUQuickControlTemperatureHeatTo", @"HUQuickControlTemperatureHeatTo", 1);
    v19 = [v18 localizedUppercaseString];
    v20 = v54[5];
    v54[5] = v19;

    v21 = [v8 targetValue];
    v22 = [v14 stringForObjectValue:v21];
    goto LABEL_17;
  }

  v26 = _HULocalizedStringWithDefaultValue(@"HUQuickControlTemperatureNow", @"HUQuickControlTemperatureNow", 1);
  v27 = [v26 localizedUppercaseString];
  v28 = v54[5];
  v54[5] = v27;

  v29 = [v14 stringForObjectValue:v15];
  v21 = v48[5];
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

- (void)_getHeaterCoolerThresholdControlItemStateString:(id *)a3 temperatureString:(id *)a4 withRangeControlItemValue:(id)a5
{
  v8 = a5;
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
  aBlock[6] = a3;
  aBlock[7] = a4;
  aBlock[4] = &v49;
  aBlock[5] = &v43;
  v9 = _Block_copy(aBlock);
  v10 = [(HUQuickControlSingleControlViewController *)self controlItem];
  v11 = [v10 latestResults];
  v12 = [v11 objectForKey:*MEMORY[0x277D137E0]];

  v13 = [MEMORY[0x277D146A0] sharedInstance];
  v14 = [v13 temperatureFormatter];

  [v14 setInputIsCelsius:1];
  v15 = [v12 objectForKey:*MEMORY[0x277CCF868]];
  v16 = [v12 objectForKey:*MEMORY[0x277CCFB18]];
  v17 = [v12 objectForKey:*MEMORY[0x277CCF748]];
  if (![v17 integerValue])
  {
    v27 = _HULocalizedStringWithDefaultValue(@"HUQuickControlTemperatureNow", @"HUQuickControlTemperatureNow", 1);
    v28 = [v27 localizedUppercaseString];
    v29 = v50[5];
    v50[5] = v28;

    v30 = [v14 stringForObjectValue:v15];
    v23 = v44[5];
    v44[5] = v30;
    goto LABEL_13;
  }

  v18 = [v16 integerValue];
  if (v18 == 2)
  {
    v34 = _HULocalizedStringWithDefaultValue(@"HUQuickControlTemperatureCoolingTo", @"HUQuickControlTemperatureCoolingTo", 1);
    v35 = v50[5];
    v50[5] = v34;

    v23 = [v8 targetValue];
    v33 = [v14 stringForObjectValue:v23];
    goto LABEL_12;
  }

  if (v18 == 1)
  {
    v31 = _HULocalizedStringWithDefaultValue(@"HUQuickControlTemperatureHeatingTo", @"HUQuickControlTemperatureHeatingTo", 1);
    v32 = v50[5];
    v50[5] = v31;

    v23 = [v8 targetValue];
    v33 = [v14 stringForObjectValue:v23];
LABEL_12:
    v39 = v44[5];
    v44[5] = v33;

    goto LABEL_13;
  }

  if (v18)
  {
    goto LABEL_14;
  }

  v19 = [v8 minimumValue];
  if (!v19 || ([v8 maximumValue], v20 = objc_claimAutoreleasedReturnValue(), v20, v19, !v20))
  {
    v36 = _HULocalizedStringWithDefaultValue(@"HUQuickControlTemperatureSetTo", @"HUQuickControlTemperatureSetTo", 1);
    v37 = [v36 localizedUppercaseString];
    v38 = v50[5];
    v50[5] = v37;

    v23 = [v8 targetValue];
    v33 = [v14 stringForObjectValue:v23];
    goto LABEL_12;
  }

  v21 = _HULocalizedStringWithDefaultValue(@"HUQuickControlTemperatureKeepBetween", @"HUQuickControlTemperatureKeepBetween", 1);
  v22 = v50[5];
  v50[5] = v21;

  v23 = [v8 maximumValue];
  v24 = [v14 stringForObjectValue:v23];
  v41 = [v8 minimumValue];
  v40 = [v14 stringForObjectValue:v41];
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