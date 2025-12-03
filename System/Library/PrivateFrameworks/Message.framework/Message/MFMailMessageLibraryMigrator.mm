@interface MFMailMessageLibraryMigrator
+ (OS_os_log)log;
- (BOOL)_checkForeignKeysWithConnection:(id)connection;
- (BOOL)_runAddBusinessColumnsUpgradeStepForConnection:(id)connection db:(sqlite3 *)db;
- (BOOL)migrateWithDatabaseConnection:(id)connection schema:(id)schema;
- (MFMailMessageLibraryMigrator)initWithDelegate:(id)delegate;
- (MFMailMessageLibraryMigratorDelegate)delegate;
- (int64_t)_checkContentProtectionStateForUpgradeStartingFromVersion:(int)version;
- (void)addPostMigrationBlock:(id)block;
- (void)contentProtectionStateChanged:(int64_t)changed previousState:(int64_t)state;
- (void)detachProtectedDatabaseWithConnection:(id)connection;
- (void)resetTTRPromptAndForceReindex;
- (void)runPostMigrationBlocksWithConnection:(id)connection;
@end

@implementation MFMailMessageLibraryMigrator

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__MFMailMessageLibraryMigrator_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_17 != -1)
  {
    dispatch_once(&log_onceToken_17, block);
  }

  v2 = log_log_17;

  return v2;
}

void __35__MFMailMessageLibraryMigrator_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_17;
  log_log_17 = v1;
}

- (MFMailMessageLibraryMigrator)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = MFMailMessageLibraryMigrator;
  v5 = [(MFMailMessageLibraryMigrator *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.message.MFMailMessageLibraryMigrator.contentProtectionQueue", v7);
    contentProtectionQueue = v6->_contentProtectionQueue;
    v6->_contentProtectionQueue = v8;

    v10 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
    migrationState = v6->_migrationState;
    v6->_migrationState = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    postMigrationBlocks = v6->_postMigrationBlocks;
    v6->_postMigrationBlocks = v12;
  }

  return v6;
}

- (BOOL)migrateWithDatabaseConnection:(id)connection schema:(id)schema
{
  v34 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  schemaCopy = schema;
  if (connectionCopy && ([connectionCopy isValid] & 1) != 0)
  {
    v29 = 0;
    v8 = [connectionCopy performWithOptions:6 transactionError:&v29 block:&__block_literal_global_41];
    v9 = v29;
    if (v8)
    {
      v10 = _LibraryVersion([connectionCopy sqlDB]);
      if (v10 == 231002)
      {
        v11 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v31 = 231002;
          v12 = "Database is already at current version %lld. No migration needed.";
          v13 = v11;
          v14 = 12;
LABEL_32:
          _os_log_impl(&dword_1B0389000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
          goto LABEL_33;
        }

        goto LABEL_33;
      }

      v17 = +[MFMailMessageLibraryMigrator log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B0389000, v17, OS_LOG_TYPE_DEFAULT, "Starting migration", buf, 2u);
      }

      [connectionCopy executeStatementString:@"PRAGMA foreign_keys = OFF;" errorMessage:@"disabling foreign keys"];
      if (!_os_feature_enabled_impl() || v10 <= 224002)
      {
        contentProtectionQueue = self->_contentProtectionQueue;
        EFRegisterContentProtectionObserver();
      }

      v20 = 0;
      *&v18 = 134218240;
      v28 = v18;
      do
      {
        migrationState = [(MFMailMessageLibraryMigrator *)self migrationState];
        [migrationState lockWhenCondition:0];

        migrationState2 = [(MFMailMessageLibraryMigrator *)self migrationState];
        [migrationState2 unlock];

        v23 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v28;
          v31 = v10;
          v32 = 2048;
          v33 = v20;
          _os_log_impl(&dword_1B0389000, v23, OS_LOG_TYPE_DEFAULT, "Starting migration steps from version %lld, attempt %lu", buf, 0x16u);
        }

        v24 = [(MFMailMessageLibraryMigrator *)self _runMigrationStepsFromVersion:v10 connection:connectionCopy schema:schemaCopy];
        if (v24 != 1)
        {
          break;
        }
      }

      while (v20++ < 5);
      if (!_os_feature_enabled_impl() || v10 <= 224002)
      {
        EFUnregisterContentProtectionObserver();
      }

      [connectionCopy executeStatementString:@"PRAGMA foreign_keys = ON;" errorMessage:@"reënable foreign keys"];
      if (!v24)
      {
        v11 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v12 = "Finished migration";
          v13 = v11;
          v14 = 2;
          goto LABEL_32;
        }

LABEL_33:
        v15 = 1;
        goto LABEL_34;
      }

      v11 = +[MFMailMessageLibraryMigrator log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [MFMailMessageLibraryMigrator migrateWithDatabaseConnection:v11 schema:?];
      }
    }

    else
    {
      v11 = +[MFMailMessageLibraryMigrator log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        ef_publicDescription = [v9 ef_publicDescription];
        [(MFMailMessageLibraryMigrator *)ef_publicDescription migrateWithDatabaseConnection:buf schema:v11];
      }
    }

    v15 = 0;
LABEL_34:

    goto LABEL_35;
  }

  v9 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [MFMailMessageLibraryMigrator migrateWithDatabaseConnection:schema:];
  }

  v15 = 0;
LABEL_35:

  v26 = *MEMORY[0x1E69E9840];
  return v15;
}

BOOL __69__MFMailMessageLibraryMigrator_migrateWithDatabaseConnection_schema___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 sqlDB];
  v4 = sqlite3_exec_retry(v3, "PRAGMA page_size = 4096;", 0, 0, 0);
  _HandleSQLiteError(v3, @"setting page_size");
  if (v4 || (v5 = sqlite3_exec_retry(v3, "PRAGMA auto_vacuum=2", 0, 0, 0), _HandleSQLiteError(v3, @"setting auto_vacuum"), v5))
  {
    v6 = 0;
  }

  else
  {
    v6 = sqlite3_exec_retry(v3, "PRAGMA journal_mode=WAL", 0, 0, 0) == 0;
    _HandleSQLiteError(v3, @"setting journal mode");
  }

  return v6;
}

void __80__MFMailMessageLibraryMigrator__runMigrationStepsFromVersion_connection_schema___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained detachProtectedDatabaseWithConnection:v3];
}

