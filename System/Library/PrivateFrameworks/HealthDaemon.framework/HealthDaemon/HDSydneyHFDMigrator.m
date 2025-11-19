@interface HDSydneyHFDMigrator
- (BOOL)migrateDataForHFDataStore:(id)a3 from:(const void *)a4 to:(void *)a5 recoveryAnalytics:(id)a6 error:(id *)a7;
- (BOOL)migrateDataForHFDataStore:(id)a3 toSQLiteFrom:(const void *)a4 error:(id *)a5;
- (HDSydneyHFDMigrator)initWithMigrationTransaction:(id)a3;
- (id)allSeriesEntityClassesForDataStore:(id)a3;
- (int64_t)migrateHFD:(id *)a3;
- (void)HFDataStore:(id)a3 detectedCorruptionOfType:(int64_t)a4 code:(int)a5 error:(id)a6 shouldPromptUser:(BOOL)a7 initialRebuildState:(int64_t)a8 updatedRebuildState:(int64_t)a9;
- (void)HFDataStoreDetectedOutOfSpace:(id)a3;
- (void)didMigrateHFDataStore:(id)a3 fromState:(int64_t)a4 toState:(int64_t)a5 success:(BOOL)a6 error:(id)a7;
- (void)requestRebuildTransactionForHFDataStore:(id)a3;
@end

@implementation HDSydneyHFDMigrator

- (HDSydneyHFDMigrator)initWithMigrationTransaction:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HDSydneyHFDMigrator;
  v6 = [(HDSydneyHFDMigrator *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transaction, a3);
    v7->_corruptionRebuildCompleted = 0;
    verificationError = v7->_verificationError;
    v7->_verificationError = 0;

    migrationError = v7->_migrationError;
    v7->_migrationError = 0;
  }

  return v7;
}

- (id)allSeriesEntityClassesForDataStore:(id)a3
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)HFDataStore:(id)a3 detectedCorruptionOfType:(int64_t)a4 code:(int)a5 error:(id)a6 shouldPromptUser:(BOOL)a7 initialRebuildState:(int64_t)a8 updatedRebuildState:(int64_t)a9
{
  v17 = *MEMORY[0x277D85DE8];
  v10 = a6;
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
  {
    v13 = 138543618;
    v14 = self;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_INFO, "%{public}@: Saw HFD corruption during migration to SQLite - %@", &v13, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)HFDataStoreDetectedOutOfSpace:(id)a3
{
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_228986000, v3, OS_LOG_TYPE_ERROR, "Saw out-of-space event migrating the HFD; ignoring (the migration will likely fail)", v4, 2u);
  }
}

- (void)didMigrateHFDataStore:(id)a3 fromState:(int64_t)a4 toState:(int64_t)a5 success:(BOOL)a6 error:(id)a7
{
  v29 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a7;
  v13 = v12;
  if (!a6)
  {
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [MEMORY[0x277CCA9B8] hk_error:122 format:{@"Migration failed at rebuild stage %ld without reporting an error.", a5}];
    }

    migrationError = self->_migrationError;
    self->_migrationError = v14;
  }

  v16 = self->_migrationError;
  v17 = [(HDDatabaseMigrationTransaction *)self->_transaction delegate];
  [v17 migrationTransaction:self->_transaction reportHFDMigrationStatus:v16 != 0 schemaVersion:a5 error:self->_migrationError];

  if (self->_migrationError)
  {
    _HKInitializeLogging();
    v18 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v19 = self->_migrationError;
      *buf = 138543874;
      v24 = self;
      v25 = 2048;
      v26 = a5;
      v27 = 2114;
      v28 = v19;
      _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "%{public}@: HFD reported migration to %ld with error: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    _HKInitializeLogging();
    v20 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
    {
      v21 = self->_migrationError;
      *buf = 138543874;
      v24 = self;
      v25 = 2048;
      v26 = a5;
      v27 = 2114;
      v28 = v21;
      _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: HFD reported migration to %ld with error: %{public}@", buf, 0x20u);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)requestRebuildTransactionForHFDataStore:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: HFD unexpectedly requested a rebuild transaction while rebuilding", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)migrateDataForHFDataStore:(id)a3 from:(const void *)a4 to:(void *)a5 recoveryAnalytics:(id)a6 error:(id *)a7
{
  v25 = *MEMORY[0x277D85DE8];
  v9 = a6;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [(HDSydneyHFDMigrator *)self allSeriesEntityClassesForDataStore:a3];
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = *v21;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v19 = *(*(&v20 + 1) + 8 * i);
        v18 = v9;
        v14 = HKWithAutoreleasePool();

        if (!v14)
        {
          v15 = 0;
          goto LABEL_12;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    v15 = 1;
  }

  else
  {
    v15 = 1;
  }

LABEL_12:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t __81__HDSydneyHFDMigrator_migrateDataForHFDataStore_from_to_recoveryAnalytics_error___block_invoke(void *a1, uint64_t a2)
{
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  v7 = [*(a1[4] + 16) protectedDatabase];
  v8 = [v4 migrateDataFromDataStore:v5 to:v6 database:v7 recoveryAnalytics:a1[5] error:a2];

  return v8;
}

- (BOOL)migrateDataForHFDataStore:(id)a3 toSQLiteFrom:(const void *)a4 error:(id *)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(HDSydneyHFDMigrator *)self allSeriesEntityClassesForDataStore:a3];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if (!HKWithAutoreleasePool())
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __68__HDSydneyHFDMigrator_migrateDataForHFDataStore_toSQLiteFrom_error___block_invoke(void *a1, uint64_t a2)
{
  v4 = a1[5];
  v3 = a1[6];
  v5 = [*(a1[4] + 16) protectedDatabase];
  v6 = [v4 migrateDataToSQLFromStore:v3 database:v5 error:a2];

  return v6;
}

- (int64_t)migrateHFD:(id *)a3
{
  transaction = self->_transaction;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__HDSydneyHFDMigrator_migrateHFD___block_invoke;
  v5[3] = &unk_278625B40;
  v5[4] = self;
  return [(HDDatabaseMigrationTransaction *)transaction accessHistoricHFDWithError:a3 block:v5];
}

uint64_t __34__HDSydneyHFDMigrator_migrateHFD___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 delegate];
  [v5 setDelegate:*(a1 + 32)];
  v7 = [v5 rebuildWithTransaction:*(a1 + 32) error:a3];
  if ([v5 rebuildState] == 20 && (v7 == 3 || !v7) && *(*(a1 + 32) + 24))
  {
    [v5 requestHFDToSQLiteMigration];
    v8 = *(*(a1 + 32) + 24);
    v9 = v8;
    if (v8)
    {
      if (a3)
      {
        v10 = v8;
        *a3 = v9;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    [v5 setDelegate:v6];
    v7 = 1;
  }

  else
  {
    [v5 setDelegate:v6];
  }

  return v7;
}

@end