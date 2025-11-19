@interface ICLegacyTombstone
+ (BOOL)hasTombstonePrefix:(id)a3;
+ (id)addLegacyTombstoneWithObjectIdentifier:(id)a3 type:(signed __int16)a4 account:(id)a5;
+ (id)existingCloudObjectForRecordID:(id)a3 accountID:(id)a4 context:(id)a5;
+ (id)legacyTombstoneWithIdentifier:(id)a3 context:(id)a4;
+ (id)newCloudObjectForRecord:(id)a3 accountID:(id)a4 context:(id)a5;
+ (id)newLegacyTombstoneWithIdentifier:(id)a3 type:(signed __int16)a4 account:(id)a5;
+ (id)tombstoneIdentifierForObjectIdentifier:(id)a3 type:(signed __int16)a4;
+ (signed)tombstoneTypeFromRecordName:(id)a3;
+ (void)addLegacyTombstoneForFolder:(id)a3;
+ (void)addLegacyTombstoneForNote:(id)a3;
+ (void)removeLegacyTombstoneForFolder:(id)a3;
+ (void)removeLegacyTombstoneForNote:(id)a3;
+ (void)removeLegacyTombstoneWithObjectIdentifier:(id)a3 type:(signed __int16)a4 context:(id)a5;
- (BOOL)hasAllMandatoryFields;
- (BOOL)isEquivalentTo:(id)a3;
- (BOOL)mergeCloudKitRecord:(id)a3 accountID:(id)a4 approach:(int64_t)a5 mergeableFieldState:(id)a6;
- (id)ic_loggingValues;
- (id)makeCloudKitRecordForApproach:(int64_t)a3 mergeableFieldState:(id)a4;
- (void)deleteFromLocalDatabase;
- (void)objectWasDeletedFromCloud;
- (void)objectWasDeletedFromCloudByAnotherDevice;
@end

@implementation ICLegacyTombstone

+ (id)legacyTombstoneWithIdentifier:(id)a3 context:(id)a4
{
  v6 = MEMORY[0x277CCAC30];
  v7 = a4;
  v8 = [v6 predicateWithFormat:@"identifier == %@", a3];
  v9 = [a1 legacyTombstonesMatchingPredicate:v8 context:v7];

  v10 = [v9 firstObject];

  return v10;
}

+ (id)newLegacyTombstoneWithIdentifier:(id)a3 type:(signed __int16)a4 account:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (!v8)
  {
    v15 = MEMORY[0x277D36198];
    v16 = NSStringFromClass(a1);
    [v15 handleFailedAssertWithCondition:"identifier" functionName:"+[ICLegacyTombstone newLegacyTombstoneWithIdentifier:type:account:]" simulateCrash:1 showAlert:0 format:{@"Trying to create a %@ with no identifier", v16}];

    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = MEMORY[0x277D36198];
    v18 = NSStringFromClass(a1);
    [v17 handleFailedAssertWithCondition:"account" functionName:"+[ICLegacyTombstone newLegacyTombstoneWithIdentifier:type:account:]" simulateCrash:1 showAlert:0 format:{@"Trying to create a %@ with no account", v18}];

    goto LABEL_3;
  }

  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = [v10 managedObjectContext];
  v12 = [a1 newObjectWithIdentifier:v8 context:v11];

  v13 = [v10 persistentStore];
  [v12 assignToPersistentStore:v13];

  [v12 setType:v6];
  [v12 setAccount:v10];

  return v12;
}

+ (id)addLegacyTombstoneWithObjectIdentifier:(id)a3 type:(signed __int16)a4 account:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [v8 managedObjectContext];
  v11 = [a1 tombstoneIdentifierForObjectIdentifier:v9 type:v5];

  v12 = [a1 legacyTombstoneWithIdentifier:v11 context:v10];
  if (v12)
  {
    v13 = v12;
    if ([v12 markedForDeletion])
    {
      [v13 unmarkForDeletion];
    }
  }

  else
  {
    v13 = [ICLegacyTombstone newLegacyTombstoneWithIdentifier:v11 type:v5 account:v8];
    [v13 updateChangeCountWithReason:@"Created tombstone"];
  }

  return v13;
}

