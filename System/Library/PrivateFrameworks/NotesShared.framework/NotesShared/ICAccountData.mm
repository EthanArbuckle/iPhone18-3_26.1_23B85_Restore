@interface ICAccountData
+ (ICAccountData)accountDataWithIdentifier:(id)identifier context:(id)context;
+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context;
+ (id)newAccountDataForAccount:(id)account;
+ (id)newAccountDataWithIdentifier:(id)identifier account:(id)account;
- (BOOL)isInICloudAccount;
- (BOOL)mergeCloudKitRecord:(id)record accountID:(id)d approach:(int64_t)approach mergeableFieldState:(id)state;
- (BOOL)mergeWithMergeableData:(id)data;
- (ICTTMergeableWallClockValue)mergeableCryptoPassphraseVerifier;
- (NSData)cryptoPassphraseVerifier;
- (id)makeCloudKitRecordForApproach:(int64_t)approach mergeableFieldState:(id)state;
- (void)saveMergeableDataIfNeeded;
- (void)setCryptoPassphraseVerifier:(id)verifier;
- (void)updateChangeCountWithReason:(id)reason;
- (void)updateSupportsV1Neo:(id)neo;
- (void)updateSupportsV1NeoWithAccountDevices:(id)devices;
@end

@implementation ICAccountData

- (void)updateChangeCountWithReason:(id)reason
{
  reasonCopy = reason;
  if ([(ICAccountData *)self markedForDeletion])
  {
    [(ICCloudSyncingObject *)self setMarkedForDeletion:0];
  }

  v5.receiver = self;
  v5.super_class = ICAccountData;
  [(ICCloudSyncingObject *)&v5 updateChangeCountWithReason:reasonCopy];
}

