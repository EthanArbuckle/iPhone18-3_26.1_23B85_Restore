@interface HFTVInputControlItem
+ (id)_inputSourceValueComparatorForTelevisionProfile:(id)a3;
+ (id)inputCharacteristicTypes;
+ (id)readOnlyOptionalInputCharacteristicTypes;
- (HFTVInputControlItem)initWithValueSource:(id)a3 characteristicOptions:(id)a4 displayResults:(id)a5;
- (HFTVInputControlItem)initWithValueSource:(id)a3 displayResults:(id)a4;
- (id)copyWithCharacteristicOptions:(id)a3 valueSource:(id)a4;
- (id)readValueAndPopulateStandardResults;
- (id)valueForCharacteristicType:(id)a3 inBatchReadResponse:(id)a4;
- (id)writeValue:(id)a3;
@end

@implementation HFTVInputControlItem

+ (id)inputCharacteristicTypes
{
  if (_MergedGlobals_303 != -1)
  {
    dispatch_once(&_MergedGlobals_303, &__block_literal_global_3_29);
  }

  v3 = qword_280E03AB0;

  return v3;
}

void __48__HFTVInputControlItem_inputCharacteristicTypes__block_invoke_2()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CCF748], *MEMORY[0x277CCF750], 0}];
  v1 = qword_280E03AB0;
  qword_280E03AB0 = v0;
}

+ (id)readOnlyOptionalInputCharacteristicTypes
{
  if (qword_280E03AB8 != -1)
  {
    dispatch_once(&qword_280E03AB8, &__block_literal_global_7_11);
  }

  v3 = qword_280E03AC0;

  return v3;
}

void __64__HFTVInputControlItem_readOnlyOptionalInputCharacteristicTypes__block_invoke_2()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CCF880], *MEMORY[0x277CCF920], 0}];
  v1 = qword_280E03AC0;
  qword_280E03AC0 = v0;
}

+ (id)_inputSourceValueComparatorForTelevisionProfile:(id)a3
{
  v3 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__HFTVInputControlItem__inputSourceValueComparatorForTelevisionProfile___block_invoke;
  aBlock[3] = &unk_277E00310;
  v8 = v3;
  v4 = v3;
  v5 = _Block_copy(aBlock);

  return v5;
}

uint64_t __72__HFTVInputControlItem__inputSourceValueComparatorForTelevisionProfile___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) hf_mediaSourceComparator];
  v8 = [v5 identifier];
  v9 = [v6 identifier];
  v10 = (v7)[2](v7, v8, v9);

  if (!v10)
  {
    v11 = [v5 name];
    v12 = [v6 name];
    v10 = [v11 localizedStandardCompare:v12];
  }

  return v10;
}

- (HFTVInputControlItem)initWithValueSource:(id)a3 characteristicOptions:(id)a4 displayResults:(id)a5
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithValueSource_characteristicOptions_displayResults_);
  [v7 handleFailureInMethod:a2 object:self file:@"HFTVInputControlItem.m" lineNumber:66 description:{@"%s is unavailable; use %@ instead", "-[HFTVInputControlItem initWithValueSource:characteristicOptions:displayResults:]", v8}];

  return 0;
}

- (HFTVInputControlItem)initWithValueSource:(id)a3 displayResults:(id)a4
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = &unk_282524E58;
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() inputCharacteristicTypes];
  v16[1] = &unk_282524E70;
  v17[0] = v8;
  v9 = [objc_opt_class() readOnlyOptionalInputCharacteristicTypes];
  v17[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v11 = [[HFControlItemCharacteristicOptions alloc] initWithCharacteristicTypesByUsage:v10];
  v15.receiver = self;
  v15.super_class = HFTVInputControlItem;
  v12 = [(HFControlItem *)&v15 initWithValueSource:v7 characteristicOptions:v11 displayResults:v6];

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)copyWithCharacteristicOptions:(id)a3 valueSource:(id)a4
{
  v5 = a4;
  v6 = objc_alloc(objc_opt_class());
  v7 = [(HFControlItem *)self displayResults];
  v8 = [v6 initWithValueSource:v5 displayResults:v7];

  [v8 copyLatestResultsFromItem:self];
  return v8;
}

uint64_t __57__HFTVInputControlItem_supportsItemRepresentingServices___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 serviceType];
  if ([v3 isEqualToString:*MEMORY[0x277CD0E78]])
  {
    v4 = 1;
  }

  else
  {
    v5 = [v2 serviceType];
    v4 = [v5 isEqualToString:*MEMORY[0x277CD0F20]];
  }

  return v4;
}

