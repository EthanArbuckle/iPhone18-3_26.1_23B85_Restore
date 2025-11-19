@interface ICDeviceMigrationState
+ (id)currentDeviceMigrationStateForAccount:(id)a3 createIfNecessary:(BOOL)a4;
+ (id)deviceMigrationStateWithDeviceIdentifier:(id)a3 account:(id)a4;
+ (id)deviceMigrationStateWithDeviceIdentifier:(id)a3 context:(id)a4;
+ (id)deviceMigrationStatesByAccountIDInContext:(id)a3;
+ (id)existingCloudObjectForRecordID:(id)a3 accountID:(id)a4 context:(id)a5;
+ (id)newCloudObjectForRecord:(id)a3 accountID:(id)a4 context:(id)a5;
+ (id)newDeviceMigrationStateWithDeviceIdentifier:(id)a3 account:(id)a4;
+ (id)stringFromMigrationState:(signed __int16)a3;
- (BOOL)mergeCloudKitRecord:(id)a3 accountID:(id)a4 approach:(int64_t)a5 mergeableFieldState:(id)a6;
- (id)ic_loggingValues;
- (id)makeCloudKitRecordForApproach:(int64_t)a3 mergeableFieldState:(id)a4;
- (void)deleteFromLocalDatabase;
- (void)objectWasDeletedFromCloud;
- (void)objectWasDeletedFromCloudByAnotherDevice;
- (void)objectWasFetchedFromCloudWithRecord:(id)a3 accountID:(id)a4 force:(BOOL)a5;
@end

@implementation ICDeviceMigrationState

+ (id)deviceMigrationStateWithDeviceIdentifier:(id)a3 context:(id)a4
{
  v6 = MEMORY[0x277CCAC30];
  v7 = a4;
  v8 = [v6 predicateWithFormat:@"%K == %@", @"deviceIdentifier", a3];
  v9 = [a1 deviceMigrationStatesMatchingPredicate:v8 context:v7];

  v10 = [v9 firstObject];

  return v10;
}

+ (id)deviceMigrationStateWithDeviceIdentifier:(id)a3 account:(id)a4
{
  v6 = MEMORY[0x277CCAC30];
  v7 = a4;
  v8 = [v6 predicateWithFormat:@"(%K == %@) AND (%K == %@)", @"deviceIdentifier", a3, @"account", v7];
  v9 = [v7 managedObjectContext];

  v10 = [a1 deviceMigrationStatesMatchingPredicate:v8 context:v9];
  v11 = [v10 firstObject];

  return v11;
}

+ (id)newDeviceMigrationStateWithDeviceIdentifier:(id)a3 account:(id)a4
{
  if (!a4)
  {
    return 0;
  }

  v6 = a4;
  v7 = a3;
  v8 = [a1 identifierForDeviceIdentifier:v7];
  v9 = [v6 managedObjectContext];
  v10 = [a1 newObjectWithIdentifier:v8 context:v9];

  v11 = [v6 persistentStore];
  [v10 assignToPersistentStore:v11];

  [v10 setAccount:v6];
  [v10 setDeviceIdentifier:v7];

  return v10;
}

+ (id)currentDeviceMigrationStateForAccount:(id)a3 createIfNecessary:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 identifier];
  v8 = [v6 managedObjectContext];
  v9 = [a1 deviceMigrationStateWithDeviceIdentifier:v7 context:v8];

  if (!v9 && v4)
  {
    v9 = [a1 newDeviceMigrationStateWithDeviceIdentifier:v7 account:v6];
    v10 = [MEMORY[0x277CBEAA8] distantPast];
    [v9 setStateModificationDate:v10];
  }

  v11 = [v9 account];

  if (v11 != v6)
  {
    v12 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(ICDeviceMigrationState *)v9 currentDeviceMigrationStateForAccount:v6 createIfNecessary:v12];
    }

    [v9 setAccount:v6];
  }

  return v9;
}

