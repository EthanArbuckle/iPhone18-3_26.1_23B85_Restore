@interface ICDeviceMigrationState
+ (id)currentDeviceMigrationStateForAccount:(id)account createIfNecessary:(BOOL)necessary;
+ (id)deviceMigrationStateWithDeviceIdentifier:(id)identifier account:(id)account;
+ (id)deviceMigrationStateWithDeviceIdentifier:(id)identifier context:(id)context;
+ (id)deviceMigrationStatesByAccountIDInContext:(id)context;
+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context;
+ (id)newCloudObjectForRecord:(id)record accountID:(id)d context:(id)context;
+ (id)newDeviceMigrationStateWithDeviceIdentifier:(id)identifier account:(id)account;
+ (id)stringFromMigrationState:(signed __int16)state;
- (BOOL)mergeCloudKitRecord:(id)record accountID:(id)d approach:(int64_t)approach mergeableFieldState:(id)state;
- (id)ic_loggingValues;
- (id)makeCloudKitRecordForApproach:(int64_t)approach mergeableFieldState:(id)state;
- (void)deleteFromLocalDatabase;
- (void)objectWasDeletedFromCloud;
- (void)objectWasDeletedFromCloudByAnotherDevice;
- (void)objectWasFetchedFromCloudWithRecord:(id)record accountID:(id)d force:(BOOL)force;
@end

@implementation ICDeviceMigrationState

+ (id)deviceMigrationStateWithDeviceIdentifier:(id)identifier context:(id)context
{
  v6 = MEMORY[0x277CCAC30];
  contextCopy = context;
  identifier = [v6 predicateWithFormat:@"%K == %@", @"deviceIdentifier", identifier];
  v9 = [self deviceMigrationStatesMatchingPredicate:identifier context:contextCopy];

  firstObject = [v9 firstObject];

  return firstObject;
}

+ (id)deviceMigrationStateWithDeviceIdentifier:(id)identifier account:(id)account
{
  v6 = MEMORY[0x277CCAC30];
  accountCopy = account;
  accountCopy = [v6 predicateWithFormat:@"(%K == %@) AND (%K == %@)", @"deviceIdentifier", identifier, @"account", accountCopy];
  managedObjectContext = [accountCopy managedObjectContext];

  v10 = [self deviceMigrationStatesMatchingPredicate:accountCopy context:managedObjectContext];
  firstObject = [v10 firstObject];

  return firstObject;
}

+ (id)newDeviceMigrationStateWithDeviceIdentifier:(id)identifier account:(id)account
{
  if (!account)
  {
    return 0;
  }

  accountCopy = account;
  identifierCopy = identifier;
  v8 = [self identifierForDeviceIdentifier:identifierCopy];
  managedObjectContext = [accountCopy managedObjectContext];
  v10 = [self newObjectWithIdentifier:v8 context:managedObjectContext];

  persistentStore = [accountCopy persistentStore];
  [v10 assignToPersistentStore:persistentStore];

  [v10 setAccount:accountCopy];
  [v10 setDeviceIdentifier:identifierCopy];

  return v10;
}

+ (id)currentDeviceMigrationStateForAccount:(id)account createIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  accountCopy = account;
  identifier = [accountCopy identifier];
  managedObjectContext = [accountCopy managedObjectContext];
  v9 = [self deviceMigrationStateWithDeviceIdentifier:identifier context:managedObjectContext];

  if (!v9 && necessaryCopy)
  {
    v9 = [self newDeviceMigrationStateWithDeviceIdentifier:identifier account:accountCopy];
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    [v9 setStateModificationDate:distantPast];
  }

  account = [v9 account];

  if (account != accountCopy)
  {
    v12 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(ICDeviceMigrationState *)v9 currentDeviceMigrationStateForAccount:accountCopy createIfNecessary:v12];
    }

    [v9 setAccount:accountCopy];
  }

  return v9;
}

+ (id)deviceMigrationStatesByAccountIDInContext:(id)context
{
  contextCopy = context;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__18;
  v16 = __Block_byref_object_dispose__18;
  v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__ICDeviceMigrationState_deviceMigrationStatesByAccountIDInContext___block_invoke;
  v8[3] = &unk_278196870;
  selfCopy = self;
  v5 = contextCopy;
  v9 = v5;
  v10 = &v12;
  [v5 performBlockAndWait:v8];
  v6 = [v13[5] copy];

  _Block_object_dispose(&v12, 8);

  return v6;
}

void __68__ICDeviceMigrationState_deviceMigrationStatesByAccountIDInContext___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 48) allDeviceMigrationStatesInContext:*(a1 + 32)];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [v7 account];
        v9 = [v8 identifier];

        if (v9)
        {
          v10 = [MEMORY[0x277CCABB0] numberWithShort:{objc_msgSend(v7, "state")}];
          v11 = *(*(*(a1 + 40) + 8) + 40);
          v12 = [v7 account];
          v13 = [v12 identifier];
          [v11 setObject:v10 forKeyedSubscript:v13];
        }

        else
        {
          v12 = os_log_create("com.apple.notes", "Migration");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            __68__ICDeviceMigrationState_deviceMigrationStatesByAccountIDInContext___block_invoke_cold_1(v18, v7, &v19, v12);
          }

          v10 = v12;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v4);
  }
}

