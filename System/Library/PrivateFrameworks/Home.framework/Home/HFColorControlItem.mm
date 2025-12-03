@interface HFColorControlItem
+ (id)colorCharacteristicTypes;
+ (id)na_identity;
- (BOOL)canCopyWithCharacteristicOptions:(id)options;
- (BOOL)naturalLightingEnabled;
- (BOOL)supportsNaturalLighting;
- (BOOL)supportsRGBColor;
- (HFColorControlItem)initWithValueSource:(id)source characteristicOptions:(id)options displayResults:(id)results;
- (HFColorControlItem)initWithValueSource:(id)source displayResults:(id)results;
- (HFColorProfile)colorProfile;
- (id)_subclass_updateWithOptions:(id)options;
- (id)characteristicValuesForValue:(id)value;
- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source;
- (id)normalizedValueForValue:(id)value;
- (id)valueForCharacteristicType:(id)type inBatchReadResponse:(id)response;
- (id)valueForCharacteristicValues:(id)values;
- (id)writeValue:(id)value;
- (void)_logForNaturalLightUserStudy:(id)study;
@end

@implementation HFColorControlItem

+ (id)colorCharacteristicTypes
{
  if (_MergedGlobals_317 != -1)
  {
    dispatch_once(&_MergedGlobals_317, &__block_literal_global_4_16);
  }

  v3 = qword_280E03C88;

  return v3;
}

void __46__HFColorControlItem_colorCharacteristicTypes__block_invoke_2()
{
  v6[3] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CCFA30];
  v6[0] = *MEMORY[0x277CCF8D8];
  v6[1] = v1;
  v6[2] = *MEMORY[0x277CCF7D8];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:3];
  v3 = [v0 setWithArray:v2];
  v4 = qword_280E03C88;
  qword_280E03C88 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

- (HFColorControlItem)initWithValueSource:(id)source displayResults:(id)results
{
  v21[1] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  resultsCopy = results;
  colorCharacteristicTypes = [objc_opt_class() colorCharacteristicTypes];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __57__HFColorControlItem_initWithValueSource_displayResults___block_invoke;
  v18[3] = &unk_277DF3130;
  v19 = sourceCopy;
  v9 = sourceCopy;
  v10 = [colorCharacteristicTypes na_filter:v18];

  v11 = [HFControlItemCharacteristicOptions alloc];
  v20 = &unk_282525068;
  v21[0] = v10;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v13 = [(HFControlItemCharacteristicOptions *)v11 initWithCharacteristicTypesByUsage:v12];

  v17.receiver = self;
  v17.super_class = HFColorControlItem;
  v14 = [(HFControlItem *)&v17 initWithValueSource:v9 characteristicOptions:v13 displayResults:resultsCopy];

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

BOOL __57__HFColorControlItem_initWithValueSource_displayResults___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) allCharacteristicsForCharacteristicType:a2];
  v3 = [v2 count] != 0;

  return v3;
}

- (HFColorControlItem)initWithValueSource:(id)source characteristicOptions:(id)options displayResults:(id)results
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithValueSource_displayResults_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFColorControlItem.m" lineNumber:64 description:{@"%s is unavailable; use %@ instead", "-[HFColorControlItem initWithValueSource:characteristicOptions:displayResults:]", v8}];

  return 0;
}

- (BOOL)canCopyWithCharacteristicOptions:(id)options
{
  optionsCopy = options;
  characteristicOptions = [(HFControlItem *)self characteristicOptions];
  v6 = [optionsCopy isEqual:characteristicOptions];

  return v6;
}

- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source
{
  sourceCopy = source;
  if ([(HFColorControlItem *)self canCopyWithCharacteristicOptions:options])
  {
    v7 = objc_alloc(objc_opt_class());
    displayResults = [(HFControlItem *)self displayResults];
    v9 = [v7 initWithValueSource:sourceCopy displayResults:displayResults];

    [v9 copyLatestResultsFromItem:self];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __55__HFColorControlItem_supportsItemRepresentingServices___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 hf_characteristicOfType:*MEMORY[0x277CCF8D8]];
  if (v3)
  {
    v4 = [v2 hf_characteristicOfType:*MEMORY[0x277CCFA30]];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v2 hf_characteristicOfType:*MEMORY[0x277CCF7D8]];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (BOOL)supportsRGBColor
{
  if (qword_280E03C90 != -1)
  {
    dispatch_once(&qword_280E03C90, &__block_literal_global_26_3);
  }

  v3 = qword_280E03C98;
  characteristicOptions = [(HFControlItem *)self characteristicOptions];
  v5 = [characteristicOptions characteristicTypesForUsage:0];
  v6 = [v3 isSubsetOfSet:v5];

  return v6;
}

void __38__HFColorControlItem_supportsRGBColor__block_invoke_2()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CCF8D8], 0}];
  v1 = qword_280E03C98;
  qword_280E03C98 = v0;
}

