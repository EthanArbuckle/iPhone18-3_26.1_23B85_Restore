@interface HFPrimaryStateCharacteristicActionSuggestionVendor
- (HFPrimaryStateCharacteristicActionSuggestionVendor)initWithCharacteristicType:(id)type normalStateValue:(id)value bucketingPolicy:(unint64_t)policy;
- (id)_bucketingValueForAction:(id)action;
- (id)suggestedActionForCharacteristic:(id)characteristic candidateActions:(id)actions;
@end

@implementation HFPrimaryStateCharacteristicActionSuggestionVendor

- (HFPrimaryStateCharacteristicActionSuggestionVendor)initWithCharacteristicType:(id)type normalStateValue:(id)value bucketingPolicy:(unint64_t)policy
{
  typeCopy = type;
  valueCopy = value;
  v14.receiver = self;
  v14.super_class = HFPrimaryStateCharacteristicActionSuggestionVendor;
  v11 = [(HFPrimaryStateCharacteristicActionSuggestionVendor *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_characteristicType, type);
    objc_storeStrong(&v12->_normalStateValue, value);
    v12->_bucketingPolicy = policy;
  }

  return v12;
}

- (id)suggestedActionForCharacteristic:(id)characteristic candidateActions:(id)actions
{
  characteristicCopy = characteristic;
  actionsCopy = actions;
  v8 = objc_alloc(MEMORY[0x277CCA940]);
  allObjects = [actionsCopy allObjects];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __104__HFPrimaryStateCharacteristicActionSuggestionVendor_suggestedActionForCharacteristic_candidateActions___block_invoke;
  v39[3] = &unk_277DFF380;
  v39[4] = self;
  v10 = [allObjects na_map:v39];
  v11 = [v8 initWithArray:v10];

  allObjects2 = [v11 allObjects];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __104__HFPrimaryStateCharacteristicActionSuggestionVendor_suggestedActionForCharacteristic_candidateActions___block_invoke_2;
  v37[3] = &unk_277DF3EC0;
  v13 = v11;
  v38 = v13;
  v14 = [allObjects2 sortedArrayUsingComparator:v37];

  firstObject = [v14 firstObject];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __104__HFPrimaryStateCharacteristicActionSuggestionVendor_suggestedActionForCharacteristic_candidateActions___block_invoke_3;
  v33[3] = &unk_277DFF3A8;
  v16 = firstObject;
  v34 = v16;
  v17 = v13;
  v35 = v17;
  v18 = v14;
  v36 = v18;
  if (__104__HFPrimaryStateCharacteristicActionSuggestionVendor_suggestedActionForCharacteristic_candidateActions___block_invoke_3(v33))
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __104__HFPrimaryStateCharacteristicActionSuggestionVendor_suggestedActionForCharacteristic_candidateActions___block_invoke_4;
    v30[3] = &unk_277DFF3D0;
    v19 = v16;
    v31 = v19;
    selfCopy = self;
    v20 = [actionsCopy na_filter:v30];
    if ([v20 count])
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __104__HFPrimaryStateCharacteristicActionSuggestionVendor_suggestedActionForCharacteristic_candidateActions___block_invoke_5;
      v25[3] = &unk_277DFF3F8;
      v21 = v19;
      v26 = v21;
      selfCopy2 = self;
      v28 = characteristicCopy;
      v29 = v20;
      v22 = __104__HFPrimaryStateCharacteristicActionSuggestionVendor_suggestedActionForCharacteristic_candidateActions___block_invoke_5(v25);
      normalStateValue = [(HFPrimaryStateCharacteristicActionSuggestionVendor *)self normalStateValue];
      [v22 setIsMutuallyExclusiveAction:{objc_msgSend(v21, "isEqual:", normalStateValue)}];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

uint64_t __104__HFPrimaryStateCharacteristicActionSuggestionVendor_suggestedActionForCharacteristic_candidateActions___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "countForObject:", a3)}];
  v9 = MEMORY[0x277CCABB0];
  v10 = [*(a1 + 32) countForObject:v7];

  v11 = [v9 numberWithUnsignedInteger:v10];
  v12 = [v8 compare:v11];

  return v12;
}

uint64_t __104__HFPrimaryStateCharacteristicActionSuggestionVendor_suggestedActionForCharacteristic_candidateActions___block_invoke_3(uint64_t a1)
{
  if (!*(a1 + 32) || ![*(a1 + 40) countForObject:?])
  {
    return 0;
  }

  if ([*(a1 + 48) count] == 1)
  {
    return 1;
  }

  v3 = [*(a1 + 40) countForObject:*(a1 + 32)];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) objectAtIndexedSubscript:1];
  v2 = v3 != [v4 countForObject:v5];

  return v2;
}

uint64_t __104__HFPrimaryStateCharacteristicActionSuggestionVendor_suggestedActionForCharacteristic_candidateActions___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _bucketingValueForAction:a2];
  v4 = [v2 isEqual:v3];

  return v4;
}

HFCustomCharacteristicActionSuggestionResult *__104__HFPrimaryStateCharacteristicActionSuggestionVendor_suggestedActionForCharacteristic_candidateActions___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CBEB68] null];

  if (v2 == v3)
  {
    v5 = [HFIncrementalStateCharacteristicActionSuggestionVendor alloc];
    v6 = [*(a1 + 40) characteristicType];
    v7 = [(HFIncrementalStateCharacteristicActionSuggestionVendor *)v5 initWithCharacteristicType:v6];
    v4 = [(HFIncrementalStateCharacteristicActionSuggestionVendor *)v7 suggestedActionForCharacteristic:*(a1 + 48) candidateActions:*(a1 + 56)];
  }

  else
  {
    v4 = [[HFCustomCharacteristicActionSuggestionResult alloc] initWithCharacteristic:*(a1 + 48) targetValue:*(a1 + 32) matchingActions:*(a1 + 56)];
  }

  return v4;
}

- (id)_bucketingValueForAction:(id)action
{
  actionCopy = action;
  bucketingPolicy = [(HFPrimaryStateCharacteristicActionSuggestionVendor *)self bucketingPolicy];
  if (bucketingPolicy == 1)
  {
    targetValue = [actionCopy targetValue];
    normalStateValue = [(HFPrimaryStateCharacteristicActionSuggestionVendor *)self normalStateValue];
    if ([targetValue isEqual:normalStateValue])
    {
      [actionCopy targetValue];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    targetValue2 = ;
  }

  else if (!bucketingPolicy)
  {
    targetValue2 = [actionCopy targetValue];
  }

  return targetValue2;
}

@end