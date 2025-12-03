@interface FCBundleSubscriptionLookUpEntryManager
- (FCBundleSubscriptionLookUpEntry)bundleSubscriptionLookUpEntry;
- (FCBundleSubscriptionLookUpEntryManager)initWithLocalStore:(id)store;
- (void)addBundleChannelIDs:(id)ds bundleChannelIDsVersion:(id)version purchaseID:(id)d inTrialPeriod:(BOOL)period isPurchaser:(BOOL)purchaser servicesBundlePurchaseID:(id)iD isAmplifyUser:(BOOL)user initialPurchaseTimestamp:(id)self0 isPaidBundleViaOfferActivated:(BOOL)self1;
- (void)cleanupStaleExpiredEntry;
- (void)loadLocalCachesFromStore;
- (void)setBundleSubscriptionLookUpEntry:(id)entry;
- (void)updateEntry:(id)entry;
@end

@implementation FCBundleSubscriptionLookUpEntryManager

- (FCBundleSubscriptionLookUpEntry)bundleSubscriptionLookUpEntry
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__29;
  v11 = __Block_byref_object_dispose__29;
  v12 = 0;
  lock = [(FCBundleSubscriptionLookUpEntryManager *)self lock];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__FCBundleSubscriptionLookUpEntryManager_bundleSubscriptionLookUpEntry__block_invoke;
  v6[3] = &unk_1E7C37160;
  v6[4] = self;
  v6[5] = &v7;
  [lock performWithLockSync:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)loadLocalCachesFromStore
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  localStore = [(FCBundleSubscriptionLookUpEntryManager *)self localStore];
  allKeys = [localStore allKeys];

  v5 = [allKeys countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        localStore2 = [(FCBundleSubscriptionLookUpEntryManager *)self localStore];
        v11 = [localStore2 objectForKey:v9];
        if (v11)
        {
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;

        v14 = FCPurchaseLog;
        if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v22 = v13;
          _os_log_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_INFO, "Bundle subscription lookup entries loaded from cache, entries=%{public}@", buf, 0xCu);
        }

        if (v13 && [v9 hasPrefix:@"bd-"])
        {
          v15 = [[FCBundleSubscriptionLookUpEntry alloc] initWithEntryID:v9 dictionaryRepresentation:v13];
          if (v15)
          {
            [(FCBundleSubscriptionLookUpEntryManager *)self setBundleSubscriptionLookUpEntry:v15];
          }
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v6);
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __71__FCBundleSubscriptionLookUpEntryManager_bundleSubscriptionLookUpEntry__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _bundleSubscriptionLookUpEntry];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (FCBundleSubscriptionLookUpEntryManager)initWithLocalStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = FCBundleSubscriptionLookUpEntryManager;
  v5 = [(FCBundleSubscriptionLookUpEntryManager *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69B6920]) initWithOptions:1];
    lock = v5->_lock;
    v5->_lock = v6;

    [(FCBundleSubscriptionLookUpEntryManager *)v5 setLocalStore:storeCopy];
    [(FCBundleSubscriptionLookUpEntryManager *)v5 loadLocalCachesFromStore];
  }

  return v5;
}

