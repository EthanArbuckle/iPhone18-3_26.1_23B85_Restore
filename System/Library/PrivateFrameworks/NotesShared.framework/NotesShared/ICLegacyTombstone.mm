@interface ICLegacyTombstone
+ (BOOL)hasTombstonePrefix:(id)prefix;
+ (id)addLegacyTombstoneWithObjectIdentifier:(id)identifier type:(signed __int16)type account:(id)account;
+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context;
+ (id)legacyTombstoneWithIdentifier:(id)identifier context:(id)context;
+ (id)newCloudObjectForRecord:(id)record accountID:(id)d context:(id)context;
+ (id)newLegacyTombstoneWithIdentifier:(id)identifier type:(signed __int16)type account:(id)account;
+ (id)tombstoneIdentifierForObjectIdentifier:(id)identifier type:(signed __int16)type;
+ (signed)tombstoneTypeFromRecordName:(id)name;
+ (void)addLegacyTombstoneForFolder:(id)folder;
+ (void)addLegacyTombstoneForNote:(id)note;
+ (void)removeLegacyTombstoneForFolder:(id)folder;
+ (void)removeLegacyTombstoneForNote:(id)note;
+ (void)removeLegacyTombstoneWithObjectIdentifier:(id)identifier type:(signed __int16)type context:(id)context;
- (BOOL)hasAllMandatoryFields;
- (BOOL)isEquivalentTo:(id)to;
- (BOOL)mergeCloudKitRecord:(id)record accountID:(id)d approach:(int64_t)approach mergeableFieldState:(id)state;
- (id)ic_loggingValues;
- (id)makeCloudKitRecordForApproach:(int64_t)approach mergeableFieldState:(id)state;
- (void)deleteFromLocalDatabase;
- (void)objectWasDeletedFromCloud;
- (void)objectWasDeletedFromCloudByAnotherDevice;
@end

@implementation ICLegacyTombstone

+ (id)legacyTombstoneWithIdentifier:(id)identifier context:(id)context
{
  v6 = MEMORY[0x277CCAC30];
  contextCopy = context;
  identifier = [v6 predicateWithFormat:@"identifier == %@", identifier];
  v9 = [self legacyTombstonesMatchingPredicate:identifier context:contextCopy];

  firstObject = [v9 firstObject];

  return firstObject;
}

+ (id)newLegacyTombstoneWithIdentifier:(id)identifier type:(signed __int16)type account:(id)account
{
  typeCopy = type;
  identifierCopy = identifier;
  accountCopy = account;
  v10 = accountCopy;
  if (!identifierCopy)
  {
    v15 = MEMORY[0x277D36198];
    v16 = NSStringFromClass(self);
    [v15 handleFailedAssertWithCondition:"identifier" functionName:"+[ICLegacyTombstone newLegacyTombstoneWithIdentifier:type:account:]" simulateCrash:1 showAlert:0 format:{@"Trying to create a %@ with no identifier", v16}];

    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = MEMORY[0x277D36198];
    v18 = NSStringFromClass(self);
    [v17 handleFailedAssertWithCondition:"account" functionName:"+[ICLegacyTombstone newLegacyTombstoneWithIdentifier:type:account:]" simulateCrash:1 showAlert:0 format:{@"Trying to create a %@ with no account", v18}];

    goto LABEL_3;
  }

  if (!accountCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  managedObjectContext = [v10 managedObjectContext];
  v12 = [self newObjectWithIdentifier:identifierCopy context:managedObjectContext];

  persistentStore = [v10 persistentStore];
  [v12 assignToPersistentStore:persistentStore];

  [v12 setType:typeCopy];
  [v12 setAccount:v10];

  return v12;
}

+ (id)addLegacyTombstoneWithObjectIdentifier:(id)identifier type:(signed __int16)type account:(id)account
{
  typeCopy = type;
  accountCopy = account;
  identifierCopy = identifier;
  managedObjectContext = [accountCopy managedObjectContext];
  v11 = [self tombstoneIdentifierForObjectIdentifier:identifierCopy type:typeCopy];

  v12 = [self legacyTombstoneWithIdentifier:v11 context:managedObjectContext];
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
    v13 = [ICLegacyTombstone newLegacyTombstoneWithIdentifier:v11 type:typeCopy account:accountCopy];
    [v13 updateChangeCountWithReason:@"Created tombstone"];
  }

  return v13;
}

