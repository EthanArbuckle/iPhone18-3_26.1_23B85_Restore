@interface CNAutocompleteInfrequentRecentResult
+ (id)comparators;
+ (id)contactResultWithDisplayName:(id)name value:(id)value lastSendingAddress:(id)address dateCount:(unint64_t)count date:(id)date;
+ (id)groupResultWithDisplayName:(id)name dateCount:(unint64_t)count date:(id)date;
@end

@implementation CNAutocompleteInfrequentRecentResult

+ (id)contactResultWithDisplayName:(id)name value:(id)value lastSendingAddress:(id)address dateCount:(unint64_t)count date:(id)date
{
  result = [self contactResultWithDisplayName:name value:value lastSendingAddress:address date:date];
  *(result + 19) = count;
  return result;
}

+ (id)groupResultWithDisplayName:(id)name dateCount:(unint64_t)count date:(id)date
{
  result = [self groupResultWithDisplayName:name date:date];
  *(result + 19) = count;
  return result;
}

+ (id)comparators
{
  if (comparators_cn_once_token_15 != -1)
  {
    +[CNAutocompleteInfrequentRecentResult comparators];
  }

  v3 = comparators_cn_once_object_15;

  return v3;
}

void __51__CNAutocompleteInfrequentRecentResult_comparators__block_invoke()
{
  v13[8] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CBEB70]);
  v1 = _Block_copy(sSortResultsByCategory);
  v13[0] = v1;
  v2 = _Block_copy(sSortRecentResultsByCompletingChosenGroup);
  v13[1] = v2;
  v3 = _Block_copy(sSortResultsByPreferredDomain);
  v13[2] = v3;
  v4 = _Block_copy(sSortRecentResultsByDateCount);
  v13[3] = v4;
  v5 = _Block_copy(sSortRecentResultsBySendingAddressMatch);
  v13[4] = v5;
  v6 = _Block_copy(sSortRecentResultsByDate);
  v13[5] = v6;
  v7 = _Block_copy(sSortResultsByDisplayName);
  v13[6] = v7;
  v8 = _Block_copy(sSortResultsByAddress);
  v13[7] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:8];
  v10 = [v0 initWithArray:v9];
  v11 = comparators_cn_once_object_15;
  comparators_cn_once_object_15 = v10;

  v12 = *MEMORY[0x277D85DE8];
}

@end