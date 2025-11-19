@interface CNContactStore
@end

@implementation CNContactStore

void __67__CNContactStore_Sanitization__fetchContactsWithIdentifiers_error___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x277CBDA70]);
  v8 = [MEMORY[0x277D058F0] keysToFetch];
  v9 = [v7 initWithKeysToFetch:v8];

  v10 = [MEMORY[0x277CBDA58] predicateForContactsWithIdentifiers:v5];
  [v9 setPredicate:v10];

  [v9 setUnifyResults:1];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __67__CNContactStore_Sanitization__fetchContactsWithIdentifiers_error___block_invoke_2;
  v22[3] = &unk_278F8A240;
  v11 = a1[4];
  v22[4] = a1[5];
  v23 = 0;
  v12 = [v11 enumerateContactsWithFetchRequest:v9 error:&v23 usingBlock:v22];
  v13 = v23;
  v14 = v23;
  v15 = DNDSLogSettings;
  if (v12)
  {
    if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(*(a1[5] + 8) + 40);
      v17 = v15;
      v18 = [v16 count];
      *buf = 134349056;
      v25 = v18;
      _os_log_impl(&dword_24912E000, v17, OS_LOG_TYPE_DEFAULT, "Fetched %{public}lld sanitizated contacts", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_ERROR))
    {
      __67__CNContactStore_Sanitization__fetchContactsWithIdentifiers_error___block_invoke_cold_1(v14, v15);
    }

    v19 = *(a1[5] + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = 0;

    *a3 = 1;
    objc_storeStrong((*(a1[6] + 8) + 40), v13);
  }

  objc_autoreleasePoolPop(v6);
  v21 = *MEMORY[0x277D85DE8];
}

void __67__CNContactStore_Sanitization__fetchContactsWithIdentifiers_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277D058F0] contactWithCNContact:a2];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
}

void __67__CNContactStore_Sanitization__fetchContactsWithIdentifiers_error___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_24912E000, a2, OS_LOG_TYPE_ERROR, "Unable to fetch sanitized contacts: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end