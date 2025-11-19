@interface ICAccountData
+ (ICAccountData)accountDataWithIdentifier:(id)a3 context:(id)a4;
+ (id)existingCloudObjectForRecordID:(id)a3 accountID:(id)a4 context:(id)a5;
+ (id)newAccountDataForAccount:(id)a3;
+ (id)newAccountDataWithIdentifier:(id)a3 account:(id)a4;
- (BOOL)isInICloudAccount;
- (BOOL)mergeCloudKitRecord:(id)a3 accountID:(id)a4 approach:(int64_t)a5 mergeableFieldState:(id)a6;
- (BOOL)mergeWithMergeableData:(id)a3;
- (ICTTMergeableWallClockValue)mergeableCryptoPassphraseVerifier;
- (NSData)cryptoPassphraseVerifier;
- (id)makeCloudKitRecordForApproach:(int64_t)a3 mergeableFieldState:(id)a4;
- (void)saveMergeableDataIfNeeded;
- (void)setCryptoPassphraseVerifier:(id)a3;
- (void)updateChangeCountWithReason:(id)a3;
- (void)updateSupportsV1Neo:(id)a3;
- (void)updateSupportsV1NeoWithAccountDevices:(id)a3;
@end

@implementation ICAccountData

- (void)updateChangeCountWithReason:(id)a3
{
  v4 = a3;
  if ([(ICAccountData *)self markedForDeletion])
  {
    [(ICCloudSyncingObject *)self setMarkedForDeletion:0];
  }

  v5.receiver = self;
  v5.super_class = ICAccountData;
  [(ICCloudSyncingObject *)&v5 updateChangeCountWithReason:v4];
}

- (void)updateSupportsV1Neo:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICAccountData updateSupportsV1Neo:v5];
  }

  v6 = [(ICAccountData *)self account];
  v7 = [v6 accountType];

  if (v7 == 1)
  {
    objc_initWeak(&location, self);
    v8 = +[ICCompatibilityController sharedController];
    v9 = [(ICAccountData *)self account];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __37__ICAccountData_updateSupportsV1Neo___block_invoke;
    v10[3] = &unk_2781970E8;
    objc_copyWeak(&v12, &location);
    v11 = v4;
    [v8 devicesForAccount:v9 completionHandler:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    [(ICAccountData *)self updateSupportsV1NeoWithAccountDevices:MEMORY[0x277CBEBF8]];
    if (v4)
    {
      v4[2](v4);
    }
  }
}

void __37__ICAccountData_updateSupportsV1Neo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__ICAccountData_updateSupportsV1Neo___block_invoke_2;
  v7[3] = &unk_2781970C0;
  objc_copyWeak(&v10, (a1 + 40));
  v6 = v3;
  v8 = v6;
  v9 = *(a1 + 32);
  [v5 performBlockAndWait:v7];

  objc_destroyWeak(&v10);
}

uint64_t __37__ICAccountData_updateSupportsV1Neo___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained updateSupportsV1NeoWithAccountDevices:*(a1 + 32)];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)updateSupportsV1NeoWithAccountDevices:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = NSStringFromSelector(sel_supportsV1Neo);
  v6 = [(ICAccountData *)self primitiveValueForKey:v5];

  if (!v6)
  {
    if (ICInternalSettingsIsLockedNotesV1NeoEnabled())
    {
      v13 = [(ICAccountData *)self account];
      v14 = [v13 accountType];

      if (v14 == 3)
      {
        v7 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v15 = [(ICAccountData *)self account];
          v16 = [v15 shortLoggingDescription];
          v20 = 138412290;
          v21 = v16;
          v17 = "Enabling v1 Neo support for local account {account: %@}";
LABEL_18:
          _os_log_impl(&dword_214D51000, v7, OS_LOG_TYPE_INFO, v17, &v20, 0xCu);

          goto LABEL_19;
        }

        goto LABEL_19;
      }

      if (v4)
      {
        v18 = [v4 ic_allSatisfy:&__block_literal_global_32];
        v7 = os_log_create("com.apple.notes", "Crypto");
        v19 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
        if (v18)
        {
          if (v19)
          {
            v15 = [(ICAccountData *)self account];
            v16 = [v15 shortLoggingDescription];
            v20 = 138412290;
            v21 = v16;
            v17 = "Enabling v1 Neo support for cloud account {account: %@}";
            goto LABEL_18;
          }

LABEL_19:

          [(ICAccountData *)self setSupportsV1Neo:1];
          goto LABEL_13;
        }

        if (!v19)
        {
          goto LABEL_12;
        }

        v8 = [(ICAccountData *)self account];
        v9 = [v8 shortLoggingDescription];
        v20 = 138412290;
        v21 = v9;
        v10 = "Not updating v1 Neo support state for cloud account because there are unsupported devices {account: %@}";
      }

      else
      {
        v7 = os_log_create("com.apple.notes", "Crypto");
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          goto LABEL_12;
        }

        v8 = [(ICAccountData *)self account];
        v9 = [v8 shortLoggingDescription];
        v20 = 138412290;
        v21 = v9;
        v10 = "Not updating v1 Neo support state because compatible devices couldn't be fetched {account: %@}";
      }
    }

    else
    {
      v7 = os_log_create("com.apple.notes", "Crypto");
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        goto LABEL_12;
      }

      v8 = [(ICAccountData *)self account];
      v9 = [v8 shortLoggingDescription];
      v20 = 138412290;
      v21 = v9;
      v10 = "Not updating v1 Neo support state since feature flag is disabled {account: %@}";
    }

    v11 = v7;
    v12 = 12;
    goto LABEL_11;
  }

  v7 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [(ICAccountData *)self account];
    v9 = [v8 shortLoggingDescription];
    v20 = 138412546;
    v21 = v9;
    v22 = 2112;
    v23 = v6;
    v10 = "Not updating v1 Neo support state since explicit value was set {account: %@, supportsV1Neo: %@}";
    v11 = v7;
    v12 = 22;
