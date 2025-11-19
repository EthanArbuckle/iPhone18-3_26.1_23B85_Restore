@interface HFControlItem
+ (Class)valueClass;
+ (NAIdentity)na_identity;
- (BOOL)canCopyWithCharacteristicOptions:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)supportsItemRepresentingServices:(id)a3;
- (HFControlItem)init;
- (HFControlItem)initWithValueSource:(id)a3 characteristicOptions:(id)a4 displayResults:(id)a5;
- (HFControlItem)initWithValueSource:(id)a3 characteristicTypes:(id)a4 displayResults:(id)a5;
- (NSSet)characteristicTypes;
- (id)_descriptionWithCharacteristicOptions:(BOOL)a3 includeResults:(BOOL)a4;
- (id)_standardResultsForResultValue:(id)a3 characteristicValuesByType:(id)a4;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)_tintColor;
- (id)characteristicValuesByTypeForBatchReadResponse:(id)a3;
- (id)characteristicValuesForValue:(id)a3;
- (id)copyWithCharacteristicOptions:(id)a3 valueSource:(id)a4;
- (id)copyWithValueSource:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)metadataForCharacteristicType:(id)a3;
- (id)normalizedCharacteristicValuesForValues:(id)a3;
- (id)normalizedValueForCharacteristicValue:(id)a3 ofType:(id)a4;
- (id)normalizedValueForValue:(id)a3;
- (id)readValueAndPopulateStandardResults;
- (id)resultsForBatchReadResponse:(id)a3;
- (id)valueForCharacteristicType:(id)a3 inBatchReadResponse:(id)a4;
- (id)valueForCharacteristicValues:(id)a3;
- (id)writeValue:(id)a3;
- (int64_t)_primaryStateForValue:(id)a3;
- (int64_t)sortPriority;
- (unint64_t)_accessorySuspendedState;
- (unint64_t)hash;
@end

@implementation HFControlItem

+ (Class)valueClass
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"HFControlItem.m" lineNumber:46 description:{@"%s is an abstract method that must be overriden by subclass %@", "+[HFControlItem valueClass]", objc_opt_class()}];

  return 0;
}

- (HFControlItem)initWithValueSource:(id)a3 characteristicTypes:(id)a4 displayResults:(id)a5
{
  v18[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [HFControlItemCharacteristicOptions alloc];
  v17 = &unk_282523B80;
  v18[0] = v9;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];

  v13 = [(HFControlItemCharacteristicOptions *)v11 initWithCharacteristicTypesByUsage:v12];
  v14 = [(HFControlItem *)self initWithValueSource:v10 characteristicOptions:v13 displayResults:v8];

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (HFControlItem)initWithValueSource:(id)a3 characteristicOptions:(id)a4 displayResults:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = HFControlItem;
  v12 = [(HFControlItem *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_valueSource, a3);
    objc_storeStrong(&v13->_characteristicOptions, a4);
    v14 = [v11 copy];
    displayResults = v13->_displayResults;
    v13->_displayResults = v14;
  }

  return v13;
}

- (HFControlItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithValueSource_characteristicOptions_displayResults_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFControlItem.m" lineNumber:69 description:{@"%s is unavailable; use %@ instead", "-[HFControlItem init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(HFControlItem *)self valueSource];
  v5 = [(HFControlItem *)self copyWithValueSource:v4];

  return v5;
}

- (id)copyWithValueSource:(id)a3
{
  v4 = a3;
  v5 = [(HFControlItem *)self characteristicOptions];
  v6 = [(HFControlItem *)self copyWithCharacteristicOptions:v5 valueSource:v4];

  return v6;
}

- (BOOL)canCopyWithCharacteristicOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 characteristicTypesForUsage:0];
  if ([v5 count])
  {
    v6 = [v4 allRequiredCharacteristicTypes];
    v7 = [(HFControlItem *)self characteristicOptions];
    v8 = [v7 allRequiredCharacteristicTypes];
    v9 = [v6 isSubsetOfSet:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithCharacteristicOptions:(id)a3 valueSource:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc(objc_opt_class());
  v9 = [(HFControlItem *)self displayResults];
  v10 = [v8 initWithValueSource:v6 characteristicOptions:v7 displayResults:v9];

  [v10 copyLatestResultsFromItem:self];
  return v10;
}

- (NSSet)characteristicTypes
{
  v2 = [(HFControlItem *)self characteristicOptions];
  v3 = [v2 characteristicTypesForUsage:0];

  return v3;
}

- (id)writeValue:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [objc_opt_class() valueClass];
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = [objc_opt_class() valueClass];
      NSLog(&cfstr_ValueIsNotComp.isa, v4, self, v5);
    }
  }

  v6 = [(HFControlItem *)self characteristicValuesForValue:v4];
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
    v9 = [(HFControlItem *)self valueSource];
    v10 = [v9 writeValuesForCharacteristicRecipes:v8];
  }

  else
  {
    v10 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v10;
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

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:HFItemUpdateOptionDisableOptionalData];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = MEMORY[0x277D2C900];
    v7 = [(HFControlItem *)self displayResults];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
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
    v8 = [(HFControlItem *)self readValueAndPopulateStandardResults];
    v11 = [v8 flatMap:&__block_literal_global_60];
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
    v6 = [(HFControlItem *)self valueSource];
    *buf = 138412802;
    v18 = self;
    v19 = 2112;
    v20 = v5;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ valueSource = %@", buf, 0x20u);
  }

  v7 = [(HFControlItem *)self valueSource];
  v8 = [(HFControlItem *)self characteristicOptions];
  v9 = [v8 allCharacteristicTypes];
  v10 = [v7 readValuesForCharacteristicTypes:v9];
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

