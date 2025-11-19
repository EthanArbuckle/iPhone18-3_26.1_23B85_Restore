@interface HFLightbulbControlItem
+ (id)optionsForPrimaryStateControlItem:(id)a3 incrementalCharacteristicType:(id)a4;
+ (id)readOnlyCharacteristicTypes;
- (BOOL)supportsRGBColor;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)_tintColorForNaturalLightFromResults:(id)a3;
- (id)_tintColorFromResults:(id)a3;
- (id)readValueAndPopulateStandardResults;
- (id)writeValue:(id)a3;
@end

@implementation HFLightbulbControlItem

+ (id)readOnlyCharacteristicTypes
{
  if (qword_280E02370 != -1)
  {
    dispatch_once(&qword_280E02370, &__block_literal_global_156);
  }

  v3 = qword_280E02378;

  return v3;
}

void __53__HFLightbulbControlItem_readOnlyCharacteristicTypes__block_invoke_2()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CCFA30], *MEMORY[0x277CCF7D8], *MEMORY[0x277CCF8D8], 0}];
  v1 = qword_280E02378;
  qword_280E02378 = v0;
}

- (BOOL)supportsRGBColor
{
  if (qword_280E02380 != -1)
  {
    dispatch_once(&qword_280E02380, &__block_literal_global_160);
  }

  v3 = qword_280E02388;
  v4 = [(HFControlItem *)self characteristicOptions];
  v5 = [v4 characteristicTypesForUsage:2];
  v6 = [v3 isSubsetOfSet:v5];

  return v6;
}

void __42__HFLightbulbControlItem_supportsRGBColor__block_invoke_2()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CCF8D8], *MEMORY[0x277CCFA30], 0}];
  v1 = qword_280E02388;
  qword_280E02388 = v0;
}

+ (id)optionsForPrimaryStateControlItem:(id)a3 incrementalCharacteristicType:(id)a4
{
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___HFLightbulbControlItem;
  v5 = objc_msgSendSuper2(&v9, sel_optionsForPrimaryStateControlItem_incrementalCharacteristicType_, a3, a4);
  v6 = [a1 readOnlyCharacteristicTypes];
  v7 = [v5 optionsByAddingCharacteristicTypes:v6 forUsage:2];

  return v7;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v10.receiver = self;
  v10.super_class = HFLightbulbControlItem;
  v5 = [(HFControlItem *)&v10 _subclass_updateWithOptions:v4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__HFLightbulbControlItem__subclass_updateWithOptions___block_invoke;
  v8[3] = &unk_277DF5A08;
  objc_copyWeak(&v9, &location);
  v6 = [v5 flatMap:v8];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);

  return v6;
}

id __54__HFLightbulbControlItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 mutableCopy];

  v6 = [v5 objectForKeyedSubscript:@"dependentHomeKitObjects"];
  v7 = [v6 mutableCopy];
  v8 = [WeakRetained valueSource];
  if ([v8 conformsToProtocol:&unk_28252FC50])
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v10 lightProfiles];

  [v7 unionSet:v11];
  [v5 setObject:v7 forKeyedSubscript:@"dependentHomeKitObjects"];
  v12 = [MEMORY[0x277D2C900] futureWithResult:v5];

  return v12;
}

- (id)_tintColorFromResults:(id)a3
{
  v4 = [a3 objectForKey:@"characteristicValuesByType"];
  v5 = [v4 objectForKey:*MEMORY[0x277CCFA30]];
  v6 = [v4 objectForKey:*MEMORY[0x277CCF7D8]];
  v7 = [v4 objectForKey:*MEMORY[0x277CCF8D8]];
  v8 = [(HFControlItem *)self valueSource];
  v9 = [v8 primaryServiceDescriptor];
  v10 = [v9 serviceType];
  v11 = [v10 isEqualToString:*MEMORY[0x277CD0EA0]];

  if (v11)
  {
    if (v7)
    {
      v12 = v5 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      [v7 floatValue];
      v15 = (v14 / 360.0);
      [v5 floatValue];
      v17 = (v16 / 100.0);
      v18 = MEMORY[0x277D75348];
      v19 = 1.0;
      v20 = 1.0;
      v21 = v15;
LABEL_10:
      v22 = [v18 colorWithHue:v21 saturation:v17 brightness:v19 alpha:v20];
      goto LABEL_16;
    }

    if (v7)
    {
      [v7 floatValue];
      v21 = (v13 / 360.0);
      v18 = MEMORY[0x277D75348];
      v17 = 1.0;
LABEL_9:
      v19 = 1.0;
      v20 = 1.0;
      goto LABEL_10;
    }

    if (v6)
    {
      v23 = [HFTemperatureColor alloc];
      [v6 floatValue];
      v24 = [(HFTemperatureColor *)v23 initWithTemperatureInMired:?];
      v25 = [(HFTemperatureColor *)v24 hf_RGBColorRepresentation];
      v22 = [v25 UIColor];

      goto LABEL_16;
    }

    if (v5)
    {
      [v5 floatValue];
      v17 = (v26 / 100.0);
      v18 = MEMORY[0x277D75348];
      v21 = 1.0;
      goto LABEL_9;
    }
  }

  v22 = 0;
LABEL_16:

  return v22;
}