- (HFColorProfile)colorProfile
{
  v2 = [(HFControlItem *)self metadataForCharacteristicType:*MEMORY[0x277CCF7D8]];
  v3 = v2;
  if (v2)
  {
    minimumValue = [v2 minimumValue];
    v5 = minimumValue;
    if (!minimumValue)
    {
      minimumValue = &unk_282525080;
    }

    [minimumValue floatValue];
    v7 = v6;

    maximumValue = [v3 maximumValue];
    v9 = maximumValue;
    if (!maximumValue)
    {
      maximumValue = &unk_282525098;
    }

    [maximumValue floatValue];
    v11 = v10;

    v12 = [HFTemperatureColorProfile alloc];
    LODWORD(v13) = v7;
    LODWORD(v14) = v11;
    v15 = [(HFTemperatureColorProfile *)v12 initWithMinimumTemperature:v13 maximumTemperature:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_logForNaturalLightUserStudy:(id)study
{
  v24 = *MEMORY[0x277D85DE8];
  studyCopy = study;
  if (+[HFUtilities isInternalInstall])
  {
    objc_opt_class();
    valueSource = [(HFControlItem *)self valueSource];
    if (objc_opt_isKindOfClass())
    {
      v6 = valueSource;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    objc_opt_class();
    valueSource2 = [v7 valueSource];

    if (objc_opt_isKindOfClass())
    {
      v9 = valueSource2;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    originalValueSource = [v10 originalValueSource];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      valueSource3 = [(HFControlItem *)self valueSource];
      allServices = [valueSource3 allServices];
      anyObject = [allServices anyObject];
      name = [anyObject name];

      v16 = HFLogForCategory(0x4BuLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412802;
        v19 = name;
        v20 = 2112;
        v21 = studyCopy;
        v22 = 2112;
        v23 = objc_opt_class();
        _os_log_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEFAULT, "User changed color for light %@. Value: %@. Value Source: %@", &v18, 0x20u);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)writeValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  v5 = valueCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  temperatureColor = [v7 temperatureColor];
  rGBColor = [v7 RGBColor];
  v10 = rGBColor;
  if (temperatureColor)
  {
    [temperatureColor valueDescriptionInKelvin];
  }

  else
  {
    [rGBColor valueDescription];
  }
  v11 = ;
  [(HFColorControlItem *)self _logForNaturalLightUserStudy:v11];

  if (v7)
  {
    [(HFColorControlItem *)self setNaturalLightingEnabled:0];
    v14.receiver = self;
    v14.super_class = HFColorControlItem;
    v12 = [(HFControlItem *)&v14 writeValue:v5];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      NSLog(&cfstr_AttemptingToWr.isa);
    }

    else
    {
      NSLog(&cfstr_UnknownColorVa.isa, v5);
    }

    v12 = 0;
  }

  return v12;
}

- (id)normalizedValueForValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    NSLog(&cfstr_AttemptingToNo.isa);
    v5 = valueCopy;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = HFColorControlItem;
    v5 = [(HFControlItem *)&v8 normalizedValueForValue:valueCopy];
  }

  v6 = v5;

  return v6;
}

- (id)valueForCharacteristicType:(id)type inBatchReadResponse:(id)response
{
  v4 = [response responseForCharacteristicType:type aggregationPolicy:1];
  value = [v4 value];

  return value;
}

- (id)valueForCharacteristicValues:(id)values
{
  v45 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__HFColorControlItem_valueForCharacteristicValues___block_invoke;
  aBlock[3] = &unk_277E01390;
  v5 = valuesCopy;
  v39 = v5;
  selfCopy = self;
  v6 = _Block_copy(aBlock);
  v7 = v6[2](v6, *MEMORY[0x277CCF8D8], 360.0);
  v8 = v6[2](v6, *MEMORY[0x277CCFA30], 100.0);
  v9 = *MEMORY[0x277CCF7D8];
  v10 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCF7D8]];
  v11 = [(HFControlItem *)self normalizedValueForCharacteristicValue:v10 ofType:v9];

  v12 = [MEMORY[0x277CBEB58] set];
  if (v7)
  {
    v13 = v8 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v21 = 0;
    if (!v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v14 = [HFRGBColor alloc];
    [v7 floatValue];
    v16 = v15;
    [v8 floatValue];
    LODWORD(v18) = v17;
    LODWORD(v19) = 1.0;
    LODWORD(v20) = v16;
    v21 = [(HFRGBColor *)v14 initWithHue:v20 saturation:v18 brightness:v19];
    [v12 addObject:v21];
    if (!v11)
    {
      goto LABEL_14;
    }
  }

  v37 = v7;
  colorProfile = [(HFColorControlItem *)self colorProfile];
  v23 = [HFTemperatureColor alloc];
  [v11 floatValue];
  v24 = [(HFTemperatureColor *)v23 initWithTemperatureInMired:?];
  if (!v21)
  {
    goto LABEL_12;
  }

  [v11 floatValue];
  v26 = v25;
  [colorProfile minimumTemperature];
  if (v26 != v27)
  {
    goto LABEL_12;
  }

  [(HFTemperatureColor *)v24 hf_RGBColorRepresentation];
  v36 = v5;
  v29 = v28 = v8;
  v30 = [(HFRGBColor *)v21 isEqual:v29];

  v8 = v28;
  v5 = v36;
  if (v30)
  {
LABEL_12:
    [v12 addObject:v24];
  }

  v7 = v37;
LABEL_14:
  if ([v12 count])
  {
    v31 = [[HFColorCollection alloc] initWithPrimitiveColors:v12];
  }

  else
  {
    v32 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = objc_opt_class();
      *buf = 138412546;
      v42 = v33;
      v43 = 2112;
      v44 = v5;
      _os_log_impl(&dword_20D9BF000, v32, OS_LOG_TYPE_DEFAULT, "%@ couldn't find any color primitives in the characteristics: %@", buf, 0x16u);
    }

    v31 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];

  return v31;
}

