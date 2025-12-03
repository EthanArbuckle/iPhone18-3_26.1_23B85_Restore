@interface HFValveActiveStateControlItem
- (HFValveActiveStateControlItem)initWithValueSource:(id)source auxiliaryTargetValueTuples:(id)tuples additionalCharacteristicOptions:(id)options displayResults:(id)results;
- (HFValveActiveStateControlItem)initWithValueSource:(id)source displayResults:(id)results;
- (id)_faucetValveSubtypeToIconIdentifierMap;
- (id)_iconDescriptorForServiceSubtype:(id)subtype inUse:(BOOL)use active:(BOOL)active hasFaucetAsParentService:(BOOL)service;
- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source;
- (id)resultsForBatchReadResponse:(id)response;
- (id)writeValue:(id)value;
@end

@implementation HFValveActiveStateControlItem

- (HFValveActiveStateControlItem)initWithValueSource:(id)source displayResults:(id)results
{
  v26[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEB98];
  v26[0] = *MEMORY[0x277CCF908];
  v7 = MEMORY[0x277CBEA60];
  resultsCopy = results;
  sourceCopy = source;
  v10 = [v7 arrayWithObjects:v26 count:1];
  v11 = [v6 setWithArray:v10];

  v12 = MEMORY[0x277CBEB98];
  v25 = *MEMORY[0x277CCFA08];
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  v14 = [v12 setWithArray:v13];

  v15 = [HFControlItemCharacteristicOptions alloc];
  v23[0] = &unk_282524FD8;
  v23[1] = &unk_282524FF0;
  v24[0] = v11;
  v24[1] = v14;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v17 = [(HFControlItemCharacteristicOptions *)v15 initWithCharacteristicTypesByUsage:v16];

  v18 = [MEMORY[0x277CBEB98] set];
  v22.receiver = self;
  v22.super_class = HFValveActiveStateControlItem;
  v19 = [(HFPowerStateControlItem *)&v22 initWithValueSource:sourceCopy auxiliaryTargetValueTuples:v18 additionalCharacteristicOptions:v17 displayResults:resultsCopy];

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (HFValveActiveStateControlItem)initWithValueSource:(id)source auxiliaryTargetValueTuples:(id)tuples additionalCharacteristicOptions:(id)options displayResults:(id)results
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithValueSource_displayResults_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFValveActiveStateControlItem.m" lineNumber:36 description:{@"%s is unavailable; use %@ instead", "-[HFValveActiveStateControlItem initWithValueSource:auxiliaryTargetValueTuples:additionalCharacteristicOptions:displayResults:]", v9}];

  return 0;
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

- (id)writeValue:(id)value
{
  v23[1] = *MEMORY[0x277D85DE8];
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

  integerValue = [v7 integerValue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __44__HFValveActiveStateControlItem_writeValue___block_invoke;
  v21[3] = &__block_descriptor_40_e5__8__0l;
  v21[4] = integerValue;
  v9 = __44__HFValveActiveStateControlItem_writeValue___block_invoke(v21);
  v10 = [HFServiceTreeTypePredicate alloc];
  v11 = [MEMORY[0x277CBEB98] set];
  v12 = [(HFServiceTreeTypePredicate *)v10 initWithServiceTypes:v9 serviceSubtypes:v11 includeChildServices:0];

  v13 = [HFServiceStateCharacteristicRecipe alloc];
  v14 = [(HFServiceStateCharacteristicRecipe *)v13 initWithCharacteristicType:*MEMORY[0x277CCF748] servicePredicate:v12 required:1];
  valueSource = [(HFControlItem *)self valueSource];
  v16 = &unk_282525020;
  if (integerValue == 2)
  {
    v16 = &unk_282525008;
  }

  v22 = v14;
  v23[0] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v18 = [valueSource writeValuesForCharacteristicRecipes:v17];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

id __44__HFValveActiveStateControlItem_writeValue___block_invoke(uint64_t a1)
{
  if (*(a1 + 32) == 2)
  {
    if (_MergedGlobals_314 == -1)
    {
      v1 = &qword_280E03C38;
      goto LABEL_6;
    }

    v4 = &_MergedGlobals_314;
    v5 = &__block_literal_global_18_12;
  }

  else
  {
    if (qword_280E03C40 == -1)
    {
      v1 = &qword_280E03C48;
      goto LABEL_6;
    }

    v4 = &qword_280E03C40;
    v5 = &__block_literal_global_22_10;
  }

  dispatch_once(v4, v5);
  v1 = v4 + 1;
LABEL_6:
  v2 = *v1;

  return v2;
}

void __44__HFValveActiveStateControlItem_writeValue___block_invoke_3()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CD0E80];
  v6[0] = *MEMORY[0x277CD0F38];
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v3 = [v0 setWithArray:v2];
  v4 = qword_280E03C38;
  qword_280E03C38 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

void __44__HFValveActiveStateControlItem_writeValue___block_invoke_5()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = *MEMORY[0x277CD0F38];
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v2 = [v0 setWithArray:v1];
  v3 = qword_280E03C48;
  qword_280E03C48 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (id)resultsForBatchReadResponse:(id)response
{
  v36.receiver = self;
  v36.super_class = HFValveActiveStateControlItem;
  responseCopy = response;
  v5 = [(HFControlItem *)&v36 resultsForBatchReadResponse:responseCopy];
  v6 = [v5 mutableCopy];

  v7 = [(HFControlItem *)self valueForCharacteristicType:*MEMORY[0x277CCF748] inBatchReadResponse:responseCopy];
  v8 = [(HFControlItem *)self valueForCharacteristicType:*MEMORY[0x277CCF908] inBatchReadResponse:responseCopy];
  v9 = [HFServiceStateCharacteristicRecipe alloc];
  v10 = *MEMORY[0x277CCFA08];
  v11 = [(HFValveActiveStateControlItem *)self servicePredicateForCharacteristicType:*MEMORY[0x277CCFA08] withUsage:0];
  v12 = [(HFServiceStateCharacteristicRecipe *)v9 initWithCharacteristicType:v10 servicePredicate:v11 required:0];

  v13 = [responseCopy responseForCharacteristicRecipe:v12];

  v14 = [v13 valueWithExpectedClass:objc_opt_class()];
  if (v14 && [v7 BOOLValue] && objc_msgSend(v8, "BOOLValue"))
  {
    characteristic = [v13 characteristic];
    valueUpdatedTime = [characteristic valueUpdatedTime];

    if (!valueUpdatedTime)
    {
      characteristic2 = [v13 characteristic];
      [characteristic2 hf_prettyDescription];
      v19 = v18 = v6;
      NSLog(&cfstr_MissingValueup.isa, v19);

      v6 = v18;
    }

    [v14 doubleValue];
    v20 = [HFFormattedTimeRemainingValue valueWithRemainingDuration:valueUpdatedTime relativeToDate:?];
    goto LABEL_10;
  }

  if ([v7 BOOLValue] && (objc_msgSend(v8, "BOOLValue") & 1) == 0)
  {
    v21 = [HFSimpleFormattedValue alloc];
    valueUpdatedTime = _HFLocalizedStringWithDefaultValue(@"HFControlSupplementaryDescription.Valve.Waiting", @"HFControlSupplementaryDescription.Valve.Waiting", 1);
    v20 = [(HFSimpleFormattedValue *)v21 initWithFormattedValue:valueUpdatedTime];
LABEL_10:
    v22 = v20;
    [v6 setObject:v20 forKeyedSubscript:@"supplementaryFormattedValue"];
  }

  valueSource = [(HFControlItem *)self valueSource];
  primaryServiceDescriptor = [valueSource primaryServiceDescriptor];

  if (primaryServiceDescriptor)
  {
    parentServiceDescriptor = [primaryServiceDescriptor parentServiceDescriptor];
    [parentServiceDescriptor serviceType];
    v35 = v12;
    v27 = v26 = v6;
    v28 = [v27 isEqualToString:*MEMORY[0x277CD0E48]];

    serviceSubtype = [primaryServiceDescriptor serviceSubtype];
    bOOLValue = [v8 BOOLValue];
    bOOLValue2 = [v7 BOOLValue];
    v32 = bOOLValue;
    v6 = v26;
    v12 = v35;
    v33 = [(HFValveActiveStateControlItem *)self _iconDescriptorForServiceSubtype:serviceSubtype inUse:v32 active:bOOLValue2 hasFaucetAsParentService:v28];
    [v6 setObject:v33 forKeyedSubscript:@"decorationIconDescriptor"];
  }

  return v6;
}

- (id)_faucetValveSubtypeToIconIdentifierMap
{
  if (qword_280E03C50 != -1)
  {
    dispatch_once(&qword_280E03C50, &__block_literal_global_42_3);
  }

  v3 = qword_280E03C58;

  return v3;
}

void __71__HFValveActiveStateControlItem__faucetValveSubtypeToIconIdentifierMap__block_invoke_2()
{
  v6[4] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD0DC0];
  v5[0] = *MEMORY[0x277CD0DB0];
  v5[1] = v0;
  v6[0] = @"HFCAPackageIconIdentifierValveShowerHead";
  v6[1] = @"HFCAPackageIconIdentifierFaucet";
  v1 = *MEMORY[0x277CD0DA8];
  v5[2] = *MEMORY[0x277CD0DA0];
  v5[3] = v1;
  v6[2] = @"HFCAPackageIconIdentifierFaucet";
  v6[3] = @"HFCAPackageIconIdentifierFaucet";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v3 = qword_280E03C58;
  qword_280E03C58 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (id)_iconDescriptorForServiceSubtype:(id)subtype inUse:(BOOL)use active:(BOOL)active hasFaucetAsParentService:(BOOL)service
{
  serviceCopy = service;
  activeCopy = active;
  v19[1] = *MEMORY[0x277D85DE8];
  subtypeCopy = subtype;
  if (([subtypeCopy isEqualToString:*MEMORY[0x277CD0DA8]] & 1) != 0 || !serviceCopy)
  {
    _faucetValveSubtypeToIconIdentifierMap = [MEMORY[0x277D755D0] configurationWithPointSize:5 weight:32.0];
    v11 = [[HFSymbolIconConfiguration alloc] initWithSystemImageName:@"drop.fill" configuration:_faucetValveSubtypeToIconIdentifierMap];
    v18 = &unk_282525038;
    v19[0] = v11;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v14 = [[HFMultistateImageIconDescriptor alloc] initWithSymbolIconConfigurationsKeyedByPrimaryState:v13];
LABEL_8:
    v15 = v14;

    goto LABEL_9;
  }

  _faucetValveSubtypeToIconIdentifierMap = [(HFValveActiveStateControlItem *)self _faucetValveSubtypeToIconIdentifierMap];
  v11 = [_faucetValveSubtypeToIconIdentifierMap objectForKeyedSubscript:subtypeCopy];
  if (v11)
  {
    v12 = &HFCAPackageStateOn;
    if (!activeCopy)
    {
      v12 = &HFCAPackageStateOff;
    }

    v13 = *v12;
    v14 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:v11 state:v13];
    goto LABEL_8;
  }

  v15 = 0;
LABEL_9:

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end