- (id)_tintColorForNaturalLightFromResults:(id)a3
{
  v4 = a3;
  v5 = [(HFControlItem *)self valueSource];
  if ([v5 conformsToProtocol:&unk_28252FC50])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v4 objectForKey:@"characteristicValuesByType"];

  v9 = [v8 objectForKey:*MEMORY[0x277CCF788]];
  v10 = [MEMORY[0x277D2C900] futureWithNoResult];
  v11 = [(HFControlItem *)self valueSource];
  v12 = [v11 primaryServiceDescriptor];
  v13 = [v12 serviceType];
  if ([v13 isEqualToString:*MEMORY[0x277CD0EA0]])
  {
    v14 = [v7 isNaturalLightingEnabled];

    if (v14)
    {
      v15 = objc_alloc_init(MEMORY[0x277D2C900]);

      v16 = [v9 integerValue];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __63__HFLightbulbControlItem__tintColorForNaturalLightFromResults___block_invoke;
      v18[3] = &unk_277DF5A30;
      v10 = v15;
      v19 = v10;
      [v7 fetchNaturalLightColorTemperatureForBrightness:v16 completion:v18];
    }
  }

  else
  {
  }

  return v10;
}

uint64_t __63__HFLightbulbControlItem__tintColorForNaturalLightFromResults___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishWithResult:a2];
  }

  else
  {
    return [v2 finishWithNoResult];
  }
}

- (id)readValueAndPopulateStandardResults
{
  v7.receiver = self;
  v7.super_class = HFLightbulbControlItem;
  v3 = [(HFControlItem *)&v7 readValueAndPopulateStandardResults];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__HFLightbulbControlItem_readValueAndPopulateStandardResults__block_invoke;
  v6[3] = &unk_277DF3FD0;
  v6[4] = self;
  v4 = [v3 flatMap:v6];

  return v4;
}

id __61__HFLightbulbControlItem_readValueAndPopulateStandardResults__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a2;
  v5 = [v3 dictionaryWithDictionary:v4];
  v6 = [*(a1 + 32) _tintColorFromResults:v4];
  [v5 na_safeSetObject:v6 forKey:@"tintColor"];
  v7 = [*(a1 + 32) _tintColorForNaturalLightFromResults:v4];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__HFLightbulbControlItem_readValueAndPopulateStandardResults__block_invoke_2;
  v11[3] = &unk_277DF5A58;
  v12 = v5;
  v8 = v5;
  v9 = [v7 flatMap:v11];

  return v9;
}

id __61__HFLightbulbControlItem_readValueAndPopulateStandardResults__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) na_safeSetObject:v3 forKey:@"tintColor"];
  }

  v4 = [MEMORY[0x277D2C900] futureWithResult:*(a1 + 32)];

  return v4;
}

- (id)writeValue:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (+[HFUtilities isInternalInstall])
  {
    objc_opt_class();
    v5 = [(HFControlItem *)self valueSource];
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    objc_opt_class();
    v8 = [v7 valueSource];

    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = [v10 originalValueSource];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = +[HFFormatterManager sharedInstance];
      v13 = [v12 percentFormatter];

      if (v4)
      {
        v14 = [v13 stringForNormalizedObjectValue:v4];
      }

      else
      {
        v14 = @"<no value>";
      }

      v15 = [(HFControlItem *)self valueSource];
      v16 = [v15 allServices];
      v17 = [v16 anyObject];
      v18 = [v17 name];

      v19 = HFLogForCategory(0x4BuLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v25 = v18;
        v26 = 2112;
        v27 = v14;
        v28 = 2112;
        v29 = objc_opt_class();
        _os_log_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEFAULT, "User changed brightness for light %@. Value: %@. Value Source: %@", buf, 0x20u);
      }
    }
  }

  v23.receiver = self;
  v23.super_class = HFLightbulbControlItem;
  v20 = [(HFIncrementalStateControlItem *)&v23 writeValue:v4];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

@end