+ (id)stringFromMigrationState:(signed __int16)state
{
  if (state >= 8)
  {
    state = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", state];
  }

  else
  {
    state = off_278196890[state];
  }

  return state;
}

- (id)ic_loggingValues
{
  v12.receiver = self;
  v12.super_class = ICDeviceMigrationState;
  ic_loggingValues = [(ICCloudSyncingObject *)&v12 ic_loggingValues];
  v4 = [ic_loggingValues mutableCopy];

  managedObjectContext = [(ICDeviceMigrationState *)self managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__ICDeviceMigrationState_ic_loggingValues__block_invoke;
  v9[3] = &unk_278194AD8;
  v6 = v4;
  v10 = v6;
  selfCopy = self;
  [managedObjectContext performBlockAndWait:v9];

  v7 = v6;
  return v6;
}

void __42__ICDeviceMigrationState_ic_loggingValues__block_invoke(uint64_t a1)
{
  v2 = [objc_opt_class() stringFromMigrationState:{objc_msgSend(*(a1 + 40), "state")}];
  [*(a1 + 32) setObject:v2 forKeyedSubscript:@"state"];

  v3 = [*(a1 + 40) stateModificationDate];
  v5 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"nil";
  }

  [*(a1 + 32) setObject:v4 forKeyedSubscript:@"stateModificationDate"];
}

+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context
{
  dCopy = d;
  v8 = [ICAccount cloudKitAccountWithIdentifier:iD context:context];
  recordName = [dCopy recordName];

  v10 = [ICDeviceMigrationState deviceMigrationStateWithDeviceIdentifier:recordName account:v8];

  return v10;
}

+ (id)newCloudObjectForRecord:(id)record accountID:(id)d context:(id)context
{
  dCopy = d;
  recordCopy = record;
  v10 = [ICAccount cloudKitAccountWithIdentifier:dCopy context:context];
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  v13 = [self newDeviceMigrationStateWithDeviceIdentifier:recordName account:v10];

  [v13 mergeCloudKitRecord:recordCopy accountID:dCopy approach:0];
  [v13 setServerRecord:recordCopy];

  [v13 setInCloud:1];
  [v13 clearChangeCountWithReason:@"Created migration state"];

  return v13;
}

- (id)makeCloudKitRecordForApproach:(int64_t)approach mergeableFieldState:(id)state
{
  if (approach)
  {
    v6 = MEMORY[0x277D36198];
    v7 = [(ICDeviceMigrationState *)self className:approach];
    v8 = ICStringFromSyncingApproach(approach);
    [v6 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICDeviceMigrationState(CloudKit) makeCloudKitRecordForApproach:mergeableFieldState:]" simulateCrash:1 showAlert:0 format:{@"Object %@ does not support sync approach: %@", v7, v8}];

    v9 = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = ICDeviceMigrationState;
    v9 = [(ICCloudSyncingObject *)&v13 makeCloudKitRecordForApproach:0 mergeableFieldState:state];
    v10 = [MEMORY[0x277CCABB0] numberWithShort:{-[ICDeviceMigrationState state](self, "state")}];
    [v9 setObject:v10 forKeyedSubscript:@"State"];

    stateModificationDate = [(ICDeviceMigrationState *)self stateModificationDate];
    [v9 setObject:stateModificationDate forKeyedSubscript:@"StateModificationDate"];
  }

  return v9;
}

