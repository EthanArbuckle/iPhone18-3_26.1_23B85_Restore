@interface CNContactStore(CASAdditions)
- (id)contactWithIdentifier:()CASAdditions keysToFetch:error:;
@end

@implementation CNContactStore(CASAdditions)

- (id)contactWithIdentifier:()CASAdditions keysToFetch:error:
{
  v24[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v10 = [objc_alloc(MEMORY[0x277CBDA70]) initWithKeysToFetch:v9];
  [v10 setUnifyResults:0];
  v11 = MEMORY[0x277CBDA58];
  v24[0] = v8;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v13 = [v11 predicateForContactsWithIdentifiers:v12];
  [v10 setPredicate:v13];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __72__CNContactStore_CASAdditions__contactWithIdentifier_keysToFetch_error___block_invoke;
  v17[3] = &unk_278E05218;
  v17[4] = &v18;
  [self enumerateContactsWithFetchRequest:v10 error:a5 usingBlock:v17];
  v14 = v19[5];

  _Block_object_dispose(&v18, 8);
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end