@interface HFControlItem
+ (Class)valueClass;
+ (NAIdentity)na_identity;
- (BOOL)canCopyWithCharacteristicOptions:(id)options;
- (BOOL)isEqual:(id)equal;
- (BOOL)supportsItemRepresentingServices:(id)services;
- (HFControlItem)init;
- (HFControlItem)initWithValueSource:(id)source characteristicOptions:(id)options displayResults:(id)results;
- (HFControlItem)initWithValueSource:(id)source characteristicTypes:(id)types displayResults:(id)results;
- (NSSet)characteristicTypes;
- (id)_descriptionWithCharacteristicOptions:(BOOL)options includeResults:(BOOL)results;
- (id)_standardResultsForResultValue:(id)value characteristicValuesByType:(id)type;
- (id)_subclass_updateWithOptions:(id)options;
- (id)_tintColor;
- (id)characteristicValuesByTypeForBatchReadResponse:(id)response;
- (id)characteristicValuesForValue:(id)value;
- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source;
- (id)copyWithValueSource:(id)source;
- (id)copyWithZone:(_NSZone *)zone;
- (id)metadataForCharacteristicType:(id)type;
- (id)normalizedCharacteristicValuesForValues:(id)values;
- (id)normalizedValueForCharacteristicValue:(id)value ofType:(id)type;
- (id)normalizedValueForValue:(id)value;
- (id)readValueAndPopulateStandardResults;
- (id)resultsForBatchReadResponse:(id)response;
- (id)valueForCharacteristicType:(id)type inBatchReadResponse:(id)response;
- (id)valueForCharacteristicValues:(id)values;
- (id)writeValue:(id)value;
- (int64_t)_primaryStateForValue:(id)value;
- (int64_t)sortPriority;
- (unint64_t)_accessorySuspendedState;
- (unint64_t)hash;
@end

@implementation HFControlItem

+ (Class)valueClass
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFControlItem.m" lineNumber:46 description:{@"%s is an abstract method that must be overriden by subclass %@", "+[HFControlItem valueClass]", objc_opt_class()}];

  return 0;
}

- (HFControlItem)initWithValueSource:(id)source characteristicTypes:(id)types displayResults:(id)results
{
  v18[1] = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  typesCopy = types;
  sourceCopy = source;
  v11 = [HFControlItemCharacteristicOptions alloc];
  v17 = &unk_282523B80;
  v18[0] = typesCopy;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];

  v13 = [(HFControlItemCharacteristicOptions *)v11 initWithCharacteristicTypesByUsage:v12];
  v14 = [(HFControlItem *)self initWithValueSource:sourceCopy characteristicOptions:v13 displayResults:resultsCopy];

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (HFControlItem)initWithValueSource:(id)source characteristicOptions:(id)options displayResults:(id)results
{
  sourceCopy = source;
  optionsCopy = options;
  resultsCopy = results;
  v17.receiver = self;
  v17.super_class = HFControlItem;
  v12 = [(HFControlItem *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_valueSource, source);
    objc_storeStrong(&v13->_characteristicOptions, options);
    v14 = [resultsCopy copy];
    displayResults = v13->_displayResults;
    v13->_displayResults = v14;
  }

  return v13;
}