- (BOOL)mergeCloudKitRecord:(id)record accountID:(id)d approach:(int64_t)approach mergeableFieldState:(id)state
{
  v45 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  dCopy = d;
  if (approach)
  {
    v12 = MEMORY[0x277D36198];
    className = [(ICDeviceMigrationState *)self className];
    v14 = ICStringFromSyncingApproach(approach);
    [v12 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICDeviceMigrationState(CloudKit) mergeCloudKitRecord:accountID:approach:mergeableFieldState:]" simulateCrash:1 showAlert:0 format:{@"Object %@ does not support sync approach: %@", className, v14}];

LABEL_15:
    v33 = 0;
    goto LABEL_16;
  }

  v38.receiver = self;
  v38.super_class = ICDeviceMigrationState;
  if (![(ICCloudSyncingObject *)&v38 mergeCloudKitRecord:recordCopy accountID:dCopy approach:0 mergeableFieldState:state])
  {
    goto LABEL_15;
  }

  v15 = [recordCopy objectForKeyedSubscript:@"StateModificationDate"];
  if (v15)
  {
    stateModificationDate = [(ICDeviceMigrationState *)self stateModificationDate];
    if (!stateModificationDate || (v17 = stateModificationDate, -[ICDeviceMigrationState stateModificationDate](self, "stateModificationDate"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v15 ic_isLaterThanDate:v18], v18, v17, v19))
    {
      [(ICDeviceMigrationState *)self setStateModificationDate:v15];
      v20 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        ic_loggingIdentifier = [recordCopy ic_loggingIdentifier];
        *buf = 138412802;
        v40 = ic_loggingIdentifier;
        v41 = 2112;
        v42 = dCopy;
        v43 = 2112;
        v44 = v15;
        _os_log_debug_impl(&dword_214D51000, v20, OS_LOG_TYPE_DEBUG, "Merged ICDeviceMigrationState data from record: %@ for accountID: %@. Setting stateModificationDate to %@.", buf, 0x20u);
      }

      v21 = [recordCopy objectForKeyedSubscript:@"State"];

      if (v21)
      {
        v22 = [recordCopy objectForKeyedSubscript:@"State"];
        integerValue = [v22 integerValue];

        if ([(ICDeviceMigrationState *)self state]!= integerValue)
        {
          v24 = integerValue;
          [(ICDeviceMigrationState *)self setState:v24];
          v25 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            ic_loggingIdentifier2 = [recordCopy ic_loggingIdentifier];
            v37 = [ICDeviceMigrationState stringFromMigrationState:v24];
            *buf = 138412802;
            v40 = ic_loggingIdentifier2;
            v41 = 2112;
            v42 = dCopy;
            v43 = 2112;
            v44 = v37;
            _os_log_debug_impl(&dword_214D51000, v25, OS_LOG_TYPE_DEBUG, "Merged ICDeviceMigrationState data from record: %@ for accountID: %@. Setting state to %@.", buf, 0x20u);
          }
        }
      }
    }
  }

  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  [(ICDeviceMigrationState *)self setDeviceIdentifier:recordName];

  v28 = objc_opt_class();
  deviceIdentifier = [(ICDeviceMigrationState *)self deviceIdentifier];
  v30 = [v28 identifierForDeviceIdentifier:deviceIdentifier];
  [(ICDeviceMigrationState *)self setIdentifier:v30];

  managedObjectContext = [(ICDeviceMigrationState *)self managedObjectContext];
  v32 = [ICAccount cloudKitAccountInContext:managedObjectContext];

  v33 = 1;
  [v32 setNeedsToBeFetchedFromCloud:1];

LABEL_16:
  return v33;
}

- (void)objectWasDeletedFromCloud
{
  v4.receiver = self;
  v4.super_class = ICDeviceMigrationState;
  [(ICCloudSyncingObject *)&v4 objectWasDeletedFromCloud];
  managedObjectContext = [(ICDeviceMigrationState *)self managedObjectContext];
  [managedObjectContext deleteObject:self];
}

- (void)objectWasDeletedFromCloudByAnotherDevice
{
  v4.receiver = self;
  v4.super_class = ICDeviceMigrationState;
  [(ICCloudSyncingObject *)&v4 objectWasDeletedFromCloudByAnotherDevice];
  managedObjectContext = [(ICDeviceMigrationState *)self managedObjectContext];
  [managedObjectContext deleteObject:self];
}

- (void)objectWasFetchedFromCloudWithRecord:(id)record accountID:(id)d force:(BOOL)force
{
  forceCopy = force;
  recordCopy = record;
  dCopy = d;
  managedObjectContext = [(ICDeviceMigrationState *)self managedObjectContext];
  v11 = [ICAccount cloudKitAccountWithIdentifier:dCopy context:managedObjectContext];

  userRecordName = [v11 userRecordName];

  if (!userRecordName)
  {
    v13 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [ICDeviceMigrationState(CloudKit) objectWasFetchedFromCloudWithRecord:v11 accountID:v13 force:?];
    }

    v14 = +[ICCloudContext sharedContext];
    v15 = [v14 containerForAccountID:dCopy];

    v16 = [ICCloudContext userRecordNameForContainer:v15];
    if (v16)
    {
      [v11 setUserRecordName:v16];
    }
  }

  v17.receiver = self;
  v17.super_class = ICDeviceMigrationState;
  [(ICCloudSyncingObject *)&v17 objectWasFetchedFromCloudWithRecord:recordCopy accountID:dCopy force:forceCopy];
}

- (void)deleteFromLocalDatabase
{
  managedObjectContext = [(ICDeviceMigrationState *)self managedObjectContext];
  [managedObjectContext deleteObject:self];
}

+ (void)currentDeviceMigrationStateForAccount:(NSObject *)a3 createIfNecessary:.cold.1(void *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 identifier];
  v6 = [a2 identifier];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&dword_214D51000, a3, OS_LOG_TYPE_DEBUG, "Repairing relationship from device migration state (%@) to account (%@)", &v7, 0x16u);
}

void __68__ICDeviceMigrationState_deviceMigrationStatesByAccountIDInContext___block_invoke_cold_1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 identifier];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_214D51000, a4, OS_LOG_TYPE_DEBUG, "Device migration state (%@) does not have an account identifier", a1, 0xCu);
}

@end