uint64_t __80__MFMailMessageLibraryMigrator__runMigrationStepsFromVersion_connection_schema___block_invoke_2(uint64_t a1, void *a2)
{
  v297 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 sqlDB];
  v5 = _LibraryVersion(v4);
  v6 = a1 + 56;
  *(*(*(a1 + 56) + 8) + 24) = v5;
  v7 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v5;
    _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_DEFAULT, "Starting write transaction at version %lld", buf, 0xCu);
  }

  if (v5 > 179999)
  {
    if (v5 > 210000)
    {
      if (v5 > 222000)
      {
        if (v5 <= 224001)
        {
          if (v5 > 222004)
          {
            if (v5 > 222006)
            {
              if (v5 != 222007)
              {
                if (v5 != 224001)
                {
                  goto LABEL_92;
                }

                goto LABEL_704;
              }

LABEL_701:
              *(*(*v6 + 8) + 24) = 222007;
              v243 = +[MFMailMessageLibraryMigrator log];
              if (os_log_type_enabled(v243, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                *&buf[4] = 222007;
                *&buf[12] = 2080;
                *&buf[14] = "CrystalCRedoBusinessGroupingAgain";
                _os_log_impl(&dword_1B0389000, v243, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
              }

              *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B4E0] runWithConnection:*(a1 + 48)] == 0;
              _HandleSQLiteError(v4, @"Add is_icloud_cleanup column in threads table");
              if (*(*(*(a1 + 64) + 8) + 24) != 1)
              {
                goto LABEL_747;
              }

LABEL_704:
              *(*(*v6 + 8) + 24) = 224001;
              v244 = +[MFMailMessageLibraryMigrator log];
              if (os_log_type_enabled(v244, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                *&buf[4] = 224001;
                *&buf[12] = 2080;
                *&buf[14] = "CrystalEiCloudCleanupUpgradeStep";
                _os_log_impl(&dword_1B0389000, v244, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
              }

              if (_protectedIndexHasBeenInitialized(*(a1 + 48)))
              {
                v245 = *(a1 + 48);
                v290 = 0;
                v246 = [MEMORY[0x1E699B3F0] runWithConnection:v245 protectedDatabaseName:@"protected" error:&v290];
                v247 = v290;
                *(*(*(a1 + 64) + 8) + 24) = v246;
                if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
                {
                  v274 = +[MFMailMessageLibraryMigrator log];
                  if (os_log_type_enabled(v274, OS_LOG_TYPE_ERROR))
                  {
                    __80__MFMailMessageLibraryMigrator__runMigrationStepsFromVersion_connection_schema___block_invoke_2_cold_1();
                  }

                  goto LABEL_747;
                }

                WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 24));
                v249 = [WeakRetained journalManagerForMailMessageLibraryMigrator:*(a1 + 40)];

                v250 = *(a1 + 40);
                v288[0] = MEMORY[0x1E69E9820];
                v288[1] = 3221225472;
                v288[2] = __80__MFMailMessageLibraryMigrator__runMigrationStepsFromVersion_connection_schema___block_invoke_427;
                v288[3] = &unk_1E7AA6578;
                v251 = v249;
                v289 = v251;
                [v250 addPostMigrationBlock:v288];
              }

LABEL_709:
              *(*(*v6 + 8) + 24) = 224002;
              v252 = +[MFMailMessageLibraryMigrator log];
              if (os_log_type_enabled(v252, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                *&buf[4] = 224002;
                *&buf[12] = 2080;
                *&buf[14] = "CrystalEAddBrandIndicatorEvidenceTableUpgradeStep";
                _os_log_impl(&dword_1B0389000, v252, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
              }

              goto LABEL_712;
            }

            if (v5 != 222005)
            {
LABEL_698:
              *(*(*v6 + 8) + 24) = 222006;
              v242 = +[MFMailMessageLibraryMigrator log];
              if (os_log_type_enabled(v242, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                *&buf[4] = 222006;
                *&buf[12] = 2080;
                *&buf[14] = "CrystalCRedoBusinessGrouping";
                _os_log_impl(&dword_1B0389000, v242, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
              }

              *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 40) _runAddBusinessColumnsUpgradeStepForConnection:*(a1 + 48) db:v4];
              if (*(*(*(a1 + 64) + 8) + 24) != 1)
              {
                goto LABEL_747;
              }

              goto LABEL_701;
            }

LABEL_695:
            *(*(*v6 + 8) + 24) = 222005;
            v241 = +[MFMailMessageLibraryMigrator log];
            if (os_log_type_enabled(v241, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              *&buf[4] = 222005;
              *&buf[12] = 2080;
              *&buf[14] = "CrystalCNullableBusinessAddressCommentColumnUpgradeStep";
              _os_log_impl(&dword_1B0389000, v241, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
            }

            *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 40) _runAddBusinessColumnsUpgradeStepForConnection:*(a1 + 48) db:v4];
            if (*(*(*(a1 + 64) + 8) + 24) != 1)
            {
              goto LABEL_747;
            }

            goto LABEL_698;
          }

          if (v5 > 222002)
          {
            if (v5 != 222003)
            {
LABEL_692:
              *(*(*v6 + 8) + 24) = 222004;
              v240 = +[MFMailMessageLibraryMigrator log];
              if (os_log_type_enabled(v240, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                *&buf[4] = 222004;
                *&buf[12] = 2080;
                *&buf[14] = "CrystalCAddBusinessColumnsAndCommonPrefixGroupingUpgradeStep";
                _os_log_impl(&dword_1B0389000, v240, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
              }

              goto LABEL_695;
            }

LABEL_689:
            *(*(*v6 + 8) + 24) = 222003;
            v239 = +[MFMailMessageLibraryMigrator log];
            if (os_log_type_enabled(v239, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              *&buf[4] = 222003;
              *&buf[12] = 2080;
              *&buf[14] = "CrystalCAddLastModifiedUpgradeStep";
              _os_log_impl(&dword_1B0389000, v239, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
            }

            goto LABEL_692;
          }

          if (v5 != 222001)
          {
LABEL_686:
            *(*(*v6 + 8) + 24) = 222002;
            v238 = +[MFMailMessageLibraryMigrator log];
            if (os_log_type_enabled(v238, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              *&buf[4] = 222002;
              *&buf[12] = 2080;
              *&buf[14] = "CrystalCAddBrandIDColumnUpgradeStep";
              _os_log_impl(&dword_1B0389000, v238, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
            }

            *(*(*(a1 + 64) + 8) + 24) = [MFAddLastModifiedColumnUpgradeStep runWithConnection:*(a1 + 48)]== 0;
            _HandleSQLiteError(v4, @"Add last_modified column in business_addresses");
            if (*(*(*(a1 + 64) + 8) + 24) != 1)
            {
              goto LABEL_747;
            }

            goto LABEL_689;
          }

LABEL_681:
          *(*(*v6 + 8) + 24) = 222001;
          v237 = +[MFMailMessageLibraryMigrator log];
          if (os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            *&buf[4] = 222001;
            *&buf[12] = 2080;
            *&buf[14] = "CrystalCAddCategorizationState";
            _os_log_impl(&dword_1B0389000, v237, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
          }

          if (v5 > 220004)
          {
            if (_protectedIndexHasBeenInitialized(*(a1 + 48)))
            {
              *(*(*(a1 + 64) + 8) + 24) = [MFMailMessageLibraryAddBrandIDColumnUpgradeStep runWithConnection:*(a1 + 48) databaseName:@"protected"]== 0;
              _HandleSQLiteError(v4, @"Failed to add brand_id column to businesses table");
              if (*(*(*(a1 + 64) + 8) + 24) != 1)
              {
                goto LABEL_747;
              }
            }
          }

          goto LABEL_686;
        }

        if (v5 <= 230002)
        {
          if (v5 > 230000)
          {
            if (v5 != 230001)
            {
LABEL_719:
              *(*(*v6 + 8) + 24) = 230002;
              v259 = +[MFMailMessageLibraryMigrator log];
              if (os_log_type_enabled(v259, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                *&buf[4] = 230002;
                *&buf[12] = 2080;
                *&buf[14] = "LuckAddIsUrgent";
                _os_log_impl(&dword_1B0389000, v259, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
              }

              goto LABEL_722;
            }

LABEL_715:
            *(*(*v6 + 8) + 24) = 230001;
            v254 = +[MFMailMessageLibraryMigrator log];
            if (os_log_type_enabled(v254, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              *&buf[4] = 230001;
              *&buf[12] = 2080;
              *&buf[14] = "LuckRemoveUnusedIndices";
              _os_log_impl(&dword_1B0389000, v254, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
            }

            v255 = *(a1 + 48);
            v287 = 0;
            v256 = [MEMORY[0x1E699B448] runWithConnection:v255 error:&v287];
            v257 = v287;
            v258 = v257;
            *(*(*(a1 + 64) + 8) + 24) = v256;
            if (*(*(*(a1 + 64) + 8) + 24) != 1)
            {
              v273 = +[MFMailMessageLibraryMigrator log];
              if (os_log_type_enabled(v273, OS_LOG_TYPE_ERROR))
              {
                __80__MFMailMessageLibraryMigrator__runMigrationStepsFromVersion_connection_schema___block_invoke_2_cold_2();
              }

              goto LABEL_747;
            }

            goto LABEL_719;
          }

          if (v5 == 224002)
          {
            goto LABEL_709;
          }

          if (v5 == 224003)
          {
LABEL_712:
            *(*(*v6 + 8) + 24) = 224003;
            v253 = +[MFMailMessageLibraryMigrator log];
            if (os_log_type_enabled(v253, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              *&buf[4] = 224003;
              *&buf[12] = 2080;
              *&buf[14] = "CrystalEClassCDatabaseUpgradeStep";
              _os_log_impl(&dword_1B0389000, v253, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
            }

            _removeUnsedIndices(*(a1 + 48));
            goto LABEL_715;
          }
        }

        else
        {
          if (v5 <= 230004)
          {
            if (v5 != 230003)
            {
LABEL_725:
              *(*(*v6 + 8) + 24) = 230004;
              v261 = +[MFMailMessageLibraryMigrator log];
              if (os_log_type_enabled(v261, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                *&buf[4] = 230004;
                *&buf[12] = 2080;
                *&buf[14] = "LuckDonateMessageIDHeader";
                _os_log_impl(&dword_1B0389000, v261, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
              }

LABEL_728:
              *(*(*v6 + 8) + 24) = 230005;
              v262 = +[MFMailMessageLibraryMigrator log];
              if (os_log_type_enabled(v262, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                *&buf[4] = 230005;
                *&buf[12] = 2080;
                *&buf[14] = "LuckDonateMessageIsAuthenticated";
                _os_log_impl(&dword_1B0389000, v262, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
              }

              v263 = *(a1 + 48);
              v286 = 0;
              v264 = [MEMORY[0x1E699B440] runWithConnection:v263 error:&v286];
              v265 = v286;
              *(*(*(a1 + 64) + 8) + 24) = v264;
              _HandleSQLiteError(v4, @"Adding indexing analytics tables");
              v266 = *(*(*(a1 + 64) + 8) + 24);

              if ((v266 & 1) == 0)
              {
                goto LABEL_747;
              }

              goto LABEL_731;
            }

LABEL_722:
            *(*(*v6 + 8) + 24) = 230003;
            v260 = +[MFMailMessageLibraryMigrator log];
            if (os_log_type_enabled(v260, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              *&buf[4] = 230003;
              *&buf[12] = 2080;
              *&buf[14] = "LuckAppEntityProtectionClass";
              _os_log_impl(&dword_1B0389000, v260, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
            }

            goto LABEL_725;
          }

          switch(v5)
          {
            case 230005:
              goto LABEL_728;
            case 231001:
LABEL_731:
              *(*(*v6 + 8) + 24) = 231001;
              v267 = +[MFMailMessageLibraryMigrator log];
              if (os_log_type_enabled(v267, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                *&buf[4] = 231001;
                *&buf[12] = 2080;
                *&buf[14] = "LuckBAddIndexingAnalytics";
                _os_log_impl(&dword_1B0389000, v267, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
              }

              v268 = *(a1 + 48);
              v285 = 0;
              v269 = [MEMORY[0x1E699B460] runWithConnection:v268 error:&v285];
              v270 = v285;
              *(*(*(a1 + 64) + 8) + 24) = v269;
              _HandleSQLiteError(v4, @"Adding messageID header");
              v271 = *(*(*(a1 + 64) + 8) + 24);

              if ((v271 & 1) == 0)
              {
                goto LABEL_747;
              }

LABEL_734:
              *(*(*v6 + 8) + 24) = 231002;
              v272 = +[MFMailMessageLibraryMigrator log];
              if (os_log_type_enabled(v272, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                *&buf[4] = 231002;
                _os_log_impl(&dword_1B0389000, v272, OS_LOG_TYPE_DEFAULT, "Migrated to current version %lu", buf, 0xCu);
              }

              *(*(*(a1 + 64) + 8) + 24) = 1;
              goto LABEL_747;
            case 231002:
              goto LABEL_734;
          }
        }
      }

      else
      {
        if (v5 > 212000)
        {
          switch(v5)
          {
            case 220001:
              goto LABEL_609;
            case 220002:
              goto LABEL_612;
            case 220003:
              goto LABEL_616;
            case 220004:
              goto LABEL_619;
            case 220005:
              goto LABEL_622;
            case 220006:
              goto LABEL_92;
            case 220007:
              goto LABEL_625;
            case 220008:
              goto LABEL_628;
            case 220009:
              goto LABEL_631;
            case 220010:
              goto LABEL_634;
            case 220011:
              goto LABEL_637;
            case 220012:
              goto LABEL_640;
            case 220013:
              goto LABEL_643;
            case 220014:
              goto LABEL_646;
            case 220015:
              goto LABEL_649;
            case 220016:
              goto LABEL_652;
            case 220017:
              goto LABEL_656;
            case 220018:
              goto LABEL_659;
            case 220019:
              goto LABEL_662;
            case 220020:
              goto LABEL_665;
            case 220021:
              goto LABEL_668;
            case 220022:
              goto LABEL_671;
            case 220023:
              goto LABEL_675;
            case 220024:
              goto LABEL_678;
            default:
              if (v5 == 212001)
              {
                goto LABEL_603;
              }

              if (v5 != 214001)
              {
                goto LABEL_92;
              }

              goto LABEL_606;
          }
        }

        if (v5 <= 210003)
        {
          if (v5 != 210001)
          {
            if (v5 != 210002)
            {
              goto LABEL_590;
            }

            goto LABEL_587;
          }

LABEL_584:
          *(*(*v6 + 8) + 24) = 210001;
          v200 = +[MFMailMessageLibraryMigrator log];
          if (os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            *&buf[4] = 210001;
            *&buf[12] = 2080;
            *&buf[14] = "DawnDropReadAndSendLaterTables";
            _os_log_impl(&dword_1B0389000, v200, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
          }

          *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B428] runWithConnection:*(a1 + 48)] == 0;
          _HandleSQLiteError(v4, @"Adding download state to message_global_data");
          if (*(*(*(a1 + 64) + 8) + 24) != 1)
          {
            goto LABEL_747;
          }

LABEL_587:
          *(*(*v6 + 8) + 24) = 210002;
          v201 = +[MFMailMessageLibraryMigrator log];
          if (os_log_type_enabled(v201, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            *&buf[4] = 210002;
            *&buf[12] = 2080;
            *&buf[14] = "DawnAddDownloadStateToMessageGlobalDataUpgradeStep";
            _os_log_impl(&dword_1B0389000, v201, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
          }

LABEL_590:
          *(*(*v6 + 8) + 24) = 210003;
          v202 = +[MFMailMessageLibraryMigrator log];
          if (os_log_type_enabled(v202, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            *&buf[4] = 210003;
            *&buf[12] = 2080;
            *&buf[14] = "DawnEncryptedMailAddressMetadataUpgradeStep";
            _os_log_impl(&dword_1B0389000, v202, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
          }

          *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B450] runWithConnection:*(a1 + 48)] == 0;
          _HandleSQLiteError(v4, @"Adding download state to message_global_data");
          if (*(*(*(a1 + 64) + 8) + 24) != 1)
          {
            goto LABEL_747;
          }

          goto LABEL_593;
        }

        switch(v5)
        {
          case 210004:
LABEL_593:
            *(*(*v6 + 8) + 24) = 210004;
            v203 = +[MFMailMessageLibraryMigrator log];
            if (os_log_type_enabled(v203, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              *&buf[4] = 210004;
              *&buf[12] = 2080;
              *&buf[14] = "DawnMailboxDatabaseIDInActionsUpgradeStep";
              _os_log_impl(&dword_1B0389000, v203, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
            }

            *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B560] runWithConnection:*(a1 + 48)] == 0;
            _HandleSQLiteError(v4, @"Removing messages_read_index");
            if (*(*(*(a1 + 64) + 8) + 24) != 1)
            {
              goto LABEL_747;
            }

            goto LABEL_596;
          case 210005:
LABEL_596:
            *(*(*v6 + 8) + 24) = 210005;
            v204 = +[MFMailMessageLibraryMigrator log];
            if (os_log_type_enabled(v204, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              *&buf[4] = 210005;
              *&buf[12] = 2080;
              *&buf[14] = "DawnDropMessagesReadIndexUpgradeStep";
              _os_log_impl(&dword_1B0389000, v204, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
            }

            if (v5 > 210000)
            {
              *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B6F8] runWithConnection:*(a1 + 48)] == 0;
              _HandleSQLiteError(v4, @"Truncate mailboxes to 10K messages");
              if (*(*(*(a1 + 64) + 8) + 24) != 1)
              {
                goto LABEL_747;
              }
            }

LABEL_600:
            *(*(*v6 + 8) + 24) = 210006;
            v205 = +[MFMailMessageLibraryMigrator log];
            if (os_log_type_enabled(v205, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              *&buf[4] = 210006;
              *&buf[12] = 2080;
              *&buf[14] = "DawnCheckMailboxSize";
              _os_log_impl(&dword_1B0389000, v205, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
            }

            *(*(*(a1 + 64) + 8) + 24) = _AddMessagesGlobalMessageIDUnreadUndeletedIndex(*(a1 + 48));
            if (*(*(*(a1 + 64) + 8) + 24) != 1)
            {
              goto LABEL_747;
            }

LABEL_603:
            *(*(*v6 + 8) + 24) = 212001;
            v206 = +[MFMailMessageLibraryMigrator log];
            if (os_log_type_enabled(v206, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              *&buf[4] = 212001;
              *&buf[12] = 2080;
              *&buf[14] = "DawnCAddUnreadCountIndex";
              _os_log_impl(&dword_1B0389000, v206, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
            }

            *(*(*(a1 + 64) + 8) + 24) = _AddFilterPredicateToInboxThreadScopes(*(a1 + 48), 2);
            if (*(*(*(a1 + 64) + 8) + 24) != 1)
            {
              goto LABEL_747;
            }

LABEL_606:
            *(*(*v6 + 8) + 24) = 214001;
            v207 = +[MFMailMessageLibraryMigrator log];
            if (os_log_type_enabled(v207, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              *&buf[4] = 214001;
              *&buf[12] = 2080;
              *&buf[14] = "DawnEUpdateThreadScopesForRemindMeEverywhere";
              _os_log_impl(&dword_1B0389000, v207, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
            }

LABEL_609:
            *(*(*v6 + 8) + 24) = 220001;
            v208 = +[MFMailMessageLibraryMigrator log];
            if (os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              *&buf[4] = 220001;
              *&buf[12] = 2080;
              *&buf[14] = "CrystalAddMessagesValidationStateUpgradeStep";
              _os_log_impl(&dword_1B0389000, v208, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
            }

            *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B488] runWithConnection:*(a1 + 48)] == 0;
            _HandleSQLiteError(v4, @"Adding validation state to message_global_data table");
            if (*(*(*(a1 + 64) + 8) + 24) == 1)
            {
LABEL_612:
              *(*(*v6 + 8) + 24) = 220002;
              v209 = +[MFMailMessageLibraryMigrator log];
              if (os_log_type_enabled(v209, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                *&buf[4] = 220002;
                *&buf[12] = 2080;
                *&buf[14] = "CrystalAddMessagesValidationStateToMessageGlobalDataUpgradeStep";
                _os_log_impl(&dword_1B0389000, v209, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
              }

              *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B5B8] runWithConnection:*(a1 + 48)] == 0;
              _HandleSQLiteError(v4, @"Adding category column to messages_global_data");
              if (*(*(*(a1 + 64) + 8) + 24) != 1)
              {
                goto LABEL_747;
              }

              *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B4C0] runWithConnection:*(a1 + 48)] == 0;
              _HandleSQLiteError(v4, @"Adding category column to senders table");
              if (*(*(*(a1 + 64) + 8) + 24) != 1)
              {
                goto LABEL_747;
              }

LABEL_616:
              *(*(*v6 + 8) + 24) = 220003;
              v210 = +[MFMailMessageLibraryMigrator log];
              if (os_log_type_enabled(v210, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                *&buf[4] = 220003;
                *&buf[12] = 2080;
                *&buf[14] = "CrystalAddBlackPearlCategoryColumnsUpgradeStep";
                _os_log_impl(&dword_1B0389000, v210, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
              }

LABEL_619:
              *(*(*v6 + 8) + 24) = 220004;
              v211 = +[MFMailMessageLibraryMigrator log];
              if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                *&buf[4] = 220004;
                *&buf[12] = 2080;
                *&buf[14] = "CrystalAddBusinessesTableUpgradeStep";
                _os_log_impl(&dword_1B0389000, v211, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
              }

LABEL_622:
              *(*(*v6 + 8) + 24) = 220005;
              v212 = +[MFMailMessageLibraryMigrator log];
              if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                *&buf[4] = 220005;
                *&buf[12] = 2080;
                *&buf[14] = "CrystalAddDomainAndBusinessColumnsUpgradeStep";
                _os_log_impl(&dword_1B0389000, v212, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
              }

              *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B410] runWithConnection:*(a1 + 48) databaseName:@"protected" updateProtectedSchema:_protectedIndexHasBeenInitialized(*(a1 + 48))] == 0;
              _HandleSQLiteError(v4, @"Creating new business schema");
              if (*(*(*(a1 + 64) + 8) + 24))
              {
LABEL_625:
                *(*(*v6 + 8) + 24) = 220007;
                v213 = +[MFMailMessageLibraryMigrator log];
                if (os_log_type_enabled(v213, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134218242;
                  *&buf[4] = 220007;
                  *&buf[12] = 2080;
                  *&buf[14] = "CrystalAddNewBusinessesSchemaUpgradeStep";
                  _os_log_impl(&dword_1B0389000, v213, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
                }

                *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B5E0] runWithConnection:*(a1 + 48)] == 0;
                _HandleSQLiteError(v4, @"Update category columns in messages_global_data");
                if (*(*(*(a1 + 64) + 8) + 24) != 1)
                {
                  goto LABEL_747;
                }

LABEL_628:
                *(*(*v6 + 8) + 24) = 220008;
                v214 = +[MFMailMessageLibraryMigrator log];
                if (os_log_type_enabled(v214, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134218242;
                  *&buf[4] = 220008;
                  *&buf[12] = 2080;
                  *&buf[14] = "CrystalMigrateCategoryTypeUpgradeStep";
                  _os_log_impl(&dword_1B0389000, v214, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
                }

LABEL_631:
                *(*(*v6 + 8) + 24) = 220009;
                v215 = +[MFMailMessageLibraryMigrator log];
                if (os_log_type_enabled(v215, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134218242;
                  *&buf[4] = 220009;
                  *&buf[12] = 2080;
                  *&buf[14] = "CrystalPopulateBusinessSchema";
                  _os_log_impl(&dword_1B0389000, v215, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
                }

                *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B530] runWithConnection:*(a1 + 48)] == 0;
                _HandleSQLiteError(v4, @"Clean model version column in messages_global_data");
                if (*(*(*(a1 + 64) + 8) + 24) == 1)
                {
LABEL_634:
                  *(*(*v6 + 8) + 24) = 220010;
                  v216 = +[MFMailMessageLibraryMigrator log];
                  if (os_log_type_enabled(v216, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 134218242;
                    *&buf[4] = 220010;
                    *&buf[12] = 2080;
                    *&buf[14] = "CrystalCleanModelVersionColumnUpgradeStep";
                    _os_log_impl(&dword_1B0389000, v216, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
                  }

                  *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B430] runWithConnection:*(a1 + 48)] == 0;
                  _HandleSQLiteError(v4, @"Add frecency and server_metadata to mailboxes");
                  if (*(*(*(a1 + 64) + 8) + 24) != 1)
                  {
                    goto LABEL_747;
                  }

LABEL_637:
                  *(*(*v6 + 8) + 24) = 220011;
                  v217 = +[MFMailMessageLibraryMigrator log];
                  if (os_log_type_enabled(v217, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 134218242;
                    *&buf[4] = 220011;
                    *&buf[12] = 2080;
                    *&buf[14] = "CrystalFrecencyAndServerMetadata";
                    _os_log_impl(&dword_1B0389000, v217, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
                  }

                  *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B5E8] runWithConnection:*(a1 + 48)] == 0;
                  _HandleSQLiteError(v4, @"Add frecency and server_metadata to mailboxes");
                  if (*(*(*(a1 + 64) + 8) + 24) != 1)
                  {
                    goto LABEL_747;
                  }

LABEL_640:
                  *(*(*v6 + 8) + 24) = 220012;
                  v218 = +[MFMailMessageLibraryMigrator log];
                  if (os_log_type_enabled(v218, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 134218242;
                    *&buf[4] = 220012;
                    *&buf[12] = 2080;
                    *&buf[14] = "CrystalMigratedServerMetadataFromPList";
                    _os_log_impl(&dword_1B0389000, v218, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
                  }

                  [*(a1 + 40) noteNeedsSpotlightReindex];
                  *(*(*(a1 + 64) + 8) + 24) = 1;
LABEL_643:
                  *(*(*v6 + 8) + 24) = 220013;
                  v219 = +[MFMailMessageLibraryMigrator log];
                  if (os_log_type_enabled(v219, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 134218242;
                    *&buf[4] = 220013;
                    *&buf[12] = 2080;
                    *&buf[14] = "CrystalSemanticSearchReindexStep";
                    _os_log_impl(&dword_1B0389000, v219, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
                  }

                  *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B700] runWithConnection:*(a1 + 48)] == 0;
                  _HandleSQLiteError(v4, @"Failed to update category type for messages categorized as others");
                  if (*(*(*(a1 + 64) + 8) + 24) == 1)
                  {
LABEL_646:
                    *(*(*v6 + 8) + 24) = 220014;
                    v220 = +[MFMailMessageLibraryMigrator log];
                    if (os_log_type_enabled(v220, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 134218242;
                      *&buf[4] = 220014;
                      *&buf[12] = 2080;
                      *&buf[14] = "CrystalUpdateOthersCategoryUpgradeStep";
                      _os_log_impl(&dword_1B0389000, v220, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
                    }

                    *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B438] runWithConnection:*(a1 + 48)] == 0;
                    _HandleSQLiteError(v4, @"Failed generated summary upgrade step");
                    if (*(*(*(a1 + 64) + 8) + 24) != 1)
                    {
                      goto LABEL_747;
                    }

LABEL_649:
                    *(*(*v6 + 8) + 24) = 220015;
                    v221 = +[MFMailMessageLibraryMigrator log];
                    if (os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 134218242;
                      *&buf[4] = 220015;
                      *&buf[12] = 2080;
                      *&buf[14] = "CrystalAddGeneratedSummaryUpgradeStep";
                      _os_log_impl(&dword_1B0389000, v221, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
                    }

LABEL_652:
                    *(*(*v6 + 8) + 24) = 220016;
                    v222 = +[MFMailMessageLibraryMigrator log];
                    if (os_log_type_enabled(v222, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 134218242;
                      *&buf[4] = 220016;
                      *&buf[12] = 2080;
                      *&buf[14] = "CrystalAddAddressesColumnBusinessCategories";
                      _os_log_impl(&dword_1B0389000, v222, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
                    }

                    if (v5 <= 220004 || (*(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B400] runWithConnection:*(a1 + 48)] == 0, _HandleSQLiteError(v4, @"Failed to populate address column to business_categories"), *(*(*(a1 + 64) + 8) + 24) == 1))
                    {
LABEL_656:
                      *(*(*v6 + 8) + 24) = 220017;
                      v223 = +[MFMailMessageLibraryMigrator log];
                      if (os_log_type_enabled(v223, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 134218242;
                        *&buf[4] = 220017;
                        *&buf[12] = 2080;
                        *&buf[14] = "CrystalPopulateBusinessCategoriesTable";
                        _os_log_impl(&dword_1B0389000, v223, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
                      }

                      *(*(*(a1 + 64) + 8) + 24) = _addThreadNewestMessageColumn(*(a1 + 48));
                      if (*(*(*(a1 + 64) + 8) + 24) != 1)
                      {
                        goto LABEL_747;
                      }

LABEL_659:
                      *(*(*v6 + 8) + 24) = 220018;
                      v224 = +[MFMailMessageLibraryMigrator log];
                      if (os_log_type_enabled(v224, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 134218242;
                        *&buf[4] = 220018;
                        *&buf[12] = 2080;
                        *&buf[14] = "CrystalAddThreadNewestMessageUpgradeStep";
                        _os_log_impl(&dword_1B0389000, v224, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
                      }

                      [*(a1 + 40) noteNeedsSpotlightReindex];
                      *(*(*(a1 + 64) + 8) + 24) = 1;
LABEL_662:
                      *(*(*v6 + 8) + 24) = 220019;
                      v225 = +[MFMailMessageLibraryMigrator log];
                      if (os_log_type_enabled(v225, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 134218242;
                        *&buf[4] = 220019;
                        *&buf[12] = 2080;
                        *&buf[14] = "CrystalRedonateToSpotlightWithGlobalMessageID";
                        _os_log_impl(&dword_1B0389000, v225, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
                      }

LABEL_665:
                      *(*(*v6 + 8) + 24) = 220020;
                      v226 = +[MFMailMessageLibraryMigrator log];
                      if (os_log_type_enabled(v226, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 134218242;
                        *&buf[4] = 220020;
                        *&buf[12] = 2080;
                        *&buf[14] = "CrystalChangeBusinessesToSmartGroupingUpgradeStep";
                        _os_log_impl(&dword_1B0389000, v226, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
                      }

                      [*(a1 + 40) noteNeedsSpotlightReindex];
                      *(*(*(a1 + 64) + 8) + 24) = 1;
LABEL_668:
                      *(*(*v6 + 8) + 24) = 220021;
                      v227 = +[MFMailMessageLibraryMigrator log];
                      if (os_log_type_enabled(v227, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 134218242;
                        *&buf[4] = 220021;
                        *&buf[12] = 2080;
                        *&buf[14] = "CrystalRedonateToSpotlightWithEncodedEntityInstanceIdentifier";
                        _os_log_impl(&dword_1B0389000, v227, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
                      }

                      v228 = *(a1 + 48);
                      v229 = sqlite3_exec([v228 sqlDB], "CREATE INDEX IF NOT EXISTS message_global_data_validation_state_equals_zero_index ON message_global_data(validation_state) WHERE validation_state = 0;", 0, 0, 0) == 0;

                      *(*(*(a1 + 64) + 8) + 24) = v229;
                      if (*(*(*(a1 + 64) + 8) + 24) == 1)
                      {
LABEL_671:
                        *(*(*v6 + 8) + 24) = 220022;
                        v230 = +[MFMailMessageLibraryMigrator log];
                        if (os_log_type_enabled(v230, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 134218242;
                          *&buf[4] = 220022;
                          *&buf[12] = 2080;
                          *&buf[14] = "CrystalAddMessageGlobalDataValidationStateIndexUpgradeStep";
                          _os_log_impl(&dword_1B0389000, v230, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
                        }

                        if (v5 > 219999)
                        {
                          v231 = *(a1 + 48);
                          v291 = 0;
                          v232 = [MEMORY[0x1E699B570] runWithConnection:v231 error:&v291];
                          v233 = v291;
                          *(*(*(a1 + 64) + 8) + 24) = v232;
                          _HandleSQLiteError(v4, @"Failed to force recategorization");
                          v234 = *(*(*(a1 + 64) + 8) + 24);

                          if ((v234 & 1) == 0)
                          {
                            goto LABEL_747;
                          }
                        }

LABEL_675:
                        *(*(*v6 + 8) + 24) = 220023;
                        v235 = +[MFMailMessageLibraryMigrator log];
                        if (os_log_type_enabled(v235, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 134218242;
                          *&buf[4] = 220023;
                          *&buf[12] = 2080;
                          *&buf[14] = "CrystalForceRecategorizationUpgradeStep";
                          _os_log_impl(&dword_1B0389000, v235, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
                        }

                        *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B458] runWithConnection:*(a1 + 48)] == 0;
                        _HandleSQLiteError(v4, @"Add sync_info to mailboxes");
                        if (*(*(*(a1 + 64) + 8) + 24) != 1)
                        {
                          goto LABEL_747;
                        }

LABEL_678:
                        *(*(*v6 + 8) + 24) = 220024;
                        v236 = +[MFMailMessageLibraryMigrator log];
                        if (os_log_type_enabled(v236, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 134218242;
                          *&buf[4] = 220024;
                          *&buf[12] = 2080;
                          *&buf[14] = "CrystalAddMailboxSyncInfo";
                          _os_log_impl(&dword_1B0389000, v236, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
                        }

                        *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B418] runWithConnection:*(a1 + 48)] == 0;
                        _HandleSQLiteError(v4, @"Add categorization state");
                        if (*(*(*(a1 + 64) + 8) + 24) != 1)
                        {
                          goto LABEL_747;
                        }

                        goto LABEL_681;
                      }
                    }
                  }
                }
              }
            }

            goto LABEL_747;
          case 210006:
            goto LABEL_600;
        }
      }

LABEL_92:
      if (v5 <= 231002)
      {
        v10 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          __80__MFMailMessageLibraryMigrator__runMigrationStepsFromVersion_connection_schema___block_invoke_2_cold_3();
        }
      }

      else
      {
        v10 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          __80__MFMailMessageLibraryMigrator__runMigrationStepsFromVersion_connection_schema___block_invoke_2_cold_4();
        }
      }

      *(*(*(a1 + 64) + 8) + 24) = 0;
      goto LABEL_747;
    }

    if (v5 > 190004)
    {
      switch(v5)
      {
        case 200001:
          goto LABEL_496;
        case 200002:
          goto LABEL_499;
        case 200003:
          goto LABEL_502;
        case 200004:
          goto LABEL_505;
        case 200005:
          goto LABEL_508;
        case 200006:
          goto LABEL_511;
        case 200007:
          goto LABEL_514;
        case 200008:
          goto LABEL_517;
        case 200009:
          goto LABEL_520;
        case 200010:
          goto LABEL_523;
        case 200011:
          goto LABEL_526;
        case 200012:
          goto LABEL_530;
        case 200013:
          goto LABEL_533;
        case 200014:
          goto LABEL_536;
        case 200015:
          goto LABEL_539;
        case 200016:
          goto LABEL_542;
        case 200017:
          goto LABEL_545;
        case 200018:
          goto LABEL_548;
        case 200019:
          goto LABEL_551;
        case 200020:
          goto LABEL_555;
        case 200021:
          goto LABEL_558;
        case 200022:
          goto LABEL_561;
        case 200023:
          goto LABEL_565;
        case 200024:
          goto LABEL_568;
        case 200025:
          goto LABEL_572;
        case 200026:
          goto LABEL_575;
        case 200027:
          goto LABEL_578;
        case 200028:
          goto LABEL_581;
        default:
          if (v5 == 190005)
          {
            goto LABEL_490;
          }

          if (v5 != 190006)
          {
            goto LABEL_92;
          }

          goto LABEL_493;
      }
    }

    if (v5 > 180504)
    {
      if (v5 > 180508)
      {
        if (v5 > 190001)
        {
          if (v5 != 190002)
          {
            if (v5 != 190003)
            {
              goto LABEL_487;
            }

            goto LABEL_484;
          }

LABEL_481:
          *(*(*v6 + 8) + 24) = 190002;
          v157 = +[MFMailMessageLibraryMigrator log];
          if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            *&buf[4] = 190002;
            *&buf[12] = 2080;
            *&buf[14] = "SkyMigrateRemoteContentDefault";
            _os_log_impl(&dword_1B0389000, v157, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
          }

LABEL_484:
          *(*(*v6 + 8) + 24) = 190003;
          v158 = +[MFMailMessageLibraryMigrator log];
          if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            *&buf[4] = 190003;
            *&buf[12] = 2080;
            *&buf[14] = "SkyBogusStep";
            _os_log_impl(&dword_1B0389000, v158, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
          }

LABEL_487:
          *(*(*v6 + 8) + 24) = 190004;
          v159 = +[MFMailMessageLibraryMigrator log];
          if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            *&buf[4] = 190004;
            *&buf[12] = 2080;
            *&buf[14] = "SkyBogusStep2";
            _os_log_impl(&dword_1B0389000, v159, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
          }

          *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B6D0] runWithConnection:*(a1 + 48)] == 0;
          _HandleSQLiteError(v4, @"Adding message_attachments table and update attachment table");
          if (*(*(*(a1 + 64) + 8) + 24) != 1)
          {
            goto LABEL_747;
          }

LABEL_490:
          *(*(*v6 + 8) + 24) = 190005;
          v160 = +[MFMailMessageLibraryMigrator log];
          if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            *&buf[4] = 190005;
            *&buf[12] = 2080;
            *&buf[14] = "SkyAddMessageAttachmentsAndUpdateAttachmentsTable";
            _os_log_impl(&dword_1B0389000, v160, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
          }

          [*(a1 + 40) noteNeedsSpotlightReindex];
LABEL_493:
          *(*(*v6 + 8) + 24) = 190006;
          v161 = +[MFMailMessageLibraryMigrator log];
          if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            *&buf[4] = 190006;
            *&buf[12] = 2080;
            *&buf[14] = "SkyBIndexSpotlightWithGlobalMessageID";
            _os_log_impl(&dword_1B0389000, v161, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
          }

          *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B490] runWithConnection:*(a1 + 48)] == 0;
          _HandleSQLiteError(v4, @"Adding read_later table");
          if (*(*(*(a1 + 64) + 8) + 24) != 1)
          {
            goto LABEL_747;
          }

LABEL_496:
          *(*(*v6 + 8) + 24) = 200001;
          v162 = +[MFMailMessageLibraryMigrator log];
          if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            *&buf[4] = 200001;
            *&buf[12] = 2080;
            *&buf[14] = "SydneyAddReadLaterTable";
            _os_log_impl(&dword_1B0389000, v162, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
          }

          *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B4D8] runWithConnection:*(a1 + 48)] == 0;
          _HandleSQLiteError(v4, @"Adding unsubscribe_type column");
          if (*(*(*(a1 + 64) + 8) + 24) != 1)
          {
            goto LABEL_747;
          }

LABEL_499:
          *(*(*v6 + 8) + 24) = 200002;
          v163 = +[MFMailMessageLibraryMigrator log];
          if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            *&buf[4] = 200002;
            *&buf[12] = 2080;
            *&buf[14] = "SydneyAddUnsubscribeFlags";
            _os_log_impl(&dword_1B0389000, v163, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
          }

          *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B4B8] runWithConnection:*(a1 + 48)] == 0;
          _HandleSQLiteError(v4, @"Adding send_later table");
          if (*(*(*(a1 + 64) + 8) + 24) != 1)
          {
            goto LABEL_747;
          }

LABEL_502:
          *(*(*v6 + 8) + 24) = 200003;
          v164 = +[MFMailMessageLibraryMigrator log];
          if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            *&buf[4] = 200003;
            *&buf[12] = 2080;
            *&buf[14] = "SydneyAddSendLaterTable";
            _os_log_impl(&dword_1B0389000, v164, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
          }

LABEL_505:
          *(*(*v6 + 8) + 24) = 200004;
          v165 = +[MFMailMessageLibraryMigrator log];
          if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            *&buf[4] = 200004;
            *&buf[12] = 2080;
            *&buf[14] = "SydneyAddDataDetectionTable";
            _os_log_impl(&dword_1B0389000, v165, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
          }

          *(*(*(a1 + 64) + 8) + 24) = [MFMailMessageLibraryAddMailboxActionsUpgradeStep runWithConnection:*(a1 + 48)]== 0;
LABEL_508:
          *(*(*v6 + 8) + 24) = 200005;
          v166 = +[MFMailMessageLibraryMigrator log];
          if (os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            *&buf[4] = 200005;
            *&buf[12] = 2080;
            *&buf[14] = "SydneyAddMailboxActionsTable";
            _os_log_impl(&dword_1B0389000, v166, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
          }

          *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B4B0] runWithConnection:*(a1 + 48)] == 0;
          _HandleSQLiteError(v4, @"Adding searchable data detection table");
          if (*(*(*(a1 + 64) + 8) + 24) != 1)
          {
            goto LABEL_747;
          }

LABEL_511:
          *(*(*v6 + 8) + 24) = 200006;
          v167 = +[MFMailMessageLibraryMigrator log];
          if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            *&buf[4] = 200006;
            *&buf[12] = 2080;
            *&buf[14] = "SydneyAddSearchableDataDetectionTable";
            _os_log_impl(&dword_1B0389000, v167, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
          }

          *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B468] runWithConnection:*(a1 + 48)] == 0;
          _HandleSQLiteError(v4, @"Adding brand_indicator column to messages table");
          if (*(*(*(a1 + 64) + 8) + 24) != 1)
          {
            goto LABEL_747;
          }

LABEL_514:
          *(*(*v6 + 8) + 24) = 200007;
          v168 = +[MFMailMessageLibraryMigrator log];
          if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            *&buf[4] = 200007;
            *&buf[12] = 2080;
            *&buf[14] = "SydneyAddBrandIndicatorTable";
            _os_log_impl(&dword_1B0389000, v168, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
          }

          [*(a1 + 40) noteNeedsSpotlightReindex];
LABEL_517:
          *(*(*v6 + 8) + 24) = 200008;
          v169 = +[MFMailMessageLibraryMigrator log];
          if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            *&buf[4] = 200008;
            *&buf[12] = 2080;
            *&buf[14] = "SydneyReindexSenderAttachmentItems";
            _os_log_impl(&dword_1B0389000, v169, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
          }

          *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B478] runWithConnection:*(a1 + 48)] == 0;
          _HandleSQLiteError(v4, @"Adding follow_up_date column to message_global_data table");
          if (*(*(*(a1 + 64) + 8) + 24) != 1)
          {
            goto LABEL_747;
          }

LABEL_520:
          *(*(*v6 + 8) + 24) = 200009;
          v170 = +[MFMailMessageLibraryMigrator log];
          if (os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            *&buf[4] = 200009;
            *&buf[12] = 2080;
            *&buf[14] = "SydneyAddMessagesFollowUpColumnUpgradeStep";
            _os_log_impl(&dword_1B0389000, v170, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
          }

LABEL_523:
          *(*(*v6 + 8) + 24) = 200010;
          v171 = +[MFMailMessageLibraryMigrator log];
          if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            *&buf[4] = 200010;
            *&buf[12] = 2080;
            *&buf[14] = "SydneyAddSendersTableUpgradeStep";
            _os_log_impl(&dword_1B0389000, v171, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
          }

          *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B4C8] runWithConnection:*(a1 + 48)] == 0;
          _HandleSQLiteError(v4, @"Adding senders and sender_addresses tables");
          if (*(*(*(a1 + 64) + 8) + 24) != 1)
          {
            goto LABEL_747;
          }

LABEL_526:
          *(*(*v6 + 8) + 24) = 200011;
          v172 = +[MFMailMessageLibraryMigrator log];
          if (os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            *&buf[4] = 200011;
            *&buf[12] = 2080;
            *&buf[14] = "SydneyRepopulateSendersTableUpgradeStep";
            _os_log_impl(&dword_1B0389000, v172, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
          }

          if (_protectedIndexHasBeenInitialized(*(a1 + 48)))
          {
            v173 = MEMORY[0x1E699B3F8];
            v174 = *(a1 + 48);
            v175 = +[MFProtectedDatabasePersistence_iOS protectedDatabaseName];
            *(*(*(a1 + 64) + 8) + 24) = [v173 runWithConnection:v174 databaseName:v175] == 0;

            _HandleSQLiteError(v4, @"Re-adding brand_indicators table");
            if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
            {
              goto LABEL_747;
            }
          }

LABEL_530:
          *(*(*v6 + 8) + 24) = 200012;
          v176 = +[MFMailMessageLibraryMigrator log];
          if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            *&buf[4] = 200012;
            *&buf[12] = 2080;
            *&buf[14] = "SydneyReAddBrandIndicatorsTableUpgradeStep";
            _os_log_impl(&dword_1B0389000, v176, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
          }

          *(*(*(a1 + 64) + 8) + 24) = executeQuery(1, v4, "DROP INDEX IF EXISTS brand_indicators_indicator_url_indicator_hash_hash_algorithm_index;", @"Removing brand_indicators_indicator_url_indicator_hash_hash_algorithm_index.");
          if (*(*(*(a1 + 64) + 8) + 24) != 1)
          {
            goto LABEL_747;
          }

LABEL_533:
          *(*(*v6 + 8) + 24) = 200013;
          v177 = +[MFMailMessageLibraryMigrator log];
          if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            *&buf[4] = 200013;
            *&buf[12] = 2080;
            *&buf[14] = "SydneyRemoveIncompatibleBrandIndicatorsIndexUpgradeStep";
            _os_log_impl(&dword_1B0389000, v177, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
          }

          *(*(*(a1 + 64) + 8) + 24) = executeQuery(1, v4, "ALTER TABLE mailbox_actions ADD COLUMN new_mailbox_name TEXT;", @"Adding new_mailbox_name column.");
          if (*(*(*(a1 + 64) + 8) + 24) != 1)
          {
            goto LABEL_747;
          }

LABEL_536:
          *(*(*v6 + 8) + 24) = 200014;
          v178 = +[MFMailMessageLibraryMigrator log];
          if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            *&buf[4] = 200014;
            *&buf[12] = 2080;
            *&buf[14] = "SydneyAddMailboxRenameActionStep";
            _os_log_impl(&dword_1B0389000, v178, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
          }

          *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B498] runWithConnection:*(a1 + 48)] == 0;
          _HandleSQLiteError(v4, @"Adding rebuild table");
          if (*(*(*(a1 + 64) + 8) + 24) != 1)
          {
            goto LABEL_747;
          }

LABEL_539:
          *(*(*v6 + 8) + 24) = 200015;
          v179 = +[MFMailMessageLibraryMigrator log];
          if (os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            *&buf[4] = 200015;
            *&buf[12] = 2080;
            *&buf[14] = "SydneyAddRebuildTableUpgradeStep";
            _os_log_impl(&dword_1B0389000, v179, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
          }

          [*(a1 + 40) noteNeedsSpotlightReindex];
          *(*(*(a1 + 64) + 8) + 24) = 1;
LABEL_542:
          *(*(*v6 + 8) + 24) = 200016;
          v180 = +[MFMailMessageLibraryMigrator log];
          if (os_log_type_enabled(v180, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            *&buf[4] = 200016;
            *&buf[12] = 2080;
            *&buf[14] = "SydneyTriggerSpotlightReIndexUpgradeStep";
            _os_log_impl(&dword_1B0389000, v180, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
          }

          *(*(*(a1 + 64) + 8) + 24) = _AddDisplayDateColumn(*(a1 + 48));
          if (*(*(*(a1 + 64) + 8) + 24) == 1)
          {
LABEL_545:
            *(*(*v6 + 8) + 24) = 200017;
            v181 = +[MFMailMessageLibraryMigrator log];
            if (os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              *&buf[4] = 200017;
              *&buf[12] = 2080;
              *&buf[14] = "SydneyAddDisplayDateColumnUpgradeStep";
              _os_log_impl(&dword_1B0389000, v181, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
            }

LABEL_548:
            *(*(*v6 + 8) + 24) = 200018;
            v182 = +[MFMailMessageLibraryMigrator log];
            if (os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              *&buf[4] = 200018;
              *&buf[12] = 2080;
              *&buf[14] = "SydneyAddRichLinkTable";
              _os_log_impl(&dword_1B0389000, v182, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
            }

            *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B4A8] runWithConnection:*(a1 + 48)] == 0;
            _HandleSQLiteError(v4, @"Adding rich links table");
            if (*(*(*(a1 + 64) + 8) + 24) != 1)
            {
              goto LABEL_747;
            }

LABEL_551:
            *(*(*v6 + 8) + 24) = 200019;
            v183 = +[MFMailMessageLibraryMigrator log];
            if (os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              *&buf[4] = 200019;
              *&buf[12] = 2080;
              *&buf[14] = "SydneyAddSearchableRichLinkTable";
              _os_log_impl(&dword_1B0389000, v183, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
            }

            if (_protectedIndexHasBeenInitialized(*(a1 + 48)))
            {
              *(*(*(a1 + 64) + 8) + 24) = [MFMailMessageLibraryPopulateSendersTableMigrationStep runWithConnection:*(a1 + 48)]== 0;
              _HandleSQLiteError(v4, @"Populating senders and sender_addresses tables");
              if (*(*(*(a1 + 64) + 8) + 24) != 1)
              {
                goto LABEL_747;
              }
            }

LABEL_555:
            *(*(*v6 + 8) + 24) = 200020;
            v184 = +[MFMailMessageLibraryMigrator log];
            if (os_log_type_enabled(v184, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              *&buf[4] = 200020;
              *&buf[12] = 2080;
              *&buf[14] = "SydneyRepopulateSendersTableUpgradeStep2";
              _os_log_impl(&dword_1B0389000, v184, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
            }

            [*(a1 + 40) noteNeedsSpotlightReindex];
            *(*(*(a1 + 64) + 8) + 24) = 1;
LABEL_558:
            *(*(*v6 + 8) + 24) = 200021;
            v185 = +[MFMailMessageLibraryMigrator log];
            if (os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              *&buf[4] = 200021;
              *&buf[12] = 2080;
              *&buf[14] = "SydneyAddSearchableFlagColorsUpgradeStep";
              _os_log_impl(&dword_1B0389000, v185, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
            }

            [*(a1 + 40) noteNeedsSpotlightReindex];
            *(*(*(a1 + 64) + 8) + 24) = 1;
LABEL_561:
            *(*(*v6 + 8) + 24) = 200022;
            v186 = +[MFMailMessageLibraryMigrator log];
            if (os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              *&buf[4] = 200022;
              *&buf[12] = 2080;
              *&buf[14] = "SydneyAddSearchableMailAttachmentTypeUpgradeStep";
              _os_log_impl(&dword_1B0389000, v186, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
            }

            if (v5 > 200002)
            {
              _resetLocalAccountMboxCache();
              *(*(*(a1 + 64) + 8) + 24) = 1;
            }

LABEL_565:
            *(*(*v6 + 8) + 24) = 200023;
            v187 = +[MFMailMessageLibraryMigrator log];
            if (os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              *&buf[4] = 200023;
              *&buf[12] = 2080;
              *&buf[14] = "SydneyCleanUpLocalMboxCacheUpgradeStep";
              _os_log_impl(&dword_1B0389000, v187, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
            }

            v188 = *(a1 + 48);
            v189 = sqlite3_exec([v188 sqlDB], "ALTER TABLE threads ADD COLUMN display_date INTEGER NOT NULL DEFAULT 0;UPDATE threads SET display_date = date;CREATE INDEX IF NOT EXISTS threads_scope_display_date_conversation_index ON threads(scope, display_date, conversation);", 0, 0, 0) == 0;

            *(*(*(a1 + 64) + 8) + 24) = v189;
            if (*(*(*(a1 + 64) + 8) + 24) == 1)
            {
LABEL_568:
              *(*(*v6 + 8) + 24) = 200024;
              v190 = +[MFMailMessageLibraryMigrator log];
              if (os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                *&buf[4] = 200024;
                *&buf[12] = 2080;
                *&buf[14] = "SydneyAddThreadsDisplayDateColumn";
                _os_log_impl(&dword_1B0389000, v190, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
              }

              if (v5 < 200000)
              {
                *(*(*(a1 + 64) + 8) + 24) = _AddFilterPredicateToInboxThreadScopes(*(a1 + 48), 1);
                if (*(*(*(a1 + 64) + 8) + 24) != 1)
                {
                  goto LABEL_747;
                }
              }

LABEL_572:
              *(*(*v6 + 8) + 24) = 200025;
              v191 = +[MFMailMessageLibraryMigrator log];
              if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                *&buf[4] = 200025;
                *&buf[12] = 2080;
                *&buf[14] = "SydneySetThreadScopePredicateFilter";
                _os_log_impl(&dword_1B0389000, v191, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
              }

              *(*(*(a1 + 64) + 8) + 24) = _AddFollowUpWarningJsonStringForModelEvaluationForSuggestionsColumn(*(a1 + 48));
              if (*(*(*(a1 + 64) + 8) + 24) != 1)
              {
                goto LABEL_747;
              }

LABEL_575:
              *(*(*v6 + 8) + 24) = 200026;
              v192 = +[MFMailMessageLibraryMigrator log];
              if (os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                *&buf[4] = 200026;
                *&buf[12] = 2080;
                *&buf[14] = "SydneyAddFollowUpJsonStringForModelEvaluationForSuggestionsColumnUpgradeStep";
                _os_log_impl(&dword_1B0389000, v192, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
              }

              v193 = MEMORY[0x1E699B4E8];
              v194 = [MEMORY[0x1E699AE20] baseMailDirectory];
              v195 = [v193 attachmentDirectoryURLWithBasePath:v194];

              v196 = [[MFMessageLibrarySetContentProtectionForAttachmentsUpgradeStep alloc] initWithBaseAttachmentsDirectory:v195];
              *(*(*(a1 + 64) + 8) + 24) = [(MFMessageLibrarySetContentProtectionForAttachmentsUpgradeStep *)v196 performMigrationStep];
              v197 = *(*(*(a1 + 64) + 8) + 24);

              if ((v197 & 1) == 0)
              {
                goto LABEL_747;
              }

LABEL_578:
              *(*(*v6 + 8) + 24) = 200027;
              v198 = +[MFMailMessageLibraryMigrator log];
              if (os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                *&buf[4] = 200027;
                *&buf[12] = 2080;
                *&buf[14] = "SydneyMarkAttachmentsAsClassBProtected";
                _os_log_impl(&dword_1B0389000, v198, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
              }

LABEL_581:
              *(*(*v6 + 8) + 24) = 200028;
              v199 = +[MFMailMessageLibraryMigrator log];
              if (os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                *&buf[4] = 200028;
                *&buf[12] = 2080;
                *&buf[14] = "SydneyAddDownloadStateToMessageGlobalDataUpgradeStep";
                _os_log_impl(&dword_1B0389000, v199, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
              }

              *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B660] runWithConnection:*(a1 + 48)] == 0;
              _HandleSQLiteError(v4, @"Removing send later and read later tables");
              if (*(*(*(a1 + 64) + 8) + 24) != 1)
              {
                goto LABEL_747;
              }

              goto LABEL_584;
            }
          }

          goto LABEL_747;
        }

        if (v5 != 180509)
        {
          if (v5 != 190001)
          {
            goto LABEL_92;
          }

          goto LABEL_478;
        }

LABEL_475:
        *(*(*v6 + 8) + 24) = 180509;
        v155 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 180509;
          *&buf[12] = 2080;
          *&buf[14] = "AzulUpdateGlobalMessageIDIndex";
          _os_log_impl(&dword_1B0389000, v155, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B4A0] runWithConnection:v3] == 0;
        _HandleSQLiteError(v4, @"Adding remote_content_links table");
        if (*(*(*(a1 + 64) + 8) + 24) != 1)
        {
          goto LABEL_747;
        }

LABEL_478:
        *(*(*v6 + 8) + 24) = 190001;
        v156 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 190001;
          *&buf[12] = 2080;
          *&buf[14] = "SkyAddRemoteContentLinksTable";
          _os_log_impl(&dword_1B0389000, v156, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        goto LABEL_481;
      }

      if (v5 > 180506)
      {
        if (v5 != 180507)
        {
LABEL_471:
          *(*(*v6 + 8) + 24) = 180508;
          v154 = +[MFMailMessageLibraryMigrator log];
          if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            *&buf[4] = 180508;
            *&buf[12] = 2080;
            *&buf[14] = "AzulUpdateSearchableMessagesIndex";
            _os_log_impl(&dword_1B0389000, v154, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
          }

          if (v5 > 180500)
          {
            *(*(*(a1 + 64) + 8) + 24) = _UpdateGlobalIDIndex(*(a1 + 48));
            _HandleSQLiteError(v4, @"Updating globalMessageID index");
            if (*(*(*(a1 + 64) + 8) + 24) != 1)
            {
              goto LABEL_747;
            }
          }

          goto LABEL_475;
        }

LABEL_468:
        *(*(*v6 + 8) + 24) = 180507;
        v153 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 180507;
          *&buf[12] = 2080;
          *&buf[14] = "AzulRemoveRemoteContentLinksTable";
          _os_log_impl(&dword_1B0389000, v153, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B6C0] runWithConnection:*(a1 + 48)] == 0;
        _HandleSQLiteError(v4, @"Adding searchable_messages index");
        if (*(*(*(a1 + 64) + 8) + 24) != 1)
        {
          goto LABEL_747;
        }

        goto LABEL_471;
      }

      if (v5 != 180505)
      {
LABEL_465:
        *(*(*v6 + 8) + 24) = 180506;
        v152 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 180506;
          *&buf[12] = 2080;
          *&buf[14] = "AzulReindexMessagesMailMessageID";
          _os_log_impl(&dword_1B0389000, v152, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        *(*(*(a1 + 64) + 8) + 24) = executeQuery(1, v4, "DROP TABLE IF EXISTS remote_content_links;", @"Removing remote_content_links table.");
        if (*(*(*(a1 + 64) + 8) + 24) != 1)
        {
          goto LABEL_747;
        }

        goto LABEL_468;
      }

LABEL_462:
      *(*(*v6 + 8) + 24) = 180505;
      v151 = +[MFMailMessageLibraryMigrator log];
      if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        *&buf[4] = 180505;
        *&buf[12] = 2080;
        *&buf[14] = "AzulSetUseLegacyMessageIDHashFormat";
        _os_log_impl(&dword_1B0389000, v151, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
      }

      [*(a1 + 40) noteNeedsSpotlightReindex];
      goto LABEL_465;
    }

    if (v5 > 180499)
    {
      if (v5 > 180501)
      {
        if (v5 != 180502)
        {
          if (v5 != 180503)
          {
LABEL_459:
            *(*(*v6 + 8) + 24) = 180504;
            v150 = +[MFMailMessageLibraryMigrator log];
            if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              *&buf[4] = 180504;
              *&buf[12] = 2080;
              *&buf[14] = "AzulRecreateMessageIndices";
              _os_log_impl(&dword_1B0389000, v150, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
            }

            *(*(*(a1 + 64) + 8) + 24) = executeQuery(1, v4, "INSERT INTO properties (key, value) VALUES ('UseLegacyMessageIDHashFormat', 1) ON CONFLICT(key) DO UPDATE SET value = 1;", @"Inserting UseLegacyMessageIDHashFormat property.");
            if (*(*(*(a1 + 64) + 8) + 24) != 1)
            {
              goto LABEL_747;
            }

            goto LABEL_462;
          }

LABEL_455:
          *(*(*v6 + 8) + 24) = 180503;
          v149 = +[MFMailMessageLibraryMigrator log];
          if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            *&buf[4] = 180503;
            *&buf[12] = 2080;
            *&buf[14] = "AzulAddRemoteContentLinksTable";
            _os_log_impl(&dword_1B0389000, v149, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
          }

          if (v5 > 180500)
          {
            *(*(*(a1 + 64) + 8) + 24) = [MFMailMessageLibraryRecreateMessageIndicesUpgradeStep runWithConnection:v3];
            if (*(*(*(a1 + 64) + 8) + 24) != 1)
            {
              goto LABEL_747;
            }
          }

          goto LABEL_459;
        }

LABEL_452:
        *(*(*v6 + 8) + 24) = 180502;
        v148 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 180502;
          *&buf[12] = 2080;
          *&buf[14] = "AzulResetMessageMetadata";
          _os_log_impl(&dword_1B0389000, v148, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B4A0] runWithConnection:v3] == 0;
        _HandleSQLiteError(v4, @"Adding remote_content_links table");
        if (*(*(*(a1 + 64) + 8) + 24) != 1)
        {
          goto LABEL_747;
        }

        goto LABEL_455;
      }

      if (v5 != 180500)
      {
LABEL_449:
        *(*(*v6 + 8) + 24) = 180501;
        v147 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 180501;
          *&buf[12] = 2080;
          *&buf[14] = "AzulAddMessageGlobalData";
          _os_log_impl(&dword_1B0389000, v147, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        *(*(*(a1 + 64) + 8) + 24) = executeQuery(1, v4, "DELETE FROM message_metadata;", @"Removing all entries from message_metadata.");
        if (*(*(*(a1 + 64) + 8) + 24) != 1)
        {
          goto LABEL_747;
        }

        goto LABEL_452;
      }

LABEL_446:
      *(*(*v6 + 8) + 24) = 180500;
      v146 = +[MFMailMessageLibraryMigrator log];
      if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        *&buf[4] = 180500;
        *&buf[12] = 2080;
        *&buf[14] = "AzulBaseline";
        _os_log_impl(&dword_1B0389000, v146, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
      }

      *(*(*(a1 + 64) + 8) + 24) = [MFMailMessageLibraryGlobalDataUpgradeStep runWithConnection:v3]== 0;
      _HandleSQLiteError(v4, @"Adding global data table");
      if (*(*(*(a1 + 64) + 8) + 24) != 1)
      {
        goto LABEL_747;
      }

      goto LABEL_449;
    }

    if (v5 > 180001)
    {
      if (v5 != 180002)
      {
        if (v5 != 180003)
        {
          goto LABEL_92;
        }

        goto LABEL_443;
      }

LABEL_440:
      *(*(*v6 + 8) + 24) = 180002;
      v144 = +[MFMailMessageLibraryMigrator log];
      if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        *&buf[4] = 180002;
        *&buf[12] = 2080;
        *&buf[14] = "YukonCDEModifyMessagesSearchableMessageIndex";
        _os_log_impl(&dword_1B0389000, v144, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
      }

      *(*(*(a1 + 64) + 8) + 24) = _AddMessagesMailboxDeletedDateReceivedIndex(v4);
LABEL_443:
      *(*(*v6 + 8) + 24) = 180003;
      v145 = +[MFMailMessageLibraryMigrator log];
      if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        *&buf[4] = 180003;
        *&buf[12] = 2080;
        *&buf[14] = "YukonCDEAddInMemoryThreadIndex";
        _os_log_impl(&dword_1B0389000, v145, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
      }

      goto LABEL_446;
    }

    if (v5 != 180000)
    {
LABEL_437:
      *(*(*v6 + 8) + 24) = 180001;
      v143 = +[MFMailMessageLibraryMigrator log];
      if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        *&buf[4] = 180001;
        *&buf[12] = 2080;
        *&buf[14] = "YukonCDEAddMessagesSearchableMessageColumn";
        _os_log_impl(&dword_1B0389000, v143, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
      }

      *(*(*(a1 + 64) + 8) + 24) = _ModifyMessagesSearchableMessageIndex(v4);
      if (*(*(*(a1 + 64) + 8) + 24) != 1)
      {
        goto LABEL_747;
      }

      goto LABEL_440;
    }

LABEL_434:
    *(*(*v6 + 8) + 24) = 180000;
    v142 = +[MFMailMessageLibraryMigrator log];
    if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      *&buf[4] = 180000;
      *&buf[12] = 2080;
      *&buf[14] = "YukonCDEBaseline";
      _os_log_impl(&dword_1B0389000, v142, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
    }

    *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B480] runWithConnection:v3] == 0;
    _HandleSQLiteError(v4, @"Adding searchable_message column to messages");
    if (*(*(*(a1 + 64) + 8) + 24) != 1)
    {
      goto LABEL_747;
    }

    goto LABEL_437;
  }

  if (v5 <= 159999)
  {
    switch(v5)
    {
      case 0:
        v8 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B0389000, v8, OS_LOG_TYPE_DEFAULT, "Initializing schema", buf, 2u);
        }

        *(*(*(a1 + 64) + 8) + 24) = _InitializeSchema(v4, *(a1 + 32));
        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          [*(a1 + 40) noteNeedsSpotlightReindex];
          v9 = [*(a1 + 40) delegate];
          [v9 mailMessageLibraryMigrator:*(a1 + 40) isInitializingDatabaseWithConnection:v3];
        }

        goto LABEL_747;
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      case 53:
      case 55:
      case 56:
        goto LABEL_92;
      case 22:
        *(*(*v6 + 8) + 24) = 22;
        v11 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 22;
          *&buf[12] = 2080;
          *&buf[14] = "TellurideVersion";
          _os_log_impl(&dword_1B0389000, v11, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        *(*(*(a1 + 64) + 8) + 24) = _FixZeroedConversationHashes(v4);
        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          goto LABEL_98;
        }

        goto LABEL_747;
      case 23:
LABEL_98:
        *(*(*v6 + 8) + 24) = 23;
        v12 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 23;
          *&buf[12] = 2080;
          *&buf[14] = "SundanceConversationHashesMustBeNonZeroVersion";
          _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        [*(a1 + 40) noteRebuildMessageInfoIndex];
        *(*(*(a1 + 64) + 8) + 24) = _DropMessageDeletedIndex(v4);
        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          goto LABEL_101;
        }

        goto LABEL_747;
      case 24:
LABEL_101:
        *(*(*v6 + 8) + 24) = 24;
        v13 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 24;
          *&buf[12] = 2080;
          *&buf[14] = "SundanceCreateMessageInfosCoveringIndexVersion";
          _os_log_impl(&dword_1B0389000, v13, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        [*(a1 + 40) noteRebuildMessageInfoIndex];
        *(*(*(a1 + 64) + 8) + 24) = _AddVIPSenderColumn(v4);
        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          goto LABEL_104;
        }

        goto LABEL_747;
      case 25:
LABEL_104:
        *(*(*v6 + 8) + 24) = 25;
        v14 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 25;
          *&buf[12] = 2080;
          *&buf[14] = "SundanceMessagesHaveVIPSenderFlag";
          _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        *(*(*(a1 + 64) + 8) + 24) = _AddUniqueRemoteIDColumn(v4);
        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          goto LABEL_107;
        }

        goto LABEL_747;
      case 26:
LABEL_107:
        *(*(*v6 + 8) + 24) = 26;
        v15 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 26;
          *&buf[12] = 2080;
          *&buf[14] = "InnsbruckMessagesHaveUniqueRemoteID";
          _os_log_impl(&dword_1B0389000, v15, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        *(*(*(a1 + 64) + 8) + 24) = _AddContentTransactionIDColumn(v4);
        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          goto LABEL_110;
        }

        goto LABEL_747;
      case 27:
LABEL_110:
        *(*(*v6 + 8) + 24) = 27;
        v16 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 27;
          *&buf[12] = 2080;
          *&buf[14] = "InnsbruckMessagesHaveContentTransactionID";
          _os_log_impl(&dword_1B0389000, v16, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        *(*(*(a1 + 64) + 8) + 24) = _ImproveMessageConversationIndexes(v4);
        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          goto LABEL_113;
        }

        goto LABEL_747;
      case 28:
LABEL_113:
        *(*(*v6 + 8) + 24) = 28;
        v17 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 28;
          *&buf[12] = 2080;
          *&buf[14] = "InnsbruckBetterMessageConversationIndexes";
          _os_log_impl(&dword_1B0389000, v17, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        *(*(*(a1 + 64) + 8) + 24) = _AddSequenceIdentifierIndex(v4);
        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          goto LABEL_116;
        }

        goto LABEL_747;
      case 29:
LABEL_116:
        *(*(*v6 + 8) + 24) = 29;
        v18 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 29;
          *&buf[12] = 2080;
          *&buf[14] = "InnsbruckCondStoreSequenceIdentifierIndex";
          _os_log_impl(&dword_1B0389000, v18, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        *(*(*(a1 + 64) + 8) + 24) = _AddFlaggedAndAttachmentColumnsAndTriggers(v4);
        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          goto LABEL_119;
        }

        goto LABEL_747;
      case 30:
LABEL_119:
        *(*(*v6 + 8) + 24) = 30;
        v19 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 30;
          *&buf[12] = 2080;
          *&buf[14] = "InnsbruckFlaggedAndAttachmentCounts";
          _os_log_impl(&dword_1B0389000, v19, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        *(*(*(a1 + 64) + 8) + 24) = _AddToCcCountColumnAndTriggers(v4);
        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          goto LABEL_122;
        }

        goto LABEL_747;
      case 31:
LABEL_122:
        *(*(*v6 + 8) + 24) = 31;
        v20 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 31;
          *&buf[12] = 2080;
          *&buf[14] = "InnsbruckToCcCounts";
          _os_log_impl(&dword_1B0389000, v20, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        *(*(*(a1 + 64) + 8) + 24) = _AddServerOnlyUnreadCountColumn(v4);
        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          goto LABEL_125;
        }

        goto LABEL_747;
      case 32:
LABEL_125:
        *(*(*v6 + 8) + 24) = 32;
        v21 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 32;
          *&buf[12] = 2080;
          *&buf[14] = "InnsbruckServerOnlyUnreadCounts";
          _os_log_impl(&dword_1B0389000, v21, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        goto LABEL_128;
      case 33:
LABEL_128:
        *(*(*v6 + 8) + 24) = 33;
        v22 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 33;
          *&buf[12] = 2080;
          *&buf[14] = "SochiFixFlaggedCount";
          _os_log_impl(&dword_1B0389000, v22, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        *(*(*(a1 + 64) + 8) + 24) = _SochiFixFlaggedCount(v4);
        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          goto LABEL_131;
        }

        goto LABEL_747;
      case 34:
LABEL_131:
        *(*(*v6 + 8) + 24) = 34;
        v23 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 34;
          *&buf[12] = 2080;
          *&buf[14] = "SochiFixFlaggedCount2";
          _os_log_impl(&dword_1B0389000, v23, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        *(*(*(a1 + 64) + 8) + 24) = _AddConversationFlags(v4);
        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          goto LABEL_134;
        }

        goto LABEL_747;
      case 35:
LABEL_134:
        *(*(*v6 + 8) + 24) = 35;
        v24 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 35;
          *&buf[12] = 2080;
          *&buf[14] = "OkemoConversationFlags";
          _os_log_impl(&dword_1B0389000, v24, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        goto LABEL_137;
      case 36:
LABEL_137:
        *(*(*v6 + 8) + 24) = 36;
        v25 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 36;
          *&buf[12] = 2080;
          *&buf[14] = "MonarchAddSuggestionsProcessingStateColumn";
          _os_log_impl(&dword_1B0389000, v25, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        goto LABEL_140;
      case 37:
LABEL_140:
        *(*(*v6 + 8) + 24) = 37;
        v26 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 37;
          *&buf[12] = 2080;
          *&buf[14] = "MonarchResetSuggestionsProcessingStateColumn";
          _os_log_impl(&dword_1B0389000, v26, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        goto LABEL_143;
      case 38:
LABEL_143:
        *(*(*v6 + 8) + 24) = 38;
        v27 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 38;
          *&buf[12] = 2080;
          *&buf[14] = "MonarchDuplicatesSuppression";
          _os_log_impl(&dword_1B0389000, v27, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        [*(a1 + 40) noteNeedsRebuildTriggers];
        goto LABEL_146;
      case 39:
LABEL_146:
        *(*(*v6 + 8) + 24) = 39;
        v28 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 39;
          *&buf[12] = 2080;
          *&buf[14] = "MonarchRestoreTriggers";
          _os_log_impl(&dword_1B0389000, v28, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        [*(a1 + 40) noteRebuildMessageInfoIndex];
        goto LABEL_149;
      case 40:
LABEL_149:
        *(*(*v6 + 8) + 24) = 40;
        v29 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 40;
          *&buf[12] = 2080;
          *&buf[14] = "MonarchUpdateMessageInfoCoveringIndex";
          _os_log_impl(&dword_1B0389000, v29, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        [*(a1 + 40) noteNeedsRebuildTriggers];
        *buf = "UPDATE mailboxes SET total_count = (SELECT COUNT(DISTINCT(message_id)) FROM messages WHERE (mailbox = mailboxes.ROWID));";
        *&buf[8] = "UPDATE mailboxes SET unread_count = (SELECT COUNT(DISTINCT(message_id)) FROM messages WHERE (flags&1 = 0) AND (mailbox = mailboxes.ROWID));";
        *&buf[16] = "UPDATE mailboxes SET deleted_count = (SELECT COUNT(DISTINCT(message_id)) FROM messages WHERE (flags&2 > 0) AND (mailbox = mailboxes.ROWID));";
        v294 = "UPDATE mailboxes SET flagged_count = (SELECT COUNT(DISTINCT(message_id)) FROM messages WHERE (flags&16 > 0 AND flags&2 = 0) AND (mailbox = mailboxes.ROWID));";
        v295 = "UPDATE mailboxes SET attachment_count = (SELECT COUNT(DISTINCT(message_id)) FROM messages WHERE ((((flags&(63<<10))>>10) BETWEEN 1 AND 62) AND flags&1 = 0) AND (mailbox = mailboxes.ROWID));";
        v296 = "UPDATE mailboxes SET to_cc_count = (SELECT COUNT(DISTINCT(message_id)) FROM messages WHERE ((flags&(3<<39)>>39) > 0 AND flags&1 = 0) AND (mailbox = mailboxes.ROWID));";
        *(*(*(a1 + 64) + 8) + 24) = _ExecuteQueries(v4, buf, 6, @"updating mailboxes counts");
        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          goto LABEL_152;
        }

        goto LABEL_747;
      case 41:
LABEL_152:
        *(*(*v6 + 8) + 24) = 41;
        v30 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 41;
          *&buf[12] = 2080;
          *&buf[14] = "MonarchUnreadCountDuplicateSuppression";
          _os_log_impl(&dword_1B0389000, v30, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        goto LABEL_155;
      case 42:
LABEL_155:
        *(*(*v6 + 8) + 24) = 42;
        v31 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 42;
          *&buf[12] = 2080;
          *&buf[14] = "MonarchUnreadCountIgnoreSearchResult";
          _os_log_impl(&dword_1B0389000, v31, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        [*(a1 + 40) noteNeedsRebuildTriggers];
        v32 = sqlite3_exec(v4, "UPDATE mailboxes SET unread_count = (SELECT COUNT(DISTINCT(message_id)) FROM messages WHERE (flags&1 = 0 AND flags&128 = 0 AND flags&1048576 = 0) AND (mailbox = mailboxes.ROWID));", 0, 0, 0);
        _HandleSQLiteError(v4, @"updating mailboxes unread_count");
        *(*(*(a1 + 64) + 8) + 24) = v32 == 0;
        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          goto LABEL_158;
        }

        goto LABEL_747;
      case 43:
LABEL_158:
        *(*(*v6 + 8) + 24) = 43;
        v33 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 43;
          *&buf[12] = 2080;
          *&buf[14] = "MonarchUnreadCountPreventNegativeValue";
          _os_log_impl(&dword_1B0389000, v33, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        *buf = "DROP INDEX message_content_index_transaction_id_index;";
        *&buf[8] = "CREATE INDEX message_content_index_transaction_id_index ON messages(content_index_transaction_id, deleted, date_received DESC, ROWID);";
        *(*(*(a1 + 64) + 8) + 24) = _ExecuteQueries(v4, buf, 2, @"updating message_content_index_transaction_id");
        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          goto LABEL_161;
        }

        goto LABEL_747;
      case 44:
LABEL_161:
        *(*(*v6 + 8) + 24) = 44;
        v34 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 44;
          *&buf[12] = 2080;
          *&buf[14] = "MonarchFasterSpotlightIndexing";
          _os_log_impl(&dword_1B0389000, v34, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        *buf = "CREATE INDEX message_mailbox_content_index ON messages (mailbox, content_index_transaction_id, flags, date_received ASC)";
        *(*(*(a1 + 64) + 8) + 24) = _ExecuteQueries(v4, buf, 1, @"adding message_mailbox_content_index");
        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          goto LABEL_164;
        }

        goto LABEL_747;
      case 45:
LABEL_164:
        *(*(*v6 + 8) + 24) = 45;
        v35 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 45;
          *&buf[12] = 2080;
          *&buf[14] = "MonarchOldestNonIndexedMessagesLookup";
          _os_log_impl(&dword_1B0389000, v35, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        goto LABEL_167;
      case 46:
LABEL_167:
        *(*(*v6 + 8) + 24) = 46;
        v36 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 46;
          *&buf[12] = 2080;
          *&buf[14] = "MonarchForceSpotlightReindex";
          _os_log_impl(&dword_1B0389000, v36, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        *buf = "DROP TABLE IF EXISTS spotlight_tombstones\n";
        *&buf[8] = "CREATE TABLE spotlight_tombstones (ROWID INTEGER PRIMARY KEY AUTOINCREMENT,\n                                   type INTEGER,\n                                   identifier TEXT,\n                                   transaction_id INTEGER,\n                                   UNIQUE(type, identifier))";
        *&buf[16] = "CREATE INDEX spotlight_tombstones_transaction_index ON spotlight_tombstones(transaction_id, type, identifier)";
        *(*(*(a1 + 64) + 8) + 24) = _ExecuteQueries(v4, buf, 3, @"adding spotlight tombstones table");
        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          goto LABEL_170;
        }

        goto LABEL_747;
      case 47:
LABEL_170:
        *(*(*v6 + 8) + 24) = 47;
        v37 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 47;
          *&buf[12] = 2080;
          *&buf[14] = "BoulderAddSpotlightTombstones";
          _os_log_impl(&dword_1B0389000, v37, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        goto LABEL_173;
      case 48:
LABEL_173:
        *(*(*v6 + 8) + 24) = 48;
        v38 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 48;
          *&buf[12] = 2080;
          *&buf[14] = "BoulderForceSpotlightReindex";
          _os_log_impl(&dword_1B0389000, v38, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        goto LABEL_176;
      case 49:
LABEL_176:
        *(*(*v6 + 8) + 24) = 49;
        v39 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 49;
          *&buf[12] = 2080;
          *&buf[14] = "BoulderForceSpotlightReindex2";
          _os_log_impl(&dword_1B0389000, v39, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        goto LABEL_179;
      case 50:
LABEL_179:
        *(*(*v6 + 8) + 24) = 50;
        v40 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 50;
          *&buf[12] = 2080;
          *&buf[14] = "BoulderForceSpotlightReindex3";
          _os_log_impl(&dword_1B0389000, v40, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        v41 = sqlite3_exec(v4, "UPDATE mailboxes SET server_unread_count = 0 WHERE url LIKE pop:%;", 0, 0, 0);
        _HandleSQLiteError(v4, @"updating mailboxes unread_count");
        *(*(*(a1 + 64) + 8) + 24) = v41 == 0;
        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          goto LABEL_182;
        }

        goto LABEL_747;
      case 51:
LABEL_182:
        *(*(*v6 + 8) + 24) = 51;
        v42 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 51;
          *&buf[12] = 2080;
          *&buf[14] = "BoulderZeroOutPOPServerUnreadCount";
          _os_log_impl(&dword_1B0389000, v42, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        goto LABEL_185;
      case 52:
LABEL_185:
        *(*(*v6 + 8) + 24) = 52;
        v43 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 52;
          *&buf[12] = 2080;
          *&buf[14] = "BoulderForceSpotlightReindex4";
          _os_log_impl(&dword_1B0389000, v43, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        v44 = sqlite3_exec(v4, "ALTER TABLE messages ADD COLUMN list_id_hash INTEGER;", 0, 0, 0);
        _HandleSQLiteError(v4, @"adding list_id_hash column");
        if (v44)
        {
          LOBYTE(v45) = 0;
        }

        else
        {
          v45 = sqlite3_exec(v4, "CREATE INDEX message_list_id_hash_index ON messages(list_id_hash);", 0, 0, 0) == 0;
          _HandleSQLiteError(v4, @"adding message_list_id_hash_index index");
        }

        *(*(*(a1 + 64) + 8) + 24) = v45;
        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          goto LABEL_191;
        }

        goto LABEL_747;
      case 54:
LABEL_191:
        *(*(*v6 + 8) + 24) = 54;
        v46 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 54;
          *&buf[12] = 2080;
          *&buf[14] = "WhitetailAddListIDColumn";
          _os_log_impl(&dword_1B0389000, v46, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        *(*(*(a1 + 64) + 8) + 24) = 1;
        goto LABEL_194;
      case 57:
LABEL_194:
        *(*(*v6 + 8) + 24) = 57;
        v47 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 57;
          *&buf[12] = 2080;
          *&buf[14] = "WhitetailRemoveDecluttering";
          _os_log_impl(&dword_1B0389000, v47, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        goto LABEL_197;
      case 58:
LABEL_197:
        *(*(*v6 + 8) + 24) = 58;
        v48 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 58;
          *&buf[12] = 2080;
          *&buf[14] = "WhitetailForceSpotlightReindex";
          _os_log_impl(&dword_1B0389000, v48, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        goto LABEL_200;
      case 59:
LABEL_200:
        *(*(*v6 + 8) + 24) = 59;
        v49 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 59;
          *&buf[12] = 2080;
          *&buf[14] = "WhitetailForceSpotlightReindex2";
          _os_log_impl(&dword_1B0389000, v49, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        [*(a1 + 40) resetTTRPromptAndForceReindex];
        goto LABEL_203;
      case 60:
LABEL_203:
        *(*(*v6 + 8) + 24) = 60;
        v50 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 60;
          *&buf[12] = 2080;
          *&buf[14] = "TigrisForceSpotlightReindexConversationID";
          _os_log_impl(&dword_1B0389000, v50, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        *buf = "ALTER TABLE mailboxes ADD COLUMN last_sync_status_count INTEGER DEFAULT 0;";
        *&buf[8] = "ALTER TABLE mailboxes ADD COLUMN most_recent_status_count INTEGER DEFAULT 0;";
        if (_ExecuteQueries(v4, buf, 2, @"adding mailboxes status count columns"))
        {
          ppStmt = 0xAAAAAAAAAAAAAAAALL;
          v51 = sqlite3_prepare_v2(v4, "SELECT DISTINCT mailbox FROM messages WHERE flags&64 = 64;", -1, &ppStmt, 0);
          v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v53 = v51 == 0;
          if (!v51)
          {
            v54 = ppStmt;
            if (ppStmt)
            {
              while (1)
              {
                v55 = sqlite3_step(v54);
                if (v55 != 100)
                {
                  break;
                }

                v56 = [MEMORY[0x1E696AD98] numberWithLongLong:{sqlite3_column_int64(ppStmt, 0)}];
                [v52 addObject:v56];

                v54 = ppStmt;
              }

              _HandleSQLiteError(v4, @"finding mailbox IDs of draft mailboxes");
              v53 = v55 == 101;
              sqlite3_finalize(ppStmt);
            }
          }

          if (v53)
          {
            if ([v52 count])
            {
              v58 = [v52 componentsJoinedByString:{@", "}];
              v59 = v58;
              v60 = [v58 UTF8String];

              v61 = sqlite3_mprintf("UPDATE mailboxes SET last_sync_status_count = unread_count + server_unread_count, most_recent_status_count = unread_count + server_unread_count WHERE url LIKE 'imap:%%' AND rowid NOT IN (%s)", v60);
              LODWORD(v60) = sqlite3_exec(v4, v61, 0, 0, 0);
              sqlite3_free(v61);
              v57 = v60 == 0;
              _HandleSQLiteError(v4, @"updating count columns for non-draft mailboxes");
            }

            else
            {
              v62 = sqlite3_exec(v4, "UPDATE mailboxes SET last_sync_status_count = unread_count + server_unread_count, most_recent_status_count = unread_count + server_unread_count WHERE url LIKE 'imap:%'", 0, 0, 0);
              _HandleSQLiteError(v4, @"updating count columns");
              v57 = v62 == 0;
            }
          }

          else
          {
            v57 = 0;
          }
        }

        else
        {
          v57 = 0;
        }

        *(*(*(a1 + 64) + 8) + 24) = v57;
        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          goto LABEL_219;
        }

        goto LABEL_747;
      case 61:
LABEL_219:
        *(*(*v6 + 8) + 24) = 61;
        v63 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 61;
          *&buf[12] = 2080;
          *&buf[14] = "TigrisAddUnseenCountColumn";
          _os_log_impl(&dword_1B0389000, v63, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        v64 = sqlite3_exec(v4, "ALTER TABLE mailboxes ADD COLUMN reconcile;", 0, 0, 0);
        _HandleSQLiteError(v4, @"adding reconcile column");
        *(*(*(a1 + 64) + 8) + 24) = v64 == 0;
        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          goto LABEL_222;
        }

        goto LABEL_747;
      case 62:
LABEL_222:
        *(*(*v6 + 8) + 24) = 62;
        v65 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 62;
          *&buf[12] = 2080;
          *&buf[14] = "TigrisAddReconcileColumn";
          _os_log_impl(&dword_1B0389000, v65, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        [*(a1 + 40) noteNeedsRebuildTriggers];
        *buf = "DROP TABLE IF EXISTS spotlight_message_reindex;";
        *&buf[8] = "CREATE TABLE spotlight_message_reindex (message_id INTEGER,\n                                        type INTEGER,\n                                        UNIQUE(message_id),\n                                        FOREIGN KEY (message_id) REFERENCES messages(ROWID) ON DELETE CASCADE);";
        *&buf[16] = "CREATE INDEX spotlight_message_reindex_index ON spotlight_message_reindex(message_id, type);";
        *(*(*(a1 + 64) + 8) + 24) = _ExecuteQueries(v4, buf, 3, @"adding spotlight message reindex table");
        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          goto LABEL_225;
        }

        goto LABEL_747;
      case 63:
LABEL_225:
        *(*(*v6 + 8) + 24) = 63;
        v66 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 63;
          *&buf[12] = 2080;
          *&buf[14] = "TigrisAddSpotlightReindexTable";
          _os_log_impl(&dword_1B0389000, v66, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        goto LABEL_228;
      case 64:
LABEL_228:
        *(*(*v6 + 8) + 24) = 64;
        v67 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 64;
          *&buf[12] = 2080;
          *&buf[14] = "TigrisAddMBLQueueTable";
          _os_log_impl(&dword_1B0389000, v67, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        [*(a1 + 40) noteNeedsSpotlightReindex];
        goto LABEL_231;
      case 65:
LABEL_231:
        *(*(*v6 + 8) + 24) = 65;
        v68 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 65;
          *&buf[12] = 2080;
          *&buf[14] = "TigrisForceSpotlightReindexSupportDND";
          _os_log_impl(&dword_1B0389000, v68, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        *buf = "DROP TABLE IF EXISTS mbl_queue;";
        *(*(*(a1 + 64) + 8) + 24) = _ExecuteQueries(v4, buf, 1, @"removing mbl_queue table");
        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          goto LABEL_234;
        }

        goto LABEL_747;
      case 66:
LABEL_234:
        *(*(*v6 + 8) + 24) = 66;
        v69 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 66;
          *&buf[12] = 2080;
          *&buf[14] = "TigrisRemoveMBDLQueueTable";
          _os_log_impl(&dword_1B0389000, v69, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        [*(a1 + 40) noteRebuildMessageInfoIndex];
        *(*(*(a1 + 64) + 8) + 24) = _AddJournaledColumn(v4);
        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          goto LABEL_237;
        }

        goto LABEL_747;
      case 67:
LABEL_237:
        *(*(*v6 + 8) + 24) = 67;
        v70 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 67;
          *&buf[12] = 2080;
          *&buf[14] = "TigrisAddUnmergedColumn";
          _os_log_impl(&dword_1B0389000, v70, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        if (v5 < 60)
        {
          goto LABEL_241;
        }

        *(*(*(a1 + 64) + 8) + 24) = _ResetStatusCountsForDrafts(v4);
        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          goto LABEL_241;
        }

        goto LABEL_747;
      case 68:
LABEL_241:
        *(*(*v6 + 8) + 24) = 68;
        v71 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 68;
          *&buf[12] = 2080;
          *&buf[14] = "TigrisResetStatusCountsForDrafts";
          _os_log_impl(&dword_1B0389000, v71, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        goto LABEL_244;
      case 69:
LABEL_244:
        *(*(*v6 + 8) + 24) = 69;
        v72 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 69;
          *&buf[12] = 2080;
          *&buf[14] = "TigrisSetSpotlightDataTypes";
          _os_log_impl(&dword_1B0389000, v72, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        [*(a1 + 40) noteNeedsSpotlightReindex];
        goto LABEL_247;
      case 70:
LABEL_247:
        *(*(*v6 + 8) + 24) = 70;
        v73 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 70;
          *&buf[12] = 2080;
          *&buf[14] = "TigrisUpgradePadding70";
          _os_log_impl(&dword_1B0389000, v73, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        goto LABEL_250;
      case 71:
LABEL_250:
        *(*(*v6 + 8) + 24) = 71;
        v74 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 71;
          *&buf[12] = 2080;
          *&buf[14] = "TigrisUpgradePadding71";
          _os_log_impl(&dword_1B0389000, v74, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        goto LABEL_253;
      case 72:
LABEL_253:
        *(*(*v6 + 8) + 24) = 72;
        v75 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 72;
          *&buf[12] = 2080;
          *&buf[14] = "TigrisUpgradePadding72";
          _os_log_impl(&dword_1B0389000, v75, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        goto LABEL_256;
      case 73:
LABEL_256:
        *(*(*v6 + 8) + 24) = 73;
        v76 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 73;
          *&buf[12] = 2080;
          *&buf[14] = "LastDeprecatedNumberingScheme";
          _os_log_impl(&dword_1B0389000, v76, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        goto LABEL_259;
      default:
        if (v5 == 155000)
        {
LABEL_259:
          *(*(*v6 + 8) + 24) = 155000;
          v77 = +[MFMailMessageLibraryMigrator log];
          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            *&buf[4] = 155000;
            *&buf[12] = 2080;
            *&buf[14] = "EmetBaseline";
            _os_log_impl(&dword_1B0389000, v77, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
          }
        }

        else if (v5 != 155001)
        {
          goto LABEL_92;
        }

        *(*(*v6 + 8) + 24) = 155001;
        v78 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = 155001;
          *&buf[12] = 2080;
          *&buf[14] = "EmetSetSpotlightDataOwner";
          _os_log_impl(&dword_1B0389000, v78, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
        }

        v79 = [[MFMailMessageLibraryMailboxURLMigrationStep alloc] initWithSQLiteConnection:*(a1 + 48)];
        *(*(*(a1 + 64) + 8) + 24) = [(MFMailMessageLibraryMailboxURLMigrationStep *)v79 performMigrationStep];
        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          [*(a1 + 40) noteNeedsSpotlightReindex];

          goto LABEL_266;
        }

        break;
    }

    goto LABEL_747;
  }

  if (v5 > 169999)
  {
    switch(v5)
    {
      case 170000:
        goto LABEL_275;
      case 170001:
        goto LABEL_278;
      case 170002:
        goto LABEL_281;
      case 170003:
        goto LABEL_284;
      case 170004:
        goto LABEL_287;
      case 170005:
        goto LABEL_290;
      case 170006:
        goto LABEL_293;
      case 170007:
        goto LABEL_297;
      case 170008:
        goto LABEL_300;
      case 170009:
        goto LABEL_303;
      case 170010:
        goto LABEL_307;
      case 170011:
        goto LABEL_310;
      case 170012:
        goto LABEL_314;
      case 170013:
        goto LABEL_317;
      case 170014:
        goto LABEL_320;
      case 170015:
        goto LABEL_324;
      case 170016:
        goto LABEL_327;
      case 170017:
        goto LABEL_330;
      case 170018:
        goto LABEL_333;
      case 170019:
        goto LABEL_336;
      case 170020:
        goto LABEL_339;
      case 170021:
        goto LABEL_342;
      case 170022:
        goto LABEL_345;
      case 170023:
        goto LABEL_349;
      case 170024:
        goto LABEL_352;
      case 170025:
        goto LABEL_356;
      case 170026:
        goto LABEL_359;
      case 170027:
        goto LABEL_362;
      case 170028:
        goto LABEL_365;
      case 170029:
        goto LABEL_368;
      case 170030:
        goto LABEL_371;
      case 170031:
        goto LABEL_374;
      case 170032:
        goto LABEL_377;
      case 170033:
        goto LABEL_380;
      case 170034:
        goto LABEL_383;
      case 170035:
        goto LABEL_386;
      case 170036:
        goto LABEL_389;
      case 170037:
        goto LABEL_392;
      case 170038:
        goto LABEL_395;
      case 170039:
        goto LABEL_399;
      case 170050:
        goto LABEL_403;
      case 170051:
        goto LABEL_406;
      case 170052:
        goto LABEL_409;
      case 170053:
        goto LABEL_412;
      case 170054:
        goto LABEL_415;
      case 170055:
        goto LABEL_419;
      case 170056:
        goto LABEL_422;
      case 170057:
        goto LABEL_425;
      case 170058:
        goto LABEL_428;
      case 170059:
        goto LABEL_431;
      default:
        goto LABEL_92;
    }
  }

  if (v5 == 160000)
  {
LABEL_266:
    *(*(*v6 + 8) + 24) = 160000;
    v80 = +[MFMailMessageLibraryMigrator log];
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      *&buf[4] = 160000;
      *&buf[12] = 2080;
      *&buf[14] = "PeaceBaseline";
      _os_log_impl(&dword_1B0389000, v80, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
    }

    goto LABEL_269;
  }

  if (v5 == 160001)
  {
LABEL_269:
    *(*(*v6 + 8) + 24) = 160001;
    v81 = +[MFMailMessageLibraryMigrator log];
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      *&buf[4] = 160001;
      *&buf[12] = 2080;
      *&buf[14] = "PeaceAddMessageJournaledIndex";
      _os_log_impl(&dword_1B0389000, v81, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
    }

    goto LABEL_272;
  }

  if (v5 != 160002)
  {
    goto LABEL_92;
  }

LABEL_272:
  *(*(*v6 + 8) + 24) = 160002;
  v82 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 160002;
    *&buf[12] = 2080;
    *&buf[14] = "PeaceAddMessageJournaledConversationIndex";
    _os_log_impl(&dword_1B0389000, v82, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

LABEL_275:
  *(*(*v6 + 8) + 24) = 170000;
  v83 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170000;
    *&buf[12] = 2080;
    *&buf[14] = "YukonBaseline";
    _os_log_impl(&dword_1B0389000, v83, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

LABEL_278:
  *(*(*v6 + 8) + 24) = 170001;
  v84 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170001;
    *&buf[12] = 2080;
    *&buf[14] = "YukonAddDocumentIDColumn";
    _os_log_impl(&dword_1B0389000, v84, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

LABEL_281:
  *(*(*v6 + 8) + 24) = 170002;
  v85 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170002;
    *&buf[12] = 2080;
    *&buf[14] = "YukonUpdateMuteThreadFlagBit";
    _os_log_impl(&dword_1B0389000, v85, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

LABEL_284:
  *(*(*v6 + 8) + 24) = 170003;
  v86 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170003;
    *&buf[12] = 2080;
    *&buf[14] = "YukonAddMessageJournaledIndex";
    _os_log_impl(&dword_1B0389000, v86, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

  v87 = [[MFMailMessageLibraryLocalActionsTablesMigrationStep alloc] initWithSQLiteConnection:*(a1 + 48)];
  *(*(*(a1 + 64) + 8) + 24) = [(MFMailMessageLibraryLocalActionsTablesMigrationStep *)v87 performMigrationStep];
  v88 = *(*(*(a1 + 64) + 8) + 24);

  if ((v88 & 1) == 0)
  {
    goto LABEL_747;
  }

LABEL_287:
  *(*(*v6 + 8) + 24) = 170004;
  v89 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170004;
    *&buf[12] = 2080;
    *&buf[14] = "YukonAddLocalMessageActionsTables";
    _os_log_impl(&dword_1B0389000, v89, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

LABEL_290:
  *(*(*v6 + 8) + 24) = 170005;
  v90 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170005;
    *&buf[12] = 2080;
    *&buf[14] = "YukonMessageInteractionMetricsColumns";
    _os_log_impl(&dword_1B0389000, v90, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

LABEL_293:
  *(*(*v6 + 8) + 24) = 170006;
  v91 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170006;
    *&buf[12] = 2080;
    *&buf[14] = "YukonAddCategoryColumnsNoLongerUsed";
    _os_log_impl(&dword_1B0389000, v91, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

  if (v5 > 169999)
  {
    v92 = [[MFMailMessageLibraryLocalActionsTablesMigrationStep alloc] initWithSQLiteConnection:*(a1 + 48)];
    *(*(*(a1 + 64) + 8) + 24) = [(MFMailMessageLibraryLocalActionsTablesMigrationStep *)v92 performMigrationStep];
    v93 = *(*(*(a1 + 64) + 8) + 24);

    if ((v93 & 1) == 0)
    {
      goto LABEL_747;
    }
  }

LABEL_297:
  *(*(*v6 + 8) + 24) = 170007;
  v94 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170007;
    *&buf[12] = 2080;
    *&buf[14] = "YukonFixBrokenUpgradesFromPeace";
    _os_log_impl(&dword_1B0389000, v94, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

LABEL_300:
  *(*(*v6 + 8) + 24) = 170008;
  v95 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170008;
    *&buf[12] = 2080;
    *&buf[14] = "YukonAddCategoryColumns";
    _os_log_impl(&dword_1B0389000, v95, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

  v96 = sqlite3_exec(v4, "DROP TABLE IF EXISTS offline_cache_operations;\nDROP TABLE IF EXISTS offline_cache_replay_data;\nDROP TRIGGER after_delete_account;\n", 0, 0, 0);
  _HandleSQLiteError(v4, @"removing offline cache tables");
  *(*(*(a1 + 64) + 8) + 24) = v96 == 0;
  if (*(*(*(a1 + 64) + 8) + 24) != 1)
  {
    goto LABEL_747;
  }

LABEL_303:
  *(*(*v6 + 8) + 24) = 170009;
  v97 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170009;
    *&buf[12] = 2080;
    *&buf[14] = "YukonRemoveOfflineCacheTables";
    _os_log_impl(&dword_1B0389000, v97, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

  if (v5 > 170003)
  {
    v98 = [[MFMailMessageLibraryModifyColumnDefinitionsMigrationStep alloc] initWithSQLiteConnection:*(a1 + 48)];
    *(*(*(a1 + 64) + 8) + 24) = [(MFMailMessageLibraryModifyColumnDefinitionsMigrationStep *)v98 performMigrationStep];
    v99 = *(*(*(a1 + 64) + 8) + 24);

    if ((v99 & 1) == 0)
    {
      goto LABEL_747;
    }
  }

LABEL_307:
  *(*(*v6 + 8) + 24) = 170010;
  v100 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170010;
    *&buf[12] = 2080;
    *&buf[14] = "YukonModifyColumnDefinitions";
    _os_log_impl(&dword_1B0389000, v100, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

  [*(a1 + 40) noteNeedsRebuildTriggers];
  [*(a1 + 40) addPostMigrationBlock:&__block_literal_global_105];
  v101 = [[MFMailMessageLibraryAdoptSharedSchemaMigrationStep alloc] initWithSQLiteConnection:*(a1 + 48) protectedDatabaseName:@"protected"];
  *(*(*(a1 + 64) + 8) + 24) = [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)v101 performMigrationStep];
  v102 = *(*(*(a1 + 64) + 8) + 24);

  if ((v102 & 1) == 0)
  {
    goto LABEL_747;
  }

LABEL_310:
  *(*(*v6 + 8) + 24) = 170011;
  v103 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170011;
    *&buf[12] = 2080;
    *&buf[14] = "YukonAdoptSharedSchema";
    _os_log_impl(&dword_1B0389000, v103, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

  if (v5 == 170011)
  {
    *(*(*(a1 + 64) + 8) + 24) = _AddProtectedDataIndexes(v4);
    if (*(*(*(a1 + 64) + 8) + 24) != 1)
    {
      goto LABEL_747;
    }
  }

LABEL_314:
  *(*(*v6 + 8) + 24) = 170012;
  v104 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170012;
    *&buf[12] = 2080;
    *&buf[14] = "YukonAddProtectedDataIndexes";
    _os_log_impl(&dword_1B0389000, v104, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

LABEL_317:
  *(*(*v6 + 8) + 24) = 170013;
  v105 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170013;
    *&buf[12] = 2080;
    *&buf[14] = "YukonAddInteractionLogTable";
    _os_log_impl(&dword_1B0389000, v105, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

LABEL_320:
  *(*(*v6 + 8) + 24) = 170014;
  v106 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170014;
    *&buf[12] = 2080;
    *&buf[14] = "YukonAddReadLaterTable";
    _os_log_impl(&dword_1B0389000, v106, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

  if (v5 > 170010)
  {
    [*(a1 + 40) noteNeedsRebuildTriggers];
    *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B670] runWithConnection:v3] == 0;
    _HandleSQLiteError(v4, @"Renaming threads to message_references");
    if (*(*(*(a1 + 64) + 8) + 24) != 1)
    {
      goto LABEL_747;
    }
  }

LABEL_324:
  *(*(*v6 + 8) + 24) = 170015;
  v107 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170015;
    *&buf[12] = 2080;
    *&buf[14] = "YukonRenameThreadsTable";
    _os_log_impl(&dword_1B0389000, v107, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

  *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B470] runWithConnection:v3] == 0;
  _HandleSQLiteError(v4, @"Creating messages deleted date received index");
  if (*(*(*(a1 + 64) + 8) + 24) != 1)
  {
    goto LABEL_747;
  }

LABEL_327:
  *(*(*v6 + 8) + 24) = 170016;
  v108 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170016;
    *&buf[12] = 2080;
    *&buf[14] = "YukonAddMessageDeletedDateReceivedIndex";
    _os_log_impl(&dword_1B0389000, v108, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

  [*(a1 + 40) noteNeedsRebuildTriggers];
  *(*(*(a1 + 64) + 8) + 24) = [MFMailMessageLibraryAddSearchableIndexTablesUpgradeStep runWithConnection:v3]== 0;
  _HandleSQLiteError(v4, @"Creating searchable index tables");
  if (*(*(*(a1 + 64) + 8) + 24) != 1)
  {
    goto LABEL_747;
  }

LABEL_330:
  *(*(*v6 + 8) + 24) = 170017;
  v109 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170017;
    *&buf[12] = 2080;
    *&buf[14] = "YukonAddSearchableIndexTables";
    _os_log_impl(&dword_1B0389000, v109, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

  *(*(*(a1 + 64) + 8) + 24) = [MFMailMessageLibraryAddJournaledConversationIDDateReceivedUpgradeStep runWithConnection:v3]== 0;
  _HandleSQLiteError(v4, @"Creating messages_journaled_conversation_id_date_received_index");
  if (*(*(*(a1 + 64) + 8) + 24) != 1)
  {
    goto LABEL_747;
  }

LABEL_333:
  *(*(*v6 + 8) + 24) = 170018;
  v110 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170018;
    *&buf[12] = 2080;
    *&buf[14] = "YukonAddJournaledConversationIDDateReceivedIndex";
    _os_log_impl(&dword_1B0389000, v110, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

  *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B4D0] runWithConnection:v3] == 0;
  _HandleSQLiteError(v4, @"Adding thread tables");
  if (*(*(*(a1 + 64) + 8) + 24) != 1)
  {
    goto LABEL_747;
  }

LABEL_336:
  *(*(*v6 + 8) + 24) = 170019;
  v111 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170019;
    *&buf[12] = 2080;
    *&buf[14] = "YukonAddThreadTables";
    _os_log_impl(&dword_1B0389000, v111, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

LABEL_339:
  *(*(*v6 + 8) + 24) = 170020;
  v112 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170020;
    *&buf[12] = 2080;
    *&buf[14] = "YukonAddThreadsScopeConverationDateIndex";
    _os_log_impl(&dword_1B0389000, v112, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

  *(*(*(a1 + 64) + 8) + 24) = _MigratePropertiesToEmailAppGroup();
  if (*(*(*(a1 + 64) + 8) + 24) != 1)
  {
    goto LABEL_747;
  }

LABEL_342:
  *(*(*v6 + 8) + 24) = 170021;
  v113 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170021;
    *&buf[12] = 2080;
    *&buf[14] = "YukonMigrateEmailUserDefaults";
    _os_log_impl(&dword_1B0389000, v113, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

  *(*(*(a1 + 64) + 8) + 24) = [MFMailMessageLibrarySetThreadSendersRecipientsConflictResolutionUpgradeStep runWithConnection:v3]== 0;
  _HandleSQLiteError(v4, @"Setting conflict resolution for primary key of thread_senders and thread_recipients");
  if (*(*(*(a1 + 64) + 8) + 24) != 1)
  {
    goto LABEL_747;
  }

LABEL_345:
  *(*(*v6 + 8) + 24) = 170022;
  v114 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170022;
    *&buf[12] = 2080;
    *&buf[14] = "YukonSetConflictResolutionForThreadSendersAndRecipients";
    _os_log_impl(&dword_1B0389000, v114, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

  if (v5 > 170010)
  {
    *(*(*(a1 + 64) + 8) + 24) = [MFMailMessageLibraryResetSequenceNumberMigrationStep runWithConnection:v3]== 0;
    _HandleSQLiteError(v4, @"Reset sequence_identifier for messages");
    if (*(*(*(a1 + 64) + 8) + 24) != 1)
    {
      goto LABEL_747;
    }
  }

LABEL_349:
  *(*(*v6 + 8) + 24) = 170023;
  v115 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170023;
    *&buf[12] = 2080;
    *&buf[14] = "YukonResetSequenceIdentifierForFlagColors";
    _os_log_impl(&dword_1B0389000, v115, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

  *(*(*(a1 + 64) + 8) + 24) = _AddThreadsSendersAndRecipientsIndexes(v4);
  if (*(*(*(a1 + 64) + 8) + 24) != 1)
  {
    goto LABEL_747;
  }

LABEL_352:
  *(*(*v6 + 8) + 24) = 170024;
  v116 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170024;
    *&buf[12] = 2080;
    *&buf[14] = "YukonAddThreadSendersAndRecipientsIndexes";
    _os_log_impl(&dword_1B0389000, v116, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

  if (v5 > 170010)
  {
    *(*(*(a1 + 64) + 8) + 24) = [MFMailMessageLibraryThreadFlagColorsUpgradeStep runWithConnection:v3]== 0;
    _HandleSQLiteError(v4, @"Adding flag support to threads");
    if (*(*(*(a1 + 64) + 8) + 24) != 1)
    {
      goto LABEL_747;
    }
  }

LABEL_356:
  *(*(*v6 + 8) + 24) = 170025;
  v117 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170025;
    *&buf[12] = 2080;
    *&buf[14] = "YukonAddThreadFlagColorsColumns";
    _os_log_impl(&dword_1B0389000, v117, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

  *(*(*(a1 + 64) + 8) + 24) = _AddThreadsJournaledColumn(v4);
  if (*(*(*(a1 + 64) + 8) + 24) != 1)
  {
    goto LABEL_747;
  }

LABEL_359:
  *(*(*v6 + 8) + 24) = 170026;
  v118 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170026;
    *&buf[12] = 2080;
    *&buf[14] = "YukonAddThreadJournaledColumn";
    _os_log_impl(&dword_1B0389000, v118, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

  *(*(*(a1 + 64) + 8) + 24) = _AddMessageIndexesForThreadQueries(v4);
  if (*(*(*(a1 + 64) + 8) + 24) != 1)
  {
    goto LABEL_747;
  }

LABEL_362:
  *(*(*v6 + 8) + 24) = 170027;
  v119 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170027;
    *&buf[12] = 2080;
    *&buf[14] = "YukonAddMessageIndexesForThreadQueries";
    _os_log_impl(&dword_1B0389000, v119, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

  *(*(*(a1 + 64) + 8) + 24) = _AddMessageIDIndex(v4);
  if (*(*(*(a1 + 64) + 8) + 24) != 1)
  {
    goto LABEL_747;
  }

LABEL_365:
  *(*(*v6 + 8) + 24) = 170028;
  v120 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170028;
    *&buf[12] = 2080;
    *&buf[14] = "YukonAddMessageIDIndex";
    _os_log_impl(&dword_1B0389000, v120, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

  *(*(*(a1 + 64) + 8) + 24) = _AddSenderVIPUnreadCountQueryIndex(v4);
  if (*(*(*(a1 + 64) + 8) + 24) != 1)
  {
    goto LABEL_747;
  }

LABEL_368:
  *(*(*v6 + 8) + 24) = 170029;
  v121 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170029;
    *&buf[12] = 2080;
    *&buf[14] = "YukonSenderVIPCountQueryIndex";
    _os_log_impl(&dword_1B0389000, v121, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

LABEL_371:
  *(*(*v6 + 8) + 24) = 170030;
  v122 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170030;
    *&buf[12] = 2080;
    *&buf[14] = "YukonRemoveCategorySchema";
    _os_log_impl(&dword_1B0389000, v122, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

  *(*(*(a1 + 64) + 8) + 24) = _UpdateDeletedMailboxIndex(v4);
  if (*(*(*(a1 + 64) + 8) + 24) != 1)
  {
    goto LABEL_747;
  }

LABEL_374:
  *(*(*v6 + 8) + 24) = 170031;
  v123 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170031;
    *&buf[12] = 2080;
    *&buf[14] = "YukonModifyDeletedMailboxIndex";
    _os_log_impl(&dword_1B0389000, v123, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

  *(*(*(a1 + 64) + 8) + 24) = _AddJournaledUndeletedIndex(v4);
  if (*(*(*(a1 + 64) + 8) + 24) != 1)
  {
    goto LABEL_747;
  }

LABEL_377:
  *(*(*v6 + 8) + 24) = 170032;
  v124 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170032;
    *&buf[12] = 2080;
    *&buf[14] = "YukonAddJournaledUndeletedIndex";
    _os_log_impl(&dword_1B0389000, v124, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

LABEL_380:
  *(*(*v6 + 8) + 24) = 170033;
  v125 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170033;
    *&buf[12] = 2080;
    *&buf[14] = "YukonCachedMetadataTableUnused1";
    _os_log_impl(&dword_1B0389000, v125, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

  [*(a1 + 40) noteNeedsRebuildTriggers];
  *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B668] runWithConnection:v3] == 0;
  if (*(*(*(a1 + 64) + 8) + 24) != 1)
  {
    goto LABEL_747;
  }

LABEL_383:
  *(*(*v6 + 8) + 24) = 170034;
  v126 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170034;
    *&buf[12] = 2080;
    *&buf[14] = "YukonRemoveReadLaterSchema";
    _os_log_impl(&dword_1B0389000, v126, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

LABEL_386:
  *(*(*v6 + 8) + 24) = 170035;
  v127 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170035;
    *&buf[12] = 2080;
    *&buf[14] = "YukonRemoveReadLaterSchemaDotsubmission";
    _os_log_impl(&dword_1B0389000, v127, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

LABEL_389:
  *(*(*v6 + 8) + 24) = 170036;
  v128 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170036;
    *&buf[12] = 2080;
    *&buf[14] = "YukonCachedMetadataTableUnused2";
    _os_log_impl(&dword_1B0389000, v128, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

  *buf = "CREATE TABLE IF NOT EXISTS table_metadata (table_name TEXT COLLATE BINARY NOT NULL,\n                                           largest_deleted_rowid INTEGER NOT NULL DEFAULT 0,\n                                           PRIMARY KEY(table_name)) WITHOUT ROWID;";
  *(*(*(a1 + 64) + 8) + 24) = _ExecuteQueries(v4, buf, 1, @"creating table_metadata table");
  if (*(*(*(a1 + 64) + 8) + 24) != 1)
  {
    goto LABEL_747;
  }

LABEL_392:
  *(*(*v6 + 8) + 24) = 170037;
  v129 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170037;
    *&buf[12] = 2080;
    *&buf[14] = "YukonAddTableMetadataTable";
    _os_log_impl(&dword_1B0389000, v129, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

  [*(a1 + 40) noteNeedsRebuildTriggers];
  *(*(*(a1 + 64) + 8) + 24) = _ReplaceCachedMetadataTable(v4);
  if (*(*(*(a1 + 64) + 8) + 24) != 1)
  {
    goto LABEL_747;
  }

LABEL_395:
  *(*(*v6 + 8) + 24) = 170038;
  v130 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170038;
    *&buf[12] = 2080;
    *&buf[14] = "YukonCachedMetadataTable";
    _os_log_impl(&dword_1B0389000, v130, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

  if (v5 > 170010)
  {
    *(*(*(a1 + 64) + 8) + 24) = [MFMailMessageLibraryFixPopUidsUniquenessConstraintUpgradeStep runWithConnection:v3]== 0;
    if (*(*(*(a1 + 64) + 8) + 24) != 1)
    {
      goto LABEL_747;
    }
  }

LABEL_399:
  *(*(*v6 + 8) + 24) = 170039;
  v131 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170039;
    *&buf[12] = 2080;
    *&buf[14] = "YukonFixPopUidsUniquenessConstraint";
    _os_log_impl(&dword_1B0389000, v131, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

  if (v5 > 170025)
  {
    *(*(*(a1 + 64) + 8) + 24) = _AddThreadJournaledDateIndex(v4);
    if (*(*(*(a1 + 64) + 8) + 24) != 1)
    {
      goto LABEL_747;
    }
  }

LABEL_403:
  *(*(*v6 + 8) + 24) = 170050;
  v132 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170050;
    *&buf[12] = 2080;
    *&buf[14] = "YukonAddThreadJournaledDateIndex";
    _os_log_impl(&dword_1B0389000, v132, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

  *(*(*(a1 + 64) + 8) + 24) = [MEMORY[0x1E699B5D8] run];
  if (*(*(*(a1 + 64) + 8) + 24) != 1)
  {
    goto LABEL_747;
  }

LABEL_406:
  *(*(*v6 + 8) + 24) = 170051;
  v133 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170051;
    *&buf[12] = 2080;
    *&buf[14] = "YukonMigrateBlockedSenderEnabledToActionEnum";
    _os_log_impl(&dword_1B0389000, v133, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

  *(*(*(a1 + 64) + 8) + 24) = _AddUnreadCountJournalIndexes(v4);
  if (*(*(*(a1 + 64) + 8) + 24) != 1)
  {
    goto LABEL_747;
  }

LABEL_409:
  *(*(*v6 + 8) + 24) = 170052;
  v134 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170052;
    *&buf[12] = 2080;
    *&buf[14] = "YukonAddUnreadCountIndexes";
    _os_log_impl(&dword_1B0389000, v134, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

  *(*(*(a1 + 64) + 8) + 24) = _AddAppBadgeCountIndexes(v4);
  if (*(*(*(a1 + 64) + 8) + 24) != 1)
  {
    goto LABEL_747;
  }

LABEL_412:
  *(*(*v6 + 8) + 24) = 170053;
  v135 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170053;
    *&buf[12] = 2080;
    *&buf[14] = "YukonAddAppBadgeCountIndexes";
    _os_log_impl(&dword_1B0389000, v135, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

LABEL_415:
  *(*(*v6 + 8) + 24) = 170054;
  v136 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = 170054;
    *&buf[12] = 2080;
    *&buf[14] = "YukonResetThreadScopes";
    _os_log_impl(&dword_1B0389000, v136, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
  }

  if (!_protectedIndexHasBeenInitialized(*(a1 + 48)) || (*(*(*(a1 + 64) + 8) + 24) = _ResetSummary(v4), *(*(*(a1 + 64) + 8) + 24) == 1))
  {
LABEL_419:
    *(*(*v6 + 8) + 24) = 170055;
    v137 = +[MFMailMessageLibraryMigrator log];
    if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      *&buf[4] = 170055;
      *&buf[12] = 2080;
      *&buf[14] = "YukonResetSummary";
      _os_log_impl(&dword_1B0389000, v137, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
    }

    *(*(*(a1 + 64) + 8) + 24) = _AddSenderVIPAndConversationIndexes(v4);
    if (*(*(*(a1 + 64) + 8) + 24) != 1)
    {
      goto LABEL_747;
    }

LABEL_422:
    *(*(*v6 + 8) + 24) = 170056;
    v138 = +[MFMailMessageLibraryMigrator log];
    if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      *&buf[4] = 170056;
      *&buf[12] = 2080;
      *&buf[14] = "YukonAddSenderVIPAndConversationIndexes";
      _os_log_impl(&dword_1B0389000, v138, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
    }

    *(*(*(a1 + 64) + 8) + 24) = _AddDeletedToMessagesConversationIDIndexes(v4);
    if (*(*(*(a1 + 64) + 8) + 24) != 1)
    {
      goto LABEL_747;
    }

LABEL_425:
    *(*(*v6 + 8) + 24) = 170057;
    v139 = +[MFMailMessageLibraryMigrator log];
    if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      *&buf[4] = 170057;
      *&buf[12] = 2080;
      *&buf[14] = "YukonResetThreadScopes2";
      _os_log_impl(&dword_1B0389000, v139, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
    }

    *(*(*(a1 + 64) + 8) + 24) = _AddFilterIndexesAndRemoveTriggers(v4);
    if (*(*(*(a1 + 64) + 8) + 24) != 1)
    {
      goto LABEL_747;
    }

LABEL_428:
    *(*(*v6 + 8) + 24) = 170058;
    v140 = +[MFMailMessageLibraryMigrator log];
    if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      *&buf[4] = 170058;
      *&buf[12] = 2080;
      *&buf[14] = "YukonAddFilterIndexesAndRemoveTriggers";
      _os_log_impl(&dword_1B0389000, v140, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
    }

    *(*(*(a1 + 64) + 8) + 24) = [MFMailMessageLibraryRebuildThreadsTableUpgradeStep runWithConnection:v3]== 0;
    _HandleSQLiteError(v4, @"Removing deleted column from threads");
    if (*(*(*(a1 + 64) + 8) + 24) != 1)
    {
      goto LABEL_747;
    }

LABEL_431:
    *(*(*v6 + 8) + 24) = 170059;
    v141 = +[MFMailMessageLibraryMigrator log];
    if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      *&buf[4] = 170059;
      *&buf[12] = 2080;
      *&buf[14] = "YukonResetThreadScopes3";
      _os_log_impl(&dword_1B0389000, v141, OS_LOG_TYPE_DEFAULT, "Upgrading from %lu (%s)", buf, 0x16u);
    }

    goto LABEL_434;
  }

LABEL_747:
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 40) _checkForeignKeysWithConnection:v3];
    if (*(*(*(a1 + 64) + 8) + 24))
    {
      if ([*(a1 + 40) needsRebuildTriggers])
      {
        v275 = +[MFMailMessageLibraryMigrator log];
        if (os_log_type_enabled(v275, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B0389000, v275, OS_LOG_TYPE_DEFAULT, "Rebuilding triggers", buf, 2u);
        }

        v276 = _SQLFromFile();
        v277 = _ExecuteSQL(v4, v276, @"performing statements from file triggers.sql");

        *(*(*(a1 + 64) + 8) + 24) = v277;
      }
    }
  }

  if (*(*(*(a1 + 64) + 8) + 24) == 1 && [*(a1 + 40) needsRebuildMessageInfoIndex])
  {
    v278 = +[MFMailMessageLibraryMigrator log];
    if (os_log_type_enabled(v278, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0389000, v278, OS_LOG_TYPE_DEFAULT, "Rebuilding Message Info Index", buf, 2u);
    }

    v279 = sqlite3_exec(v4, "DROP INDEX IF EXISTS message_infos_index;\nCREATE INDEX message_infos_index ON messages(mailbox, deleted, journaled, sender_vip, flags, conversation_id, date_sent, message_id, date_received DESC, ROWID DESC);", 0, 0, 0);
    _HandleSQLiteError(v4, @"updating message_infos_index covering index");
    *(*(*(a1 + 64) + 8) + 24) = v279 == 0;
  }

  v280 = *(*(*(a1 + 64) + 8) + 24);
  if (v280 == 1 && v5 != 231002)
  {
    v282 = +[MFMailMessageLibraryMigrator log];
    if (os_log_type_enabled(v282, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0389000, v282, OS_LOG_TYPE_DEFAULT, "Updating library version", buf, 2u);
    }

    *buf = 0;
    if (sqlite3_prepare_v2(v4, "INSERT OR REPLACE INTO properties (key, value) values ('version', ?)", -1, buf, 0))
    {
      _HandleSQLiteError(v4, @"preparing library version insert statement");
    }

    else
    {
      sqlite3_bind_int(*buf, 1, 231002);
      sqlite3_step(*buf);
      _HandleSQLiteError(v4, @"setting library version");
      sqlite3_finalize(*buf);
    }

    LOBYTE(v280) = *(*(*(a1 + 64) + 8) + 24);
  }

  v283 = *MEMORY[0x1E69E9840];
  return v280 & 1;
}

void __80__MFMailMessageLibraryMigrator__runMigrationStepsFromVersion_connection_schema___block_invoke_427(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v6 = 0;
  v3 = [MEMORY[0x1E699B3F0] runWithConnection:a2 journalManager:v2 error:&v6];
  v4 = v6;
  if ((v3 & 1) == 0)
  {
    v5 = +[MFMailMessageLibraryMigrator log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __80__MFMailMessageLibraryMigrator__runMigrationStepsFromVersion_connection_schema___block_invoke_427_cold_1();
    }
  }
}

- (BOOL)_runAddBusinessColumnsUpgradeStepForConnection:(id)connection db:(sqlite3 *)db
{
  connectionCopy = connection;
  HasBeenInitialized = _protectedIndexHasBeenInitialized(connectionCopy);
  v7 = [MEMORY[0x1E699B408] runWithConnection:connectionCopy protectedIndexInitialized:HasBeenInitialized protectedDatabaseName:@"protected"];
  _HandleSQLiteError(db, @"Add business columns businesses.localized_brand_name, business_addresses.last_bcs_sync");
  if (HasBeenInitialized)
  {
    v11 = 0;
    v7 = [MEMORY[0x1E699B508] runWithConnection:connectionCopy error:&v11];
    v8 = v11;
    if ((v7 & 1) == 0)
    {
      v9 = +[MFMailMessageLibraryMigrator log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [MFMailMessageLibraryMigrator _runAddBusinessColumnsUpgradeStepForConnection:db:];
      }
    }
  }

  return v7;
}

- (int64_t)_checkContentProtectionStateForUpgradeStartingFromVersion:(int)version
{
  v5 = _os_feature_enabled_impl();
  if (version >= 224003 && (v5 & 1) != 0)
  {
    return 2;
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  contentProtectionQueue = [(MFMailMessageLibraryMigrator *)self contentProtectionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__MFMailMessageLibraryMigrator__checkContentProtectionStateForUpgradeStartingFromVersion___block_invoke;
  block[3] = &unk_1E7AA65C8;
  block[4] = &v14;
  dispatch_sync(contentProtectionQueue, block);

  if (v15[3])
  {
    v6 = 2;
  }

  else
  {
    migrationState = [(MFMailMessageLibraryMigrator *)self migrationState];
    [migrationState lock];

    migrationState2 = [(MFMailMessageLibraryMigrator *)self migrationState];
    [migrationState2 unlockWithCondition:1];

    v10 = +[MFMailMessageLibraryMigrator log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1B0389000, v10, OS_LOG_TYPE_DEFAULT, "Protected Index unavailable", v12, 2u);
    }

    v6 = 1;
  }

  _Block_object_dispose(&v14, 8);
  return v6;
}

uint64_t __90__MFMailMessageLibraryMigrator__checkContentProtectionStateForUpgradeStartingFromVersion___block_invoke(uint64_t a1)
{
  result = EFProtectedDataAvailable();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)_checkForeignKeysWithConnection:(id)connection
{
  v34 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v4 = [connectionCopy preparedStatementForQueryString:@"PRAGMA foreign_key_check"];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v5 = +[MFMailMessageLibraryMigrator log];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v16 = __64__MFMailMessageLibraryMigrator__checkForeignKeysWithConnection___block_invoke;
  v17 = &unk_1E7AA65F0;
  v20 = &v22;
  v6 = v4;
  v18 = v6;
  v21 = &v26;
  v7 = connectionCopy;
  v19 = v7;
  v8 = v5;
  v9 = v15;
  v10 = mach_absolute_time();
  v16(v9);
  v11 = mach_absolute_time();
  if (EFGetElapsedTimeSinceAbsoluteTime_onceToken_0 != -1)
  {
    [MFMailMessageLibraryMigrator _checkForeignKeysWithConnection:];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = @"PRAGMA foreign_key_check";
    v32 = 2048;
    v33 = ((v11 - v10) * EFGetElapsedTimeSinceAbsoluteTime_sTimebaseInfo_0 / *algn_1EB70247C) / 1000000000.0;
    _os_log_impl(&dword_1B0389000, v8, OS_LOG_TYPE_DEFAULT, "%@ : took %fs", buf, 0x16u);
  }

  v12 = *(v23 + 24) == 1 && v27[3] == 0;
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

void __64__MFMailMessageLibraryMigrator__checkForeignKeysWithConnection___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__MFMailMessageLibraryMigrator__checkForeignKeysWithConnection___block_invoke_2;
  v6[3] = &unk_1E7AA3810;
  v6[4] = *(a1 + 56);
  v3 = [v2 executeUsingBlock:v6 error:&v5];
  v4 = v5;
  *(*(*(a1 + 48) + 8) + 24) = v3;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 40) handleError:v4 message:@"Checking foreign keys"];
  }
}

void __64__MFMailMessageLibraryMigrator__checkForeignKeysWithConnection___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a2;
  *a4 = ++*(*(*(a1 + 32) + 8) + 24) > 9;
  v7 = +[MFMailMessageLibraryMigrator log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = [v6 objectAtIndexedSubscript:1];
    v10 = [v9 int64Value];
    v11 = [v6 objectAtIndexedSubscript:0];
    v12 = [v11 stringValue];
    v13 = [v6 objectAtIndexedSubscript:2];
    v14 = [v13 stringValue];
    v15 = 134218498;
    v16 = v10;
    v17 = 2114;
    v18 = v12;
    v19 = 2114;
    v20 = v14;
    _os_log_error_impl(&dword_1B0389000, v7, OS_LOG_TYPE_ERROR, "Foreign key violation on row %lld of table %{public}@ with reference to table %{public}@", &v15, 0x20u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)resetTTRPromptAndForceReindex
{
  MFMobileMailPreferenceDomain();
  MFMobileMailContainerPath();
  v3 = *MEMORY[0x1E695E8B8];
  v4 = *MEMORY[0x1E695E898];
  _CFPreferencesSetValueWithContainer();
  _CFPreferencesSetValueWithContainer();

  [(MFMailMessageLibraryMigrator *)self noteNeedsSpotlightReindex];
}

- (void)addPostMigrationBlock:(id)block
{
  postMigrationBlocks = self->_postMigrationBlocks;
  v4 = _Block_copy(block);
  [(NSMutableArray *)postMigrationBlocks addObject:?];
}

- (void)runPostMigrationBlocksWithConnection:(id)connection
{
  v16 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v5 = [(NSMutableArray *)self->_postMigrationBlocks copy];
  [(NSMutableArray *)self->_postMigrationBlocks removeAllObjects];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v11 + 1) + 8 * v9) + 16))(*(*(&v11 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)detachProtectedDatabaseWithConnection:(id)connection
{
  connectionCopy = connection;
  delegate = [(MFMailMessageLibraryMigrator *)self delegate];
  [delegate mailMessageLibraryMigrator:self detachProtectedDatabaseWithConnection:connectionCopy];
}

- (void)contentProtectionStateChanged:(int64_t)changed previousState:(int64_t)state
{
  v5 = [(MFMailMessageLibraryMigrator *)self contentProtectionQueue:changed];
  dispatch_assert_queue_V2(v5);

  if (EFProtectedDataAvailable())
  {
    v6 = +[MFMailMessageLibraryMigrator log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_DEFAULT, "Protected Index became available", v9, 2u);
    }

    migrationState = [(MFMailMessageLibraryMigrator *)self migrationState];
    [migrationState lock];

    migrationState2 = [(MFMailMessageLibraryMigrator *)self migrationState];
    [migrationState2 unlockWithCondition:0];
  }
}

- (MFMailMessageLibraryMigratorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)migrateWithDatabaseConnection:(os_log_t)log schema:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "Error initializing database parameters: %{public}@", buf, 0xCu);
}

void __80__MFMailMessageLibraryMigrator__runMigrationStepsFromVersion_connection_schema___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __80__MFMailMessageLibraryMigrator__runMigrationStepsFromVersion_connection_schema___block_invoke_2_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __80__MFMailMessageLibraryMigrator__runMigrationStepsFromVersion_connection_schema___block_invoke_2_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void __80__MFMailMessageLibraryMigrator__runMigrationStepsFromVersion_connection_schema___block_invoke_2_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void __80__MFMailMessageLibraryMigrator__runMigrationStepsFromVersion_connection_schema___block_invoke_427_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_runAddBusinessColumnsUpgradeStepForConnection:db:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_attachProtectedDatabaseWithConnection:forUpgradeStartingFromVersion:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end