- (HFControlItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithValueSource_characteristicOptions_displayResults_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFControlItem.m" lineNumber:69 description:{@"%s is unavailable; use %@ instead", "-[HFControlItem init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  valueSource = [(HFControlItem *)self valueSource];
  v5 = [(HFControlItem *)self copyWithValueSource:valueSource];

  return v5;
}

- (id)copyWithValueSource:(id)source
{
  sourceCopy = source;
  characteristicOptions = [(HFControlItem *)self characteristicOptions];
  v6 = [(HFControlItem *)self copyWithCharacteristicOptions:characteristicOptions valueSource:sourceCopy];

  return v6;
}

- (BOOL)canCopyWithCharacteristicOptions:(id)options
{
  optionsCopy = options;
  v5 = [optionsCopy characteristicTypesForUsage:0];
  if ([v5 count])
  {
    allRequiredCharacteristicTypes = [optionsCopy allRequiredCharacteristicTypes];
    characteristicOptions = [(HFControlItem *)self characteristicOptions];
    allRequiredCharacteristicTypes2 = [characteristicOptions allRequiredCharacteristicTypes];
    v9 = [allRequiredCharacteristicTypes isSubsetOfSet:allRequiredCharacteristicTypes2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source
{
  sourceCopy = source;
  optionsCopy = options;
  v8 = objc_alloc(objc_opt_class());
  displayResults = [(HFControlItem *)self displayResults];
  v10 = [v8 initWithValueSource:sourceCopy characteristicOptions:optionsCopy displayResults:displayResults];

  [v10 copyLatestResultsFromItem:self];
  return v10;
}

- (NSSet)characteristicTypes
{
  characteristicOptions = [(HFControlItem *)self characteristicOptions];
  v3 = [characteristicOptions characteristicTypesForUsage:0];

  return v3;
}

- (id)writeValue:(id)value
{
  valueCopy = value;
  if (valueCopy)
  {
    [objc_opt_class() valueClass];
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      valueClass = [objc_opt_class() valueClass];
      NSLog(&cfstr_ValueIsNotComp.isa, valueCopy, self, valueClass);
    }
  }

  v6 = [(HFControlItem *)self characteristicValuesForValue:valueCopy];
  if ([v6 count])
  {
    v7 = objc_opt_new();
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __28__HFControlItem_writeValue___block_invoke;
    v12[3] = &unk_277DF2E28;
    v12[4] = self;
    v13 = v7;
    v8 = v7;
    [v6 enumerateKeysAndObjectsUsingBlock:v12];
    valueSource = [(HFControlItem *)self valueSource];
    futureWithNoResult = [valueSource writeValuesForCharacteristicRecipes:v8];
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

void __28__HFControlItem_writeValue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v9 = [v5 servicePredicateForCharacteristicType:v7 withUsage:1];
  v8 = [[HFServiceStateCharacteristicRecipe alloc] initWithCharacteristicType:v7 servicePredicate:v9 required:1];

  [*(a1 + 40) setObject:v6 forKeyedSubscript:v8];
}

- (id)_subclass_updateWithOptions:(id)options
{
  v4 = [options objectForKeyedSubscript:HFItemUpdateOptionDisableOptionalData];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    v6 = MEMORY[0x277D2C900];
    displayResults = [(HFControlItem *)self displayResults];
    readValueAndPopulateStandardResults = displayResults;
    if (displayResults)
    {
      v9 = displayResults;
    }

    else
    {
      v9 = MEMORY[0x277CBEC10];
    }

    v10 = [HFItemUpdateOutcome outcomeWithResults:v9];
    v11 = [v6 futureWithResult:v10];
  }

  else
  {
    readValueAndPopulateStandardResults = [(HFControlItem *)self readValueAndPopulateStandardResults];
    v11 = [readValueAndPopulateStandardResults flatMap:&__block_literal_global_60];
  }

  return v11;
}

id __45__HFControlItem__subclass_updateWithOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D2C900];
  v3 = [HFItemUpdateOutcome outcomeWithResults:a2];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

- (id)readValueAndPopulateStandardResults
{
  v23 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v4 = HFLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    valueSource = [(HFControlItem *)self valueSource];
    *buf = 138412802;
    selfCopy = self;
    v19 = 2112;
    v20 = v5;
    v21 = 2112;
    v22 = valueSource;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ valueSource = %@", buf, 0x20u);
  }

  valueSource2 = [(HFControlItem *)self valueSource];
  characteristicOptions = [(HFControlItem *)self characteristicOptions];
  allCharacteristicTypes = [characteristicOptions allCharacteristicTypes];
  v10 = [valueSource2 readValuesForCharacteristicTypes:allCharacteristicTypes];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__HFControlItem_readValueAndPopulateStandardResults__block_invoke;
  v14[3] = &unk_277DF78B0;
  objc_copyWeak(&v15, &location);
  v11 = [v10 flatMap:v14];
  objc_destroyWeak(&v15);

  objc_destroyWeak(&location);
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id __52__HFControlItem_readValueAndPopulateStandardResults__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained resultsForBatchReadResponse:v3];
    v7 = [MEMORY[0x277D2C900] futureWithResult:v6];
  }

  else
  {
    v7 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC10]];
  }

  return v7;
}

