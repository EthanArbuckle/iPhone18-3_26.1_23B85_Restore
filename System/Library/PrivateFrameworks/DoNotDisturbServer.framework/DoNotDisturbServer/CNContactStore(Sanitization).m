@interface CNContactStore(Sanitization)
- (id)fetchContactsWithIdentifiers:()Sanitization error:;
- (id)sanitizeContacts:()Sanitization;
@end

@implementation CNContactStore(Sanitization)

- (id)sanitizeContacts:()Sanitization
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [MEMORY[0x277CBEB58] set];
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = [MEMORY[0x277CBEB58] set];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          if ([v13 needsSanitization])
          {
            v14 = [v13 contactIdentifier];
            [v7 addObject:v14];
          }

          else
          {
            [v6 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }

    if ([v7 count])
    {
      v21 = 0;
      v15 = [a1 fetchContactsWithIdentifiers:v7 error:&v21];
      v16 = v21;
      if (v16)
      {
        v17 = DNDSLogSettings;
        if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_ERROR))
        {
          [(CNContactStore(Sanitization) *)v16 sanitizeContacts:v17];
        }
      }

      else
      {
        [v5 unionSet:v15];
        [v5 unionSet:v6];
        v8 = v5;
      }

      v18 = v8;
    }

    else
    {
      v18 = v8;
    }
  }

  else
  {
    v18 = v4;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)fetchContactsWithIdentifiers:()Sanitization error:
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__10;
  v22 = __Block_byref_object_dispose__10;
  v23 = [MEMORY[0x277CBEB58] set];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__10;
  v16 = __Block_byref_object_dispose__10;
  v17 = 0;
  v7 = [v6 allObjects];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__CNContactStore_Sanitization__fetchContactsWithIdentifiers_error___block_invoke;
  v11[3] = &unk_278F8B2C0;
  v11[4] = a1;
  v11[5] = &v18;
  v11[6] = &v12;
  [v7 enumerateBatchesOfSize:10 handler:v11];

  if (a4)
  {
    v8 = v13[5];
    if (v8)
    {
      *a4 = v8;
    }
  }

  v9 = v19[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v9;
}

- (void)sanitizeContacts:()Sanitization .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_24912E000, a2, OS_LOG_TYPE_ERROR, "Could not sanitize contacts; will use existing data this time: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end