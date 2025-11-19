@interface NPKGizmoDatabase
+ (id)_migrationDataSource;
+ (id)_migrationDelegateQueue;
+ (id)sharedDatabase;
+ (void)setMigrationDataSource:(id)a3;
- (BOOL)_executeSQL:(id)a3;
- (BOOL)_getDeletePendingForUniqueID:(id)a3;
- (BOOL)_hasPassForUniqueIDLocked:(id)a3;
- (BOOL)_migrateDatabase:(id)a3;
- (BOOL)_preconditionsMetForDatabaseOpen;
- (BOOL)_removePassWithUniqueIDLocked:(id)a3;
- (BOOL)_repairEncodedImagesDuringMigration:(id)a3;
- (BOOL)_table:(id)a3 containsColumn:(id)a4;
- (BOOL)_updateAvailableActionsDuringMigration:(id)a3;
- (BOOL)_updateCompleteLocalHashesDuringMigration:(id)a3;
- (BOOL)_updateDeviceAndPreferredPaymentApplicationsDuringMigration:(id)a3;
- (BOOL)_updateDevicePaymentApplicationsDuringMigration:(id)a3;
- (BOOL)_updateEffectivePaymentApplicationStateDuringMigration:(id)a3;
- (BOOL)_updateEncodedImageSetsDuringMigration:(id)a3;
- (BOOL)_updateEncodedPaymentPassDuringMigration:(id)a3;
- (BOOL)_updateExpressPassTypesMaskDuringMigration:(id)a3;
- (BOOL)_updateFrontAndBackFieldBucketsDuringMigration:(id)a3;
- (BOOL)_updateHasStoredValueDuringMigration:(id)a3;
- (BOOL)_updateHasUserSelectableContactlessPaymentApplications:(id)a3;
- (BOOL)_updateIngestedDatesDuringMigration:(id)a3;
- (BOOL)_updateIssuerCountryCodesDuringMigration:(id)a3;
- (BOOL)_updateLocalizedDescriptionDuringMigration:(id)a3;
- (BOOL)_updateNFCPayloadDuringMigration:(id)a3;
- (BOOL)_updateOrganizationNamesDuringMigration:(id)a3;
- (BOOL)_updatePrimaryContactlessAndInAppPaymentApplicationsDuringMigration:(id)a3;
- (BOOL)_updatePrivateLabelAndCobrandDuringMigration:(id)a3;
- (BOOL)_updateSettingsDuringMigration:(id)a3;
- (BOOL)_updateSubcredentialsDuringMigration:(id)a3;
- (BOOL)_updateTransactionSourceIdentifiersDuringMigration:(id)a3;
- (BOOL)hasPassForUniqueID:(id)a3;
- (BOOL)hasPassesMatchingPassDescriptionPredicate:(id)a3;
- (BOOL)passDBIsAvailable;
- (NPKGizmoDatabase)init;
- (NSArray)passDescriptions;
- (NSDictionary)manifestHashes;
- (id)_currentEphemeralTransactionIdentifierForTransactionSourceIdentifier:(id)a3;
- (id)_decodeObjectOfClasses:(id)a3 fromStatement:(sqlite3_stmt *)a4 column:(int)a5;
- (id)_diffForUniqueIDLocked:(id)a3;
- (id)_getPreferredPaymentApplicationForPaymentPass:(id)a3 aid:(id *)a4;
- (id)_lastAddValueAmountForPassWithUniqueIDLocked:(id)a3;
- (id)_libraryHashLockedForWatchOSMajorVersion:(unint64_t)a3;
- (id)_passForUniqueIDLocked:(id)a3 includeImageSets:(BOOL)a4;
- (id)_passUniqueIdentifierForTransactionSourceIdentifierLocked:(id)a3;
- (id)_paymentBalancesForPassWithUniqueIDLocked:(id)a3;
- (id)_pendingAddValueDateForPassWithUniqueIDLocked:(id)a3;
- (id)_subcredentialsForPassWithUniqueIDLocked:(id)a3 paymentApplicationIdentifier:(id)a4;
- (id)_transactionSourceIdentifierForPassUniqueIdentifierLocked:(id)a3;
- (id)_transactionSourceIdentifierForTransactionWithIdentifierLocked:(id)a3;
- (id)_transactionSourceIdentifierForTransactionWithServiceIdentifierLocked:(id)a3;
- (id)_transactionWithIdentifierLocked:(id)a3;
- (id)_transactionWithServiceIdentifierLocked:(id)a3;
- (id)_transactionsForTransactionSourceIdentifierLocked:(id)a3 withTransactionSource:(unint64_t)a4 withBackingData:(unint64_t)a5 startDate:(id)a6 endDate:(id)a7 orderByDate:(int64_t)a8 limit:(unint64_t)a9;
- (id)_transitAppletStateForPassWithUniqueIDLocked:(id)a3;
- (id)currentEphemeralTransactionIdentifierForTransactionSourceIdentifier:(id)a3;
- (id)diffForUniqueID:(id)a3;
- (id)filteredPassesUsingPassDescriptionPredicate:(id)a3 includeImageSets:(BOOL)a4;
- (id)lastAddValueAmountForPassWithUniqueID:(id)a3;
- (id)libraryHashForWatchOSMajorVersion:(unint64_t)a3;
- (id)manifestHashesForWatchOSMajorVersion:(unint64_t)a3;
- (id)passForUniqueID:(id)a3 includeImageSets:(BOOL)a4;
- (id)passUniqueIDForTransactionSourceIdentifier:(id)a3;
- (id)paymentBalancesForPassWithUniqueID:(id)a3;
- (id)pendingAddValueDateForPassWithUniqueID:(id)a3;
- (id)preferredPaymentApplicationForPaymentPass:(id)a3;
- (id)rebuildDatabaseWithPasses:(id)a3;
- (id)removePassWithUniqueID:(id)a3;
- (id)restoreBlockForVolatilePassData;
- (id)savePass:(id)a3 isLocalPass:(BOOL)a4;
- (id)subcredentialsForPassWithUniqueID:(id)a3 paymentApplicationIdentifier:(id)a4;
- (id)transactionSourceIdentifierForPassWithUniqueID:(id)a3;
- (id)transactionSourceIdentifierForTransactionWithIdentifier:(id)a3;
- (id)transactionSourceIdentifierForTransactionWithServiceIdentifier:(id)a3;
- (id)transactionWithIdentifier:(id)a3;
- (id)transactionWithServiceIdentifier:(id)a3;
- (id)transactionsForTransactionSourceIdentifier:(id)a3 withTransactionSource:(unint64_t)a4 withBackingData:(unint64_t)a5 startDate:(id)a6 endDate:(id)a7 orderedByDate:(int64_t)a8 limit:(int64_t)a9;
- (id)transitAppletStateForPassWithUniqueID:(id)a3;
- (int64_t)_databaseVersionExists:(BOOL *)a3 valid:(BOOL *)a4;
- (sqlite3)database;
- (sqlite3_stmt)currentEphemeralTransactionIdentifierStatement;
- (sqlite3_stmt)deleteAllSubcredentialsForPassUniqueIDStatement;
- (sqlite3_stmt)deleteEphemeralTransactionByTransactionSourceIdentifierStatement;
- (sqlite3_stmt)deleteStatement;
- (sqlite3_stmt)deleteSubcredentialsStatement;
- (sqlite3_stmt)deleteTransactionSourceIdentifierForPassStatement;
- (sqlite3_stmt)deleteTransactionsForTransactionSourceStatement;
- (sqlite3_stmt)insertDiffStatement;
- (sqlite3_stmt)insertEphemeralTransactionStatement;
- (sqlite3_stmt)insertStatement;
- (sqlite3_stmt)insertSubcredentialsStatement;
- (sqlite3_stmt)insertTransactionSourceIdentifierForPassStatement;
- (sqlite3_stmt)insertTransactionStatement;
- (sqlite3_stmt)removeTransactionStatement;
- (sqlite3_stmt)removeTransactionWithServiceIdentifierStatement;
- (sqlite3_stmt)selectBalancesForPassStatement;
- (sqlite3_stmt)selectDeletePendingStatement;
- (sqlite3_stmt)selectLastAddValueAmountForPassStatement;
- (sqlite3_stmt)selectPassAndImageSetsDataStatement;
- (sqlite3_stmt)selectPassDataStatement;
- (sqlite3_stmt)selectPassDiffStatement;
- (sqlite3_stmt)selectPassExistsStatement;
- (sqlite3_stmt)selectPassUniqueIdentifierForTransactionSourceIdentifierStatement;
- (sqlite3_stmt)selectPendingAddValueDateForPassStatement;
- (sqlite3_stmt)selectPreferredAIDStatement;
- (sqlite3_stmt)selectTransactionSourceIdentifierForPassUniqueIdentifierStatement;
- (sqlite3_stmt)selectTransactionSourceIdentifierForTransactionWithIdentifierStatement;
- (sqlite3_stmt)selectTransactionSourceIdentifierForTransactionWithServiceIdentifierStatement;
- (sqlite3_stmt)selectTransactionWithIdentifierStatement;
- (sqlite3_stmt)selectTransactionWithServiceIdentifierStatement;
- (sqlite3_stmt)selectTransactionsStatementWithTransactionSource:(unint64_t)a3 orderByDate:(int64_t)a4 limit:(unint64_t)a5;
- (sqlite3_stmt)selectTransitAppletStateForPassStatement;
- (sqlite3_stmt)trimTransactionsForTransactionSourceStatement;
- (sqlite3_stmt)updateBalancesForPassStatement;
- (sqlite3_stmt)updateDeletePendingStatement;
- (sqlite3_stmt)updateLastAddValueAmountForPassStatement;
- (sqlite3_stmt)updatePendingAddValueDateForPassStatement;
- (sqlite3_stmt)updatePreferredAIDStatement;
- (sqlite3_stmt)updateTransitAppletStateForPassStatement;
- (unint64_t)numberOfPasses;
- (void)_attemptDatabaseOpen;
- (void)_createTransactionSourceIdentifierIfNecessaryForPassWithUniqueIDLocked:(id)a3;
- (void)_enumerateAllPassesForMigration:(id)a3;
- (void)_executeSQLQuery:(id)a3 processResultsBlock:(id)a4;
- (void)_handleDatabaseChangedExternally;
- (void)_handleFirstUnlock;
- (void)_handleHasMigrationDataSource;
- (void)_inQueue_teardownDB;
- (void)_insertDatabaseVersionRow:(int64_t)a3;
- (void)_loadInitialManifestLocked;
- (void)_notifyDatabaseChangedExternally;
- (void)_notifyDatabaseChangedWithNoop:(BOOL)a3 firstUnlock:(BOOL)a4;
- (void)_performTransactionWithBlock:(id)a3;
- (void)_rebuildDatabaseWithPassesFromCompanionPasses;
- (void)_removeSubcredentialsForPassWithUniqueIDLocked:(id)a3;
- (void)_removeTransactionSourceIdentifierForPassWithUniqueIDLocked:(id)a3;
- (void)_removeTransactionWithIdentifier:(id)a3;
- (void)_removeTransactionWithServiceIdentifierLocked:(id)a3 forTransactionSourceIdentifier:(id)a4;
- (void)_removeTransactionsForTransactionSource:(id)a3;
- (void)_saveDiffLocked:(id)a3 forPassWithUniqueID:(id)a4;
- (void)_savePassLocked:(id)a3 locallyAdded:(BOOL)a4 wasUpdate:(BOOL *)a5;
- (void)_saveTransaction:(id)a3 forTransactionSourceIdentifier:(id)a4 withPaymentCredentialType:(int64_t)a5 shouldTrim:(BOOL)a6;
- (void)_saveTransactionLocked:(id)a3 forTransactionSourceIdentifier:(id)a4;
- (void)_setCurrentEphemeralTransactionIdentifier:(id)a3 forTransactionSourceIdentifier:(id)a4;
- (void)_setLastAddValueAmountLocked:(id)a3 forPassWithUniqueID:(id)a4;
- (void)_setPaymentBalancesLocked:(id)a3 forPassWithUniqueID:(id)a4;
- (void)_setPendingAddValueDateLocked:(id)a3 forPassWithUniqueID:(id)a4;
- (void)_setSubcredentialsLocked:(id)a3 forPassWithUniqueID:(id)a4 paymentApplicationIdentifier:(id)a5;
- (void)_setTransitAppletStateLocked:(id)a3 forPassWithUniqueID:(id)a4;
- (void)_trimTransactionsForTransactionSourceIdentifierLocked:(id)a3 withPaymentCredentialType:(int64_t)a4;
- (void)_updateDatabaseVersionRow:(int64_t)a3;
- (void)_verifyPassDataIsUnarchivedCorrectlyWithData:(id)a3 forPassWithUniqueID:(id)a4;
- (void)dealloc;
- (void)enumerateAllPassesAndDescriptionsWithBlock:(id)a3 includeImageSets:(BOOL)a4;
- (void)removeTransactionWithIdentifier:(id)a3;
- (void)removeTransactionsForTransactionSource:(id)a3;
- (void)saveDiff:(id)a3 forPassWithUniqueID:(id)a4;
- (void)saveTransaction:(id)a3 forPass:(id)a4;
- (void)setCurrentEphemeralTransactionIdentifier:(id)a3 forTransactionSourceIdentifier:(id)a4;
- (void)setDeletePending:(BOOL)a3 forUniqueID:(id)a4;
- (void)setLastAddValueAmount:(id)a3 forPassWithUniqueID:(id)a4;
- (void)setPaymentBalances:(id)a3 forPassWithUniqueID:(id)a4;
- (void)setPendingAddValueDate:(id)a3 forPassWithUniqueID:(id)a4;
- (void)setPreferredPaymentApplication:(id)a3 forPaymentPass:(id)a4;
- (void)setSubcredentials:(id)a3 forPassWithUniqueID:(id)a4 paymentApplicationIdentifier:(id)a5;
- (void)setTransitAppletState:(id)a3 forPassWithUniqueID:(id)a4;
- (void)teardownDB;
@end

@implementation NPKGizmoDatabase

+ (id)sharedDatabase
{
  if (sharedDatabase_onceToken != -1)
  {
    +[NPKGizmoDatabase sharedDatabase];
  }

  v3 = sharedDatabase_sharedDatabase;

  return v3;
}

void __34__NPKGizmoDatabase_sharedDatabase__block_invoke()
{
  v0 = objc_alloc_init(NPKGizmoDatabase);
  v1 = sharedDatabase_sharedDatabase;
  sharedDatabase_sharedDatabase = v0;
}

+ (id)_migrationDelegateQueue
{
  if (_migrationDelegateQueue_onceToken != -1)
  {
    +[NPKGizmoDatabase _migrationDelegateQueue];
  }

  v3 = _migrationDelegateQueue_queue;

  return v3;
}

void __43__NPKGizmoDatabase__migrationDelegateQueue__block_invoke()
{
  v0 = dispatch_queue_create("NPKGizmoDatabaseMigrationDelegateQueue", 0);
  v1 = _migrationDelegateQueue_queue;
  _migrationDelegateQueue_queue = v0;
}

+ (id)_migrationDataSource
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__13;
  v10 = __Block_byref_object_dispose__13;
  v11 = 0;
  v2 = [a1 _migrationDelegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__NPKGizmoDatabase__migrationDataSource__block_invoke;
  block[3] = &unk_2799457C8;
  block[4] = &v6;
  dispatch_sync(v2, block);

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __40__NPKGizmoDatabase__migrationDataSource__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained(&__MigrationDataSource);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;
}

+ (void)setMigrationDataSource:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = [a1 _migrationDelegateQueue];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __43__NPKGizmoDatabase_setMigrationDataSource___block_invoke;
  v11 = &unk_279944FE8;
  v13 = &v14;
  v6 = v4;
  v12 = v6;
  dispatch_sync(v5, &v8);

  if (v6 && (v15[3] & 1) == 0)
  {
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 postNotificationName:@"NPKGizmoDatabaseMigrationDataSourceSetNotification" object:0];
  }

  _Block_object_dispose(&v14, 8);
}

id __43__NPKGizmoDatabase_setMigrationDataSource___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained(&__MigrationDataSource);
  *(*(*(a1 + 40) + 8) + 24) = WeakRetained != 0;

  v3 = *(a1 + 32);

  return objc_storeWeak(&__MigrationDataSource, v3);
}

- (NPKGizmoDatabase)init
{
  v8.receiver = self;
  v8.super_class = NPKGizmoDatabase;
  v2 = [(NPKGizmoDatabase *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.NanoPassbook.NPKGizmoDatabase", 0);
    dbQueue = v2->_dbQueue;
    v2->_dbQueue = v3;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _NPKGizmoDatabaseChangedExternally, @"_NPKGizmoDatabaseExternallyChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _NPKGizmoDatabaseKeybagFirstUnlock, @"com.apple.mobile.keybagd.first_unlock", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v2 selector:sel__handleHasMigrationDataSource name:@"NPKGizmoDatabaseMigrationDataSourceSetNotification" object:0];
    [(NPKGizmoDatabase *)v2 setPassDBIsAvailable:0];
  }

  return v2;
}

- (void)dealloc
{
  sqlite3_finalize(self->_deleteStatement);
  sqlite3_finalize(self->_insertStatement);
  sqlite3_finalize(self->_insertDiffStatement);
  sqlite3_finalize(self->_selectPassDataStatement);
  sqlite3_finalize(self->_selectPassAndImageSetsDataStatement);
  sqlite3_finalize(self->_selectPassExitsStatement);
  sqlite3_finalize(self->_selectPassDiffStatement);
  sqlite3_finalize(self->_updateDeletePendingStatement);
  sqlite3_finalize(self->_selectDeletePendingStatement);
  sqlite3_finalize(self->_updatePreferredAIDStatement);
  sqlite3_finalize(self->_selectPreferredAIDStatement);
  sqlite3_finalize(self->_insertTransactionStatement);
  sqlite3_finalize(self->_removeTransactionStatement);
  sqlite3_finalize(self->_removeTransactionWithServiceIdentifier);
  sqlite3_finalize(self->_selectTransactionsStatement);
  sqlite3_finalize(self->_selectTransactionsStatementWithSource);
  sqlite3_finalize(self->_selectTransactionsStatementWithoutSource);
  sqlite3_finalize(self->_selectTransactionWithIdentifierStatement);
  sqlite3_finalize(self->_selectTransactionWithServiceIdentifierStatement);
  sqlite3_finalize(self->_insertTransactionSourceIdentifierForPassStatement);
  sqlite3_finalize(self->_selectTransactionSourceIdentifierForTransactionWithIdentifierStatement);
  sqlite3_finalize(self->_selectTransactionSourceIdentifierForTransactionWithServiceIdentifierStatement);
  sqlite3_finalize(self->_selectTransactionSourceIdentifierForPassUniqueIdentifierStatement);
  sqlite3_finalize(self->_selectPassUniqueIdentifierForTransactionSourceIdentifierStatement);
  sqlite3_finalize(self->_deleteTransactionSourceIdentifierForPassStatement);
  sqlite3_finalize(self->_deleteTransactionsForTransactionSourceStatement);
  sqlite3_finalize(self->_trimTransactionsForTransactionSourceStatement);
  sqlite3_finalize(self->_selectTransitAppletStateForPassStatement);
  sqlite3_finalize(self->_updateTransitAppletStateForPassStatement);
  sqlite3_finalize(self->_insertEphemeralTransactionStatement);
  sqlite3_finalize(self->_deleteEphemeralTransactionByTransactionSourceIdentifierStatement);
  sqlite3_finalize(self->_currentEphemeralTransactionIdentifierStatement);
  sqlite3_finalize(self->_selectLastAddValueAmountForPassStatement);
  sqlite3_finalize(self->_updateLastAddValueAmountForPassStatement);
  sqlite3_finalize(self->_selectPendingAddValueDateForPassStatement);
  sqlite3_finalize(self->_updatePendingAddValueDateForPassStatement);
  sqlite3_finalize(self->_selectBalancesForPassStatement);
  sqlite3_finalize(self->_updateBalancesForPassStatement);
  sqlite3_finalize(self->_insertSubcredentialsStatement);
  sqlite3_finalize(self->_deleteSubcredentialsStatement);
  sqlite3_finalize(self->_deleteAllSubcredentialsForPassUniqueIDStatement);
  sqlite3_close(self->_database);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = NPKGizmoDatabase;
  [(NPKGizmoDatabase *)&v5 dealloc];
}

- (BOOL)_executeSQL:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  errmsg = 0;
  v5 = sqlite3_exec(-[NPKGizmoDatabase database](self, "database"), [v4 UTF8String], 0, 0, &errmsg);
  if (v5)
  {
    v6 = errmsg;
    if (!errmsg)
    {
      v6 = sqlite3_errmsg([(NPKGizmoDatabase *)self database]);
    }

    v7 = pk_General_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v8)
    {
      v9 = pk_General_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        *buf = 138413058;
        v16 = v10;
        v17 = 2112;
        v18 = v4;
        v19 = 1024;
        v20 = v5;
        v21 = 2080;
        v22 = v6;
        v11 = v10;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_ERROR, "Error: %@: Could not execute SQL: %@: [%d, %s]", buf, 0x26u);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5 == 0;
}

- (void)_executeSQLQuery:(id)a3 processResultsBlock:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  ppStmt = 0;
  if (sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [v6 UTF8String], -1, &ppStmt, 0))
  {
    v8 = pk_General_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v10 = pk_General_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v14 = "[NPKGizmoDatabase _executeSQLQuery:processResultsBlock:]";
        v15 = 2082;
        v16 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v17 = 2048;
        v18 = 452;
        v19 = 2112;
        v20 = v6;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare %@ statement)", buf, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  v7[2](v7, 1, ppStmt);
  sqlite3_reset(ppStmt);
  sqlite3_finalize(ppStmt);

  v11 = *MEMORY[0x277D85DE8];
}

- (sqlite3)database
{
  v58 = *MEMORY[0x277D85DE8];
  p_database = &self->_database;
  if (self->_database)
  {
    goto LABEL_2;
  }

  v43 = 0;
  while ([(NPKGizmoDatabase *)self _preconditionsMetForDatabaseOpen])
  {
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = NPKHomeDirectoryPath();
    if (([v6 fileExistsAtPath:v7] & 1) == 0)
    {
      [v6 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:0];
    }

    v8 = NPKHomeDirectoryPath();
    v9 = [v8 stringByAppendingPathComponent:@"nanopasses.sqlite3"];

    v10 = sqlite3_open_v2([v9 UTF8String], p_database, 3145734, 0);
    if (!v10)
    {
      while (1)
      {
        v22 = sqlite3_exec(*p_database, "PRAGMA journal_mode = WAL;", 0, 0, 0);
        if (v22 != 5)
        {
          break;
        }

        usleep(0x14u);
      }

      v23 = v22;
      if (v22)
      {
        v24 = pk_General_log();
        v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

        if (v25)
        {
          v26 = pk_General_log();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            LODWORD(v49) = v23;
            _os_log_impl(&dword_25B300000, v26, OS_LOG_TYPE_ERROR, "Error: Couldn't set journal mode on database (result %d)", buf, 8u);
          }
        }
      }

      else
      {
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __28__NPKGizmoDatabase_database__block_invoke;
        v47[3] = &unk_279948040;
        v47[4] = self;
        if ([(NPKGizmoDatabase *)self _migrateDatabase:v47])
        {
LABEL_40:
          [(NPKGizmoDatabase *)self setPassDBIsAvailable:1];
          v36 = pk_General_log();
          v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);

          if (v37)
          {
            v38 = pk_General_log();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              v39 = *p_database;
              *buf = 134218242;
              v49 = v39;
              v50 = 2112;
              v51 = v9;
              _os_log_impl(&dword_25B300000, v38, OS_LOG_TYPE_DEFAULT, "Notice: Gizmo database %p opened! at:%@ Broadcasting database changed notification", buf, 0x16u);
            }
          }

          [(NPKGizmoDatabase *)self _notifyForFirstUnlock];
          v18 = 0;
          goto LABEL_45;
        }
      }

      v27 = pk_General_log();
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);

      if (v28)
      {
        v29 = pk_General_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_25B300000, v29, OS_LOG_TYPE_ERROR, "Error: Database is in a bad state; deleting and recreating", buf, 2u);
        }
      }

      sqlite3_close_v2(self->_database);
      self->_database = 0;
      v30 = [MEMORY[0x277CCAA00] defaultManager];
      v46 = 0;
      [v30 removeItemAtPath:v9 error:&v46];
      v31 = v46;
      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-shm", v9];
      v45 = v31;
      [v30 removeItemAtPath:v32 error:&v45];
      v33 = v45;

      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-wal", v9];
      v44 = v33;
      [v30 removeItemAtPath:v34 error:&v44];
      v35 = v44;

      [(NPKGizmoDatabase *)self _notifyDatabaseChangedExternally];
      ++v43;

      goto LABEL_40;
    }

    v11 = v10;
    if (v10 != 23 && v10 != 14)
    {
      v19 = pk_General_log();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

      if (v20)
      {
        v21 = pk_General_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 136447234;
          v49 = "[NPKGizmoDatabase database]";
          v50 = 2082;
          v51 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v52 = 2048;
          v53 = 497;
          v54 = 2112;
          v55 = v9;
          v56 = 1024;
          v57 = v11;
          _os_log_impl(&dword_25B300000, v21, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Couldn't open %@ (result %d))", buf, 0x30u);
        }
      }

      _NPKAssertAbort();
    }

    v12 = pk_General_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v14 = pk_General_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v9;
        _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: Authorization denied to pass database: %@", buf, 0xCu);
      }
    }

    if (NPKProtectedDataAvailable())
    {
      v15 = pk_General_log();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

      if (v16)
      {
        v17 = pk_General_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136447234;
          v49 = "[NPKGizmoDatabase database]";
          v50 = 2082;
          v51 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v52 = 2048;
          v53 = 489;
          v54 = 2112;
          v55 = v9;
          v56 = 1024;
          v57 = v11;
          _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Couldn't open %@ (result %d), and NPKProtectedDataAvailable = YES)", buf, 0x30u);
        }
      }

      _NPKAssertAbort();
    }

    *p_database = 0;
    v18 = 1;
LABEL_45:

    if (*p_database || (v18 & 1) != 0 || v43 >= 5)
    {
      goto LABEL_2;
    }
  }

  v40 = pk_Payment_log();
  v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);

  if (v41)
  {
    v42 = pk_Payment_log();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v42, OS_LOG_TYPE_DEFAULT, "Notice: Not opening database because we don't have what we need to migrate it", buf, 2u);
    }
  }