- (id)resultsForBatchReadResponse:(id)response
{
  v35 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = [(HFControlItem *)self characteristicValuesByTypeForBatchReadResponse:responseCopy];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __45__HFControlItem_resultsForBatchReadResponse___block_invoke;
  v32[3] = &unk_277DF78D8;
  v32[4] = self;
  v6 = v5;
  v33 = v6;
  v7 = __45__HFControlItem_resultsForBatchReadResponse___block_invoke(v32);
  if (v7)
  {
    [objc_opt_class() valueClass];
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      valueClass = [objc_opt_class() valueClass];
      NSLog(&cfstr_ValueIsNotComp.isa, v7, self, valueClass);
    }
  }

  v9 = [(HFControlItem *)self _standardResultsForResultValue:v7 characteristicValuesByType:v6];
  v10 = [v9 mutableCopy];

  _accessorySuspendedState = [(HFControlItem *)self _accessorySuspendedState];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_accessorySuspendedState];
  [v10 setObject:v12 forKeyedSubscript:@"suspendedState"];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  characteristicOptions = [(HFControlItem *)self characteristicOptions];
  allRequiredCharacteristicTypes = [characteristicOptions allRequiredCharacteristicTypes];

  v15 = [allRequiredCharacteristicTypes countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(allRequiredCharacteristicTypes);
        }

        v19 = [responseCopy responseForCharacteristicType:*(*(&v28 + 1) + 8 * i)];
        error = [v19 error];
        if (error)
        {
          v21 = error;
          readTraits = [v19 readTraits];
          contextProvider = [responseCopy contextProvider];
          v24 = [HFCharacteristicValueDisplayError errorWithUnderlyingError:v21 readTraits:readTraits contextProvider:contextProvider];

          [v10 na_safeSetObject:v24 forKey:@"underlyingError"];
          goto LABEL_14;
        }
      }

      v16 = [allRequiredCharacteristicTypes countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v25 = [v10 copy];
  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

id __45__HFControlItem_resultsForBatchReadResponse___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) characteristicOptions];
  v3 = [v2 allRequiredCharacteristicTypes];
  v4 = MEMORY[0x277CBEB98];
  v5 = [*(a1 + 40) allKeys];
  v6 = [v4 setWithArray:v5];
  v7 = [v3 isSubsetOfSet:v6];

  if (v7)
  {
    v8 = [*(a1 + 32) valueForCharacteristicValues:*(a1 + 40)];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)characteristicValuesByTypeForBatchReadResponse:(id)response
{
  v34 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  characteristicOptions = [(HFControlItem *)self characteristicOptions];
  allCharacteristicTypes = [characteristicOptions allCharacteristicTypes];

  obj = allCharacteristicTypes;
  v7 = [allCharacteristicTypes countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v26;
    *&v8 = 138412546;
    v22 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [(HFControlItem *)self valueForCharacteristicType:v12 inBatchReadResponse:responseCopy, v22];
        if (v13)
        {
          v14 = [(HFControlItem *)self normalizedValueForCharacteristicValue:v13 ofType:v12];
          [dictionary setObject:v14 forKeyedSubscript:v12];
        }

        else
        {
          characteristicOptions2 = [(HFControlItem *)self characteristicOptions];
          allRequiredCharacteristicTypes = [characteristicOptions2 allRequiredCharacteristicTypes];
          v17 = [allRequiredCharacteristicTypes containsObject:v12];

          if (!v17)
          {
            goto LABEL_12;
          }

          v14 = HFLogForCategory(0x2CuLL);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v18 = [MEMORY[0x277CD1970] localizedDescriptionForCharacteristicType:v12];
            v19 = [(HFControlItem *)self _descriptionWithCharacteristicOptions:1 includeResults:0];
            *buf = v22;
            v30 = v18;
            v31 = 2112;
            v32 = v19;
            _os_log_error_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_ERROR, "Missing value for characteristic type %@ for control item %@", buf, 0x16u);
          }
        }