LABEL_11:
    _os_log_impl(&dword_214D51000, v11, OS_LOG_TYPE_INFO, v10, &v20, v12);
  }

LABEL_12:

LABEL_13:
}

- (ICTTMergeableWallClockValue)mergeableCryptoPassphraseVerifier
{
  v3 = NSStringFromSelector(sel_cryptoPassphraseVerifier);
  v4 = [(ICAccountData *)self primitiveValueForKey:v3];

  if ([ICTTMergeableWallClockValue canParseData:v4])
  {
    v5 = [[ICTTMergeableWallClockValue alloc] initWithData:v4];
  }

  else
  {
    v6 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(ICAccountData *)v6 mergeableCryptoPassphraseVerifier];
    }

    v7 = [ICTTMergeableWallClockValue alloc];
    v8 = [MEMORY[0x277CBEAA8] distantPast];
    v5 = [(ICTTMergeableWallClockValue *)v7 initWithValue:v4 timestamp:v8];
  }

  return v5;
}

- (NSData)cryptoPassphraseVerifier
{
  v2 = [(ICAccountData *)self mergeableCryptoPassphraseVerifier];
  v3 = [v2 value];

  return v3;
}

- (void)setCryptoPassphraseVerifier:(id)a3
{
  v4 = a3;
  v9 = [[ICTTMergeableWallClockValue alloc] initWithValue:v4 timestamp:0];

  v5 = NSStringFromSelector(sel_cryptoPassphraseVerifier);
  [(ICAccountData *)self willChangeValueForKey:v5];

  v6 = [(ICTTMergeableWallClockValue *)v9 serialize];
  v7 = NSStringFromSelector(sel_cryptoPassphraseVerifier);
  [(ICAccountData *)self setPrimitiveValue:v6 forKey:v7];

  v8 = NSStringFromSelector(sel_cryptoPassphraseVerifier);
  [(ICAccountData *)self didChangeValueForKey:v8];
}

- (void)saveMergeableDataIfNeeded
{
  v2 = [(ICAccountData *)self account];
  [v2 saveSubFolderMergeableDataIfNeeded];
}

- (BOOL)mergeWithMergeableData:(id)a3
{
  v4 = a3;
  v5 = [(ICAccountData *)self account];
  v6 = [v5 mergeWithSubFolderMergeableData:v4];

  return v6;
}

+ (ICAccountData)accountDataWithIdentifier:(id)a3 context:(id)a4
{
  v6 = MEMORY[0x277CCAC30];
  v7 = a4;
  v8 = [v6 predicateWithFormat:@"identifier = %@", a3];
  v9 = [a1 ic_objectsMatchingPredicate:v8 context:v7];

  v10 = [v9 firstObject];

  return v10;
}

+ (id)newAccountDataForAccount:(id)a3
{
  v4 = MEMORY[0x277CCAD78];
  v5 = a3;
  v6 = [v4 UUID];
  v7 = [v6 UUIDString];
  v8 = [a1 newAccountDataWithIdentifier:v7 account:v5];

  return v8;
}

+ (id)newAccountDataWithIdentifier:(id)a3 account:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 managedObjectContext];
  v9 = [a1 newObjectWithIdentifier:v7 context:v8];

  [v9 setAccount:v6];
  v10 = [v6 persistentStore];

  [v9 assignToPersistentStore:v10];
  [v9 updateSupportsV1Neo:0];
  return v9;
}

- (BOOL)isInICloudAccount
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(ICAccountData *)self managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__ICAccountData_CloudKit__isInICloudAccount__block_invoke;
  v5[3] = &unk_278194DE8;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 performBlockAndWait:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __44__ICAccountData_CloudKit__isInICloudAccount__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) account];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isInICloudAccount];
}

