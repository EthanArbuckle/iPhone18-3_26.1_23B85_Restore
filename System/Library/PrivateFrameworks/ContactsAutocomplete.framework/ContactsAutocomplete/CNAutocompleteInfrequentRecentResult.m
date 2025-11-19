@interface CNAutocompleteInfrequentRecentResult
+ (id)comparators;
+ (id)contactResultWithDisplayName:(id)a3 value:(id)a4 lastSendingAddress:(id)a5 dateCount:(unint64_t)a6 date:(id)a7;
+ (id)groupResultWithDisplayName:(id)a3 dateCount:(unint64_t)a4 date:(id)a5;
@end

@implementation CNAutocompleteInfrequentRecentResult

+ (id)contactResultWithDisplayName:(id)a3 value:(id)a4 lastSendingAddress:(id)a5 dateCount:(unint64_t)a6 date:(id)a7
{
  result = [a1 contactResultWithDisplayName:a3 value:a4 lastSendingAddress:a5 date:a7];
  *(result + 19) = a6;
  return result;
}

+ (id)groupResultWithDisplayName:(id)a3 dateCount:(unint64_t)a4 date:(id)a5
{
  result = [a1 groupResultWithDisplayName:a3 date:a5];
  *(result + 19) = a4;
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