LABEL_12:
      }

      v9 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v9);
  }

  v20 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (id)_standardResultsForResultValue:(id)value characteristicValuesByType:(id)type
{
  valueCopy = value;
  typeCopy = type;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  displayResults = [(HFControlItem *)self displayResults];

  if (displayResults)
  {
    displayResults2 = [(HFControlItem *)self displayResults];
    [dictionary addEntriesFromDictionary:displayResults2];
  }

  if (valueCopy)
  {
    [dictionary setObject:valueCopy forKeyedSubscript:@"value"];
  }

  if (typeCopy)
  {
    [dictionary setObject:typeCopy forKeyedSubscript:@"characteristicValuesByType"];
  }

  characteristicOptions = [(HFControlItem *)self characteristicOptions];
  allCharacteristicTypes = [characteristicOptions allCharacteristicTypes];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __75__HFControlItem__standardResultsForResultValue_characteristicValuesByType___block_invoke;
  v28[3] = &unk_277DF2DD8;
  v28[4] = self;
  v13 = [allCharacteristicTypes na_map:v28];
  na_setByFlattening = [v13 na_setByFlattening];

  [dictionary setObject:na_setByFlattening forKeyedSubscript:@"dependentHomeKitObjects"];
  characteristicOptions2 = [(HFControlItem *)self characteristicOptions];
  allCharacteristicTypes2 = [characteristicOptions2 allCharacteristicTypes];
  [dictionary setObject:allCharacteristicTypes2 forKeyedSubscript:@"characteristicTypes"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(na_setByFlattening, "na_any:", &__block_literal_global_61_0)}];
  [dictionary setObject:v17 forKeyedSubscript:@"actionRequiresDeviceUnlock"];

  characteristicOptions3 = [(HFControlItem *)self characteristicOptions];
  v19 = [characteristicOptions3 characteristicTypesForUsage:0];
  allObjects = [v19 allObjects];
  firstObject = [allObjects firstObject];

  valueSource = [(HFControlItem *)self valueSource];
  allServices = [valueSource allServices];
  anyObject = [allServices anyObject];
  hf_effectiveServiceType = [anyObject hf_effectiveServiceType];

  v26 = [HFDecorationIconFactory iconDescriptorForCharacteristicType:firstObject effectiveServiceType:hf_effectiveServiceType primaryState:[(HFControlItem *)self _primaryStateForValue:valueCopy]];
  [dictionary setObject:v26 forKeyedSubscript:@"decorationIconDescriptor"];

  return dictionary;
}

id __75__HFControlItem__standardResultsForResultValue_characteristicValuesByType___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 valueSource];
  v5 = [v4 allCharacteristicsForCharacteristicType:v3];

  return v5;
}

