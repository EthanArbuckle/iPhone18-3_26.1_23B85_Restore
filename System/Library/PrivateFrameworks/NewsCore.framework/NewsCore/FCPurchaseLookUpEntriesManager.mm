@interface FCPurchaseLookUpEntriesManager
- (id)initWithLocalStore:(id *)a1;
- (id)lookupEntriesByTagID;
- (void)addEntryWithTagID:(void *)a3 purchaseID:(void *)a4 lastVerificationTime:(void *)a5 lastVerificationFailureTime:(uint64_t)a6 purchaseType:(uint64_t)a7 purchaseValidationState:(char)a8 isNewsAppPurchase:(void *)a9 dateOfExpiration:(char)a10 hasShownRenewalNotice:;
- (void)removeEntry:(uint64_t)a1;
- (void)removeEntryForTagID:(uint64_t)a1;
- (void)updateEntry:(uint64_t)a1;
@end

@implementation FCPurchaseLookUpEntriesManager

- (id)lookupEntriesByTagID
{
  if (a1)
  {
    a1 = [a1[2] copy];
    v1 = vars8;
  }

  return a1;
}

- (id)initWithLocalStore:(id *)a1
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (a1)
  {
    v32.receiver = a1;
    v32.super_class = FCPurchaseLookUpEntriesManager;
    v5 = objc_msgSendSuper2(&v32, sel_init);
    a1 = v5;
    if (v5)
    {
      v30 = v4;
      objc_storeStrong(v5 + 1, a2);
      v6 = [MEMORY[0x1E695DF90] dictionary];
      v7 = a1[2];
      a1[2] = v6;

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v8 = [a1[1] allKeys];
      v9 = [v8 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v34;
        v12 = 0x1E695D000uLL;
        v13 = @"pl-";
        do
        {
          v14 = 0;
          v31 = v10;
          do
          {
            if (*v34 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v15 = *(*(&v33 + 1) + 8 * v14);
            v16 = *(v12 + 3872);
            objc_opt_class();
            v17 = [a1[1] objectForKey:v15];
            if (v17)
            {
              if (objc_opt_isKindOfClass())
              {
                v18 = v17;
              }

              else
              {
                v18 = 0;
              }
            }

            else
            {
              v18 = 0;
            }

            v19 = v18;

            if (v19 && [v15 hasPrefix:v13])
            {
              v20 = [[FCPurchaseLookUpEntry alloc] initWithEntryID:v15 dictionaryRepresentation:v19];
              if (v20)
              {
                v21 = a1[2];
                [(FCPurchaseLookUpEntry *)v20 tagID];
                v22 = v11;
                v23 = a1;
                v24 = v12;
                v25 = v8;
                v27 = v26 = v13;
                [v21 setObject:v20 forKey:v27];

                v13 = v26;
                v8 = v25;
                v12 = v24;
                a1 = v23;
                v11 = v22;
                v10 = v31;
              }
            }

            ++v14;
          }

          while (v10 != v14);
          v10 = [v8 countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v10);
      }

      v4 = v30;
    }
  }

  v28 = *MEMORY[0x1E69E9840];
  return a1;
}

- (void)addEntryWithTagID:(void *)a3 purchaseID:(void *)a4 lastVerificationTime:(void *)a5 lastVerificationFailureTime:(uint64_t)a6 purchaseType:(uint64_t)a7 purchaseValidationState:(char)a8 isNewsAppPurchase:(void *)a9 dateOfExpiration:(char)a10 hasShownRenewalNotice:
{
  if (a1)
  {
    v16 = a9;
    v17 = a5;
    v18 = a4;
    v19 = a3;
    v20 = a2;
    v21 = [FCPurchaseLookUpEntry alloc];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"pl-", v20];
    LOBYTE(v29) = a10;
    LOBYTE(v28) = a8;
    v32 = [(FCPurchaseLookUpEntry *)v21 initWithEntryID:v22 tagID:v20 purchaseID:v19 lastVerificationTime:v18 lastVerificationFailureTime:v17 purchaseType:a6 purchaseValidationState:a7 isNewsAppPurchase:v28 dateOfExpiration:v16 hasShownRenewalNotice:v29];

    v23 = *(a1 + 16);
    v24 = [(FCPurchaseLookUpEntry *)v32 tagID];
    [v23 fc_safelySetObject:v32 forKey:v24];

    v25 = *(a1 + 8);
    v26 = [(FCPurchaseLookUpEntry *)v32 dictionaryRepresentation];
    v27 = [(FCPurchaseLookUpEntry *)v32 identifier];
    [v25 setObject:v26 forKey:v27];
  }
}

- (void)updateEntry:(uint64_t)a1
{
  v10 = a2;
  if (a1)
  {
    v3 = [v10 tagID];

    if (v3)
    {
      v4 = *(a1 + 16);
      v5 = [v10 copy];
      v6 = [v10 tagID];
      [v4 fc_safelySetObject:v5 forKey:v6];
    }

    v7 = *(a1 + 8);
    v8 = [v10 dictionaryRepresentation];
    v9 = [v10 identifier];
    [v7 setObject:v8 forKey:v9];
  }
}

- (void)removeEntry:(uint64_t)a1
{
  if (a1)
  {
    v3 = [a2 tagID];
    [(FCPurchaseLookUpEntriesManager *)a1 removeEntryForTagID:v3];
  }
}

- (void)removeEntryForTagID:(uint64_t)a1
{
  v7 = a2;
  if (a1)
  {
    if (v7)
    {
      [*(a1 + 16) removeObjectForKey:v7];
    }

    v3 = *(a1 + 8);
    v4 = MEMORY[0x1E696AEC0];
    v5 = v3;
    v6 = [v4 stringWithFormat:@"%@%@", @"pl-", v7];
    [v5 removeObjectForKey:v6];
  }
}

@end