- (id)resultsForBatchReadResponse:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFControlItem *)self characteristicValuesByTypeForBatchReadResponse:v4];
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
      v8 = [objc_opt_class() valueClass];
      NSLog(&cfstr_ValueIsNotComp.isa, v7, self, v8);
    }
  }

  v9 = [(HFControlItem *)self _standardResultsForResultValue:v7 characteristicValuesByType:v6];
  v10 = [v9 mutableCopy];

  v11 = [(HFControlItem *)self _accessorySuspendedState];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
  [v10 setObject:v12 forKeyedSubscript:@"suspendedState"];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = [(HFControlItem *)self characteristicOptions];
  v14 = [v13 allRequiredCharacteristicTypes];

  v15 = [v14 countByEnumeratingWithState:&v28 objects:v34 count:16];
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
          objc_enumerationMutation(v14);
        }

        v19 = [v4 responseForCharacteristicType:*(*(&v28 + 1) + 8 * i)];
        v20 = [v19 error];
        if (v20)
        {
          v21 = v20;
          v22 = [v19 readTraits];
          v23 = [v4 contextProvider];
          v24 = [HFCharacteristicValueDisplayError errorWithUnderlyingError:v21 readTraits:v22 contextProvider:v23];

          [v10 na_safeSetObject:v24 forKey:@"underlyingError"];
          goto LABEL_14;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v28 objects:v34 count:16];
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

- (id)characteristicValuesByTypeForBatchReadResponse:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24 = [MEMORY[0x277CBEB38] dictionary];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [(HFControlItem *)self characteristicOptions];
  v6 = [v5 allCharacteristicTypes];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
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
        v13 = [(HFControlItem *)self valueForCharacteristicType:v12 inBatchReadResponse:v4, v22];
        if (v13)
        {
          v14 = [(HFControlItem *)self normalizedValueForCharacteristicValue:v13 ofType:v12];
          [v24 setObject:v14 forKeyedSubscript:v12];
        }

        else
        {
          v15 = [(HFControlItem *)self characteristicOptions];
          v16 = [v15 allRequiredCharacteristicTypes];
          v17 = [v16 containsObject:v12];

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

  return v24;
}

- (id)_standardResultsForResultValue:(id)a3 characteristicValuesByType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v9 = [(HFControlItem *)self displayResults];

  if (v9)
  {
    v10 = [(HFControlItem *)self displayResults];
    [v8 addEntriesFromDictionary:v10];
  }

  if (v6)
  {
    [v8 setObject:v6 forKeyedSubscript:@"value"];
  }

  if (v7)
  {
    [v8 setObject:v7 forKeyedSubscript:@"characteristicValuesByType"];
  }

  v11 = [(HFControlItem *)self characteristicOptions];
  v12 = [v11 allCharacteristicTypes];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __75__HFControlItem__standardResultsForResultValue_characteristicValuesByType___block_invoke;
  v28[3] = &unk_277DF2DD8;
  v28[4] = self;
  v13 = [v12 na_map:v28];
  v14 = [v13 na_setByFlattening];

  [v8 setObject:v14 forKeyedSubscript:@"dependentHomeKitObjects"];
  v15 = [(HFControlItem *)self characteristicOptions];
  v16 = [v15 allCharacteristicTypes];
  [v8 setObject:v16 forKeyedSubscript:@"characteristicTypes"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v14, "na_any:", &__block_literal_global_61_0)}];
  [v8 setObject:v17 forKeyedSubscript:@"actionRequiresDeviceUnlock"];

  v18 = [(HFControlItem *)self characteristicOptions];
  v19 = [v18 characteristicTypesForUsage:0];
  v20 = [v19 allObjects];
  v21 = [v20 firstObject];

  v22 = [(HFControlItem *)self valueSource];
  v23 = [v22 allServices];
  v24 = [v23 anyObject];
  v25 = [v24 hf_effectiveServiceType];

  v26 = [HFDecorationIconFactory iconDescriptorForCharacteristicType:v21 effectiveServiceType:v25 primaryState:[(HFControlItem *)self _primaryStateForValue:v6]];
  [v8 setObject:v26 forKeyedSubscript:@"decorationIconDescriptor"];

  return v8;
}

id __75__HFControlItem__standardResultsForResultValue_characteristicValuesByType___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 valueSource];
  v5 = [v4 allCharacteristicsForCharacteristicType:v3];

  return v5;
}