- (int64_t)_primaryStateForValue:(id)value
{
  valueCopy = value;
  v5 = valueCopy;
  if (valueCopy)
  {
    v6 = valueCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      v8 = 2;
      if (v7 < 2.22044605e-16)
      {
        v8 = 1;
      }

      if (v7 > 0.0)
      {
        integerValue = v8;
      }

      else
      {
        integerValue = 1;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v6 integerValue])
        {
          integerValue = 1;
        }

        else
        {
          integerValue = 2;
        }
      }

      else if ([(HFControlItem *)self conformsToProtocol:&unk_2825368B0])
      {
        integerValue = [v6 integerValue];
      }

      else
      {
        integerValue = 1;
      }
    }
  }

  else
  {
    integerValue = 1;
  }

  return integerValue;
}

- (id)_tintColor
{
  if (qword_280E02398 != -1)
  {
    dispatch_once(&qword_280E02398, &__block_literal_global_114_0);
  }

  valueSource = [(HFControlItem *)self valueSource];
  primaryServiceDescriptor = [valueSource primaryServiceDescriptor];
  serviceType = [primaryServiceDescriptor serviceType];

  if (([serviceType isEqualToString:*MEMORY[0x277CD0ED0]] & 1) != 0 || objc_msgSend(serviceType, "isEqualToString:", *MEMORY[0x277CD0F08]))
  {
    valueSource2 = [(HFControlItem *)self valueSource];
    allServices = [valueSource2 allServices];
    anyObject = [allServices anyObject];
    hf_effectiveServiceType = [anyObject hf_effectiveServiceType];

    serviceType = hf_effectiveServiceType;
  }

  v10 = [_MergedGlobals_5_0 objectForKeyedSubscript:serviceType];
  v11 = v10;
  if (v10)
  {
    systemYellowColor = v10;
  }

  else
  {
    systemYellowColor = [MEMORY[0x277D75348] systemYellowColor];
  }

  v13 = systemYellowColor;

  return v13;
}

void __27__HFControlItem__tintColor__block_invoke()
{
  v25[21] = *MEMORY[0x277D85DE8];
  v24[0] = *MEMORY[0x277CD0EA0];
  v23 = [MEMORY[0x277D75348] systemYellowColor];
  v25[0] = v23;
  v24[1] = *MEMORY[0x277CD0ED0];
  v22 = [MEMORY[0x277D75348] systemYellowColor];
  v25[1] = v22;
  v24[2] = *MEMORY[0x277CD0F08];
  v21 = [MEMORY[0x277D75348] systemYellowColor];
  v25[2] = v21;
  v24[3] = *MEMORY[0x277CD0DD8];
  v20 = [MEMORY[0x277D75348] systemCyanColor];
  v25[3] = v20;
  v24[4] = *MEMORY[0x277CD0E40];
  v19 = [MEMORY[0x277D75348] systemCyanColor];
  v25[4] = v19;
  v24[5] = *MEMORY[0x277CD0E60];
  v18 = [MEMORY[0x277D75348] systemCyanColor];
  v25[5] = v18;
  v24[6] = *MEMORY[0x277CD0E68];
  v17 = [MEMORY[0x277D75348] systemCyanColor];
  v25[6] = v17;
  v24[7] = *MEMORY[0x277CD0F30];
  v16 = [MEMORY[0x277D75348] systemCyanColor];
  v25[7] = v16;
  v24[8] = *MEMORY[0x277CD0F40];
  v15 = [MEMORY[0x277D75348] systemCyanColor];
  v25[8] = v15;
  v24[9] = *MEMORY[0x277CD0F60];
  v14 = [MEMORY[0x277D75348] systemCyanColor];
  v25[9] = v14;
  v24[10] = *MEMORY[0x277CD0E30];
  v13 = [MEMORY[0x277D75348] systemMintColor];
  v25[10] = v13;
  v24[11] = *MEMORY[0x277CD0E58];
  v0 = [MEMORY[0x277D75348] systemMintColor];
  v25[11] = v0;
  v24[12] = *MEMORY[0x277CD0EB0];
  v1 = [MEMORY[0x277D75348] systemMintColor];
  v25[12] = v1;
  v24[13] = *MEMORY[0x277CD0EA8];
  v2 = [MEMORY[0x277D75348] systemMintColor];
  v25[13] = v2;
  v24[14] = *MEMORY[0x277CD0ED8];
  v3 = [MEMORY[0x277D75348] systemMintColor];
  v25[14] = v3;
  v24[15] = *MEMORY[0x277CD0F58];
  v4 = [MEMORY[0x277D75348] systemMintColor];
  v25[15] = v4;
  v24[16] = *MEMORY[0x277CD0E48];
  v5 = [MEMORY[0x277D75348] systemBlueColor];
  v25[16] = v5;
  v24[17] = *MEMORY[0x277CD0E80];
  v6 = [MEMORY[0x277D75348] systemBlueColor];
  v25[17] = v6;
  v24[18] = *MEMORY[0x277CD0F38];
  v7 = [MEMORY[0x277D75348] systemBlueColor];
  v25[18] = v7;
  v24[19] = *MEMORY[0x277CD0E78];
  v8 = [MEMORY[0x277D75348] systemTealColor];
  v25[19] = v8;
  v24[20] = *MEMORY[0x277CD0F20];
  v9 = [MEMORY[0x277D75348] systemTealColor];
  v25[20] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:21];
  v11 = _MergedGlobals_5_0;
  _MergedGlobals_5_0 = v10;

  v12 = *MEMORY[0x277D85DE8];
}