+ (id)deviceMigrationStatesByAccountIDInContext:(id)a3
{
  v4 = a3;
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
  v11 = a1;
  v5 = v4;
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

+ (id)stringFromMigrationState:(signed __int16)a3
{
  if (a3 >= 8)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", a3];
  }

  else
  {
    v4 = off_278196890[a3];
  }

  return v4;
}

- (id)ic_loggingValues
{
  v12.receiver = self;
  v12.super_class = ICDeviceMigrationState;
  v3 = [(ICCloudSyncingObject *)&v12 ic_loggingValues];
  v4 = [v3 mutableCopy];

  v5 = [(ICDeviceMigrationState *)self managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__ICDeviceMigrationState_ic_loggingValues__block_invoke;
  v9[3] = &unk_278194AD8;
  v6 = v4;
  v10 = v6;
  v11 = self;
  [v5 performBlockAndWait:v9];

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

+ (id)existingCloudObjectForRecordID:(id)a3 accountID:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = [ICAccount cloudKitAccountWithIdentifier:a4 context:a5];
  v9 = [v7 recordName];

  v10 = [ICDeviceMigrationState deviceMigrationStateWithDeviceIdentifier:v9 account:v8];

  return v10;
}

+ (id)newCloudObjectForRecord:(id)a3 accountID:(id)a4 context:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [ICAccount cloudKitAccountWithIdentifier:v8 context:a5];
  v11 = [v9 recordID];
  v12 = [v11 recordName];
  v13 = [a1 newDeviceMigrationStateWithDeviceIdentifier:v12 account:v10];

  [v13 mergeCloudKitRecord:v9 accountID:v8 approach:0];
  [v13 setServerRecord:v9];

  [v13 setInCloud:1];
  [v13 clearChangeCountWithReason:@"Created migration state"];

  return v13;
}

- (id)makeCloudKitRecordForApproach:(int64_t)a3 mergeableFieldState:(id)a4
{
  if (a3)
  {
    v6 = MEMORY[0x277D36198];
    v7 = [(ICDeviceMigrationState *)self className:a3];
    v8 = ICStringFromSyncingApproach(a3);
    [v6 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICDeviceMigrationState(CloudKit) makeCloudKitRecordForApproach:mergeableFieldState:]" simulateCrash:1 showAlert:0 format:{@"Object %@ does not support sync approach: %@", v7, v8}];

    v9 = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = ICDeviceMigrationState;
    v9 = [(ICCloudSyncingObject *)&v13 makeCloudKitRecordForApproach:0 mergeableFieldState:a4];
    v10 = [MEMORY[0x277CCABB0] numberWithShort:{-[ICDeviceMigrationState state](self, "state")}];
    [v9 setObject:v10 forKeyedSubscript:@"State"];

    v11 = [(ICDeviceMigrationState *)self stateModificationDate];
    [v9 setObject:v11 forKeyedSubscript:@"StateModificationDate"];
  }

  return v9;
}