- (int64_t)_primaryStateForValue:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
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
        v9 = v8;
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v6 integerValue])
        {
          v9 = 1;
        }

        else
        {
          v9 = 2;
        }
      }

      else if ([(HFControlItem *)self conformsToProtocol:&unk_2825368B0])
      {
        v9 = [v6 integerValue];
      }

      else
      {
        v9 = 1;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)_tintColor
{
  if (qword_280E02398 != -1)
  {
    dispatch_once(&qword_280E02398, &__block_literal_global_114_0);
  }

  v3 = [(HFControlItem *)self valueSource];
  v4 = [v3 primaryServiceDescriptor];
  v5 = [v4 serviceType];

  if (([v5 isEqualToString:*MEMORY[0x277CD0ED0]] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", *MEMORY[0x277CD0F08]))
  {
    v6 = [(HFControlItem *)self valueSource];
    v7 = [v6 allServices];
    v8 = [v7 anyObject];
    v9 = [v8 hf_effectiveServiceType];

    v5 = v9;
  }

  v10 = [_MergedGlobals_5_0 objectForKeyedSubscript:v5];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [MEMORY[0x277D75348] systemYellowColor];
  }

  v13 = v12;

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

- (id)valueForCharacteristicValues:(id)a3
{
  v5 = MEMORY[0x277CCA890];
  v6 = a3;
  v7 = [v5 currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"HFControlItem.m" lineNumber:318 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFControlItem valueForCharacteristicValues:]", objc_opt_class()}];

  v8 = [v6 allValues];

  v9 = [v8 firstObject];

  return v9;
}

- (id)characteristicValuesForValue:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"HFControlItem.m" lineNumber:324 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFControlItem characteristicValuesForValue:]", objc_opt_class()}];

  return MEMORY[0x277CBEC10];
}

- (id)valueForCharacteristicType:(id)a3 inBatchReadResponse:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HFControlItem *)self servicePredicateForCharacteristicType:v7 withUsage:0];
  v9 = [[HFServiceStateCharacteristicRecipe alloc] initWithCharacteristicType:v7 servicePredicate:v8 required:1];

  v10 = [v6 responseForCharacteristicRecipe:v9];

  v11 = [v10 value];

  return v11;
}

- (id)metadataForCharacteristicType:(id)a3
{
  v4 = a3;
  v5 = [(HFControlItem *)self valueSource];
  v6 = [v5 metadataForCharacteristicType:v4];

  return v6;
}

- (id)normalizedValueForValue:(id)a3
{
  v4 = [(HFControlItem *)self characteristicValuesForValue:a3];
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
  v2 = [(HFControlItem *)self characteristicOptions];
  v3 = [v2 allCharacteristicTypes];

  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
        }

        v9 = [MEMORY[0x277CD1970] hf_sortPriorityForCharacteristicType:*(*(&v12 + 1) + 8 * i)];
        if (v7 <= v9)
        {
          v7 = v9;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (BOOL)supportsItemRepresentingServices:(id)a3
{
  v4 = a3;
  v5 = [(HFControlItem *)self characteristicOptions];
  v6 = [v5 allRequiredCharacteristicTypes];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__HFControlItem_supportsItemRepresentingServices___block_invoke;
  v10[3] = &unk_277DF3130;
  v11 = v4;
  v7 = v4;
  v8 = [v6 na_all:v10];

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

- (id)normalizedValueForCharacteristicValue:(id)a3 ofType:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HFControlItem *)self valueSource];
  v9 = [v8 metadataForCharacteristicType:v6];

  v10 = [v9 hf_normalizedValueForValue:v7];

  return v10;
}

- (id)normalizedCharacteristicValuesForValues:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__HFControlItem_normalizedCharacteristicValuesForValues___block_invoke;
  v5[3] = &unk_277DF7900;
  v5[4] = self;
  v3 = [a3 na_dictionaryByMappingValues:v5];

  return v3;
}

- (unint64_t)_accessorySuspendedState
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = [(HFControlItem *)self valueSource];
  v3 = [v2 allServices];
  v4 = [v3 na_map:&__block_literal_global_121_0];
  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
  v12[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v7 = [v4 sortedArrayUsingDescriptors:v6];
  v8 = [v7 lastObject];
  v9 = [v8 unsignedIntegerValue];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

id __41__HFControlItem__accessorySuspendedState__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 accessory];
  v4 = [v2 numberWithUnsignedInteger:{objc_msgSend(v3, "suspendedState")}];

  return v4;
}

- (id)_descriptionWithCharacteristicOptions:(BOOL)a3 includeResults:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  if (v5)
  {
    v8 = [(HFControlItem *)self characteristicOptions];
    v9 = [v7 appendObject:v8 withName:@"characteristics"];
  }

  if (v4)
  {
    v10 = [(HFItem *)self latestResults];
    v11 = [v7 appendObject:v10 withName:@"latestResults"];
  }

  v12 = [v7 build];

  return v12;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() na_identity];
  LOBYTE(self) = [v5 isObject:self equalToObject:v4];

  return self;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() na_identity];
  v4 = [v3 hashOfObject:self];

  return v4;
}

@end