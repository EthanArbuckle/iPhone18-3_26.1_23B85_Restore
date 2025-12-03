@interface FCPurchaseLookUpEntriesManager
- (id)initWithLocalStore:(id *)store;
- (id)lookupEntriesByTagID;
- (void)addEntryWithTagID:(void *)d purchaseID:(void *)iD lastVerificationTime:(void *)time lastVerificationFailureTime:(uint64_t)failureTime purchaseType:(uint64_t)type purchaseValidationState:(char)state isNewsAppPurchase:(void *)purchase dateOfExpiration:(char)self0 hasShownRenewalNotice:;
- (void)removeEntry:(uint64_t)entry;
- (void)removeEntryForTagID:(uint64_t)d;
- (void)updateEntry:(uint64_t)entry;
@end

@implementation FCPurchaseLookUpEntriesManager

- (id)lookupEntriesByTagID
{
  if (self)
  {
    self = [self[2] copy];
    v1 = vars8;
  }

  return self;
}

- (id)initWithLocalStore:(id *)store
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (store)
  {
    v32.receiver = store;
    v32.super_class = FCPurchaseLookUpEntriesManager;
    v5 = objc_msgSendSuper2(&v32, sel_init);
    store = v5;
    if (v5)
    {
      v30 = v4;
      objc_storeStrong(v5 + 1, a2);
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v7 = store[2];
      store[2] = dictionary;

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      allKeys = [store[1] allKeys];
      v9 = [allKeys countByEnumeratingWithState:&v33 objects:v37 count:16];
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
              objc_enumerationMutation(allKeys);
            }

            v15 = *(*(&v33 + 1) + 8 * v14);
            v16 = *(v12 + 3872);
            objc_opt_class();
            v17 = [store[1] objectForKey:v15];
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
                v21 = store[2];
                [(FCPurchaseLookUpEntry *)v20 tagID];
                v22 = v11;
                storeCopy = store;
                v24 = v12;
                v25 = allKeys;
                v27 = v26 = v13;
                [v21 setObject:v20 forKey:v27];

                v13 = v26;
                allKeys = v25;
                v12 = v24;
                store = storeCopy;
                v11 = v22;
                v10 = v31;
              }
            }

            ++v14;
          }

          while (v10 != v14);
          v10 = [allKeys countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v10);
      }

      v4 = v30;
    }
  }

  v28 = *MEMORY[0x1E69E9840];
  return store;
}

- (void)addEntryWithTagID:(void *)d purchaseID:(void *)iD lastVerificationTime:(void *)time lastVerificationFailureTime:(uint64_t)failureTime purchaseType:(uint64_t)type purchaseValidationState:(char)state isNewsAppPurchase:(void *)purchase dateOfExpiration:(char)self0 hasShownRenewalNotice:
{
  if (self)
  {
    purchaseCopy = purchase;
    timeCopy = time;
    iDCopy = iD;
    dCopy = d;
    v20 = a2;
    v21 = [FCPurchaseLookUpEntry alloc];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"pl-", v20];
    LOBYTE(v29) = expiration;
    LOBYTE(v28) = state;
    v32 = [(FCPurchaseLookUpEntry *)v21 initWithEntryID:v22 tagID:v20 purchaseID:dCopy lastVerificationTime:iDCopy lastVerificationFailureTime:timeCopy purchaseType:failureTime purchaseValidationState:type isNewsAppPurchase:v28 dateOfExpiration:purchaseCopy hasShownRenewalNotice:v29];

    v23 = *(self + 16);
    tagID = [(FCPurchaseLookUpEntry *)v32 tagID];
    [v23 fc_safelySetObject:v32 forKey:tagID];

    v25 = *(self + 8);
    dictionaryRepresentation = [(FCPurchaseLookUpEntry *)v32 dictionaryRepresentation];
    identifier = [(FCPurchaseLookUpEntry *)v32 identifier];
    [v25 setObject:dictionaryRepresentation forKey:identifier];
  }
}

- (void)updateEntry:(uint64_t)entry
{
  v10 = a2;
  if (entry)
  {
    tagID = [v10 tagID];

    if (tagID)
    {
      v4 = *(entry + 16);
      v5 = [v10 copy];
      tagID2 = [v10 tagID];
      [v4 fc_safelySetObject:v5 forKey:tagID2];
    }

    v7 = *(entry + 8);
    dictionaryRepresentation = [v10 dictionaryRepresentation];
    identifier = [v10 identifier];
    [v7 setObject:dictionaryRepresentation forKey:identifier];
  }
}

- (void)removeEntry:(uint64_t)entry
{
  if (entry)
  {
    tagID = [a2 tagID];
    [(FCPurchaseLookUpEntriesManager *)entry removeEntryForTagID:tagID];
  }
}

- (void)removeEntryForTagID:(uint64_t)d
{
  v7 = a2;
  if (d)
  {
    if (v7)
    {
      [*(d + 16) removeObjectForKey:v7];
    }

    v3 = *(d + 8);
    v4 = MEMORY[0x1E696AEC0];
    v5 = v3;
    v6 = [v4 stringWithFormat:@"%@%@", @"pl-", v7];
    [v5 removeObjectForKey:v6];
  }
}

@end