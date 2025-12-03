@interface HFIncrementalStateCharacteristicActionSuggestionVendor
- (HFIncrementalStateCharacteristicActionSuggestionVendor)initWithCharacteristicType:(id)type;
- (id)suggestedActionForCharacteristic:(id)characteristic candidateActions:(id)actions;
@end

@implementation HFIncrementalStateCharacteristicActionSuggestionVendor

- (HFIncrementalStateCharacteristicActionSuggestionVendor)initWithCharacteristicType:(id)type
{
  typeCopy = type;
  v9.receiver = self;
  v9.super_class = HFIncrementalStateCharacteristicActionSuggestionVendor;
  v6 = [(HFIncrementalStateCharacteristicActionSuggestionVendor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_characteristicType, type);
  }

  return v7;
}

- (id)suggestedActionForCharacteristic:(id)characteristic candidateActions:(id)actions
{
  characteristicCopy = characteristic;
  actionsCopy = actions;
  v7 = [actionsCopy na_map:&__block_literal_global_181];
  if ([v7 count])
  {
    allObjects = [v7 allObjects];
    v9 = [allObjects sortedArrayUsingSelector:sel_compare_];

    lastObject = [v9 lastObject];
    metadata = [characteristicCopy metadata];
    v12 = [metadata hf_normalizedValueForValue:lastObject];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __108__HFIncrementalStateCharacteristicActionSuggestionVendor_suggestedActionForCharacteristic_candidateActions___block_invoke_2;
    v17[3] = &unk_277DFF440;
    v18 = v12;
    v13 = v12;
    v14 = [actionsCopy na_filter:v17];
    v15 = [[HFCustomCharacteristicActionSuggestionResult alloc] initWithCharacteristic:characteristicCopy targetValue:v13 matchingActions:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void *__108__HFIncrementalStateCharacteristicActionSuggestionVendor_suggestedActionForCharacteristic_candidateActions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = [v2 targetValue];

  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

BOOL __108__HFIncrementalStateCharacteristicActionSuggestionVendor_suggestedActionForCharacteristic_candidateActions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [v3 targetValue];

  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 compare:*(a1 + 32)] != -1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end