+ (void)removeLegacyTombstoneWithObjectIdentifier:(id)a3 type:(signed __int16)a4 context:(id)a5
{
  v5 = a4;
  v8 = a5;
  v10 = [a1 tombstoneIdentifierForObjectIdentifier:a3 type:v5];
  v9 = [a1 legacyTombstoneWithIdentifier:? context:?];

  if (v9)
  {
    [v9 markForDeletion];
  }
}

+ (void)addLegacyTombstoneForNote:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v4 folder];
  v7 = [v6 account];
  v10 = [a1 addLegacyTombstoneWithObjectIdentifier:v5 type:1 account:v7];

  v8 = [v4 legacyContentHashAtImport];
  [v10 setContentHashAtImport:v8];

  v9 = [v4 legacyModificationDateAtImport];

  [v10 setModificationDateAtImport:v9];
  [v10 updateChangeCountWithReason:@"Created tombstone"];
}

+ (void)removeLegacyTombstoneForNote:(id)a3
{
  v4 = a3;
  v6 = [v4 identifier];
  v5 = [v4 managedObjectContext];

  [a1 removeLegacyTombstoneWithObjectIdentifier:v6 type:1 context:v5];
}

+ (void)addLegacyTombstoneForFolder:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([v4 importedFromLegacy] & 1) == 0)
  {
    v5 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 identifier];
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_DEFAULT, "Trying to add a tombstone for a folder that wasn't from the legacy database: %@", &v10, 0xCu);
    }
  }

  v7 = [v4 identifier];
  v8 = [v4 account];
  v9 = [a1 addLegacyTombstoneWithObjectIdentifier:v7 type:2 account:v8];
}

+ (void)removeLegacyTombstoneForFolder:(id)a3
{
  v4 = a3;
  v6 = [v4 identifier];
  v5 = [v4 managedObjectContext];

  [a1 removeLegacyTombstoneWithObjectIdentifier:v6 type:2 context:v5];
}

- (BOOL)isEquivalentTo:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = ICDynamicCast();

  LODWORD(v4) = [(ICLegacyTombstone *)self type];
  if (v4 == [v5 type])
  {
    v6 = [(ICLegacyTombstone *)self contentHashAtImport];
    v7 = [v5 contentHashAtImport];
    v8 = [v6 isEqual:v7];
    if ((v8 & 1) == 0)
    {
      v9 = [(ICLegacyTombstone *)self contentHashAtImport];
      v10 = [v5 contentHashAtImport];
      if (v9 != v10)
      {
        v11 = 0;
        goto LABEL_16;
      }

      v26 = v10;
      v27 = v9;
    }

    v12 = [(ICLegacyTombstone *)self modificationDateAtImport];
    v13 = [v5 modificationDateAtImport];
    v14 = [v12 isEqual:v13];
    if ((v14 & 1) == 0)
    {
      v15 = [(ICLegacyTombstone *)self modificationDateAtImport];
      v16 = [v5 modificationDateAtImport];
      if (v15 != v16)
      {
        v11 = 0;
        goto LABEL_14;
      }

      v22 = v16;
      v24 = v15;
    }

    v28 = v7;
    v29 = v6;
    v17 = [(ICLegacyTombstone *)self account:v22];
    v18 = [v17 objectID];
    v19 = [v5 account];
    v20 = [v19 objectID];
    v11 = [v18 isEqual:v20];

    if (v14)
    {

      v7 = v28;
      v6 = v29;
      goto LABEL_15;
    }

    v7 = v28;
    v6 = v29;
    v16 = v23;
    v15 = v25;
LABEL_14:

LABEL_15:
    v10 = v26;
    v9 = v27;
    if (v8)
    {
LABEL_17:

      goto LABEL_18;
    }

LABEL_16:

    goto LABEL_17;
  }

  v11 = 0;
LABEL_18:

  return v11;
}

