@interface HFTVInputControlItem
+ (id)_inputSourceValueComparatorForTelevisionProfile:(id)profile;
+ (id)inputCharacteristicTypes;
+ (id)readOnlyOptionalInputCharacteristicTypes;
- (HFTVInputControlItem)initWithValueSource:(id)source characteristicOptions:(id)options displayResults:(id)results;
- (HFTVInputControlItem)initWithValueSource:(id)source displayResults:(id)results;
- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source;
- (id)readValueAndPopulateStandardResults;
- (id)valueForCharacteristicType:(id)type inBatchReadResponse:(id)response;
- (id)writeValue:(id)value;
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

+ (id)_inputSourceValueComparatorForTelevisionProfile:(id)profile
{
  profileCopy = profile;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__HFTVInputControlItem__inputSourceValueComparatorForTelevisionProfile___block_invoke;
  aBlock[3] = &unk_277E00310;
  v8 = profileCopy;
  v4 = profileCopy;
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

- (HFTVInputControlItem)initWithValueSource:(id)source characteristicOptions:(id)options displayResults:(id)results
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithValueSource_characteristicOptions_displayResults_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFTVInputControlItem.m" lineNumber:66 description:{@"%s is unavailable; use %@ instead", "-[HFTVInputControlItem initWithValueSource:characteristicOptions:displayResults:]", v8}];

  return 0;
}

- (HFTVInputControlItem)initWithValueSource:(id)source displayResults:(id)results
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = &unk_282524E58;
  resultsCopy = results;
  sourceCopy = source;
  inputCharacteristicTypes = [objc_opt_class() inputCharacteristicTypes];
  v16[1] = &unk_282524E70;
  v17[0] = inputCharacteristicTypes;
  readOnlyOptionalInputCharacteristicTypes = [objc_opt_class() readOnlyOptionalInputCharacteristicTypes];
  v17[1] = readOnlyOptionalInputCharacteristicTypes;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v11 = [[HFControlItemCharacteristicOptions alloc] initWithCharacteristicTypesByUsage:v10];
  v15.receiver = self;
  v15.super_class = HFTVInputControlItem;
  v12 = [(HFControlItem *)&v15 initWithValueSource:sourceCopy characteristicOptions:v11 displayResults:resultsCopy];

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source
{
  sourceCopy = source;
  v6 = objc_alloc(objc_opt_class());
  displayResults = [(HFControlItem *)self displayResults];
  v8 = [v6 initWithValueSource:sourceCopy displayResults:displayResults];

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
  readValueAndPopulateStandardResults = [(HFControlItem *)&v10 readValueAndPopulateStandardResults];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = _HFLocalizedStringWithDefaultValue(@"HFControlShortTitleInputSelection", @"HFControlShortTitleInputSelection", 1);
  [dictionary setObject:v4 forKeyedSubscript:@"title"];

  [dictionary setObject:&unk_282524E88 forKeyedSubscript:@"controlItemPurpose"];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__HFTVInputControlItem_readValueAndPopulateStandardResults__block_invoke;
  v8[3] = &unk_277DF3FD0;
  v9 = dictionary;
  v5 = dictionary;
  v6 = [readValueAndPopulateStandardResults flatMap:v8];

  return v6;
}

id __59__HFTVInputControlItem_readValueAndPopulateStandardResults__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 addEntriesFromDictionary:*(a1 + 32)];
  v4 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v4;
}

- (id)valueForCharacteristicType:(id)type inBatchReadResponse:(id)response
{
  typeCopy = type;
  responseCopy = response;
  v31.receiver = self;
  v31.super_class = HFTVInputControlItem;
  v8 = [(HFControlItem *)&v31 valueForCharacteristicType:typeCopy inBatchReadResponse:responseCopy];
  if (![typeCopy isEqualToString:*MEMORY[0x277CCF8E8]] && (v9 = *MEMORY[0x277CCF750], objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277CCF750])) && (objc_msgSend(responseCopy, "responseForCharacteristicType:", v9), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "value"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    v12 = [responseCopy responseForCharacteristicType:v9];
    v13 = [v12 valueWithExpectedClass:objc_opt_class()];

    if (v13)
    {
      v14 = [responseCopy servicesWithValue:v13 forCharacteristicType:v9];
      anyObject = [v14 anyObject];

      v27 = anyObject;
      accessory = [anyObject accessory];
      televisionProfiles = [accessory televisionProfiles];
      firstObject = [televisionProfiles firstObject];

      hf_childServices = [anyObject hf_childServices];
      v20 = [hf_childServices na_filter:&__block_literal_global_37_6];

      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __71__HFTVInputControlItem_valueForCharacteristicType_inBatchReadResponse___block_invoke_2;
      v28[3] = &unk_277DFB4C0;
      v29 = v13;
      v30 = responseCopy;
      v21 = [v20 na_map:v28];
      allObjects = [v21 allObjects];
      v23 = firstObject;
      v24 = [objc_opt_class() _inputSourceValueComparatorForTelevisionProfile:firstObject];
      v25 = [allObjects sortedArrayUsingComparator:v24];
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

- (id)writeValue:(id)value
{
  v18[1] = *MEMORY[0x277D85DE8];
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

  if (v7)
  {
    v8 = [HFServiceTreeTypePredicate predicateWithServiceType:*MEMORY[0x277CD0F20]];
    v9 = [HFServiceStateCharacteristicRecipe alloc];
    v10 = [(HFServiceStateCharacteristicRecipe *)v9 initWithCharacteristicType:*MEMORY[0x277CCF750] servicePredicate:v8 required:1];
    valueSource = [(HFControlItem *)self valueSource];
    v17 = v10;
    identifier = [v7 identifier];
    v18[0] = identifier;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    futureWithNoResult = [valueSource writeValuesForCharacteristicRecipes:v13];
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v15 = *MEMORY[0x277D85DE8];

  return futureWithNoResult;
}

@end