LABEL_2:
  result = *p_database;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __28__NPKGizmoDatabase_database__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = *MEMORY[0x277D85DE8];
  v6 = 1;
  if (a2 < 1 && a3 >= 1)
  {
    if (![*(a1 + 32) _executeSQL:{@"CREATE TABLE IF NOT EXISTS pass (unique_id TEXT NOT NULL, type_id TEXT NOT NULL, style INTEGER, hash BLOB NOT NULL, encoded_pass BLOB NOT NULL, encoded_diff BLOB, logo_text TEXT, logo_image BLOB, background_color BLOB, label_color BLOB, foreground_color BLOB, delete_pending INTEGER DEFAULT 0, background_image BLOB);"}])
    {
      v11 = 0;
      v8 = 1;
      v7 = 1;
      goto LABEL_26;
    }

    v6 = [*(a1 + 32) _executeSQL:@"CREATE UNIQUE INDEX IF NOT EXISTS pass_unique_id_idx ON pass(unique_id)"];
  }

  if (a2 < 2 && a3 >= 2 && v6)
  {
    v6 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD preferred_aid TEXT;"];
  }

  v7 = a2 < 3;
  if (a2 <= 2 && a3 >= 3 && v6)
  {
    v6 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD nfc_payload BLOB;"];
    v7 = 1;
  }

  v8 = a2 < 4;
  v9 = a2 > 3 || a3 < 4;
  v10 = v9;
  v11 = v10 & v6;
  if (!v9 && v6)
  {
    if ([*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD private_label INTEGER DEFAULT 0;"])
    {
      v11 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD cobranded INTEGER DEFAULT 0;"];
    }

    else
    {
      v11 = 0;
    }

    v8 = 1;
  }

LABEL_26:
  v52 = v8;
  v53 = v7;
  if (a2 < 5 && a3 >= 5)
  {
    if (v11)
    {
      if ([*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD device_primary_payment_application BLOB;"])
      {
        v11 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD preferred_payment_application BLOB;"];
        goto LABEL_31;
      }

      v11 = 0;
    }

    v13 = 1;
    v48 = 1;
    v49 = 1;
    v50 = 1;
    v51 = 1;
    v47 = 1;
    goto LABEL_70;
  }

LABEL_31:
  v51 = a2 < 6;
  if (a2 < 6 && a3 >= 6 && v11)
  {
    v11 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD ingested_date INTEGER;"];
  }

  if (a2 < 7 && a3 >= 7 && v11)
  {
    v11 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD complete_hash BLOB"];
  }

  v50 = a2 < 8;
  if (a2 < 8 && a3 >= 8 && v11)
  {
    v11 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD effective_payment_application_state INTEGER DEFAULT 0"];
  }

  v49 = a2 < 9;
  if (a2 <= 8 && a3 >= 9 && v11)
  {
    v11 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD has_user_selectable_payment_applications INTEGER DEFAULT 0"];
  }

  v48 = a2 < 11;
  if (a2 < 11 && a3 >= 11 && v11)
  {
    v11 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD has_stored_value INTEGER DEFAULT 0"];
  }

  v47 = a2 < 12;
  if (a2 < 12 && a3 >= 12 && v11)
  {
    v11 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD settings INTEGER DEFAULT 0"];
  }

  if (a2 <= 12 && a3 >= 13 && v11)
  {
    v11 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD complete_hashes BLOB"];
  }

  v12 = a2 < 45;
  if (a2 <= 44 && a3 >= 45 && v11)
  {
    [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD available_actions BLOB"];
    [*(a1 + 32) _executeSQL:{@"CREATE TABLE IF NOT EXISTS transactions (pass_unique_id TEXT NOT NULL, transaction_id TEXT NOT NULL UNIQUE ON CONFLICT REPLACE, transaction_date INTEGER, transaction_sources INTEGER, encoded_transaction BLOB NOT NULL);"}];
    [*(a1 + 32) _executeSQL:@"CREATE INDEX IF NOT EXISTS transactions_pass_unique_id_index ON transactions(pass_unique_id)"];
    [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD organization_name TEXT"];
    [*(a1 + 32) _executeSQL:@"ALTER TABLE transactions ADD transaction_source INTEGER"];
    [*(a1 + 32) _executeSQL:@"ALTER TABLE transactions ADD has_notification_service_data INTEGER"];
    [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD felica_transit_applet_state BLOB"];
    [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD front_field_buckets BLOB"];
    [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD back_field_buckets BLOB"];
    [*(a1 + 32) _executeSQL:@"ALTER TABLE transactions ADD transaction_type INTEGER"];
    [*(a1 + 32) _executeSQL:{@"CREATE TABLE IF NOT EXISTS ephemeral_transactions (pass_unique_id TEXT NOT NULL UNIQUE ON CONFLICT REPLACE, transaction_id TEXT NOT NULL);"}];
    [*(a1 + 32) _executeSQL:@"CREATE INDEX IF NOT EXISTS ephemeral_transactions_pass_index ON ephemeral_transactions(pass_unique_id)"];
    [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD last_add_value_amount TEXT"];
    [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD localized_description TEXT"];
    [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD pending_add_value_date INTEGER"];
  }

  v13 = a2 < 28;
  v14 = a3 > 27 && a2 < 28;
  if ((v14 & v11) == 1)
  {
    v11 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD device_payment_applications BLOB"];
    v13 = 1;
LABEL_70:
    v12 = 1;
  }

  if (a2 > 33 || a3 < 34)
  {
    goto LABEL_76;
  }

  if (!v11)
  {
    LODWORD(v42) = 0;
LABEL_104:
    HIDWORD(v42) = 1;
    v45 = 1;
    v46 = 1;
    goto LABEL_105;
  }

  if (![*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD device_primary_contactless_payment_application BLOB;"])
  {
    LODWORD(v42) = 0;
    v11 = 0;
    goto LABEL_104;
  }

  v11 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD device_primary_in_app_payment_application BLOB;"];
LABEL_76:
  v46 = a2 < 44;
  if (a2 <= 43 && a3 >= 44 && v11)
  {
    v11 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD encoded_image_sets BLOB"];
  }

  v45 = a2 < 47;
  if (a2 < 47 && a3 >= 47 && v11)
  {
    v11 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD issuer_country_code BLOB"];
  }

  HIDWORD(v42) = a2 < 48;
  if (a2 <= 47 && a3 >= 48 && v11)
  {
    v11 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD express_pass_types_mask INTEGER DEFAULT 0"];
  }

  if (a2 <= 49 && a3 >= 50 && v11)
  {
    v11 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD complete_remote_hashes BLOB"];
  }

  if ((a2 - 48) > 2)
  {
    LODWORD(v42) = 0;
  }

  else
  {
    if (([*(a1 + 32) _table:@"pass" containsColumn:@"issuer_country_code"] & 1) == 0)
    {
      v15 = pk_General_log();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

      if (v16)
      {
        v17 = pk_General_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: Solving DB corruption cause by DB v48", buf, 2u);
        }
      }

      if (v11)
      {
        v11 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD issuer_country_code BLOB"];
      }
    }

    LODWORD(v42) = 1;
  }

LABEL_105:
  if (a2 < 53 && a3 >= 53)
  {
    if (!v11)
    {
      goto LABEL_123;
    }

    if (![*(a1 + 32) _executeSQL:@"ALTER TABLE transactions ADD cloudkit_archived INTEGER"])
    {
      v11 = 0;
      goto LABEL_123;
    }

    v11 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD supports_pp INTEGER"];
  }

  if (a2 <= 53 && a3 >= 54 && v11)
  {
    v11 = [*(a1 + 32) _executeSQL:@"ALTER TABLE transactions ADD service_identifier TEXT"];
  }

  if (a2 < 56 && a3 >= 56 && v11)
  {
    v11 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD balances BLOB"];
  }

  if (a2 < 57 && a3 >= 57 && v11)
  {
    v11 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD subcredentials BLOB"];
  }

LABEL_123:
  v18 = 1;
  if (a2 < 58 && a3 >= 58)
  {
    v19 = [*(a1 + 32) _table:@"transactions" containsColumn:@"transaction_source_identifier"];
    v18 = v19;
    if (v19 & 1 | ((v11 & 1) == 0))
    {
      v11 &= v19;
    }

    else
    {
      if ([*(a1 + 32) _executeSQL:@"ALTER TABLE transactions ADD transaction_source_identifier TEXT"] && objc_msgSend(*(a1 + 32), "_executeSQL:", @"ALTER TABLE ephemeral_transactions ADD transaction_source_identifier TEXT") && objc_msgSend(*(a1 + 32), "_executeSQL:", @"CREATE TABLE IF NOT EXISTS transaction_source (transaction_source_identifier TEXT NOT NULL UNIQUE ON CONFLICT REPLACE, type INTEGER DEFAULT 0, pass_unique_id TEXT);"))
      {
        v11 = [*(a1 + 32) _executeSQL:@"CREATE INDEX IF NOT EXISTS transaction_source_index ON transactions(transaction_source_identifier)"];
      }

      else
      {
        v11 = 0;
      }

      v18 = 0;
    }
  }

  if (a2 <= 58 && a3 >= 59 && !([*(a1 + 32) _table:@"pass" containsColumn:@"subcredentials"] & 1 | ((v11 & 1) == 0)))
  {
    v11 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD subcredentials BLOB"];
  }

  v21 = a2 < 60 && a3 > 59;
  v23 = a2 < 61 && a3 > 60;
  v24 = !v23 & v11;
  if (v23 && v11)
  {
    if ([*(a1 + 32) _executeSQL:{@"CREATE TABLE IF NOT EXISTS subcredentials (pass_unique_id TEXT, payment_application_id TEXT, encoded_subcredentials BLOB);"}])
    {
      v24 = [*(a1 + 32) _executeSQL:@"CREATE INDEX IF NOT EXISTS subcredentials_index ON subcredentials(pass_unique_id)"];
    }

    else
    {
      v24 = 0;
    }

    LOBYTE(v23) = 1;
  }

  v26 = a2 < 62 && a3 > 61 || v21;
  v54 = v26;
  v27 = pk_General_log();
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);

  if (v28)
  {
    v29 = pk_General_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v24;
      _os_log_impl(&dword_25B300000, v29, OS_LOG_TYPE_DEFAULT, "Notice: NPKGizmoDatabase: schema applied successfully: %d", buf, 8u);
    }
  }

  v30 = v24 ^ 1;
  if (a3 <= a2)
  {
    v30 = 1;
  }

  if ((v30 & 1) == 0)
  {
    v31 = pk_General_log();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);

    if (v32)
    {
      v33 = pk_General_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v33, OS_LOG_TYPE_DEFAULT, "Notice: Generating potentially-missing description fields", buf, 2u);
      }
    }

    *buf = 0;
    v58 = buf;
    v59 = 0x3032000000;
    v60 = __Block_byref_object_copy__13;
    v61 = __Block_byref_object_dispose__13;
    v62 = [MEMORY[0x277CBEB18] array];
    v34 = *(a1 + 32);
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __28__NPKGizmoDatabase_database__block_invoke_273;
    v56[3] = &unk_279948018;
    v56[5] = buf;
    v56[6] = a2;
    v56[4] = v34;
    [v34 _enumerateAllPassesForMigration:v56];
    if ([*(v58 + 5) count])
    {
      if (v53)
      {
        v24 = [*(a1 + 32) _updateNFCPayloadDuringMigration:*(v58 + 5)];
      }

      else
      {
        v24 = 1;
      }

      if ((v52 & v24) == 1)
      {
        v24 = [*(a1 + 32) _updatePrivateLabelAndCobrandDuringMigration:*(v58 + 5)];
      }

      if (a2 <= 4 && v24)
      {
        v24 = [*(a1 + 32) _updateDeviceAndPreferredPaymentApplicationsDuringMigration:*(v58 + 5)];
      }

      if ((v51 & v24) == 1)
      {
        v24 = [*(a1 + 32) _updateIngestedDatesDuringMigration:*(v58 + 5)];
      }

      if ((v50 & v24) == 1)
      {
        v24 = [*(a1 + 32) _updateEffectivePaymentApplicationStateDuringMigration:*(v58 + 5)];
      }

      if ((v49 & v24) == 1)
      {
        v24 = [*(a1 + 32) _updateHasUserSelectableContactlessPaymentApplications:*(v58 + 5)];
      }

      if (a2 <= 9 && v24)
      {
        v24 = [*(a1 + 32) _updateEncodedPaymentPassDuringMigration:*(v58 + 5)];
      }

      if (a2 <= 9 && v24)
      {
        v24 = [*(a1 + 32) _updateEffectivePaymentApplicationStateDuringMigration:*(v58 + 5)];
      }

      if (a2 <= 9 && v24)
      {
        v24 = [*(a1 + 32) _updateHasUserSelectableContactlessPaymentApplications:*(v58 + 5)];
      }

      if ((v48 & v24) == 1)
      {
        v24 = [*(a1 + 32) _updateHasStoredValueDuringMigration:*(v58 + 5)];
      }

      if ((v47 & v24) == 1)
      {
        v24 = [*(a1 + 32) _updateSettingsDuringMigration:*(v58 + 5)];
      }

      if (a2 <= 13 && v24)
      {
        v24 = [*(a1 + 32) _updateCompleteLocalHashesDuringMigration:*(v58 + 5)];
      }

      if ((v12 & v24) == 1)
      {
        v24 = [*(a1 + 32) _updateAvailableActionsDuringMigration:*(v58 + 5)];
      }

      if ((v12 & v24) == 1)
      {
        v24 = [*(a1 + 32) _updateOrganizationNamesDuringMigration:*(v58 + 5)];
      }

      if ((v12 & v24) == 1)
      {
        v24 = [*(a1 + 32) _updateFrontAndBackFieldBucketsDuringMigration:*(v58 + 5)];
      }

      if ((v12 & v24) == 1)
      {
        v24 = [*(a1 + 32) _updateLocalizedDescriptionDuringMigration:*(v58 + 5)];
      }

      if ((v12 & v24) == 1)
      {
        v24 = [*(a1 + 32) _updateLocalizedDescriptionDuringMigration:*(v58 + 5)];
      }

      if ((v13 & v24) == 1)
      {
        v24 = [*(a1 + 32) _updateDevicePaymentApplicationsDuringMigration:*(v58 + 5)];
      }

      if (a2 <= 33 && v24)
      {
        v24 = [*(a1 + 32) _updatePrimaryContactlessAndInAppPaymentApplicationsDuringMigration:*(v58 + 5)];
      }

      if ((v46 & v24) == 1)
      {
        v24 = [*(a1 + 32) _updateEncodedImageSetsDuringMigration:*(v58 + 5)];
      }

      if (a2 <= 45 && v24)
      {
        v24 = [*(a1 + 32) _repairEncodedImagesDuringMigration:*(v58 + 5)];
      }

      if ((v45 & v24) == 1)
      {
        v24 = [*(a1 + 32) _updateIssuerCountryCodesDuringMigration:*(v58 + 5)];
      }

      if ((v44 & v24) == 1)
      {
        v24 = [*(a1 + 32) _updateExpressPassTypesMaskDuringMigration:*(v58 + 5)];
      }

      if ((v43 & v24) == 1)
      {
        if ([*(a1 + 32) _table:@"pass" containsColumn:@"issuer_country_code"])
        {
          v24 = 1;
        }

        else
        {
          v24 = [*(a1 + 32) _updateIssuerCountryCodesDuringMigration:*(v58 + 5)];
        }
      }

      if (a2 <= 54 && v24)
      {
        v24 = [*(a1 + 32) _updateCompleteRemoteHashesDuringMigration];
      }

      v35 = v24 ^ 1;
      if (a2 > 57)
      {
        v35 = 1;
      }

      if (((v18 | v35) & 1) == 0)
      {
        v24 = [*(a1 + 32) _updateTransactionSourceIdentifiersDuringMigration:*(v58 + 5)];
      }

      v36 = !v23;
      if (a2 > 60)
      {
        v36 = 1;
      }

      if ((v36 & 1) == 0 && v24)
      {
        v24 = [*(a1 + 32) _updateSubcredentialsDuringMigration:*(v58 + 5)];
      }
    }

    else
    {
      v24 = 1;
    }

    if (v54)
    {
      v37 = pk_General_log();
      v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);

      if (v38)
      {
        v39 = pk_General_log();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *v55 = 0;
          _os_log_impl(&dword_25B300000, v39, OS_LOG_TYPE_DEFAULT, "Notice: NPKGizmoDatabase: Re-encoding payment passes migration step needed", v55, 2u);
        }
      }

      [*(a1 + 32) _rebuildDatabaseWithPassesFromCompanionPasses];
    }

    _Block_object_dispose(buf, 8);
  }

  v40 = *MEMORY[0x277D85DE8];
  return v24;
}

void __28__NPKGizmoDatabase_database__block_invoke_273(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = *(a1 + 48);
  if (v8 < 3)
  {
    v9 = [v5 nfcPayload];

    if (v9)
    {
      v10 = [v5 nfcPayload];
      [v7 setObject:v10 forKeyedSubscript:@"nfcPayload"];
    }

    v8 = *(a1 + 48);
  }

  v11 = 0x277CCA000uLL;
  if (v8 <= 3)
  {
    v12 = MEMORY[0x277CCABB0];
    v13 = [v5 paymentPass];
    v14 = [v12 numberWithBool:{objc_msgSend(v13, "isPrivateLabel")}];
    [v7 setObject:v14 forKeyedSubscript:@"privateLabel"];

    v15 = MEMORY[0x277CCABB0];
    v16 = [v5 paymentPass];
    v17 = [v15 numberWithBool:{objc_msgSend(v16, "isCobranded")}];
    [v7 setObject:v17 forKeyedSubscript:@"cobranded"];

    v8 = *(a1 + 48);
  }

  if (v8 < 10)
  {
    v18 = [v5 paymentPass];
    v19 = *(a1 + 32);
    v20 = [objc_opt_class() _migrationDataSource];
    v21 = [v20 secureElementIdentifiers];

    if (v21)
    {
      [v18 updateDevicePaymentApplicationsWithSecureElementIdentifiers:v21];
    }

    if (v18)
    {
      v22 = [v18 devicePrimaryPaymentApplication];
      [v7 setObject:v22 forKeyedSubscript:@"devicePrimaryPaymentApplication"];

      if (v6)
      {
        v23 = [v18 devicePaymentApplications];
        v81 = MEMORY[0x277D85DD0];
        v82 = 3221225472;
        v83 = __28__NPKGizmoDatabase_database__block_invoke_2;
        v84 = &unk_279947FF0;
        v85 = v6;
        v86 = v7;
        [v23 enumerateObjectsUsingBlock:&v81];
      }

      v24 = NPKSecureArchiveObject(v18);
      [v7 setObject:v24 forKeyedSubscript:@"encodedPass"];
    }

    v8 = *(a1 + 48);
    if (v8 <= 5)
    {
      v25 = [v5 ingestedDate];

      if (v25)
      {
        v26 = [v5 ingestedDate];
        [v7 setObject:v26 forKeyedSubscript:@"ingestedDate"];
      }

      v8 = *(a1 + 48);
    }

    if (v8 < 10)
    {
      v27 = [v5 paymentPass];
      v28 = v27;
      if (v27)
      {
        v29 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v27, "effectiveContactlessPaymentApplicationState")}];
        [v7 setObject:v29 forKeyedSubscript:@"effectivePaymentApplicationState"];
      }

      v8 = *(a1 + 48);
      if (v8 < 10)
      {
        v30 = [v5 paymentPass];
        v31 = v30;
        if (v30)
        {
          v32 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v30, "npkHasUserSelectableContactlessPaymentApplications")}];
          [v7 setObject:v32 forKeyedSubscript:@"hasUserSelectableContactlessPaymentApplications"];
        }

        v8 = *(a1 + 48);
      }
    }
  }

  if (v8 < 11)
  {
    v33 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "hasStoredValue")}];
    [v7 setObject:v33 forKeyedSubscript:@"hasStoredValue"];

    v8 = *(a1 + 48);
  }

  if (v8 <= 11)
  {
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "settings")}];
    [v7 setObject:v34 forKeyedSubscript:@"settings"];

    v8 = *(a1 + 48);
  }

  if (v8 <= 13)
  {
    v35 = [v5 npkCompleteHash];
    [v7 setObject:v35 forKeyedSubscript:@"completeHash"];

    v36 = objc_alloc(MEMORY[0x277CBEB18]);
    v37 = *(a1 + 32);
    v38 = [v36 initWithCapacity:{objc_msgSend(objc_opt_class(), "latestWatchOSMajorVersion")}];
    v39 = *(a1 + 32);
    if ([objc_opt_class() latestWatchOSMajorVersion])
    {
      v40 = 0;
      do
      {
        v41 = [v5 npkCompleteHashForWatchOSVersion:{v40 + 1, v81, v82, v83, v84}];
        [v38 setObject:v41 atIndexedSubscript:v40];

        v42 = *(a1 + 32);
        ++v40;
      }

      while (v40 < [objc_opt_class() latestWatchOSMajorVersion]);
    }

    v43 = [v38 copy];
    [v7 setObject:v43 forKeyedSubscript:@"completeLocalHashes"];

    v8 = *(a1 + 48);
  }

  if (v8 <= 44)
  {
    v44 = [v5 paymentPass];
    v45 = [v44 availableActions];
    [v7 setObject:v45 forKeyedSubscript:@"availableActions"];

    if (*(a1 + 48) <= 44)
    {
      v46 = [v5 organizationName];
      [v7 setObject:v46 forKeyedSubscript:@"organizationName"];

      if (*(a1 + 48) <= 44)
      {
        v47 = [v5 frontFieldBuckets];
        [v7 setObject:v47 forKeyedSubscript:@"frontFieldBuckets"];

        v48 = [v5 backFieldBuckets];
        [v7 setObject:v48 forKeyedSubscript:@"backFieldBuckets"];

        if (*(a1 + 48) <= 44)
        {
          v49 = [v5 localizedDescription];
          [v7 setObject:v49 forKeyedSubscript:@"localizedDescription"];
        }
      }
    }
  }

  v50 = [v5 paymentPass];
  if (v50)
  {
    v51 = *(a1 + 32);
    v52 = [objc_opt_class() _migrationDataSource];
    v53 = [v52 secureElementIdentifiers];

    if (v53)
    {
      [v50 updateDevicePaymentApplicationsWithSecureElementIdentifiers:v53];
    }
  }

  v54 = *(a1 + 48);
  if (v54 <= 27)
  {
    v55 = [v50 devicePaymentApplications];
    [v7 setObject:v55 forKeyedSubscript:@"devicePaymentApplications"];

    v54 = *(a1 + 48);
  }

  if (v54 <= 33)
  {
    v56 = [v50 devicePrimaryContactlessPaymentApplication];
    [v7 setObject:v56 forKeyedSubscript:@"devicePrimaryContactlessPaymentApplication"];

    v57 = [v50 devicePrimaryInAppPaymentApplication];
    [v7 setObject:v57 forKeyedSubscript:@"devicePrimaryInAppPaymentApplication"];

    v54 = *(a1 + 48);
  }

  if (v54 <= 43)
  {
    v58 = objc_alloc(MEMORY[0x277D37F80]);
    v59 = [v58 initWithDictionary:MEMORY[0x277CBEC10] bundle:0];
    if (v59)
    {
      v60 = [v5 copy];
      [v59 setMissingImageSetsFromObject:v60];
      [v60 flushLoadedImageSets];
      v61 = NPKSecureArchiveObject(v59);
      [v7 setObject:v61 forKeyedSubscript:@"encodedImageSets"];

      v62 = NPKSecureArchiveObject(v60);
      [v7 setObject:v62 forKeyedSubscript:@"encodedPassWithoutImageSets"];
    }

    v54 = *(a1 + 48);
  }

  if (v54 < 46)
  {
    v63 = [v5 logoImage];
    v64 = v63;
    if (v63)
    {
      v65 = NPKSecureArchiveObject(v63);
      if (v65)
      {
        [v7 setObject:v65 forKeyedSubscript:@"encodedLogoImageData"];
      }
    }

    v66 = [v5 backgroundImage];
    if (!v66)
    {
      goto LABEL_63;
    }

    if ([v5 style] == 2)
    {
      v67 = MEMORY[0x277D37F20];
      v68 = [v5 backgroundImage];
      [v68 size];
      v69 = [v67 constraintsWithFixedSize:?];

      v70 = [v5 backgroundImage];
      v71 = [v70 blurredImageWithRadius:27 constraints:v69];

      v11 = 0x277CCA000;
      if (!v71)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v71 = [v5 backgroundImage];
      if (!v71)
      {
LABEL_62:

LABEL_63:
        v54 = *(a1 + 48);
        goto LABEL_64;
      }
    }

    v72 = NPKSecureArchiveObject(v71);
    [v7 setObject:v72 forKeyedSubscript:@"encodedBackgroundImageData"];

    goto LABEL_62;
  }

LABEL_64:
  if (v54 < 47)
  {
    v73 = [v50 issuerCountryCode];
    [v7 setObject:v73 forKeyedSubscript:@"issuerCountryCode"];

    v54 = *(a1 + 48);
  }

  if (v54 <= 47)
  {
    v74 = [*(v11 + 2992) numberWithUnsignedInteger:NPKPassDescriptionExpressTypesMaskWithPass(v5)];
    [v7 setObject:v74 forKeyedSubscript:@"expressPassTypesMask"];

    v54 = *(a1 + 48);
  }

  if ((v54 - 48) <= 2)
  {
    if (([*(a1 + 32) _table:@"pass" containsColumn:@"issuer_country_code"] & 1) == 0)
    {
      v75 = [v50 issuerCountryCode];
      [v7 setObject:v75 forKeyedSubscript:@"issuerCountryCode"];
    }

    v54 = *(a1 + 48);
  }

  if (v54 <= 54)
  {
    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"migrateCompleteHashes"];
    v54 = *(a1 + 48);
  }

  if (v50 && v54 <= 57)
  {
    v76 = [MEMORY[0x277CCAD78] UUID];
    v77 = [v76 UUIDString];
    [v7 setObject:v77 forKeyedSubscript:@"transactionSourceIdentifier"];

    v54 = *(a1 + 48);
  }

  if (v54 <= 60)
  {
    v78 = [v50 devicePrimaryPaymentApplication];
    v79 = [v78 applicationIdentifier];
    [v7 setObject:v79 forKeyedSubscript:@"devicePrimaryPaymentApplicationIdentifier"];
  }

  if ([v7 count])
  {
    v80 = [v5 uniqueID];
    [v7 setObject:v80 forKeyedSubscript:@"uniqueID"];

    [*(*(*(a1 + 40) + 8) + 40) addObject:v7];
  }
}

void __28__NPKGizmoDatabase_database__block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  v5 = [v7 applicationIdentifier];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    [*(a1 + 40) setObject:v7 forKeyedSubscript:@"preferredPaymentApplication"];
    *a3 = 1;
  }
}