id __51__HFColorControlItem_valueForCharacteristicValues___block_invoke(uint64_t a1, void *a2, float a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (v6)
  {
    v7 = [*(a1 + 40) normalizedValueForCharacteristicValue:v6 ofType:v5];
    v8 = MEMORY[0x277CCABB0];
    [v7 floatValue];
    *&v10 = v9 / a3;
    v11 = [v8 numberWithFloat:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)characteristicValuesForValue:(id)value
{
  v37[1] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  objc_opt_class();
  v5 = valueCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  characteristicOptions = [(HFControlItem *)self characteristicOptions];
  v9 = [characteristicOptions characteristicTypesForUsage:0];
  v10 = *MEMORY[0x277CCF7D8];
  v11 = [v9 containsObject:*MEMORY[0x277CCF7D8]];

  supportsRGBColor = [(HFColorControlItem *)self supportsRGBColor];
  preferredColorPrimitive = [v7 preferredColorPrimitive];
  objc_opt_class();
  v14 = objc_opt_isKindOfClass() & v11;

  if ((v14 & 1) != 0 || supportsRGBColor)
  {
    if (v14)
    {
      goto LABEL_7;
    }

LABEL_9:
    if (supportsRGBColor && ([v7 RGBColor], v21 = objc_claimAutoreleasedReturnValue(), v21, v21))
    {
      v33 = 0;
      rGBColor = [v7 RGBColor];
      [rGBColor getHue:&v33 + 4 saturation:&v33 brightness:0];

      *&v23 = *(&v33 + 1) * 360.0;
      v24 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
      v25 = *MEMORY[0x277CCF8D8];
      v26 = [(HFControlItem *)self normalizedValueForCharacteristicValue:v24 ofType:*MEMORY[0x277CCF8D8]];

      *&v27 = *&v33 * 100.0;
      v28 = [MEMORY[0x277CCABB0] numberWithFloat:v27];
      v29 = *MEMORY[0x277CCFA30];
      v30 = [(HFControlItem *)self normalizedValueForCharacteristicValue:v28 ofType:*MEMORY[0x277CCFA30]];

      v34[0] = v25;
      v34[1] = v29;
      v35[0] = v26;
      v35[1] = v30;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        NSLog(&cfstr_AttemptingToGe.isa);
      }

      else
      {
        NSLog(&cfstr_AttemptingToUs_1.isa, v5, self);
      }

      v20 = MEMORY[0x277CBEC10];
    }

    goto LABEL_16;
  }

  temperatureColor = [v7 temperatureColor];

  if (!temperatureColor)
  {
    goto LABEL_9;
  }

LABEL_7:
  v36 = v10;
  v16 = MEMORY[0x277CCABB0];
  temperatureColor2 = [v7 temperatureColor];
  [temperatureColor2 temperatureInMired];
  v18 = [v16 numberWithFloat:?];
  v37[0] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
  v20 = [(HFControlItem *)self normalizedCharacteristicValuesForValues:v19];

LABEL_16:
  v31 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  objc_initWeak(&location, self);
  v10.receiver = self;
  v10.super_class = HFColorControlItem;
  v5 = [(HFControlItem *)&v10 _subclass_updateWithOptions:optionsCopy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__HFColorControlItem__subclass_updateWithOptions___block_invoke;
  v8[3] = &unk_277DF5A08;
  objc_copyWeak(&v9, &location);
  v6 = [v5 flatMap:v8];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);

  return v6;
}

id __50__HFColorControlItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 mutableCopy];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(WeakRetained, "naturalLightingEnabled")}];
  [v5 setObject:v6 forKeyedSubscript:@"naturalLightEnabled"];

  v7 = [v5 objectForKeyedSubscript:@"dependentHomeKitObjects"];
  v8 = [v7 mutableCopy];
  v9 = [WeakRetained valueSource];
  if ([v9 conformsToProtocol:&unk_28252FC50])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [v11 lightProfiles];

  [v8 unionSet:v12];
  [v5 setObject:v8 forKeyedSubscript:@"dependentHomeKitObjects"];
  v13 = [MEMORY[0x277D2C900] futureWithResult:v5];

  return v13;
}