- (BOOL)mergeCloudKitRecord:(id)a3 accountID:(id)a4 approach:(int64_t)a5 mergeableFieldState:(id)a6
{
  v45 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  if (a5)
  {
    v12 = MEMORY[0x277D36198];
    v13 = [(ICDeviceMigrationState *)self className];
    v14 = ICStringFromSyncingApproach(a5);
    [v12 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICDeviceMigrationState(CloudKit) mergeCloudKitRecord:accountID:approach:mergeableFieldState:]" simulateCrash:1 showAlert:0 format:{@"Object %@ does not support sync approach: %@", v13, v14}];

LABEL_15:
    v33 = 0;
    goto LABEL_16;
  }

  v38.receiver = self;
  v38.super_class = ICDeviceMigrationState;
  if (![(ICCloudSyncingObject *)&v38 mergeCloudKitRecord:v10 accountID:v11 approach:0 mergeableFieldState:a6])
  {
    goto LABEL_15;
  }

  v15 = [v10 objectForKeyedSubscript:@"StateModificationDate"];
  if (v15)
  {
    v16 = [(ICDeviceMigrationState *)self stateModificationDate];
    if (!v16 || (v17 = v16, -[ICDeviceMigrationState stateModificationDate](self, "stateModificationDate"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v15 ic_isLaterThanDate:v18], v18, v17, v19))
    {
      [(ICDeviceMigrationState *)self setStateModificationDate:v15];
      v20 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v35 = [v10 ic_loggingIdentifier];
        *buf = 138412802;
        v40 = v35;
        v41 = 2112;
        v42 = v11;
        v43 = 2112;
        v44 = v15;
        _os_log_debug_impl(&dword_214D51000, v20, OS_LOG_TYPE_DEBUG, "Merged ICDeviceMigrationState data from record: %@ for accountID: %@. Setting stateModificationDate to %@.", buf, 0x20u);
      }

      v21 = [v10 objectForKeyedSubscript:@"State"];

      if (v21)
      {
        v22 = [v10 objectForKeyedSubscript:@"State"];
        v23 = [v22 integerValue];

        if ([(ICDeviceMigrationState *)self state]!= v23)
        {
          v24 = v23;
          [(ICDeviceMigrationState *)self setState:v24];
          v25 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v36 = [v10 ic_loggingIdentifier];
            v37 = [ICDeviceMigrationState stringFromMigrationState:v24];
            *buf = 138412802;
            v40 = v36;
            v41 = 2112;
            v42 = v11;
            v43 = 2112;
            v44 = v37;
            _os_log_debug_impl(&dword_214D51000, v25, OS_LOG_TYPE_DEBUG, "Merged ICDeviceMigrationState data from record: %@ for accountID: %@. Setting state to %@.", buf, 0x20u);
          }
        }
      }
    }
  }

  v26 = [v10 recordID];
  v27 = [v26 recordName];
  [(ICDeviceMigrationState *)self setDeviceIdentifier:v27];

  v28 = objc_opt_class();
  v29 = [(ICDeviceMigrationState *)self deviceIdentifier];
  v30 = [v28 identifierForDeviceIdentifier:v29];
  [(ICDeviceMigrationState *)self setIdentifier:v30];

  v31 = [(ICDeviceMigrationState *)self managedObjectContext];
  v32 = [ICAccount cloudKitAccountInContext:v31];

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
  v3 = [(ICDeviceMigrationState *)self managedObjectContext];
  [v3 deleteObject:self];
}

- (void)objectWasDeletedFromCloudByAnotherDevice
{
  v4.receiver = self;
  v4.super_class = ICDeviceMigrationState;
  [(ICCloudSyncingObject *)&v4 objectWasDeletedFromCloudByAnotherDevice];
  v3 = [(ICDeviceMigrationState *)self managedObjectContext];
  [v3 deleteObject:self];
}

- (void)objectWasFetchedFromCloudWithRecord:(id)a3 accountID:(id)a4 force:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(ICDeviceMigrationState *)self managedObjectContext];
  v11 = [ICAccount cloudKitAccountWithIdentifier:v9 context:v10];

  v12 = [v11 userRecordName];

  if (!v12)
  {
    v13 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [ICDeviceMigrationState(CloudKit) objectWasFetchedFromCloudWithRecord:v11 accountID:v13 force:?];
    }

    v14 = +[ICCloudContext sharedContext];
    v15 = [v14 containerForAccountID:v9];

    v16 = [ICCloudContext userRecordNameForContainer:v15];
    if (v16)
    {
      [v11 setUserRecordName:v16];
    }
  }

  v17.receiver = self;
  v17.super_class = ICDeviceMigrationState;
  [(ICCloudSyncingObject *)&v17 objectWasFetchedFromCloudWithRecord:v8 accountID:v9 force:v5];
}

- (void)deleteFromLocalDatabase
{
  v3 = [(ICDeviceMigrationState *)self managedObjectContext];
  [v3 deleteObject:self];
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