+ (void)removeLegacyTombstoneWithObjectIdentifier:(id)identifier type:(signed __int16)type context:(id)context
{
  typeCopy = type;
  contextCopy = context;
  v10 = [self tombstoneIdentifierForObjectIdentifier:identifier type:typeCopy];
  v9 = [self legacyTombstoneWithIdentifier:? context:?];

  if (v9)
  {
    [v9 markForDeletion];
  }
}

+ (void)addLegacyTombstoneForNote:(id)note
{
  noteCopy = note;
  identifier = [noteCopy identifier];
  folder = [noteCopy folder];
  account = [folder account];
  v10 = [self addLegacyTombstoneWithObjectIdentifier:identifier type:1 account:account];

  legacyContentHashAtImport = [noteCopy legacyContentHashAtImport];
  [v10 setContentHashAtImport:legacyContentHashAtImport];

  legacyModificationDateAtImport = [noteCopy legacyModificationDateAtImport];

  [v10 setModificationDateAtImport:legacyModificationDateAtImport];
  [v10 updateChangeCountWithReason:@"Created tombstone"];
}

+ (void)removeLegacyTombstoneForNote:(id)note
{
  noteCopy = note;
  identifier = [noteCopy identifier];
  managedObjectContext = [noteCopy managedObjectContext];

  [self removeLegacyTombstoneWithObjectIdentifier:identifier type:1 context:managedObjectContext];
}

+ (void)addLegacyTombstoneForFolder:(id)folder
{
  v12 = *MEMORY[0x277D85DE8];
  folderCopy = folder;
  if (([folderCopy importedFromLegacy] & 1) == 0)
  {
    v5 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [folderCopy identifier];
      v10 = 138412290;
      v11 = identifier;
      _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_DEFAULT, "Trying to add a tombstone for a folder that wasn't from the legacy database: %@", &v10, 0xCu);
    }
  }

  identifier2 = [folderCopy identifier];
  account = [folderCopy account];
  v9 = [self addLegacyTombstoneWithObjectIdentifier:identifier2 type:2 account:account];
}

+ (void)removeLegacyTombstoneForFolder:(id)folder
{
  folderCopy = folder;
  identifier = [folderCopy identifier];
  managedObjectContext = [folderCopy managedObjectContext];

  [self removeLegacyTombstoneWithObjectIdentifier:identifier type:2 context:managedObjectContext];
}

