@interface CNAutocompleteRecentResult
+ (id)comparators;
+ (id)contactResultWithDisplayName:(id)name value:(id)value lastSendingAddress:(id)address date:(id)date;
+ (id)groupResultWithDisplayName:(id)name date:(id)date;
@end

@implementation CNAutocompleteRecentResult

+ (id)contactResultWithDisplayName:(id)name value:(id)value lastSendingAddress:(id)address date:(id)date
{
  dateCopy = date;
  addressCopy = address;
  v12 = [self contactResultWithDisplayName:name value:value nameComponents:0 identifier:0];
  v13 = [dateCopy copy];

  v14 = v12[17];
  v12[17] = v13;

  [v12 setLastSendingAddress:addressCopy];

  return v12;
}

+ (id)groupResultWithDisplayName:(id)name date:(id)date
{
  dateCopy = date;
  v7 = [self groupResultWithDisplayName:name identifier:0];
  v8 = [dateCopy copy];

  v9 = v7[17];
  v7[17] = v8;

  return v7;
}

+ (id)comparators
{
  if (comparators_cn_once_token_14 != -1)
  {
    +[CNAutocompleteRecentResult comparators];
  }

  v3 = comparators_cn_once_object_14;

  return v3;
}

void __41__CNAutocompleteRecentResult_comparators__block_invoke()
{
  v19 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CBEB70]);
  v1 = _Block_copy(sSortResultsByCategory);
  v12 = v1;
  v2 = _Block_copy(sSortRecentResultsByCompletingChosenGroup);
  v13 = v2;
  v3 = _Block_copy(sSortResultsByPreferredDomain);
  v14 = v3;
  v4 = _Block_copy(sSortRecentResultsBySendingAddressMatch);
  v15 = v4;
  v5 = _Block_copy(sSortRecentResultsByDate);
  v16 = v5;
  v6 = _Block_copy(sSortResultsByDisplayName);
  v17 = v6;
  v7 = _Block_copy(sSortResultsByAddress);
  v18 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:7];
  v9 = [v0 initWithArray:{v8, v12, v13, v14, v15, v16, v17}];
  v10 = comparators_cn_once_object_14;
  comparators_cn_once_object_14 = v9;

  v11 = *MEMORY[0x277D85DE8];
}

@end