- (id)readValueAndPopulateStandardResults
{
  v10.receiver = self;
  v10.super_class = HFTVInputControlItem;
  v2 = [(HFControlItem *)&v10 readValueAndPopulateStandardResults];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = _HFLocalizedStringWithDefaultValue(@"HFControlShortTitleInputSelection", @"HFControlShortTitleInputSelection", 1);
  [v3 setObject:v4 forKeyedSubscript:@"title"];

  [v3 setObject:&unk_282524E88 forKeyedSubscript:@"controlItemPurpose"];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__HFTVInputControlItem_readValueAndPopulateStandardResults__block_invoke;
  v8[3] = &unk_277DF3FD0;
  v9 = v3;
  v5 = v3;
  v6 = [v2 flatMap:v8];

  return v6;
}

id __59__HFTVInputControlItem_readValueAndPopulateStandardResults__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 addEntriesFromDictionary:*(a1 + 32)];
  v4 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v4;
}

- (id)valueForCharacteristicType:(id)a3 inBatchReadResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  v31.receiver = self;
  v31.super_class = HFTVInputControlItem;
  v8 = [(HFControlItem *)&v31 valueForCharacteristicType:v6 inBatchReadResponse:v7];
  if (![v6 isEqualToString:*MEMORY[0x277CCF8E8]] && (v9 = *MEMORY[0x277CCF750], objc_msgSend(v6, "isEqualToString:", *MEMORY[0x277CCF750])) && (objc_msgSend(v7, "responseForCharacteristicType:", v9), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "value"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    v12 = [v7 responseForCharacteristicType:v9];
    v13 = [v12 valueWithExpectedClass:objc_opt_class()];

    if (v13)
    {
      v14 = [v7 servicesWithValue:v13 forCharacteristicType:v9];
      v15 = [v14 anyObject];

      v27 = v15;
      v16 = [v15 accessory];
      v17 = [v16 televisionProfiles];
      v18 = [v17 firstObject];

      v19 = [v15 hf_childServices];
      v20 = [v19 na_filter:&__block_literal_global_37_6];

      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __71__HFTVInputControlItem_valueForCharacteristicType_inBatchReadResponse___block_invoke_2;
      v28[3] = &unk_277DFB4C0;
      v29 = v13;
      v30 = v7;
      v21 = [v20 na_map:v28];
      v22 = [v21 allObjects];
      v23 = v18;
      v24 = [objc_opt_class() _inputSourceValueComparatorForTelevisionProfile:v18];
      v25 = [v22 sortedArrayUsingComparator:v24];
    }

    else
    {
      v25 = v8;
    }
  }

  else
  {
    v25 = v8;
  }

  return v25;
}

uint64_t __71__HFTVInputControlItem_valueForCharacteristicType_inBatchReadResponse___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 serviceType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CD0E78]];

  return v3;
}

id __71__HFTVInputControlItem_valueForCharacteristicType_inBatchReadResponse___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 name];
  v5 = [v3 mediaSourceIdentifier];
  v6 = v5;
  if (!v4)
  {
    v10 = HFLogForCategory(0);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 138412290;
    v19 = v3;
    v12 = "No name for input source service: %@";
LABEL_17:
    _os_log_error_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);
    goto LABEL_8;
  }

  if (v5)
  {
    v7 = [v5 isEqualToNumber:*(a1 + 32)];
    v8 = [*(a1 + 40) responseForCharacteristicType:*MEMORY[0x277CCF880] inService:v3];
    v9 = [v8 valueWithExpectedClass:objc_opt_class()];

    v16 = MEMORY[0x277D85DD0];
    v17 = v3;
    v10 = v9;
    if ([v17 configurationState] == 2)
    {
      v11 = 1;
    }

    else if (v9)
    {
      v11 = [v9 integerValue] == 1;
    }

    else
    {
      v11 = 0;
    }

    v13 = [HFTVInputControlItemValue valueWithInputName:v4 identifier:v6 isHidden:v11 isSelected:v7];

    goto LABEL_13;
  }

  v10 = HFLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v19 = v3;
    v12 = "No media source identifier for input source service: %@";
    goto LABEL_17;
  }

LABEL_8:
  v13 = 0;
LABEL_13:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __71__HFTVInputControlItem_valueForCharacteristicType_inBatchReadResponse___block_invoke_38(uint64_t a1)
{
  if ([*(a1 + 32) configurationState] == 2)
  {
    return 1;
  }

  result = *(a1 + 40);
  if (result)
  {
    return [result integerValue] == 1;
  }

  return result;
}

- (id)writeValue:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [HFServiceTreeTypePredicate predicateWithServiceType:*MEMORY[0x277CD0F20]];
    v9 = [HFServiceStateCharacteristicRecipe alloc];
    v10 = [(HFServiceStateCharacteristicRecipe *)v9 initWithCharacteristicType:*MEMORY[0x277CCF750] servicePredicate:v8 required:1];
    v11 = [(HFControlItem *)self valueSource];
    v17 = v10;
    v12 = [v7 identifier];
    v18[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v14 = [v11 writeValuesForCharacteristicRecipes:v13];
  }

  else
  {
    v14 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end