- (BOOL)isEquivalentTo:(id)to
{
  toCopy = to;
  objc_opt_class();
  v5 = ICDynamicCast();

  LODWORD(toCopy) = [(ICLegacyTombstone *)self type];
  if (toCopy == [v5 type])
  {
    contentHashAtImport = [(ICLegacyTombstone *)self contentHashAtImport];
    contentHashAtImport2 = [v5 contentHashAtImport];
    v8 = [contentHashAtImport isEqual:contentHashAtImport2];
    if ((v8 & 1) == 0)
    {
      contentHashAtImport3 = [(ICLegacyTombstone *)self contentHashAtImport];
      contentHashAtImport4 = [v5 contentHashAtImport];
      if (contentHashAtImport3 != contentHashAtImport4)
      {
        v11 = 0;
        goto LABEL_16;
      }

      v26 = contentHashAtImport4;
      v27 = contentHashAtImport3;
    }

    modificationDateAtImport = [(ICLegacyTombstone *)self modificationDateAtImport];
    modificationDateAtImport2 = [v5 modificationDateAtImport];
    v14 = [modificationDateAtImport isEqual:modificationDateAtImport2];
    if ((v14 & 1) == 0)
    {
      modificationDateAtImport3 = [(ICLegacyTombstone *)self modificationDateAtImport];
      modificationDateAtImport4 = [v5 modificationDateAtImport];
      if (modificationDateAtImport3 != modificationDateAtImport4)
      {
        v11 = 0;
        goto LABEL_14;
      }

      v22 = modificationDateAtImport4;
      v24 = modificationDateAtImport3;
    }

    v28 = contentHashAtImport2;
    v29 = contentHashAtImport;
    v17 = [(ICLegacyTombstone *)self account:v22];
    objectID = [v17 objectID];
    account = [v5 account];
    objectID2 = [account objectID];
    v11 = [objectID isEqual:objectID2];

    if (v14)
    {

      contentHashAtImport2 = v28;
      contentHashAtImport = v29;
      goto LABEL_15;
    }

    contentHashAtImport2 = v28;
    contentHashAtImport = v29;
    modificationDateAtImport4 = v23;
    modificationDateAtImport3 = v25;
LABEL_14:

LABEL_15:
    contentHashAtImport4 = v26;
    contentHashAtImport3 = v27;
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
  ic_loggingValues = [(ICCloudSyncingObject *)&v12 ic_loggingValues];
  v4 = [ic_loggingValues mutableCopy];

  managedObjectContext = [(ICLegacyTombstone *)self managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__ICLegacyTombstone_ic_loggingValues__block_invoke;
  v9[3] = &unk_278194AD8;
  v6 = v4;
  v10 = v6;
  selfCopy = self;
  [managedObjectContext performBlockAndWait:v9];

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

+ (id)tombstoneIdentifierForObjectIdentifier:(id)identifier type:(signed __int16)type
{
  typeCopy = type;
  identifierCopy = identifier;
  if (typeCopy == 2)
  {
    v6 = @"LegacyFolderTombstone_";
    goto LABEL_5;
  }

  if (typeCopy == 1)
  {
    v6 = @"LegacyNoteTombstone_";
LABEL_5:
    identifierCopy = [(__CFString *)v6 stringByAppendingString:identifierCopy];
    goto LABEL_9;
  }

  v8 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(ICLegacyTombstone *)identifierCopy tombstoneIdentifierForObjectIdentifier:typeCopy type:v8];
  }

  identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"LegacyTombstone_%@", identifierCopy];
LABEL_9:
  v9 = identifierCopy;

  return v9;
}