- (sqlite3_stmt)deleteStatement
{
  v14 = *MEMORY[0x277D85DE8];
  p_deleteStatement = &self->_deleteStatement;
  if (!self->_deleteStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "DELETE FROM pass WHERE unique_id = ?", -1, p_deleteStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase deleteStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1072;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare deletion statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = *p_deleteStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)insertStatement
{
  v14 = *MEMORY[0x277D85DE8];
  p_insertStatement = &self->_insertStatement;
  if (!self->_insertStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "INSERT INTO pass (unique_id, type_id, style, hash, encoded_pass, encoded_image_sets, encoded_diff, logo_text, logo_image, background_color, label_color, foreground_color, background_image, nfc_payload, private_label, cobranded, device_payment_applications, device_primary_payment_application, device_primary_contactless_payment_application, device_primary_in_app_payment_application, preferred_aid, preferred_payment_application, ingested_date, complete_hash, delete_pending, effective_payment_application_state, has_user_selectable_payment_applications, has_stored_value, settings, complete_hashes, issuer_country_code, available_actions, organization_name, felica_transit_applet_state, front_field_buckets, back_field_buckets, last_add_value_amount, localized_description, pending_add_value_date, express_pass_types_mask, complete_remote_hashes, supports_pp, balances) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", -1, p_insertStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase insertStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1082;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare pass insertion statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = *p_insertStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)insertDiffStatement
{
  v14 = *MEMORY[0x277D85DE8];
  p_insertDiffStatement = &self->_insertDiffStatement;
  if (!self->_insertDiffStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "UPDATE pass SET encoded_diff = ? WHERE unique_id = ?", -1, p_insertDiffStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase insertDiffStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1092;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare diff insertion statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = *p_insertDiffStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)updateDeletePendingStatement
{
  v14 = *MEMORY[0x277D85DE8];
  p_updateDeletePendingStatement = &self->_updateDeletePendingStatement;
  if (!self->_updateDeletePendingStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "UPDATE pass SET delete_pending = ? WHERE unique_id = ?", -1, p_updateDeletePendingStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase updateDeletePendingStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1102;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare update delete pending statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = *p_updateDeletePendingStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)selectDeletePendingStatement
{
  v14 = *MEMORY[0x277D85DE8];
  p_selectDeletePendingStatement = &self->_selectDeletePendingStatement;
  if (!self->_selectDeletePendingStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "SELECT delete_pending FROM pass WHERE unique_id = ?", -1, p_selectDeletePendingStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase selectDeletePendingStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1111;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select pass diff statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = *p_selectDeletePendingStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)updatePreferredAIDStatement
{
  v14 = *MEMORY[0x277D85DE8];
  p_updatePreferredAIDStatement = &self->_updatePreferredAIDStatement;
  if (!self->_updatePreferredAIDStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "UPDATE pass SET preferred_aid = ?, preferred_payment_application = ? WHERE unique_id = ?", -1, p_updatePreferredAIDStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase updatePreferredAIDStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1121;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare update delete pending statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = *p_updatePreferredAIDStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)selectPreferredAIDStatement
{
  v14 = *MEMORY[0x277D85DE8];
  p_selectPreferredAIDStatement = &self->_selectPreferredAIDStatement;
  if (!self->_selectPreferredAIDStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "SELECT preferred_aid FROM pass WHERE unique_id = ?", -1, p_selectPreferredAIDStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase selectPreferredAIDStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1130;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select pass diff statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = *p_selectPreferredAIDStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)selectPassDataStatement
{
  v14 = *MEMORY[0x277D85DE8];
  p_selectPassDataStatement = &self->_selectPassDataStatement;
  if (!self->_selectPassDataStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "SELECT encoded_pass FROM pass WHERE unique_id = ?", -1, p_selectPassDataStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase selectPassDataStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1139;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select pass data statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = *p_selectPassDataStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)selectPassAndImageSetsDataStatement
{
  v14 = *MEMORY[0x277D85DE8];
  p_selectPassAndImageSetsDataStatement = &self->_selectPassAndImageSetsDataStatement;
  if (!self->_selectPassAndImageSetsDataStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "SELECT encoded_pass, encoded_image_sets FROM pass WHERE unique_id = ?", -1, p_selectPassAndImageSetsDataStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase selectPassAndImageSetsDataStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1149;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select pass data statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = *p_selectPassAndImageSetsDataStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)selectPassExistsStatement
{
  v14 = *MEMORY[0x277D85DE8];
  p_selectPassExitsStatement = &self->_selectPassExitsStatement;
  if (!self->_selectPassExitsStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "SELECT EXISTS (SELECT 1 FROM pass WHERE unique_id = ?);", -1, p_selectPassExitsStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase selectPassExistsStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1159;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select exists pass statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = *p_selectPassExitsStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)selectPassDiffStatement
{
  v14 = *MEMORY[0x277D85DE8];
  p_selectPassDiffStatement = &self->_selectPassDiffStatement;
  if (!self->_selectPassDiffStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "SELECT encoded_diff FROM pass WHERE unique_id = ?", -1, p_selectPassDiffStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase selectPassDiffStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1168;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select pass diff statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = *p_selectPassDiffStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)insertTransactionStatement
{
  v14 = *MEMORY[0x277D85DE8];
  p_insertTransactionStatement = &self->_insertTransactionStatement;
  if (!self->_insertTransactionStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "INSERT INTO transactions (transaction_source_identifier, pass_unique_id, transaction_id, transaction_date, transaction_source, transaction_type, has_notification_service_data, encoded_transaction, cloudkit_archived, service_identifier) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", -1, p_insertTransactionStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase insertTransactionStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1176;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare insert transaction statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = *p_insertTransactionStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)removeTransactionStatement
{
  v14 = *MEMORY[0x277D85DE8];
  p_removeTransactionStatement = &self->_removeTransactionStatement;
  if (!self->_removeTransactionStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "DELETE FROM transactions WHERE transaction_id = ?", -1, p_removeTransactionStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase removeTransactionStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1184;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare remove transaction statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = *p_removeTransactionStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)removeTransactionWithServiceIdentifierStatement
{
  v14 = *MEMORY[0x277D85DE8];
  p_removeTransactionWithServiceIdentifier = &self->_removeTransactionWithServiceIdentifier;
  if (!self->_removeTransactionWithServiceIdentifier && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "DELETE FROM transactions WHERE transaction_source_identifier = ? AND service_identifier = ?", -1, p_removeTransactionWithServiceIdentifier, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase removeTransactionWithServiceIdentifierStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1192;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare remove transaction with service identifier statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = *p_removeTransactionWithServiceIdentifier;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)selectTransactionsStatementWithTransactionSource:(unint64_t)a3 orderByDate:(int64_t)a4 limit:(unint64_t)a5
{
  v30 = *MEMORY[0x277D85DE8];
  if (a4 == -1)
  {
    v8 = @"ORDER BY transaction_date ASC";
  }

  else
  {
    v8 = @"ORDER BY transaction_date DESC";
  }

  v9 = [(__CFString *)v8 mutableCopy];
  v10 = v9;
  if (a5)
  {
    [v9 appendString:@" LIMIT ?"];
  }

  if (a3 == 2)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ AND transaction_source == 0 %@", @"SELECT encoded_transaction FROM transactions WHERE transaction_source_identifier = ? AND ((? OR has_notification_service_data == ?) OR ((? OR transaction_type == ?) AND (? OR transaction_type != ?))) AND transaction_date >= ? AND transaction_date <= ?", v10];
    p_selectTransactionsStatementWithoutSource = &self->_selectTransactionsStatementWithoutSource;
    if (self->_selectTransactionsStatementWithoutSource || !sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [v11 UTF8String], -1, p_selectTransactionsStatementWithoutSource, 0))
    {
      goto LABEL_27;
    }

    v19 = pk_General_log();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

    if (!v20)
    {
      goto LABEL_26;
    }

    v15 = pk_General_log();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_25:

LABEL_26:
      _NPKAssertAbort();
    }

    *buf = 136446722;
    v25 = "[NPKGizmoDatabase selectTransactionsStatementWithTransactionSource:orderByDate:limit:]";
    v26 = 2082;
    v27 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
    v28 = 2048;
    v29 = 1237;
    v16 = "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select transactions without source for pass statement)";
    goto LABEL_24;
  }

  if (a3 == 1)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ AND transaction_source != 0 %@", @"SELECT encoded_transaction FROM transactions WHERE transaction_source_identifier = ? AND ((? OR has_notification_service_data == ?) OR ((? OR transaction_type == ?) AND (? OR transaction_type != ?))) AND transaction_date >= ? AND transaction_date <= ?", v10];
    p_selectTransactionsStatementWithoutSource = &self->_selectTransactionsStatementWithSource;
    if (self->_selectTransactionsStatementWithSource || !sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [v11 UTF8String], -1, p_selectTransactionsStatementWithoutSource, 0))
    {
      goto LABEL_27;
    }

    v17 = pk_General_log();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);

    if (!v18)
    {
      goto LABEL_26;
    }

    v15 = pk_General_log();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 136446722;
    v25 = "[NPKGizmoDatabase selectTransactionsStatementWithTransactionSource:orderByDate:limit:]";
    v26 = 2082;
    v27 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
    v28 = 2048;
    v29 = 1230;
    v16 = "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select transactions with source for pass statement)";
LABEL_24:
    _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0x20u);
    goto LABEL_25;
  }

  if (a3)
  {
    v21 = 0;
    goto LABEL_29;
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", @"SELECT encoded_transaction FROM transactions WHERE transaction_source_identifier = ? AND ((? OR has_notification_service_data == ?) OR ((? OR transaction_type == ?) AND (? OR transaction_type != ?))) AND transaction_date >= ? AND transaction_date <= ?", v10];
  p_selectTransactionsStatementWithoutSource = &self->_selectTransactionsStatement;
  if (!self->_selectTransactionsStatement && sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [v11 UTF8String], -1, p_selectTransactionsStatementWithoutSource, 0))
  {
    v13 = pk_General_log();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

    if (!v14)
    {
      goto LABEL_26;
    }

    v15 = pk_General_log();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 136446722;
    v25 = "[NPKGizmoDatabase selectTransactionsStatementWithTransactionSource:orderByDate:limit:]";
    v26 = 2082;
    v27 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
    v28 = 2048;
    v29 = 1223;
    v16 = "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select transactions for pass statement)";
    goto LABEL_24;
  }

LABEL_27:
  v21 = *p_selectTransactionsStatementWithoutSource;

LABEL_29:
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (sqlite3_stmt)selectTransactionWithIdentifierStatement
{
  v14 = *MEMORY[0x277D85DE8];
  p_selectTransactionWithIdentifierStatement = &self->_selectTransactionWithIdentifierStatement;
  if (!self->_selectTransactionWithIdentifierStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "SELECT encoded_transaction FROM transactions WHERE transaction_id = ?", -1, p_selectTransactionWithIdentifierStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase selectTransactionWithIdentifierStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1249;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select transaction statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = *p_selectTransactionWithIdentifierStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)selectTransactionWithServiceIdentifierStatement
{
  v14 = *MEMORY[0x277D85DE8];
  p_selectTransactionWithIdentifierStatement = &self->_selectTransactionWithIdentifierStatement;
  if (!self->_selectTransactionWithIdentifierStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "SELECT encoded_transaction FROM transactions WHERE service_identifier = ?", -1, p_selectTransactionWithIdentifierStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase selectTransactionWithServiceIdentifierStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1257;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select transaction with service identifier statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = *p_selectTransactionWithIdentifierStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)insertTransactionSourceIdentifierForPassStatement
{
  v14 = *MEMORY[0x277D85DE8];
  p_insertTransactionSourceIdentifierForPassStatement = &self->_insertTransactionSourceIdentifierForPassStatement;
  if (!self->_insertTransactionSourceIdentifierForPassStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "INSERT INTO transaction_source (transaction_source_identifier, type, pass_unique_id) VALUES (?, ?, ?)", -1, p_insertTransactionSourceIdentifierForPassStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase insertTransactionSourceIdentifierForPassStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1265;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare insert transaction source identifier for pass statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = *p_insertTransactionSourceIdentifierForPassStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)selectTransactionSourceIdentifierForTransactionWithIdentifierStatement
{
  v14 = *MEMORY[0x277D85DE8];
  p_selectTransactionSourceIdentifierForTransactionWithIdentifierStatement = &self->_selectTransactionSourceIdentifierForTransactionWithIdentifierStatement;
  if (!self->_selectTransactionSourceIdentifierForTransactionWithIdentifierStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "SELECT transaction_source_identifier FROM transactions WHERE transaction_id = ?", -1, p_selectTransactionSourceIdentifierForTransactionWithIdentifierStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase selectTransactionSourceIdentifierForTransactionWithIdentifierStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1273;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select transaction source identifier for transaction identifier statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = *p_selectTransactionSourceIdentifierForTransactionWithIdentifierStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)selectTransactionSourceIdentifierForTransactionWithServiceIdentifierStatement
{
  v14 = *MEMORY[0x277D85DE8];
  if (!self->_selectTransactionSourceIdentifierForTransactionWithServiceIdentifierStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "SELECT transaction_source_identifier FROM transactions WHERE service_identifier = ?", -1, &self->_selectTransactionSourceIdentifierForTransactionWithServiceIdentifierStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase selectTransactionSourceIdentifierForTransactionWithServiceIdentifierStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1281;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select transaction source identifier for transaction service identifier statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = self->_selectTransactionSourceIdentifierForTransactionWithIdentifierStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)selectTransactionSourceIdentifierForPassUniqueIdentifierStatement
{
  v14 = *MEMORY[0x277D85DE8];
  p_selectTransactionSourceIdentifierForPassUniqueIdentifierStatement = &self->_selectTransactionSourceIdentifierForPassUniqueIdentifierStatement;
  if (!self->_selectTransactionSourceIdentifierForPassUniqueIdentifierStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "SELECT transaction_source_identifier FROM transaction_source WHERE pass_unique_id = ?", -1, p_selectTransactionSourceIdentifierForPassUniqueIdentifierStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase selectTransactionSourceIdentifierForPassUniqueIdentifierStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1289;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select transaction source identifier for transaction service identifier statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = *p_selectTransactionSourceIdentifierForPassUniqueIdentifierStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)selectPassUniqueIdentifierForTransactionSourceIdentifierStatement
{
  v14 = *MEMORY[0x277D85DE8];
  p_selectPassUniqueIdentifierForTransactionSourceIdentifierStatement = &self->_selectPassUniqueIdentifierForTransactionSourceIdentifierStatement;
  if (!self->_selectPassUniqueIdentifierForTransactionSourceIdentifierStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "SELECT pass_unique_id FROM transaction_source WHERE transaction_source_identifier = ?", -1, p_selectPassUniqueIdentifierForTransactionSourceIdentifierStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase selectPassUniqueIdentifierForTransactionSourceIdentifierStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1297;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select transaction source identifier for transaction service identifier statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = *p_selectPassUniqueIdentifierForTransactionSourceIdentifierStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)deleteTransactionSourceIdentifierForPassStatement
{
  v14 = *MEMORY[0x277D85DE8];
  p_deleteTransactionSourceIdentifierForPassStatement = &self->_deleteTransactionSourceIdentifierForPassStatement;
  if (!self->_deleteTransactionSourceIdentifierForPassStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "DELETE FROM transaction_source WHERE pass_unique_id = ?", -1, p_deleteTransactionSourceIdentifierForPassStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase deleteTransactionSourceIdentifierForPassStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1305;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare delete transaction source identifier for pass statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = *p_deleteTransactionSourceIdentifierForPassStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)deleteTransactionsForTransactionSourceStatement
{
  v14 = *MEMORY[0x277D85DE8];
  p_deleteTransactionsForTransactionSourceStatement = &self->_deleteTransactionsForTransactionSourceStatement;
  if (!self->_deleteTransactionsForTransactionSourceStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "DELETE FROM transactions WHERE transaction_source_identifier = ?", -1, p_deleteTransactionsForTransactionSourceStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase deleteTransactionsForTransactionSourceStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1313;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare delete transactions for transaction source statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = *p_deleteTransactionsForTransactionSourceStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)trimTransactionsForTransactionSourceStatement
{
  v14 = *MEMORY[0x277D85DE8];
  p_trimTransactionsForTransactionSourceStatement = &self->_trimTransactionsForTransactionSourceStatement;
  if (!self->_trimTransactionsForTransactionSourceStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "DELETE FROM transactions WHERE transaction_source_identifier = ? AND transaction_id NOT IN (SELECT transaction_id FROM transactions WHERE transaction_source_identifier = ? ORDER BY transaction_date DESC LIMIT ?)", -1, p_trimTransactionsForTransactionSourceStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase trimTransactionsForTransactionSourceStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1321;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare trim transactions for transaction source statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = *p_trimTransactionsForTransactionSourceStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)selectTransitAppletStateForPassStatement
{
  v14 = *MEMORY[0x277D85DE8];
  p_selectTransitAppletStateForPassStatement = &self->_selectTransitAppletStateForPassStatement;
  if (!self->_selectTransitAppletStateForPassStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "SELECT felica_transit_applet_state FROM pass WHERE unique_id = ?", -1, p_selectTransitAppletStateForPassStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase selectTransitAppletStateForPassStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1334;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select transit applet state statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = *p_selectTransitAppletStateForPassStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)updateTransitAppletStateForPassStatement
{
  v14 = *MEMORY[0x277D85DE8];
  p_updateTransitAppletStateForPassStatement = &self->_updateTransitAppletStateForPassStatement;
  if (!self->_updateTransitAppletStateForPassStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "UPDATE pass SET felica_transit_applet_state = ? WHERE unique_id = ?", -1, p_updateTransitAppletStateForPassStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase updateTransitAppletStateForPassStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1348;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare update transit applet state statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = *p_updateTransitAppletStateForPassStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)insertEphemeralTransactionStatement
{
  v14 = *MEMORY[0x277D85DE8];
  p_insertEphemeralTransactionStatement = &self->_insertEphemeralTransactionStatement;
  if (!self->_insertEphemeralTransactionStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "INSERT INTO ephemeral_transactions (transaction_source_identifier, transaction_id) VALUES (?, ?)", -1, p_insertEphemeralTransactionStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase insertEphemeralTransactionStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1357;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare insert ephemeral transaction statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = *p_insertEphemeralTransactionStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)deleteEphemeralTransactionByTransactionSourceIdentifierStatement
{
  v14 = *MEMORY[0x277D85DE8];
  if (!self->_deleteEphemeralTransactionByTransactionSourceIdentifierStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "DELETE FROM ephemeral_transactions WHERE transaction_source_identifier = ?", -1, &self->_deleteEphemeralTransactionByTransactionSourceIdentifierStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase deleteEphemeralTransactionByTransactionSourceIdentifierStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1366;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare delete ephemeral transaction statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = self->_deleteEphemeralTransactionByTransactionSourceIdentifierStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)currentEphemeralTransactionIdentifierStatement
{
  v14 = *MEMORY[0x277D85DE8];
  if (!self->_currentEphemeralTransactionIdentifierStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "SELECT transaction_id FROM ephemeral_transactions WHERE transaction_source_identifier = ? LIMIT 1", -1, &self->_currentEphemeralTransactionIdentifierStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase currentEphemeralTransactionIdentifierStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1374;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare current ephemeral transaction statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = self->_currentEphemeralTransactionIdentifierStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)selectLastAddValueAmountForPassStatement
{
  v14 = *MEMORY[0x277D85DE8];
  if (!self->_selectLastAddValueAmountForPassStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "SELECT last_add_value_amount FROM pass WHERE unique_id = ?", -1, &self->_selectLastAddValueAmountForPassStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase selectLastAddValueAmountForPassStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1383;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select last add value amount statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = self->_selectLastAddValueAmountForPassStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)updateLastAddValueAmountForPassStatement
{
  v14 = *MEMORY[0x277D85DE8];
  if (!self->_updateLastAddValueAmountForPassStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "UPDATE pass SET last_add_value_amount = ? WHERE unique_id = ?", -1, &self->_updateLastAddValueAmountForPassStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase updateLastAddValueAmountForPassStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1392;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare update last add value amount statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = self->_updateLastAddValueAmountForPassStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)selectPendingAddValueDateForPassStatement
{
  v14 = *MEMORY[0x277D85DE8];
  if (!self->_selectPendingAddValueDateForPassStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "SELECT pending_add_value_date FROM pass WHERE unique_id = ?", -1, &self->_selectPendingAddValueDateForPassStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase selectPendingAddValueDateForPassStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1401;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select pending add value date statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = self->_selectPendingAddValueDateForPassStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)updatePendingAddValueDateForPassStatement
{
  v14 = *MEMORY[0x277D85DE8];
  if (!self->_updatePendingAddValueDateForPassStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "UPDATE pass SET pending_add_value_date = ? WHERE unique_id = ?", -1, &self->_updatePendingAddValueDateForPassStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase updatePendingAddValueDateForPassStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1410;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare update pending add value date statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = self->_updatePendingAddValueDateForPassStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)selectBalancesForPassStatement
{
  v14 = *MEMORY[0x277D85DE8];
  if (!self->_selectBalancesForPassStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "SELECT balances FROM pass WHERE unique_id = ?", -1, &self->_selectBalancesForPassStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase selectBalancesForPassStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1419;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select balances state statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = self->_selectBalancesForPassStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)updateBalancesForPassStatement
{
  v14 = *MEMORY[0x277D85DE8];
  if (!self->_updateBalancesForPassStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "UPDATE pass SET balances = ? WHERE unique_id = ?", -1, &self->_updateBalancesForPassStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase updateBalancesForPassStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1428;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare update balances state statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = self->_updateBalancesForPassStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)insertSubcredentialsStatement
{
  v14 = *MEMORY[0x277D85DE8];
  if (!self->_insertSubcredentialsStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "INSERT INTO subcredentials (pass_unique_id, payment_application_id, encoded_subcredentials) VALUES (?, ?, ?)", -1, &self->_insertSubcredentialsStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase insertSubcredentialsStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1437;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare insert subcredentials statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = self->_insertSubcredentialsStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)deleteSubcredentialsStatement
{
  v14 = *MEMORY[0x277D85DE8];
  if (!self->_deleteSubcredentialsStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "DELETE FROM subcredentials WHERE pass_unique_id = ? AND payment_application_id = ?", -1, &self->_deleteSubcredentialsStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase deleteSubcredentialsStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1445;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare delete subcredentials statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = self->_deleteSubcredentialsStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (sqlite3_stmt)deleteAllSubcredentialsForPassUniqueIDStatement
{
  v14 = *MEMORY[0x277D85DE8];
  if (!self->_deleteAllSubcredentialsForPassUniqueIDStatement && sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "DELETE FROM subcredentials WHERE pass_unique_id = ?", -1, &self->_deleteAllSubcredentialsForPassUniqueIDStatement, 0))
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKGizmoDatabase deleteAllSubcredentialsForPassUniqueIDStatement]";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v12 = 2048;
        v13 = 1453;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare delete all subcredentials for pass statement)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = self->_deleteAllSubcredentialsForPassUniqueIDStatement;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_loadInitialManifestLocked
{
  v115 = *MEMORY[0x277D85DE8];
  if ((!self->_manifest || !self->_passDescriptions) && [(NPKGizmoDatabase *)self database])
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Lazily loading initial manifest", buf, 2u);
      }
    }

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    manifest = self->_manifest;
    self->_manifest = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    passDescriptions = self->_passDescriptions;
    self->_passDescriptions = v8;

    ppStmt = 0;
    if (sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "SELECT unique_id, type_id, style, hash, logo_text, logo_image, background_color, label_color, foreground_color, delete_pending, background_image, nfc_payload, private_label, cobranded, device_payment_applications, device_primary_payment_application, device_primary_contactless_payment_application, device_primary_in_app_payment_application, preferred_payment_application, ingested_date, complete_hash, effective_payment_application_state, has_user_selectable_payment_applications, has_stored_value, settings, complete_hashes, issuer_country_code, available_actions, organization_name, felica_transit_applet_state, front_field_buckets, back_field_buckets, last_add_value_amount, localized_description, pending_add_value_date, express_pass_types_mask, complete_remote_hashes, supports_pp FROM pass", -1, &ppStmt, 0))
    {
      v10 = pk_General_log();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

      if (v11)
      {
        v12 = pk_General_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = NPKHomeDirectoryPath();
          v14 = [v13 stringByAppendingPathComponent:@"nanopasses.sqlite3"];
          v15 = NPKGetMyProcessName();
          *buf = 138412546;
          v110 = v14;
          v111 = 2112;
          v112 = v15;
          _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_ERROR, "Error: *** CORRUPTED / INVALID PASS DATABASE: Unable to prepare select pass descriptions statement; this most likely means you need to delete the database at %@ and kill %@", buf, 0x16u);
        }

LABEL_50:
      }
    }

    else
    {
      if (sqlite3_step(ppStmt) == 100)
      {
        v16 = 0x277CCA000uLL;
        v17 = 0x277CBE000uLL;
        v18 = 0x277CBE000uLL;
        v19 = 0x277CBE000uLL;
        do
        {
          v107 = [*(v16 + 3240) stringWithUTF8String:{sqlite3_column_text(ppStmt, 0)}];
          v106 = [*(v16 + 3240) stringWithUTF8String:{sqlite3_column_text(ppStmt, 1)}];
          v85 = sqlite3_column_int(ppStmt, 2);
          v20 = sqlite3_column_blob(ppStmt, 3);
          v105 = [*(v17 + 2704) dataWithBytes:v20 length:{sqlite3_column_bytes(ppStmt, 3)}];
          v21 = sqlite3_column_text(ppStmt, 4);
          if (v21)
          {
            v104 = [*(v16 + 3240) stringWithUTF8String:v21];
          }

          else
          {
            v104 = 0;
          }

          v22 = sqlite3_column_blob(ppStmt, 5);
          v23 = sqlite3_column_bytes(ppStmt, 5);
          if (v23 < 1)
          {
            v103 = 0;
          }

          else
          {
            v103 = [*(v17 + 2704) dataWithBytes:v22 length:v23];
          }

          v102 = [(NPKGizmoDatabase *)self _decodeObjectOfClass:objc_opt_class() fromStatement:ppStmt column:6];
          v101 = [(NPKGizmoDatabase *)self _decodeObjectOfClass:objc_opt_class() fromStatement:ppStmt column:7];
          v100 = [(NPKGizmoDatabase *)self _decodeObjectOfClass:objc_opt_class() fromStatement:ppStmt column:8];
          v88 = sqlite3_column_int(ppStmt, 9);
          v24 = sqlite3_column_blob(ppStmt, 10);
          v25 = sqlite3_column_bytes(ppStmt, 10);
          if (v25 < 1)
          {
            v99 = 0;
          }

          else
          {
            v99 = [*(v17 + 2704) dataWithBytes:v24 length:v25];
          }

          v98 = [(NPKGizmoDatabase *)self _decodeObjectOfClass:objc_opt_class() fromStatement:ppStmt column:11];
          v87 = sqlite3_column_int(ppStmt, 12);
          v86 = sqlite3_column_int(ppStmt, 13);
          v26 = *(v18 + 2968);
          v27 = objc_opt_class();
          v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
          v97 = [(NPKGizmoDatabase *)self _decodeObjectOfClasses:v28 fromStatement:ppStmt column:14];

          v96 = [(NPKGizmoDatabase *)self _decodeObjectOfClass:objc_opt_class() fromStatement:ppStmt column:15];
          v95 = [(NPKGizmoDatabase *)self _decodeObjectOfClass:objc_opt_class() fromStatement:ppStmt column:16];
          v94 = [(NPKGizmoDatabase *)self _decodeObjectOfClass:objc_opt_class() fromStatement:ppStmt column:17];
          v93 = [(NPKGizmoDatabase *)self _decodeObjectOfClass:objc_opt_class() fromStatement:ppStmt column:18];
          v92 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{sqlite3_column_int(ppStmt, 19)}];
          v29 = sqlite3_column_blob(ppStmt, 20);
          v30 = sqlite3_column_bytes(ppStmt, 20);
          if (v30 < 1)
          {
            v91 = 0;
          }

          else
          {
            v91 = [*(v17 + 2704) dataWithBytes:v29 length:v30];
          }

          v31 = sqlite3_column_int(ppStmt, 21);
          v83 = sqlite3_column_int(ppStmt, 22);
          v82 = sqlite3_column_int(ppStmt, 23);
          v84 = sqlite3_column_int64(ppStmt, 24);
          v32 = *(v18 + 2968);
          v33 = *(v19 + 2656);
          v34 = objc_opt_class();
          v35 = *(v17 + 2704);
          v36 = [v32 setWithObjects:{v34, objc_opt_class(), 0}];
          v37 = [(NPKGizmoDatabase *)self _decodeObjectOfClasses:v36 fromStatement:ppStmt column:25];

          v38 = sqlite3_column_text(ppStmt, 26);
          if (v38)
          {
            v90 = [*(v16 + 3240) stringWithUTF8String:v38];
          }

          else
          {
            v90 = 0;
          }

          v39 = *(v18 + 2968);
          v40 = *(v19 + 2656);
          v41 = objc_opt_class();
          v42 = [v39 setWithObjects:{v41, objc_opt_class(), 0}];
          v89 = [(NPKGizmoDatabase *)self _decodeObjectOfClasses:v42 fromStatement:ppStmt column:27];

          v43 = sqlite3_column_text(ppStmt, 28);
          v44 = v31;
          if (v43)
          {
            v81 = [*(v16 + 3240) stringWithUTF8String:v43];
          }

          else
          {
            v81 = 0;
          }

          v80 = [(NPKGizmoDatabase *)self _decodeObjectOfClass:objc_opt_class() fromStatement:ppStmt column:29];
          v45 = *(v18 + 2968);
          v46 = *(v19 + 2656);
          v47 = objc_opt_class();
          v48 = [v45 setWithObjects:{v47, objc_opt_class(), 0}];
          v79 = [(NPKGizmoDatabase *)self _decodeObjectOfClasses:v48 fromStatement:ppStmt column:30];

          v49 = *(v18 + 2968);
          v50 = *(v19 + 2656);
          v51 = objc_opt_class();
          v52 = [v49 setWithObjects:{v51, objc_opt_class(), 0}];
          v78 = [(NPKGizmoDatabase *)self _decodeObjectOfClasses:v52 fromStatement:ppStmt column:31];

          v53 = sqlite3_column_text(ppStmt, 32);
          if (v53 && *v53)
          {
            v54 = [*(v16 + 3240) stringWithUTF8String:v53];
            v77 = [MEMORY[0x277CCA980] decimalNumberWithString:v54];
          }

          else
          {
            v77 = 0;
          }

          v55 = v44;
          v56 = sqlite3_column_text(ppStmt, 33);
          if (v56)
          {
            v76 = [*(v16 + 3240) stringWithUTF8String:v56];
          }

          else
          {
            v76 = 0;
          }

          v57 = sqlite3_column_int(ppStmt, 34);
          if (v57)
          {
            v75 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v57];
          }

          else
          {
            v75 = 0;
          }

          v74 = sqlite3_column_int64(ppStmt, 35);
          v58 = *(v18 + 2968);
          v59 = *(v19 + 2656);
          v60 = objc_opt_class();
          v61 = *(v17 + 2704);
          v62 = [v58 setWithObjects:{v60, objc_opt_class(), 0}];
          v63 = [(NPKGizmoDatabase *)self _decodeObjectOfClasses:v62 fromStatement:ppStmt column:36];

          v73 = sqlite3_column_int(ppStmt, 37);
          v64 = pk_General_log();
          v65 = os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT);

          if (v65)
          {
            v66 = pk_General_log();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v110 = v107;
              v111 = 2112;
              v112 = v37;
              v113 = 2112;
              v114 = v63;
              _os_log_impl(&dword_25B300000, v66, OS_LOG_TYPE_DEFAULT, "Notice: Initial manifest encountered key %@ local %@ remote %@", buf, 0x20u);
            }
          }

          v72 = objc_alloc_init(NPKGizmoDatabaseManifestEntry);
          [(NPKGizmoDatabaseManifestEntry *)v72 setUniqueID:v107];
          [(NPKGizmoDatabaseManifestEntry *)v72 setLocalManifestHashes:v37];
          [(NPKGizmoDatabaseManifestEntry *)v72 setRemoteManifestHashes:v63];
          [(NSMutableDictionary *)self->_manifest setObject:v72 forKeyedSubscript:v107];
          v67 = objc_alloc_init(NPKPassDescription);
          [(NPKPassDescription *)v67 setUniqueID:v107];
          [(NPKPassDescription *)v67 setPassTypeIdentifier:v106];
          [(NPKPassDescription *)v67 setStyle:v85];
          [(NPKPassDescription *)v67 setManifestHash:v105];
          [(NPKPassDescription *)v67 setLogoText:v104];
          [(NPKPassDescription *)v67 setLogoImageEncoded:v103];
          [(NPKPassDescription *)v67 setBackgroundColor:v102];
          [(NPKPassDescription *)v67 setLabelColor:v101];
          [(NPKPassDescription *)v67 setForegroundColor:v100];
          [(NPKPassDescription *)v67 setDeletePending:v88 != 0];
          [(NPKPassDescription *)v67 setBackgroundImageEncoded:v99];
          [(NPKPassDescription *)v67 setNfcPayload:v98];
          [(NPKPassDescription *)v67 setPrivateLabel:v87 != 0];
          [(NPKPassDescription *)v67 setCobranded:v86 != 0];
          [(NPKPassDescription *)v67 setDevicePaymentApplications:v97];
          [(NPKPassDescription *)v67 setDevicePrimaryPaymentApplication:v96];
          [(NPKPassDescription *)v67 setDevicePrimaryContactlessPaymentApplication:v95];
          [(NPKPassDescription *)v67 setDevicePrimaryInAppPaymentApplication:v94];
          [(NPKPassDescription *)v67 setPreferredPaymentApplication:v93];
          [(NPKPassDescription *)v67 setEffectivePaymentApplicationState:v55];
          [(NPKPassDescription *)v67 setIngestionDate:v92];
          [(NPKPassDescription *)v67 setCompleteHash:v91];
          [(NPKPassDescription *)v67 setHasUserSelectableContactlessPaymentApplications:v83 != 0];
          [(NPKPassDescription *)v67 setHasStoredValue:v82 != 0];
          [(NPKPassDescription *)v67 setSettings:v84];
          [(NPKPassDescription *)v67 setIssuerCountryCode:v90];
          [(NPKPassDescription *)v67 setAvailableActions:v89];
          [(NPKPassDescription *)v67 setOrganizationName:v81];
          [(NPKPassDescription *)v67 setTransitAppletState:v80];
          [(NPKPassDescription *)v67 setFrontFieldBuckets:v79];
          [(NPKPassDescription *)v67 setBackFieldBuckets:v78];
          [(NPKPassDescription *)v67 setLastAddValueAmount:v77];
          [(NPKPassDescription *)v67 setLocalizedDescription:v76];
          [(NPKPassDescription *)v67 setPendingAddValueDate:v75];
          [(NPKPassDescription *)v67 setExpressPassTypesMask:v74];
          [(NPKPassDescription *)v67 setHasAssociatedPeerPaymentAccount:v73 != 0];
          [(NSMutableArray *)self->_passDescriptions addObject:v67];

          v16 = 0x277CCA000;
          v17 = 0x277CBE000;
          v18 = 0x277CBE000;
          v19 = 0x277CBE000;
        }

        while (sqlite3_step(ppStmt) == 100);
      }

      sqlite3_clear_bindings(ppStmt);
      sqlite3_reset(ppStmt);
      sqlite3_finalize(ppStmt);
      v68 = pk_General_log();
      v69 = os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT);

      if (v69)
      {
        v12 = pk_General_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v70 = self->_manifest;
          *buf = 138412290;
          v110 = v70;
          _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Loaded initial manifest: %@", buf, 0xCu);
        }

        goto LABEL_50;
      }
    }
  }

  v71 = *MEMORY[0x277D85DE8];
}

- (void)_performTransactionWithBlock:(id)a3
{
  v4 = a3;
  isInTransaction = self->_isInTransaction;
  if (isInTransaction || (v6 = [(NPKGizmoDatabase *)self _executeSQL:@"BEGIN IMMEDIATE TRANSACTION;"], self->_isInTransaction = v6, v6))
  {
    v7 = v4[2](v4);
    if (!isInTransaction)
    {
      if (v7)
      {
        [(NPKGizmoDatabase *)self _executeSQL:@"COMMIT;"];
        self->_isInTransaction = 0;
      }

      else
      {
        v8 = pk_General_log();
        v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

        if (v9)
        {
          v10 = pk_General_log();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *v11 = 0;
            _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Warning: Rolling back transaction", v11, 2u);
          }
        }

        [(NPKGizmoDatabase *)self _executeSQL:@"ROLLBACK;"];
        self->_isInTransaction = 0;
      }
    }
  }
}

- (id)_decodeObjectOfClasses:(id)a3 fromStatement:(sqlite3_stmt *)a4 column:(int)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = sqlite3_column_blob(a4, a5);
  v9 = sqlite3_column_bytes(a4, a5);
  if (v9 < 1)
  {
    v12 = 0;
  }

  else
  {
    v10 = [MEMORY[0x277CBEA90] dataWithBytes:v8 length:v9];
    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v10 error:0];
      v12 = [v11 decodeObjectOfClasses:v7 forKey:*MEMORY[0x277CCA308]];
    }

    else
    {
      v12 = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)savePass:(id)a3 isLocalPass:(BOOL)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    v8 = pk_General_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v10 = pk_General_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "[NPKGizmoDatabase savePass:isLocalPass:]";
        *&buf[12] = 2082;
        *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        *&buf[22] = 2048;
        v29 = 1696;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Cannot save nil pass)", buf, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  v11 = [v6 uniqueID];

  if (!v11)
  {
    v12 = pk_General_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

    if (v13)
    {
      v14 = pk_General_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        *&buf[4] = "[NPKGizmoDatabase savePass:isLocalPass:]";
        *&buf[12] = 2082;
        *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        *&buf[22] = 2048;
        v29 = 1697;
        LOWORD(v30) = 2112;
        *(&v30 + 2) = v7;
        _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Pass %@ has nil unique ID)", buf, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  v15 = [v7 npkCompleteHash];

  if (!v15)
  {
    v16 = pk_General_log();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

    if (v17)
    {
      v18 = pk_General_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        *&buf[4] = "[NPKGizmoDatabase savePass:isLocalPass:]";
        *&buf[12] = 2082;
        *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        *&buf[22] = 2048;
        v29 = 1698;
        LOWORD(v30) = 2112;
        *(&v30 + 2) = v7;
        _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Pass %@ has nil complete hash)", buf, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v29 = __Block_byref_object_copy__13;
  *&v30 = __Block_byref_object_dispose__13;
  *(&v30 + 1) = 0;
  dbQueue = self->_dbQueue;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __41__NPKGizmoDatabase_savePass_isLocalPass___block_invoke;
  v24[3] = &unk_279948068;
  v24[4] = self;
  v25 = v7;
  v27 = a4;
  v26 = buf;
  v20 = v7;
  dispatch_sync(dbQueue, v24);
  v21 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);
  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

void __41__NPKGizmoDatabase_savePass_isLocalPass___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (![*(a1 + 32) database])
  {
    v2 = pk_General_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

    if (v3)
    {
      v4 = pk_General_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v14 = "[NPKGizmoDatabase savePass:isLocalPass:]_block_invoke";
        v15 = 2082;
        v16 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v17 = 2048;
        v18 = 1703;
        _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", buf, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  [*(a1 + 32) _loadInitialManifestLocked];
  buf[0] = 0;
  [*(a1 + 32) _savePassLocked:*(a1 + 40) locallyAdded:*(a1 + 56) wasUpdate:buf];
  v5 = [*(a1 + 32) _libraryHashLockedForWatchOSMajorVersion:{objc_msgSend(objc_opt_class(), "latestWatchOSMajorVersion")}];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__NPKGizmoDatabase_savePass_isLocalPass___block_invoke_465;
  block[3] = &unk_279946490;
  v12 = buf[0];
  v8 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v11 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);
  [*(a1 + 32) _notifyDatabaseChangedExternally];
  [*(a1 + 32) _notifyDatabaseChangedWithNoop:0];

  v9 = *MEMORY[0x277D85DE8];
}

void __41__NPKGizmoDatabase_savePass_isLocalPass___block_invoke_465(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = &NPKGizmoDatabasePassUpdatedNotificationName;
  if (!*(a1 + 48))
  {
    v3 = &NPKGizmoDatabasePassAddedNotificationName;
  }

  v4 = *v3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = NPKGizmoDatabasePassKeyName;
  v10[0] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v2 postNotificationName:v4 object:v6 userInfo:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)saveDiff:(id)a3 forPassWithUniqueID:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = pk_General_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v10 = pk_General_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v19 = "[NPKGizmoDatabase saveDiff:forPassWithUniqueID:]";
        v20 = 2082;
        v21 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v22 = 2048;
        v23 = 1721;
        v24 = 2112;
        v25 = 0;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unique ID %@ is nil)", buf, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__NPKGizmoDatabase_saveDiff_forPassWithUniqueID___block_invoke;
  block[3] = &unk_279945880;
  block[4] = self;
  v16 = v6;
  v17 = v7;
  v12 = v7;
  v13 = v6;
  dispatch_sync(dbQueue, block);

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __49__NPKGizmoDatabase_saveDiff_forPassWithUniqueID___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (![*(a1 + 32) database])
  {
    v2 = pk_General_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

    if (v3)
    {
      v4 = pk_General_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v7 = 136446722;
        v8 = "[NPKGizmoDatabase saveDiff:forPassWithUniqueID:]_block_invoke";
        v9 = 2082;
        v10 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v11 = 2048;
        v12 = 1725;
        _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", &v7, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  [*(a1 + 32) _loadInitialManifestLocked];
  result = [*(a1 + 32) _saveDiffLocked:*(a1 + 40) forPassWithUniqueID:*(a1 + 48)];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)removePassWithUniqueID:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = pk_General_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v7 = pk_General_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "[NPKGizmoDatabase removePassWithUniqueID:]";
        *&buf[12] = 2082;
        *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        *&buf[22] = 2048;
        v17 = 1733;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Cannot remove pass with nil unique ID)", buf, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v17 = __Block_byref_object_copy__13;
  v18 = __Block_byref_object_dispose__13;
  v19 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__NPKGizmoDatabase_removePassWithUniqueID___block_invoke;
  block[3] = &unk_279948090;
  block[4] = self;
  v14 = v4;
  v15 = buf;
  v9 = v4;
  dispatch_sync(dbQueue, block);
  v10 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __43__NPKGizmoDatabase_removePassWithUniqueID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadInitialManifestLocked];
  v2 = [*(a1 + 32) _removePassWithUniqueIDLocked:*(a1 + 40)];
  v3 = [*(a1 + 32) _libraryHashLockedForWatchOSMajorVersion:{objc_msgSend(objc_opt_class(), "latestWatchOSMajorVersion")}];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  [*(a1 + 32) _notifyDatabaseChangedExternally];
  v6 = *(a1 + 32);

  return [v6 _notifyDatabaseChangedWithNoop:v2 ^ 1u];
}

- (id)rebuildDatabaseWithPasses:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  v17 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__NPKGizmoDatabase_rebuildDatabaseWithPasses___block_invoke;
  block[3] = &unk_279948090;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(dbQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __46__NPKGizmoDatabase_rebuildDatabaseWithPasses___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (![*(a1 + 32) database])
  {
    v2 = pk_General_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

    if (v3)
    {
      v4 = pk_General_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v17 = "[NPKGizmoDatabase rebuildDatabaseWithPasses:]_block_invoke";
        v18 = 2082;
        v19 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v20 = 2048;
        v21 = 1753;
        _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", buf, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  [*(a1 + 32) _loadInitialManifestLocked];
  v5 = *(a1 + 32);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __46__NPKGizmoDatabase_rebuildDatabaseWithPasses___block_invoke_467;
  v13 = &unk_2799480B8;
  v14 = v5;
  v15 = *(a1 + 40);
  [v5 _performTransactionWithBlock:&v10];
  v6 = [*(a1 + 32) _libraryHashLockedForWatchOSMajorVersion:{objc_msgSend(objc_opt_class(), "latestWatchOSMajorVersion", v10, v11, v12, v13, v14)}];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  [*(a1 + 32) _notifyDatabaseChangedExternally];
  [*(a1 + 32) _notifyDatabaseChangedWithNoop:0];

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __46__NPKGizmoDatabase_rebuildDatabaseWithPasses___block_invoke_467(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 360) allKeys];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __46__NPKGizmoDatabase_rebuildDatabaseWithPasses___block_invoke_2;
  v14[3] = &unk_279945858;
  v14[4] = *(a1 + 32);
  [v2 enumerateObjectsUsingBlock:v14];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) _savePassLocked:*(*(&v10 + 1) + 8 * v7++) locallyAdded:0 wasUpdate:{0, v10}];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)saveTransaction:(id)a3 forPass:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (NPKIsTransactionAllowedInUI(v6, v7))
  {
    v8 = [v6 transactionSourceIdentifier];
    v9 = [v7 paymentPass];
    v10 = [v9 devicePrimaryPaymentApplication];
    v11 = [v10 paymentNetworkIdentifier];

    v12 = [v7 paymentPass];
    if ([v12 isPeerPaymentPass])
    {
      v13 = 0;
    }

    else
    {
      v13 = PKTransactionsUnlimitedForCredentialType() ^ 1;
    }

    [(NPKGizmoDatabase *)self _saveTransaction:v6 forTransactionSourceIdentifier:v8 withPaymentCredentialType:v11 shouldTrim:v13];
  }

  else
  {
    v14 = pk_Payment_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

    if (v15)
    {
      v16 = pk_Payment_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [v7 uniqueID];
        v19 = 138412546;
        v20 = v6;
        v21 = 2112;
        v22 = v17;
        _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_ERROR, "Error: Transaction is not allowed in UI; not inserting transaction %@ for pass: %@", &v19, 0x16u);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_saveTransaction:(id)a3 forTransactionSourceIdentifier:(id)a4 withPaymentCredentialType:(int64_t)a5 shouldTrim:(BOOL)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (!v10)
  {
    v18 = pk_General_log();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

    if (v19)
    {
      v20 = pk_General_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v33 = "[NPKGizmoDatabase _saveTransaction:forTransactionSourceIdentifier:withPaymentCredentialType:shouldTrim:]";
        v34 = 2082;
        v35 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v36 = 2048;
        v37 = 1793;
        _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Transaction is nil)", buf, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  if (v11)
  {
    v13 = [v10 identifier];

    if (v13)
    {
      if ([v10 suppressBehavior] != 1)
      {
        dbQueue = self->_dbQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __105__NPKGizmoDatabase__saveTransaction_forTransactionSourceIdentifier_withPaymentCredentialType_shouldTrim___block_invoke;
        block[3] = &unk_2799480E0;
        block[4] = self;
        v28 = v10;
        v31 = a6;
        v29 = v12;
        v30 = a5;
        dispatch_sync(dbQueue, block);

        goto LABEL_22;
      }

      v14 = pk_Payment_log();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

      if (v15)
      {
        v16 = pk_Payment_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v33 = v10;
          v17 = "Error: Transaction should be suppressed from UI; not inserting %@";
LABEL_19:
          _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_ERROR, v17, buf, 0xCu);
          goto LABEL_20;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v23 = pk_Payment_log();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);

      if (v24)
      {
        v16 = pk_Payment_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v33 = v10;
          v17 = "Error: Transaction does not have identifier; not inserting %@";
          goto LABEL_19;
        }

        goto LABEL_20;
      }
    }
  }

  else
  {
    v21 = pk_Payment_log();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

    if (v22)
    {
      v16 = pk_Payment_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v33 = v10;
        v17 = "Error: No transaction source identifier; not inserting transaction %@";
        goto LABEL_19;
      }

LABEL_20:
    }
  }

LABEL_22:

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t __105__NPKGizmoDatabase__saveTransaction_forTransactionSourceIdentifier_withPaymentCredentialType_shouldTrim___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (![*(a1 + 32) database])
  {
    v2 = pk_General_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

    if (v3)
    {
      v4 = pk_General_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v7 = 136446722;
        v8 = "[NPKGizmoDatabase _saveTransaction:forTransactionSourceIdentifier:withPaymentCredentialType:shouldTrim:]_block_invoke";
        v9 = 2082;
        v10 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v11 = 2048;
        v12 = 1807;
        _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", &v7, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  [*(a1 + 32) _loadInitialManifestLocked];
  result = [*(a1 + 32) _saveTransactionLocked:*(a1 + 40) forTransactionSourceIdentifier:*(a1 + 48)];
  if (*(a1 + 64) == 1)
  {
    result = [*(a1 + 32) _trimTransactionsForTransactionSourceIdentifierLocked:*(a1 + 48) withPaymentCredentialType:*(a1 + 56)];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)removeTransactionWithIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = pk_General_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v7 = pk_General_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v14 = "[NPKGizmoDatabase removeTransactionWithIdentifier:]";
        v15 = 2082;
        v16 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v17 = 2048;
        v18 = 1820;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Transaction Unique ID is nil)", buf, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  dbQueue = self->_dbQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__NPKGizmoDatabase_removeTransactionWithIdentifier___block_invoke;
  v11[3] = &unk_2799454E0;
  v11[4] = self;
  v12 = v4;
  v9 = v4;
  dispatch_async(dbQueue, v11);

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __52__NPKGizmoDatabase_removeTransactionWithIdentifier___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (![*(a1 + 32) database])
  {
    v2 = pk_General_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

    if (v3)
    {
      v4 = pk_General_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v7 = 136446722;
        v8 = "[NPKGizmoDatabase removeTransactionWithIdentifier:]_block_invoke";
        v9 = 2082;
        v10 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v11 = 2048;
        v12 = 1824;
        _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", &v7, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = [*(a1 + 32) _removeTransactionWithIdentifier:*(a1 + 40)];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)removeTransactionsForTransactionSource:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = pk_General_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v7 = pk_General_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v14 = "[NPKGizmoDatabase removeTransactionsForTransactionSource:]";
        v15 = 2082;
        v16 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v17 = 2048;
        v18 = 1831;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: transaction source cannot not be nil)", buf, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  dbQueue = self->_dbQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__NPKGizmoDatabase_removeTransactionsForTransactionSource___block_invoke;
  v11[3] = &unk_2799454E0;
  v11[4] = self;
  v12 = v4;
  v9 = v4;
  dispatch_async(dbQueue, v11);

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __59__NPKGizmoDatabase_removeTransactionsForTransactionSource___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (![*(a1 + 32) database])
  {
    v2 = pk_General_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

    if (v3)
    {
      v4 = pk_General_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v7 = 136446722;
        v8 = "[NPKGizmoDatabase removeTransactionsForTransactionSource:]_block_invoke";
        v9 = 2082;
        v10 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v11 = 2048;
        v12 = 1835;
        _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", &v7, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  result = [*(a1 + 32) _removeTransactionsForTransactionSource:*(a1 + 40)];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)transactionsForTransactionSourceIdentifier:(id)a3 withTransactionSource:(unint64_t)a4 withBackingData:(unint64_t)a5 startDate:(id)a6 endDate:(id)a7 orderedByDate:(int64_t)a8 limit:(int64_t)a9
{
  v15 = a3;
  v16 = a6;
  v17 = a7;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__13;
  v37 = __Block_byref_object_dispose__13;
  v38 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __139__NPKGizmoDatabase_transactionsForTransactionSourceIdentifier_withTransactionSource_withBackingData_startDate_endDate_orderedByDate_limit___block_invoke;
  block[3] = &unk_279948108;
  block[4] = self;
  v25 = v15;
  v28 = &v33;
  v29 = a4;
  v26 = v16;
  v27 = v17;
  v30 = a5;
  v31 = a8;
  v32 = a9;
  v19 = v17;
  v20 = v16;
  v21 = v15;
  dispatch_sync(dbQueue, block);
  v22 = v34[5];

  _Block_object_dispose(&v33, 8);

  return v22;
}

void __139__NPKGizmoDatabase_transactionsForTransactionSourceIdentifier_withTransactionSource_withBackingData_startDate_endDate_orderedByDate_limit___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadInitialManifestLocked];
  if ([*(a1 + 32) database])
  {
    v2 = [*(a1 + 32) _transactionsForTransactionSourceIdentifierLocked:*(a1 + 40) withTransactionSource:*(a1 + 72) withBackingData:*(a1 + 80) startDate:*(a1 + 48) endDate:*(a1 + 56) orderByDate:*(a1 + 88) limit:*(a1 + 96)];
    v3 = *(*(a1 + 64) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (id)transactionWithIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  v17 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__NPKGizmoDatabase_transactionWithIdentifier___block_invoke;
  block[3] = &unk_279948130;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(dbQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __46__NPKGizmoDatabase_transactionWithIdentifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadInitialManifestLocked];
  if ([*(a1 + 32) database])
  {
    v2 = [*(a1 + 32) _transactionWithIdentifierLocked:*(a1 + 40)];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (id)transactionWithServiceIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  v17 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__NPKGizmoDatabase_transactionWithServiceIdentifier___block_invoke;
  block[3] = &unk_279948130;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(dbQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __53__NPKGizmoDatabase_transactionWithServiceIdentifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadInitialManifestLocked];
  if ([*(a1 + 32) database])
  {
    v2 = [*(a1 + 32) _transactionWithServiceIdentifierLocked:*(a1 + 40)];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (id)transactionSourceIdentifierForTransactionWithIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  v17 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__NPKGizmoDatabase_transactionSourceIdentifierForTransactionWithIdentifier___block_invoke;
  block[3] = &unk_279948130;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(dbQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __76__NPKGizmoDatabase_transactionSourceIdentifierForTransactionWithIdentifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadInitialManifestLocked];
  if ([*(a1 + 32) database])
  {
    v2 = [*(a1 + 32) _transactionSourceIdentifierForTransactionWithIdentifierLocked:*(a1 + 40)];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (id)transactionSourceIdentifierForTransactionWithServiceIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  v17 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__NPKGizmoDatabase_transactionSourceIdentifierForTransactionWithServiceIdentifier___block_invoke;
  block[3] = &unk_279948130;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(dbQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __83__NPKGizmoDatabase_transactionSourceIdentifierForTransactionWithServiceIdentifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadInitialManifestLocked];
  if ([*(a1 + 32) database])
  {
    v2 = [*(a1 + 32) _transactionSourceIdentifierForTransactionWithServiceIdentifierLocked:*(a1 + 40)];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (id)transactionSourceIdentifierForPassWithUniqueID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  v17 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__NPKGizmoDatabase_transactionSourceIdentifierForPassWithUniqueID___block_invoke;
  block[3] = &unk_279948130;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(dbQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __67__NPKGizmoDatabase_transactionSourceIdentifierForPassWithUniqueID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadInitialManifestLocked];
  if ([*(a1 + 32) database])
  {
    v2 = [*(a1 + 32) _transactionSourceIdentifierForPassUniqueIdentifierLocked:*(a1 + 40)];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (id)passUniqueIDForTransactionSourceIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  v17 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__NPKGizmoDatabase_passUniqueIDForTransactionSourceIdentifier___block_invoke;
  block[3] = &unk_279948130;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(dbQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __63__NPKGizmoDatabase_passUniqueIDForTransactionSourceIdentifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadInitialManifestLocked];
  if ([*(a1 + 32) database])
  {
    v2 = [*(a1 + 32) _passUniqueIdentifierForTransactionSourceIdentifierLocked:*(a1 + 40)];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (id)transitAppletStateForPassWithUniqueID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  v17 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__NPKGizmoDatabase_transitAppletStateForPassWithUniqueID___block_invoke;
  block[3] = &unk_279948130;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(dbQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __58__NPKGizmoDatabase_transitAppletStateForPassWithUniqueID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadInitialManifestLocked];
  if ([*(a1 + 32) database])
  {
    v2 = [*(a1 + 32) _transitAppletStateForPassWithUniqueIDLocked:*(a1 + 40)];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (void)setTransitAppletState:(id)a3 forPassWithUniqueID:(id)a4
{
  v6 = a3;
  v7 = a4;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__NPKGizmoDatabase_setTransitAppletState_forPassWithUniqueID___block_invoke;
  block[3] = &unk_279945880;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(dbQueue, block);
}

uint64_t __62__NPKGizmoDatabase_setTransitAppletState_forPassWithUniqueID___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (![*(a1 + 32) database])
  {
    v2 = pk_General_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

    if (v3)
    {
      v4 = pk_General_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v7 = 136446722;
        v8 = "[NPKGizmoDatabase setTransitAppletState:forPassWithUniqueID:]_block_invoke";
        v9 = 2082;
        v10 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v11 = 2048;
        v12 = 1963;
        _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", &v7, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  [*(a1 + 32) _loadInitialManifestLocked];
  result = [*(a1 + 32) _setTransitAppletStateLocked:*(a1 + 40) forPassWithUniqueID:*(a1 + 48)];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)paymentBalancesForPassWithUniqueID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  v17 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__NPKGizmoDatabase_paymentBalancesForPassWithUniqueID___block_invoke;
  block[3] = &unk_279948130;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(dbQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __55__NPKGizmoDatabase_paymentBalancesForPassWithUniqueID___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _loadInitialManifestLocked];
  v2 = [*(a1 + 32) database];
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v2)
  {
    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [*(a1 + 32) database];
        v11 = 134217984;
        v12 = v6;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Will read payment balances from database: %p", &v11, 0xCu);
      }
    }

    v7 = [*(a1 + 32) _paymentBalancesForPassWithUniqueIDLocked:*(a1 + 40)];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    if (!v4)
    {
      goto LABEL_8;
    }

    v9 = pk_General_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Database is nil, returning nil", &v11, 2u);
    }
  }

LABEL_8:
  v10 = *MEMORY[0x277D85DE8];
}

- (void)setPaymentBalances:(id)a3 forPassWithUniqueID:(id)a4
{
  v6 = a3;
  v7 = a4;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__NPKGizmoDatabase_setPaymentBalances_forPassWithUniqueID___block_invoke;
  block[3] = &unk_279945880;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(dbQueue, block);
}

uint64_t __59__NPKGizmoDatabase_setPaymentBalances_forPassWithUniqueID___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (![*(a1 + 32) database])
  {
    v2 = pk_General_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

    if (v3)
    {
      v4 = pk_General_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v7 = 136446722;
        v8 = "[NPKGizmoDatabase setPaymentBalances:forPassWithUniqueID:]_block_invoke";
        v9 = 2082;
        v10 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v11 = 2048;
        v12 = 1990;
        _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", &v7, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  [*(a1 + 32) _loadInitialManifestLocked];
  result = [*(a1 + 32) _setPaymentBalancesLocked:*(a1 + 40) forPassWithUniqueID:*(a1 + 48)];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)subcredentialsForPassWithUniqueID:(id)a3 paymentApplicationIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__13;
  v21 = __Block_byref_object_dispose__13;
  v22 = 0;
  dbQueue = self->_dbQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__NPKGizmoDatabase_subcredentialsForPassWithUniqueID_paymentApplicationIdentifier___block_invoke;
  v13[3] = &unk_279948158;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(dbQueue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __83__NPKGizmoDatabase_subcredentialsForPassWithUniqueID_paymentApplicationIdentifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadInitialManifestLocked];
  if ([*(a1 + 32) database])
  {
    v2 = [*(a1 + 32) _subcredentialsForPassWithUniqueIDLocked:*(a1 + 40) paymentApplicationIdentifier:*(a1 + 48)];
    v3 = *(*(a1 + 56) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (void)setSubcredentials:(id)a3 forPassWithUniqueID:(id)a4 paymentApplicationIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dbQueue = self->_dbQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __87__NPKGizmoDatabase_setSubcredentials_forPassWithUniqueID_paymentApplicationIdentifier___block_invoke;
  v15[3] = &unk_279946260;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(dbQueue, v15);
}

void __87__NPKGizmoDatabase_setSubcredentials_forPassWithUniqueID_paymentApplicationIdentifier___block_invoke(id *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (![a1[4] database])
  {
    v2 = pk_General_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

    if (v3)
    {
      v4 = pk_General_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v15 = "[NPKGizmoDatabase setSubcredentials:forPassWithUniqueID:paymentApplicationIdentifier:]_block_invoke";
        v16 = 2082;
        v17 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v18 = 2048;
        v19 = 2018;
        _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", buf, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  [a1[4] _loadInitialManifestLocked];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __87__NPKGizmoDatabase_setSubcredentials_forPassWithUniqueID_paymentApplicationIdentifier___block_invoke_470;
  v11[3] = &unk_279948180;
  v10 = *(a1 + 2);
  v5 = *(&v10 + 1);
  v6 = a1[6];
  v7 = a1[7];
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v12 = v10;
  v13 = v8;
  [v10 _performTransactionWithBlock:v11];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setCurrentEphemeralTransactionIdentifier:(id)a3 forTransactionSourceIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__NPKGizmoDatabase_setCurrentEphemeralTransactionIdentifier_forTransactionSourceIdentifier___block_invoke;
  block[3] = &unk_279945880;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dbQueue, block);
}

- (id)currentEphemeralTransactionIdentifierForTransactionSourceIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  v17 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__NPKGizmoDatabase_currentEphemeralTransactionIdentifierForTransactionSourceIdentifier___block_invoke;
  block[3] = &unk_279946940;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(dbQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __88__NPKGizmoDatabase_currentEphemeralTransactionIdentifierForTransactionSourceIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _currentEphemeralTransactionIdentifierForTransactionSourceIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setLastAddValueAmount:(id)a3 forPassWithUniqueID:(id)a4
{
  v6 = a3;
  v7 = a4;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__NPKGizmoDatabase_setLastAddValueAmount_forPassWithUniqueID___block_invoke;
  block[3] = &unk_279945880;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dbQueue, block);
}

- (id)lastAddValueAmountForPassWithUniqueID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  v17 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__NPKGizmoDatabase_lastAddValueAmountForPassWithUniqueID___block_invoke;
  block[3] = &unk_279946940;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(dbQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __58__NPKGizmoDatabase_lastAddValueAmountForPassWithUniqueID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _lastAddValueAmountForPassWithUniqueIDLocked:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setPendingAddValueDate:(id)a3 forPassWithUniqueID:(id)a4
{
  v6 = a3;
  v7 = a4;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__NPKGizmoDatabase_setPendingAddValueDate_forPassWithUniqueID___block_invoke;
  block[3] = &unk_279945880;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dbQueue, block);
}

- (id)pendingAddValueDateForPassWithUniqueID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  v17 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__NPKGizmoDatabase_pendingAddValueDateForPassWithUniqueID___block_invoke;
  block[3] = &unk_279946940;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(dbQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __59__NPKGizmoDatabase_pendingAddValueDateForPassWithUniqueID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _pendingAddValueDateForPassWithUniqueIDLocked:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)restoreBlockForVolatilePassData
{
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Fetching Volatile Pass Data from DB", buf, 2u);
    }
  }

  v6 = [MEMORY[0x277CBEB38] dictionary];
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v9 = [MEMORY[0x277CBEB38] dictionary];
  v10 = [MEMORY[0x277CBEB38] dictionary];
  v11 = [(NPKGizmoDatabase *)self passDescriptions];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __51__NPKGizmoDatabase_restoreBlockForVolatilePassData__block_invoke;
  v31[3] = &unk_2799481A8;
  v12 = v9;
  v32 = v12;
  v33 = self;
  v13 = v6;
  v34 = v13;
  v14 = v7;
  v35 = v14;
  v15 = v8;
  v36 = v15;
  v16 = v10;
  v37 = v16;
  [v11 enumerateObjectsUsingBlock:v31];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__NPKGizmoDatabase_restoreBlockForVolatilePassData__block_invoke_2;
  aBlock[3] = &unk_279948220;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v17 = v16;
  v18 = v15;
  v19 = v14;
  v20 = v13;
  v21 = v12;
  v22 = _Block_copy(aBlock);
  v23 = _Block_copy(v22);

  return v23;
}

void __51__NPKGizmoDatabase_restoreBlockForVolatilePassData__block_invoke(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = *(a1 + 32);
  v4 = [v17 uniqueID];
  [v3 setObject:v17 forKey:v4];

  v5 = *(a1 + 40);
  v6 = [v17 uniqueID];
  v7 = [v5 transactionSourceIdentifierForPassWithUniqueID:v6];

  if (v7)
  {
    v8 = *(a1 + 48);
    v9 = [v17 uniqueID];
    [v8 setObject:v7 forKey:v9];

    v10 = [*(a1 + 40) transactionsForTransactionSourceIdentifier:v7 withTransactionSource:0 withBackingData:0 startDate:0 endDate:0 orderedByDate:1 limit:*MEMORY[0x277D38648]];
    if (v10)
    {
      [*(a1 + 56) setObject:v10 forKey:v7];
    }

    v11 = [*(a1 + 40) currentEphemeralTransactionIdentifierForTransactionSourceIdentifier:v7];
    if (v11)
    {
      [*(a1 + 64) setObject:v11 forKey:v7];
    }
  }

  v12 = *(a1 + 40);
  v13 = [v17 uniqueID];
  v14 = [v12 paymentBalancesForPassWithUniqueID:v13];

  if (v14)
  {
    v15 = *(a1 + 72);
    v16 = [v17 uniqueID];
    [v15 setObject:v14 forKey:v16];
  }
}

void __51__NPKGizmoDatabase_restoreBlockForVolatilePassData__block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Restoring Volatile Pass Data on DB", buf, 2u);
    }
  }

  v7 = [v3 passDescriptions];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __51__NPKGizmoDatabase_restoreBlockForVolatilePassData__block_invoke_472;
  v15[3] = &unk_2799481A8;
  v16 = a1[4];
  v17 = v3;
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[8];
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  v18 = v13;
  v19 = v12;
  v14 = v3;
  [v7 enumerateObjectsUsingBlock:v15];
}

void __51__NPKGizmoDatabase_restoreBlockForVolatilePassData__block_invoke_472(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 uniqueID];
  v5 = [a1[4] objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 transitAppletState];

    if (v7)
    {
      v8 = a1[5];
      v9 = [v6 transitAppletState];
      [v8 setTransitAppletState:v9 forPassWithUniqueID:v4];
    }

    v10 = [v6 lastAddValueAmount];

    if (v10)
    {
      v11 = a1[5];
      v12 = [v6 lastAddValueAmount];
      [v11 setLastAddValueAmount:v12 forPassWithUniqueID:v4];
    }

    v13 = [v6 pendingAddValueDate];

    if (v13)
    {
      v14 = a1[5];
      v15 = [v6 pendingAddValueDate];
      [v14 setPendingAddValueDate:v15 forPassWithUniqueID:v4];
    }

    v16 = [v6 preferredPaymentApplication];

    if (v16)
    {
      v17 = [v6 preferredPaymentApplication];
      v18 = [v17 applicationIdentifier];

      v19 = [v3 devicePaymentApplications];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __51__NPKGizmoDatabase_restoreBlockForVolatilePassData__block_invoke_2_473;
      v29[3] = &unk_2799481D0;
      v30 = v18;
      v31 = v4;
      v32 = a1[5];
      v20 = v18;
      [v19 enumerateObjectsUsingBlock:v29];
    }

    v21 = [a1[6] objectForKey:v4];
    if (v21)
    {
      v22 = [a1[7] objectForKey:v21];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __51__NPKGizmoDatabase_restoreBlockForVolatilePassData__block_invoke_3;
      v26[3] = &unk_2799481F8;
      v27 = a1[5];
      v23 = v21;
      v28 = v23;
      [v22 enumerateObjectsUsingBlock:v26];
      v24 = [a1[8] objectForKey:v23];
      if (v24)
      {
        [a1[5] setCurrentEphemeralTransactionIdentifier:v24 forTransactionSourceIdentifier:v23];
      }
    }

    v25 = [a1[9] objectForKey:v4];
    if (v25)
    {
      [a1[5] setPaymentBalances:v25 forPassWithUniqueID:v4];
    }
  }
}

void __51__NPKGizmoDatabase_restoreBlockForVolatilePassData__block_invoke_2_473(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v5 = [v10 applicationIdentifier];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    v7 = +[NPKGizmoDatabase sharedDatabase];
    v8 = [v7 passForUniqueID:*(a1 + 40)];
    v9 = [v8 paymentPass];

    if (v9)
    {
      [*(a1 + 48) setPreferredPaymentApplication:v10 forPaymentPass:v9];
    }

    *a3 = 1;
  }
}

- (void)_notifyDatabaseChangedWithNoop:(BOOL)a3 firstUnlock:(BOOL)a4
{
  sendingLocalNotifyDatabaseChanged = self->_sendingLocalNotifyDatabaseChanged;
  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (sendingLocalNotifyDatabaseChanged)
  {
    if (v9)
    {
      v10 = pk_General_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKGizmoDatabase already sending DB change, so coalescing", buf, 2u);
      }
    }

    self->_needsMoreLocalNotifyDatabaseChanged = 1;
  }

  else
  {
    if (v9)
    {
      v11 = pk_General_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKGizmoDatabase alerting of DB change", buf, 2u);
      }
    }

    self->_sendingLocalNotifyDatabaseChanged = 1;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__NPKGizmoDatabase__notifyDatabaseChangedWithNoop_firstUnlock___block_invoke;
    v12[3] = &unk_279948248;
    v13 = a3;
    v14 = a4;
    v12[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], v12);
  }
}

void __63__NPKGizmoDatabase__notifyDatabaseChangedWithNoop_firstUnlock___block_invoke(uint64_t a1)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = NPKGizmoDatabaseChangedWasNoOpKeyName;
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v12[0] = v2;
  v11[1] = NPKGizmoDatabaseChangedWasFirstUnlockKeyName;
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 41)];
  v12[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:NPKGizmoDatabaseChangedNotificationName object:*(a1 + 32) userInfo:v4];

  v6 = *(a1 + 32);
  v7 = *(v6 + 344);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__NPKGizmoDatabase__notifyDatabaseChangedWithNoop_firstUnlock___block_invoke_2;
  block[3] = &unk_279944FC0;
  block[4] = v6;
  v10 = *(a1 + 40);
  dispatch_sync(v7, block);

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __63__NPKGizmoDatabase__notifyDatabaseChangedWithNoop_firstUnlock___block_invoke_2(uint64_t result)
{
  *(*(result + 32) + 388) = 0;
  if (*(*(result + 32) + 389) == 1)
  {
    v8 = v1;
    v9 = v2;
    v3 = result;
    v4 = pk_General_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = pk_General_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Finished alerting of DB change, but a coalesced change was detected...rebroadcasting", v7, 2u);
      }
    }

    *(*(v3 + 32) + 389) = 0;
    return [*(v3 + 32) _notifyDatabaseChangedWithNoop:*(v3 + 40)];
  }

  return result;
}

- (void)_notifyDatabaseChangedExternally
{
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Alerting external clients of DB change...", v7, 2u);
    }
  }

  ++self->_externallyChangedBroadcasts;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"_NPKGizmoDatabaseExternallyChanged", 0, 0, 1u);
}

- (BOOL)passDBIsAvailable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dbQueue = self->_dbQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__NPKGizmoDatabase_passDBIsAvailable__block_invoke;
  v5[3] = &unk_279944FE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dbQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __37__NPKGizmoDatabase_passDBIsAvailable__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _passDBIsAvailableLocked];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unint64_t)numberOfPasses
{
  v2 = [(NPKGizmoDatabase *)self manifestHashes];
  v3 = [v2 count];

  return v3;
}

- (void)_savePassLocked:(id)a3 locallyAdded:(BOOL)a4 wasUpdate:(BOOL *)a5
{
  v68 = *MEMORY[0x277D85DE8];
  v7 = a3;
  context = objc_autoreleasePoolPush();
  v8 = [v7 passTypeIdentifier];
  v44 = [v8 copy];

  v50 = v7;
  v9 = [v7 copy];
  v10 = [v9 uniqueID];
  v11 = [(NPKGizmoDatabase *)self _passForUniqueIDLocked:v10 includeImageSets:0];

  v12 = [v11 paymentPass];
  v42 = NPKPassDescriptionExpressTypesMaskWithPass(v9);
  if (v11)
  {
    manifest = self->_manifest;
    v14 = [v9 uniqueID];
    v15 = [(NSMutableDictionary *)manifest objectForKey:v14];
    v41 = [v15 remoteManifestHashes];
  }

  else
  {
    v41 = 0;
  }

  v48 = v12;
  if (v12)
  {
    v65 = 0;
    v16 = [(NPKGizmoDatabase *)self _getPreferredPaymentApplicationForPaymentPass:v12 aid:&v65];
    v40 = v65;
    v17 = [v9 uniqueID];
    LOBYTE(v12) = [(NPKGizmoDatabase *)self _getDeletePendingForUniqueID:v17];

    v18 = [v9 uniqueID];
    v39 = [(NPKGizmoDatabase *)self _transitAppletStateForPassWithUniqueIDLocked:v18];

    v19 = [v9 uniqueID];
    v37 = [(NPKGizmoDatabase *)self _lastAddValueAmountForPassWithUniqueIDLocked:v19];

    v20 = [v9 uniqueID];
    v21 = [(NPKGizmoDatabase *)self _pendingAddValueDateForPassWithUniqueIDLocked:v20];

    v22 = [v9 uniqueID];
    v23 = [(NPKGizmoDatabase *)self _paymentBalancesForPassWithUniqueIDLocked:v22];

    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v21 = 0;
  v23 = 0;
  v37 = 0;
  v39 = 0;
  v40 = 0;
  if (a5)
  {
LABEL_6:
    *a5 = v11 != 0;
  }

LABEL_7:
  v24 = [v11 diff:{v9, v37}];
  v25 = pk_General_log();
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

  if (v26)
  {
    v27 = pk_General_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v67 = v24;
      _os_log_impl(&dword_25B300000, v27, OS_LOG_TYPE_DEFAULT, "Notice: Saving diff %@", buf, 0xCu);
    }
  }

  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __59__NPKGizmoDatabase__savePassLocked_locallyAdded_wasUpdate___block_invoke;
  v51[3] = &unk_279948270;
  v51[4] = self;
  v52 = v9;
  v53 = v11;
  v54 = v24;
  v63 = v12;
  v55 = v40;
  v56 = v39;
  v57 = v38;
  v58 = v21;
  v64 = a4;
  v59 = v41;
  v60 = v23;
  v61 = v44;
  v62 = v42;
  v47 = v44;
  v43 = v23;
  v28 = v41;
  v45 = v21;
  v29 = v38;
  v30 = v39;
  v31 = v40;
  v32 = v24;
  v33 = v11;
  v34 = v9;
  [(NPKGizmoDatabase *)self _performTransactionWithBlock:v51];
  v35 = [v34 uniqueID];
  [(NPKGizmoDatabase *)self _createTransactionSourceIdentifierIfNecessaryForPassWithUniqueIDLocked:v35];

  objc_autoreleasePoolPop(context);
  v36 = *MEMORY[0x277D85DE8];
}

uint64_t __59__NPKGizmoDatabase__savePassLocked_locallyAdded_wasUpdate___block_invoke(uint64_t a1)
{
  v249 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) deleteStatement];
  v3 = [*(a1 + 40) uniqueID];
  sqlite3_bind_text(v2, 1, [v3 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

  if ((sqlite3_step(v2) & 0xFFFFFFFE) != 0x64)
  {
    v4 = pk_General_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (v5)
    {
      v6 = pk_General_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = sqlite3_sql(v2);
        v8 = sqlite3_errmsg(*(*(a1 + 32) + 8));
        *buf = 136447234;
        v242 = "[NPKGizmoDatabase _savePassLocked:locallyAdded:wasUpdate:]_block_invoke";
        v243 = 2082;
        v244 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v245 = 2048;
        v246 = 2290;
        v247 = 2080;
        *v248 = v7;
        *&v248[8] = 2080;
        *&v248[10] = v8;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Delete failed: %s; %s)", buf, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_clear_bindings(v2);
  sqlite3_reset(v2);
  v9 = [*(a1 + 32) insertStatement];
  v10 = [*(a1 + 40) uniqueID];
  v11 = v10;
  sqlite3_bind_text(v9, 1, [v10 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

  v12 = [*(a1 + 40) passTypeIdentifier];
  v216 = [v12 copy];

  v13 = v216;
  v224 = [v216 UTF8String];
  sqlite3_bind_text(v9, 2, v224, -1, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_int(v9, 3, [*(a1 + 40) style]);
  v221 = [*(a1 + 40) npkCompleteHash];
  v14 = v221;
  sqlite3_bind_blob(v9, 4, [v221 bytes], objc_msgSend(v221, "length"), 0xFFFFFFFFFFFFFFFFLL);
  v15 = [*(a1 + 48) ingestedDate];
  if (!v15)
  {
    v15 = [MEMORY[0x277CBEAA8] date];
  }

  v211 = v15;
  [*(a1 + 40) setIngestedDate:?];
  v222 = [*(a1 + 40) copy];
  v16 = objc_alloc(MEMORY[0x277D37F80]);
  v215 = [v16 initWithDictionary:MEMORY[0x277CBEC10] bundle:0];
  [v215 setMissingImageSetsFromObject:v222];
  [v222 flushLoadedImageSets];
  v223 = NPKSecureArchiveObject(v222);
  v17 = v223;
  sqlite3_bind_blob(v9, 5, [v223 bytes], objc_msgSend(v223, "length"), 0xFFFFFFFFFFFFFFFFLL);
  v18 = *MEMORY[0x277D38650];
  if (os_variant_has_internal_ui())
  {
    v19 = *(a1 + 48);
    v20 = objc_opt_class();
    v21 = NPKSecureUnarchiveObject(v223, v20);
    v22 = v21;
    if (v21)
    {
      v23 = [v21 passTypeIdentifier];
      v24 = [v23 length] == 0;

      if (!v24)
      {
        goto LABEL_19;
      }

      v25 = pk_General_log();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

      if (!v26)
      {
        goto LABEL_19;
      }

      v27 = pk_General_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [*(a1 + 40) uniqueID];
        v29 = [v222 passTypeIdentifier];
        v30 = NSStringFromBOOL();
        *buf = 136316162;
        v242 = "[NPKGizmoDatabase _savePassLocked:locallyAdded:wasUpdate:]_block_invoke";
        v243 = 2112;
        v244 = v28;
        v245 = 2112;
        v246 = v216;
        v247 = 2112;
        *v248 = v29;
        *&v248[8] = 2112;
        *&v248[10] = v30;
        _os_log_impl(&dword_25B300000, v27, OS_LOG_TYPE_DEFAULT, "Warning: %s encoded_pass Encoding of pass with uniqueID %@ is missing the type identifier. Type identifier in stmt: %@. Type identifier from PKPass the archive was created from: %@ isUpdate?: %@", buf, 0x34u);
      }
    }

    else
    {
      v31 = pk_General_log();
      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);

      if (!v32)
      {
LABEL_19:

        goto LABEL_20;
      }

      v27 = pk_General_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [*(a1 + 40) uniqueID];
        v34 = NSStringFromBOOL();
        *buf = 136315650;
        v242 = "[NPKGizmoDatabase _savePassLocked:locallyAdded:wasUpdate:]_block_invoke";
        v243 = 2112;
        v244 = v33;
        v245 = 2112;
        v246 = v34;
        _os_log_impl(&dword_25B300000, v27, OS_LOG_TYPE_DEFAULT, "Warning: %s encoded_pass There was a problem unarchiving the pass archive for pass with uniqueID %@. isUpdate?: %@", buf, 0x20u);
      }
    }

    goto LABEL_19;
  }

LABEL_20:
  if (v215)
  {
    v35 = NPKSecureArchiveObject(v215);
    v36 = v35;
    sqlite3_bind_blob(v9, 6, [v35 bytes], objc_msgSend(v35, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v9, 6);
  }

  v37 = *(a1 + 56);
  if (v37)
  {
    v38 = NPKSecureArchiveObject(v37);
    v39 = v38;
    sqlite3_bind_blob(v9, 7, [v38 bytes], objc_msgSend(v38, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  v40 = [*(a1 + 40) logoText];

  if (v40)
  {
    v41 = [*(a1 + 40) logoText];
    v42 = v41;
    sqlite3_bind_text(v9, 8, [v41 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  v43 = [*(a1 + 40) logoImage];

  if (v43)
  {
    v44 = [*(a1 + 40) logoImage];
    v218 = NPKSecureArchiveObject(v44);

    v45 = v218;
    sqlite3_bind_blob(v9, 9, [v218 bytes], objc_msgSend(v218, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v218 = 0;
  }

  v46 = [*(a1 + 40) displayProfile];
  v47 = [v46 backgroundColor];

  if (v47)
  {
    v48 = [*(a1 + 40) displayProfile];
    v49 = [v48 backgroundColor];
    v50 = NPKSecureArchiveObject(v49);

    v51 = v50;
    sqlite3_bind_blob(v9, 10, [v50 bytes], objc_msgSend(v50, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  v52 = [*(a1 + 40) displayProfile];
  v53 = [v52 labelColor];

  if (v53)
  {
    v54 = [*(a1 + 40) displayProfile];
    v55 = [v54 labelColor];
    v56 = NPKSecureArchiveObject(v55);

    v57 = v56;
    sqlite3_bind_blob(v9, 11, [v56 bytes], objc_msgSend(v56, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  v58 = [*(a1 + 40) displayProfile];
  v59 = [v58 foregroundColor];

  if (v59)
  {
    v60 = [*(a1 + 40) displayProfile];
    v61 = [v60 foregroundColor];
    v62 = NPKSecureArchiveObject(v61);

    v63 = v62;
    sqlite3_bind_blob(v9, 12, [v62 bytes], objc_msgSend(v62, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  v64 = [*(a1 + 40) backgroundImage];

  if (!v64)
  {
    v217 = 0;
    goto LABEL_44;
  }

  if ([*(a1 + 40) style] != 2)
  {
    v69 = [*(a1 + 40) backgroundImage];
    if (v69)
    {
      goto LABEL_39;
    }

LABEL_42:
    v70 = 0;
    goto LABEL_43;
  }

  v65 = MEMORY[0x277D37F20];
  v66 = [*(a1 + 40) backgroundImage];
  [v66 size];
  v67 = [v65 constraintsWithFixedSize:?];

  v68 = [*(a1 + 40) backgroundImage];
  v69 = [v68 blurredImageWithRadius:27 constraints:v67];

  if (!v69)
  {
    goto LABEL_42;
  }

LABEL_39:
  v70 = NPKSecureArchiveObject(v69);
LABEL_43:
  v217 = v70;
  v71 = v70;
  sqlite3_bind_blob(v9, 13, [v217 bytes], objc_msgSend(v217, "length"), 0xFFFFFFFFFFFFFFFFLL);

LABEL_44:
  v72 = [*(a1 + 40) nfcPayload];

  if (v72)
  {
    v73 = [*(a1 + 40) nfcPayload];
    v74 = NPKSecureArchiveObject(v73);

    v75 = v74;
    sqlite3_bind_blob(v9, 14, [v74 bytes], objc_msgSend(v74, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  v76 = [*(a1 + 40) paymentPass];
  sqlite3_bind_int(v9, 15, [v76 isPrivateLabel]);

  v77 = [*(a1 + 40) paymentPass];
  sqlite3_bind_int(v9, 16, [v77 isCobranded]);

  v226 = [*(a1 + 40) paymentPass];
  v78 = [v226 devicePaymentApplications];

  if (v78)
  {
    v79 = [v226 devicePaymentApplications];
    v80 = NPKSecureArchiveObject(v79);

    v81 = v80;
    sqlite3_bind_blob(v9, 17, [v80 bytes], objc_msgSend(v80, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v9, 17);
  }

  v82 = [v226 devicePrimaryPaymentApplication];

  if (v82)
  {
    v83 = [v226 devicePrimaryPaymentApplication];
    v84 = NPKSecureArchiveObject(v83);

    v85 = v84;
    sqlite3_bind_blob(v9, 18, [v84 bytes], objc_msgSend(v84, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v9, 18);
  }

  v86 = [v226 devicePrimaryContactlessPaymentApplication];

  if (v86)
  {
    v87 = [v226 devicePrimaryContactlessPaymentApplication];
    v88 = NPKSecureArchiveObject(v87);

    v89 = v88;
    sqlite3_bind_blob(v9, 19, [v88 bytes], objc_msgSend(v88, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v9, 19);
  }

  v90 = [v226 devicePrimaryInAppPaymentApplication];

  if (v90)
  {
    v91 = [v226 devicePrimaryInAppPaymentApplication];
    v92 = NPKSecureArchiveObject(v91);

    v93 = v92;
    sqlite3_bind_blob(v9, 20, [v92 bytes], objc_msgSend(v92, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v9, 20);
  }

  v234 = 0;
  v235 = &v234;
  v236 = 0x3032000000;
  v237 = __Block_byref_object_copy__13;
  v238 = __Block_byref_object_dispose__13;
  v239 = 0;
  if (!v226)
  {
    goto LABEL_62;
  }

  if (!*(a1 + 64))
  {
    goto LABEL_62;
  }

  v94 = [v226 devicePaymentApplications];
  v231[0] = MEMORY[0x277D85DD0];
  v231[1] = 3221225472;
  v231[2] = __59__NPKGizmoDatabase__savePassLocked_locallyAdded_wasUpdate___block_invoke_477;
  v231[3] = &unk_279945580;
  v232 = *(a1 + 64);
  v233 = &v234;
  [v94 enumerateObjectsUsingBlock:v231];

  if (v235[5])
  {
    sqlite3_bind_text(v9, 21, [*(a1 + 64) UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    v95 = NPKSecureArchiveObject(v235[5]);
    v96 = v95;
    sqlite3_bind_blob(v9, 22, [v95 bytes], objc_msgSend(v95, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
LABEL_62:
    sqlite3_bind_null(v9, 21);
    sqlite3_bind_null(v9, 22);
  }

  v97 = [*(a1 + 40) ingestedDate];
  [v97 timeIntervalSinceReferenceDate];
  sqlite3_bind_int(v9, 23, v98);

  v99 = [*(a1 + 40) npkCompleteHash];
  v100 = v99;
  v101 = [v99 bytes];
  v102 = [*(a1 + 40) npkCompleteHash];
  sqlite3_bind_blob(v9, 24, v101, [v102 length], 0xFFFFFFFFFFFFFFFFLL);

  sqlite3_bind_int(v9, 25, *(a1 + 128));
  if (v226)
  {
    v103 = [v226 effectiveContactlessPaymentApplicationState];
    v213 = [v226 npkHasUserSelectableContactlessPaymentApplications];
  }

  else
  {
    v213 = 0;
    v103 = 0;
  }

  sqlite3_bind_int(v9, 26, v103);
  sqlite3_bind_int(v9, 27, v213);
  sqlite3_bind_int(v9, 28, [*(a1 + 40) hasStoredValue]);
  sqlite3_bind_int64(v9, 29, [*(a1 + 40) settings]);
  v104 = objc_alloc(MEMORY[0x277CBEB18]);
  v105 = *(a1 + 32);
  v106 = [v104 initWithCapacity:{objc_msgSend(objc_opt_class(), "latestWatchOSMajorVersion")}];
  for (i = 0; ; ++i)
  {
    v108 = *(a1 + 32);
    if (i >= [objc_opt_class() latestWatchOSMajorVersion])
    {
      break;
    }

    v109 = [*(a1 + 40) npkCompleteHashForWatchOSVersion:i + 1];
    [v106 setObject:v109 atIndexedSubscript:i];
  }

  v209 = [v106 copy];
  v220 = NPKSecureArchiveObject(v209);
  v110 = v220;
  sqlite3_bind_blob(v9, 30, [v220 bytes], objc_msgSend(v220, "length"), 0xFFFFFFFFFFFFFFFFLL);
  v111 = [v226 issuerCountryCode];
  v214 = v111;
  if (v111)
  {
    v112 = v111;
    sqlite3_bind_text(v9, 31, [v214 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v9, 31);
  }

  v113 = [*(a1 + 40) paymentPass];
  v114 = [v113 availableActions];

  if (v114)
  {
    v115 = [*(a1 + 40) paymentPass];
    v116 = [v115 availableActions];
    v117 = NPKSecureArchiveObject(v116);

    v118 = v117;
    sqlite3_bind_blob(v9, 32, [v117 bytes], objc_msgSend(v117, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v9, 32);
  }

  v119 = [*(a1 + 40) organizationName];

  if (v119)
  {
    v120 = [*(a1 + 40) organizationName];
    v121 = v120;
    sqlite3_bind_text(v9, 33, [v120 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v9, 33);
  }

  v122 = *(a1 + 72);
  if (v122)
  {
    v123 = NPKSecureArchiveObject(v122);
    v124 = v123;
    sqlite3_bind_blob(v9, 34, [v123 bytes], objc_msgSend(v123, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v9, 34);
  }

  v125 = [*(a1 + 40) frontFieldBuckets];

  if (v125)
  {
    v126 = [*(a1 + 40) frontFieldBuckets];
    v127 = NPKSecureArchiveObject(v126);

    v128 = v127;
    sqlite3_bind_blob(v9, 35, [v127 bytes], objc_msgSend(v127, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v9, 35);
  }

  v129 = [*(a1 + 40) backFieldBuckets];

  if (v129)
  {
    v130 = [*(a1 + 40) backFieldBuckets];
    v131 = NPKSecureArchiveObject(v130);

    v132 = v131;
    sqlite3_bind_blob(v9, 36, [v131 bytes], objc_msgSend(v131, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v9, 36);
  }

  v133 = *(a1 + 80);
  if (v133)
  {
    v134 = [v133 stringValue];
    v135 = v134;
    sqlite3_bind_text(v9, 37, [v134 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v9, 37);
  }

  v136 = [*(a1 + 40) localizedDescription];

  if (v136)
  {
    v137 = [*(a1 + 40) localizedDescription];
    v138 = v137;
    sqlite3_bind_text(v9, 38, [v137 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v9, 38);
  }

  v139 = *(a1 + 88);
  if (v139)
  {
    [v139 timeIntervalSinceReferenceDate];
    sqlite3_bind_int(v9, 39, v140);
  }

  else
  {
    sqlite3_bind_null(v9, 39);
  }

  sqlite3_bind_int64(v9, 40, *(a1 + 120));
  v141 = v106;
  if (*(a1 + 129) == 1)
  {
    v141 = *(a1 + 96);
  }

  v212 = v141;
  v219 = NPKSecureArchiveObject(v212);
  v142 = v219;
  sqlite3_bind_blob(v9, 41, [v219 bytes], objc_msgSend(v219, "length"), 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_int(v9, 42, [v226 isPeerPaymentPass]);
  if (*(a1 + 104))
  {
    v143 = pk_General_log();
    v144 = os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT);

    if (v144)
    {
      v145 = pk_General_log();
      if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
      {
        v146 = [*(a1 + 40) uniqueID];
        v147 = *(a1 + 104);
        *buf = 138412546;
        v242 = v146;
        v243 = 2112;
        v244 = v147;
        _os_log_impl(&dword_25B300000, v145, OS_LOG_TYPE_DEFAULT, "Notice: (PKPaymentBalance restore) restoring old balances for pass %@ %@", buf, 0x16u);
      }
    }

    v148 = NPKSecureArchiveObject(*(a1 + 104));
    v149 = v148;
    if (v148)
    {
      v150 = v148;
      sqlite3_bind_blob(v9, 43, [v149 bytes], objc_msgSend(v149, "length"), 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      v151 = pk_General_log();
      v152 = os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT);

      if (v152)
      {
        v153 = pk_General_log();
        if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
        {
          v154 = [*(a1 + 40) uniqueID];
          v155 = *(a1 + 104);
          *buf = 138412546;
          v242 = v154;
          v243 = 2112;
          v244 = v155;
          _os_log_impl(&dword_25B300000, v153, OS_LOG_TYPE_DEFAULT, "Notice: (PKPaymentBalance restore) archiving old balances for pass %@ %@ returned nil", buf, 0x16u);
        }
      }

      sqlite3_bind_null(v9, 43);
    }
  }

  else
  {
    sqlite3_bind_null(v9, 43);
  }

  v156 = sqlite3_step(v9);
  if ((v156 & 0xFFFFFFFE) != 0x64)
  {
    v157 = pk_General_log();
    v158 = os_log_type_enabled(v157, OS_LOG_TYPE_ERROR);

    if (v158)
    {
      v159 = pk_General_log();
      if (os_log_type_enabled(v159, OS_LOG_TYPE_ERROR))
      {
        v160 = *(a1 + 112);
        v161 = v160;
        v162 = [v160 UTF8String];
        *buf = 138413058;
        v242 = v160;
        v243 = 2080;
        v244 = v162;
        v245 = 2112;
        v246 = v216;
        v247 = 2080;
        *v248 = v224;
        _os_log_impl(&dword_25B300000, v159, OS_LOG_TYPE_ERROR, "Error: Insert failed. passTypeIdentifier for insert stmt. Values inputStr: %@, inputUTF8: %s, stmtStr: %@, stmtUTF8: %s", buf, 0x2Au);
      }
    }

    v163 = pk_General_log();
    v164 = os_log_type_enabled(v163, OS_LOG_TYPE_ERROR);

    if (v164)
    {
      v165 = pk_General_log();
      if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
      {
        v166 = sqlite3_errmsg(*(*(a1 + 32) + 8));
        v167 = sqlite3_sql(v9);
        *buf = 136447490;
        v242 = "[NPKGizmoDatabase _savePassLocked:locallyAdded:wasUpdate:]_block_invoke";
        v243 = 2082;
        v244 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v245 = 2048;
        v246 = 2561;
        v247 = 1024;
        *v248 = v156;
        *&v248[4] = 2080;
        *&v248[6] = v166;
        *&v248[14] = 2080;
        *&v248[16] = v167;
        _os_log_impl(&dword_25B300000, v165, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Insert failed with result: %d, error: %s, stmt: %s)", buf, 0x3Au);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_clear_bindings(v9);
  sqlite3_reset(v9);
  v225 = objc_alloc_init(NPKGizmoDatabaseManifestEntry);
  v168 = [*(a1 + 40) uniqueID];
  [(NPKGizmoDatabaseManifestEntry *)v225 setUniqueID:v168];

  [(NPKGizmoDatabaseManifestEntry *)v225 setLocalManifestHashes:v106];
  [(NPKGizmoDatabaseManifestEntry *)v225 setRemoteManifestHashes:v212];
  v169 = *(*(a1 + 32) + 360);
  v170 = [*(a1 + 40) uniqueID];
  [v169 setObject:v225 forKeyedSubscript:v170];

  v229 = 0u;
  v230 = 0u;
  v227 = 0u;
  v228 = 0u;
  v171 = *(*(a1 + 32) + 368);
  v172 = [v171 countByEnumeratingWithState:&v227 objects:v240 count:16];
  if (v172)
  {
    v173 = *v228;
LABEL_124:
    v174 = 0;
    while (1)
    {
      if (*v228 != v173)
      {
        objc_enumerationMutation(v171);
      }

      v175 = *(*(&v227 + 1) + 8 * v174);
      v176 = [v175 uniqueID];
      v177 = [*(a1 + 40) uniqueID];
      v178 = [v176 isEqualToString:v177];

      if (v178)
      {
        break;
      }

      if (v172 == ++v174)
      {
        v172 = [v171 countByEnumeratingWithState:&v227 objects:v240 count:16];
        if (v172)
        {
          goto LABEL_124;
        }

        goto LABEL_130;
      }
    }

    v179 = v175;

    if (v179)
    {
      goto LABEL_133;
    }
  }

  else
  {
LABEL_130:
  }

  v179 = objc_alloc_init(NPKPassDescription);
  v180 = [*(a1 + 40) uniqueID];
  [(NPKPassDescription *)v179 setUniqueID:v180];

  [*(*(a1 + 32) + 368) addObject:v179];
LABEL_133:
  v181 = [*(a1 + 40) npkCompleteHash];
  [(NPKPassDescription *)v179 setManifestHash:v181];

  v182 = [*(a1 + 40) passTypeIdentifier];
  [(NPKPassDescription *)v179 setPassTypeIdentifier:v182];

  -[NPKPassDescription setStyle:](v179, "setStyle:", [*(a1 + 40) style]);
  v183 = [*(a1 + 40) relevantDate];
  [(NPKPassDescription *)v179 setRelevantDate:v183];

  v184 = [*(a1 + 40) logoText];
  [(NPKPassDescription *)v179 setLogoText:v184];

  [(NPKPassDescription *)v179 setLogoImageEncoded:v218];
  v185 = [*(a1 + 40) displayProfile];
  v186 = [v185 backgroundColor];
  [(NPKPassDescription *)v179 setBackgroundColor:v186];

  v187 = [*(a1 + 40) displayProfile];
  v188 = [v187 labelColor];
  [(NPKPassDescription *)v179 setLabelColor:v188];

  v189 = [*(a1 + 40) displayProfile];
  v190 = [v189 foregroundColor];
  [(NPKPassDescription *)v179 setForegroundColor:v190];

  [(NPKPassDescription *)v179 setDeletePending:*(a1 + 128)];
  [(NPKPassDescription *)v179 setBackgroundImageEncoded:v217];
  v191 = [*(a1 + 40) nfcPayload];
  [(NPKPassDescription *)v179 setNfcPayload:v191];

  v192 = [*(a1 + 40) paymentPass];
  -[NPKPassDescription setPrivateLabel:](v179, "setPrivateLabel:", [v192 isPrivateLabel]);

  v193 = [*(a1 + 40) paymentPass];
  -[NPKPassDescription setCobranded:](v179, "setCobranded:", [v193 isCobranded]);

  v194 = [v226 devicePaymentApplications];
  [(NPKPassDescription *)v179 setDevicePaymentApplications:v194];

  v195 = [v226 devicePrimaryPaymentApplication];
  [(NPKPassDescription *)v179 setDevicePrimaryPaymentApplication:v195];

  v196 = [v226 devicePrimaryContactlessPaymentApplication];
  [(NPKPassDescription *)v179 setDevicePrimaryContactlessPaymentApplication:v196];

  v197 = [v226 devicePrimaryInAppPaymentApplication];
  [(NPKPassDescription *)v179 setDevicePrimaryInAppPaymentApplication:v197];

  -[NPKPassDescription setEffectivePaymentApplicationState:](v179, "setEffectivePaymentApplicationState:", [v226 effectiveContactlessPaymentApplicationState]);
  [(NPKPassDescription *)v179 setHasUserSelectableContactlessPaymentApplications:v213];
  [(NPKPassDescription *)v179 setPreferredPaymentApplication:v235[5]];
  v198 = [*(a1 + 40) ingestedDate];
  [(NPKPassDescription *)v179 setIngestionDate:v198];

  v199 = [*(a1 + 40) npkCompleteHash];
  [(NPKPassDescription *)v179 setCompleteHash:v199];

  -[NPKPassDescription setHasStoredValue:](v179, "setHasStoredValue:", [*(a1 + 40) hasStoredValue]);
  -[NPKPassDescription setSettings:](v179, "setSettings:", [*(a1 + 40) settings]);
  v200 = [v226 issuerCountryCode];
  [(NPKPassDescription *)v179 setIssuerCountryCode:v200];

  v201 = [*(a1 + 40) paymentPass];
  v202 = [v201 availableActions];
  [(NPKPassDescription *)v179 setAvailableActions:v202];

  v203 = [*(a1 + 40) organizationName];
  [(NPKPassDescription *)v179 setOrganizationName:v203];

  [(NPKPassDescription *)v179 setTransitAppletState:*(a1 + 72)];
  [(NPKPassDescription *)v179 setLastAddValueAmount:*(a1 + 80)];
  v204 = [*(a1 + 40) localizedDescription];
  [(NPKPassDescription *)v179 setLocalizedDescription:v204];

  [(NPKPassDescription *)v179 setPendingAddValueDate:*(a1 + 88)];
  [(NPKPassDescription *)v179 setExpressPassTypesMask:*(a1 + 120)];
  -[NPKPassDescription setHasAssociatedPeerPaymentAccount:](v179, "setHasAssociatedPeerPaymentAccount:", [v226 hasAssociatedPeerPaymentAccount]);
  v205 = *(a1 + 32);
  v206 = *(v205 + 376);
  *(v205 + 376) = 0;

  _Block_object_dispose(&v234, 8);
  v207 = *MEMORY[0x277D85DE8];
  return 1;
}

void __59__NPKGizmoDatabase__savePassLocked_locallyAdded_wasUpdate___block_invoke_477(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 applicationIdentifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (BOOL)_removePassWithUniqueIDLocked:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = self->_passDescriptions;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v33 objects:v49 count:16];
  if (v6)
  {
    v7 = *v34;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v33 + 1) + 8 * i);
        v10 = [v9 uniqueID];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v33 objects:v49 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if ([v6 deletePending])
  {
    v12 = 0;
  }

  else
  {
    v12 = [(NPKGizmoDatabase *)self _passForUniqueIDLocked:v4 includeImageSets:0];
  }

  v13 = [(NPKGizmoDatabase *)self deleteStatement];
  sqlite3_bind_text(v13, 1, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if ((sqlite3_step(v13) & 0xFFFFFFFE) != 0x64)
  {
    v14 = pk_General_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

    if (v15)
    {
      v16 = pk_General_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = sqlite3_sql(v13);
        v18 = sqlite3_errmsg(self->_database);
        *buf = 136447234;
        v40 = "[NPKGizmoDatabase _removePassWithUniqueIDLocked:]";
        v41 = 2082;
        v42 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v43 = 2048;
        v44 = 2656;
        v45 = 2080;
        v46 = v17;
        v47 = 2080;
        v48 = v18;
        _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Delete failed: %s; %s)", buf, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_clear_bindings(v13);
  sqlite3_reset(v13);
  v19 = [(NPKGizmoDatabase *)self _transactionSourceIdentifierForPassUniqueIdentifierLocked:v4];
  if (v19)
  {
    v20 = [(NPKGizmoDatabase *)self deleteTransactionsForTransactionSourceStatement];
    sqlite3_bind_text(v20, 1, [v19 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    if ((sqlite3_step(v20) & 0xFFFFFFFE) != 0x64)
    {
      v21 = pk_General_log();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

      if (v22)
      {
        v23 = pk_General_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = sqlite3_sql(v20);
          v25 = sqlite3_errmsg(self->_database);
          *buf = 136447234;
          v40 = "[NPKGizmoDatabase _removePassWithUniqueIDLocked:]";
          v41 = 2082;
          v42 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v43 = 2048;
          v44 = 2670;
          v45 = 2080;
          v46 = v24;
          v47 = 2080;
          v48 = v25;
          _os_log_impl(&dword_25B300000, v23, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Delete failed: %s; %s)", buf, 0x34u);
        }
      }

      _NPKAssertAbort();
    }

    sqlite3_clear_bindings(v20);
    sqlite3_reset(v20);
    [(NPKGizmoDatabase *)self setCurrentEphemeralTransactionIdentifier:0 forTransactionSourceIdentifier:v19];
    [(NPKGizmoDatabase *)self _removeTransactionSourceIdentifierForPassWithUniqueIDLocked:v4];
  }

  [(NPKGizmoDatabase *)self _removeSubcredentialsForPassWithUniqueIDLocked:v4];
  [(NSMutableDictionary *)self->_manifest removeObjectForKey:v4];
  libraryHashes = self->_libraryHashes;
  self->_libraryHashes = 0;

  [(NSMutableArray *)self->_passDescriptions removeObject:v6];
  if (v12)
  {
    v27 = [MEMORY[0x277CCAB98] defaultCenter];
    v28 = NPKGizmoDatabasePassRemovedNotificationName;
    v37 = NPKGizmoDatabasePassKeyName;
    v38 = v12;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    [v27 postNotificationName:v28 object:self userInfo:v29];
  }

  v30 = [v6 deletePending];

  v31 = *MEMORY[0x277D85DE8];
  return v30 ^ 1;
}

- (void)_saveTransactionLocked:(id)a3 forTransactionSourceIdentifier:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NPKGizmoDatabase *)self insertTransactionStatement];
  v9 = [v7 UTF8String];

  sqlite3_bind_text(v8, 1, v9, -1, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_text(v8, 2, "", -1, 0xFFFFFFFFFFFFFFFFLL);
  v10 = [v6 identifier];
  sqlite3_bind_text(v8, 3, [v10 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

  v11 = [v6 transactionDate];
  [v11 timeIntervalSinceReferenceDate];
  sqlite3_bind_int(v8, 4, v12);

  sqlite3_bind_int(v8, 5, [v6 transactionSource]);
  sqlite3_bind_int(v8, 6, [v6 transactionType]);
  sqlite3_bind_int(v8, 7, [v6 hasNotificationServiceData]);
  v13 = NPKSecureArchiveObject(v6);
  v14 = v13;
  if (v13)
  {
    sqlite3_bind_blob(v8, 8, [v13 bytes], objc_msgSend(v13, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v8, 8);
  }

  v15 = [v6 serviceIdentifier];
  sqlite3_bind_text(v8, 10, [v15 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

  if ((sqlite3_step(v8) & 0xFFFFFFFE) != 0x64)
  {
    v16 = pk_General_log();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

    if (v17)
    {
      v18 = pk_General_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = sqlite3_sql(v8);
        v20 = sqlite3_errmsg(self->_database);
        v22 = 136447234;
        v23 = "[NPKGizmoDatabase _saveTransactionLocked:forTransactionSourceIdentifier:]";
        v24 = 2082;
        v25 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v26 = 2048;
        v27 = 2725;
        v28 = 2080;
        v29 = v19;
        v30 = 2080;
        v31 = v20;
        _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Insert transaction failed: %s; %s)", &v22, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_clear_bindings(v8);
  sqlite3_reset(v8);

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_removeTransactionWithServiceIdentifierLocked:(id)a3 forTransactionSourceIdentifier:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(NPKGizmoDatabase *)self removeTransactionWithServiceIdentifierStatement];
  v9 = [v6 UTF8String];

  sqlite3_bind_text(v8, 1, v9, -1, 0xFFFFFFFFFFFFFFFFLL);
  v10 = [v7 UTF8String];

  sqlite3_bind_text(v8, 2, v10, -1, 0xFFFFFFFFFFFFFFFFLL);
  if ((sqlite3_step(v8) & 0xFFFFFFFE) != 0x64)
  {
    v11 = pk_General_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

    if (v12)
    {
      v13 = pk_General_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = sqlite3_sql(v8);
        v15 = sqlite3_errmsg(self->_database);
        v17 = 136447234;
        v18 = "[NPKGizmoDatabase _removeTransactionWithServiceIdentifierLocked:forTransactionSourceIdentifier:]";
        v19 = 2082;
        v20 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v21 = 2048;
        v22 = 2740;
        v23 = 2080;
        v24 = v14;
        v25 = 2080;
        v26 = v15;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Delete transaction failed: %s; %s)", &v17, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_clear_bindings(v8);
  sqlite3_reset(v8);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_removeTransactionWithIdentifier:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NPKGizmoDatabase *)self removeTransactionStatement];
  v6 = [v4 UTF8String];

  sqlite3_bind_text(v5, 1, v6, -1, 0xFFFFFFFFFFFFFFFFLL);
  if ((sqlite3_step(v5) & 0xFFFFFFFE) != 0x64)
  {
    v7 = pk_General_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v8)
    {
      v9 = pk_General_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = sqlite3_sql(v5);
        v11 = sqlite3_errmsg(self->_database);
        v13 = 136447234;
        v14 = "[NPKGizmoDatabase _removeTransactionWithIdentifier:]";
        v15 = 2082;
        v16 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v17 = 2048;
        v18 = 2755;
        v19 = 2080;
        v20 = v10;
        v21 = 2080;
        v22 = v11;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Delete transaction failed: %s; %s)", &v13, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_clear_bindings(v5);
  sqlite3_reset(v5);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_removeTransactionsForTransactionSource:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NPKGizmoDatabase *)self deleteTransactionsForTransactionSourceStatement];
  v6 = [v4 UTF8String];

  sqlite3_bind_text(v5, 1, v6, -1, 0xFFFFFFFFFFFFFFFFLL);
  if ((sqlite3_step(v5) & 0xFFFFFFFE) != 0x64)
  {
    v7 = pk_General_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v8)
    {
      v9 = pk_General_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = sqlite3_sql(v5);
        v11 = sqlite3_errmsg(self->_database);
        v13 = 136447234;
        v14 = "[NPKGizmoDatabase _removeTransactionsForTransactionSource:]";
        v15 = 2082;
        v16 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v17 = 2048;
        v18 = 2769;
        v19 = 2080;
        v20 = v10;
        v21 = 2080;
        v22 = v11;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Delete failed: %s; %s)", &v13, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_clear_bindings(v5);
  sqlite3_reset(v5);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_trimTransactionsForTransactionSourceIdentifierLocked:(id)a3 withPaymentCredentialType:(int64_t)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = PKMaxPaymentTransactionsForCredentialType();
  v7 = [(NPKGizmoDatabase *)self trimTransactionsForTransactionSourceStatement];
  sqlite3_bind_text(v7, 1, [v5 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  v8 = [v5 UTF8String];

  sqlite3_bind_text(v7, 2, v8, -1, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_int(v7, 3, v6);
  if ((sqlite3_step(v7) & 0xFFFFFFFE) != 0x64)
  {
    v9 = pk_General_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

    if (v10)
    {
      v11 = pk_General_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = sqlite3_sql(v7);
        v13 = sqlite3_errmsg(self->_database);
        v15 = 136447234;
        v16 = "[NPKGizmoDatabase _trimTransactionsForTransactionSourceIdentifierLocked:withPaymentCredentialType:]";
        v17 = 2082;
        v18 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v19 = 2048;
        v20 = 2787;
        v21 = 2080;
        v22 = v12;
        v23 = 2080;
        v24 = v13;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Trim transactions failed: %s; %s)", &v15, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_clear_bindings(v7);
  sqlite3_reset(v7);
  v14 = *MEMORY[0x277D85DE8];
}

- (id)_transactionsForTransactionSourceIdentifierLocked:(id)a3 withTransactionSource:(unint64_t)a4 withBackingData:(unint64_t)a5 startDate:(id)a6 endDate:(id)a7 orderByDate:(int64_t)a8 limit:(unint64_t)a9
{
  v15 = a3;
  v16 = a6;
  v17 = a7;
  v18 = [MEMORY[0x277CBEB18] array];
  v19 = [(NPKGizmoDatabase *)self selectTransactionsStatementWithTransactionSource:a4 orderByDate:a8 limit:a9];
  sqlite3_bind_text(v19, 1, [v15 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_int(v19, 2, a5 == 0);
  sqlite3_bind_int(v19, 3, a5 == 1);
  sqlite3_bind_int(v19, 4, a5 != 1);
  sqlite3_bind_int(v19, 5, 2);
  sqlite3_bind_int(v19, 6, a5 != 2);
  sqlite3_bind_int(v19, 7, 2);
  if (v16)
  {
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x277CBEAA8] distantPast];
    if (v17)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x277CBEAA8] distantFuture];
LABEL_3:
  [v16 timeIntervalSinceReferenceDate];
  sqlite3_bind_int(v19, 8, v20);
  [v17 timeIntervalSinceReferenceDate];
  sqlite3_bind_int(v19, 9, v21);
  if (a9)
  {
    sqlite3_bind_int(v19, 10, a9);
  }

  while (sqlite3_step(v19) == 100)
  {
    v22 = sqlite3_column_blob(v19, 0);
    v23 = sqlite3_column_bytes(v19, 0);
    v24 = objc_autoreleasePoolPush();
    v25 = [MEMORY[0x277CBEA90] dataWithBytes:v22 length:v23];
    v26 = objc_opt_class();
    v27 = NPKSecureUnarchiveObject(v25, v26);
    if (v27)
    {
      [v18 addObject:v27];
    }

    objc_autoreleasePoolPop(v24);
  }

  sqlite3_clear_bindings(v19);
  sqlite3_reset(v19);

  return v18;
}

- (id)_transactionWithIdentifierLocked:(id)a3
{
  v4 = a3;
  v5 = [(NPKGizmoDatabase *)self selectTransactionWithIdentifierStatement];
  sqlite3_bind_text(v5, 1, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(v5) == 100)
  {
    v6 = sqlite3_column_blob(v5, 0);
    v7 = sqlite3_column_bytes(v5, 0);
    v8 = objc_autoreleasePoolPush();
    v9 = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:v7];
    v10 = objc_opt_class();
    v11 = NPKSecureUnarchiveObject(v9, v10);

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v11 = 0;
  }

  sqlite3_clear_bindings(v5);
  sqlite3_reset(v5);

  return v11;
}

- (id)_transactionWithServiceIdentifierLocked:(id)a3
{
  v4 = a3;
  v5 = [(NPKGizmoDatabase *)self selectTransactionWithServiceIdentifierStatement];
  sqlite3_bind_text(v5, 1, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(v5) == 100)
  {
    v6 = sqlite3_column_blob(v5, 0);
    v7 = sqlite3_column_bytes(v5, 0);
    v8 = objc_autoreleasePoolPush();
    v9 = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:v7];
    v10 = objc_opt_class();
    v11 = NPKSecureUnarchiveObject(v9, v10);

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v11 = 0;
  }

  sqlite3_clear_bindings(v5);
  sqlite3_reset(v5);

  return v11;
}

- (id)_transactionSourceIdentifierForTransactionWithIdentifierLocked:(id)a3
{
  v4 = a3;
  v5 = [(NPKGizmoDatabase *)self selectTransactionSourceIdentifierForTransactionWithIdentifierStatement];
  v6 = [v4 UTF8String];

  sqlite3_bind_text(v5, 1, v6, -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(v5) == 100)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(v5, 0)}];
  }

  else
  {
    v7 = 0;
  }

  sqlite3_clear_bindings(v5);
  sqlite3_reset(v5);

  return v7;
}

- (void)_createTransactionSourceIdentifierIfNecessaryForPassWithUniqueIDLocked:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NPKGizmoDatabase *)self _transactionSourceIdentifierForPassUniqueIdentifierLocked:v4];

  if (!v5)
  {
    v6 = [MEMORY[0x277CCAD78] UUID];
    v7 = [v6 UUIDString];

    v8 = [(NPKGizmoDatabase *)self insertTransactionSourceIdentifierForPassStatement];
    sqlite3_bind_text(v8, 1, [v7 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    sqlite3_bind_int(v8, 2, 0);
    sqlite3_bind_text(v8, 3, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    if ((sqlite3_step(v8) & 0xFFFFFFFE) != 0x64)
    {
      v9 = pk_General_log();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

      if (v10)
      {
        v11 = pk_General_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = sqlite3_sql(v8);
          v13 = sqlite3_errmsg(self->_database);
          v15 = 136447234;
          v16 = "[NPKGizmoDatabase _createTransactionSourceIdentifierIfNecessaryForPassWithUniqueIDLocked:]";
          v17 = 2082;
          v18 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v19 = 2048;
          v20 = 2901;
          v21 = 2080;
          v22 = v12;
          v23 = 2080;
          v24 = v13;
          _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Insert transaction source identifier failed: %s; %s)", &v15, 0x34u);
        }
      }

      _NPKAssertAbort();
    }

    sqlite3_clear_bindings(v8);
    sqlite3_reset(v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_removeTransactionSourceIdentifierForPassWithUniqueIDLocked:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NPKGizmoDatabase *)self deleteTransactionSourceIdentifierForPassStatement];
  v6 = [v4 UTF8String];

  sqlite3_bind_text(v5, 1, v6, -1, 0xFFFFFFFFFFFFFFFFLL);
  if ((sqlite3_step(v5) & 0xFFFFFFFE) != 0x64)
  {
    v7 = pk_General_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v8)
    {
      v9 = pk_General_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = sqlite3_sql(v5);
        v11 = sqlite3_errmsg(self->_database);
        v13 = 136447234;
        v14 = "[NPKGizmoDatabase _removeTransactionSourceIdentifierForPassWithUniqueIDLocked:]";
        v15 = 2082;
        v16 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v17 = 2048;
        v18 = 2916;
        v19 = 2080;
        v20 = v10;
        v21 = 2080;
        v22 = v11;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Delete transaction source identifier failed: %s; %s)", &v13, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_clear_bindings(v5);
  sqlite3_reset(v5);
  v12 = *MEMORY[0x277D85DE8];
}

- (id)_transactionSourceIdentifierForTransactionWithServiceIdentifierLocked:(id)a3
{
  v4 = a3;
  v5 = [(NPKGizmoDatabase *)self selectTransactionSourceIdentifierForTransactionWithServiceIdentifierStatement];
  v6 = [v4 UTF8String];

  sqlite3_bind_text(v5, 1, v6, -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(v5) == 100)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(v5, 0)}];
  }

  else
  {
    v7 = 0;
  }

  sqlite3_clear_bindings(v5);
  sqlite3_reset(v5);

  return v7;
}

- (id)_transactionSourceIdentifierForPassUniqueIdentifierLocked:(id)a3
{
  v4 = a3;
  v5 = [(NPKGizmoDatabase *)self selectTransactionSourceIdentifierForPassUniqueIdentifierStatement];
  v6 = [v4 UTF8String];

  sqlite3_bind_text(v5, 1, v6, -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(v5) == 100)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(v5, 0)}];
  }

  else
  {
    v7 = 0;
  }

  sqlite3_clear_bindings(v5);
  sqlite3_reset(v5);

  return v7;
}

- (id)_passUniqueIdentifierForTransactionSourceIdentifierLocked:(id)a3
{
  v4 = a3;
  v5 = [(NPKGizmoDatabase *)self selectPassUniqueIdentifierForTransactionSourceIdentifierStatement];
  v6 = [v4 UTF8String];

  sqlite3_bind_text(v5, 1, v6, -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(v5) == 100)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(v5, 0)}];
  }

  else
  {
    v7 = 0;
  }

  sqlite3_clear_bindings(v5);
  sqlite3_reset(v5);

  return v7;
}

- (id)_transitAppletStateForPassWithUniqueIDLocked:(id)a3
{
  v4 = a3;
  v5 = [(NPKGizmoDatabase *)self selectTransitAppletStateForPassStatement];
  sqlite3_bind_text(v5, 1, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(v5) == 100)
  {
    v6 = sqlite3_column_blob(v5, 0);
    v7 = sqlite3_column_bytes(v5, 0);
    v8 = objc_autoreleasePoolPush();
    v9 = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:v7];
    if ([v9 length])
    {
      v10 = objc_opt_class();
      v11 = NPKSecureUnarchiveObject(v9, v10);
    }

    else
    {
      v11 = 0;
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v11 = 0;
  }

  sqlite3_clear_bindings(v5);
  sqlite3_reset(v5);

  return v11;
}

- (void)_setTransitAppletStateLocked:(id)a3 forPassWithUniqueID:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = pk_General_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v10 = pk_General_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v19 = "[NPKGizmoDatabase _setTransitAppletStateLocked:forPassWithUniqueID:]";
        v20 = 2082;
        v21 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v22 = 2048;
        v23 = 2988;
        v24 = 2080;
        v25 = "[NPKGizmoDatabase _setTransitAppletStateLocked:forPassWithUniqueID:]";
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: %s cannot take nil unique ID)", buf, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__NPKGizmoDatabase__setTransitAppletStateLocked_forPassWithUniqueID___block_invoke;
  block[3] = &unk_279945880;
  block[4] = self;
  v16 = v6;
  v17 = v7;
  v12 = v7;
  v13 = v6;
  dispatch_async(dbQueue, block);

  v14 = *MEMORY[0x277D85DE8];
}

void __69__NPKGizmoDatabase__setTransitAppletStateLocked_forPassWithUniqueID___block_invoke(id *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  [a1[4] _loadInitialManifestLocked];
  if (![a1[4] database])
  {
    v2 = pk_General_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

    if (v3)
    {
      v4 = pk_General_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v19 = "[NPKGizmoDatabase _setTransitAppletStateLocked:forPassWithUniqueID:]_block_invoke";
        v20 = 2082;
        v21 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v22 = 2048;
        v23 = 2991;
        _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", buf, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  v5 = [a1[4] updateTransitAppletStateForPassStatement];
  v6 = a1[5];
  if (v6)
  {
    v7 = NPKSecureArchiveObject(v6);
    sqlite3_bind_blob(v5, 1, [v7 bytes], objc_msgSend(v7, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v5, 1);
  }

  sqlite3_bind_text(v5, 2, [a1[6] UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(v5) != 101)
  {
    v8 = pk_General_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v10 = pk_General_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = sqlite3_sql(v5);
        v12 = sqlite3_errmsg(*(a1[4] + 1));
        *buf = 136447234;
        v19 = "[NPKGizmoDatabase _setTransitAppletStateLocked:forPassWithUniqueID:]_block_invoke";
        v20 = 2082;
        v21 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v22 = 2048;
        v23 = 3006;
        v24 = 2080;
        v25 = v11;
        v26 = 2080;
        v27 = v12;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Updating transit applet state failed: %s; %s)", buf, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_clear_bindings(v5);
  sqlite3_reset(v5);
  v13 = *(a1[4] + 46);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__NPKGizmoDatabase__setTransitAppletStateLocked_forPassWithUniqueID___block_invoke_480;
  v15[3] = &unk_279948298;
  v16 = a1[6];
  v17 = a1[5];
  [v13 enumerateObjectsUsingBlock:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __69__NPKGizmoDatabase__setTransitAppletStateLocked_forPassWithUniqueID___block_invoke_480(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 uniqueID];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    v9 = pk_General_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = pk_General_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 40);
        v14 = 138412546;
        v15 = v6;
        v16 = 2112;
        v17 = v12;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Updating description %@ with new transit applet state %@", &v14, 0x16u);
      }
    }

    [v6 setTransitAppletState:*(a1 + 40)];
    *a4 = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_setCurrentEphemeralTransactionIdentifier:(id)a3 forTransactionSourceIdentifier:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = pk_General_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v10 = pk_General_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v24 = 136446978;
        v25 = "[NPKGizmoDatabase _setCurrentEphemeralTransactionIdentifier:forTransactionSourceIdentifier:]";
        v26 = 2082;
        v27 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v28 = 2048;
        v29 = 3022;
        v30 = 2080;
        v31 = "[NPKGizmoDatabase _setCurrentEphemeralTransactionIdentifier:forTransactionSourceIdentifier:]";
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: %s cannot take nil transaction source identifier)", &v24, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  if (![(NPKGizmoDatabase *)self database])
  {
    v11 = pk_General_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

    if (v12)
    {
      v13 = pk_General_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v24 = 136446722;
        v25 = "[NPKGizmoDatabase _setCurrentEphemeralTransactionIdentifier:forTransactionSourceIdentifier:]";
        v26 = 2082;
        v27 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v28 = 2048;
        v29 = 3023;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", &v24, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  if (v6)
  {
    v14 = [(NPKGizmoDatabase *)self insertEphemeralTransactionStatement];
    sqlite3_bind_text(v14, 1, [v7 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    v15 = [v6 UTF8String];
    v16 = v14;
    v17 = 2;
  }

  else
  {
    v14 = [(NPKGizmoDatabase *)self deleteEphemeralTransactionByTransactionSourceIdentifierStatement];
    v15 = [v7 UTF8String];
    v16 = v14;
    v17 = 1;
  }

  sqlite3_bind_text(v16, v17, v15, -1, 0xFFFFFFFFFFFFFFFFLL);
  if ((sqlite3_step(v14) & 0xFFFFFFFE) != 0x64)
  {
    v18 = pk_General_log();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

    if (v19)
    {
      v20 = pk_General_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = sqlite3_sql(v14);
        v22 = sqlite3_errmsg(self->_database);
        v24 = 136447234;
        v25 = "[NPKGizmoDatabase _setCurrentEphemeralTransactionIdentifier:forTransactionSourceIdentifier:]";
        v26 = 2082;
        v27 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v28 = 2048;
        v29 = 3042;
        v30 = 2080;
        v31 = v21;
        v32 = 2080;
        v33 = v22;
        _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Delete ephemeral transaction failed: %s; %s)", &v24, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_clear_bindings(v14);
  sqlite3_reset(v14);

  v23 = *MEMORY[0x277D85DE8];
}

- (id)_currentEphemeralTransactionIdentifierForTransactionSourceIdentifier:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = pk_General_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v7 = pk_General_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v15 = 136446978;
        v16 = "[NPKGizmoDatabase _currentEphemeralTransactionIdentifierForTransactionSourceIdentifier:]";
        v17 = 2082;
        v18 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v19 = 2048;
        v20 = 3049;
        v21 = 2080;
        v22 = "[NPKGizmoDatabase _currentEphemeralTransactionIdentifierForTransactionSourceIdentifier:]";
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: %s cannot take nil transaction source identifier)", &v15, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  if (![(NPKGizmoDatabase *)self database])
  {
    v8 = pk_General_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v10 = pk_General_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v15 = 136446722;
        v16 = "[NPKGizmoDatabase _currentEphemeralTransactionIdentifierForTransactionSourceIdentifier:]";
        v17 = 2082;
        v18 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v19 = 2048;
        v20 = 3050;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", &v15, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  v11 = [(NPKGizmoDatabase *)self currentEphemeralTransactionIdentifierStatement];
  sqlite3_bind_text(v11, 1, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(v11) == 100)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(v11, 0)}];
  }

  else
  {
    v12 = 0;
  }

  sqlite3_clear_bindings(v11);
  sqlite3_reset(v11);

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_lastAddValueAmountForPassWithUniqueIDLocked:(id)a3
{
  v4 = a3;
  v5 = [(NPKGizmoDatabase *)self selectLastAddValueAmountForPassStatement];
  v6 = [v4 UTF8String];

  sqlite3_bind_text(v5, 1, v6, -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(v5) == 100 && (v7 = sqlite3_column_text(v5, 0)) != 0 && *v7)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
    v9 = [MEMORY[0x277CCA980] decimalNumberWithString:v8];
  }

  else
  {
    v9 = 0;
  }

  sqlite3_clear_bindings(v5);
  sqlite3_reset(v5);

  return v9;
}

- (void)_setLastAddValueAmountLocked:(id)a3 forPassWithUniqueID:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = pk_General_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v10 = pk_General_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v19 = "[NPKGizmoDatabase _setLastAddValueAmountLocked:forPassWithUniqueID:]";
        v20 = 2082;
        v21 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v22 = 2048;
        v23 = 3083;
        v24 = 2080;
        v25 = "[NPKGizmoDatabase _setLastAddValueAmountLocked:forPassWithUniqueID:]";
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: %s cannot take nil unique ID)", buf, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__NPKGizmoDatabase__setLastAddValueAmountLocked_forPassWithUniqueID___block_invoke;
  block[3] = &unk_279945880;
  block[4] = self;
  v16 = v6;
  v17 = v7;
  v12 = v7;
  v13 = v6;
  dispatch_async(dbQueue, block);

  v14 = *MEMORY[0x277D85DE8];
}

void __69__NPKGizmoDatabase__setLastAddValueAmountLocked_forPassWithUniqueID___block_invoke(id *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  [a1[4] _loadInitialManifestLocked];
  if (![a1[4] database])
  {
    v2 = pk_General_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

    if (v3)
    {
      v4 = pk_General_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v22 = "[NPKGizmoDatabase _setLastAddValueAmountLocked:forPassWithUniqueID:]_block_invoke";
        v23 = 2082;
        v24 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v25 = 2048;
        v26 = 3086;
        _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", buf, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  v5 = [a1[4] updateLastAddValueAmountForPassStatement];
  v6 = a1[5];
  if (v6)
  {
    v7 = [v6 stringValue];
    sqlite3_bind_text(v5, 1, [v7 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v5, 1);
  }

  sqlite3_bind_text(v5, 2, [a1[6] UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(v5) != 101)
  {
    v8 = pk_General_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v10 = pk_General_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = sqlite3_sql(v5);
        v12 = sqlite3_errmsg(*(a1[4] + 1));
        *buf = 136447234;
        v22 = "[NPKGizmoDatabase _setLastAddValueAmountLocked:forPassWithUniqueID:]_block_invoke";
        v23 = 2082;
        v24 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v25 = 2048;
        v26 = 3100;
        v27 = 2080;
        v28 = v11;
        v29 = 2080;
        v30 = v12;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Setting last add value amount failed: %s; %s)", buf, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_clear_bindings(v5);
  sqlite3_reset(v5);
  v13 = *(a1[4] + 46);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __69__NPKGizmoDatabase__setLastAddValueAmountLocked_forPassWithUniqueID___block_invoke_481;
  v18 = &unk_279948298;
  v19 = a1[6];
  v20 = a1[5];
  [v13 enumerateObjectsUsingBlock:&v15];
  [a1[4] _notifyDatabaseChangedExternally];
  [a1[4] _notifyDatabaseChangedWithNoop:0];

  v14 = *MEMORY[0x277D85DE8];
}

void __69__NPKGizmoDatabase__setLastAddValueAmountLocked_forPassWithUniqueID___block_invoke_481(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 uniqueID];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    v9 = pk_General_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = pk_General_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 40);
        v14 = 138412546;
        v15 = v6;
        v16 = 2112;
        v17 = v12;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Updating description %@ with new last add value amount %@", &v14, 0x16u);
      }
    }

    [v6 setLastAddValueAmount:*(a1 + 40)];
    *a4 = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_pendingAddValueDateForPassWithUniqueIDLocked:(id)a3
{
  v4 = a3;
  v5 = [(NPKGizmoDatabase *)self selectPendingAddValueDateForPassStatement];
  v6 = [v4 UTF8String];

  sqlite3_bind_text(v5, 1, v6, -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(v5) == 100 && (v7 = sqlite3_column_int(v5, 0)) != 0)
  {
    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v7];
  }

  else
  {
    v8 = 0;
  }

  sqlite3_clear_bindings(v5);
  sqlite3_reset(v5);

  return v8;
}

- (void)_setPendingAddValueDateLocked:(id)a3 forPassWithUniqueID:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = pk_General_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v10 = pk_General_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v19 = "[NPKGizmoDatabase _setPendingAddValueDateLocked:forPassWithUniqueID:]";
        v20 = 2082;
        v21 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v22 = 2048;
        v23 = 3135;
        v24 = 2080;
        v25 = "[NPKGizmoDatabase _setPendingAddValueDateLocked:forPassWithUniqueID:]";
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: %s cannot take nil unique ID)", buf, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__NPKGizmoDatabase__setPendingAddValueDateLocked_forPassWithUniqueID___block_invoke;
  block[3] = &unk_279945880;
  block[4] = self;
  v16 = v6;
  v17 = v7;
  v12 = v7;
  v13 = v6;
  dispatch_async(dbQueue, block);

  v14 = *MEMORY[0x277D85DE8];
}

void __70__NPKGizmoDatabase__setPendingAddValueDateLocked_forPassWithUniqueID___block_invoke(id *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  [a1[4] _loadInitialManifestLocked];
  if (![a1[4] database])
  {
    v2 = pk_General_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

    if (v3)
    {
      v4 = pk_General_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v22 = "[NPKGizmoDatabase _setPendingAddValueDateLocked:forPassWithUniqueID:]_block_invoke";
        v23 = 2082;
        v24 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v25 = 2048;
        v26 = 3138;
        _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", buf, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  v5 = [a1[4] updatePendingAddValueDateForPassStatement];
  v6 = a1[5];
  if (v6)
  {
    [v6 timeIntervalSinceReferenceDate];
    sqlite3_bind_int(v5, 1, v7);
  }

  else
  {
    sqlite3_bind_null(v5, 1);
  }

  sqlite3_bind_text(v5, 2, [a1[6] UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(v5) != 101)
  {
    v8 = pk_General_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v10 = pk_General_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = sqlite3_sql(v5);
        v12 = sqlite3_errmsg(*(a1[4] + 1));
        *buf = 136447234;
        v22 = "[NPKGizmoDatabase _setPendingAddValueDateLocked:forPassWithUniqueID:]_block_invoke";
        v23 = 2082;
        v24 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v25 = 2048;
        v26 = 3152;
        v27 = 2080;
        v28 = v11;
        v29 = 2080;
        v30 = v12;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Setting pending add value date failed: %s; %s)", buf, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_clear_bindings(v5);
  sqlite3_reset(v5);
  v13 = *(a1[4] + 46);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __70__NPKGizmoDatabase__setPendingAddValueDateLocked_forPassWithUniqueID___block_invoke_482;
  v18 = &unk_279948298;
  v19 = a1[6];
  v20 = a1[5];
  [v13 enumerateObjectsUsingBlock:&v15];
  [a1[4] _notifyDatabaseChangedExternally];
  [a1[4] _notifyDatabaseChangedWithNoop:0];

  v14 = *MEMORY[0x277D85DE8];
}

void __70__NPKGizmoDatabase__setPendingAddValueDateLocked_forPassWithUniqueID___block_invoke_482(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 uniqueID];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    v9 = pk_General_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = pk_General_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 40);
        v14 = 138412546;
        v15 = v6;
        v16 = 2112;
        v17 = v12;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Updating description %@ with new pending add value date %@", &v14, 0x16u);
      }
    }

    [v6 setPendingAddValueDate:*(a1 + 40)];
    *a4 = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_paymentBalancesForPassWithUniqueIDLocked:(id)a3
{
  v4 = a3;
  v5 = [(NPKGizmoDatabase *)self selectBalancesForPassStatement];
  sqlite3_bind_text(v5, 1, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(v5) == 100)
  {
    v6 = sqlite3_column_blob(v5, 0);
    v7 = sqlite3_column_bytes(v5, 0);
    v8 = objc_autoreleasePoolPush();
    v9 = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:v7];
    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = NPKSecureUnarchiveObjectOfClasses(v9, v12);

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v14 = pk_General_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v16 = pk_General_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: selectBalancesForPassStatement does not equal row", buf, 2u);
      }
    }

    v13 = 0;
  }

  sqlite3_clear_bindings(v5);
  sqlite3_reset(v5);

  return v13;
}

- (void)_setPaymentBalancesLocked:(id)a3 forPassWithUniqueID:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = pk_General_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v10 = pk_General_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v30 = 136446978;
        v31 = "[NPKGizmoDatabase _setPaymentBalancesLocked:forPassWithUniqueID:]";
        v32 = 2082;
        v33 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v34 = 2048;
        v35 = 3191;
        v36 = 2080;
        v37 = "[NPKGizmoDatabase _setPaymentBalancesLocked:forPassWithUniqueID:]";
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: %s cannot take nil unique ID)", &v30, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  [(NPKGizmoDatabase *)self _loadInitialManifestLocked];
  if (![(NPKGizmoDatabase *)self database])
  {
    v11 = pk_General_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

    if (v12)
    {
      v13 = pk_General_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v30 = 136446722;
        v31 = "[NPKGizmoDatabase _setPaymentBalancesLocked:forPassWithUniqueID:]";
        v32 = 2082;
        v33 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v34 = 2048;
        v35 = 3193;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", &v30, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  v14 = [(NPKGizmoDatabase *)self updateBalancesForPassStatement];
  if (v6)
  {
    v15 = NPKSecureArchiveObject(v6);
    sqlite3_bind_blob(v14, 1, [v15 bytes], objc_msgSend(v15, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v16 = pk_General_log();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (v17)
    {
      v18 = pk_General_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v30) = 0;
        _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: Passed empty balances, storing null", &v30, 2u);
      }
    }

    sqlite3_bind_null(v14, 1);
  }

  sqlite3_bind_text(v14, 2, [v7 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  v19 = sqlite3_step(v14);
  v20 = pk_General_log();
  v21 = v20;
  if (v19 != 101)
  {
    v25 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

    if (v25)
    {
      v26 = pk_General_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = sqlite3_sql(v14);
        v28 = sqlite3_errmsg(self->_database);
        v30 = 136447234;
        v31 = "[NPKGizmoDatabase _setPaymentBalancesLocked:forPassWithUniqueID:]";
        v32 = 2082;
        v33 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v34 = 2048;
        v35 = 3210;
        v36 = 2080;
        v37 = v27;
        v38 = 2080;
        v39 = v28;
        _os_log_impl(&dword_25B300000, v26, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Updating balances failed: %s; %s)", &v30, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  v22 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

  if (v22)
  {
    v23 = pk_General_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(NPKGizmoDatabase *)self database];
      v30 = 134218498;
      v31 = v24;
      v32 = 2112;
      v33 = v6;
      v34 = 2112;
      v35 = v7;
      _os_log_impl(&dword_25B300000, v23, OS_LOG_TYPE_DEFAULT, "Notice: Successfully wrote balances in database: %p, balance: %@, uniqueID: %@", &v30, 0x20u);
    }
  }

  sqlite3_clear_bindings(v14);
  sqlite3_reset(v14);

  v29 = *MEMORY[0x277D85DE8];
}

- (id)_subcredentialsForPassWithUniqueIDLocked:(id)a3 paymentApplicationIdentifier:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB58] set];
  ppStmt = 0;
  if ([v7 length])
  {
    v9 = @"SELECT encoded_subcredentials FROM subcredentials WHERE pass_unique_id = ? AND payment_application_id = ?";
  }

  else
  {
    v9 = @"SELECT encoded_subcredentials FROM subcredentials WHERE pass_unique_id = ? AND payment_application_id IS NULL";
  }

  if (sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], [(__CFString *)v9 UTF8String], -1, &ppStmt, 0))
  {
    v10 = pk_General_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v11)
    {
      v12 = pk_General_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = sqlite3_errmsg([(NPKGizmoDatabase *)self database]);
        *buf = 136446978;
        v28 = "[NPKGizmoDatabase _subcredentialsForPassWithUniqueIDLocked:paymentApplicationIdentifier:]";
        v29 = 2082;
        v30 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v31 = 2048;
        v32 = 3230;
        v33 = 2080;
        v34 = v13;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select subcredentials statement: %s)", buf, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_bind_text(ppStmt, 1, [v6 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if ([v7 length])
  {
    sqlite3_bind_text(ppStmt, 2, [v7 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  while (sqlite3_step(ppStmt) == 100)
  {
    v14 = sqlite3_column_blob(ppStmt, 0);
    v15 = sqlite3_column_bytes(ppStmt, 0);
    v16 = objc_autoreleasePoolPush();
    v17 = [MEMORY[0x277CBEA90] dataWithBytes:v14 length:v15];
    if ([v17 length])
    {
      v18 = MEMORY[0x277CBEB98];
      v19 = objc_opt_class();
      v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
      v21 = NPKSecureUnarchiveObjectOfClasses(v17, v20);

      v22 = [v21 allObjects];
      [v8 addObjectsFromArray:v22];
    }

    objc_autoreleasePoolPop(v16);
  }

  sqlite3_clear_bindings(ppStmt);
  sqlite3_reset(ppStmt);
  sqlite3_finalize(ppStmt);
  v23 = [v8 copy];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)_setSubcredentialsLocked:(id)a3 forPassWithUniqueID:(id)a4 paymentApplicationIdentifier:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v11 = pk_General_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

    if (v12)
    {
      v13 = pk_General_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v31 = 136446978;
        v32 = "[NPKGizmoDatabase _setSubcredentialsLocked:forPassWithUniqueID:paymentApplicationIdentifier:]";
        v33 = 2082;
        v34 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v35 = 2048;
        v36 = 3261;
        v37 = 2080;
        v38 = "[NPKGizmoDatabase _setSubcredentialsLocked:forPassWithUniqueID:paymentApplicationIdentifier:]";
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: %s cannot take nil unique ID)", &v31, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  if (![(NPKGizmoDatabase *)self database])
  {
    v14 = pk_General_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

    if (v15)
    {
      v16 = pk_General_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v31 = 136446722;
        v32 = "[NPKGizmoDatabase _setSubcredentialsLocked:forPassWithUniqueID:paymentApplicationIdentifier:]";
        v33 = 2082;
        v34 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v35 = 2048;
        v36 = 3262;
        _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", &v31, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  v17 = [(NPKGizmoDatabase *)self deleteSubcredentialsStatement];
  sqlite3_bind_text(v17, 1, [v9 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if ([v10 length])
  {
    sqlite3_bind_text(v17, 2, [v10 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v17, 2);
  }

  if ((sqlite3_step(v17) - 102) <= 0xFFFFFFFD)
  {
    v18 = pk_General_log();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

    if (v19)
    {
      v20 = pk_General_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = sqlite3_sql(v17);
        v22 = sqlite3_errmsg(self->_database);
        v31 = 136447234;
        v32 = "[NPKGizmoDatabase _setSubcredentialsLocked:forPassWithUniqueID:paymentApplicationIdentifier:]";
        v33 = 2082;
        v34 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v35 = 2048;
        v36 = 3275;
        v37 = 2080;
        v38 = v21;
        v39 = 2080;
        v40 = v22;
        _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Delete subcredential sets failed: %s; %s)", &v31, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_clear_bindings(v17);
  sqlite3_reset(v17);
  if (v8 && [v8 count])
  {
    v23 = [(NPKGizmoDatabase *)self insertSubcredentialsStatement];
    v24 = NPKSecureArchiveObject(v8);
    sqlite3_bind_text(v23, 1, [v9 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    if ([v10 length])
    {
      sqlite3_bind_text(v23, 2, [v10 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      sqlite3_bind_null(v23, 2);
    }

    sqlite3_bind_blob(v23, 3, [v24 bytes], objc_msgSend(v24, "length"), 0xFFFFFFFFFFFFFFFFLL);
    if (sqlite3_step(v23) != 101)
    {
      v25 = pk_General_log();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

      if (v26)
      {
        v27 = pk_General_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = sqlite3_sql(v23);
          v29 = sqlite3_errmsg(self->_database);
          v31 = 136447234;
          v32 = "[NPKGizmoDatabase _setSubcredentialsLocked:forPassWithUniqueID:paymentApplicationIdentifier:]";
          v33 = 2082;
          v34 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v35 = 2048;
          v36 = 3295;
          v37 = 2080;
          v38 = v28;
          v39 = 2080;
          v40 = v29;
          _os_log_impl(&dword_25B300000, v27, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Insert subcredential set failed: %s; %s)", &v31, 0x34u);
        }
      }

      _NPKAssertAbort();
    }

    sqlite3_clear_bindings(v23);
    sqlite3_reset(v23);
  }

  [(NPKGizmoDatabase *)self _notifyDatabaseChangedExternally];
  [(NPKGizmoDatabase *)self _notifyDatabaseChangedWithNoop:0];

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_removeSubcredentialsForPassWithUniqueIDLocked:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NPKGizmoDatabase *)self deleteAllSubcredentialsForPassUniqueIDStatement];
  v6 = [v4 UTF8String];

  sqlite3_bind_text(v5, 1, v6, -1, 0xFFFFFFFFFFFFFFFFLL);
  if ((sqlite3_step(v5) & 0xFFFFFFFE) != 0x64)
  {
    v7 = pk_General_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v8)
    {
      v9 = pk_General_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = sqlite3_sql(v5);
        v11 = sqlite3_errmsg(self->_database);
        v13 = 136447234;
        v14 = "[NPKGizmoDatabase _removeSubcredentialsForPassWithUniqueIDLocked:]";
        v15 = 2082;
        v16 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v17 = 2048;
        v18 = 3313;
        v19 = 2080;
        v20 = v10;
        v21 = 2080;
        v22 = v11;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Delete failed: %s; %s)", &v13, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_clear_bindings(v5);
  sqlite3_reset(v5);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_enumerateAllPassesForMigration:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__NPKGizmoDatabase__enumerateAllPassesForMigration___block_invoke;
  v6[3] = &unk_2799482C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(NPKGizmoDatabase *)self _executeSQLQuery:@"SELECT encoded_pass processResultsBlock:encoded_image_sets, preferred_aid FROM pass", v6];
}

uint64_t __52__NPKGizmoDatabase__enumerateAllPassesForMigration___block_invoke(uint64_t result, int a2, sqlite3_stmt *a3)
{
  v33 = result;
  v38 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (a2)
    {
      result = sqlite3_step(a3);
      if (result == 100)
      {
        v32 = *MEMORY[0x277D38650];
        v5 = 0x277CBE000uLL;
        *&v4 = 136315394;
        v31 = v4;
        do
        {
          v6 = sqlite3_column_blob(a3, 0);
          v7 = sqlite3_column_bytes(a3, 0);
          v8 = sqlite3_column_blob(a3, 1);
          v9 = sqlite3_column_bytes(a3, 1);
          v10 = sqlite3_column_text(a3, 2);
          v11 = objc_autoreleasePoolPush();
          if (v10)
          {
            v12 = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:4];
          }

          else
          {
            v12 = 0;
          }

          v13 = [*(v5 + 2704) dataWithBytes:v6 length:{v7, v31}];
          v14 = objc_opt_class();
          v15 = NPKSecureUnarchiveObject(v13, v14);
          if (v15)
          {
            v16 = [*(v5 + 2704) dataWithBytes:v8 length:v9];
            v17 = objc_opt_class();
            v18 = NPKSecureUnarchiveObject(v16, v17);
            if (v18)
            {
              [v15 setMissingImageSetsFromObject:v18];
            }

            v19 = [v15 paymentPass];
            if (v19)
            {
              v20 = *(v33 + 32);
              v21 = [objc_opt_class() _migrationDataSource];
              v22 = [v21 secureElementIdentifiers];

              if ([v22 count])
              {
                NPKIdentifyDevicePaymentApplicationsForPass(v19, v22);
              }
            }

            if (os_variant_has_internal_ui())
            {
              v23 = [v15 passTypeIdentifier];
              v24 = [v23 length];

              if (!v24)
              {
                v25 = pk_General_log();
                v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

                if (v26)
                {
                  v27 = pk_General_log();
                  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                  {
                    v28 = [v15 uniqueID];
                    *buf = v31;
                    v35 = "[NPKGizmoDatabase _enumerateAllPassesForMigration:]_block_invoke";
                    v36 = 2112;
                    v37 = v28;
                    _os_log_impl(&dword_25B300000, v27, OS_LOG_TYPE_DEFAULT, "Warning: %s encoded_pass Unarchived pass with unique identifier %@ is missing the type identifier", buf, 0x16u);
                  }
                }
              }
            }

            v29 = *(v33 + 40);
            if (v29)
            {
              (*(v29 + 16))(v29, v15, v12);
            }

            v5 = 0x277CBE000;
          }

          objc_autoreleasePoolPop(v11);
          result = sqlite3_step(a3);
        }

        while (result == 100);
      }
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_updateNFCPayloadDuringMigration:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET nfc_payload=? WHERE unique_id=?" UTF8String], -1, &ppStmt, 0))
  {
    v5 = 0;
    *(v10 + 24) = 0;
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __53__NPKGizmoDatabase__updateNFCPayloadDuringMigration___block_invoke;
    v7[3] = &unk_2799482E8;
    v7[4] = &v9;
    v7[5] = ppStmt;
    [v4 enumerateObjectsUsingBlock:v7];
    v5 = *(v10 + 24);
  }

  _Block_object_dispose(&v9, 8);

  return v5 & 1;
}

void __53__NPKGizmoDatabase__updateNFCPayloadDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [v11 objectForKeyedSubscript:@"nfcPayload"];
  v7 = v6;
  if (v6)
  {
    v8 = NPKSecureArchiveObject(v6);
    sqlite3_bind_blob(*(a1 + 40), 1, [v8 bytes], objc_msgSend(v8, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  v9 = [v11 objectForKeyedSubscript:@"uniqueID"];
  v10 = v9;
  if (!v9 || (sqlite3_bind_text(*(a1 + 40), 2, [v9 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL), sqlite3_step(*(a1 + 40)) != 101))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  sqlite3_clear_bindings(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
}

- (BOOL)_updatePrivateLabelAndCobrandDuringMigration:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET private_label=? cobranded=? WHERE unique_id=?"], -1, &ppStmt, 0))
  {
    v5 = 0;
    *(v10 + 24) = 0;
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __65__NPKGizmoDatabase__updatePrivateLabelAndCobrandDuringMigration___block_invoke;
    v7[3] = &unk_2799482E8;
    v7[4] = &v9;
    v7[5] = ppStmt;
    [v4 enumerateObjectsUsingBlock:v7];
    v5 = *(v10 + 24);
  }

  _Block_object_dispose(&v9, 8);

  return v5 & 1;
}

void __65__NPKGizmoDatabase__updatePrivateLabelAndCobrandDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"privateLabel"];
  v8 = [v7 BOOLValue];

  sqlite3_bind_int(*(a1 + 40), 1, v8);
  v9 = [v6 objectForKeyedSubscript:@"cobranded"];
  v10 = [v9 BOOLValue];

  sqlite3_bind_int(*(a1 + 40), 2, v10);
  v11 = [v6 objectForKeyedSubscript:@"uniqueID"];

  if (!v11 || (sqlite3_bind_text(*(a1 + 40), 3, [v11 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL), sqlite3_step(*(a1 + 40)) != 101))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  sqlite3_clear_bindings(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
}

- (BOOL)_updateDeviceAndPreferredPaymentApplicationsDuringMigration:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (!sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET device_primary_payment_application=? preferred:"UTF8String" payment:? application=? WHERE unique:?id=?"], -1, &ppStmt, 0))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __80__NPKGizmoDatabase__updateDeviceAndPreferredPaymentApplicationsDuringMigration___block_invoke;
    v7[3] = &unk_2799482E8;
    v7[4] = &v9;
    v7[5] = ppStmt;
    [v4 enumerateObjectsUsingBlock:v7];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __80__NPKGizmoDatabase__updateDeviceAndPreferredPaymentApplicationsDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v6 = [v14 objectForKeyedSubscript:@"devicePrimaryPaymentApplication"];

  if (v6 && ([v14 objectForKeyedSubscript:@"devicePrimaryPaymentApplication"], v7 = objc_claimAutoreleasedReturnValue(), NPKSecureArchiveObject(v7), v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
  {
    sqlite3_bind_blob(*(a1 + 40), 1, [v8 bytes], objc_msgSend(v8, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(*(a1 + 40), 1);
  }

  v9 = [v14 objectForKeyedSubscript:@"preferredPaymentApplication"];

  if (v9 && ([v14 objectForKeyedSubscript:@"preferredPaymentApplication"], v10 = objc_claimAutoreleasedReturnValue(), NPKSecureArchiveObject(v10), v11 = objc_claimAutoreleasedReturnValue(), v10, v11))
  {
    sqlite3_bind_blob(*(a1 + 40), 2, [v11 bytes], objc_msgSend(v11, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(*(a1 + 40), 2);
  }

  v12 = [v14 objectForKeyedSubscript:@"uniqueID"];
  v13 = v12;
  if (!v12 || (sqlite3_bind_text(*(a1 + 40), 3, [v12 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL), sqlite3_step(*(a1 + 40)) != 101))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  sqlite3_clear_bindings(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
}

- (BOOL)_updatePrimaryContactlessAndInAppPaymentApplicationsDuringMigration:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (!sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET device_primary_contactless_payment_application=? device:"UTF8String" primary:? in:? app:? payment:? application=? WHERE unique:?id=?"], -1, &ppStmt, 0))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __88__NPKGizmoDatabase__updatePrimaryContactlessAndInAppPaymentApplicationsDuringMigration___block_invoke;
    v7[3] = &unk_2799482E8;
    v7[4] = &v9;
    v7[5] = ppStmt;
    [v4 enumerateObjectsUsingBlock:v7];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __88__NPKGizmoDatabase__updatePrimaryContactlessAndInAppPaymentApplicationsDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v6 = [v14 objectForKeyedSubscript:@"devicePrimaryContactlessPaymentApplication"];

  if (v6 && ([v14 objectForKeyedSubscript:@"devicePrimaryContactlessPaymentApplication"], v7 = objc_claimAutoreleasedReturnValue(), NPKSecureArchiveObject(v7), v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
  {
    sqlite3_bind_blob(*(a1 + 40), 1, [v8 bytes], objc_msgSend(v8, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(*(a1 + 40), 1);
  }

  v9 = [v14 objectForKeyedSubscript:@"devicePrimaryInAppPaymentApplication"];

  if (v9 && ([v14 objectForKeyedSubscript:@"devicePrimaryInAppPaymentApplication"], v10 = objc_claimAutoreleasedReturnValue(), NPKSecureArchiveObject(v10), v11 = objc_claimAutoreleasedReturnValue(), v10, v11))
  {
    sqlite3_bind_blob(*(a1 + 40), 2, [v11 bytes], objc_msgSend(v11, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(*(a1 + 40), 2);
  }

  v12 = [v14 objectForKeyedSubscript:@"uniqueID"];
  v13 = v12;
  if (!v12 || (sqlite3_bind_text(*(a1 + 40), 3, [v12 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL), sqlite3_step(*(a1 + 40)) != 101))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  sqlite3_clear_bindings(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
}

- (BOOL)_updateEncodedImageSetsDuringMigration:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (!sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET encoded_pass=? encoded:"UTF8String" image:? sets=? WHERE unique:?id=?"], -1, &ppStmt, 0))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__NPKGizmoDatabase__updateEncodedImageSetsDuringMigration___block_invoke;
    v7[3] = &unk_279948310;
    v7[4] = self;
    v7[5] = &v9;
    v7[6] = ppStmt;
    [v4 enumerateObjectsUsingBlock:v7];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __59__NPKGizmoDatabase__updateEncodedImageSetsDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v11 = [v6 objectForKeyedSubscript:@"encodedPassWithoutImageSets"];
  v7 = [v6 objectForKeyedSubscript:@"encodedImageSets"];
  v8 = [v6 objectForKeyedSubscript:@"uniqueID"];

  if (!v8 || !v11 || !v7 || ([*(a1 + 32) _verifyPassDataIsUnarchivedCorrectlyWithData:v11 forPassWithUniqueID:v8], v9 = *(a1 + 48), v10 = v11, sqlite3_bind_blob(v9, 1, objc_msgSend(v11, "bytes"), objc_msgSend(v11, "length"), 0xFFFFFFFFFFFFFFFFLL), sqlite3_bind_blob(*(a1 + 48), 2, objc_msgSend(v7, "bytes"), objc_msgSend(v7, "length"), 0xFFFFFFFFFFFFFFFFLL), sqlite3_bind_text(*(a1 + 48), 3, objc_msgSend(v8, "UTF8String"), -1, 0xFFFFFFFFFFFFFFFFLL), sqlite3_step(*(a1 + 48)) != 101))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  sqlite3_clear_bindings(*(a1 + 48));
  sqlite3_reset(*(a1 + 48));
}

- (BOOL)_repairEncodedImagesDuringMigration:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  ppStmt = 0;
  v5 = sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET logo_image=? WHERE unique_id=?" UTF8String], -1, &ppStmt, 0);
  v9 = 0;
  if (!(v5 | sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET background_image=? WHERE unique_id=?" UTF8String], -1, &v9, 0)))
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__NPKGizmoDatabase__repairEncodedImagesDuringMigration___block_invoke;
    v8[3] = &unk_279948338;
    v8[4] = &v11;
    v8[5] = ppStmt;
    v8[6] = v9;
    [v4 enumerateObjectsUsingBlock:v8];
  }

  v6 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return v6;
}

void __56__NPKGizmoDatabase__repairEncodedImagesDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v11 = [v6 objectForKeyedSubscript:@"encodedLogoImageData"];
  v7 = [v6 objectForKeyedSubscript:@"encodedBackgroundImageData"];
  v8 = [v6 objectForKeyedSubscript:@"uniqueID"];

  if (v8)
  {
    if (v11)
    {
      v9 = *(a1 + 40);
      v10 = v11;
      sqlite3_bind_blob(v9, 1, [v11 bytes], objc_msgSend(v11, "length"), 0xFFFFFFFFFFFFFFFFLL);
      sqlite3_bind_text(*(a1 + 40), 2, [v8 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
      if (sqlite3_step(*(a1 + 40)) != 101)
      {
        *(*(*(a1 + 32) + 8) + 24) = 0;
        *a4 = 1;
      }

      sqlite3_clear_bindings(*(a1 + 40));
      sqlite3_reset(*(a1 + 40));
    }

    if (v7)
    {
      sqlite3_bind_blob(*(a1 + 48), 1, [v7 bytes], objc_msgSend(v7, "length"), 0xFFFFFFFFFFFFFFFFLL);
      sqlite3_bind_text(*(a1 + 48), 2, [v8 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
      if (sqlite3_step(*(a1 + 48)) != 101)
      {
        *(*(*(a1 + 32) + 8) + 24) = 0;
        *a4 = 1;
      }

      sqlite3_clear_bindings(*(a1 + 48));
      sqlite3_reset(*(a1 + 48));
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (BOOL)_updateIssuerCountryCodesDuringMigration:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (!sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET issuer_country_code=? WHERE unique_id=?" UTF8String], -1, &ppStmt, 0))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __61__NPKGizmoDatabase__updateIssuerCountryCodesDuringMigration___block_invoke;
    v7[3] = &unk_2799482E8;
    v7[4] = &v9;
    v7[5] = ppStmt;
    [v4 enumerateObjectsUsingBlock:v7];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __61__NPKGizmoDatabase__updateIssuerCountryCodesDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v9 = [v6 objectForKeyedSubscript:@"issuerCountryCode"];
  v7 = [v6 objectForKeyedSubscript:@"uniqueID"];

  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = *(a1 + 40);
  if (v9)
  {
    sqlite3_bind_text(v8, 1, [v9 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v8, 1);
  }

  sqlite3_bind_text(*(a1 + 40), 2, [v7 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(*(a1 + 40)) != 101)
  {
LABEL_6:
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  sqlite3_clear_bindings(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
}

- (BOOL)_updateExpressPassTypesMaskDuringMigration:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (!sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET express_pass_types_mask=? WHERE unique_id=?" UTF8String], -1, &ppStmt, 0))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __63__NPKGizmoDatabase__updateExpressPassTypesMaskDuringMigration___block_invoke;
    v7[3] = &unk_2799482E8;
    v7[4] = &v9;
    v7[5] = ppStmt;
    [v4 enumerateObjectsUsingBlock:v7];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __63__NPKGizmoDatabase__updateExpressPassTypesMaskDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [v10 objectForKeyedSubscript:@"expressPassTypesMask"];
  v7 = v6;
  if (v6)
  {
    sqlite3_bind_int64(*(a1 + 40), 1, [v6 integerValue]);
  }

  v8 = [v10 objectForKeyedSubscript:@"uniqueID"];
  v9 = v8;
  if (!v8 || (sqlite3_bind_text(*(a1 + 40), 2, [v8 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL), sqlite3_step(*(a1 + 40)) != 101))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  sqlite3_clear_bindings(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
}

- (BOOL)_updateDevicePaymentApplicationsDuringMigration:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (!sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET device_payment_applications=? WHERE unique_id=?" UTF8String], -1, &ppStmt, 0))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __68__NPKGizmoDatabase__updateDevicePaymentApplicationsDuringMigration___block_invoke;
    v7[3] = &unk_2799482E8;
    v7[4] = &v9;
    v7[5] = ppStmt;
    [v4 enumerateObjectsUsingBlock:v7];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __68__NPKGizmoDatabase__updateDevicePaymentApplicationsDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [v11 objectForKeyedSubscript:@"devicePaymentApplications"];

  if (v6 && ([v11 objectForKeyedSubscript:@"devicePaymentApplications"], v7 = objc_claimAutoreleasedReturnValue(), NPKSecureArchiveObject(v7), v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
  {
    sqlite3_bind_blob(*(a1 + 40), 1, [v8 bytes], objc_msgSend(v8, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(*(a1 + 40), 1);
  }

  v9 = [v11 objectForKeyedSubscript:@"uniqueID"];
  v10 = v9;
  if (!v9 || (sqlite3_bind_text(*(a1 + 40), 2, [v9 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL), sqlite3_step(*(a1 + 40)) != 101))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  sqlite3_clear_bindings(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
}

- (BOOL)_updateIngestedDatesDuringMigration:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (!sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET ingested_date=? WHERE unique_id=?" UTF8String], -1, &ppStmt, 0))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __56__NPKGizmoDatabase__updateIngestedDatesDuringMigration___block_invoke;
    v7[3] = &unk_2799482E8;
    v7[4] = &v9;
    v7[5] = ppStmt;
    [v4 enumerateObjectsUsingBlock:v7];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __56__NPKGizmoDatabase__updateIngestedDatesDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"ingestedDate"];
  if (!v7)
  {
    v7 = [MEMORY[0x277CBEAA8] date];
  }

  v8 = *(a1 + 40);
  v11 = v7;
  [v7 timeIntervalSinceReferenceDate];
  sqlite3_bind_int(v8, 1, v9);
  v10 = [v6 objectForKeyedSubscript:@"uniqueID"];

  if (!v10 || (sqlite3_bind_text(*(a1 + 40), 2, [v10 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL), sqlite3_step(*(a1 + 40)) != 101))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  sqlite3_clear_bindings(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
}

- (BOOL)_updateCompleteLocalHashesDuringMigration:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (!sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET complete_hash=? complete:"UTF8String" hashes=? WHERE unique:?id=?"], -1, &ppStmt, 0))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__NPKGizmoDatabase__updateCompleteLocalHashesDuringMigration___block_invoke;
    v7[3] = &unk_2799482E8;
    v7[4] = &v9;
    v7[5] = ppStmt;
    [v4 enumerateObjectsUsingBlock:v7];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __62__NPKGizmoDatabase__updateCompleteLocalHashesDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v13 = [v6 objectForKeyedSubscript:@"completeHash"];
  v7 = [v6 objectForKeyedSubscript:@"completeLocalHashes"];
  v8 = [v6 objectForKeyedSubscript:@"uniqueID"];

  if (v8)
  {
    v9 = *(a1 + 40);
    if (v13)
    {
      v10 = v13;
      sqlite3_bind_blob(v9, 1, [v13 bytes], objc_msgSend(v13, "length"), 0xFFFFFFFFFFFFFFFFLL);
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sqlite3_bind_null(v9, 1);
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    v11 = NPKSecureArchiveObject(v7);
    if (v11)
    {
      v12 = v11;
      sqlite3_bind_blob(*(a1 + 40), 2, [v11 bytes], objc_msgSend(v11, "length"), 0xFFFFFFFFFFFFFFFFLL);

      goto LABEL_9;
    }

LABEL_8:
    sqlite3_bind_null(*(a1 + 40), 2);
LABEL_9:
    sqlite3_bind_text(*(a1 + 40), 3, [v8 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    if (sqlite3_step(*(a1 + 40)) == 101)
    {
      goto LABEL_11;
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  *a4 = 1;
LABEL_11:
  sqlite3_clear_bindings(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
}

- (BOOL)_updateFrontAndBackFieldBucketsDuringMigration:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (!sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET front_field_buckets=? back:"UTF8String" field:? buckets=? WHERE unique:?id=?"], -1, &ppStmt, 0))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __67__NPKGizmoDatabase__updateFrontAndBackFieldBucketsDuringMigration___block_invoke;
    v7[3] = &unk_2799482E8;
    v7[4] = &v9;
    v7[5] = ppStmt;
    [v4 enumerateObjectsUsingBlock:v7];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __67__NPKGizmoDatabase__updateFrontAndBackFieldBucketsDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v13 = [v6 objectForKeyedSubscript:@"frontFieldBuckets"];
  v7 = [v6 objectForKeyedSubscript:@"backFieldBuckets"];
  v8 = [v6 objectForKeyedSubscript:@"uniqueID"];

  if (v8)
  {
    if (v13 && (NPKSecureArchiveObject(v13), (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = v9;
      sqlite3_bind_blob(*(a1 + 40), 1, [v9 bytes], objc_msgSend(v9, "length"), 0xFFFFFFFFFFFFFFFFLL);

      if (!v7)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sqlite3_bind_null(*(a1 + 40), 1);
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    v11 = NPKSecureArchiveObject(v7);
    if (v11)
    {
      v12 = v11;
      sqlite3_bind_blob(*(a1 + 40), 2, [v11 bytes], objc_msgSend(v11, "length"), 0xFFFFFFFFFFFFFFFFLL);

      goto LABEL_10;
    }

LABEL_9:
    sqlite3_bind_null(*(a1 + 40), 2);
LABEL_10:
    sqlite3_bind_text(*(a1 + 40), 3, [v8 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    if (sqlite3_step(*(a1 + 40)) == 101)
    {
      goto LABEL_12;
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  *a4 = 1;
LABEL_12:
  sqlite3_clear_bindings(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
}

- (BOOL)_updateAvailableActionsDuringMigration:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (!sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET available_actions=? WHERE unique_id=?" UTF8String], -1, &ppStmt, 0))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__NPKGizmoDatabase__updateAvailableActionsDuringMigration___block_invoke;
    v7[3] = &unk_2799482E8;
    v7[4] = &v9;
    v7[5] = ppStmt;
    [v4 enumerateObjectsUsingBlock:v7];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __59__NPKGizmoDatabase__updateAvailableActionsDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v10 = [v6 objectForKeyedSubscript:@"availableActions"];
  v7 = [v6 objectForKeyedSubscript:@"uniqueID"];

  if (!v7)
  {
    goto LABEL_7;
  }

  if (v10 && (NPKSecureArchiveObject(v10), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    sqlite3_bind_blob(*(a1 + 40), 1, [v8 bytes], objc_msgSend(v8, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(*(a1 + 40), 1);
  }

  sqlite3_bind_text(*(a1 + 40), 2, [v7 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(*(a1 + 40)) != 101)
  {
LABEL_7:
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  sqlite3_clear_bindings(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
}

- (BOOL)_updateOrganizationNamesDuringMigration:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (!sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET organization_name=? WHERE unique_id=?" UTF8String], -1, &ppStmt, 0))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__NPKGizmoDatabase__updateOrganizationNamesDuringMigration___block_invoke;
    v7[3] = &unk_2799482E8;
    v7[4] = &v9;
    v7[5] = ppStmt;
    [v4 enumerateObjectsUsingBlock:v7];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __60__NPKGizmoDatabase__updateOrganizationNamesDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v9 = [v6 objectForKeyedSubscript:@"organizationName"];
  v7 = [v6 objectForKeyedSubscript:@"uniqueID"];

  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = *(a1 + 40);
  if (v9)
  {
    sqlite3_bind_text(v8, 1, [v9 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v8, 1);
  }

  sqlite3_bind_text(*(a1 + 40), 2, [v7 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(*(a1 + 40)) != 101)
  {
LABEL_6:
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  sqlite3_clear_bindings(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
}

- (BOOL)_updateLocalizedDescriptionDuringMigration:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (!sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET localized_description=? WHERE unique_id=?" UTF8String], -1, &ppStmt, 0))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __63__NPKGizmoDatabase__updateLocalizedDescriptionDuringMigration___block_invoke;
    v7[3] = &unk_2799482E8;
    v7[4] = &v9;
    v7[5] = ppStmt;
    [v4 enumerateObjectsUsingBlock:v7];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __63__NPKGizmoDatabase__updateLocalizedDescriptionDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v9 = [v6 objectForKeyedSubscript:@"localizedDescription"];
  v7 = [v6 objectForKeyedSubscript:@"uniqueID"];

  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = *(a1 + 40);
  if (v9)
  {
    sqlite3_bind_text(v8, 1, [v9 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v8, 1);
  }

  sqlite3_bind_text(*(a1 + 40), 2, [v7 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(*(a1 + 40)) != 101)
  {
LABEL_6:
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  sqlite3_clear_bindings(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
}

- (BOOL)_updateEffectivePaymentApplicationStateDuringMigration:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (!sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET effective_payment_application_state=? WHERE unique_id=?" UTF8String], -1, &ppStmt, 0))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __75__NPKGizmoDatabase__updateEffectivePaymentApplicationStateDuringMigration___block_invoke;
    v7[3] = &unk_2799482E8;
    v7[4] = &v9;
    v7[5] = ppStmt;
    [v4 enumerateObjectsUsingBlock:v7];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __75__NPKGizmoDatabase__updateEffectivePaymentApplicationStateDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [v10 objectForKeyedSubscript:@"effectivePaymentApplicationState"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 intValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v10 objectForKeyedSubscript:@"uniqueID"];
  if (!v9 || (sqlite3_bind_int(*(a1 + 40), 1, v8), sqlite3_bind_text(*(a1 + 40), 2, [v9 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL), sqlite3_step(*(a1 + 40)) != 101))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  sqlite3_clear_bindings(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
}

- (BOOL)_updateHasUserSelectableContactlessPaymentApplications:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (!sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET has_user_selectable_payment_applications=? WHERE unique_id=?" UTF8String], -1, &ppStmt, 0))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __75__NPKGizmoDatabase__updateHasUserSelectableContactlessPaymentApplications___block_invoke;
    v7[3] = &unk_2799482E8;
    v7[4] = &v9;
    v7[5] = ppStmt;
    [v4 enumerateObjectsUsingBlock:v7];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __75__NPKGizmoDatabase__updateHasUserSelectableContactlessPaymentApplications___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [v10 objectForKeyedSubscript:@"hasUserSelectableContactlessPaymentApplications"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 intValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v10 objectForKeyedSubscript:@"uniqueID"];
  if (!v9 || (sqlite3_bind_int(*(a1 + 40), 1, v8), sqlite3_bind_text(*(a1 + 40), 2, [v9 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL), sqlite3_step(*(a1 + 40)) != 101))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  sqlite3_clear_bindings(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
}

- (BOOL)_updateEncodedPaymentPassDuringMigration:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (!sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET encoded_pass=? WHERE unique_id=?" UTF8String], -1, &ppStmt, 0))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __61__NPKGizmoDatabase__updateEncodedPaymentPassDuringMigration___block_invoke;
    v7[3] = &unk_279948310;
    v7[4] = self;
    v7[5] = &v9;
    v7[6] = ppStmt;
    [v4 enumerateObjectsUsingBlock:v7];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __61__NPKGizmoDatabase__updateEncodedPaymentPassDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v10 = [v6 objectForKeyedSubscript:@"encodedPass"];
  v7 = [v6 objectForKeyedSubscript:@"uniqueID"];

  if (!v7 || v10 && ([*(a1 + 32) _verifyPassDataIsUnarchivedCorrectlyWithData:v10 forPassWithUniqueID:v7], v8 = *(a1 + 48), v9 = v10, sqlite3_bind_blob(v8, 1, objc_msgSend(v10, "bytes"), objc_msgSend(v10, "length"), 0xFFFFFFFFFFFFFFFFLL), sqlite3_bind_text(*(a1 + 48), 2, objc_msgSend(v7, "UTF8String"), -1, 0xFFFFFFFFFFFFFFFFLL), sqlite3_step(*(a1 + 48)) != 101))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  sqlite3_clear_bindings(*(a1 + 48));
  sqlite3_reset(*(a1 + 48));
}

- (BOOL)_updateHasStoredValueDuringMigration:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (!sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET has_stored_value=? WHERE unique_id=?" UTF8String], -1, &ppStmt, 0))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__NPKGizmoDatabase__updateHasStoredValueDuringMigration___block_invoke;
    v7[3] = &unk_2799482E8;
    v7[4] = &v9;
    v7[5] = ppStmt;
    [v4 enumerateObjectsUsingBlock:v7];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __57__NPKGizmoDatabase__updateHasStoredValueDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [v10 objectForKeyedSubscript:@"hasStoredValue"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 intValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v10 objectForKeyedSubscript:@"uniqueID"];
  if (!v9 || (sqlite3_bind_int(*(a1 + 40), 1, v8), sqlite3_bind_text(*(a1 + 40), 2, [v9 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL), sqlite3_step(*(a1 + 40)) != 101))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  sqlite3_clear_bindings(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
}

- (BOOL)_updateSettingsDuringMigration:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (!sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET settings=? WHERE unique_id=?" UTF8String], -1, &ppStmt, 0))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__NPKGizmoDatabase__updateSettingsDuringMigration___block_invoke;
    v7[3] = &unk_2799482E8;
    v7[4] = &v9;
    v7[5] = ppStmt;
    [v4 enumerateObjectsUsingBlock:v7];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __51__NPKGizmoDatabase__updateSettingsDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [v10 objectForKeyedSubscript:@"settings"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 intValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v10 objectForKeyedSubscript:@"uniqueID"];
  if (!v9 || (sqlite3_bind_int64(*(a1 + 40), 1, v8), sqlite3_bind_text(*(a1 + 40), 2, [v9 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL), sqlite3_step(*(a1 + 40)) != 101))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  sqlite3_clear_bindings(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
}

- (BOOL)_updateTransactionSourceIdentifiersDuringMigration:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  ppStmt = 0;
  v5 = sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE transactions SET transaction_source_identifier=? WHERE pass_unique_id=?" UTF8String], -1, &ppStmt, 0);
  v12 = 0;
  v6 = sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE ephemeral_transactions SET transaction_source_identifier=? WHERE pass_unique_id=?" UTF8String], -1, &v12, 0);
  pStmt = 0;
  v7 = sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [CFSTR(""INSERT INTO transaction_source (transaction_source_identifier type], -1, &pStmt, 0);
  if (!v5 && !v6 && !v7)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __71__NPKGizmoDatabase__updateTransactionSourceIdentifiersDuringMigration___block_invoke;
    v10[3] = &unk_279948360;
    v10[4] = &v14;
    v10[5] = ppStmt;
    v10[6] = v12;
    v10[7] = pStmt;
    [v4 enumerateObjectsUsingBlock:v10];
  }

  sqlite3_finalize(ppStmt);
  sqlite3_finalize(pStmt);
  v8 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  return v8;
}

void __71__NPKGizmoDatabase__updateTransactionSourceIdentifiersDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"uniqueID"];
  v8 = [v6 objectForKeyedSubscript:@"transactionSourceIdentifier"];

  if (v7 && v8)
  {
    sqlite3_bind_text(*(a1 + 40), 1, [v8 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    sqlite3_bind_text(*(a1 + 40), 2, [v7 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    v9 = sqlite3_step(*(a1 + 40));
    if (v9 != 101)
    {
      v10 = v9;
      v11 = pk_General_log();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

      if (v12)
      {
        v13 = pk_General_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 138412802;
          v26 = v7;
          v27 = 2112;
          v28 = v8;
          v29 = 1024;
          v30 = v10;
          _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Update transactions table failed for unique ID %@ transaction source identifier %@ result %d", &v25, 0x1Cu);
        }
      }

      *(*(*(a1 + 32) + 8) + 24) = 0;
      *a4 = 1;
    }

    sqlite3_clear_bindings(*(a1 + 40));
    sqlite3_reset(*(a1 + 40));
    sqlite3_bind_text(*(a1 + 48), 1, [v8 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    sqlite3_bind_text(*(a1 + 48), 2, [v7 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    v14 = sqlite3_step(*(a1 + 48));
    if (v14 != 101)
    {
      v15 = v14;
      v16 = pk_General_log();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

      if (v17)
      {
        v18 = pk_General_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 138412802;
          v26 = v7;
          v27 = 2112;
          v28 = v8;
          v29 = 1024;
          v30 = v15;
          _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: Update ephemeral transactions table failed for unique ID %@ transaction source identifier %@ result %d", &v25, 0x1Cu);
        }
      }

      *(*(*(a1 + 32) + 8) + 24) = 0;
      *a4 = 1;
    }

    sqlite3_clear_bindings(*(a1 + 48));
    sqlite3_reset(*(a1 + 48));
    sqlite3_bind_text(*(a1 + 56), 1, [v8 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    sqlite3_bind_int(*(a1 + 56), 2, 0);
    sqlite3_bind_text(*(a1 + 56), 3, [v7 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    v19 = sqlite3_step(*(a1 + 56));
    if (v19 != 101)
    {
      v20 = v19;
      v21 = pk_General_log();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

      if (v22)
      {
        v23 = pk_General_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 138412802;
          v26 = v7;
          v27 = 2112;
          v28 = v8;
          v29 = 1024;
          v30 = v20;
          _os_log_impl(&dword_25B300000, v23, OS_LOG_TYPE_DEFAULT, "Notice: Insert into transaction source table failed for unique ID %@ transaction source identifier %@ result %d", &v25, 0x1Cu);
        }
      }

      *(*(*(a1 + 32) + 8) + 24) = 0;
      *a4 = 1;
    }

    sqlite3_clear_bindings(*(a1 + 56));
    sqlite3_reset(*(a1 + 56));
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)_updateSubcredentialsDuringMigration:(id)a3
{
  v70 = *MEMORY[0x277D85DE8];
  v4 = a3;
  pStmt = 0;
  ppStmt = 0;
  v62 = 0;
  v5 = sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"SELECT subcredentials FROM pass WHERE unique_id = ?" UTF8String], -1, &ppStmt, 0);
  v6 = sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"INSERT INTO subcredentials (pass_unique_id payment:encoded_subcredentials) VALUES (? application:{?, ?)", "UTF8String"}id], -1, &pStmt, 0);
  v7 = sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"ALTER TABLE pass DROP COLUMN subcredentials" UTF8String], -1, &v62, 0);
  v8 = v7;
  if (v5 || v6 || v7)
  {
    v39 = v4;
    v40 = pk_General_log();
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);

    if (v41)
    {
      v42 = pk_General_log();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = sqlite3_errmsg([(NPKGizmoDatabase *)self database]);
        *buf = 67109890;
        *v66 = v5;
        *&v66[4] = 1024;
        *&v66[6] = v6;
        *&v66[10] = 1024;
        *&v66[12] = v8;
        *&v66[16] = 2080;
        v67 = v43;
        _os_log_impl(&dword_25B300000, v42, OS_LOG_TYPE_ERROR, "Error: Failed to prepare statements for subcredential migration. selectResult: %d, insertResult: %d, deleteResult: %d, dbError: %s", buf, 0x1Eu);
      }
    }

    LOBYTE(v18) = 0;
    v4 = v39;
  }

  else
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v58 objects:v69 count:16];
    if (v10)
    {
      v11 = v10;
      v56 = self;
      v55 = v4;
      v12 = *v59;
      v13 = 1;
      obj = v9;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v59 != v12)
          {
            objc_enumerationMutation(obj);
          }

          if (!v13)
          {
            goto LABEL_56;
          }

          v15 = *(*(&v58 + 1) + 8 * i);
          v16 = [v15 objectForKeyedSubscript:@"uniqueID"];
          v17 = [v15 objectForKeyedSubscript:@"devicePrimaryPaymentApplicationIdentifier"];
          if (![v16 length])
          {
            v50 = pk_General_log();
            v51 = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);

            if (v51)
            {
              v52 = pk_General_log();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_25B300000, v52, OS_LOG_TYPE_ERROR, "Error: Missing unique ID in migration dictionary. Skipping this pass.", buf, 2u);
              }
            }

LABEL_56:
            LOBYTE(v18) = 0;
LABEL_58:
            v4 = v55;
            goto LABEL_59;
          }

          v18 = 1;
          sqlite3_bind_text(ppStmt, 1, [v16 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
          v19 = sqlite3_step(ppStmt);
          if (v19 == 101)
          {
            v28 = 0;
          }

          else
          {
            v20 = v19;
            if (v19 == 100)
            {
              v21 = sqlite3_column_blob(ppStmt, 0);
              v22 = sqlite3_column_bytes(ppStmt, 0);
              v23 = objc_autoreleasePoolPush();
              v24 = [MEMORY[0x277CBEA90] dataWithBytes:v21 length:v22];
              if ([v24 length])
              {
                v25 = MEMORY[0x277CBEB98];
                v26 = objc_opt_class();
                v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
                v28 = NPKSecureUnarchiveObjectOfClasses(v24, v27);
              }

              else
              {
                v28 = 0;
              }

              objc_autoreleasePoolPop(v23);
            }

            else
            {
              v29 = pk_General_log();
              v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);

              if (v30)
              {
                v31 = pk_General_log();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  v32 = sqlite3_errmsg([(NPKGizmoDatabase *)v56 database]);
                  *buf = 138413058;
                  *v66 = v16;
                  *&v66[8] = 2112;
                  *&v66[10] = v17;
                  LOWORD(v67) = 1024;
                  *(&v67 + 2) = v20;
                  HIWORD(v67) = 2080;
                  v68 = v32;
                  _os_log_impl(&dword_25B300000, v31, OS_LOG_TYPE_ERROR, "Error: Select subcredentials from pass table failed for unique ID %@ paymentApplicationIdentifier %@ result %d, dbError: %s", buf, 0x26u);
                }
              }

              v28 = 0;
              v18 = 0;
            }
          }

          sqlite3_clear_bindings(ppStmt);
          sqlite3_reset(ppStmt);
          if (!v18)
          {

            goto LABEL_58;
          }

          sqlite3_bind_text(pStmt, 1, [v16 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
          if ([v17 length])
          {
            sqlite3_bind_text(pStmt, 2, [v17 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
          }

          else
          {
            sqlite3_bind_null(pStmt, 2);
          }

          if ([v28 count])
          {
            v33 = NPKSecureArchiveObject(v28);
            sqlite3_bind_blob(pStmt, 3, [v33 bytes], objc_msgSend(v33, "length"), 0xFFFFFFFFFFFFFFFFLL);
          }

          else
          {
            sqlite3_bind_null(pStmt, 3);
          }

          v34 = sqlite3_step(pStmt);
          v13 = v34 == 101;
          if (v34 != 101)
          {
            v35 = pk_General_log();
            v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);

            if (v36)
            {
              v37 = pk_General_log();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                v38 = sqlite3_errmsg([(NPKGizmoDatabase *)v56 database]);
                *buf = 138413058;
                *v66 = v16;
                *&v66[8] = 2112;
                *&v66[10] = v17;
                LOWORD(v67) = 1024;
                *(&v67 + 2) = v34;
                HIWORD(v67) = 2080;
                v68 = v38;
                _os_log_impl(&dword_25B300000, v37, OS_LOG_TYPE_ERROR, "Error: Insert into subcredentials table failed for unique ID %@ paymentApplicationIdentifier %@ result %d, dbError: %s", buf, 0x26u);
              }
            }
          }

          sqlite3_clear_bindings(pStmt);
          sqlite3_reset(pStmt);
        }

        v11 = [obj countByEnumeratingWithState:&v58 objects:v69 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v4 = v55;
      self = v56;
      if (v34 != 101)
      {
        LOBYTE(v18) = 0;
        goto LABEL_59;
      }
    }

    else
    {
    }

    v44 = sqlite3_step(v62);
    if (v44 != 101)
    {
      v45 = v44;
      v46 = pk_General_log();
      v47 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);

      if (v47)
      {
        v48 = pk_General_log();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = sqlite3_errmsg([(NPKGizmoDatabase *)self database]);
          *buf = 67109378;
          *v66 = v45;
          *&v66[4] = 2080;
          *&v66[6] = v49;
          _os_log_impl(&dword_25B300000, v48, OS_LOG_TYPE_ERROR, "Error: Delete subcredentials from pass table failed. result %d, dbError: %s", buf, 0x12u);
        }
      }
    }

    sqlite3_clear_bindings(v62);
    sqlite3_reset(v62);
    LOBYTE(v18) = 1;
  }

LABEL_59:
  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  if (pStmt)
  {
    sqlite3_finalize(pStmt);
  }

  if (v62)
  {
    sqlite3_finalize(v62);
  }

  v53 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)_passForUniqueIDLocked:(id)a3 includeImageSets:(BOOL)a4
{
  v4 = a4;
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v4)
  {
    v7 = [(NPKGizmoDatabase *)self selectPassAndImageSetsDataStatement];
  }

  else
  {
    v7 = [(NPKGizmoDatabase *)self selectPassDataStatement];
  }

  v8 = v7;
  sqlite3_bind_text(v7, 1, [v6 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(v8) == 100)
  {
    v9 = sqlite3_column_blob(v8, 0);
    v10 = sqlite3_column_bytes(v8, 0);
    v11 = objc_autoreleasePoolPush();
    v12 = [MEMORY[0x277CBEA90] dataWithBytes:v9 length:v10];
    v13 = objc_opt_class();
    v14 = NPKSecureUnarchiveObject(v12, v13);

    objc_autoreleasePoolPop(v11);
    if (v14)
    {
      v15 = *MEMORY[0x277D38650];
      if (os_variant_has_internal_ui())
      {
        v16 = [v14 passTypeIdentifier];
        v17 = [v16 length];

        if (!v17)
        {
          v18 = pk_General_log();
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

          if (v19)
          {
            v20 = pk_General_log();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = [v14 uniqueID];
              *buf = 136315394;
              v42 = "[NPKGizmoDatabase _passForUniqueIDLocked:includeImageSets:]";
              v43 = 2112;
              v44 = v21;
              _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_DEFAULT, "Warning: %s encoded_pass Unarchived pass with unique identifier %@ is missing the type identifier", buf, 0x16u);
            }
          }
        }
      }

      if (v4)
      {
        v22 = sqlite3_column_blob(v8, 1);
        v23 = sqlite3_column_bytes(v8, 1);
        v24 = objc_autoreleasePoolPush();
        v25 = [MEMORY[0x277CBEA90] dataWithBytes:v22 length:v23];
        v26 = objc_opt_class();
        v27 = NPKSecureUnarchiveObject(v25, v26);
        if (v27)
        {
          [v14 setMissingImageSetsFromObject:v27];
        }

        objc_autoreleasePoolPop(v24);
      }
    }

    v28 = NPKPairedDeviceSecureElementIdentifiers();
    if ([v28 count])
    {
      v29 = [v14 paymentPass];

      if (v29)
      {
        v30 = [v14 paymentPass];
        NPKIdentifyDevicePaymentApplicationsForPass(v30, v28);
      }
    }

    v31 = [v14 paymentPass];

    if (v31)
    {
      v32 = [(NPKGizmoDatabase *)self _subcredentialsForPassWithUniqueIDLocked:v6 paymentApplicationIdentifier:0];
      if ([v32 count])
      {
        v33 = [v14 paymentPass];
        v34 = [v33 devicePrimaryPaymentApplication];
        [v34 setSubcredentials:v32];
      }

      v35 = [v14 paymentPass];
      v36 = [v35 devicePaymentApplications];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __60__NPKGizmoDatabase__passForUniqueIDLocked_includeImageSets___block_invoke;
      v39[3] = &unk_279947FF0;
      v39[4] = self;
      v40 = v6;
      [v36 enumerateObjectsUsingBlock:v39];
    }
  }

  else
  {
    v14 = 0;
  }

  sqlite3_clear_bindings(v8);
  sqlite3_reset(v8);

  v37 = *MEMORY[0x277D85DE8];

  return v14;
}

void __60__NPKGizmoDatabase__passForUniqueIDLocked_includeImageSets___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 applicationIdentifier];
  if ([v3 length])
  {
    v4 = [*(a1 + 32) _subcredentialsForPassWithUniqueIDLocked:*(a1 + 40) paymentApplicationIdentifier:v3];
    if ([v4 count])
    {
      [v5 setSubcredentials:v4];
    }
  }
}

- (BOOL)_hasPassForUniqueIDLocked:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NPKGizmoDatabase *)self selectPassExistsStatement];
  v6 = [v4 UTF8String];

  sqlite3_bind_text(v5, 1, v6, -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(v5) == 100)
  {
    v7 = sqlite3_column_int(v5, 0) == 1;
  }

  else
  {
    v8 = pk_General_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v10 = pk_General_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315138;
        v14 = sqlite3_errmsg([(NPKGizmoDatabase *)self database]);
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_ERROR, "Error: Error executing query: %s", &v13, 0xCu);
      }
    }

    v7 = 0;
  }

  sqlite3_clear_bindings(v5);
  sqlite3_reset(v5);
  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)_diffForUniqueIDLocked:(id)a3
{
  v4 = a3;
  v5 = [(NPKGizmoDatabase *)self selectPassDiffStatement];
  v6 = [v4 UTF8String];

  sqlite3_bind_text(v5, 1, v6, -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(v5) == 100)
  {
    v7 = sqlite3_column_blob(v5, 0);
    v8 = [MEMORY[0x277CBEA90] dataWithBytes:v7 length:{sqlite3_column_bytes(v5, 0)}];
    v9 = objc_opt_class();
    v10 = NPKSecureUnarchiveObject(v8, v9);
  }

  else
  {
    v10 = 0;
  }

  sqlite3_clear_bindings(v5);
  sqlite3_reset(v5);

  return v10;
}

- (void)_saveDiffLocked:(id)a3 forPassWithUniqueID:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NPKGizmoDatabase *)self insertDiffStatement];
  v9 = v8;
  if (v6)
  {
    v10 = NPKSecureArchiveObject(v6);
    sqlite3_bind_blob(v9, 1, [v10 bytes], objc_msgSend(v10, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v8, 1);
  }

  v11 = [v7 UTF8String];

  sqlite3_bind_text(v9, 2, v11, -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(v9) != 101)
  {
    v12 = pk_General_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

    if (v13)
    {
      v14 = pk_General_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = sqlite3_sql(v9);
        v16 = sqlite3_errmsg(self->_database);
        v18 = 136447234;
        v19 = "[NPKGizmoDatabase _saveDiffLocked:forPassWithUniqueID:]";
        v20 = 2082;
        v21 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v22 = 2048;
        v23 = 4411;
        v24 = 2080;
        v25 = v15;
        v26 = 2080;
        v27 = v16;
        _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Save diff failed: %s; %s)", &v18, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_clear_bindings(v9);
  sqlite3_reset(v9);

  v17 = *MEMORY[0x277D85DE8];
}

- (id)passForUniqueID:(id)a3 includeImageSets:(BOOL)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__13;
  v19 = __Block_byref_object_dispose__13;
  v20 = 0;
  dbQueue = self->_dbQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__NPKGizmoDatabase_passForUniqueID_includeImageSets___block_invoke;
  v11[3] = &unk_279948388;
  v12 = v6;
  v13 = &v15;
  v11[4] = self;
  v14 = a4;
  v8 = v6;
  dispatch_sync(dbQueue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __53__NPKGizmoDatabase_passForUniqueID_includeImageSets___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadInitialManifestLocked];
  if ([*(a1 + 32) database])
  {
    v2 = [*(a1 + 32) _passForUniqueIDLocked:*(a1 + 40) includeImageSets:*(a1 + 56)];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (BOOL)hasPassForUniqueID:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__NPKGizmoDatabase_hasPassForUniqueID___block_invoke;
  block[3] = &unk_279948130;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(dbQueue, block);
  LOBYTE(dbQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return dbQueue;
}

uint64_t __39__NPKGizmoDatabase_hasPassForUniqueID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadInitialManifestLocked];
  result = [*(a1 + 32) database];
  if (result)
  {
    result = [*(a1 + 32) _hasPassForUniqueIDLocked:*(a1 + 40)];
    *(*(*(a1 + 48) + 8) + 24) = result;
  }

  return result;
}

- (id)diffForUniqueID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  v17 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__NPKGizmoDatabase_diffForUniqueID___block_invoke;
  block[3] = &unk_279948130;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(dbQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __36__NPKGizmoDatabase_diffForUniqueID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadInitialManifestLocked];
  if ([*(a1 + 32) database])
  {
    v2 = [*(a1 + 32) _diffForUniqueIDLocked:*(a1 + 40)];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (void)setDeletePending:(BOOL)a3 forUniqueID:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (!v6)
  {
    v7 = pk_General_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v8)
    {
      v9 = pk_General_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v17 = "[NPKGizmoDatabase setDeletePending:forUniqueID:]";
        v18 = 2082;
        v19 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v20 = 2048;
        v21 = 4463;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: setDeletePending:forUniqueID: can't accept nil uniqueID)", buf, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__NPKGizmoDatabase_setDeletePending_forUniqueID___block_invoke;
  block[3] = &unk_279946490;
  block[4] = self;
  v14 = v6;
  v15 = a3;
  v11 = v6;
  dispatch_sync(dbQueue, block);

  v12 = *MEMORY[0x277D85DE8];
}

void __49__NPKGizmoDatabase_setDeletePending_forUniqueID___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _passForUniqueIDLocked:*(a1 + 40) includeImageSets:0];
  if (![*(a1 + 32) database])
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v34 = "[NPKGizmoDatabase setDeletePending:forUniqueID:]_block_invoke";
        v35 = 2082;
        v36 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v37 = 2048;
        v38 = 4469;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", buf, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  v6 = [*(a1 + 32) updateDeletePendingStatement];
  sqlite3_bind_int(v6, 1, *(a1 + 48));
  sqlite3_bind_text(v6, 2, [*(a1 + 40) UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(v6) != 101)
  {
    v7 = pk_General_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v8)
    {
      v9 = pk_General_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = sqlite3_sql(v6);
        v11 = sqlite3_errmsg(*(*(a1 + 32) + 8));
        *buf = 136447234;
        v34 = "[NPKGizmoDatabase setDeletePending:forUniqueID:]_block_invoke";
        v35 = 2082;
        v36 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v37 = 2048;
        v38 = 4480;
        v39 = 2080;
        v40 = v10;
        v41 = 2080;
        v42 = v11;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Update delete pending failed: %s; %s)", buf, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_clear_bindings(v6);
  sqlite3_reset(v6);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = *(*(a1 + 32) + 368);
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        v18 = [v17 uniqueID];
        v19 = [v18 isEqualToString:*(a1 + 40)];

        if (v19)
        {
          v20 = v17;

          if (v20)
          {
            [v20 setDeletePending:*(a1 + 48)];
          }

          goto LABEL_24;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v20 = 0;
LABEL_24:
  if (v2 && *(a1 + 48) == 1)
  {
    v21 = [MEMORY[0x277CCAB98] defaultCenter];
    v22 = NPKGizmoDatabasePassRemovedNotificationName;
    v23 = *(a1 + 32);
    v30 = NPKGizmoDatabasePassKeyName;
    v31 = v2;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    [v21 postNotificationName:v22 object:v23 userInfo:v24];
  }

  [*(a1 + 32) _notifyDatabaseChangedExternally];
  [*(a1 + 32) _notifyDatabaseChangedWithNoop:0];

  v25 = *MEMORY[0x277D85DE8];
}

- (BOOL)_getDeletePendingForUniqueID:(id)a3
{
  v4 = a3;
  v5 = [(NPKGizmoDatabase *)self selectDeletePendingStatement];
  v6 = [v4 UTF8String];

  sqlite3_bind_text(v5, 1, v6, -1, 0xFFFFFFFFFFFFFFFFLL);
  v7 = sqlite3_step(v5) == 100 && sqlite3_column_int(v5, 0) != 0;
  sqlite3_clear_bindings(v5);
  sqlite3_reset(v5);
  return v7;
}

- (void)setPreferredPaymentApplication:(id)a3 forPaymentPass:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    v9 = pk_General_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

    if (v10)
    {
      v11 = pk_General_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v29 = "[NPKGizmoDatabase setPreferredPaymentApplication:forPaymentPass:]";
        v30 = 2082;
        v31 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v32 = 2048;
        v33 = 4522;
        v34 = 2080;
        v35 = "[NPKGizmoDatabase setPreferredPaymentApplication:forPaymentPass:]";
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: %s cannot take nil payment pass)", buf, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  if (v6)
  {
    v12 = [v7 paymentApplications];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __66__NPKGizmoDatabase_setPreferredPaymentApplication_forPaymentPass___block_invoke;
    v26[3] = &unk_2799483B0;
    v13 = v6;
    v27 = v13;
    v14 = [v12 pk_anyObjectPassingTest:v26];

    if (!v14)
    {
      v15 = pk_General_log();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

      if (v16)
      {
        v17 = pk_General_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = [v8 paymentApplications];
          *buf = 136447490;
          v29 = "[NPKGizmoDatabase setPreferredPaymentApplication:forPaymentPass:]";
          v30 = 2082;
          v31 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v32 = 2048;
          v33 = 4525;
          v34 = 2112;
          v35 = v8;
          v36 = 2112;
          v37 = v13;
          v38 = 2112;
          v39 = v18;
          _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Payment pass %@ did not contain payment application %@ (has applications = %@))", buf, 0x3Eu);
        }
      }

      _NPKAssertAbort();
    }
  }

  dbQueue = self->_dbQueue;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __66__NPKGizmoDatabase_setPreferredPaymentApplication_forPaymentPass___block_invoke_583;
  v23[3] = &unk_279945880;
  v23[4] = self;
  v24 = v6;
  v25 = v8;
  v20 = v8;
  v21 = v6;
  dispatch_async(dbQueue, v23);

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __66__NPKGizmoDatabase_setPreferredPaymentApplication_forPaymentPass___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 applicationIdentifier];
  v5 = [v3 applicationIdentifier];

  v6 = [v4 isEqualToString:v5];
  return v6;
}

void __66__NPKGizmoDatabase_setPreferredPaymentApplication_forPaymentPass___block_invoke_583(id *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  [a1[4] _loadInitialManifestLocked];
  if (![a1[4] database])
  {
    v2 = pk_General_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

    if (v3)
    {
      v4 = pk_General_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v24 = "[NPKGizmoDatabase setPreferredPaymentApplication:forPaymentPass:]_block_invoke";
        v25 = 2082;
        v26 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v27 = 2048;
        v28 = 4528;
        _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", buf, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  v5 = [a1[4] updatePreferredAIDStatement];
  v6 = [a1[5] applicationIdentifier];
  sqlite3_bind_text(v5, 1, [v6 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

  v7 = a1[5];
  if (v7)
  {
    v8 = NPKSecureArchiveObject(v7);
    sqlite3_bind_blob(v5, 2, [v8 bytes], objc_msgSend(v8, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v5, 2);
  }

  v9 = [a1[6] uniqueID];
  sqlite3_bind_text(v5, 3, [v9 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

  if (sqlite3_step(v5) != 101)
  {
    v10 = pk_General_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v11)
    {
      v12 = pk_General_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = sqlite3_sql(v5);
        v14 = sqlite3_errmsg(*(a1[4] + 1));
        *buf = 136447234;
        v24 = "[NPKGizmoDatabase setPreferredPaymentApplication:forPaymentPass:]_block_invoke";
        v25 = 2082;
        v26 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v27 = 2048;
        v28 = 4545;
        v29 = 2080;
        v30 = v13;
        v31 = 2080;
        v32 = v14;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Update preferred AID failed: %s; %s)", buf, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_clear_bindings(v5);
  sqlite3_reset(v5);
  v15 = *(a1[4] + 46);
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __66__NPKGizmoDatabase_setPreferredPaymentApplication_forPaymentPass___block_invoke_584;
  v20 = &unk_279948298;
  v21 = a1[6];
  v22 = a1[5];
  [v15 enumerateObjectsUsingBlock:&v17];
  [a1[4] _notifyDatabaseChangedExternally];
  [a1[4] _notifyDatabaseChangedWithNoop:0];

  v16 = *MEMORY[0x277D85DE8];
}

void __66__NPKGizmoDatabase_setPreferredPaymentApplication_forPaymentPass___block_invoke_584(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 uniqueID];
  v8 = [*(a1 + 32) uniqueID];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = pk_General_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = pk_General_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 40);
        v15 = 138412546;
        v16 = v6;
        v17 = 2112;
        v18 = v13;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Updating description %@ with new preferred payment application %@", &v15, 0x16u);
      }
    }

    [v6 setPreferredPaymentApplication:*(a1 + 40)];
    *a4 = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)preferredPaymentApplicationForPaymentPass:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = pk_General_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v7 = pk_General_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        *&buf[4] = "[NPKGizmoDatabase preferredPaymentApplicationForPaymentPass:]";
        *&buf[12] = 2082;
        *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        *&buf[22] = 2048;
        v17 = 4564;
        LOWORD(v18) = 2080;
        *(&v18 + 2) = "[NPKGizmoDatabase preferredPaymentApplicationForPaymentPass:]";
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: %s cannot take nil payment pass)", buf, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v17 = __Block_byref_object_copy__13;
  *&v18 = __Block_byref_object_dispose__13;
  *(&v18 + 1) = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__NPKGizmoDatabase_preferredPaymentApplicationForPaymentPass___block_invoke;
  block[3] = &unk_279948130;
  v14 = v4;
  v15 = buf;
  block[4] = self;
  v9 = v4;
  dispatch_sync(dbQueue, block);
  v10 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __62__NPKGizmoDatabase_preferredPaymentApplicationForPaymentPass___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _loadInitialManifestLocked];
  if (![*(a1 + 32) database])
  {
    v2 = pk_General_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

    if (v3)
    {
      v4 = pk_General_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v9 = 136446722;
        v10 = "[NPKGizmoDatabase preferredPaymentApplicationForPaymentPass:]_block_invoke";
        v11 = 2082;
        v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v13 = 2048;
        v14 = 4568;
        _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", &v9, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  v5 = [*(a1 + 32) _getPreferredPaymentApplicationForPaymentPass:*(a1 + 40) aid:0];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_getPreferredPaymentApplicationForPaymentPass:(id)a3 aid:(id *)a4
{
  v6 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__13;
  v26 = __Block_byref_object_dispose__13;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__13;
  v20 = __Block_byref_object_dispose__13;
  v21 = 0;
  v7 = [(NPKGizmoDatabase *)self selectPreferredAIDStatement];
  v8 = [v6 uniqueID];
  sqlite3_bind_text(v7, 1, [v8 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

  if (sqlite3_step(v7) == 100)
  {
    v9 = sqlite3_column_text(v7, 0);
    if (v9)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:4];
      v11 = v17[5];
      v17[5] = v10;

      v12 = [v6 paymentApplications];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __70__NPKGizmoDatabase__getPreferredPaymentApplicationForPaymentPass_aid___block_invoke;
      v15[3] = &unk_2799483D8;
      v15[4] = &v16;
      v15[5] = &v22;
      [v12 enumerateObjectsUsingBlock:v15];
    }
  }

  sqlite3_clear_bindings(v7);
  sqlite3_reset(v7);
  if (a4)
  {
    *a4 = v17[5];
  }

  v13 = v23[5];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v13;
}

void __70__NPKGizmoDatabase__getPreferredPaymentApplicationForPaymentPass_aid___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 applicationIdentifier];
  v7 = [v6 isEqualToString:*(*(*(a1 + 32) + 8) + 40)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (NSArray)passDescriptions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__13;
  v10 = __Block_byref_object_dispose__13;
  v11 = 0;
  dbQueue = self->_dbQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__NPKGizmoDatabase_passDescriptions__block_invoke;
  v5[3] = &unk_279948400;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dbQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __36__NPKGizmoDatabase_passDescriptions__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadInitialManifestLocked];
  v2 = [MEMORY[0x277CBEA60] arrayWithArray:*(*(a1 + 32) + 368)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)libraryHashForWatchOSMajorVersion:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__13;
  v11 = __Block_byref_object_dispose__13;
  v12 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__NPKGizmoDatabase_libraryHashForWatchOSMajorVersion___block_invoke;
  block[3] = &unk_279947890;
  block[4] = self;
  block[5] = &v7;
  block[6] = a3;
  dispatch_sync(dbQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __54__NPKGizmoDatabase_libraryHashForWatchOSMajorVersion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) database])
  {
    [*(a1 + 32) _loadInitialManifestLocked];
    v2 = [*(a1 + 32) _libraryHashLockedForWatchOSMajorVersion:*(a1 + 48)];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (id)_libraryHashLockedForWatchOSMajorVersion:(unint64_t)a3
{
  v37 = *MEMORY[0x277D85DE8];
  if (!a3 || [objc_opt_class() latestWatchOSMajorVersion] < a3)
  {
    v5 = pk_General_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v7 = pk_General_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v30 = "[NPKGizmoDatabase _libraryHashLockedForWatchOSMajorVersion:]";
        v31 = 2082;
        v32 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v33 = 2048;
        v34 = 4632;
        v35 = 2048;
        v36 = a3;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Received invalid watch OS version %lu)", buf, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  libraryHashes = self->_libraryHashes;
  if (libraryHashes)
  {
    v9 = [(NSArray *)libraryHashes objectAtIndexedSubscript:a3 - 1];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [MEMORY[0x277CBEB18] array];
    v12 = [(NSMutableDictionary *)self->_manifest allKeys];
    v13 = [v12 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __61__NPKGizmoDatabase__libraryHashLockedForWatchOSMajorVersion___block_invoke;
    v27[3] = &unk_279947210;
    v27[4] = self;
    v14 = v11;
    v28 = v14;
    [v13 enumerateObjectsUsingBlock:v27];

    if ([v14 count])
    {
      v24 = v10;
      v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(objc_opt_class(), "latestWatchOSMajorVersion")}];
      if ([objc_opt_class() latestWatchOSMajorVersion])
      {
        v16 = 0;
        v17 = MEMORY[0x277D85DD0];
        do
        {
          v26[0] = v17;
          v26[1] = 3221225472;
          v26[2] = __61__NPKGizmoDatabase__libraryHashLockedForWatchOSMajorVersion___block_invoke_587;
          v26[3] = &__block_descriptor_40_e17__16__0__NSArray_8l;
          v26[4] = v16;
          v18 = [v14 npkComprehension:{v26, v24}];
          v19 = NPKLibraryHashForPassHashes(v18);
          [v15 setObject:v19 atIndexedSubscript:v16];

          ++v16;
        }

        while (v16 < [objc_opt_class() latestWatchOSMajorVersion]);
      }

      v20 = [v15 copy];
      v21 = self->_libraryHashes;
      self->_libraryHashes = v20;

      v9 = [(NSArray *)self->_libraryHashes objectAtIndexedSubscript:a3 - 1];

      v10 = v25;
    }

    else
    {
      v9 = 0;
    }

    objc_autoreleasePoolPop(v10);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v9;
}

void __61__NPKGizmoDatabase__libraryHashLockedForWatchOSMajorVersion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 360) objectForKey:v3];
  v5 = [v4 remoteManifestHashes];
  if (v5)
  {
    [*(a1 + 40) addObject:v5];
  }

  else
  {
    v6 = pk_Payment_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = pk_Payment_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = v3;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Skipping pass with unique ID %@ because it has no remote manifest hashes", &v10, 0xCu);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)manifestHashes
{
  v3 = [objc_opt_class() latestWatchOSMajorVersion];

  return [(NPKGizmoDatabase *)self manifestHashesForWatchOSMajorVersion:v3];
}

- (id)manifestHashesForWatchOSMajorVersion:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__13;
  v11 = __Block_byref_object_dispose__13;
  v12 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__NPKGizmoDatabase_manifestHashesForWatchOSMajorVersion___block_invoke;
  block[3] = &unk_279947890;
  block[5] = &v7;
  block[6] = a3;
  block[4] = self;
  dispatch_sync(dbQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __57__NPKGizmoDatabase_manifestHashesForWatchOSMajorVersion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) database])
  {
    [*(a1 + 32) _loadInitialManifestLocked];
    v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(*(*(a1 + 32) + 360), "count")}];
    v3 = *(*(a1 + 32) + 360);
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __57__NPKGizmoDatabase_manifestHashesForWatchOSMajorVersion___block_invoke_2;
    v12 = &unk_279948448;
    v4 = *(a1 + 48);
    v13 = v2;
    v14 = v4;
    v5 = v2;
    [v3 enumerateKeysAndObjectsUsingBlock:&v9];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:{v5, v9, v10, v11, v12}];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

void __57__NPKGizmoDatabase_manifestHashesForWatchOSMajorVersion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 remoteManifestHashes];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 count];
    v9 = *(a1 + 40);
    if (v8 >= v9)
    {
      v16 = [v7 objectAtIndexedSubscript:v9 - 1];
      [*(a1 + 32) setObject:v16 forKeyedSubscript:v5];

      goto LABEL_12;
    }

    v10 = pk_Payment_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = pk_Payment_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = v5;
        v13 = "Warning: Skipping pass with unique ID %@ from manifest calculation because it is missing manifest hash for this version";
LABEL_9:
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, v13, &v18, 0xCu);
        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v14 = pk_Payment_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v12 = pk_Payment_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = v5;
        v13 = "Notice: Skipping pass with unique ID %@ from manifest calculation because it has no remote manifest hash";
        goto LABEL_9;
      }

LABEL_10:
    }
  }

LABEL_12:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)enumerateAllPassesAndDescriptionsWithBlock:(id)a3 includeImageSets:(BOOL)a4
{
  v6 = a3;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__NPKGizmoDatabase_enumerateAllPassesAndDescriptionsWithBlock_includeImageSets___block_invoke;
  block[3] = &unk_279945CF0;
  v11 = a4;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_sync(dbQueue, block);
}

void __80__NPKGizmoDatabase_enumerateAllPassesAndDescriptionsWithBlock_includeImageSets___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) database])
  {
    [*(a1 + 32) _loadInitialManifestLocked];
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2020000000;
    v10[3] = 0;
    v2 = [*(*(a1 + 32) + 368) count];
    v3 = *(a1 + 32);
    v4 = *(v3 + 368);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __80__NPKGizmoDatabase_enumerateAllPassesAndDescriptionsWithBlock_includeImageSets___block_invoke_2;
    v5[3] = &unk_279948498;
    v5[4] = v3;
    v9 = *(a1 + 48);
    v6 = *(a1 + 40);
    v7 = v10;
    v8 = v2;
    [v4 enumerateObjectsUsingBlock:v5];

    _Block_object_dispose(v10, 8);
  }
}

void __80__NPKGizmoDatabase_enumerateAllPassesAndDescriptionsWithBlock_includeImageSets___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 uniqueID];
  v8 = [v3 _passForUniqueIDLocked:v5 includeImageSets:*(a1 + 64)];

  v6 = *(a1 + 40);
  ++*(*(*(a1 + 48) + 8) + 24);
  v7 = *(a1 + 56);
  (*(v6 + 16))();
}

- (BOOL)hasPassesMatchingPassDescriptionPredicate:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__NPKGizmoDatabase_hasPassesMatchingPassDescriptionPredicate___block_invoke;
  block[3] = &unk_279948090;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(dbQueue, block);
  LOBYTE(dbQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return dbQueue;
}

void __62__NPKGizmoDatabase_hasPassesMatchingPassDescriptionPredicate___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) database])
  {
    [*(a1 + 32) _loadInitialManifestLocked];
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = *(*(a1 + 32) + 368);
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          if ([*(a1 + 40) evaluateWithObject:{*(*(&v8 + 1) + 8 * i), v8}])
          {
            *(*(*(a1 + 48) + 8) + 24) = 1;
            goto LABEL_12;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)filteredPassesUsingPassDescriptionPredicate:(id)a3 includeImageSets:(BOOL)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__13;
  v19 = __Block_byref_object_dispose__13;
  v20 = 0;
  dbQueue = self->_dbQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__NPKGizmoDatabase_filteredPassesUsingPassDescriptionPredicate_includeImageSets___block_invoke;
  v11[3] = &unk_279948068;
  v11[4] = self;
  v12 = v6;
  v14 = a4;
  v13 = &v15;
  v8 = v6;
  dispatch_sync(dbQueue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __81__NPKGizmoDatabase_filteredPassesUsingPassDescriptionPredicate_includeImageSets___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) database])
  {
    [*(a1 + 32) _loadInitialManifestLocked];
    v2 = [MEMORY[0x277CBEB58] set];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v3 = *(*(a1 + 32) + 368);
    v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v17;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v16 + 1) + 8 * i);
          if ([*(a1 + 40) evaluateWithObject:{v8, v16}])
          {
            v9 = *(a1 + 32);
            v10 = [v8 uniqueID];
            v11 = [v9 _passForUniqueIDLocked:v10 includeImageSets:*(a1 + 56)];

            [v2 addObject:v11];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v5);
    }

    v12 = [v2 copy];
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_rebuildDatabaseWithPassesFromCompanionPasses
{
  v83 = *MEMORY[0x277D85DE8];
  v3 = [objc_opt_class() _migrationDataSource];
  v4 = [v3 companionPaymentPassUniqueIDs];
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v70 objects:v82 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v71;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v71 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [v3 companionPaymentPassWithUniqueID:*(*(&v70 + 1) + 8 * i)];
        [v5 npkSafelyAddObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v70 objects:v82 count:16];
    }

    while (v8);
  }

  v12 = pk_General_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = pk_General_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v5 count];
      *buf = 134218242;
      v76 = v15;
      v77 = 2112;
      v78 = v6;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: NPKGizmoDatabase: Re-encoding payment passes migration step. Re-saving %lu payment passes with unique IDs: %@", buf, 0x16u);
    }
  }

  v58 = v6;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = v5;
  v16 = [obj countByEnumeratingWithState:&v66 objects:v81 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v67;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v67 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v66 + 1) + 8 * j);
        v21 = pk_General_log();
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

        if (v22)
        {
          v23 = pk_General_log();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = [v20 uniqueID];
            v25 = [v20 localizedDescription];
            *buf = 138412546;
            v76 = v24;
            v77 = 2112;
            v78 = v25;
            _os_log_impl(&dword_25B300000, v23, OS_LOG_TYPE_DEFAULT, "Notice: NPKGizmoDatabase: Re-encoding - Will save payment pass with unique id: %@, localized description: %@", buf, 0x16u);
          }
        }

        v65 = 0;
        [(NPKGizmoDatabase *)self _savePassLocked:v20 locallyAdded:0 wasUpdate:&v65];
        v26 = pk_General_log();
        v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);

        if (v27)
        {
          v28 = pk_General_log();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = [v20 uniqueID];
            v30 = [v20 localizedDescription];
            v31 = NSStringFromBOOL();
            *buf = 138412802;
            v76 = v29;
            v77 = 2112;
            v78 = v30;
            v79 = 2112;
            v80 = v31;
            _os_log_impl(&dword_25B300000, v28, OS_LOG_TYPE_DEFAULT, "Notice: NPKGizmoDatabase: Re-encoding - Did save save payment pass with unique id: %@ localized description: %@, was update?: %@", buf, 0x20u);
          }
        }
      }

      v17 = [obj countByEnumeratingWithState:&v66 objects:v81 count:16];
    }

    while (v17);
  }

  v32 = *MEMORY[0x277D38650];
  v33 = v58;
  if (os_variant_has_internal_ui())
  {
    v34 = pk_General_log();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);

    if (v35)
    {
      v36 = pk_General_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v76 = v58;
        _os_log_impl(&dword_25B300000, v36, OS_LOG_TYPE_DEFAULT, "Notice: NPKGizmoDatabase: Verifying re-encoding payment passes after migration step. Passes to verify: %@", buf, 0xCu);
      }
    }

    v59 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v37 = v58;
    v38 = [v37 countByEnumeratingWithState:&v61 objects:v74 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v62;
      do
      {
        for (k = 0; k != v39; ++k)
        {
          if (*v62 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v42 = *(*(&v61 + 1) + 8 * k);
          v43 = [(NPKGizmoDatabase *)self _passForUniqueIDLocked:v42 includeImageSets:0];
          v44 = [v43 passTypeIdentifier];
          v45 = [v44 length];

          if (!v45)
          {
            v46 = [v43 localizedDescription];
            [v59 setObject:v46 forKeyedSubscript:v42];
          }
        }

        v39 = [v37 countByEnumeratingWithState:&v61 objects:v74 count:16];
      }

      while (v39);
    }

    v47 = [v59 count];
    v48 = pk_General_log();
    v49 = v48;
    if (v47)
    {
      v50 = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);

      v33 = v58;
      if (v50)
      {
        v51 = pk_General_log();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v76 = v59;
          v52 = "Error: NPKGizmoDatabase: Re-encoding payment passes migration step verification found encoding issues in passes with unique IDs: %@";
          v53 = v51;
          v54 = OS_LOG_TYPE_ERROR;
          v55 = 12;
LABEL_48:
          _os_log_impl(&dword_25B300000, v53, v54, v52, buf, v55);
          goto LABEL_49;
        }

        goto LABEL_49;
      }
    }

    else
    {
      v56 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);

      v33 = v58;
      if (v56)
      {
        v51 = pk_General_log();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v52 = "Notice: NPKGizmoDatabase: Re-encoding payment passes migration step verification did not find any encoding issues";
          v53 = v51;
          v54 = OS_LOG_TYPE_DEFAULT;
          v55 = 2;
          goto LABEL_48;
        }

LABEL_49:
      }
    }
  }

  v57 = *MEMORY[0x277D85DE8];
}

- (void)_verifyPassDataIsUnarchivedCorrectlyWithData:(id)a3 forPassWithUniqueID:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = *MEMORY[0x277D38650];
  if (os_variant_has_internal_ui())
  {
    v8 = objc_opt_class();
    v9 = NPKSecureUnarchiveObject(v5, v8);
    v10 = v9;
    if (v9)
    {
      v11 = [v9 passTypeIdentifier];
      v12 = [v11 length];

      if (v12)
      {
        goto LABEL_12;
      }

      v13 = pk_General_log();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

      if (!v14)
      {
        goto LABEL_12;
      }

      v15 = pk_General_log();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v20 = 136315394;
      v21 = "[NPKGizmoDatabase _verifyPassDataIsUnarchivedCorrectlyWithData:forPassWithUniqueID:]";
      v22 = 2112;
      v23 = v6;
      v16 = "Warning: %s encoded_pass Updating the pass with encoded data of pass with uniqueID %@ is missing the type identifier.";
    }

    else
    {
      v17 = pk_General_log();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

      if (!v18)
      {
LABEL_12:

        goto LABEL_13;
      }

      v15 = pk_General_log();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
LABEL_11:

        goto LABEL_12;
      }

      v20 = 136315394;
      v21 = "[NPKGizmoDatabase _verifyPassDataIsUnarchivedCorrectlyWithData:forPassWithUniqueID:]";
      v22 = 2112;
      v23 = v6;
      v16 = "Warning: %s encoded_pass There was a problem unarchiving the pass archive for pass with uniqueID %@.";
    }

    _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, v16, &v20, 0x16u);
    goto LABEL_11;
  }

LABEL_13:

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)_migrateDatabase:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v20 = 0;
  v5 = [(NPKGizmoDatabase *)self _databaseVersionExists:&v20 + 1 valid:&v20];
  v6 = [objc_opt_class() maxDatabaseVersion];
  if (v5 >= v6)
  {
    v9 = pk_General_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (!v10)
    {
      goto LABEL_7;
    }

    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v26 = v5;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKGizmoDatabase: on-disk version %ld matches current version", buf, 0xCu);
    }
  }

  else
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __37__NPKGizmoDatabase__migrateDatabase___block_invoke;
    v14[3] = &unk_2799484C0;
    v17 = v5;
    v18 = v6;
    v16 = &v21;
    v7 = v4;
    v19 = HIBYTE(v20);
    v14[4] = self;
    v15 = v7;
    [(NPKGizmoDatabase *)self _performTransactionWithBlock:v14];
    v8 = v15;
  }

LABEL_7:
  v11 = *(v22 + 24);
  _Block_object_dispose(&v21, 8);

  v12 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

uint64_t __37__NPKGizmoDatabase__migrateDatabase___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 56);
      v6 = *(a1 + 64);
      v17 = 134218240;
      v18 = v5;
      v19 = 2048;
      v20 = v6;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: NPKGizmoDatabase: on-disk version %ld out of date, migrating to current version %ld", &v17, 0x16u);
    }
  }

  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  *(*(*(a1 + 48) + 8) + 24) = (*(*(a1 + 40) + 16))();
  v9 = pk_General_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_General_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(*(*(a1 + 48) + 8) + 24);
      v17 = 67109120;
      LODWORD(v18) = v12;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKGizmoDatabase: migration success = %d", &v17, 8u);
    }
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v13 = *(a1 + 32);
    v14 = *(a1 + 64);
    if (*(a1 + 72) == 1)
    {
      [v13 _updateDatabaseVersionRow:v14];
    }

    else
    {
      [v13 _insertDatabaseVersionRow:v14];
    }
  }

  result = *(*(*(a1 + 48) + 8) + 24);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (int64_t)_databaseVersionExists:(BOOL *)a3 valid:(BOOL *)a4
{
  [(NPKGizmoDatabase *)self _executeSQL:@"CREATE TABLE IF NOT EXISTS key_value_store (key TEXT NOT NULL, value TEXT);"];
  [(NPKGizmoDatabase *)self _executeSQL:@"CREATE UNIQUE INDEX IF NOT EXISTS key_value_store_idx1 ON key_value_store(key)"];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__NPKGizmoDatabase__databaseVersionExists_valid___block_invoke;
  v9[3] = &unk_2799484E8;
  v9[4] = &v10;
  v9[5] = a3;
  v9[6] = a4;
  [(NPKGizmoDatabase *)self _executeSQLQuery:@"SELECT value FROM key_value_store WHERE KEY=version" processResultsBlock:v9];
  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

void __49__NPKGizmoDatabase__databaseVersionExists_valid___block_invoke(void *a1, int a2, sqlite3_stmt *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = sqlite3_step(a3);
    v6 = a1[5];
    if (v5 == 100)
    {
      if (v6)
      {
        *v6 = 1;
      }

      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(a3, 0)}];
      *(*(a1[4] + 8) + 24) = [v7 integerValue];
      if (*(*(a1[4] + 8) + 24) < 1)
      {
        v10 = pk_General_log();
        v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

        if (v11)
        {
          v12 = pk_General_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v14 = 136446978;
            v15 = "[NPKGizmoDatabase _databaseVersionExists:valid:]_block_invoke";
            v16 = 2082;
            v17 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
            v18 = 2048;
            v19 = 4861;
            v20 = 2112;
            v21 = v7;
            _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Invalid pass DB version string: %@)", &v14, 0x2Au);
          }
        }

        _NPKAssertAbort();
      }

      v8 = a1[6];
      if (v8)
      {
        *v8 = 1;
      }
    }

    else
    {
      if (v6)
      {
        *v6 = 0;
      }

      v9 = a1[6];
      if (v9)
      {
        *v9 = 1;
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_insertDatabaseVersionRow:(int64_t)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [objc_opt_class() maxDatabaseVersion];
  if (a3 < 1 || v5 < a3)
  {
    v6 = pk_General_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

    if (v7)
    {
      v8 = pk_General_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v16 = "[NPKGizmoDatabase _insertDatabaseVersionRow:]";
        v17 = 2082;
        v18 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v19 = 2048;
        v20 = 4875;
        v21 = 2048;
        v22 = a3;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Cannot save unsupported database version %ld)", buf, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT INTO key_value_store (key, value) VALUES (version, %ld)", a3];
  v10 = [(NPKGizmoDatabase *)self _executeSQL:v9];

  if (!v10)
  {
    v11 = pk_General_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

    if (v12)
    {
      v13 = pk_General_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v16 = "[NPKGizmoDatabase _insertDatabaseVersionRow:]";
        v17 = 2082;
        v18 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v19 = 2048;
        v20 = 4877;
        v21 = 2048;
        v22 = a3;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to save version number to DB: %ld)", buf, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_updateDatabaseVersionRow:(int64_t)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [objc_opt_class() maxDatabaseVersion];
  if (a3 < 1 || v5 < a3)
  {
    v6 = pk_General_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

    if (v7)
    {
      v8 = pk_General_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v16 = "[NPKGizmoDatabase _updateDatabaseVersionRow:]";
        v17 = 2082;
        v18 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v19 = 2048;
        v20 = 4881;
        v21 = 2048;
        v22 = a3;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Cannot save unsupported database version %ld)", buf, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE key_value_store SET value=%ld WHERE key=version", a3];
  v10 = [(NPKGizmoDatabase *)self _executeSQL:v9];

  if (!v10)
  {
    v11 = pk_General_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

    if (v12)
    {
      v13 = pk_General_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v16 = "[NPKGizmoDatabase _updateDatabaseVersionRow:]";
        v17 = 2082;
        v18 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v19 = 2048;
        v20 = 4883;
        v21 = 2048;
        v22 = a3;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to save version number to DB: %ld)", buf, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_preconditionsMetForDatabaseOpen
{
  v2 = [objc_opt_class() _migrationDataSource];

  return v2 && MKBDeviceUnlockedSinceBoot() == 1;
}

- (void)_handleDatabaseChangedExternally
{
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__NPKGizmoDatabase__handleDatabaseChangedExternally__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(dbQueue, block);
}

void __52__NPKGizmoDatabase__handleDatabaseChangedExternally__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 384);
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v2 < 1)
  {
    if (v4)
    {
      v6 = pk_General_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: NPKGizmoDatabase DB changed externally, reloading", v7, 2u);
      }
    }

    [*(a1 + 32) _inQueue_teardownDB];
  }

  else
  {
    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: We were expecting a DB change, so suppressing DB reload", buf, 2u);
      }
    }

    --*(*(a1 + 32) + 384);
  }
}

- (void)teardownDB
{
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__NPKGizmoDatabase_teardownDB__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_sync(dbQueue, block);
}

uint64_t __30__NPKGizmoDatabase_teardownDB__block_invoke(uint64_t a1)
{
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: requested to teardown NPKGizmoDatabase DB", v6, 2u);
    }
  }

  return [*(a1 + 32) _inQueue_teardownDB];
}

- (void)_inQueue_teardownDB
{
  dispatch_assert_queue_V2(self->_dbQueue);
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v51 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: tearing down NPKGizmoDatabase DB", v51, 2u);
    }
  }

  deleteStatement = self->_deleteStatement;
  if (deleteStatement)
  {
    sqlite3_finalize(deleteStatement);
  }

  self->_deleteStatement = 0;
  insertStatement = self->_insertStatement;
  if (insertStatement)
  {
    sqlite3_finalize(insertStatement);
  }

  self->_insertStatement = 0;
  insertDiffStatement = self->_insertDiffStatement;
  if (insertDiffStatement)
  {
    sqlite3_finalize(insertDiffStatement);
  }

  self->_insertDiffStatement = 0;
  selectPassDataStatement = self->_selectPassDataStatement;
  if (selectPassDataStatement)
  {
    sqlite3_finalize(selectPassDataStatement);
  }

  self->_selectPassDataStatement = 0;
  selectPassAndImageSetsDataStatement = self->_selectPassAndImageSetsDataStatement;
  if (selectPassAndImageSetsDataStatement)
  {
    sqlite3_finalize(selectPassAndImageSetsDataStatement);
  }

  self->_selectPassAndImageSetsDataStatement = 0;
  selectPassExitsStatement = self->_selectPassExitsStatement;
  if (selectPassExitsStatement)
  {
    sqlite3_finalize(selectPassExitsStatement);
  }

  self->_selectPassExitsStatement = 0;
  selectPassDiffStatement = self->_selectPassDiffStatement;
  if (selectPassDiffStatement)
  {
    sqlite3_finalize(selectPassDiffStatement);
  }

  self->_selectPassDiffStatement = 0;
  updateDeletePendingStatement = self->_updateDeletePendingStatement;
  if (updateDeletePendingStatement)
  {
    sqlite3_finalize(updateDeletePendingStatement);
  }

  self->_updateDeletePendingStatement = 0;
  selectDeletePendingStatement = self->_selectDeletePendingStatement;
  if (selectDeletePendingStatement)
  {
    sqlite3_finalize(selectDeletePendingStatement);
  }

  self->_selectDeletePendingStatement = 0;
  updatePreferredAIDStatement = self->_updatePreferredAIDStatement;
  if (updatePreferredAIDStatement)
  {
    sqlite3_finalize(updatePreferredAIDStatement);
  }

  self->_updatePreferredAIDStatement = 0;
  selectPreferredAIDStatement = self->_selectPreferredAIDStatement;
  if (selectPreferredAIDStatement)
  {
    sqlite3_finalize(selectPreferredAIDStatement);
  }

  self->_selectPreferredAIDStatement = 0;
  insertTransactionStatement = self->_insertTransactionStatement;
  if (insertTransactionStatement)
  {
    sqlite3_finalize(insertTransactionStatement);
  }

  self->_insertTransactionStatement = 0;
  removeTransactionStatement = self->_removeTransactionStatement;
  if (removeTransactionStatement)
  {
    sqlite3_finalize(removeTransactionStatement);
  }

  self->_removeTransactionStatement = 0;
  removeTransactionWithServiceIdentifier = self->_removeTransactionWithServiceIdentifier;
  if (removeTransactionWithServiceIdentifier)
  {
    sqlite3_finalize(removeTransactionWithServiceIdentifier);
  }

  self->_removeTransactionWithServiceIdentifier = 0;
  selectTransactionsStatement = self->_selectTransactionsStatement;
  if (selectTransactionsStatement)
  {
    sqlite3_finalize(selectTransactionsStatement);
  }

  self->_selectTransactionsStatement = 0;
  selectTransactionsStatementWithSource = self->_selectTransactionsStatementWithSource;
  if (selectTransactionsStatementWithSource)
  {
    sqlite3_finalize(selectTransactionsStatementWithSource);
  }

  self->_selectTransactionsStatementWithSource = 0;
  selectTransactionsStatementWithoutSource = self->_selectTransactionsStatementWithoutSource;
  if (selectTransactionsStatementWithoutSource)
  {
    sqlite3_finalize(selectTransactionsStatementWithoutSource);
  }

  self->_selectTransactionsStatementWithoutSource = 0;
  selectTransactionWithIdentifierStatement = self->_selectTransactionWithIdentifierStatement;
  if (selectTransactionWithIdentifierStatement)
  {
    sqlite3_finalize(selectTransactionWithIdentifierStatement);
  }

  self->_selectTransactionWithIdentifierStatement = 0;
  selectTransactionWithServiceIdentifierStatement = self->_selectTransactionWithServiceIdentifierStatement;
  if (selectTransactionWithServiceIdentifierStatement)
  {
    sqlite3_finalize(selectTransactionWithServiceIdentifierStatement);
  }

  self->_selectTransactionWithServiceIdentifierStatement = 0;
  insertTransactionSourceIdentifierForPassStatement = self->_insertTransactionSourceIdentifierForPassStatement;
  if (insertTransactionSourceIdentifierForPassStatement)
  {
    sqlite3_finalize(insertTransactionSourceIdentifierForPassStatement);
  }

  self->_insertTransactionSourceIdentifierForPassStatement = 0;
  selectTransactionSourceIdentifierForTransactionWithIdentifierStatement = self->_selectTransactionSourceIdentifierForTransactionWithIdentifierStatement;
  if (selectTransactionSourceIdentifierForTransactionWithIdentifierStatement)
  {
    sqlite3_finalize(selectTransactionSourceIdentifierForTransactionWithIdentifierStatement);
  }

  self->_selectTransactionSourceIdentifierForTransactionWithIdentifierStatement = 0;
  selectTransactionSourceIdentifierForTransactionWithServiceIdentifierStatement = self->_selectTransactionSourceIdentifierForTransactionWithServiceIdentifierStatement;
  if (selectTransactionSourceIdentifierForTransactionWithServiceIdentifierStatement)
  {
    sqlite3_finalize(selectTransactionSourceIdentifierForTransactionWithServiceIdentifierStatement);
  }

  self->_selectTransactionSourceIdentifierForTransactionWithServiceIdentifierStatement = 0;
  selectTransactionSourceIdentifierForPassUniqueIdentifierStatement = self->_selectTransactionSourceIdentifierForPassUniqueIdentifierStatement;
  if (selectTransactionSourceIdentifierForPassUniqueIdentifierStatement)
  {
    sqlite3_finalize(selectTransactionSourceIdentifierForPassUniqueIdentifierStatement);
  }

  self->_selectTransactionSourceIdentifierForPassUniqueIdentifierStatement = 0;
  selectPassUniqueIdentifierForTransactionSourceIdentifierStatement = self->_selectPassUniqueIdentifierForTransactionSourceIdentifierStatement;
  if (selectPassUniqueIdentifierForTransactionSourceIdentifierStatement)
  {
    sqlite3_finalize(selectPassUniqueIdentifierForTransactionSourceIdentifierStatement);
  }

  self->_selectPassUniqueIdentifierForTransactionSourceIdentifierStatement = 0;
  deleteTransactionSourceIdentifierForPassStatement = self->_deleteTransactionSourceIdentifierForPassStatement;
  if (deleteTransactionSourceIdentifierForPassStatement)
  {
    sqlite3_finalize(deleteTransactionSourceIdentifierForPassStatement);
  }

  self->_deleteTransactionSourceIdentifierForPassStatement = 0;
  deleteTransactionsForTransactionSourceStatement = self->_deleteTransactionsForTransactionSourceStatement;
  if (deleteTransactionsForTransactionSourceStatement)
  {
    sqlite3_finalize(deleteTransactionsForTransactionSourceStatement);
  }

  self->_deleteTransactionsForTransactionSourceStatement = 0;
  trimTransactionsForTransactionSourceStatement = self->_trimTransactionsForTransactionSourceStatement;
  if (trimTransactionsForTransactionSourceStatement)
  {
    sqlite3_finalize(trimTransactionsForTransactionSourceStatement);
  }

  self->_trimTransactionsForTransactionSourceStatement = 0;
  selectTransitAppletStateForPassStatement = self->_selectTransitAppletStateForPassStatement;
  if (selectTransitAppletStateForPassStatement)
  {
    sqlite3_finalize(selectTransitAppletStateForPassStatement);
  }

  self->_selectTransitAppletStateForPassStatement = 0;
  updateTransitAppletStateForPassStatement = self->_updateTransitAppletStateForPassStatement;
  if (updateTransitAppletStateForPassStatement)
  {
    sqlite3_finalize(updateTransitAppletStateForPassStatement);
  }

  self->_updateTransitAppletStateForPassStatement = 0;
  insertEphemeralTransactionStatement = self->_insertEphemeralTransactionStatement;
  if (insertEphemeralTransactionStatement)
  {
    sqlite3_finalize(insertEphemeralTransactionStatement);
  }

  self->_insertEphemeralTransactionStatement = 0;
  deleteEphemeralTransactionByTransactionSourceIdentifierStatement = self->_deleteEphemeralTransactionByTransactionSourceIdentifierStatement;
  if (deleteEphemeralTransactionByTransactionSourceIdentifierStatement)
  {
    sqlite3_finalize(deleteEphemeralTransactionByTransactionSourceIdentifierStatement);
  }

  self->_deleteEphemeralTransactionByTransactionSourceIdentifierStatement = 0;
  currentEphemeralTransactionIdentifierStatement = self->_currentEphemeralTransactionIdentifierStatement;
  if (currentEphemeralTransactionIdentifierStatement)
  {
    sqlite3_finalize(currentEphemeralTransactionIdentifierStatement);
  }

  self->_currentEphemeralTransactionIdentifierStatement = 0;
  selectLastAddValueAmountForPassStatement = self->_selectLastAddValueAmountForPassStatement;
  if (selectLastAddValueAmountForPassStatement)
  {
    sqlite3_finalize(selectLastAddValueAmountForPassStatement);
  }

  self->_selectLastAddValueAmountForPassStatement = 0;
  updateLastAddValueAmountForPassStatement = self->_updateLastAddValueAmountForPassStatement;
  if (updateLastAddValueAmountForPassStatement)
  {
    sqlite3_finalize(updateLastAddValueAmountForPassStatement);
  }

  self->_updateLastAddValueAmountForPassStatement = 0;
  selectPendingAddValueDateForPassStatement = self->_selectPendingAddValueDateForPassStatement;
  if (selectPendingAddValueDateForPassStatement)
  {
    sqlite3_finalize(selectPendingAddValueDateForPassStatement);
  }

  self->_selectPendingAddValueDateForPassStatement = 0;
  updatePendingAddValueDateForPassStatement = self->_updatePendingAddValueDateForPassStatement;
  if (updatePendingAddValueDateForPassStatement)
  {
    sqlite3_finalize(updatePendingAddValueDateForPassStatement);
  }

  self->_updatePendingAddValueDateForPassStatement = 0;
  selectBalancesForPassStatement = self->_selectBalancesForPassStatement;
  if (selectBalancesForPassStatement)
  {
    sqlite3_finalize(selectBalancesForPassStatement);
  }

  self->_selectBalancesForPassStatement = 0;
  updateBalancesForPassStatement = self->_updateBalancesForPassStatement;
  if (updateBalancesForPassStatement)
  {
    sqlite3_finalize(updateBalancesForPassStatement);
  }

  self->_updateBalancesForPassStatement = 0;
  insertSubcredentialsStatement = self->_insertSubcredentialsStatement;
  if (insertSubcredentialsStatement)
  {
    sqlite3_finalize(insertSubcredentialsStatement);
  }

  self->_insertSubcredentialsStatement = 0;
  deleteSubcredentialsStatement = self->_deleteSubcredentialsStatement;
  if (deleteSubcredentialsStatement)
  {
    sqlite3_finalize(deleteSubcredentialsStatement);
  }

  self->_deleteSubcredentialsStatement = 0;
  deleteAllSubcredentialsForPassUniqueIDStatement = self->_deleteAllSubcredentialsForPassUniqueIDStatement;
  if (deleteAllSubcredentialsForPassUniqueIDStatement)
  {
    sqlite3_finalize(deleteAllSubcredentialsForPassUniqueIDStatement);
  }

  self->_deleteAllSubcredentialsForPassUniqueIDStatement = 0;
  database = self->_database;
  if (database)
  {
    sqlite3_close(database);
  }

  self->_database = 0;
  manifest = self->_manifest;
  self->_manifest = 0;

  passDescriptions = self->_passDescriptions;
  self->_passDescriptions = 0;

  libraryHashes = self->_libraryHashes;
  self->_libraryHashes = 0;

  self->_passDBIsAvailable = 0;
  [(NPKGizmoDatabase *)self _notifyDatabaseChangedWithNoop:0];
}

- (void)_handleFirstUnlock
{
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: First unlock detected", v6, 2u);
    }
  }

  if ([(NPKGizmoDatabase *)self _preconditionsMetForDatabaseOpen])
  {
    [(NPKGizmoDatabase *)self _attemptDatabaseOpen];
  }
}

- (void)_handleHasMigrationDataSource
{
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Have migration data source", v6, 2u);
    }
  }

  if ([(NPKGizmoDatabase *)self _preconditionsMetForDatabaseOpen])
  {
    [(NPKGizmoDatabase *)self _attemptDatabaseOpen];
  }
}

- (void)_attemptDatabaseOpen
{
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__NPKGizmoDatabase__attemptDatabaseOpen__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(dbQueue, block);
}

uint64_t __40__NPKGizmoDatabase__attemptDatabaseOpen__block_invoke(uint64_t result)
{
  if (!*(*(result + 32) + 8))
  {
    v8 = v1;
    v9 = v2;
    v3 = result;
    v4 = pk_General_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = pk_General_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Retrying opening database", v7, 2u);
      }
    }

    return [*(v3 + 32) database];
  }

  return result;
}

- (BOOL)_table:(id)a3 containsColumn:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v29 = v7;
      v30 = 2112;
      v31 = v6;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Start search column:%@ in table:%@", buf, 0x16u);
    }
  }

  ppStmt = 0;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA table_info('%@')", v6];
  if (sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [v11 UTF8String], -1, &ppStmt, 0))
  {
    v12 = pk_General_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

    if (v13)
    {
      v14 = pk_General_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136447234;
        v29 = "[NPKGizmoDatabase _table:containsColumn:]";
        v30 = 2082;
        v31 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v32 = 2048;
        v33 = 5060;
        v34 = 2112;
        v35 = v7;
        v36 = 2112;
        v37 = v6;
        _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare statement to find column:%@ in table:%@)", buf, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  while (1)
  {
    if (sqlite3_step(ppStmt) != 100)
    {
      v20 = pk_General_log();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

      v22 = 0;
      if (v21)
      {
        v23 = pk_General_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v29 = v7;
          v30 = 2112;
          v31 = v6;
          _os_log_impl(&dword_25B300000, v23, OS_LOG_TYPE_DEFAULT, "Notice: Could not find column:%@ in table:%@", buf, 0x16u);
        }

        v22 = 0;
      }

      goto LABEL_11;
    }

    v17 = sqlite3_column_text(ppStmt, 1);
    if (v17)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithCString:v17 encoding:4];
      v19 = [v7 isEqualToString:v18];

      if (v19)
      {
        break;
      }
    }
  }

  v24 = pk_General_log();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

  if (v25)
  {
    v26 = pk_General_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v29 = v7;
      v30 = 2112;
      v31 = v6;
      _os_log_impl(&dword_25B300000, v26, OS_LOG_TYPE_DEFAULT, "Notice: found column:%@ in table:%@", buf, 0x16u);
    }
  }

  v22 = 1;
LABEL_11:
  sqlite3_finalize(ppStmt);

  v15 = *MEMORY[0x277D85DE8];
  return v22;
}

@end