- (id)valueForCharacteristicValues:(id)values
{
  v5 = MEMORY[0x277CCA890];
  valuesCopy = values;
  currentHandler = [v5 currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFControlItem.m" lineNumber:318 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFControlItem valueForCharacteristicValues:]", objc_opt_class()}];

  allValues = [valuesCopy allValues];

  firstObject = [allValues firstObject];

  return firstObject;
}

- (id)characteristicValuesForValue:(id)value
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFControlItem.m" lineNumber:324 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFControlItem characteristicValuesForValue:]", objc_opt_class()}];

  return MEMORY[0x277CBEC10];
}

- (id)valueForCharacteristicType:(id)type inBatchReadResponse:(id)response
{
  responseCopy = response;
  typeCopy = type;
  v8 = [(HFControlItem *)self servicePredicateForCharacteristicType:typeCopy withUsage:0];
  v9 = [[HFServiceStateCharacteristicRecipe alloc] initWithCharacteristicType:typeCopy servicePredicate:v8 required:1];

  v10 = [responseCopy responseForCharacteristicRecipe:v9];

  value = [v10 value];

  return value;
}

- (id)metadataForCharacteristicType:(id)type
{
  typeCopy = type;
  valueSource = [(HFControlItem *)self valueSource];
  v6 = [valueSource metadataForCharacteristicType:typeCopy];

  return v6;
}

- (id)normalizedValueForValue:(id)value
{
  v4 = [(HFControlItem *)self characteristicValuesForValue:value];
  v5 = [(HFControlItem *)self valueForCharacteristicValues:v4];

  return v5;
}

- (int64_t)sortPriority
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  characteristicOptions = [(HFControlItem *)self characteristicOptions];
  allCharacteristicTypes = [characteristicOptions allCharacteristicTypes];

  v4 = [allCharacteristicTypes countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = -1000;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(allCharacteristicTypes);
        }

        v9 = [MEMORY[0x277CD1970] hf_sortPriorityForCharacteristicType:*(*(&v12 + 1) + 8 * i)];
        if (v7 <= v9)
        {
          v7 = v9;
        }
      }

      v5 = [allCharacteristicTypes countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = -1000;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)supportsItemRepresentingServices:(id)services
{
  servicesCopy = services;
  characteristicOptions = [(HFControlItem *)self characteristicOptions];
  allRequiredCharacteristicTypes = [characteristicOptions allRequiredCharacteristicTypes];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__HFControlItem_supportsItemRepresentingServices___block_invoke;
  v10[3] = &unk_277DF3130;
  v11 = servicesCopy;
  v7 = servicesCopy;
  v8 = [allRequiredCharacteristicTypes na_all:v10];

  return v8;
}