+ (signed)tombstoneTypeFromRecordName:(id)name
{
  nameCopy = name;
  v4 = 1;
  if (([nameCopy hasPrefix:@"LegacyNoteTombstone_"] & 1) == 0)
  {
    if ([nameCopy hasPrefix:@"LegacyFolderTombstone_"])
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

+ (BOOL)hasTombstonePrefix:(id)prefix
{
  prefixCopy = prefix;
  if ([prefixCopy hasPrefix:@"LegacyNoteTombstone_"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [prefixCopy hasPrefix:@"LegacyFolderTombstone_"];
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
      contentHashAtImport = [(ICLegacyTombstone *)self contentHashAtImport];
      v4 = [contentHashAtImport length] != 0;
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

+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context
{
  dCopy = d;
  contextCopy = context;
  recordName = [dCopy recordName];
  LODWORD(self) = [self hasTombstonePrefix:recordName];

  if (self)
  {
    recordName2 = [dCopy recordName];
    v11 = [ICLegacyTombstone legacyTombstoneWithIdentifier:recordName2 context:contextCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)newCloudObjectForRecord:(id)record accountID:(id)d context:(id)context
{
  contextCopy = context;
  dCopy = d;
  recordCopy = record;
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];

  recordID2 = [recordCopy recordID];
  recordName2 = [recordID2 recordName];
  v15 = [self tombstoneTypeFromRecordName:recordName2];

  v16 = [ICAccount cloudKitAccountWithIdentifier:dCopy context:contextCopy];

  v17 = [self newLegacyTombstoneWithIdentifier:recordName type:v15 account:v16];
  [v17 mergeCloudKitRecord:recordCopy accountID:dCopy approach:0];

  [v17 setServerRecord:recordCopy];
  [v17 setInCloud:1];
  [v17 clearChangeCountWithReason:@"Created tombstone"];

  return v17;
}

- (id)makeCloudKitRecordForApproach:(int64_t)approach mergeableFieldState:(id)state
{
  if (approach)
  {
    v6 = MEMORY[0x277D36198];
    v7 = [(ICLegacyTombstone *)self className:approach];
    v8 = ICStringFromSyncingApproach(approach);
    [v6 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICLegacyTombstone(CloudKit) makeCloudKitRecordForApproach:mergeableFieldState:]" simulateCrash:1 showAlert:0 format:{@"Object %@ does not support sync approach: %@", v7, v8}];

    v9 = 0;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = ICLegacyTombstone;
    v9 = [(ICCloudSyncingObject *)&v15 makeCloudKitRecordForApproach:0 mergeableFieldState:state];
    contentHashAtImport = [(ICLegacyTombstone *)self contentHashAtImport];

    if (contentHashAtImport)
    {
      contentHashAtImport2 = [(ICLegacyTombstone *)self contentHashAtImport];
      [v9 setObject:contentHashAtImport2 forKeyedSubscript:@"ContentHashAtImport"];
    }

    modificationDateAtImport = [(ICLegacyTombstone *)self modificationDateAtImport];

    if (modificationDateAtImport)
    {
      modificationDateAtImport2 = [(ICLegacyTombstone *)self modificationDateAtImport];
      [v9 setObject:modificationDateAtImport2 forKeyedSubscript:@"ModificationDateAtImport"];
    }
  }

  return v9;
}

- (BOOL)mergeCloudKitRecord:(id)record accountID:(id)d approach:(int64_t)approach mergeableFieldState:(id)state
{
  recordCopy = record;
  if (approach)
  {
    v11 = MEMORY[0x277D36198];
    className = [(ICLegacyTombstone *)self className];
    v13 = ICStringFromSyncingApproach(approach);
    [v11 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICLegacyTombstone(CloudKit) mergeCloudKitRecord:accountID:approach:mergeableFieldState:]" simulateCrash:1 showAlert:0 format:{@"Object %@ does not support sync approach: %@", className, v13}];

LABEL_9:
    v20 = 0;
    goto LABEL_10;
  }

  v22.receiver = self;
  v22.super_class = ICLegacyTombstone;
  if (![(ICCloudSyncingObject *)&v22 mergeCloudKitRecord:recordCopy accountID:d approach:0 mergeableFieldState:state])
  {
    goto LABEL_9;
  }

  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  [(ICLegacyTombstone *)self setIdentifier:recordName];

  v16 = [recordCopy objectForKeyedSubscript:@"ContentHashAtImport"];

  if (v16)
  {
    v17 = [recordCopy objectForKeyedSubscript:@"ContentHashAtImport"];
    [(ICLegacyTombstone *)self setContentHashAtImport:v17];
  }

  v18 = [recordCopy objectForKeyedSubscript:@"ModificationDateAtImport"];

  if (v18)
  {
    v19 = [recordCopy objectForKeyedSubscript:@"ModificationDateAtImport"];
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
    managedObjectContext = [(ICLegacyTombstone *)self managedObjectContext];
    [managedObjectContext deleteObject:self];
  }
}

- (void)objectWasDeletedFromCloudByAnotherDevice
{
  v4.receiver = self;
  v4.super_class = ICLegacyTombstone;
  [(ICCloudSyncingObject *)&v4 objectWasDeletedFromCloudByAnotherDevice];
  if ([(ICCloudSyncingObject *)self hasSuccessfullyPushedLatestVersionToCloud])
  {
    managedObjectContext = [(ICLegacyTombstone *)self managedObjectContext];
    [managedObjectContext deleteObject:self];
  }
}

- (void)deleteFromLocalDatabase
{
  managedObjectContext = [(ICLegacyTombstone *)self managedObjectContext];
  [managedObjectContext deleteObject:self];
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