- (id)ic_loggingValues
{
  v12.receiver = self;
  v12.super_class = ICLegacyTombstone;
  v3 = [(ICCloudSyncingObject *)&v12 ic_loggingValues];
  v4 = [v3 mutableCopy];

  v5 = [(ICLegacyTombstone *)self managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__ICLegacyTombstone_ic_loggingValues__block_invoke;
  v9[3] = &unk_278194AD8;
  v6 = v4;
  v10 = v6;
  v11 = self;
  [v5 performBlockAndWait:v9];

  v7 = v6;
  return v6;
}

void __37__ICLegacyTombstone_ic_loggingValues__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithShort:{objc_msgSend(*(a1 + 40), "type")}];
  [*(a1 + 32) setObject:v2 forKeyedSubscript:@"type"];

  v3 = [*(a1 + 40) contentHashAtImport];

  if (v3)
  {
    v4 = [*(a1 + 40) contentHashAtImport];
    [*(a1 + 32) setObject:v4 forKeyedSubscript:@"contentHashAtImport"];
  }

  v5 = [*(a1 + 40) modificationDateAtImport];

  if (v5)
  {
    v6 = [*(a1 + 40) modificationDateAtImport];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:@"modificationDateAtImport"];
  }
}

+ (id)tombstoneIdentifierForObjectIdentifier:(id)a3 type:(signed __int16)a4
{
  v4 = a4;
  v5 = a3;
  if (v4 == 2)
  {
    v6 = @"LegacyFolderTombstone_";
    goto LABEL_5;
  }

  if (v4 == 1)
  {
    v6 = @"LegacyNoteTombstone_";
LABEL_5:
    v7 = [(__CFString *)v6 stringByAppendingString:v5];
    goto LABEL_9;
  }

  v8 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(ICLegacyTombstone *)v5 tombstoneIdentifierForObjectIdentifier:v4 type:v8];
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"LegacyTombstone_%@", v5];
LABEL_9:
  v9 = v7;

  return v9;
}

+ (signed)tombstoneTypeFromRecordName:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 hasPrefix:@"LegacyNoteTombstone_"] & 1) == 0)
  {
    if ([v3 hasPrefix:@"LegacyFolderTombstone_"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

+ (BOOL)hasTombstonePrefix:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"LegacyNoteTombstone_"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 hasPrefix:@"LegacyFolderTombstone_"];
  }

  return v4;
}

- (BOOL)hasAllMandatoryFields
{
  if ([(ICLegacyTombstone *)self type]== 1)
  {
    v7.receiver = self;
    v7.super_class = ICLegacyTombstone;
    if ([(ICCloudSyncingObject *)&v7 hasAllMandatoryFields])
    {
      v3 = [(ICLegacyTombstone *)self contentHashAtImport];
      v4 = [v3 length] != 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6.receiver = self;
    v6.super_class = ICLegacyTombstone;
    return [(ICCloudSyncingObject *)&v6 hasAllMandatoryFields];
  }

  return v4;
}

+ (id)existingCloudObjectForRecordID:(id)a3 accountID:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v7 recordName];
  LODWORD(a1) = [a1 hasTombstonePrefix:v9];

  if (a1)
  {
    v10 = [v7 recordName];
    v11 = [ICLegacyTombstone legacyTombstoneWithIdentifier:v10 context:v8];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)newCloudObjectForRecord:(id)a3 accountID:(id)a4 context:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 recordID];
  v12 = [v11 recordName];

  v13 = [v10 recordID];
  v14 = [v13 recordName];
  v15 = [a1 tombstoneTypeFromRecordName:v14];

  v16 = [ICAccount cloudKitAccountWithIdentifier:v9 context:v8];

  v17 = [a1 newLegacyTombstoneWithIdentifier:v12 type:v15 account:v16];
  [v17 mergeCloudKitRecord:v10 accountID:v9 approach:0];

  [v17 setServerRecord:v10];
  [v17 setInCloud:1];
  [v17 clearChangeCountWithReason:@"Created tombstone"];

  return v17;
}