- (void)updateSupportsV1Neo:(id)neo
{
  neoCopy = neo;
  v5 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICAccountData updateSupportsV1Neo:v5];
  }

  account = [(ICAccountData *)self account];
  accountType = [account accountType];

  if (accountType == 1)
  {
    objc_initWeak(&location, self);
    v8 = +[ICCompatibilityController sharedController];
    account2 = [(ICAccountData *)self account];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __37__ICAccountData_updateSupportsV1Neo___block_invoke;
    v10[3] = &unk_2781970E8;
    objc_copyWeak(&v12, &location);
    v11 = neoCopy;
    [v8 devicesForAccount:account2 completionHandler:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    [(ICAccountData *)self updateSupportsV1NeoWithAccountDevices:MEMORY[0x277CBEBF8]];
    if (neoCopy)
    {
      neoCopy[2](neoCopy);
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

- (void)updateSupportsV1NeoWithAccountDevices:(id)devices
{
  v24 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v5 = NSStringFromSelector(sel_supportsV1Neo);
  v6 = [(ICAccountData *)self primitiveValueForKey:v5];

  if (!v6)
  {
    if (ICInternalSettingsIsLockedNotesV1NeoEnabled())
    {
      account = [(ICAccountData *)self account];
      accountType = [account accountType];

      if (accountType == 3)
      {
        v7 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          account2 = [(ICAccountData *)self account];
          shortLoggingDescription = [account2 shortLoggingDescription];
          v20 = 138412290;
          v21 = shortLoggingDescription;
          v17 = "Enabling v1 Neo support for local account {account: %@}";
LABEL_18:
          _os_log_impl(&dword_214D51000, v7, OS_LOG_TYPE_INFO, v17, &v20, 0xCu);

          goto LABEL_19;
        }

        goto LABEL_19;
      }

      if (devicesCopy)
      {
        v18 = [devicesCopy ic_allSatisfy:&__block_literal_global_32];
        v7 = os_log_create("com.apple.notes", "Crypto");
        v19 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
        if (v18)
        {
          if (v19)
          {
            account2 = [(ICAccountData *)self account];
            shortLoggingDescription = [account2 shortLoggingDescription];
            v20 = 138412290;
            v21 = shortLoggingDescription;
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

        account3 = [(ICAccountData *)self account];
        shortLoggingDescription2 = [account3 shortLoggingDescription];
        v20 = 138412290;
        v21 = shortLoggingDescription2;
        v10 = "Not updating v1 Neo support state for cloud account because there are unsupported devices {account: %@}";
      }

      else
      {
        v7 = os_log_create("com.apple.notes", "Crypto");
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          goto LABEL_12;
        }

        account3 = [(ICAccountData *)self account];
        shortLoggingDescription2 = [account3 shortLoggingDescription];
        v20 = 138412290;
        v21 = shortLoggingDescription2;
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

      account3 = [(ICAccountData *)self account];
      shortLoggingDescription2 = [account3 shortLoggingDescription];
      v20 = 138412290;
      v21 = shortLoggingDescription2;
      v10 = "Not updating v1 Neo support state since feature flag is disabled {account: %@}";
    }

    v11 = v7;
    v12 = 12;
    goto LABEL_11;
  }

  v7 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    account3 = [(ICAccountData *)self account];
    shortLoggingDescription2 = [account3 shortLoggingDescription];
    v20 = 138412546;
    v21 = shortLoggingDescription2;
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
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    v5 = [(ICTTMergeableWallClockValue *)v7 initWithValue:v4 timestamp:distantPast];
  }

  return v5;
}

- (NSData)cryptoPassphraseVerifier
{
  mergeableCryptoPassphraseVerifier = [(ICAccountData *)self mergeableCryptoPassphraseVerifier];
  value = [mergeableCryptoPassphraseVerifier value];

  return value;
}

- (void)setCryptoPassphraseVerifier:(id)verifier
{
  verifierCopy = verifier;
  v9 = [[ICTTMergeableWallClockValue alloc] initWithValue:verifierCopy timestamp:0];

  v5 = NSStringFromSelector(sel_cryptoPassphraseVerifier);
  [(ICAccountData *)self willChangeValueForKey:v5];

  serialize = [(ICTTMergeableWallClockValue *)v9 serialize];
  v7 = NSStringFromSelector(sel_cryptoPassphraseVerifier);
  [(ICAccountData *)self setPrimitiveValue:serialize forKey:v7];

  v8 = NSStringFromSelector(sel_cryptoPassphraseVerifier);
  [(ICAccountData *)self didChangeValueForKey:v8];
}

- (void)saveMergeableDataIfNeeded
{
  account = [(ICAccountData *)self account];
  [account saveSubFolderMergeableDataIfNeeded];
}

- (BOOL)mergeWithMergeableData:(id)data
{
  dataCopy = data;
  account = [(ICAccountData *)self account];
  v6 = [account mergeWithSubFolderMergeableData:dataCopy];

  return v6;
}

+ (ICAccountData)accountDataWithIdentifier:(id)identifier context:(id)context
{
  v6 = MEMORY[0x277CCAC30];
  contextCopy = context;
  identifier = [v6 predicateWithFormat:@"identifier = %@", identifier];
  v9 = [self ic_objectsMatchingPredicate:identifier context:contextCopy];

  firstObject = [v9 firstObject];

  return firstObject;
}

+ (id)newAccountDataForAccount:(id)account
{
  v4 = MEMORY[0x277CCAD78];
  accountCopy = account;
  uUID = [v4 UUID];
  uUIDString = [uUID UUIDString];
  v8 = [self newAccountDataWithIdentifier:uUIDString account:accountCopy];

  return v8;
}

+ (id)newAccountDataWithIdentifier:(id)identifier account:(id)account
{
  accountCopy = account;
  identifierCopy = identifier;
  managedObjectContext = [accountCopy managedObjectContext];
  v9 = [self newObjectWithIdentifier:identifierCopy context:managedObjectContext];

  [v9 setAccount:accountCopy];
  persistentStore = [accountCopy persistentStore];

  [v9 assignToPersistentStore:persistentStore];
  [v9 updateSupportsV1Neo:0];
  return v9;
}

- (BOOL)isInICloudAccount
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  managedObjectContext = [(ICAccountData *)self managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__ICAccountData_CloudKit__isInICloudAccount__block_invoke;
  v5[3] = &unk_278194DE8;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [managedObjectContext performBlockAndWait:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __44__ICAccountData_CloudKit__isInICloudAccount__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) account];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isInICloudAccount];
}

+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context
{
  dCopy = d;
  v8 = [ICAccount cloudKitAccountWithIdentifier:iD context:context];
  accountDataCreateIfNecessary = [v8 accountDataCreateIfNecessary];
  v10 = accountDataCreateIfNecessary;
  if (dCopy && ([accountDataCreateIfNecessary recordID], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqual:", dCopy), v11, v12))
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)mergeCloudKitRecord:(id)record accountID:(id)d approach:(int64_t)approach mergeableFieldState:(id)state
{
  recordCopy = record;
  stateCopy = state;
  if (!approach)
  {
    v31.receiver = self;
    v31.super_class = ICAccountData;
    if (![(ICCloudSyncingObject *)&v31 mergeCloudKitRecord:recordCopy accountID:d approach:0 mergeableFieldState:stateCopy])
    {
      goto LABEL_13;
    }

    v15 = [recordCopy ic_encryptedInlineableDataAssetForKeyPrefix:@"MergeableData"];
    if (v15)
    {
      [(ICAccountData *)self mergeWithMergeableData:v15];
      [(ICAccountData *)self saveMergeableDataIfNeeded];
    }

    v16 = [recordCopy objectForKeyedSubscript:@"LockedNotesMode"];

    if (v16)
    {
      objc_opt_class();
      v17 = [recordCopy objectForKeyedSubscript:@"LockedNotesMode"];
      v18 = ICCheckedDynamicCast();
      -[ICAccountData setLockedNotesMode:](self, "setLockedNotesMode:", [v18 integerValue]);
    }

    v19 = [recordCopy objectForKeyedSubscript:@"CryptoPassphraseVerifier"];
    if ([ICTTMergeableWallClockValue canParseData:v19])
    {
      if (v19)
      {
        mergeableCryptoPassphraseVerifier = [(ICAccountData *)self mergeableCryptoPassphraseVerifier];
        v21 = [[ICTTMergeableWallClockValue alloc] initWithData:v19];
        if (mergeableCryptoPassphraseVerifier)
        {
          if ([(ICTTMergeableWallClockValue *)mergeableCryptoPassphraseVerifier merge:v21]!= 2)
          {
LABEL_20:

            goto LABEL_21;
          }

          serialize = [(ICTTMergeableWallClockValue *)mergeableCryptoPassphraseVerifier serialize];
          v23 = NSStringFromSelector(sel_cryptoPassphraseVerifier);
          [(ICAccountData *)self setPrimitiveValue:serialize forKey:v23];

          v24 = mergeableCryptoPassphraseVerifier;
        }

        else
        {
          v29 = NSStringFromSelector(sel_cryptoPassphraseVerifier);
          [(ICAccountData *)self setPrimitiveValue:v19 forKey:v29];

          v24 = v21;
        }

        timestamp = [(ICTTMergeableWallClockValue *)v24 timestamp];
        [stateCopy setObject:timestamp forKeyedSubscript:@"CryptoPassphraseVerifier"];

        goto LABEL_20;
      }

      selfCopy2 = self;
      v28 = 0;
    }

    else
    {
      selfCopy2 = self;
      v28 = v19;
    }

    [(ICAccountData *)selfCopy2 setCryptoPassphraseVerifier:v28];
LABEL_21:

    v25 = 1;
    goto LABEL_14;
  }

  v12 = MEMORY[0x277D36198];
  className = [(ICAccountData *)self className];
  v14 = ICStringFromSyncingApproach(approach);
  [v12 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICAccountData(CloudKit) mergeCloudKitRecord:accountID:approach:mergeableFieldState:]" simulateCrash:1 showAlert:0 format:{@"Object %@ does not support sync approach: %@", className, v14}];

LABEL_13:
  v25 = 0;
LABEL_14:

  return v25;
}

- (id)makeCloudKitRecordForApproach:(int64_t)approach mergeableFieldState:(id)state
{
  stateCopy = state;
  if (approach)
  {
    v7 = MEMORY[0x277D36198];
    className = [(ICAccountData *)self className];
    v9 = ICStringFromSyncingApproach(approach);
    [v7 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICAccountData(CloudKit) makeCloudKitRecordForApproach:mergeableFieldState:]" simulateCrash:1 showAlert:0 format:{@"Object %@ does not support sync approach: %@", className, v9}];

    v10 = 0;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = ICAccountData;
    v10 = [(ICCloudSyncingObject *)&v19 makeCloudKitRecordForApproach:0 mergeableFieldState:stateCopy];
    mergeableData = [(ICAccountData *)self mergeableData];

    if (mergeableData)
    {
      mergeableData2 = [(ICAccountData *)self mergeableData];
      [v10 ic_setEncryptedInlineableDataAsset:mergeableData2 forKeyPrefix:@"MergeableData" approach:0 withObject:self];
    }

    v13 = [MEMORY[0x277CCABB0] numberWithShort:{-[ICAccountData lockedNotesMode](self, "lockedNotesMode")}];
    [v10 setObject:v13 forKeyedSubscript:@"LockedNotesMode"];

    mergeableCryptoPassphraseVerifier = [(ICAccountData *)self mergeableCryptoPassphraseVerifier];
    v15 = mergeableCryptoPassphraseVerifier;
    if (mergeableCryptoPassphraseVerifier)
    {
      serialize = [mergeableCryptoPassphraseVerifier serialize];
      [v10 setObject:serialize forKeyedSubscript:@"CryptoPassphraseVerifier"];

      timestamp = [v15 timestamp];
      [stateCopy setObject:timestamp forKeyedSubscript:@"CryptoPassphraseVerifier"];
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