uint64_t __50__HFControlItem_supportsItemRepresentingServices___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__HFControlItem_supportsItemRepresentingServices___block_invoke_2;
  v8[3] = &unk_277DF4020;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6;
}

BOOL __50__HFControlItem_supportsItemRepresentingServices___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 hf_characteristicOfType:*(a1 + 32)];
  v3 = v2 != 0;

  return v3;
}

- (id)normalizedValueForCharacteristicValue:(id)value ofType:(id)type
{
  typeCopy = type;
  valueCopy = value;
  valueSource = [(HFControlItem *)self valueSource];
  v9 = [valueSource metadataForCharacteristicType:typeCopy];

  v10 = [v9 hf_normalizedValueForValue:valueCopy];

  return v10;
}

- (id)normalizedCharacteristicValuesForValues:(id)values
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__HFControlItem_normalizedCharacteristicValuesForValues___block_invoke;
  v5[3] = &unk_277DF7900;
  v5[4] = self;
  v3 = [values na_dictionaryByMappingValues:v5];

  return v3;
}

- (unint64_t)_accessorySuspendedState
{
  v12[1] = *MEMORY[0x277D85DE8];
  valueSource = [(HFControlItem *)self valueSource];
  allServices = [valueSource allServices];
  v4 = [allServices na_map:&__block_literal_global_121_0];
  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
  v12[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v7 = [v4 sortedArrayUsingDescriptors:v6];
  lastObject = [v7 lastObject];
  unsignedIntegerValue = [lastObject unsignedIntegerValue];

  v10 = *MEMORY[0x277D85DE8];
  return unsignedIntegerValue;
}

id __41__HFControlItem__accessorySuspendedState__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 accessory];
  v4 = [v2 numberWithUnsignedInteger:{objc_msgSend(v3, "suspendedState")}];

  return v4;
}

- (id)_descriptionWithCharacteristicOptions:(BOOL)options includeResults:(BOOL)results
{
  resultsCopy = results;
  optionsCopy = options;
  v7 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  if (optionsCopy)
  {
    characteristicOptions = [(HFControlItem *)self characteristicOptions];
    v9 = [v7 appendObject:characteristicOptions withName:@"characteristics"];
  }

  if (resultsCopy)
  {
    latestResults = [(HFItem *)self latestResults];
    v11 = [v7 appendObject:latestResults withName:@"latestResults"];
  }

  build = [v7 build];

  return build;
}

+ (NAIdentity)na_identity
{
  if (qword_280E023A0 != -1)
  {
    dispatch_once(&qword_280E023A0, &__block_literal_global_137);
  }

  v3 = qword_280E023A8;

  return v3;
}

void __28__HFControlItem_na_identity__block_invoke_2()
{
  v0 = [MEMORY[0x277D2C908] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_144_0];
  v2 = [v1 appendCharacteristic:&__block_literal_global_147_0 withRole:3 comparatorBlock:0 hashBlock:&__block_literal_global_150_4];
  v3 = [v2 appendCharacteristic:&__block_literal_global_153_0];

  v4 = [v0 build];

  v5 = qword_280E023A8;
  qword_280E023A8 = v4;
}

uint64_t __28__HFControlItem_na_identity__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = v2;
  if (!v4)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4;
  if (!v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v7 handleFailureInFunction:v8 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v3, objc_opt_class()}];

LABEL_7:
    v6 = 0;
  }

  v9 = [v6 computeHashFromContents];
  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  na_identity = [objc_opt_class() na_identity];
  LOBYTE(self) = [na_identity isObject:self equalToObject:equalCopy];

  return self;
}

- (unint64_t)hash
{
  na_identity = [objc_opt_class() na_identity];
  v4 = [na_identity hashOfObject:self];

  return v4;
}

@end