@interface HFPrimaryStateCharacteristicActionSuggestionVendor
- (HFPrimaryStateCharacteristicActionSuggestionVendor)initWithCharacteristicType:(id)a3 normalStateValue:(id)a4 bucketingPolicy:(unint64_t)a5;
- (id)_bucketingValueForAction:(id)a3;
- (id)suggestedActionForCharacteristic:(id)a3 candidateActions:(id)a4;
@end

@implementation HFPrimaryStateCharacteristicActionSuggestionVendor

- (HFPrimaryStateCharacteristicActionSuggestionVendor)initWithCharacteristicType:(id)a3 normalStateValue:(id)a4 bucketingPolicy:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = HFPrimaryStateCharacteristicActionSuggestionVendor;
  v11 = [(HFPrimaryStateCharacteristicActionSuggestionVendor *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_characteristicType, a3);
    objc_storeStrong(&v12->_normalStateValue, a4);
    v12->_bucketingPolicy = a5;
  }

  return v12;
}

- (id)suggestedActionForCharacteristic:(id)a3 candidateActions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x277CCA940]);
  v9 = [v7 allObjects];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __104__HFPrimaryStateCharacteristicActionSuggestionVendor_suggestedActionForCharacteristic_candidateActions___block_invoke;
  v39[3] = &unk_277DFF380;
  v39[4] = self;
  v10 = [v9 na_map:v39];
  v11 = [v8 initWithArray:v10];

  v12 = [v11 allObjects];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __104__HFPrimaryStateCharacteristicActionSuggestionVendor_suggestedActionForCharacteristic_candidateActions___block_invoke_2;
  v37[3] = &unk_277DF3EC0;
  v13 = v11;
  v38 = v13;
  v14 = [v12 sortedArrayUsingComparator:v37];

  v15 = [v14 firstObject];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __104__HFPrimaryStateCharacteristicActionSuggestionVendor_suggestedActionForCharacteristic_candidateActions___block_invoke_3;
  v33[3] = &unk_277DFF3A8;
  v16 = v15;
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
    v32 = self;
    v20 = [v7 na_filter:v30];
    if ([v20 count])
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __104__HFPrimaryStateCharacteristicActionSuggestionVendor_suggestedActionForCharacteristic_candidateActions___block_invoke_5;
      v25[3] = &unk_277DFF3F8;
      v21 = v19;
      v26 = v21;
      v27 = self;
      v28 = v6;
      v29 = v20;
      v22 = __104__HFPrimaryStateCharacteristicActionSuggestionVendor_suggestedActionForCharacteristic_candidateActions___block_invoke_5(v25);
      v23 = [(HFPrimaryStateCharacteristicActionSuggestionVendor *)self normalStateValue];
      [v22 setIsMutuallyExclusiveAction:{objc_msgSend(v21, "isEqual:", v23)}];
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

- (id)_bucketingValueForAction:(id)a3
{
  v5 = a3;
  v6 = [(HFPrimaryStateCharacteristicActionSuggestionVendor *)self bucketingPolicy];
  if (v6 == 1)
  {
    v7 = [v5 targetValue];
    v8 = [(HFPrimaryStateCharacteristicActionSuggestionVendor *)self normalStateValue];
    if ([v7 isEqual:v8])
    {
      [v5 targetValue];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v3 = ;
  }

  else if (!v6)
  {
    v3 = [v5 targetValue];
  }

  return v3;
}

@end