- (id)makeCloudKitRecordForApproach:(int64_t)a3 mergeableFieldState:(id)a4
{
  if (a3)
  {
    v6 = MEMORY[0x277D36198];
    v7 = [(ICLegacyTombstone *)self className:a3];
    v8 = ICStringFromSyncingApproach(a3);
    [v6 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICLegacyTombstone(CloudKit) makeCloudKitRecordForApproach:mergeableFieldState:]" simulateCrash:1 showAlert:0 format:{@"Object %@ does not support sync approach: %@", v7, v8}];

    v9 = 0;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = ICLegacyTombstone;
    v9 = [(ICCloudSyncingObject *)&v15 makeCloudKitRecordForApproach:0 mergeableFieldState:a4];
    v10 = [(ICLegacyTombstone *)self contentHashAtImport];

    if (v10)
    {
      v11 = [(ICLegacyTombstone *)self contentHashAtImport];
      [v9 setObject:v11 forKeyedSubscript:@"ContentHashAtImport"];
    }

    v12 = [(ICLegacyTombstone *)self modificationDateAtImport];

    if (v12)
    {
      v13 = [(ICLegacyTombstone *)self modificationDateAtImport];
      [v9 setObject:v13 forKeyedSubscript:@"ModificationDateAtImport"];
    }
  }

  return v9;
}

- (BOOL)mergeCloudKitRecord:(id)a3 accountID:(id)a4 approach:(int64_t)a5 mergeableFieldState:(id)a6
{
  v10 = a3;
  if (a5)
  {
    v11 = MEMORY[0x277D36198];
    v12 = [(ICLegacyTombstone *)self className];
    v13 = ICStringFromSyncingApproach(a5);
    [v11 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICLegacyTombstone(CloudKit) mergeCloudKitRecord:accountID:approach:mergeableFieldState:]" simulateCrash:1 showAlert:0 format:{@"Object %@ does not support sync approach: %@", v12, v13}];

LABEL_9:
    v20 = 0;
    goto LABEL_10;
  }

  v22.receiver = self;
  v22.super_class = ICLegacyTombstone;
  if (![(ICCloudSyncingObject *)&v22 mergeCloudKitRecord:v10 accountID:a4 approach:0 mergeableFieldState:a6])
  {
    goto LABEL_9;
  }

  v14 = [v10 recordID];
  v15 = [v14 recordName];
  [(ICLegacyTombstone *)self setIdentifier:v15];

  v16 = [v10 objectForKeyedSubscript:@"ContentHashAtImport"];

  if (v16)
  {
    v17 = [v10 objectForKeyedSubscript:@"ContentHashAtImport"];
    [(ICLegacyTombstone *)self setContentHashAtImport:v17];
  }

  v18 = [v10 objectForKeyedSubscript:@"ModificationDateAtImport"];

  if (v18)
  {
    v19 = [v10 objectForKeyedSubscript:@"ModificationDateAtImport"];
    [(ICLegacyTombstone *)self setModificationDateAtImport:v19];
  }

  v20 = 1;
LABEL_10:

  return v20;
}

- (void)objectWasDeletedFromCloud
{
  v4.receiver = self;
  v4.super_class = ICLegacyTombstone;
  [(ICCloudSyncingObject *)&v4 objectWasDeletedFromCloud];
  if ([(ICCloudSyncingObject *)self hasSuccessfullyPushedLatestVersionToCloud])
  {
    v3 = [(ICLegacyTombstone *)self managedObjectContext];
    [v3 deleteObject:self];
  }
}

- (void)objectWasDeletedFromCloudByAnotherDevice
{
  v4.receiver = self;
  v4.super_class = ICLegacyTombstone;
  [(ICCloudSyncingObject *)&v4 objectWasDeletedFromCloudByAnotherDevice];
  if ([(ICCloudSyncingObject *)self hasSuccessfullyPushedLatestVersionToCloud])
  {
    v3 = [(ICLegacyTombstone *)self managedObjectContext];
    [v3 deleteObject:self];
  }
}

- (void)deleteFromLocalDatabase
{
  v3 = [(ICLegacyTombstone *)self managedObjectContext];
  [v3 deleteObject:self];
}

+ (void)tombstoneIdentifierForObjectIdentifier:(os_log_t)log type:.cold.1(uint64_t a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&dword_214D51000, log, OS_LOG_TYPE_DEBUG, "Creating tombstone identifier for unknown type %d: %@", v3, 0x12u);
}

@end