- (void)addBundleChannelIDs:(id)ds bundleChannelIDsVersion:(id)version purchaseID:(id)d inTrialPeriod:(BOOL)period isPurchaser:(BOOL)purchaser servicesBundlePurchaseID:(id)iD isAmplifyUser:(BOOL)user initialPurchaseTimestamp:(id)self0 isPaidBundleViaOfferActivated:(BOOL)self1
{
  v40 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  versionCopy = version;
  dCopy = d;
  iDCopy = iD;
  timestampCopy = timestamp;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "purchaseID"];
    *buf = 136315906;
    v33 = "[FCBundleSubscriptionLookUpEntryManager addBundleChannelIDs:bundleChannelIDsVersion:purchaseID:inTrialPeriod:isPurchaser:servicesBundlePurchaseID:isAmplifyUser:initialPurchaseTimestamp:isPaidBundleViaOfferActivated:]";
    v34 = 2080;
    v35 = "FCBundleSubscriptionLookUpEntryManager.m";
    v36 = 1024;
    v37 = 77;
    v38 = 2114;
    v39 = v27;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (!dsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "channelIDs"];
    *buf = 136315906;
    v33 = "[FCBundleSubscriptionLookUpEntryManager addBundleChannelIDs:bundleChannelIDsVersion:purchaseID:inTrialPeriod:isPurchaser:servicesBundlePurchaseID:isAmplifyUser:initialPurchaseTimestamp:isPaidBundleViaOfferActivated:]";
    v34 = 2080;
    v35 = "FCBundleSubscriptionLookUpEntryManager.m";
    v36 = 1024;
    v37 = 78;
    v38 = 2114;
    v39 = v28;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v21 = [(FCBundleSubscriptionLookUpEntryManager *)self _bundleSubscriptionLookupEntryForPurchaseID:dCopy];
  BYTE1(v30) = activated;
  LOBYTE(v30) = user;
  BYTE2(v29) = purchaser;
  BYTE1(v29) = period;
  LOBYTE(v29) = 0;
  v22 = [FCBundleSubscriptionLookUpEntry initWithEntryID:"initWithEntryID:bundleChannelIDs:bundleChannelIDsVersion:purchaseID:purchaseValidationState:dateOfExpiration:hasShownRenewalNotice:inTrialPeriod:isPurchaser:servicesBundlePurchaseID:isAmplifyUser:isPaidBundleViaOfferActivated:initialPurchaseTimestamp:" bundleChannelIDs:v21 bundleChannelIDsVersion:dsCopy purchaseID:versionCopy purchaseValidationState:dCopy dateOfExpiration:0 hasShownRenewalNotice:0 inTrialPeriod:v29 isPurchaser:iDCopy servicesBundlePurchaseID:v30 isAmplifyUser:timestampCopy isPaidBundleViaOfferActivated:? initialPurchaseTimestamp:?];
  [(FCBundleSubscriptionLookUpEntryManager *)self setBundleSubscriptionLookUpEntry:v22];
  localStore = [(FCBundleSubscriptionLookUpEntryManager *)self localStore];
  dictionaryRepresentation = [(FCBundleSubscriptionLookUpEntry *)v22 dictionaryRepresentation];
  identifier = [(FCBundleSubscriptionLookUpEntry *)v22 identifier];
  [localStore setObject:dictionaryRepresentation forKey:identifier];

  v26 = *MEMORY[0x1E69E9840];
}

- (void)updateEntry:(id)entry
{
  entryCopy = entry;
  v5 = [entryCopy copy];
  [(FCBundleSubscriptionLookUpEntryManager *)self setBundleSubscriptionLookUpEntry:v5];

  localStore = [(FCBundleSubscriptionLookUpEntryManager *)self localStore];
  dictionaryRepresentation = [entryCopy dictionaryRepresentation];
  identifier = [entryCopy identifier];

  [localStore setObject:dictionaryRepresentation forKey:identifier];
}

- (void)cleanupStaleExpiredEntry
{
  bundleSubscriptionLookUpEntry = [(FCBundleSubscriptionLookUpEntryManager *)self bundleSubscriptionLookUpEntry];
  if ([bundleSubscriptionLookUpEntry purchaseValidationState] == 1)
  {
    bundleSubscriptionLookUpEntry2 = [(FCBundleSubscriptionLookUpEntryManager *)self bundleSubscriptionLookUpEntry];
    dateOfExpiration = [bundleSubscriptionLookUpEntry2 dateOfExpiration];
    date = [MEMORY[0x1E695DF00] date];
    v6 = [dateOfExpiration fc_isWithinTimeInterval:date ofDate:864000.0];

    if ((v6 & 1) == 0)
    {
      localStore = [(FCBundleSubscriptionLookUpEntryManager *)self localStore];
      bundleSubscriptionLookUpEntry3 = [(FCBundleSubscriptionLookUpEntryManager *)self bundleSubscriptionLookUpEntry];
      identifier = [bundleSubscriptionLookUpEntry3 identifier];
      [localStore removeObjectForKey:identifier];

      [(FCBundleSubscriptionLookUpEntryManager *)self setBundleSubscriptionLookUpEntry:0];
    }
  }

  else
  {
  }
}

- (void)setBundleSubscriptionLookUpEntry:(id)entry
{
  entryCopy = entry;
  lock = [(FCBundleSubscriptionLookUpEntryManager *)self lock];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__FCBundleSubscriptionLookUpEntryManager_setBundleSubscriptionLookUpEntry___block_invoke;
  v7[3] = &unk_1E7C36C58;
  v7[4] = self;
  v8 = entryCopy;
  v6 = entryCopy;
  [lock performWithLockSync:v7];
}

@end