@interface HUTemperatureControlPanelConfiguration
+ (id)_temperatureFormatter;
- (HUControlPanelRule)rule;
- (void)setupControlsForCell:(id)a3 item:(id)a4;
@end

@implementation HUTemperatureControlPanelConfiguration

+ (id)_temperatureFormatter
{
  v2 = [MEMORY[0x277D146A0] sharedInstance];
  v3 = [v2 temperatureFormatter];

  return v3;
}

- (HUControlPanelRule)rule
{
  v2 = [HUControlPanelFilterRule ruleWithFilter:&__block_literal_global_170];
  [v2 setPriority:100.0];

  return v2;
}

uint64_t __46__HUTemperatureControlPanelConfiguration_rule__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 controlItems];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = [v2 controlItems];
    v6 = [v5 anyObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 incrementalCharacteristicType];
      v8 = [v7 isEqualToString:*MEMORY[0x277CCFB68]];
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

- (void)setupControlsForCell:(id)a3 item:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  v8 = v5;
  v29 = v8;
  if (!v8)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v9 = v29;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v8 = v29;
  v11 = v29;
  if (!v10)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v12 handleFailureInFunction:v13 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v7, objc_opt_class()}];

    v8 = v29;
LABEL_7:
    v11 = 0;
  }

  v14 = objc_opt_class();
  v15 = [v6 controlItems];
  v16 = [v15 anyObject];
  if (v16)
  {
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v16;
    if (v17)
    {
      goto LABEL_15;
    }

    v19 = [MEMORY[0x277CCA890] currentHandler];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v19 handleFailureInFunction:v20 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v14, objc_opt_class()}];
  }

  v18 = 0;
LABEL_15:

  v21 = objc_alloc_init(HUStepperControlView);
  v22 = [v6 identifierForControlItem:v18];
  [(HUStepperControlView *)v21 setIdentifier:v22];

  v23 = [v18 minValue];
  [v23 doubleValue];
  [(HUStepperControlView *)v21 setMinValue:?];

  v24 = [v18 maxValue];
  [v24 doubleValue];
  [(HUStepperControlView *)v21 setMaxValue:?];

  v25 = [v18 stepValue];
  [v25 doubleValue];
  [(HUStepperControlView *)v21 setStepValue:?];

  v26 = [objc_opt_class() _temperatureFormatter];
  [(HUStepperControlView *)v21 setValueFormatter:v26];

  [v11 setControlView:v21];
  v27 = [v6 latestResults];
  v28 = [v27 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [v11 setControlTitle:v28];
}

@end