+ (id)existingCloudObjectForRecordID:(id)a3 accountID:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = [ICAccount cloudKitAccountWithIdentifier:a4 context:a5];
  v9 = [v8 accountDataCreateIfNecessary];
  v10 = v9;
  if (v7 && ([v9 recordID], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqual:", v7), v11, v12))
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)mergeCloudKitRecord:(id)a3 accountID:(id)a4 approach:(int64_t)a5 mergeableFieldState:(id)a6
{
  v10 = a3;
  v11 = a6;
  if (!a5)
  {
    v31.receiver = self;
    v31.super_class = ICAccountData;
    if (![(ICCloudSyncingObject *)&v31 mergeCloudKitRecord:v10 accountID:a4 approach:0 mergeableFieldState:v11])
    {
      goto LABEL_13;
    }

    v15 = [v10 ic_encryptedInlineableDataAssetForKeyPrefix:@"MergeableData"];
    if (v15)
    {
      [(ICAccountData *)self mergeWithMergeableData:v15];
      [(ICAccountData *)self saveMergeableDataIfNeeded];
    }

    v16 = [v10 objectForKeyedSubscript:@"LockedNotesMode"];

    if (v16)
    {
      objc_opt_class();
      v17 = [v10 objectForKeyedSubscript:@"LockedNotesMode"];
      v18 = ICCheckedDynamicCast();
      -[ICAccountData setLockedNotesMode:](self, "setLockedNotesMode:", [v18 integerValue]);
    }

    v19 = [v10 objectForKeyedSubscript:@"CryptoPassphraseVerifier"];
    if ([ICTTMergeableWallClockValue canParseData:v19])
    {
      if (v19)
      {
        v20 = [(ICAccountData *)self mergeableCryptoPassphraseVerifier];
        v21 = [[ICTTMergeableWallClockValue alloc] initWithData:v19];
        if (v20)
        {
          if ([(ICTTMergeableWallClockValue *)v20 merge:v21]!= 2)
          {
LABEL_20:

            goto LABEL_21;
          }

          v22 = [(ICTTMergeableWallClockValue *)v20 serialize];
          v23 = NSStringFromSelector(sel_cryptoPassphraseVerifier);
          [(ICAccountData *)self setPrimitiveValue:v22 forKey:v23];

          v24 = v20;
        }

        else
        {
          v29 = NSStringFromSelector(sel_cryptoPassphraseVerifier);
          [(ICAccountData *)self setPrimitiveValue:v19 forKey:v29];

          v24 = v21;
        }

        v30 = [(ICTTMergeableWallClockValue *)v24 timestamp];
        [v11 setObject:v30 forKeyedSubscript:@"CryptoPassphraseVerifier"];

        goto LABEL_20;
      }

      v27 = self;
      v28 = 0;
    }

    else
    {
      v27 = self;
      v28 = v19;
    }

    [(ICAccountData *)v27 setCryptoPassphraseVerifier:v28];
LABEL_21:

    v25 = 1;
    goto LABEL_14;
  }

  v12 = MEMORY[0x277D36198];
  v13 = [(ICAccountData *)self className];
  v14 = ICStringFromSyncingApproach(a5);
  [v12 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICAccountData(CloudKit) mergeCloudKitRecord:accountID:approach:mergeableFieldState:]" simulateCrash:1 showAlert:0 format:{@"Object %@ does not support sync approach: %@", v13, v14}];

LABEL_13:
  v25 = 0;
LABEL_14:

  return v25;
}

- (id)makeCloudKitRecordForApproach:(int64_t)a3 mergeableFieldState:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = MEMORY[0x277D36198];
    v8 = [(ICAccountData *)self className];
    v9 = ICStringFromSyncingApproach(a3);
    [v7 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICAccountData(CloudKit) makeCloudKitRecordForApproach:mergeableFieldState:]" simulateCrash:1 showAlert:0 format:{@"Object %@ does not support sync approach: %@", v8, v9}];

    v10 = 0;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = ICAccountData;
    v10 = [(ICCloudSyncingObject *)&v19 makeCloudKitRecordForApproach:0 mergeableFieldState:v6];
    v11 = [(ICAccountData *)self mergeableData];

    if (v11)
    {
      v12 = [(ICAccountData *)self mergeableData];
      [v10 ic_setEncryptedInlineableDataAsset:v12 forKeyPrefix:@"MergeableData" approach:0 withObject:self];
    }

    v13 = [MEMORY[0x277CCABB0] numberWithShort:{-[ICAccountData lockedNotesMode](self, "lockedNotesMode")}];
    [v10 setObject:v13 forKeyedSubscript:@"LockedNotesMode"];

    v14 = [(ICAccountData *)self mergeableCryptoPassphraseVerifier];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 serialize];
      [v10 setObject:v16 forKeyedSubscript:@"CryptoPassphraseVerifier"];

      v17 = [v15 timestamp];
      [v6 setObject:v17 forKeyedSubscript:@"CryptoPassphraseVerifier"];
    }
  }

  return v10;
}

- (void)updateSupportsV1Neo:(os_log_t)log .cold.1(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136315394;
  v2 = "[ICAccountData updateSupportsV1Neo:]";
  v3 = 1024;
  v4 = 55;
  _os_log_debug_impl(&dword_214D51000, log, OS_LOG_TYPE_DEBUG, "Updating v1 Neo support state…%s:%d", &v1, 0x12u);
}

@end