+ (id)na_identity
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__HFColorControlItem_na_identity__block_invoke;
  v4[3] = &__block_descriptor_40_e5__8__0l;
  v4[4] = self;
  v2 = __33__HFColorControlItem_na_identity__block_invoke(v4);

  return v2;
}

id __33__HFColorControlItem_na_identity__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__HFColorControlItem_na_identity__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  if (qword_280E03CA0 != -1)
  {
    dispatch_once(&qword_280E03CA0, block);
  }

  v1 = qword_280E03CA8;

  return v1;
}

void __33__HFColorControlItem_na_identity__block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __33__HFColorControlItem_na_identity__block_invoke_3;
  v3[3] = &__block_descriptor_40_e17___NAIdentity_8__0l;
  v3[4] = *(a1 + 32);
  v1 = __33__HFColorControlItem_na_identity__block_invoke_3(v3);
  v2 = qword_280E03CA8;
  qword_280E03CA8 = v1;
}

id __33__HFColorControlItem_na_identity__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x277D2C908];
  v7.receiver = *(a1 + 32);
  v7.super_class = &OBJC_METACLASS___HFColorControlItem;
  v2 = objc_msgSendSuper2(&v7, sel_na_identity);
  v3 = [v1 builderWithIdentity:v2];

  v4 = [v3 appendCharacteristic:&__block_literal_global_125];
  v5 = [v3 build];

  return v5;
}

uint64_t __33__HFColorControlItem_na_identity__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 supportsNaturalLighting];

  return [v2 numberWithBool:v3];
}

- (BOOL)supportsNaturalLighting
{
  valueSource = [(HFControlItem *)self valueSource];
  if ([valueSource conformsToProtocol:&unk_28252FC50])
  {
    v3 = valueSource;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  isNaturalLightingSupported = [v4 isNaturalLightingSupported];
  return isNaturalLightingSupported;
}

- (BOOL)naturalLightingEnabled
{
  valueSource = [(HFControlItem *)self valueSource];
  if ([valueSource conformsToProtocol:&unk_28252FC50])
  {
    v3 = valueSource;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  isNaturalLightingEnabled = [v4 isNaturalLightingEnabled];
  return isNaturalLightingEnabled;
}

@end