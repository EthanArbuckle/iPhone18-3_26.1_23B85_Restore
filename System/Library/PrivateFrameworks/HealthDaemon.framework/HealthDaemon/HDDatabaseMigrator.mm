@interface HDDatabaseMigrator
- (BOOL)executeSQL:(id)l error:(id *)error;
- (BOOL)executeSQLStatements:(id)statements error:(id *)error;
- (HDDatabaseMigrator)init;
- (HDDatabaseMigrator)initWithTransaction:(id)transaction;
- (id)boulderProtectedMigrationSteps;
- (id)butlerProtectedMigrationSteps;
- (id)cinarProtectedMigrationSteps;
- (id)cinarUnprotectedMigrationSteps;
- (id)corryProtectedMigrationSteps;
- (id)eagleProtectedMigrationSteps;
- (id)eagleUnprotectedMigrationSteps;
- (id)emetProtectedMigrationSteps;
- (id)emetUnprotectedMigrationSteps;
- (id)erieProtectedMigrationSteps;
- (id)monarchProtectedMigrationSteps;
- (id)monarchUnprotectedMigrationSteps;
- (id)okemoZursProtectedMigrationSteps;
- (id)okemoZursUnprotectedMigrationSteps;
- (id)tigrisProtectedMigrationSteps;
- (id)tigrisUnprotectedMigrationSteps;
- (id)whitetailProtectedMigrationSteps;
- (id)whitetailUnprotectedMigrationSteps;
- (int64_t)migrateFromVersion:(int64_t)version toVersion:(int64_t)toVersion error:(id *)error;
- (int64_t)performHFDMigrationToVersion:(int64_t)version handler:(id)handler error:(id *)error;
- (uint64_t)_deleteDatabaseStatusForVersion:(uint64_t)version errorMessage:(uint64_t)message error:(uint64_t)error;
- (uint64_t)_migrateKeyValueColumnsFromStringToText:(uint64_t)text error:;
- (uint64_t)_recreateMedicalRecordTable:(void *)table intermediateTables:(void *)tables creationSQL:(uint64_t)l error:;
- (uint64_t)_renameKeyValueSyncStoreColumnInProtectedDabase:(uint64_t)dabase error:;
- (uint64_t)_updateDataCollectorKeyValueContextWithObject:(void *)object domain:(uint64_t)domain error:;
- (uint64_t)_updateKeyValueEntityUniquenessWithProtectedDatabase:(uint64_t)database error:;
- (unint64_t)fetchLegacySyncIdentity:(id)identity error:(id *)error;
- (void)addLockstepMigrationForSchema:(id)schema toVersion:(int64_t)version requiringVersion:(int64_t)requiringVersion foreignKeyStatus:(int64_t)status handler:(id)handler;
- (void)addMigrationForSchema:(id)schema toVersion:(int64_t)version foreignKeyStatus:(int64_t)status handler:(id)handler;
- (void)addMigrationSteps:(id)steps;
- (void)addMigrationTo:(int64_t)to foreignKeys:(int64_t)keys handler:(id)handler;
- (void)addMigrationTo:(int64_t)to function:(void *)function;
- (void)addMigrationTo:(int64_t)to function:(void *)function foreignKeys:(int64_t)keys;
- (void)addPrimaryMigrationSteps;
- (void)azul_addProtectedMigrationSteps;
- (void)azul_addUnprotectedMigrationSteps;
- (void)crystal_addProtectedMigrationSteps;
- (void)crystal_addUnprotectedMigrationSteps;
- (void)dawn_addProtectedMigrationSteps;
- (void)dawn_addUnprotectedMigrationSteps;
- (void)future_addProtectedMigrationSteps;
- (void)future_addUnprotectedMigrationSteps;
- (void)luck_addProtectedMigrationSteps;
- (void)luck_addUnprotectedMigrationSteps;
- (void)peace_addProtectedMigrationSteps;
- (void)peace_addUnprotectedMigrationSteps;
- (void)sky_addProtectedMigrationSteps;
- (void)sky_addUnprotectedMigrationSteps;
- (void)sydney_addProtectedMigrationSteps;
- (void)sydney_addUnprotectedMigrationSteps;
- (void)yukon_addProtectedMigrationSteps;
- (void)yukon_addUnprotectedMigrationSteps;
@end

@implementation HDDatabaseMigrator

- (id)whitetailUnprotectedMigrationSteps
{
  array = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__HDDatabaseMigrator_Whitetail__whitetailUnprotectedMigrationSteps__block_invoke;
  v6[3] = &unk_278615508;
  v6[4] = self;
  v4 = HDCreateMigrationStep(9203, 10001, v6);
  [array addObject:v4];

  return array;
}

void *__67__HDDatabaseMigrator_Whitetail__whitetailUnprotectedMigrationSteps__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQL:@"INSERT INTO key_value (category error:{provenance, domain, key, value, mod_date) SELECT category, provenance, 'BASAL_ENERGY_INGESTION', key, value, mod_date FROM key_value WHERE domain = 'ACTIVE_ENERGY_INGESTION'", a3}] ^ 1);
  }

  return result;
}

- (id)whitetailProtectedMigrationSteps
{
  array = [MEMORY[0x277CBEB18] array];
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke;
  v68[3] = &unk_278615508;
  v68[4] = self;
  v4 = HDCreateMigrationStep(9210, 10002, v68);
  [array addObject:v4];

  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_2;
  v67[3] = &unk_278615508;
  v67[4] = self;
  v5 = HDCreateMigrationStep(10002, 10003, v67);
  [array addObject:v5];

  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_3;
  v66[3] = &unk_278615508;
  v66[4] = self;
  v6 = HDCreateMigrationStep(10003, 10004, v66);
  [array addObject:v6];

  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_4;
  v65[3] = &unk_278615508;
  v65[4] = self;
  v7 = HDCreateMigrationStep(10004, 10005, v65);
  [array addObject:v7];

  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_5;
  v64[3] = &unk_278615508;
  v64[4] = self;
  v8 = HDCreateMigrationStep(10005, 10006, v64);
  [array addObject:v8];

  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_6;
  v63[3] = &unk_278615508;
  v63[4] = self;
  v9 = HDCreateMigrationStep(10006, 10007, v63);
  [array addObject:v9];

  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_7;
  v62[3] = &unk_278615508;
  v62[4] = self;
  v10 = HDCreateMigrationStep(10007, 10009, v62);
  [array addObject:v10];

  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_8;
  v61[3] = &unk_278615508;
  v61[4] = self;
  v11 = HDCreateMigrationStep(10009, 10010, v61);
  [array addObject:v11];

  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_9;
  v60[3] = &unk_278615508;
  v60[4] = self;
  v12 = HDCreateMigrationStep(10010, 10011, v60);
  [array addObject:v12];

  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_10;
  v59[3] = &unk_278615508;
  v59[4] = self;
  v13 = HDCreateMigrationStep(10011, 10012, v59);
  [array addObject:v13];

  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_11;
  v58[3] = &unk_278615508;
  v58[4] = self;
  v14 = HDCreateMigrationStep(10012, 10013, v58);
  [array addObject:v14];

  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_12;
  v57[3] = &unk_278615508;
  v57[4] = self;
  v15 = HDCreateMigrationStep(10013, 10014, v57);
  [array addObject:v15];

  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_13;
  v56[3] = &unk_278615508;
  v56[4] = self;
  v16 = HDCreateMigrationStep(10014, 10015, v56);
  [array addObject:v16];

  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_14;
  v55[3] = &unk_278615508;
  v55[4] = self;
  v17 = HDCreateMigrationStep(10015, 10016, v55);
  [array addObject:v17];

  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_15;
  v54[3] = &unk_278615508;
  v54[4] = self;
  v18 = HDCreateMigrationStep(10016, 10017, v54);
  [array addObject:v18];

  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_16;
  v53[3] = &unk_278615508;
  v53[4] = self;
  v19 = HDCreateMigrationStep(10017, 10018, v53);
  [array addObject:v19];

  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_17;
  v52[3] = &unk_278615508;
  v52[4] = self;
  v20 = HDCreateMigrationStep(10018, 10019, v52);
  [array addObject:v20];

  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_18;
  v51[3] = &unk_278615508;
  v51[4] = self;
  v21 = HDCreateMigrationStep(10019, 10021, v51);
  [array addObject:v21];

  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_19;
  v50[3] = &unk_278615508;
  v50[4] = self;
  v22 = HDCreateMigrationStep(10021, 10022, v50);
  [array addObject:v22];

  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_20;
  v49[3] = &unk_278615508;
  v49[4] = self;
  v23 = HDCreateMigrationStep(10022, 10023, v49);
  [array addObject:v23];

  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_21;
  v48[3] = &unk_278615508;
  v48[4] = self;
  v24 = HDCreateMigrationStep(10023, 10025, v48);
  [array addObject:v24];

  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_22;
  v47[3] = &unk_278615508;
  v47[4] = self;
  v25 = [HDDatabaseMigrationStep migrationStepWithForeignKeysDisabledFrom:10025 to:10027 handler:v47];
  [array addObject:v25];

  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_23;
  v46[3] = &unk_278615508;
  v46[4] = self;
  v26 = HDCreateMigrationStep(10027, 10028, v46);
  [array addObject:v26];

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_24;
  v45[3] = &unk_278615508;
  v45[4] = self;
  v27 = HDCreateMigrationStep(10028, 10029, v45);
  [array addObject:v27];

  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_25;
  v44[3] = &unk_278615508;
  v44[4] = self;
  v28 = HDCreateMigrationStep(10029, 10030, v44);
  [array addObject:v28];

  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_26;
  v43[3] = &unk_278615508;
  v43[4] = self;
  v29 = HDCreateMigrationStep(10030, 10031, v43);
  [array addObject:v29];

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_27;
  v42[3] = &unk_278615508;
  v42[4] = self;
  v30 = HDCreateMigrationStep(10031, 10032, v42);
  [array addObject:v30];

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_28;
  v41[3] = &unk_278615508;
  v41[4] = self;
  v31 = HDCreateMigrationStep(10032, 10033, v41);
  [array addObject:v31];

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_29;
  v40[3] = &unk_278615508;
  v40[4] = self;
  v32 = HDCreateMigrationStep(10033, 10034, v40);
  [array addObject:v32];

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_30;
  v39[3] = &unk_278615508;
  v39[4] = self;
  v33 = HDCreateMigrationStep(10034, 10035, v39);
  [array addObject:v33];

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_31;
  v38[3] = &unk_278615508;
  v38[4] = self;
  v34 = HDCreateMigrationStep(10035, 10036, v38);
  [array addObject:v34];

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_32;
  v37[3] = &unk_278615508;
  v37[4] = self;
  v35 = HDCreateMigrationStep(10036, 10037, v37);
  [array addObject:v35];

  return array;
}

uint64_t __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v8[0] = @"CREATE TABLE fitness_friend_activity_snapshots (active_hours REAL, active_hours_goal REAL, brisk_minutes_goal REAL, friend_uuid BLOB, workout_data BLOB, achievement_data BLOB, energy_burned REAL, walk_run_distance REAL, energy_burned_goal REAL, data_id INTEGER PRIMARY KEY, deep_breathing_session_count INTEGER, brisk_minutes REAL, uploaded_date REAL, steps INTEGER, snapshot_index INTEGER, source_uuid BLOB)";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    LODWORD(a3) = [v3 executeSQLStatements:v5 error:a3];

    result = a3 ^ 1;
  }

  else
  {
    result = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [&unk_283CAE668 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(&unk_283CAE668);
          }

          v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"ALTER TABLE activity_caches ADD COLUMN %@ INTEGER", *(*(&v13 + 1) + 8 * v8)];;
          [v5 addObject:v9];

          ++v8;
        }

        while (v6 != v8);
        v6 = [&unk_283CAE668 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    v10 = [v3 executeSQLStatements:v5 error:a3];

    result = v10 ^ 1u;
  }

  else
  {
    result = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v8[0] = @"CREATE TABLE ccdas (data_id INTEGER PRIMARY KEY REFERENCES samples (data_id) ON DELETE CASCADE, document_data BLOB, title TEXT NOT NULL, patient_name TEXT NOT NULL, author_name TEXT NOT NULL, custodian_name TEXT NOT NULL);";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    LODWORD(a3) = [v3 executeSQLStatements:v5 error:a3];

    result = a3 ^ 1;
  }

  else
  {
    result = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void *__65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQLStatements:&unk_283CAE680 error:a3] ^ 1);
  }

  return result;
}

uint64_t __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v8[0] = @"ALTER TABLE metadata_values ADD COLUMN value_type INTEGER NOT NULL DEFAULT 0;";
    v8[1] = @"UPDATE metadata_values SET value_type = (CASE WHEN metadata_values.string_value IS NOT NULL THEN 0 WHEN metadata_values.numerical_value IS NOT NULL THEN 1 WHEN metadata_values.date_value IS NOT NULL THEN 2 END);";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
    LODWORD(a3) = [v3 executeSQLStatements:v5 error:a3];

    result = a3 ^ 1;
  }

  else
  {
    result = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = [MEMORY[0x277CBEB18] array];
  [v5 addObject:@"DROP TABLE data_series;"];
  [v5 addObject:{@"CREATE TABLE IF NOT EXISTS data_series (data_id INTEGER PRIMARY KEY REFERENCES samples(data_id) ON DELETE CASCADE, frozen INTEGER NOT NULL DEFAULT 0, count INTEGER NOT NULL DEFAULT 0)"}];
  v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;

  return v6;
}

void *__65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQL:@"ALTER TABLE fitness_friend_activity_snapshots ADD COLUMN vulcan_count INTEGER;" error:a3] ^ 1);
  }

  return result;
}

void *__65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQL:@"ALTER TABLE activity_caches ADD COLUMN vulcan_condition INTEGER;" error:a3] ^ 1);
  }

  return result;
}

void *__65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_9(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQL:@"ALTER TABLE fitness_friend_activity_snapshots ADD COLUMN vulcan_condition INTEGER;" error:a3] ^ 1);
  }

  return result;
}

uint64_t __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = [MEMORY[0x277CBEB18] array];
  [v5 addObject:@"DROP TABLE fitness_friend_activity_snapshots;"];
  [v5 addObject:{@"CREATE TABLE IF NOT EXISTS fitness_friend_activity_snapshots (data_id INTEGER PRIMARY KEY, friend_uuid BLOB, snapshot_index INTEGER, source_uuid BLOB, energy_burned REAL, brisk_minutes REAL, active_hours REAL, steps REAL, vulcan_count REAL, energy_burned_goal REAL, brisk_minutes_goal REAL, active_hours_goal REAL, walk_run_distance REAL, vulcan_condition INTEGER, uploaded_date REAL)"}];
  [v5 addObject:{@"CREATE TABLE fitness_friend_workouts (data_id INTEGER PRIMARY KEY, friend_uuid BLOB, duration REAL, total_energy_burned REAL, total_basal_energy_burned REAL, total_distance REAL, activity_type INTEGER, goal_type INTEGER, goal REAL)"}];
  [v5 addObject:{@"CREATE TABLE fitness_friend_achievements (data_id INTEGER PRIMARY KEY, friend_uuid BLOB, definition_identifier TEXT, completed_date REAL, value, extra_data BLOB, workout_activity_type INTEGER)"}];
  v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;

  return v6;
}

uint64_t __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_11(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v5 addObject:@"ALTER TABLE activity_caches RENAME TO activity_caches_old"];
  [v5 addObject:{@"CREATE TABLE IF NOT EXISTS activity_caches (data_id INTEGER PRIMARY KEY, cache_index INTEGER, energy_burned REAL, brisk_minutes REAL, active_hours REAL, steps REAL, vulcan_count REAL, vulcan_condition INTEGER, energy_burned_goal REAL, energy_burned_goal_date REAL, brisk_minutes_goal REAL, active_hours_goal REAL, walk_distance REAL, deep_breathing_duration REAL, active_energy_burned_anchor INTEGER, active_hours_anchor INTEGER, brisk_minutes_anchor INTEGER, energy_burned_goal_anchor INTEGER, step_count_anchor INTEGER, vulcan_count_anchor INTEGER, walking_and_running_distance_anchor INTEGER, workout_anchor INTEGER, deep_breathing_session_anchor INTEGER, flights INTEGER, flights_anchor INTEGER)"}];
  [v5 addObject:{@"INSERT INTO activity_caches (data_id, cache_index, energy_burned, brisk_minutes, active_hours, steps, vulcan_count, vulcan_condition, energy_burned_goal, energy_burned_goal_date, brisk_minutes_goal, active_hours_goal, walk_distance, active_energy_burned_anchor, active_hours_anchor, brisk_minutes_anchor, energy_burned_goal_anchor, step_count_anchor, vulcan_count_anchor, walking_and_running_distance_anchor, workout_anchor, flights, flights_anchor) SELECT data_id, cache_index, energy_burned, brisk_minutes, active_hours, steps, vulcan_count, vulcan_condition, energy_burned_goal, energy_burned_goal_date, brisk_minutes_goal, active_hours_goal, walk_distance, active_energy_burned_anchor, active_hours_anchor, brisk_minutes_anchor, energy_burned_goal_anchor, step_count_anchor, vulcan_count_anchor, walking_and_running_distance_anchor, workout_anchor, flights, flights_anchor from activity_caches_old;"}];
  [v5 addObject:@"DROP TABLE activity_caches_old"];
  v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;

  return v6;
}

void *__65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_12(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQL:@"CREATE TABLE object_authorizations (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{object BLOB NOT NULL REFERENCES objects(uuid) ON DELETE CASCADE, source BLOB NOT NULL, status INTEGER NOT NULL, sync_provenance INTEGER NOT NULL, modification_date REAL NOT NULL)", a3}] ^ 1);
  }

  return result;
}

uint64_t __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_13(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = [MEMORY[0x277CBEB18] array];
  [v5 addObject:@"DROP TABLE fitness_friend_workouts"];
  [v5 addObject:{@"CREATE TABLE IF NOT EXISTS fitness_friend_workouts (data_id INTEGER PRIMARY KEY, friend_uuid BLOB, duration REAL, total_energy_burned REAL, total_basal_energy_burned REAL, total_distance REAL, activity_type INTEGER, goal_type INTEGER, goal REAL, bundle_id TEXT, source_first_party_workout_app INTEGER)"}];
  v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;

  return v6;
}

uint64_t __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v5 addObject:@"ALTER TABLE workouts ADD COLUMN total_w_steps REAL;"];
  [v5 addObject:@"ALTER TABLE workout_events ADD COLUMN w_step_style INTEGER;"];
  v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;

  return v6;
}

void *__65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_15(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQL:@"ALTER TABLE fitness_friend_activity_snapshots ADD COLUMN timezone_offset INTEGER;" error:a3] ^ 1);
  }

  return result;
}

uint64_t __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_16(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = 0;
  v5 = [v3 transaction];
  v6 = [v5 protectedDatabase];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __83__HDDatabaseMigrator_Whitetail___addMaxObjectPersistentIDToKeyValueStoreWithError___block_invoke;
  v16[3] = &unk_278615530;
  v16[4] = v17;
  v7 = [v6 executeUncachedSQL:@"SELECT MAX(data_id) FROM objects" error:a3 bindingHandler:0 enumerationHandler:v16];

  if ((v7 & 1) == 0 || ([v3 transaction], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v3, "fetchLegacySyncIdentity:error:", v8, a3), v8, v9 == -1))
  {
    v13 = 1;
  }

  else
  {
    v10 = [v3 transaction];
    v11 = [v10 unprotectedDatabase];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __83__HDDatabaseMigrator_Whitetail___addMaxObjectPersistentIDToKeyValueStoreWithError___block_invoke_2;
    v15[3] = &unk_278615558;
    v15[4] = v17;
    v15[5] = v9;
    v12 = [v11 executeUncachedSQL:@"INSERT OR REPLACE INTO key_value (category error:domain bindingHandler:key enumerationHandler:{value, provenance, mod_date, sync_identity) values (0, '', 'HDMaxObjectPersistentID', ?, 0, 0.0, ?)", a3, v15, 0}];

    v13 = v12 ^ 1u;
  }

  _Block_object_dispose(v17, 8);
  return v13;
}

uint64_t __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_17(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v5 addObject:{@"UPDATE OR IGNORE data_provenances SET origin_device='Watch0, 0' WHERE origin_build LIKE '12S%' OR origin_build LIKE '13S%' OR origin_build LIKE '13V%' OR origin_build LIKE '14S%'"}];
  [v5 addObject:{@"UPDATE OR IGNORE data_provenances SET local_device='Watch0, 0' WHERE local_build LIKE '12S%' OR local_build LIKE '13S%' OR local_build LIKE '13V%' OR local_build LIKE '14S%'"}];
  [v5 addObject:{@"UPDATE OR IGNORE data_provenances SET origin_device='iPhone0, 0' WHERE (origin_build LIKE '12%' OR origin_build LIKE '13%' OR origin_build LIKE '14%') AND origin_device NOT LIKE 'Watch%'"}];
  [v5 addObject:{@"UPDATE OR IGNORE data_provenances SET local_device='iPhone0, 0' WHERE (origin_build LIKE '12%' OR origin_build LIKE '13%' OR origin_build LIKE '14%') AND local_device NOT LIKE 'Watch%'"}];
  v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;

  return v6;
}

uint64_t __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = [MEMORY[0x277CBEB18] array];
  [v5 addObject:@"DROP TABLE fitness_friend_workouts"];
  [v5 addObject:{@"CREATE TABLE IF NOT EXISTS fitness_friend_workouts (data_id INTEGER PRIMARY KEY, friend_uuid BLOB, duration REAL, total_energy_burned REAL, total_basal_energy_burned REAL, total_distance REAL, activity_type INTEGER, goal_type INTEGER, goal REAL, bundle_id TEXT, is_watch_workout INTEGER)"}];
  v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;

  return v6;
}

uint64_t __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_19(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v5 addObject:{@"UPDATE OR IGNORE data_provenances SET origin_device='Watch0, 0' WHERE origin_device='iPhone0, 0' AND (origin_build LIKE '12S%' OR origin_build LIKE '13S%' OR origin_build LIKE '13V%' OR origin_build LIKE '14S%')"}];
  v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;

  return v6;
}

uint64_t __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__15;
  v24 = __Block_byref_object_dispose__15;
  v25 = 0;
  v5 = [v3 transaction];
  v6 = [v5 protectedDatabase];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __76__HDDatabaseMigrator_Whitetail___migrateStoredDateOfBirthTimeZoneWithError___block_invoke;
  v19[3] = &unk_278615530;
  v19[4] = &v20;
  v7 = [v6 executeUncachedSQL:@"SELECT value FROM key_value_secure WHERE key = 'birthdate'" error:a3 bindingHandler:0 enumerationHandler:v19];

  if (v21[5])
  {
    v8 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    v9 = [v8 hk_dateOfBirthDateComponentsWithDate:v21[5]];

    v10 = [MEMORY[0x277CBEA80] hk_gregorianCalendarWithUTCTimeZone];
    v11 = [v10 dateFromComponents:v9];

    v12 = [v3 transaction];
    v13 = [v12 protectedDatabase];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __76__HDDatabaseMigrator_Whitetail___migrateStoredDateOfBirthTimeZoneWithError___block_invoke_2;
    v17[3] = &unk_278615580;
    v14 = v11;
    v18 = v14;
    v7 = [v13 executeUncachedSQL:@"UPDATE key_value_secure SET value = ? WHERE key = 'birthdate'" error:a3 bindingHandler:v17 enumerationHandler:0];
  }

  v15 = v7 ^ 1u;
  _Block_object_dispose(&v20, 8);

  return v15;
}

void *__65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_21(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQL:@"DELETE FROM objects WHERE NOT EXISTS (SELECT samples.data_id FROM samples WHERE samples.data_id=objects.data_id);" error:a3] ^ 1);
  }

  return result;
}

uint64_t __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_22(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v5 addObject:@"ALTER TABLE data_provenances RENAME TO data_provenances_old"];
  [v5 addObject:{@"CREATE TABLE IF NOT EXISTS data_provenances (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, sync_provenance INTEGER NOT NULL, origin_product_type TEXT NOT NULL, origin_build TEXT NOT NULL, local_product_type TEXT NOT NULL, local_build TEXT NOT NULL, source_id INTEGER NOT NULL, device_id INTEGER NOT NULL, source_version TEXT NOT NULL, tz_name TEXT NOT NULL, UNIQUE(sync_provenance, origin_product_type, origin_build, local_product_type, local_build, source_id, device_id, source_version, tz_name))"}];
  [v5 addObject:{@"INSERT INTO data_provenances (rowid, sync_provenance, origin_product_type, origin_build, local_product_type, local_build, source_id, device_id, source_version, tz_name) SELECT rowid, sync_provenance, origin_device, origin_build, local_device, local_build, source_id, device_id, source_version, '' FROM data_provenances_old;"}];
  [v5 addObject:@"DROP TABLE IF EXISTS data_provenances_old"];
  v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;

  return v6;
}

void *__65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_23(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQL:@"CREATE UNIQUE INDEX ff_unique_columns ON fitness_friend_activity_snapshots (friend_uuid error:{snapshot_index, source_uuid);", a3}] ^ 1);
  }

  return result;
}

uint64_t __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v8[0] = @"DELETE FROM key_value_secure WHERE domain = 'com.apple.healthd.workout' AND key = 'companionWorkoutCreditAnchorKey';";
    v8[1] = @"INSERT OR REPLACE INTO key_value_secure (category, domain, key, value, provenance, mod_date) values (100, 'com.apple.healthd.workout', 'companionWorkoutCreditAnchorKey', COALESCE((select max(data_id) from objects), 0), 0, 0.0);";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
    LODWORD(a3) = [v3 executeSQLStatements:v5 error:a3];

    result = a3 ^ 1;
  }

  else
  {
    result = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void *__65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_25(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQL:@"ALTER TABLE data_series ADD COLUMN insertion_era INTEGER NOT NULL DEFAULT 0" error:a3] ^ 1);
  }

  return result;
}

uint64_t __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_26(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v5 addObject:{@"CREATE TABLE IF NOT EXISTS cda_documents (data_id INTEGER PRIMARY KEY REFERENCES samples (data_id) ON DELETE CASCADE, document_data BLOB, title TEXT NOT NULL, patient_name TEXT NOT NULL, author_name TEXT NOT NULL, custodian_name TEXT NOT NULL);"}];
  [v5 addObject:@"INSERT INTO cda_documents SELECT * FROM ccdas;"];
  [v5 addObject:@"DROP TABLE IF EXISTS ccdas;"];
  v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;

  return v6;
}

void *__65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_27(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError___block_invoke;
    v4[3] = &unk_2786155A8;
    v4[4] = result;
    return [result performHFDMigrationToVersion:10032 handler:v4 error:a3];
  }

  return result;
}

uint64_t __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v5 addObject:{@"CREATE INDEX IF NOT EXISTS samples_type_dates ON samples (data_type, start_date, end_date);"}];
  [v5 addObject:{@"CREATE INDEX IF NOT EXISTS samples_end ON samples (data_type, end_date);"}];
  v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;

  return v6;
}

uint64_t __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_29(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = [MEMORY[0x277CBEB18] array];
  [v5 addObject:@"DROP TABLE fitness_friend_workouts"];
  [v5 addObject:{@"CREATE TABLE IF NOT EXISTS fitness_friend_workouts (data_id INTEGER PRIMARY KEY, friend_uuid BLOB, duration REAL, total_energy_burned REAL, total_basal_energy_burned REAL, total_distance REAL, activity_type INTEGER, goal_type INTEGER, goal REAL, bundle_id TEXT, is_watch_workout INTEGER, is_indoor_workout INTEGER)"}];
  v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;

  return v6;
}

uint64_t __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v5 addObject:{@"CREATE INDEX IF NOT EXISTS samples_type_anchor ON samples (data_type, data_id);"}];
  v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;

  return v6;
}

uint64_t __65__HDDatabaseMigrator_Whitetail__whitetailProtectedMigrationSteps__block_invoke_32(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = objc_alloc(MEMORY[0x277CBEBD0]);
    v6 = [v5 initWithSuiteName:*MEMORY[0x277CCE220]];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [v6 dictionaryRepresentation];
    v8 = [v7 allKeys];

    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [v6 removeObjectForKey:*(*(&v17 + 1) + 8 * v11++)];
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    [v6 synchronize];
    v12 = [v3 transaction];
    v13 = [v12 unprotectedDatabase];
    v14 = [v13 executeSQLStatements:&unk_283CAE698 error:a3];

    result = v14 ^ 1u;
  }

  else
  {
    result = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __83__HDDatabaseMigrator_Whitetail___addMaxObjectPersistentIDToKeyValueStoreWithError___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:*(*(*(a1 + 32) + 8) + 24)];
  HDSQLiteBindFoundationValueToStatement();

  v5 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 2, v5);
}

uint64_t __76__HDDatabaseMigrator_Whitetail___migrateStoredDateOfBirthTimeZoneWithError___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6C40](a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

void __69__HDDatabaseMigrator_Whitetail___addFieldsToLocationSeriesWithError___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = a2;
  operator new();
}

- (void)yukon_addUnprotectedMigrationSteps
{
  [(HDDatabaseMigrator *)self addMigrationTo:13000 function:_HDAddFrozenAndExpectedSyncAnchorColumns];
  [(HDDatabaseMigrator *)self addMigrationTo:13001 function:_HDAddSyncAnchorUpdateDateColumns];
  [(HDDatabaseMigrator *)self addMigrationTo:13002 function:_HDAddUniqueConstraintToSessionControllersTable];
  [(HDDatabaseMigrator *)self addMigrationTo:13003 function:_HDAddAlarmEventsTable];
  [(HDDatabaseMigrator *)self addMigrationTo:13004 function:_HDAddSourceOwnerBundleIdentifierAndDropSyncPrimary foreignKeys:1];
  [(HDDatabaseMigrator *)self addMigrationTo:13005 function:_HDAddSourceOrderModificationDate];
  [(HDDatabaseMigrator *)self addMigrationTo:13006 function:_HDAddLatestActivityDateToWorkoutSessionsTable];
  [(HDDatabaseMigrator *)self addMigrationTo:13007 function:_HDResetReceivedAnchorsForCategoryAndQuantitySamples];

  [(HDDatabaseMigrator *)self addMigrationTo:13008 function:_HDAddEventOptionsToAlarmEventsTable];
}

- (void)yukon_addProtectedMigrationSteps
{
  [(HDDatabaseMigrator *)self addMigrationTo:13000 function:_HDAddQuantitySampleStatisticsTable];
  [(HDDatabaseMigrator *)self addMigrationTo:13001 function:_HDAddMenstrualCycleDaySummaryTable];
  [(HDDatabaseMigrator *)self addMigrationTo:13002 function:_HDUpdateActivityCacheTableForYukon];
  [(HDDatabaseMigrator *)self addMigrationTo:13003 function:_HDAddConceptIndexTable];
  [(HDDatabaseMigrator *)self addMigrationTo:13004 function:_HDRemoveDuplicatedHeartRateContextMetadata];
  [(HDDatabaseMigrator *)self addMigrationTo:13005 function:_HDAddLocaleToMedicalRecords];
  [(HDDatabaseMigrator *)self addMigrationTo:13006 function:_HDUpdateFitnessFriendActivitySnapshotsTableForYukon];
  [(HDDatabaseMigrator *)self addMigrationTo:13007 function:_HDUpdateDiagnosticTestReportColumnNames];
  [(HDDatabaseMigrator *)self addMigrationTo:13008 function:_HDUpdateFitnessFriendWorkoutTableForYukon];
  [(HDDatabaseMigrator *)self addMigrationTo:13009 function:_HDUpdateConceptIndexTable];
  [(HDDatabaseMigrator *)self addMigrationTo:13010 function:_HDUpdateVaccinationRecordColumnNames];
  [(HDDatabaseMigrator *)self addMigrationTo:13011 function:_HDMoveClinicalCredentialsToKeychain foreignKeys:1];
  [(HDDatabaseMigrator *)self addMigrationTo:13012 function:_HDRemoveMenstrualCycleDaySummaryTable];
  [(HDDatabaseMigrator *)self addMigrationTo:13013 function:_HDAddAllergyIntoleranceStatus];
  [(HDDatabaseMigrator *)self addMigrationTo:13014 function:_HDResetClinicalAccountEntityLastSubmittedRow];
  [(HDDatabaseMigrator *)self addMigrationTo:13015 function:_HDAddOntologyVersionToConceptIndex];
  [(HDDatabaseMigrator *)self addMigrationTo:13200 function:_HDAddDerivedFlagsToDataProvenances foreignKeys:1];
  [(HDDatabaseMigrator *)self addMigrationTo:13400 function:_HDAddCountryToMedicalRecord];
  [(HDDatabaseMigrator *)self addMigrationTo:13401 function:_HDAddMedicalRecordState];

  [(HDDatabaseMigrator *)self addMigrationTo:13402 function:_HDWipeWorkoutAnchors];
}

- (id)monarchUnprotectedMigrationSteps
{
  array = [MEMORY[0x277CBEB18] array];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __63__HDDatabaseMigrator_Monarch__monarchUnprotectedMigrationSteps__block_invoke;
  v20[3] = &unk_27861B758;
  v20[4] = self;
  v4 = [HDDatabaseMigrationStep migrationStepFrom:8114 to:9000 handler:v20];
  [array addObject:v4];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __63__HDDatabaseMigrator_Monarch__monarchUnprotectedMigrationSteps__block_invoke_2;
  v19[3] = &unk_27861B758;
  v19[4] = self;
  v5 = [HDDatabaseMigrationStep migrationStepFrom:9000 to:9001 handler:v19];
  [array addObject:v5];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __63__HDDatabaseMigrator_Monarch__monarchUnprotectedMigrationSteps__block_invoke_3;
  v18[3] = &unk_27861B758;
  v18[4] = self;
  v6 = [HDDatabaseMigrationStep migrationStepFrom:9001 to:9002 handler:v18];
  [array addObject:v6];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63__HDDatabaseMigrator_Monarch__monarchUnprotectedMigrationSteps__block_invoke_4;
  v17[3] = &unk_27861B758;
  v17[4] = self;
  v7 = [HDDatabaseMigrationStep migrationStepFrom:9002 to:9003 handler:v17];
  [array addObject:v7];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__HDDatabaseMigrator_Monarch__monarchUnprotectedMigrationSteps__block_invoke_5;
  v16[3] = &unk_27861B758;
  v16[4] = self;
  v8 = [HDDatabaseMigrationStep migrationStepFrom:9003 to:9004 handler:v16];
  [array addObject:v8];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__HDDatabaseMigrator_Monarch__monarchUnprotectedMigrationSteps__block_invoke_6;
  v15[3] = &unk_27861B758;
  v15[4] = self;
  v9 = [HDDatabaseMigrationStep migrationStepFrom:9004 to:9005 handler:v15];
  [array addObject:v9];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__HDDatabaseMigrator_Monarch__monarchUnprotectedMigrationSteps__block_invoke_7;
  v14[3] = &unk_27861B758;
  v14[4] = self;
  v10 = [HDDatabaseMigrationStep migrationStepFrom:9005 to:9006 handler:v14];
  [array addObject:v10];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__HDDatabaseMigrator_Monarch__monarchUnprotectedMigrationSteps__block_invoke_8;
  v13[3] = &unk_27861B758;
  v13[4] = self;
  v11 = [HDDatabaseMigrationStep migrationStepFrom:9006 to:9007 handler:v13];
  [array addObject:v11];

  return array;
}

uint64_t __63__HDDatabaseMigrator_Monarch__monarchUnprotectedMigrationSteps__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = [MEMORY[0x277CBEB18] array];
  [v5 addObject:@"DROP TABLE IF EXISTS nano_pairing;"];
  [v5 addObject:{@"CREATE TABLE IF NOT EXISTS nano_pairing (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, registry_uuid BLOB UNIQUE NOT NULL, persistent_uuid BLOB, health_uuid BLOB, sync_provenance INTEGER NOT NULL, activated INTEGER NOT NULL);"}];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v6 = [v3 transaction];
  v7 = [v6 unprotectedDatabase];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __57__HDDatabaseMigrator_Monarch___migrateNanoPairingSchema___block_invoke;
  v17[3] = &unk_278614620;
  v17[4] = &v18;
  v8 = [v7 executeUncachedSQL:@"SELECT rowid FROM key_value WHERE domain='NanoPairing' AND key='RegistryPairingUUID' AND value IS NOT NULL" error:a3 bindingHandler:0 enumerationHandler:v17];

  if (v8 && *(v19 + 24) == 1)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT value FROM key_value WHERE domain='NanoPairing' AND key='%@' LIMIT 1", @"RegistryPairingUUID"];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT value FROM key_value WHERE domain='NanoPairing' AND key='%@' LIMIT 1", @"PersistentPairingUUID"];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT value FROM key_value WHERE domain='NanoPairing' AND key='%@' LIMIT 1", @"HealthPairingUUID"];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT value FROM key_value WHERE domain='NanoPairing' AND key='%@' LIMIT 1", @"ActivationFinished"];
    v14 = [v9 stringWithFormat:@"INSERT INTO nano_pairing(registry_uuid, persistent_uuid, health_uuid, sync_provenance, activated) SELECT (%@), (%@), (%@), 1, (%@)", v10, v11, v12, v13];;
    [v5 addObject:v14];
  }

  [v5 addObject:@"DELETE FROM key_value WHERE domain='NanoPairing';"];
  v15 = [v3 executeSQLStatements:v5 error:a3] ^ 1;
  _Block_object_dispose(&v18, 8);

  return v15;
}

uint64_t __63__HDDatabaseMigrator_Monarch__monarchUnprotectedMigrationSteps__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[5] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v19[0] = @"ALTER TABLE sources RENAME TO sources_old;";
    v19[1] = @"CREATE TABLE IF NOT EXISTS sources (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, uuid BLOB UNIQUE NOT NULL, bundle_id TEXT, name TEXT, source_options INTEGER, local_device INTEGER, product_type TEXT, deleted INTEGER NOT NULL, mod_date REAL, provenance INTEGER NOT NULL)";
    v19[2] = @"INSERT INTO sources(rowid, uuid, bundle_id, name, source_options, local_device, product_type, deleted, mod_date, provenance) SELECT rowid, hk_new_source_uuid(bundle_id, product_type), bundle_id, name, source_options, local_device, product_type, 0, NULL, 0 FROM sources_old;";
    v19[3] = @"CREATE INDEX IF NOT EXISTS sources_index_0 ON sources(bundle_id)";
    v19[4] = @"DROP TABLE sources_old;";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:5];
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v6 = [v3 transaction];
    v7 = [v6 unprotectedDatabase];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __59__HDDatabaseMigrator_Monarch___migrateSourcesTableForSync___block_invoke;
    v14[3] = &unk_27861B780;
    v14[4] = &v15;
    [v7 accessDatabaseUsingBlock:v14];

    if (*(v16 + 6))
    {
      v3 = 1;
    }

    else
    {
      v8 = [v3 executeSQLStatements:v5 error:a3];
      v9 = [v3 transaction];
      v10 = [v9 unprotectedDatabase];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __59__HDDatabaseMigrator_Monarch___migrateSourcesTableForSync___block_invoke_2;
      v13[3] = &unk_27861B780;
      v13[4] = &v15;
      [v10 accessDatabaseUsingBlock:v13];

      v3 = ((*(v16 + 6) != 0) | v8 ^ 1u) & 1;
    }

    _Block_object_dispose(&v15, 8);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t __63__HDDatabaseMigrator_Monarch__monarchUnprotectedMigrationSteps__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [MEMORY[0x277CBEAA8] date];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;

  [v5 addObject:{@"CREATE TABLE IF NOT EXISTS source_devices (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, manufacturer TEXT NOT NULL, model TEXT NOT NULL, hardware TEXT NOT NULL, firmware TEXT NOT NULL, software TEXT NOT NULL, localIdentifier TEXT NOT NULL, FDAUDI TEXT NOT NULL, creation_date REAL NOT NULL, sync_provenance INTEGER NOT NULL, uuid BLOB UNIQUE NOT NULL)"}];
  v9 = objc_alloc(MEMORY[0x277CCACA8]);
  v10 = MEMORY[0x277D10A80];
  v11 = [v9 initWithFormat:@"INSERT INTO source_devices(name, manufacturer, model, hardware, firmware, software, localIdentifier, FDAUDI, creation_date, sync_provenance, uuid) VALUES ('__NONE__', '', '', '', '', '', '__NONE__', '', %f, 0, %@())", v8, *MEMORY[0x277D10A80]];
  [v5 addObject:v11];
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"INSERT INTO source_devices(name, manufacturer, model, hardware, firmware, software, localIdentifier, FDAUDI, creation_date, sync_provenance, uuid) SELECT COALESCE(name, ''), '', '', '', '', '', bundle_id, '', %f, 0, %@() FROM sources WHERE source_options = 0 AND product_type = 'Bluetooth'", v8, *v10];

  [v5 addObject:v12];
  v13 = [v3 executeSQLStatements:v5 error:a3] ^ 1;

  return v13;
}

uint64_t __63__HDDatabaseMigrator_Monarch__monarchUnprotectedMigrationSteps__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v5 addObject:@"ALTER TABLE authorization RENAME TO authorization_old;"];
  [v5 addObject:{@"CREATE TABLE IF NOT EXISTS authorization (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, source_id INTEGER NOT NULL, object_type INTEGER NOT NULL, status INTEGER NOT NULL, request INTEGER NOT NULL, date_modified REAL NOT NULL, provenance INTEGER NOT NULL, UNIQUE(source_id, object_type));"}];
  [v5 addObject:{@"INSERT INTO authorization(source_id, object_type, status, request, date_modified, provenance) SELECT source_id, code, status, request, 0.0, 0 FROM authorization_old;"}];
  [v5 addObject:@"DROP TABLE authorization_old;"];
  v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;

  return v6;
}

uint64_t __63__HDDatabaseMigrator_Monarch__monarchUnprotectedMigrationSteps__block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = objc_opt_new();
  [v5 addObject:@"DROP TABLE IF EXISTS authorization_old;"];
  [v5 addObject:@"ALTER TABLE authorization RENAME TO authorization_old;"];
  [v5 addObject:{@"CREATE TABLE authorization (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, source_id INTEGER NOT NULL REFERENCES sources(ROWID) ON DELETE CASCADE, object_type INTEGER NOT NULL, status INTEGER NOT NULL, request INTEGER NOT NULL, date_modified REAL NOT NULL, provenance INTEGER NOT NULL, UNIQUE(source_id, object_type));"}];
  [v5 addObject:{@"INSERT INTO authorization SELECT ROWID, source_id, object_type, status, request, date_modified, provenance FROM authorization_old WHERE EXISTS (SELECT ROWID FROM sources WHERE sources.ROWID = authorization_old.source_id);"}];
  [v5 addObject:@"DROP TABLE authorization_old;"];
  v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;

  return v6;
}

void *__63__HDDatabaseMigrator_Monarch__monarchUnprotectedMigrationSteps__block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQL:@"ALTER TABLE authorization ADD object_anchor INTEGER NOT NULL DEFAULT 0" error:a3] ^ 1);
  }

  return result;
}

void *__63__HDDatabaseMigrator_Monarch__monarchUnprotectedMigrationSteps__block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQL:@"DELETE FROM authorization WHERE object_type = 70;" error:a3] ^ 1);
  }

  return result;
}

uint64_t __63__HDDatabaseMigrator_Monarch__monarchUnprotectedMigrationSteps__block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v5 addObject:@"ALTER TABLE datatype_source_order RENAME TO datatype_source_order_old;"];
  [v5 addObject:{@"CREATE TABLE IF NOT EXISTS datatype_source_order (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, data_type INTEGER NOT NULL, source INTEGER NOT NULL REFERENCES sources (ROWID) ON DELETE CASCADE, user_preferred INTEGER NOT NULL, provenance INTEGER NOT NULL);"}];
  [v5 addObject:{@"INSERT INTO datatype_source_order SELECT ROWID, data_type, source, user_preferred_order, 0 FROM datatype_source_order_old WHERE EXISTS (SELECT ROWID FROM sources WHERE sources.ROWID = datatype_source_order_old.source);"}];
  [v5 addObject:@"DROP TABLE datatype_source_order_old;"];
  v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;

  return v6;
}

- (id)monarchProtectedMigrationSteps
{
  array = [MEMORY[0x277CBEB18] array];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __61__HDDatabaseMigrator_Monarch__monarchProtectedMigrationSteps__block_invoke;
  v36[3] = &unk_27861B758;
  v36[4] = self;
  v4 = [HDDatabaseMigrationStep migrationStepFrom:8120 to:9000 handler:v36];
  [array addObject:v4];

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __61__HDDatabaseMigrator_Monarch__monarchProtectedMigrationSteps__block_invoke_2;
  v35[3] = &unk_27861B758;
  v35[4] = self;
  v5 = [HDDatabaseMigrationStep migrationStepFrom:9000 to:9001 handler:v35];
  [array addObject:v5];

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __61__HDDatabaseMigrator_Monarch__monarchProtectedMigrationSteps__block_invoke_3;
  v34[3] = &unk_27861B758;
  v34[4] = self;
  v6 = [HDDatabaseMigrationStep migrationStepFrom:9001 to:9002 handler:v34];
  [array addObject:v6];

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __61__HDDatabaseMigrator_Monarch__monarchProtectedMigrationSteps__block_invoke_4;
  v33[3] = &unk_27861B758;
  v33[4] = self;
  v7 = [HDDatabaseMigrationStep migrationStepFrom:9002 to:9004 handler:v33];
  [array addObject:v7];

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __61__HDDatabaseMigrator_Monarch__monarchProtectedMigrationSteps__block_invoke_5;
  v32[3] = &unk_27861B758;
  v32[4] = self;
  v8 = [HDDatabaseMigrationStep migrationStepWithForeignKeysDisabledFrom:9004 to:9005 handler:v32];
  [array addObject:v8];

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __61__HDDatabaseMigrator_Monarch__monarchProtectedMigrationSteps__block_invoke_6;
  v31[3] = &unk_27861B758;
  v31[4] = self;
  v9 = [HDDatabaseMigrationStep migrationStepFrom:9005 to:9006 handler:v31];
  [array addObject:v9];

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __61__HDDatabaseMigrator_Monarch__monarchProtectedMigrationSteps__block_invoke_7;
  v30[3] = &unk_27861B758;
  v30[4] = self;
  v10 = [HDDatabaseMigrationStep migrationStepFrom:9006 to:9007 handler:v30];
  [array addObject:v10];

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __61__HDDatabaseMigrator_Monarch__monarchProtectedMigrationSteps__block_invoke_8;
  v29[3] = &unk_27861B758;
  v29[4] = self;
  v11 = [HDDatabaseMigrationStep migrationStepFrom:9007 to:9009 handler:v29];
  [array addObject:v11];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __61__HDDatabaseMigrator_Monarch__monarchProtectedMigrationSteps__block_invoke_9;
  v28[3] = &unk_27861B758;
  v28[4] = self;
  v12 = [HDDatabaseMigrationStep migrationStepFrom:9009 to:9010 handler:v28];
  [array addObject:v12];

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __61__HDDatabaseMigrator_Monarch__monarchProtectedMigrationSteps__block_invoke_10;
  v27[3] = &unk_27861B758;
  v27[4] = self;
  v13 = [HDDatabaseMigrationStep migrationStepFrom:9010 to:9011 handler:v27];
  [array addObject:v13];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __61__HDDatabaseMigrator_Monarch__monarchProtectedMigrationSteps__block_invoke_11;
  v26[3] = &unk_27861B758;
  v26[4] = self;
  v14 = [HDDatabaseMigrationStep migrationStepFrom:9011 to:9012 handler:v26];
  [array addObject:v14];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __61__HDDatabaseMigrator_Monarch__monarchProtectedMigrationSteps__block_invoke_12;
  v25[3] = &unk_27861B758;
  v25[4] = self;
  v15 = [HDDatabaseMigrationStep migrationStepFrom:9012 to:9013 handler:v25];
  [array addObject:v15];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __61__HDDatabaseMigrator_Monarch__monarchProtectedMigrationSteps__block_invoke_13;
  v24[3] = &unk_27861B758;
  v24[4] = self;
  v16 = [HDDatabaseMigrationStep migrationStepFrom:9013 to:9014 handler:v24];
  [array addObject:v16];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __61__HDDatabaseMigrator_Monarch__monarchProtectedMigrationSteps__block_invoke_14;
  v23[3] = &unk_27861B758;
  v23[4] = self;
  v17 = [HDDatabaseMigrationStep migrationStepFrom:9014 to:9015 handler:v23];
  [array addObject:v17];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __61__HDDatabaseMigrator_Monarch__monarchProtectedMigrationSteps__block_invoke_15;
  v22[3] = &unk_27861B758;
  v22[4] = self;
  v18 = [HDDatabaseMigrationStep migrationStepFrom:9015 to:9016 handler:v22];
  [array addObject:v18];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __61__HDDatabaseMigrator_Monarch__monarchProtectedMigrationSteps__block_invoke_16;
  v21[3] = &unk_27861B758;
  v21[4] = self;
  v19 = [HDDatabaseMigrationStep migrationStepFrom:9016 to:9017 handler:v21];
  [array addObject:v19];

  return array;
}

uint64_t __61__HDDatabaseMigrator_Monarch__monarchProtectedMigrationSteps__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v9[0] = @"CREATE TABLE IF NOT EXISTS unit_strings (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, unit_string TEXT UNIQUE);";
    v9[1] = @"ALTER TABLE quantity_samples add column original_quantity REAL;";
    v9[2] = @"ALTER TABLE quantity_samples add column original_unit INTEGER REFERENCES unit_strings(ROWID);";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
    v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t __61__HDDatabaseMigrator_Monarch__monarchProtectedMigrationSteps__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v5 addObject:{@"CREATE TABLE IF NOT EXISTS data_provenances (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, sync_provenance INTEGER NOT NULL, origin_device TEXT NOT NULL, origin_build TEXT NOT NULL, local_device TEXT NOT NULL, local_build TEXT NOT NULL, UNIQUE(sync_provenance, origin_device, origin_build, local_device, local_build));"}];
    v12[0] = @"INSERT INTO data_provenances (ROWID, sync_provenance, origin_device, origin_build, local_device, local_build) values (1, 0, 'UnknownDevice', '[8.0, 8.2)', 'UnknownDevice', 'UnknownBuild'");
    v12[1] = @"INSERT INTO data_provenances (ROWID, sync_provenance, origin_device, origin_build, local_device, local_build) values (2, 0, 'UnknownDevice', '[8.2, 9.0)', 'UnknownDevice', 'UnknownBuild'");
    v12[2] = @"INSERT INTO data_provenances (ROWID, sync_provenance, origin_device, origin_build, local_device, local_build) values (3, 1, 'UnknownDevice', '[8.2, 9.0)', 'UnknownDevice', 'UnknownBuild'");
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
    [v5 addObjectsFromArray:v6];

    v11[0] = @"ALTER TABLE objects RENAME TO objects_old;";
    v11[1] = @"CREATE TABLE objects (data_id INTEGER PRIMARY KEY AUTOINCREMENT, creation_date REAL, source INTEGER, provenance INTEGER REFERENCES data_provenances(ROWID), type INTEGER, uuid BLOB);";
    v11[2] = @"INSERT INTO objects (data_id, creation_date, source, type, uuid, provenance) SELECT data_id, creation_date, source, type, uuid, (CASE WHEN data_id <= COALESCE(value, 0) THEN 1 ELSE (CASE objects_old.provenance WHEN 0 THEN 2 WHEN 1 THEN 3 END) END) FROM objects_old LEFT JOIN (SELECT value from key_value_secure WHERE category=100 AND key_value_secure.provenance=0 AND domain='OBJECT_ANCHOR' AND key='OBJECT_ANCHOR_8_2');";
    v11[3] = @"CREATE UNIQUE INDEX objects_uuid ON objects(uuid);";
    v11[4] = @"DROP TABLE objects_old;";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:5];
    [v5 addObjectsFromArray:v7];

    [v5 addObject:@"DELETE FROM key_value_secure WHERE category=100 AND domain='OBJECT_ANCHOR';"];
    v8 = [v3 executeSQLStatements:v5 error:a3] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t __61__HDDatabaseMigrator_Monarch__monarchProtectedMigrationSteps__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v9[0] = @"INSERT INTO category_samples (data_id, value) SELECT data_id, CASE WHEN quantity < 0.5 THEN 0 ELSE 1 END FROM quantity_samples LEFT JOIN samples USING (data_id) WHERE data_type = 69";
    v9[1] = @"DELETE FROM quantity_samples WHERE data_id IN (SELECT data_id FROM samples WHERE data_type = 69)";
    v9[2] = @"UPDATE samples SET data_type = 70 WHERE data_type = 69";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
    v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t __61__HDDatabaseMigrator_Monarch__monarchProtectedMigrationSteps__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v9[0] = @"CREATE TABLE menstruation_samples (data_id INTEGER PRIMARY KEY, start_cycle INTEGER, menstrual_flow INTEGER);";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t __61__HDDatabaseMigrator_Monarch__monarchProtectedMigrationSteps__block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41[2] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (!v3)
  {
    v18 = 0;
    goto LABEL_17;
  }

  v5 = [*(a1 + 32) transaction];
  v6 = [v5 unprotectedDatabase];
  v41[0] = @"CREATE TEMPORARY TABLE source_device_map (source INTEGER PRIMARY KEY, device INTEGER, provenance INTEGER)";
  v41[1] = @"INSERT INTO source_device_map(source, device, provenance)                                        SELECT sources.ROWID, source_devices.ROWID, sources.provenance                                        FROM sources JOIN logical_sources ON sources.logical_source_id = logical_sources.ROWID                                        JOIN source_devices ON logical_sources.bundle_id = source_devices.localIdentifier;";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
  v8 = [v6 executeSQLStatements:v7 error:a3];

  if (v8 && [v3 executeSQLStatements:&unk_283CAEA28 error:a3])
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = -1;
    v9 = [v3 transaction];
    v10 = [v9 unprotectedDatabase];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __68__HDDatabaseMigrator_Monarch___migrateSourcesToProvenanceWithError___block_invoke;
    v36[3] = &unk_278614620;
    v36[4] = &v37;
    v11 = [v10 executeUncachedSQL:@"SELECT ROWID FROM source_devices WHERE source_devices.name = '__NONE__' AND source_devices.localIdentifier = '__NONE__'" error:a3 bindingHandler:0 enumerationHandler:v36];

    if (v11)
    {
      if (v38[3] == -1)
      {
        v19 = objc_alloc_init(MEMORY[0x277CCAD78]);
        v20 = [v3 transaction];
        v21 = [v3 fetchLegacySyncIdentity:v20 error:a3];

        if (v21 == -1)
        {

          goto LABEL_15;
        }

        v22 = [v3 transaction];
        v23 = [v22 unprotectedDatabase];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __68__HDDatabaseMigrator_Monarch___migrateSourcesToProvenanceWithError___block_invoke_2;
        v33[3] = &unk_278613B58;
        v24 = v19;
        v34 = v24;
        v35 = v21;
        v25 = [v23 executeUncachedSQL:@"INSERT INTO source_devices(name error:manufacturer bindingHandler:model enumerationHandler:{hardware, firmware, software, localIdentifier, FDAUDI, creation_date, sync_provenance, uuid, sync_identity) VALUES ('__NONE__', '', '', '', '', '', '__NONE__', '', ?, 0, ?, ?)", a3, v33, 0}];

        if (!v25)
        {

          goto LABEL_15;
        }

        v26 = [v3 transaction];
        v27 = [v26 unprotectedDatabase];
        v28 = [v27 lastInsertRowID];
        v29 = [v28 longLongValue];
        v38[3] = v29;
      }

      v12 = [v3 transaction];
      v13 = [v12 protectedDatabase];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __68__HDDatabaseMigrator_Monarch___migrateSourcesToProvenanceWithError___block_invoke_3;
      v32[3] = &unk_27861B7D0;
      v32[4] = v3;
      v32[5] = &v37;
      v14 = [v13 executeUncachedSQL:@"SELECT ROWID error:source_id FROM data_provenances" bindingHandler:a3 enumerationHandler:{0, v32}];

      if (v14)
      {
        v15 = [v3 transaction];
        v16 = [v15 unprotectedDatabase];
        v17 = [v16 executeUncachedSQL:@"DROP TABLE IF EXISTS source_device_map" error:a3];

        if (v17)
        {
          v18 = [v3 executeSQLStatements:&unk_283CAEA40 error:a3] ^ 1;
LABEL_16:
          _Block_object_dispose(&v37, 8);
          goto LABEL_17;
        }
      }
    }

LABEL_15:
    v18 = 1;
    goto LABEL_16;
  }

  v18 = 1;
LABEL_17:
  v30 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t __61__HDDatabaseMigrator_Monarch__monarchProtectedMigrationSteps__block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[5] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v9[0] = @"UPDATE devices SET device_enabled = 1 WHERE device_enabled = 'TRUE' OR device_enabled = 'true'";
    v9[1] = @"ALTER TABLE devices RENAME TO devices_old";
    v9[2] = @"CREATE TABLE IF NOT EXISTS devices (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, device_uuid BLOB, device_name TEXT, device_service INTEGER, device_last_connect REAL, device_enabled BOOLEAN default 1, UNIQUE(device_uuid, device_service))";
    v9[3] = @"INSERT INTO devices(rowid, device_uuid, device_name, device_service, device_last_connect, device_enabled) SELECT rowid, device_uuid, device_name, device_service, device_last_connect, device_enabled FROM devices_old";
    v9[4] = @"DROP TABLE devices_old";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:5];
    v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t __61__HDDatabaseMigrator_Monarch__monarchProtectedMigrationSteps__block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v9[0] = @"DELETE FROM samples WHERE data_id IN (SELECT data_id FROM menstruation_samples)";
    v9[1] = @"DELETE FROM metadata_values WHERE object_id IN (SELECT data_id FROM menstruation_samples)";
    v9[2] = @"DELETE FROM objects WHERE data_id IN (SELECT data_id FROM menstruation_samples)";
    v9[3] = @"DROP TABLE menstruation_samples";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:4];
    v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t __61__HDDatabaseMigrator_Monarch__monarchProtectedMigrationSteps__block_invoke_8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = objc_opt_new();
  v6 = [v3 transaction];
  v7 = [v6 protectedDatabase];
  v8 = [v7 table:@"data_provenances" hasColumnWithName:@"ROWID" error:a3];

  if ((v8 & 1) == 0)
  {
    [v5 addObject:@"ALTER TABLE data_provenances RENAME TO provenance_old;"];
    [v5 addObject:{@"CREATE TABLE data_provenances (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, sync_provenance INTEGER NOT NULL, origin_device TEXT NOT NULL, origin_build TEXT NOT NULL, local_device TEXT NOT NULL, local_build TEXT NOT NULL, source_id INTEGER NOT NULL, device_id INTEGER NOT NULL, source_version TEXT NOT NULL, UNIQUE(sync_provenance, origin_device, origin_build, local_device, local_build, source_id, device_id, source_version));"}];
    [v5 addObject:{@"INSERT INTO data_provenances SELECT data_id, sync_provenance, origin_device, origin_build, local_device, local_build, source_id, device_id, source_version from provenance_old;"}];
    [v5 addObject:@"DROP TABLE provenance_old;"];
  }

  v9 = [v3 transaction];
  v10 = [v9 protectedDatabase];
  v16 = 0;
  v11 = [v10 foreignKeyExistsFromTable:@"objects" column:@"provenance" toTable:@"data_provenances" column:@"ROWID" error:&v16];
  v12 = v16;

  if ((v11 & 1) == 0)
  {
    if (v12)
    {
      if (a3)
      {
        v13 = v12;
        *a3 = v12;
      }

      else
      {
        _HKLogDroppedError();
      }

      v14 = 1;
      goto LABEL_12;
    }

    [v5 addObject:@"ALTER TABLE objects RENAME TO objects_old;"];
    [v5 addObject:{@"CREATE TABLE objects (data_id INTEGER PRIMARY KEY AUTOINCREMENT, uuid BLOB, provenance INTEGER NOT NULL REFERENCES data_provenances (ROWID) ON DELETE CASCADE, type INTEGER, creation_date REAL);"}];
    [v5 addObject:{@"INSERT INTO objects SELECT data_id, uuid, provenance, type, creation_date from objects_old WHERE EXISTS (SELECT ROWID FROM data_provenances WHERE ROWID=provenance);"}];
    [v5 addObject:@"CREATE UNIQUE INDEX objects_uuid ON objects(uuid);"];
    [v5 addObject:@"DROP TABLE objects_old;"];
  }

  v14 = [v3 executeSQLStatements:v5 error:a3] ^ 1;
LABEL_12:

  return v14;
}

uint64_t __61__HDDatabaseMigrator_Monarch__monarchProtectedMigrationSteps__block_invoke_9(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v9[0] = @"DELETE FROM category_samples WHERE data_id IN (SELECT data_id FROM samples WHERE data_type = 93 OR data_type = 95)";
    v9[1] = @"DELETE FROM metadata_values WHERE object_id IN (SELECT data_id FROM samples WHERE data_type = 93 OR data_type = 95)";
    v9[2] = @"DELETE FROM objects WHERE data_id IN (SELECT data_id FROM samples WHERE data_type = 93 OR data_type = 95)";
    v9[3] = @"DELETE FROM samples WHERE data_type = 93 OR data_type = 95";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:4];
    v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void *__61__HDDatabaseMigrator_Monarch__monarchProtectedMigrationSteps__block_invoke_10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQL:@"UPDATE key_value_secure SET value='ft' WHERE key='2' AND value='in';" error:a3] ^ 1);
  }

  return result;
}

uint64_t __61__HDDatabaseMigrator_Monarch__monarchProtectedMigrationSteps__block_invoke_11(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = objc_opt_new();
  v6 = [v3 transaction];
  v7 = [v6 protectedDatabase];
  v8 = [v7 typeOfColumn:@"energy_burned_goal_date" inTable:@"activity_caches" error:a3];

  if (v8)
  {
    if ([v8 isEqualToString:@"INTEGER"])
    {
      [v5 addObject:@"ALTER TABLE activity_caches RENAME TO activity_caches_old"];
      [v5 addObject:{@"CREATE TABLE activity_caches (data_id INTEGER PRIMARY KEY, energy_burned REAL, energy_burned_goal REAL, step_count_anchor INTEGER, energy_burned_goal_date REAL, steps REAL, active_hours_goal REAL, active_energy_burned_anchor INTEGER, brisk_minutes_anchor INTEGER, brisk_minutes_goal REAL, walk_distance REAL, energy_burned_goal_anchor INTEGER, walking_and_running_distance_anchor INTEGER, workout_anchor INTEGER, brisk_minutes REAL, active_hours_anchor INTEGER, cache_index INTEGER, active_hours REAL)"}];
      [v5 addObject:{@"INSERT INTO activity_caches SELECT data_id, energy_burned, energy_burned_goal, step_count_anchor, energy_burned_goal_date, steps, active_hours_goal, active_energy_burned_anchor, brisk_minutes_anchor, brisk_minutes_goal, walk_distance, energy_burned_goal_anchor, walking_and_running_distance_anchor, workout_anchor, brisk_minutes, active_hours_anchor, cache_index, active_hours from activity_caches_old;"}];
      [v5 addObject:@"DROP TABLE activity_caches_old"];
    }

    v9 = [v3 executeSQLStatements:v5 error:a3] ^ 1;
  }

  else
  {
    NSLog(&cfstr_NoEnergyBurned.isa);
    v9 = 1;
  }

  return v9;
}

uint64_t __61__HDDatabaseMigrator_Monarch__monarchProtectedMigrationSteps__block_invoke_12(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0;
  v5 = [v3 transaction];
  v6 = [v5 protectedDatabase];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__HDDatabaseMigrator_Monarch___setAuthorizationAnchorWithError___block_invoke;
  v14[3] = &unk_278614620;
  v14[4] = v15;
  v7 = [v6 executeUncachedSQL:@"SELECT MAX(data_id) FROM objects" error:a3 bindingHandler:0 enumerationHandler:v14];

  if (v7)
  {
    v8 = [v3 transaction];
    v9 = [v8 unprotectedDatabase];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __64__HDDatabaseMigrator_Monarch___setAuthorizationAnchorWithError___block_invoke_2;
    v13[3] = &unk_2786140E8;
    v13[4] = v15;
    v10 = [v9 executeUncachedSQL:@"UPDATE authorization SET deleted_object_anchor = ?" error:a3 bindingHandler:v13 enumerationHandler:0];

    v11 = v10 ^ 1u;
  }

  else
  {
    v11 = 1;
  }

  _Block_object_dispose(v15, 8);
  return v11;
}

uint64_t __61__HDDatabaseMigrator_Monarch__monarchProtectedMigrationSteps__block_invoke_13(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = [*(a1 + 32) transaction];
  v6 = [v5 protectedDatabase];

  v7 = [v3 transaction];
  v8 = [v7 unprotectedDatabase];

  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __78__HDDatabaseMigrator_Monarch___fixProvenancesWithZeroSourceOrDeviceWithError___block_invoke;
  v58[3] = &unk_278614620;
  v58[4] = &v59;
  if (([v8 executeUncachedSQL:@"SELECT ROWID FROM sources WHERE local_device = 1;" error:a3 bindingHandler:0 enumerationHandler:v58] & 1) == 0)
  {
    goto LABEL_26;
  }

  if (v60[3])
  {
    goto LABEL_4;
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 1;
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __78__HDDatabaseMigrator_Monarch___fixProvenancesWithZeroSourceOrDeviceWithError___block_invoke_2;
  v57[3] = &unk_278614620;
  v57[4] = &v35;
  if (([v8 executeUncachedSQL:@"SELECT MAX(sync_anchor) FROM sources;" error:a3 bindingHandler:0 enumerationHandler:v57] & 1) == 0)
  {
    _Block_object_dispose(&v35, 8);
    goto LABEL_26;
  }

  v10 = objc_alloc_init(MEMORY[0x277CCAD78]);
  v11 = MEMORY[0x277CCACA8];
  v12 = [v10 UUIDString];
  v13 = [v11 stringWithFormat:@"com.apple.health.%@", v12];

  v27 = [MEMORY[0x277CCDD30] currentDeviceProductType];
  v26 = [MEMORY[0x277CCDD30] currentDeviceDisplayName];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__58;
  v32 = __Block_byref_object_dispose__58;
  v33 = 0;
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __78__HDDatabaseMigrator_Monarch___fixProvenancesWithZeroSourceOrDeviceWithError___block_invoke_617;
  v55[3] = &unk_278614860;
  v14 = v13;
  v56 = v14;
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __78__HDDatabaseMigrator_Monarch___fixProvenancesWithZeroSourceOrDeviceWithError___block_invoke_2_618;
  v54[3] = &unk_278614620;
  v54[4] = &v28;
  if (([v8 executeUncachedSQL:@"SELECT ROWID FROM logical_sources WHERE bundle_id = ?" error:a3 bindingHandler:v55 enumerationHandler:v54] & 1) == 0)
  {
    v21 = 0;
    goto LABEL_25;
  }

  if (!*(v29 + 40))
  {
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __78__HDDatabaseMigrator_Monarch___fixProvenancesWithZeroSourceOrDeviceWithError___block_invoke_3;
    v52[3] = &unk_278614860;
    v53 = v14;
    if (![v8 executeUncachedSQL:@"INSERT INTO logical_sources (bundle_id) VALUES (?)" error:a3 bindingHandler:v52 enumerationHandler:0])
    {
      v21 = 0;

      goto LABEL_25;
    }

    v15 = [v8 lastInsertRowID];
    v16 = *(v29 + 40);
    *(v29 + 40) = v15;
  }

  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT ROWID FROM sync_identities WHERE hardware_identifier = %@('00000000-0000-0000-0000-000000000000') AND database_identifier = %@('00000000-0000-0000-0000-000000000000') AND instance_discriminator = '' LIMIT 1", *MEMORY[0x277D10A68], *MEMORY[0x277D10A68]];;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v17 = [v3 transaction];
  v18 = [v17 unprotectedDatabase];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __78__HDDatabaseMigrator_Monarch___fixProvenancesWithZeroSourceOrDeviceWithError___block_invoke_4;
  v47[3] = &unk_278614620;
  v47[4] = &v48;
  v19 = [v18 executeSQL:v25 error:a3 bindingHandler:0 enumerationHandler:v47];

  if (v19)
  {
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __78__HDDatabaseMigrator_Monarch___fixProvenancesWithZeroSourceOrDeviceWithError___block_invoke_5;
    v40[3] = &unk_27861B7F8;
    v41 = v10;
    v44 = &v28;
    v42 = v26;
    v43 = v27;
    v45 = &v35;
    v46 = &v48;
    v20 = [v8 executeUncachedSQL:@"INSERT INTO sources(uuid error:logical_source_id bindingHandler:name enumerationHandler:{source_options, local_device, product_type, deleted, mod_date, provenance, sync_anchor, sync_identity) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", a3, v40, 0}];
    v21 = v20;
    if (v20)
    {
      v22 = [v8 lastInsertRowID];
      v23 = [v22 longLongValue];
      v60[3] = v23;
    }
  }

  else
  {
    v21 = 0;
  }

  _Block_object_dispose(&v48, 8);

LABEL_25:
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v35, 8);
  if (v21)
  {
LABEL_4:
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = 0;
    v35 = MEMORY[0x277D85DD0];
    v36 = 3221225472;
    v37 = __78__HDDatabaseMigrator_Monarch___fixProvenancesWithZeroSourceOrDeviceWithError___block_invoke_6;
    v38 = &unk_278614620;
    v39 = &v48;
    if ([v8 executeUncachedSQL:@"SELECT ROWID FROM source_devices WHERE name='__NONE__' AND manufacturer='' AND model='' AND hardware='' AND firmware='' AND software='' AND localIdentifier='__NONE__' AND FDAUDI=''" error:a3 bindingHandler:0 enumerationHandler:&v35] && v49[3])
    {
      v28 = MEMORY[0x277D85DD0];
      v29 = 3221225472;
      v30 = __78__HDDatabaseMigrator_Monarch___fixProvenancesWithZeroSourceOrDeviceWithError___block_invoke_7;
      v31 = &unk_27861B848;
      v32 = v6;
      v33 = &v59;
      v34 = &v48;
      if ([v32 executeUncachedSQL:@"SELECT ROWID error:sync_provenance bindingHandler:origin_device enumerationHandler:{origin_build, local_device, local_build, source_id, device_id, source_version FROM data_provenances WHERE source_id=0 OR device_id=0", a3, 0, &v28}])
      {
        v9 = [v3 executeSQL:@"DELETE FROM data_provenances WHERE source_id=0 OR device_id=0" error:a3] ^ 1;
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v9 = 1;
    }

    _Block_object_dispose(&v48, 8);
    goto LABEL_27;
  }

LABEL_26:
  v9 = 1;
LABEL_27:
  _Block_object_dispose(&v59, 8);

  return v9;
}

uint64_t __61__HDDatabaseMigrator_Monarch__monarchProtectedMigrationSteps__block_invoke_14(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 32) transaction];
    v6 = [v5 protectedDatabase];
    v7 = [v6 columnIsNullable:@"provenance" inTable:@"objects" error:a3];

    if (v7)
    {
      v8 = [MEMORY[0x277CBEB18] array];
      [v8 addObject:@"ALTER TABLE objects RENAME TO objects_old;"];
      [v8 addObject:{@"CREATE TABLE objects (data_id INTEGER PRIMARY KEY AUTOINCREMENT, uuid BLOB, provenance INTEGER NOT NULL REFERENCES data_provenances (ROWID) ON DELETE CASCADE, type INTEGER, creation_date REAL);"}];
      [v8 addObject:{@"INSERT INTO objects SELECT data_id, uuid, provenance, type, creation_date from objects_old WHERE EXISTS (SELECT ROWID FROM data_provenances WHERE ROWID=provenance);"}];
      [v8 addObject:@"DROP TABLE objects_old;"];
      [v8 addObject:@"CREATE UNIQUE INDEX objects_uuid ON objects(uuid);"];
      v9 = [v3 executeSQLStatements:v8 error:a3] ^ 1;
    }

    else
    {
      return *a3 != 0;
    }
  }

  else
  {
    return 0;
  }

  return v9;
}

uint64_t __61__HDDatabaseMigrator_Monarch__monarchProtectedMigrationSteps__block_invoke_15(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = [*(a1 + 32) transaction];
  v6 = [v5 protectedDatabase];

  v7 = [v3 transaction];
  v8 = [v7 unprotectedDatabase];

  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __74__HDDatabaseMigrator_Monarch___fixDanglingSourcesAndProvenancesWithError___block_invoke;
  v36[3] = &unk_278614620;
  v36[4] = &v37;
  if ([v8 executeUncachedSQL:@"SELECT MAX(ROWID) FROM sources WHERE provenance=1 and deleted=0 and product_type LIKE 'Watch1 error:%';" bindingHandler:a3 enumerationHandler:{0, v36}])
  {
    if (v38[3])
    {
      v32 = 0;
      v33 = &v32;
      v34 = 0x2020000000;
      v35 = 1;
      v9 = [MEMORY[0x277CBEB18] array];
      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v11 = [v3 transaction];
      v12 = [v11 unprotectedDatabase];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __74__HDDatabaseMigrator_Monarch___fixDanglingSourcesAndProvenancesWithError___block_invoke_2;
      v30[3] = &unk_278614098;
      v13 = v10;
      v31 = v13;
      v14 = [v12 executeUncachedSQL:@"SELECT rowid FROM sources" error:a3 bindingHandler:0 enumerationHandler:v30];

      if (v14)
      {
        if ([v13 count])
        {
          v15 = MEMORY[0x277CCACA8];
          v16 = [v13 componentsJoinedByString:{@", "}];
          v17 = [v15 stringWithFormat:@"AND source_id NOT IN (%@)", v16];
        }

        else
        {
          v17 = &stru_283BF39C8;
        }

        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT ROWID, origin_device, origin_build, local_device, local_build, device_id, source_version FROM data_provenances WHERE sync_provenance=1 %@", v17];;
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __74__HDDatabaseMigrator_Monarch___fixDanglingSourcesAndProvenancesWithError___block_invoke_3;
        v25[3] = &unk_27861B870;
        v28 = &v32;
        v26 = v6;
        v29 = &v37;
        v20 = v9;
        v27 = v20;
        if ([v26 executeUncachedSQL:v19 error:a3 bindingHandler:0 enumerationHandler:v25] && (v33[3] & 1) != 0)
        {
          v24 = MEMORY[0x277CCACA8];
          v21 = [v20 componentsJoinedByString:{@", "}];
          v22 = [v24 stringWithFormat:@"DELETE FROM data_provenances WHERE ROWID IN (%@)", v21];;

          v18 = [v3 executeSQL:v22 error:a3] ^ 1;
        }

        else
        {
          v18 = 1;
        }
      }

      else
      {
        v18 = 1;
      }

      _Block_object_dispose(&v32, 8);
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 1;
  }

  _Block_object_dispose(&v37, 8);

  return v18;
}

void *__61__HDDatabaseMigrator_Monarch__monarchProtectedMigrationSteps__block_invoke_16(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQL:@"ALTER TABLE workouts ADD COLUMN total_basal_energy_burned REAL" error:a3] ^ 1);
  }

  return result;
}

uint64_t __59__HDDatabaseMigrator_Monarch___migrateSourcesTableForSync___block_invoke(uint64_t a1, sqlite3 *db)
{
  result = sqlite3_create_function_v2(db, "hk_new_source_uuid", 2, 2049, 0, _HDSQLiteNewSourceUUIDWithBundleIdentifierAndProductType, 0, 0, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __59__HDDatabaseMigrator_Monarch___migrateSourcesTableForSync___block_invoke_2(uint64_t a1, sqlite3 *db)
{
  result = sqlite3_create_function_v2(db, "hk_new_source_uuid", 2, 0, 0, 0, 0, 0, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __68__HDDatabaseMigrator_Monarch___migrateSourcesToProvenanceWithError___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  sqlite3_bind_double(a2, 1, Current);
  v5 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  v6 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 3, v6);
}

uint64_t __68__HDDatabaseMigrator_Monarch___migrateSourcesToProvenanceWithError___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = HDSQLiteColumnAsInt64();
  v6 = HDSQLiteColumnAsInt64();
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v7 = *(a1 + 32);
  v17[3] = *(*(*(a1 + 40) + 8) + 24);
  v8 = [v7 transaction];
  v9 = [v8 unprotectedDatabase];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__HDDatabaseMigrator_Monarch___migrateSourcesToProvenanceWithError___block_invoke_4;
  v16[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v16[4] = v6;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__HDDatabaseMigrator_Monarch___migrateSourcesToProvenanceWithError___block_invoke_5;
  v15[3] = &unk_278614620;
  v15[4] = v17;
  LOBYTE(v6) = [v9 executeSQL:@"SELECT device FROM source_device_map WHERE source = ?" error:a3 bindingHandler:v16 enumerationHandler:v15];

  if (v6)
  {
    v10 = [*(a1 + 32) transaction];
    v11 = [v10 protectedDatabase];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __68__HDDatabaseMigrator_Monarch___migrateSourcesToProvenanceWithError___block_invoke_6;
    v14[3] = &unk_27861B7A8;
    v14[4] = v17;
    v14[5] = v5;
    v12 = [v11 executeSQL:@"UPDATE data_provenances SET device_id = ? WHERE ROWID = ?" error:a3 bindingHandler:v14 enumerationHandler:0];
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(v17, 8);
  return v12;
}

void __68__HDDatabaseMigrator_Monarch___migrateSourcesToProvenanceWithError___block_invoke_4(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1 + 32)];
  HDSQLiteBindFoundationValueToStatement();
}

void __68__HDDatabaseMigrator_Monarch___migrateSourcesToProvenanceWithError___block_invoke_6(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:*(*(*(a1 + 32) + 8) + 24)];
  HDSQLiteBindFoundationValueToStatement();

  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1 + 40)];
  HDSQLiteBindFoundationValueToStatement();
}

void __64__HDDatabaseMigrator_Monarch___setAuthorizationAnchorWithError___block_invoke_2(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithLongLong:*(*(*(a1 + 32) + 8) + 24)];
  HDSQLiteBindFoundationValueToStatement();
}

uint64_t __78__HDDatabaseMigrator_Monarch___fixProvenancesWithZeroSourceOrDeviceWithError___block_invoke_2_618(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6C80](a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

uint64_t __78__HDDatabaseMigrator_Monarch___fixProvenancesWithZeroSourceOrDeviceWithError___block_invoke_5(void *a1, sqlite3_stmt *a2)
{
  v4 = a1[4];
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_int64(a2, 2, [*(*(a1[7] + 8) + 40) longLongValue]);
  v5 = a1[5];
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_int(a2, 4, 2);
  sqlite3_bind_int(a2, 5, 1);
  v6 = a1[6];
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_int(a2, 7, 0);
  sqlite3_bind_double(a2, 8, 0.0);
  sqlite3_bind_int(a2, 9, 0);
  v7 = *(a1[8] + 8);
  v8 = *(v7 + 24) + 1;
  *(v7 + 24) = v8;
  sqlite3_bind_int64(a2, 10, v8);
  v9 = *(*(a1[9] + 8) + 24);

  return sqlite3_bind_int64(a2, 11, v9);
}

uint64_t __78__HDDatabaseMigrator_Monarch___fixProvenancesWithZeroSourceOrDeviceWithError___block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v6 = *(a1 + 32);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __78__HDDatabaseMigrator_Monarch___fixProvenancesWithZeroSourceOrDeviceWithError___block_invoke_8;
  v18[3] = &unk_27861B820;
  v20 = a2;
  v19 = *(a1 + 40);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __78__HDDatabaseMigrator_Monarch___fixProvenancesWithZeroSourceOrDeviceWithError___block_invoke_9;
  v17[3] = &unk_278614620;
  v17[4] = &v21;
  if (([v6 executeUncachedSQL:@"SELECT ROWID FROM data_provenances WHERE sync_provenance=? AND origin_device=? AND origin_build=? AND local_device=? AND local_build=? AND source_id=? AND device_id=? AND source_version=?" error:a3 bindingHandler:v18 enumerationHandler:v17] & 1) == 0)
  {
    goto LABEL_6;
  }

  if (!v22[3])
  {
    v7 = *(a1 + 32);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __78__HDDatabaseMigrator_Monarch___fixProvenancesWithZeroSourceOrDeviceWithError___block_invoke_10;
    v14[3] = &unk_27861B820;
    v16 = a2;
    v15 = *(a1 + 40);
    if ([v7 executeUncachedSQL:@"INSERT INTO data_provenances (sync_provenance error:origin_device bindingHandler:origin_build enumerationHandler:{local_device, local_build, source_id, device_id, source_version) VALUES (?, ?, ?, ?, ?, ?, ?, ?)", a3, v14, 0}])
    {
      v8 = [*(a1 + 32) lastInsertRowID];
      v9 = [v8 longLongValue];
      v22[3] = v9;

      goto LABEL_5;
    }

LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

LABEL_5:
  v10 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__HDDatabaseMigrator_Monarch___fixProvenancesWithZeroSourceOrDeviceWithError___block_invoke_11;
  v13[3] = &unk_27861B7A8;
  v13[4] = &v21;
  v13[5] = a2;
  v11 = [v10 executeUncachedSQL:@"UPDATE objects SET provenance=? WHERE provenance=?" error:a3 bindingHandler:v13 enumerationHandler:0];
LABEL_7:
  _Block_object_dispose(&v21, 8);
  return v11;
}

void __78__HDDatabaseMigrator_Monarch___fixProvenancesWithZeroSourceOrDeviceWithError___block_invoke_8(void *a1, sqlite3_stmt *a2)
{
  v4 = a1[6];
  v5 = HDSQLiteColumnAsInt64();
  sqlite3_bind_int64(a2, 1, v5);
  v6 = MEMORY[0x22AAC6C90](a1[6], 2);
  HDSQLiteBindFoundationValueToStatement();

  v7 = MEMORY[0x22AAC6C90](a1[6], 3);
  HDSQLiteBindFoundationValueToStatement();

  v8 = MEMORY[0x22AAC6C90](a1[6], 4);
  HDSQLiteBindFoundationValueToStatement();

  v9 = MEMORY[0x22AAC6C90](a1[6], 5);
  HDSQLiteBindFoundationValueToStatement();

  v10 = a1[6];
  v11 = HDSQLiteColumnAsInt64();
  if (!v11)
  {
    v11 = *(*(a1[4] + 8) + 24);
  }

  sqlite3_bind_int64(a2, 6, v11);
  v12 = a1[6];
  v13 = HDSQLiteColumnAsInt64();
  if (!v13)
  {
    v13 = *(*(a1[5] + 8) + 24);
  }

  sqlite3_bind_int64(a2, 7, v13);
  v14 = MEMORY[0x22AAC6C90](a1[6], 8);
  HDSQLiteBindFoundationValueToStatement();
}

void __78__HDDatabaseMigrator_Monarch___fixProvenancesWithZeroSourceOrDeviceWithError___block_invoke_10(void *a1, sqlite3_stmt *a2)
{
  v4 = a1[6];
  v5 = HDSQLiteColumnAsInt64();
  sqlite3_bind_int64(a2, 1, v5);
  v6 = MEMORY[0x22AAC6C90](a1[6], 2);
  HDSQLiteBindFoundationValueToStatement();

  v7 = MEMORY[0x22AAC6C90](a1[6], 3);
  HDSQLiteBindFoundationValueToStatement();

  v8 = MEMORY[0x22AAC6C90](a1[6], 4);
  HDSQLiteBindFoundationValueToStatement();

  v9 = MEMORY[0x22AAC6C90](a1[6], 5);
  HDSQLiteBindFoundationValueToStatement();

  v10 = a1[6];
  v11 = HDSQLiteColumnAsInt64();
  if (!v11)
  {
    v11 = *(*(a1[4] + 8) + 24);
  }

  sqlite3_bind_int64(a2, 6, v11);
  v12 = a1[6];
  v13 = HDSQLiteColumnAsInt64();
  if (!v13)
  {
    v13 = *(*(a1[5] + 8) + 24);
  }

  sqlite3_bind_int64(a2, 7, v13);
  v14 = MEMORY[0x22AAC6C90](a1[6], 8);
  HDSQLiteBindFoundationValueToStatement();
}

uint64_t __78__HDDatabaseMigrator_Monarch___fixProvenancesWithZeroSourceOrDeviceWithError___block_invoke_11(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(*(*(a1 + 32) + 8) + 24));
  v4 = *(a1 + 40);
  v5 = HDSQLiteColumnAsInt64();

  return sqlite3_bind_int64(a2, 2, v5);
}

uint64_t __74__HDDatabaseMigrator_Monarch___fixDanglingSourcesAndProvenancesWithError___block_invoke_2(uint64_t a1)
{
  v2 = HDSQLiteColumnAsInt64();
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:v2];
  [v3 addObject:v4];

  return 1;
}

uint64_t __74__HDDatabaseMigrator_Monarch___fixDanglingSourcesAndProvenancesWithError___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = HDSQLiteColumnAsInt64();
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v7 = *(a1 + 32);
  v18[4] = &v20;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __74__HDDatabaseMigrator_Monarch___fixDanglingSourcesAndProvenancesWithError___block_invoke_4;
  v19[3] = &unk_27861B7A8;
  v19[4] = *(a1 + 56);
  v19[5] = a2;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __74__HDDatabaseMigrator_Monarch___fixDanglingSourcesAndProvenancesWithError___block_invoke_5;
  v18[3] = &unk_278614620;
  *(*(*(a1 + 48) + 8) + 24) = [v7 executeUncachedSQL:@"SELECT ROWID FROM data_provenances WHERE sync_provenance=1 AND origin_device=? AND origin_build=? AND local_device=? AND local_build=? AND source_id=? AND device_id=? AND source_version=?;" error:a3 bindingHandler:v19 enumerationHandler:v18];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    goto LABEL_6;
  }

  if (!v21[3])
  {
    v8 = *(a1 + 32);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __74__HDDatabaseMigrator_Monarch___fixDanglingSourcesAndProvenancesWithError___block_invoke_6;
    v17[3] = &unk_27861B7A8;
    v17[4] = *(a1 + 56);
    v17[5] = a2;
    *(*(*(a1 + 48) + 8) + 24) = [v8 executeUncachedSQL:@"INSERT INTO data_provenances(sync_provenance error:origin_device bindingHandler:origin_build enumerationHandler:{local_device, local_build, source_id, device_id, source_version) VALUES (?, ?, ?, ?, ?, ?, ?, ?);", a3, v17, 0}];
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v9 = [*(a1 + 32) lastInsertRowID];
      v10 = [v9 longLongValue];
      v21[3] = v10;

      goto LABEL_5;
    }

LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

LABEL_5:
  v11 = *(a1 + 40);
  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:v6];
  [v11 addObject:v12];

  v13 = *(a1 + 32);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__HDDatabaseMigrator_Monarch___fixDanglingSourcesAndProvenancesWithError___block_invoke_7;
  v16[3] = &unk_27861B7A8;
  v16[4] = &v20;
  v16[5] = v6;
  *(*(*(a1 + 48) + 8) + 24) = [v13 executeUncachedSQL:@"UPDATE objects SET provenance=? WHERE provenance=?;" error:a3 bindingHandler:v16 enumerationHandler:0];
  v14 = *(*(*(a1 + 48) + 8) + 24);
LABEL_7:
  _Block_object_dispose(&v20, 8);
  return v14 & 1;
}

void __74__HDDatabaseMigrator_Monarch___fixDanglingSourcesAndProvenancesWithError___block_invoke_4(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = MEMORY[0x22AAC6C90](*(a1 + 40), 1);
  HDSQLiteBindFoundationValueToStatement();

  v5 = MEMORY[0x22AAC6C90](*(a1 + 40), 2);
  HDSQLiteBindFoundationValueToStatement();

  v6 = MEMORY[0x22AAC6C90](*(a1 + 40), 3);
  HDSQLiteBindFoundationValueToStatement();

  v7 = MEMORY[0x22AAC6C90](*(a1 + 40), 4);
  HDSQLiteBindFoundationValueToStatement();

  sqlite3_bind_int64(a2, 5, *(*(*(a1 + 32) + 8) + 24));
  v8 = *(a1 + 40);
  v9 = HDSQLiteColumnAsInt64();
  sqlite3_bind_int64(a2, 6, v9);
  v10 = MEMORY[0x22AAC6C90](*(a1 + 40), 6);
  HDSQLiteBindFoundationValueToStatement();
}

void __74__HDDatabaseMigrator_Monarch___fixDanglingSourcesAndProvenancesWithError___block_invoke_6(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, 1);
  v4 = MEMORY[0x22AAC6C90](*(a1 + 40), 1);
  HDSQLiteBindFoundationValueToStatement();

  v5 = MEMORY[0x22AAC6C90](*(a1 + 40), 2);
  HDSQLiteBindFoundationValueToStatement();

  v6 = MEMORY[0x22AAC6C90](*(a1 + 40), 3);
  HDSQLiteBindFoundationValueToStatement();

  v7 = MEMORY[0x22AAC6C90](*(a1 + 40), 4);
  HDSQLiteBindFoundationValueToStatement();

  sqlite3_bind_int64(a2, 6, *(*(*(a1 + 32) + 8) + 24));
  v8 = *(a1 + 40);
  v9 = HDSQLiteColumnAsInt64();
  sqlite3_bind_int64(a2, 7, v9);
  v10 = MEMORY[0x22AAC6C90](*(a1 + 40), 6);
  HDSQLiteBindFoundationValueToStatement();
}

uint64_t __74__HDDatabaseMigrator_Monarch___fixDanglingSourcesAndProvenancesWithError___block_invoke_7(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(*(*(a1 + 32) + 8) + 24));
  v4 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 2, v4);
}

- (id)boulderProtectedMigrationSteps
{
  array = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__HDDatabaseMigrator_Boulder__boulderProtectedMigrationSteps__block_invoke;
  v6[3] = &unk_27861B758;
  v6[4] = self;
  v4 = [HDDatabaseMigrationStep migrationStepFrom:9017 to:9100 handler:v6];
  [array addObject:v4];

  return array;
}

uint64_t __61__HDDatabaseMigrator_Boulder__boulderProtectedMigrationSteps__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [v3 transaction];
  v7 = [v6 unprotectedDatabase];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __66__HDDatabaseMigrator_Boulder___fixSyncProvenanceForPostOkemoZurs___block_invoke;
  v34[3] = &unk_278614098;
  v8 = v5;
  v35 = v8;
  v9 = [v7 executeUncachedSQL:@"SELECT ROWID FROM sources WHERE product_type LIKE 'Watch%'" error:a3 bindingHandler:0 enumerationHandler:v34];

  if (v9)
  {
    if ([v8 count])
    {
      v10 = [v8 componentsJoinedByString:{@", "}];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT ROWID FROM data_provenances WHERE sync_provenance = 0 AND origin_build = '[8.0, 8.2' AND source_id IN (%@) LIMIT 1"], v10);;
      v30 = 0;
      v31 = &v30;
      v32 = 0x2020000000;
      v33 = -1;
      v12 = [v3 transaction];
      v13 = [v12 protectedDatabase];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __66__HDDatabaseMigrator_Boulder___fixSyncProvenanceForPostOkemoZurs___block_invoke_2;
      v29[3] = &unk_278614620;
      v29[4] = &v30;
      v14 = [v13 executeUncachedSQL:v11 error:a3 bindingHandler:0 enumerationHandler:v29];

      if (v14)
      {
        if (v31[3] != -1)
        {
          v15 = [MEMORY[0x277CBEB18] array];
          [v15 addObject:{@"UPDATE data_provenances SET origin_build = '[8.2, 9.0' WHERE origin_build = '[8.0, 8.2}]'"));
          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE data_provenances SET sync_provenance = 1 WHERE origin_build = '[8.2, 9.0' AND source_id IN (%@)"], v10);
          [v15 addObject:v16];

          v28 = 0;
          v17 = [v3 executeSQLStatements:v15 error:&v28];
          v18 = v28;
          v19 = v18;
          if ((v17 & 1) == 0)
          {
            v20 = [v18 userInfo];
            v21 = [v20 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

            v22 = [v21 domain];
            if ([v22 isEqualToString:@"com.apple.SQLite"])
            {
              v23 = [v21 code];

              if (v23 == 19)
              {
                _HKInitializeLogging();
                v24 = *MEMORY[0x277CCC2A0];
                if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
                {
                  *buf = 0;
                  _os_log_fault_impl(&dword_228986000, v24, OS_LOG_TYPE_FAULT, "Attempt to fix sync provenance failed due to a SQL constraint. Skipping migration step.", buf, 2u);
                }

                v25 = 0;
                goto LABEL_19;
              }
            }

            else
            {
            }
          }

          v25 = v17 ^ 1u;
LABEL_19:

          goto LABEL_20;
        }

        v25 = 0;
      }

      else
      {
        v25 = 1;
      }

LABEL_20:
      _Block_object_dispose(&v30, 8);

      goto LABEL_21;
    }

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

LABEL_21:

  return v25;
}

uint64_t __66__HDDatabaseMigrator_Boulder___fixSyncProvenanceForPostOkemoZurs___block_invoke(uint64_t a1)
{
  v2 = HDSQLiteColumnAsInt64();
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:v2];
  [v3 addObject:v4];

  return 1;
}

- (id)erieProtectedMigrationSteps
{
  array = [MEMORY[0x277CBEB18] array];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__HDDatabaseMigrator_Erie__erieProtectedMigrationSteps__block_invoke;
  v8[3] = &unk_278615508;
  v8[4] = self;
  v4 = HDCreateMigrationStep(10202, 10204, v8);
  [array addObject:v4];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HDDatabaseMigrator_Erie__erieProtectedMigrationSteps__block_invoke_2;
  v7[3] = &unk_278615508;
  v7[4] = self;
  v5 = HDCreateMigrationStep(10204, 10205, v7);
  [array addObject:v5];

  return array;
}

- (void)peace_addUnprotectedMigrationSteps
{
  [(HDDatabaseMigrator *)self addMigrationTo:12000 function:_HDAddWorkoutBuilderTables];
  [(HDDatabaseMigrator *)self addMigrationTo:12001 function:_HDAddWorkoutSessionControllerTables];
  [(HDDatabaseMigrator *)self addMigrationTo:12002 function:_HDAddClientBundleIdentifierToWorkoutSession];
  [(HDDatabaseMigrator *)self addMigrationTo:12010 function:_HDAddAuthorizationMode];
  [(HDDatabaseMigrator *)self addMigrationTo:12011 function:_HDAddClientApplicationIdentifierToWorkoutSession];
  [(HDDatabaseMigrator *)self addMigrationTo:12012 function:_HDRemoveExistingWorkoutBuildersAndSessions];
  [(HDDatabaseMigrator *)self addMigrationTo:12013 function:_HDSplitAuthorizationAnchors];
  [(HDDatabaseMigrator *)self addMigrationTo:12014 function:_HDAddSyncProtocolVersionToCloudSyncStore];
  [(HDDatabaseMigrator *)self addMigrationTo:12015 function:_HDMakeStatisticsColumnNullable];
  [(HDDatabaseMigrator *)self addMigrationTo:12016 function:_HDAddRequestedTargetStateToWorkoutSession];

  [(HDDatabaseMigrator *)self addMigrationTo:12017 function:_HDAddHasFailedToWorkoutSession];
}

- (void)peace_addProtectedMigrationSteps
{
  [(HDDatabaseMigrator *)self addMigrationTo:12000 function:_HDAddWorkoutEventForeignKey];
  [(HDDatabaseMigrator *)self addMigrationTo:12001 function:_CreateQuantitySampleSeriesEntityTable];
  [(HDDatabaseMigrator *)self addMigrationTo:12002 function:_AddCondenserVersionToWorkoutEntityTable];
  [(HDDatabaseMigrator *)self addMigrationTo:12003 function:_AddTemplateUniqueNameToFitnessFriendAchievements];
  [(HDDatabaseMigrator *)self addMigrationTo:12010 function:_AddiOSVersionToFHIRResources];
  [(HDDatabaseMigrator *)self addMigrationTo:12011 function:_AddCondenserDateToWorkoutEntityTable];
  [(HDDatabaseMigrator *)self addMigrationTo:12012 function:_AddHFDKeyToSeriesSampleEntityTable];
  [(HDDatabaseMigrator *)self addMigrationTo:12013 function:_CreateClinicalRecordEntityTable];
  [(HDDatabaseMigrator *)self addMigrationTo:12014 function:_MakeQuantitySampleSeriesEntityHFDKeyUnique];
  [(HDDatabaseMigrator *)self addMigrationTo:12015 function:_CreateQuantitySampleSeriesUnfrozenIndex];
  [(HDDatabaseMigrator *)self addMigrationTo:12016 function:_RemoveLegacyAchievements];
  [(HDDatabaseMigrator *)self addMigrationTo:12017 function:_HDMigrateClinicalSources];
  [(HDDatabaseMigrator *)self addMigrationTo:12018 function:_MakeSeriesSampleEntityHFDKeyUnique];

  [(HDDatabaseMigrator *)self addMigrationTo:12019 function:_HDAddHealthRecordsAccountCount];
}

- (void)azul_addUnprotectedMigrationSteps
{
  [(HDDatabaseMigrator *)self addMigrationTo:14000 function:_HDUpdateClientSideDataCollectionLastCollectedDatum];
  [(HDDatabaseMigrator *)self addMigrationTo:14001 function:_HDAddShouldCollectEventsColumnToWorkoutBuildersTable];
  [(HDDatabaseMigrator *)self addMigrationTo:14002 function:_HDAddOnboardingCompletionTable];
  [(HDDatabaseMigrator *)self addMigrationTo:14003 function:_HDResetAnchorsForCloudSyncStoresWithGaps];

  [(HDDatabaseMigrator *)self addMigrationTo:14004 function:_HDResetReceivedNanoSyncAnchorsForCategoryAndQuantitySamples];
}

- (void)azul_addProtectedMigrationSteps
{
  [(HDDatabaseMigrator *)self addMigrationTo:14000 function:_HDAddSleepScheduleTable];
  [(HDDatabaseMigrator *)self addMigrationTo:14001 function:_HDAddECGSampleTable];
  [(HDDatabaseMigrator *)self addMigrationTo:14002 function:_HDAddContributorsTable];
  [(HDDatabaseMigrator *)self addMigrationTo:14003 function:_HDAddDeviceRecordSamplesTable];
  [(HDDatabaseMigrator *)self addMigrationTo:14004 function:_HDAddProtectedOnboardingCompletionTable];
  [(HDDatabaseMigrator *)self addMigrationTo:14005 function:_HDAddFHIRVersionToClinicalRecordSamplesTable];
  [(HDDatabaseMigrator *)self addMigrationTo:14006 function:_HDAddContributorsColumnToProvenance foreignKeys:1];
  [(HDDatabaseMigrator *)self addMigrationTo:14007 function:_HDCreatePartialIndexForDeletedObjects];
  [(HDDatabaseMigrator *)self addMigrationTo:14008 function:_HDAddAppleIDAndCallerIDToContributorsTable];
  [(HDDatabaseMigrator *)self addMigrationTo:14009 function:_HDAddECGSymptomsColumnToECGSamplesTable];
  [(HDDatabaseMigrator *)self addMigrationTo:14010 function:_HDMigrateECGClassificationAverageHRAndPayload];
  [(HDDatabaseMigrator *)self addMigrationTo:14011 function:_HDRemovePlaceholderAndAddSyncProvenanceToContributorsTable];
  [(HDDatabaseMigrator *)self addMigrationTo:14013 function:_HDAddFirstSeenDateToOriginalFHIRResourcesTable foreignKeys:1];
  [(HDDatabaseMigrator *)self addMigrationTo:14014 function:_HDAddCoverageRecordSamplesTable];
  [(HDDatabaseMigrator *)self addMigrationTo:14015 function:_HDAddSCWIColumnToFriendWorkoutTable];
  [(HDDatabaseMigrator *)self addMigrationTo:14016 function:_HDAddRequestedScopeToClinicalCredentialsTable foreignKeys:1];
  [(HDDatabaseMigrator *)self addMigrationTo:14021 function:_HDFixInvalidContributorInDataProvenancesTable];
  [(HDDatabaseMigrator *)self addMigrationTo:14025 function:_HDAddOverrideDayIndexRemoveWindDownFromSleepScheduleTable];
  [(HDDatabaseMigrator *)self addMigrationTo:14026 function:_HDUpdateMedicalRecordsCoverageDiagnosticreportProcedureTables];
  [(HDDatabaseMigrator *)self addMigrationTo:14028 function:_HDRepairECGSymptomsStatus];
  [(HDDatabaseMigrator *)self addMigrationTo:14029 function:_HDMigrateAndDeleteProtectedOnboardingCompletionTable];
  [(HDDatabaseMigrator *)self addMigrationTo:14030 function:_HDRecreateCHRConditionsTable];
  [(HDDatabaseMigrator *)self addMigrationTo:14031 function:_HDUpdateSleepAndAppetiteChangesCategoryValues];
  [(HDDatabaseMigrator *)self addMigrationTo:14032 function:_HDRepairECGSymptomsStatusForNilSymptomsMetadata];
  [(HDDatabaseMigrator *)self addMigrationTo:14035 function:_HDUpdateNullTypeValesInObjectsTable];
  [(HDDatabaseMigrator *)self addMigrationTo:14200 function:_HDRenameSCWIAndAddSeymourMediaTypeColumnToFriendWorkoutTable];

  [(HDDatabaseMigrator *)self addMigrationTo:14201 function:_HDUpdateCoverageAddIdentifierColumnsTable];
}

- (id)emetUnprotectedMigrationSteps
{
  array = [MEMORY[0x277CBEB18] array];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__HDDatabaseMigrator_Emet__emetUnprotectedMigrationSteps__block_invoke;
  v8[3] = &unk_27861B758;
  v8[4] = self;
  v4 = [HDDatabaseMigrationStep migrationStepFrom:11203 to:11300 handler:v8];
  [array addObject:v4];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HDDatabaseMigrator_Emet__emetUnprotectedMigrationSteps__block_invoke_2;
  v7[3] = &unk_27861B758;
  v7[4] = self;
  v5 = [HDDatabaseMigrationStep migrationStepFrom:11300 to:11301 handler:v7];
  [array addObject:v5];

  return array;
}

uint64_t __57__HDDatabaseMigrator_Emet__emetUnprotectedMigrationSteps__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v5 addObject:@"ALTER TABLE sync_anchors RENAME TO sync_anchors_old"];
  [v5 addObject:{@"CREATE TABLE sync_anchors (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, next INTEGER NOT NULL, acked INTEGER NOT NULL, received INTEGER NOT NULL, schema TEXT NOT NULL, type INTEGER NOT NULL, store INTEGER NOT NULL, epoch INTEGER NOT NULL, UNIQUE(store, epoch, type, schema));"}];
  [v5 addObject:{@"INSERT INTO sync_anchors (next, acked, received, schema, type, store, epoch) SELECT next, acked, received, 'main', type, store, epoch FROM sync_anchors_old;"}];
  [v5 addObject:@"DROP TABLE sync_anchors_old"];
  v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;

  return v6;
}

void *__57__HDDatabaseMigrator_Emet__emetUnprotectedMigrationSteps__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQL:@"DROP TABLE IF EXISTS subscription_data_anchors" error:a3] ^ 1);
  }

  return result;
}

- (id)emetProtectedMigrationSteps
{
  array = [MEMORY[0x277CBEB18] array];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __55__HDDatabaseMigrator_Emet__emetProtectedMigrationSteps__block_invoke;
  v20[3] = &unk_27861B758;
  v20[4] = self;
  v4 = [HDDatabaseMigrationStep migrationStepWithForeignKeysDisabledFrom:11200 to:11300 handler:v20];
  [array addObject:v4];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __55__HDDatabaseMigrator_Emet__emetProtectedMigrationSteps__block_invoke_2;
  v19[3] = &unk_27861B758;
  v19[4] = self;
  v5 = [HDDatabaseMigrationStep migrationStepFrom:11300 to:11301 handler:v19];
  [array addObject:v5];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __55__HDDatabaseMigrator_Emet__emetProtectedMigrationSteps__block_invoke_3;
  v18[3] = &unk_27861B758;
  v18[4] = self;
  v6 = [HDDatabaseMigrationStep migrationStepFrom:11301 to:11302 handler:v18];
  [array addObject:v6];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __55__HDDatabaseMigrator_Emet__emetProtectedMigrationSteps__block_invoke_4;
  v17[3] = &unk_27861B758;
  v17[4] = self;
  v7 = [HDDatabaseMigrationStep migrationStepFrom:11302 to:11303 handler:v17];
  [array addObject:v7];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __55__HDDatabaseMigrator_Emet__emetProtectedMigrationSteps__block_invoke_5;
  v16[3] = &unk_27861B758;
  v16[4] = self;
  v8 = [HDDatabaseMigrationStep migrationStepFrom:11303 to:11304 handler:v16];
  [array addObject:v8];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55__HDDatabaseMigrator_Emet__emetProtectedMigrationSteps__block_invoke_6;
  v15[3] = &unk_27861B758;
  v15[4] = self;
  v9 = [HDDatabaseMigrationStep migrationStepFrom:11304 to:11305 handler:v15];
  [array addObject:v9];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__HDDatabaseMigrator_Emet__emetProtectedMigrationSteps__block_invoke_7;
  v14[3] = &unk_27861B758;
  v14[4] = self;
  v10 = [HDDatabaseMigrationStep migrationStepFrom:11305 to:11306 handler:v14];
  [array addObject:v10];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__HDDatabaseMigrator_Emet__emetProtectedMigrationSteps__block_invoke_8;
  v13[3] = &unk_27861B758;
  v13[4] = self;
  v11 = [HDDatabaseMigrationStep migrationStepFrom:11306 to:11307 handler:v13];
  [array addObject:v11];

  return array;
}

uint64_t __55__HDDatabaseMigrator_Emet__emetProtectedMigrationSteps__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (!v3)
  {
    result = 0;
    goto LABEL_21;
  }

  v5 = [*(a1 + 32) transaction];
  v6 = [v5 protectedDatabase];
  v7 = [v6 fileURL];
  v8 = [v7 URLByDeletingLastPathComponent];
  v9 = [v8 URLByAppendingPathComponent:@"termbase.sqlite"];

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  [v10 hd_removeSQLiteDatabaseAtURL:v9 preserveCopy:0];

  v11 = [v3 transaction];
  v12 = [v11 protectedDatabase];

  if (![v12 deleteDataEntitySubclassTablesIfExist:&unk_283CAF058 intermediateTables:&unk_283CAF070 error:a3] || !objc_msgSend(v12, "deleteDataEntitySubclassTablesIfExist:intermediateTables:error:", &unk_283CAF088, &unk_283CAF0A0, a3))
  {
    goto LABEL_19;
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = [v3 transaction];
  v15 = [v14 protectedDatabase];
  v16 = [v15 dumpSchemaWithError:a3];

  if (!v16)
  {

LABEL_19:
LABEL_20:
    result = 1;
    goto LABEL_21;
  }

  v30 = v12;
  v31 = v3;
  v32 = a3;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v17 = [&unk_283CAF0B8 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v34;
    v20 = MEMORY[0x277CCC2A0];
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(&unk_283CAF0B8);
        }

        v22 = *(*(&v33 + 1) + 8 * i);
        if ([MEMORY[0x277D10B30] databaseSchemas:v16 containTable:v22])
        {
          v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"DROP TABLE IF EXISTS %@", v22];
          [v13 addObject:v23];
        }

        else
        {
          _HKInitializeLogging();
          v24 = *v20;
          if (os_log_type_enabled(*v20, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v38 = v22;
            _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_INFO, "Skipping deletion from nonexistent table %@", buf, 0xCu);
          }
        }
      }

      v18 = [&unk_283CAF0B8 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v18);
  }

  v25 = [v31 executeSQLStatements:v13 error:v32];

  if ((v25 & 1) == 0)
  {
    goto LABEL_20;
  }

  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v26 addObject:{@"CREATE TABLE medical_records (data_id INTEGER PRIMARY KEY, note TEXT, entered_in_error INTEGER NON NULL, modified_date REAL, fhir_identifier BLOB, refinement_version BLOB, sort_date REAL NON NULL, sort_date_key_path TEXT NON NULL)"}];
  [v26 addObject:{@"CREATE TABLE account_owner_samples (data_id INTEGER PRIMARY KEY, name TEXT NOT NULL, birth_date BLOB)"}];
  [v26 addObject:{@"CREATE TABLE allergy_record_samples (data_id INTEGER PRIMARY KEY, allergy_codings BLOB NOT NULL, onset_date BLOB, asserter TEXT, reactions BLOB, criticality_coding BLOB, last_occurence_date BLOB, recorded_date BLOB)"}];
  [v26 addObject:{@"CREATE TABLE condition_record_samples (data_id INTEGER PRIMARY KEY, condition_codings BLOB NOT NULL, category_codings BLOB NOT NULL, asserter TEXT, abatement BLOB, onset BLOB, recorded_date BLOB, clinical_status_coding BLOB, verification_status_coding BLOB, severity_codings BLOB, body_sites_codings BLOB)"}];
  [v26 addObject:{@"CREATE TABLE diagnostic_test_report_samples (data_id INTEGER PRIMARY KEY, diagnostic_test_codings BLOB, panel_name TEXT NOT NULL, results BLOB, effective_start_date BLOB, status BLOB NOT NULL, effective_end_date BLOB, issue_date BLOB NOT NULL)"}];
  [v26 addObject:{@"CREATE TABLE diagnostic_test_result_samples (data_id INTEGER PRIMARY KEY, diagnostic_test_codings BLOB NOT NULL, value BLOB, reference_ranges BLOB, effective_start_date BLOB, category TEXT NOT NULL, issue_date BLOB, effective_end_date BLOB)"}];
  [v26 addObject:{@"CREATE TABLE medication_dispense_record_samples (data_id INTEGER PRIMARY KEY, medication_codings BLOB NOT NULL, quantity BLOB, preparation_date BLOB, hand_over_date BLOB, dosage_instructions BLOB, status_coding BLOB)"}];
  [v26 addObject:{@"CREATE TABLE medication_order_samples (data_id INTEGER PRIMARY KEY, medication_codings BLOB NOT NULL, prescriber TEXT, number_of_fills INTEGER NOT NULL, signetur TEXT, written_date BLOB, ended_date BLOB)"}];
  [v26 addObject:{@"CREATE TABLE medication_record_samples (data_id INTEGER PRIMARY KEY, medication_codings BLOB NOT NULL, assertion_type TEXT, asserter TEXT, assertion_date BLOB, dosage TEXT, not_taken INTEGER NOT NULL, effective_start_date BLOB, effective_end_date BLOB)"}];
  [v26 addObject:{@"CREATE TABLE procedure_record_samples (data_id INTEGER PRIMARY KEY, procedure_codings BLOB NOT NULL, orderer TEXT, order_date BLOB, performer TEXT, organization TEXT, execution_start_date BLOB, outcome TEXT, complications BLOB NOT NULL, reasons BLOB NOT NULL, not_performed INTEGER NOT NULL, execution_end_date BLOB)"}];
  [v26 addObject:{@"CREATE TABLE vaccination_record_samples (data_id INTEGER PRIMARY KEY, vaccination_codings BLOB NOT NULL, expiration_date BLOB, dose_number TEXT, dose_quantity TEXT, performer TEXT, body_site_coding BLOB, reaction TEXT, not_given INTEGER NOT NULL, administration_date BLOB NOT NULL, status_coding BLOB, patient_reported INTEGER NOT NULL, route_codings BLOB, reasons_codings BLOB, reasons_not_given_codings BLOB)"}];
  [v26 addObject:{@"CREATE TABLE unknown_record_samples (data_id INTEGER PRIMARY KEY, display_name TEXT)"}];
  [v26 addObject:{@"CREATE TABLE clinical_gateways (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, external_id TEXT NOT NULL, last_reported_status INTEGER NOT NULL, revision INTEGER NOT NULL, raw_content BLOB NOT NULL, sync_anchor INTEGER NOT NULL UNIQUE, sync_provenance INTEGER NOT NULL, UNIQUE(external_id))"}];
  [v26 addObject:{@"CREATE TABLE clinical_accounts (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, identifier BLOB NOT NULL UNIQUE, user_enabled_flag INTEGER NOT NULL, relogin_needed_flag INTEGER NOT NULL, creation_date REAL NOT NULL, last_fetch_date REAL, last_full_fetch_date REAL, last_submitted_rowid INTEGER, last_extracted_rowid INTEGER, last_extracted_rules_version INTEGER, credential_id INTEGER REFERENCES clinical_credentials (ROWID) ON DELETE SET NULL, gateway_id INTEGER NOT NULL UNIQUE REFERENCES clinical_gateways (ROWID) ON DELETE NO ACTION, sync_identifier BLOB NOT NULL UNIQUE, modification_date REAL NOT NULL, sync_anchor INTEGER NOT NULL UNIQUE, sync_provenance INTEGER NOT NULL)"}];
  [v26 addObject:{@"CREATE TABLE clinical_deleted_accounts (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, sync_identifier BLOB NOT NULL, deletion_date REAL NOT NULL, sync_provenance INTEGER NOT NULL, UNIQUE(sync_identifier))"}];
  [v26 addObject:{@"CREATE TABLE fhir_resources (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, type TEXT NOT NULL, account_id INTEGER NOT NULL REFERENCES clinical_accounts (ROWID) ON DELETE CASCADE, id TEXT NOT NULL, sync_provenance INTEGER NOT NULL, raw_content BLOB NOT NULL, fhir_version TEXT NOT NULL, received_date REAL NOT NULL, received_date_timezone TEXT NOT NULL, UNIQUE(type, account_id, id))"}];
  [v26 addObject:{@"CREATE TABLE clinical_credentials (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, access_token BLOB NOT NULL, token_type TEXT NOT NULL, refresh_token BLOB, expiration_date REAL, scope TEXT, patient_id TEXT, creation_date REAL NOT NULL)"}];
  [v26 addObject:{@"CREATE TABLE clinical_authorization_sessions (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, query TEXT NOT NULL, state BLOB NOT NULL UNIQUE, code TEXT, creation_date REAL NOT NULL, gateway_id INTEGER REFERENCES clinical_gateways (ROWID) ON DELETE CASCADE, account_id INTEGER REFERENCES clinical_accounts (ROWID) ON DELETE CASCADE, CHECK ((account_id IS NULL AND gateway_id IS NOT NULL) OR (account_id IS NOT NULL AND gateway_id IS NULL)))"}];
  v27 = [v31 executeSQLStatements:v26 error:v32];

  result = v27 ^ 1u;
LABEL_21:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __55__HDDatabaseMigrator_Emet__emetProtectedMigrationSteps__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = [MEMORY[0x277CBEAC0] hk_secureCodingClasses];
  v6 = [v3 transaction];
  v7 = [v6 protectedDatabase];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__HDDatabaseMigrator_Emet___emet_migrateWorkoutEventMetadataToProtobufWithError___block_invoke;
  v11[3] = &unk_2786140C0;
  v12 = v5;
  v13 = v3;
  v8 = v5;
  LODWORD(a3) = [v7 executeSQL:@"SELECT rowid error:metadata FROM workout_events WHERE metadata IS NOT NULL" bindingHandler:a3 enumerationHandler:{0, v11}];

  v9 = a3 ^ 1;
  return v9;
}

uint64_t __55__HDDatabaseMigrator_Emet__emetProtectedMigrationSteps__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    if ([(HDDatabaseMigrator *)*(a1 + 32) _recreateMedicalRecordTable:&unk_283CAEFE0 intermediateTables:@"CREATE TABLE medical_records (data_id INTEGER PRIMARY KEY creationSQL:note TEXT error:entered_in_error INTEGER NON NULL, modified_date REAL, fhir_identifier TEXT NON NULL, extraction_version INTEGER NON NULL, sort_date REAL NON NULL, sort_date_key_path TEXT NON NULL)", a3])
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v5 = [&unk_283CB46A8 allKeys];
      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v16;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v15 + 1) + 8 * i);
            v11 = [&unk_283CB46A8 objectForKeyedSubscript:v10];
            LODWORD(v10) = [(HDDatabaseMigrator *)v3 _recreateMedicalRecordTable:v10 intermediateTables:&unk_283CAEFF8 creationSQL:v11 error:a3];

            if (!v10)
            {
              v12 = 1;
              goto LABEL_14;
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      v12 = 0;
LABEL_14:
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void *__55__HDDatabaseMigrator_Emet__emetProtectedMigrationSteps__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([(HDDatabaseMigrator *)result _recreateMedicalRecordTable:&unk_283CAF010 intermediateTables:@"CREATE TABLE procedure_record_samples (data_id INTEGER PRIMARY KEY creationSQL:procedure_codings BLOB NOT NULL error:performers BLOB, execution_start_date BLOB, execution_end_date BLOB, not_performed INTEGER NOT NULL, status_coding BLOB NOT NULL, category_codings BLOB, reason_codings BLOB, reasons_not_performed_codings BLOB, outcome_codings BLOB, complications_codings BLOB, follow_ups_codings BLOB, body_sites_codings BLOB)", a3]^ 1);
  }

  return result;
}

void *__55__HDDatabaseMigrator_Emet__emetProtectedMigrationSteps__block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([(HDDatabaseMigrator *)result _recreateMedicalRecordTable:&unk_283CAF028 intermediateTables:@"CREATE TABLE IF NOT EXISTS diagnostic_test_result_samples (data_id INTEGER PRIMARY KEY creationSQL:diagnostic_test_codings BLOB NOT NULL error:value BLOB, reference_ranges BLOB, effective_start_date BLOB, category TEXT NOT NULL, issue_date BLOB, effective_end_date BLOB, status_coding BLOB NOT NULL, interpretation_codings BLOB, comments TEXT, body_site_codings BLOB, method_codings BLOB, performers BLOB)", a3]^ 1);
  }

  return result;
}

uint64_t __55__HDDatabaseMigrator_Emet__emetProtectedMigrationSteps__block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v5 addObject:@"ALTER TABLE fhir_resources ADD COLUMN source_url TEXT"];
  [v5 addObject:@"ALTER TABLE fhir_resources ADD COLUMN extraction_hints INTEGER"];
  [v5 addObject:{@"CREATE TABLE IF NOT EXISTS fhir_resources_last_seen (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, resource_id INTEGER NOT NULL REFERENCES fhir_resources(ROWID) ON DELETE CASCADE, last_seen_date REAL NOT NULL)"}];
  v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;

  return v6;
}

uint64_t __55__HDDatabaseMigrator_Emet__emetProtectedMigrationSteps__block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  if ([(HDDatabaseMigrator *)*(a1 + 32) _recreateMedicalRecordTable:&unk_283CAF040 intermediateTables:@"CREATE TABLE medication_record_samples (data_id INTEGER PRIMARY KEY creationSQL:medication_codings BLOB NOT NULL error:assertion_type INTEGER NOT NULL, asserter TEXT, assertion_date BLOB, status_coding BLOB NOT NULL, dosages BLOB, reason_for_use_codings BLOB, not_taken INTEGER NOT NULL, reasons_not_taken_codings BLOB, effective_start_date BLOB, effective_end_date BLOB, earliest_dosage_date BLOB)", a3]&& [(HDDatabaseMigrator *)v3 _recreateMedicalRecordTable:&unk_283CAF040 intermediateTables:@"CREATE TABLE medication_dispense_record_samples (data_id INTEGER PRIMARY KEY creationSQL:medication_codings BLOB NOT NULL error:quantity_dispensed BLOB, preparation_date BLOB, hand_over_date BLOB, dosages BLOB, earliest_dosage_date BLOB, status_coding BLOB, days_supply_quantity BLOB)", a3])
  {
    return [(HDDatabaseMigrator *)v3 _recreateMedicalRecordTable:&unk_283CAF040 intermediateTables:@"CREATE TABLE medication_order_samples (data_id INTEGER PRIMARY KEY creationSQL:medication_codings BLOB NOT NULL error:prescriber TEXT, number_of_fills INTEGER NOT NULL, dosages BLOB, earliest_dosage_date BLOB, written_date BLOB, ended_date BLOB, status_coding BLOB NOT NULL, reason_codings BLOB, reason_ended_codings BLOB)", a3]^ 1;
  }

  return 1;
}

void *__55__HDDatabaseMigrator_Emet__emetProtectedMigrationSteps__block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQL:@"ALTER TABLE clinical_accounts ADD patient_hash TEXT" error:a3] ^ 1);
  }

  return result;
}

uint64_t __81__HDDatabaseMigrator_Emet___emet_migrateWorkoutEventMetadataToProtobufWithError___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = HDSQLiteColumnAsInt64();
  v7 = MEMORY[0x22AAC6C30](a2, 1);
  v28 = 0;
  v8 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v7 error:&v28];
  v9 = v28;
  v10 = *MEMORY[0x277CCA308];
  if ([v8 containsValueForKey:*MEMORY[0x277CCA308]])
  {
    v11 = [v8 decodeObjectOfClasses:*(a1 + 32) forKey:v10];
    v12 = [v8 error];

    v9 = v12;
  }

  else
  {
    v11 = 0;
  }

  [v8 finishDecoding];
  if (!v9)
  {
    if ([v11 count])
    {
      v17 = [v11 hk_codableMetadata];
      if (!v17)
      {
        _HKInitializeLogging();
        v18 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v30 = v6;
          _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "Failed to create codable workout event metadata for %lld", buf, 0xCu);
        }

        v19 = [MEMORY[0x277CCA9B8] hk_error:100 format:@"Failed to create codable workout event metadata"];
        if (v19)
        {
          if (a3)
          {
            v20 = v19;
            *a3 = v19;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        goto LABEL_21;
      }
    }

    else
    {
      v17 = 0;
    }

    v21 = [*(a1 + 40) transaction];
    v22 = [v21 protectedDatabase];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __81__HDDatabaseMigrator_Emet___emet_migrateWorkoutEventMetadataToProtobufWithError___block_invoke_321;
    v25[3] = &unk_278613B58;
    v15 = v17;
    v26 = v15;
    v27 = v6;
    v16 = [v22 executeSQL:@"UPDATE workout_events SET metadata = ? WHERE rowid = ?" error:a3 bindingHandler:v25 enumerationHandler:0];

    goto LABEL_22;
  }

  _HKInitializeLogging();
  v13 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    *buf = 134218242;
    v30 = v6;
    v31 = 2114;
    v32 = v9;
    _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "Failed to unarchive workout event metadata for %lld: %{public}@", buf, 0x16u);
  }

  if (!a3)
  {
    _HKLogDroppedError();
LABEL_21:
    v15 = 0;
    v16 = 0;
    goto LABEL_22;
  }

  v14 = v9;
  v15 = 0;
  v16 = 0;
  *a3 = v9;
LABEL_22:

  v23 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t __81__HDDatabaseMigrator_Emet___emet_migrateWorkoutEventMetadataToProtobufWithError___block_invoke_321(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [v4 data];
    HDSQLiteBindFoundationValueToStatement();
  }

  else
  {
    sqlite3_bind_null(a2, 1);
  }

  v6 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 2, v6);
}

- (uint64_t)_recreateMedicalRecordTable:(void *)table intermediateTables:(void *)tables creationSQL:(uint64_t)l error:
{
  v9 = a2;
  tableCopy = table;
  tablesCopy = tables;
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT uuid, provenance, data_type FROM %@ INNER JOIN objects USING (data_id) INNER JOIN samples USING (data_id)", v9];
  date = [MEMORY[0x277CBEAA8] date];
  transaction = [self transaction];
  protectedDatabase = [transaction protectedDatabase];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __93__HDDatabaseMigrator_Emet___recreateMedicalRecordTable_intermediateTables_creationSQL_error___block_invoke;
  v23[3] = &unk_2786140C0;
  v23[4] = self;
  v24 = date;
  v16 = date;
  v17 = [protectedDatabase executeSQL:v12 error:l bindingHandler:0 enumerationHandler:v23];

  if (v17 && ([self transaction], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "protectedDatabase"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "deleteDataEntitySubclassTable:intermediateTables:error:", v9, tableCopy, l), v19, v18, v20))
  {
    v21 = [self executeSQL:tablesCopy error:l];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

uint64_t __93__HDDatabaseMigrator_Emet___recreateMedicalRecordTable_intermediateTables_creationSQL_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x22AAC6CA0](a2, 0);
  v7 = MEMORY[0x22AAC6C80](a2, 1);
  v8 = MEMORY[0x22AAC6C80](a2, 2);
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = v8;
  if (v10)
  {
    v12 = v6;
    v36 = v7;
    v13 = v7;
    v14 = v9;
    v15 = [v10 transaction];
    v16 = [v15 protectedDatabase];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __120__HDDatabaseMigrator_Emet___insertDeletedObjectTombstoneWithUUID_provenanceIdentifier_deletionDate_insertedRowID_error___block_invoke;
    v44[3] = &unk_278614860;
    v17 = v12;
    v45 = v17;
    v18 = [v16 executeSQL:@"DELETE FROM objects where uuid = ?" error:a3 bindingHandler:v44 enumerationHandler:0];

    if (v18)
    {
      v19 = [v10 transaction];
      v20 = [v19 protectedDatabase];
      v37 = MEMORY[0x277D85DD0];
      v38 = 3221225472;
      v39 = __120__HDDatabaseMigrator_Emet___insertDeletedObjectTombstoneWithUUID_provenanceIdentifier_deletionDate_insertedRowID_error___block_invoke_2;
      v40 = &unk_278613528;
      v41 = v17;
      v42 = v13;
      v43 = v14;
      v21 = [v20 executeSQL:@"INSERT INTO objects (uuid error:provenance bindingHandler:type enumerationHandler:{creation_date) VALUES (?, ?, ?, ?);", a3, &v37, 0}];

      v22 = 0;
      if (v21)
      {
        v23 = [v10 transaction];
        [v23 protectedDatabase];
        v35 = v14;
        v24 = v13;
        v25 = v11;
        v26 = a3;
        v28 = v27 = v6;
        v22 = [v28 lastInsertRowID];
        v29 = v22;

        v6 = v27;
        a3 = v26;
        v11 = v25;
        v13 = v24;
        v14 = v35;
      }
    }

    else
    {
      v22 = 0;
      v21 = 0;
    }

    v30 = v22;
    if (v21)
    {
      v31 = [v10 transaction];
      v32 = [v31 protectedDatabase];
      v37 = MEMORY[0x277D85DD0];
      v38 = 3221225472;
      v39 = __119__HDDatabaseMigrator_Emet___insertDeletedSampleTombstoneWithUUID_provenanceIdentifier_dataTypeCode_deletionDate_error___block_invoke;
      v40 = &unk_278613038;
      v41 = v30;
      v42 = v11;
      v33 = [v32 executeSQL:@"INSERT INTO samples (data_id error:data_type bindingHandler:start_date enumerationHandler:{end_date) VALUES (?, ?, ?, ?);", a3, &v37, 0}];
    }

    else
    {
      v33 = 0;
    }

    v7 = v36;
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

uint64_t __119__HDDatabaseMigrator_Emet___insertDeletedSampleTombstoneWithUUID_provenanceIdentifier_dataTypeCode_deletionDate_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  v5 = *(a1 + 40);
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_null(a2, 3);

  return sqlite3_bind_null(a2, 4);
}

uint64_t __120__HDDatabaseMigrator_Emet___insertDeletedObjectTombstoneWithUUID_provenanceIdentifier_deletionDate_insertedRowID_error___block_invoke_2(void *a1, sqlite3_stmt *a2)
{
  v4 = a1[4];
  HDSQLiteBindFoundationValueToStatement();
  v5 = a1[5];
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_int64(a2, 3, 2);
  v6 = a1[6];

  return HDSQLiteBindFoundationValueToStatement();
}

- (void)sky_addUnprotectedMigrationSteps
{
  [(HDDatabaseMigrator *)self addMigrationTo:15000 function:_HDAddCloudSyncStoreShardColumns];
  [(HDDatabaseMigrator *)self addMigrationTo:15001 function:_HDAddCKRecordCacheTables];
  [(HDDatabaseMigrator *)self addMigrationTo:15002 function:_HDAddOnboardingCompletionsCountryCodeProvenanceColumn];
  [(HDDatabaseMigrator *)self addMigrationTo:15003 function:_HDAddAppSDKVersionFlagColumn];
  [(HDDatabaseMigrator *)self addMigrationTo:15004 function:_HDAddNeedsFetchColumnToCachedCKRecordZoneEntity foreignKeys:1];
  [(HDDatabaseMigrator *)self addMigrationTo:15005 function:_HDResetUnprotectedCKRecordCache];
  [(HDDatabaseMigrator *)self addMigrationTo:15006 function:_HDAddZoneStateColumnToCachedCKRecordZoneEntity foreignKeys:1];
  [(HDDatabaseMigrator *)self addMigrationTo:15007 function:_HDAddUserRecordIDToCKDatabaseCache foreignKeys:1];
  [(HDDatabaseMigrator *)self addMigrationTo:15500 function:_HDAddEpochManagementForCloudCache];
  [(HDDatabaseMigrator *)self addMigrationTo:15501 function:_HDAddWorkoutBuilderActivitiesTable];
  [(HDDatabaseMigrator *)self addMigrationTo:15502 function:_HDFixWorkoutBuilderActivitiesForeignKey];
  [(HDDatabaseMigrator *)self addMigrationTo:15503 function:_HDMakeWorkoutBuilderActivityEndDateNullable];

  [(HDDatabaseMigrator *)self addMigrationTo:15504 function:_HDResetUnprotectedInconsistentCloudCache];
}

- (void)sky_addProtectedMigrationSteps
{
  [(HDDatabaseMigrator *)self addMigrationTo:15000 function:_HDRemoveOtherCardioFitnessMedications];
  [(HDDatabaseMigrator *)self addMigrationTo:15001 function:_HDAddAdHocConceptTable];
  [(HDDatabaseMigrator *)self addMigrationTo:15002 function:_HDAddSecureCKRecordCacheTables];
  [(HDDatabaseMigrator *)self addMigrationTo:15003 function:_HDUpdateMedicalRecordsDiagnosticResultTableAddReferenceRangeStatus];
  [(HDDatabaseMigrator *)self addMigrationTo:15004 function:_HDRecreateCHRMedicationTables];
  [(HDDatabaseMigrator *)self addMigrationTo:15005 function:_HDAddSampleAggregateCacheEntitiesTables];
  [(HDDatabaseMigrator *)self addMigrationTo:15006 function:_HDUpdateAllergyRecordSamplesTable];
  [(HDDatabaseMigrator *)self addMigrationTo:15007 function:_HDAddUserDomainConceptEntities];
  [(HDDatabaseMigrator *)self addMigrationTo:15008 function:_HDAddSharingAuthorizationAndRelationshipTables];
  [(HDDatabaseMigrator *)self addMigrationTo:15009 function:_HDAddAnchorDateToCachedQueriesTable];
  [(HDDatabaseMigrator *)self addMigrationTo:15010 function:_HDAddSummarySharingTables];
  [(HDDatabaseMigrator *)self addMigrationTo:15011 function:_HDAddQuantitySeriesDataTable];
  [(HDDatabaseMigrator *)self addMigrationTo:15012 function:_HDAddLocationSeriesDataTable];
  [(HDDatabaseMigrator *)self addMigrationTo:15013 function:_HDAddSignedClinicalDataIssuerEntitiesTable];
  [(HDDatabaseMigrator *)self addMigrationTo:15014 function:_HDUpdateClinicalAccountsTableForIssuerBackingAndOsloStatus foreignKeys:1];
  [(HDDatabaseMigrator *)self addMigrationTo:15015 function:_HDAddOriginalSignedClinicalDataRecordEntitiesTable];
  [(HDDatabaseMigrator *)self addMigrationTo:15016 function:_HDAddSignedClinicalDataRecordEntitiesTable];
  [(HDDatabaseMigrator *)self addMigrationTo:15018 function:_HDUpdateMedicalRecordEntitiesTableForSCD];
  [(HDDatabaseMigrator *)self addMigrationTo:15019 function:_HDAddSessionColumnToObjectAuthorizationsTable];
  [(HDDatabaseMigrator *)self addMigrationTo:15020 function:_HDAddDateAcceptedToSummarySharingEntryTable];
  [(HDDatabaseMigrator *)self addMigrationTo:15021 function:_HDPurgeDeletedUserDomainConcepts];
  [(HDDatabaseMigrator *)self addMigrationTo:15022 function:_HDAddClinicalAccountColumnsForFetchFailureTracking];
  [(HDDatabaseMigrator *)self addMigrationTo:15023 function:_HDRemoveDeletedAndSyncedColumnFromSharedSummaryTransactionsTable foreignKeys:1];
  [(HDDatabaseMigrator *)self addMigrationTo:15024 function:_HDAddCategoryColumnToUserDomainConceptPropertyTable];
  [(HDDatabaseMigrator *)self addMigrationTo:15025 function:_HDAddDisplayNameAndRenameAuthorizationsTable];
  [(HDDatabaseMigrator *)self addMigrationTo:15026 function:_HDRenameSignedClinicalDataToVerifiableClinicalRecordsTable];
  [(HDDatabaseMigrator *)self addMigrationTo:15027 function:_HDAddUniquenessChecksumToOriginalSignedClinicalDataTable];
  [(HDDatabaseMigrator *)self addMigrationTo:15028 function:_HDUpdateRecordSamplesAddReferenceColumn];
  [(HDDatabaseMigrator *)self addMigrationTo:15029 function:_HDAddInvitationUUIDToSummarySharingEntryTable];
  [(HDDatabaseMigrator *)self addMigrationTo:15030 function:_HDAddRelevantDateAndDataValueToSignedClinicalDataTable];
  [(HDDatabaseMigrator *)self addMigrationTo:15031 function:_HDRemoveInvitationNotNullConstraintFromSummarySharingEntryTable];
  [(HDDatabaseMigrator *)self addMigrationTo:15032 function:_HDAddOwnerParticipantToSummarySharingEntryTable];
  [(HDDatabaseMigrator *)self addMigrationTo:15033 function:_HDAddNotificationStatusToSummarySharingEntryTable];
  [(HDDatabaseMigrator *)self addMigrationTo:15034 function:_HDResetProtectedCKRecordCache];
  [(HDDatabaseMigrator *)self addMigrationTo:15035 function:_HDAddDeletedAndLastModifiedDateColumnsToOriginalSignedClinicalDataTable];
  [(HDDatabaseMigrator *)self addMigrationTo:15036 function:_HDMigrateCycleTrackingOnboarding];
  [(HDDatabaseMigrator *)self addMigrationTo:15037 function:_HDResetProtectedCKRecordCache];
  [(HDDatabaseMigrator *)self addMigrationTo:15038 function:_HDDeleteMedicalRecordsDiagnosticResultTable];
  [(HDDatabaseMigrator *)self addMigrationTo:15039 function:_HDAddForeignKeyReferenceFromConceptIndexToObjects];
  [(HDDatabaseMigrator *)self addMigrationTo:15040 function:_HDClearResumableQueryCache];
  [(HDDatabaseMigrator *)self addMigrationTo:15041 function:_HDAddToBeDeletedColumnToSharingAuthorizationsTable];
  [(HDDatabaseMigrator *)self addMigrationTo:15042 function:_HDMakeOriginalRecordsRawContentNullable];
  [(HDDatabaseMigrator *)self addMigrationTo:15043 function:_HDAddUserWheelchairModeColumnToSummarySharingEntryTable];
  [(HDDatabaseMigrator *)self addMigrationTo:15200 function:_HDAddDeletedColumnToClinicalCredentials];
  [(HDDatabaseMigrator *)self addMigrationTo:15500 function:_HDAddWorkoutActivitiesTable];
  [(HDDatabaseMigrator *)self addMigrationTo:15502 function:_HDRenameWorkoutActivityForeignKey];
  [(HDDatabaseMigrator *)self addMigrationTo:15504 function:_HDFixWorkoutActivityForeignKey];
  [(HDDatabaseMigrator *)self addMigrationTo:15506 function:_HDSourceTypeToSignedClinicalDataTables];
  [(HDDatabaseMigrator *)self addMigrationTo:15507 function:_HDAddAttachmentAndReferencesEntities];
  [(HDDatabaseMigrator *)self addMigrationTo:15509 function:_HDAddVisionPrescriptionEntityTable];
  [(HDDatabaseMigrator *)self addMigrationTo:15510 function:_HDAddLotNumberToVaccinationRecordSamplesTable];

  [(HDDatabaseMigrator *)self addMigrationTo:15511 function:_HDResetProtectedInconsistentCloudCache];
}

- (id)butlerProtectedMigrationSteps
{
  array = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__HDDatabaseMigrator_Butler__butlerProtectedMigrationSteps__block_invoke;
  v6[3] = &unk_278615508;
  v6[4] = self;
  v4 = HDCreateMigrationStep(10037, 10100, v6);
  [array addObject:v4];

  return array;
}

- (void)dawn_addUnprotectedMigrationSteps
{
  [(HDDatabaseMigrator *)self addMigrationTo:17000 function:_HDAddDeviceContextTable];
  [(HDDatabaseMigrator *)self addMigrationTo:17001 function:_HDAddUnprotectedDeviceKeyValueStorageTable];
  [(HDDatabaseMigrator *)self addMigrationTo:17002 function:_HDAddIsMirroringToWorkoutSessionTable];
  [(HDDatabaseMigrator *)self addMigrationTo:17004 function:_HDMigrateCycleTrackingOvulationConfirmationNotificationStateKeyValueDomainCategory];
  [(HDDatabaseMigrator *)self addMigrationTo:17005 function:_HDMigrateCycleTrackingUnconfirmedDeviationNotificationStateKeyValueDomainCategory];
  [(HDDatabaseMigrator *)self addMigrationTo:17006 function:_HDMigrateCycleTrackingUpdatedFertileWindowNotificationFireDateKeyValueDomainCategory];
  [(HDDatabaseMigrator *)self addMigrationTo:17007 function:_HDAddChildSyncIdentityTable];
  [(HDDatabaseMigrator *)self addMigrationTo:17008 function:_HDResetAnchorsForAssociationsForNanoSync];
  [(HDDatabaseMigrator *)self addMigrationTo:17009 function:_HDAddNotificationInstructionsTable];
  [(HDDatabaseMigrator *)self addMigrationTo:17010 function:_HDAddTableForCloudSyncRequests];
  [(HDDatabaseMigrator *)self addMigrationTo:17011 function:_HDAddFirstActivityConfigToWorkoutSessionsTable];
  [(HDDatabaseMigrator *)self addMigrationTo:17012 function:_HDResetLocalDeviceSource];

  [(HDDatabaseMigrator *)self addMigrationTo:17200 function:_HDAddAdditionalColumnsToCloudSyncRequests];
}

- (void)dawn_addProtectedMigrationSteps
{
  [(HDDatabaseMigrator *)self addMigrationTo:17000 function:_HDAddLinkCollectionDataColumnToUDCTable];
  [(HDDatabaseMigrator *)self addMigrationTo:17001 function:_HDAddProtectedDeviceKeyValueStorageTable];
  [(HDDatabaseMigrator *)self addMigrationTo:17002 function:_HDAddWorkoutZonesSamplesTable];
  [(HDDatabaseMigrator *)self addMigrationTo:17003 function:_HDAddWorkoutZonesAssociationsTable];
  [(HDDatabaseMigrator *)self addMigrationTo:17004 function:_HDMigrateCycleTrackingKeyValueDomainCategory];
  [(HDDatabaseMigrator *)self addMigrationTo:17005 function:_HDAddHashedMedicationIdentifierToMedicationDoseEventTable];
  [(HDDatabaseMigrator *)self addMigrationTo:17006 function:_HDAddStateOfMindSamplesTables];
  [(HDDatabaseMigrator *)self addMigrationTo:17007 function:_HDAddScoredAssessmentSamplesTables];
  [(HDDatabaseMigrator *)self addMigrationTo:17008 function:_HDRemoveOnDeleteCascadeFromAssociationsTable];
  [(HDDatabaseMigrator *)self addMigrationTo:17009 function:_HDMigrateClinicalAccountSyncAnchors foreignKeys:1];
  [(HDDatabaseMigrator *)self addMigrationTo:17010 function:_HDMigrateClinicalGatewaySyncAnchors];
  [(HDDatabaseMigrator *)self addMigrationTo:17011 function:_HDMigrateOriginalResources foreignKeys:1];

  [(HDDatabaseMigrator *)self addMigrationTo:17012 function:_HDMigrateOriginalSignedClinicalDataRecords foreignKeys:1];
}

- (void)luck_addUnprotectedMigrationSteps
{
  [(HDDatabaseMigrator *)self addMigrationTo:19000 function:_HDAddSequenceEpochColumnsToCloudSyncStores];
  [(HDDatabaseMigrator *)self addMigrationTo:19001 function:_HDAddBluetoothIdentifierColumnToDevicesTable];
  [(HDDatabaseMigrator *)self addMigrationTo:19002 function:_HDUpdateSourcesToUseHiddenSourceOption];
  [(HDDatabaseMigrator *)self addMigrationTo:19003 function:_HDUpdateWorkoutSessionEntityFailureFromBoolToNSError];
  [(HDDatabaseMigrator *)self addMigrationTo:19004 function:_HDAddWorkoutAssociatedObjectSampleTypeColumn];
  [(HDDatabaseMigrator *)self addMigrationTo:19100 function:_HDRemoveSingleBloodPressureAuthorizations];
  [(HDDatabaseMigrator *)self addMigrationTo:19101 function:_HDResetMismatchedBloodPressureAuthorizations];

  [(HDDatabaseMigrator *)self addMigrationTo:19102 function:_HDResetECGNanoSyncAnchorsOnWatch];
}

- (void)luck_addProtectedMigrationSteps
{
  [(HDDatabaseMigrator *)self addMigrationTo:19000 function:_HDUpdateAssocationsForBehavior];
  [(HDDatabaseMigrator *)self addMigrationTo:19001 function:_HDAddConceptAuthorizationRecordsTable];
  [(HDDatabaseMigrator *)self addMigrationTo:19002 function:_HDAddDoseUnitStringColumnToDoseEventTable];
  [(HDDatabaseMigrator *)self addMigrationTo:19003 function:_HDMoveMHTablesOutOfFutureMigrations];
  [(HDDatabaseMigrator *)self addMigrationTo:19004 function:_HDAddBirthDateTable];
  [(HDDatabaseMigrator *)self addMigrationTo:19005 function:_HDAddHFSamplesTable];
  [(HDDatabaseMigrator *)self addMigrationTo:19006 function:_HDCreateClinicalHealthLinksTable];
  [(HDDatabaseMigrator *)self addMigrationTo:19007 function:_HDAddSRTable];
  [(HDDatabaseMigrator *)self addMigrationTo:19008 function:_HDAddHKHRSampleTables];
  [(HDDatabaseMigrator *)self addMigrationTo:19100 function:_HDAddHKHRSampleTablesPhase2];
  [(HDDatabaseMigrator *)self addMigrationTo:19101 function:_HDAddOHSTable];

  [(HDDatabaseMigrator *)self addMigrationTo:19102 function:_HDAddBQuantitySampleTable];
}

- (void)crystal_addUnprotectedMigrationSteps
{
  [(HDDatabaseMigrator *)self addMigrationTo:18000 function:_HDResetAllReceivedSyncAnchorsOnVisionDevices];
  [(HDDatabaseMigrator *)self addMigrationTo:18001 function:_HDAddClientOptionsToAlarmEventsTable];
  [(HDDatabaseMigrator *)self addMigrationTo:18003 function:_HDAddLastAssociationAnchorToSubscriptions];
  [(HDDatabaseMigrator *)self addMigrationTo:18004 function:_HDResetReceivedNanoSyncAnchorsOnWatchForActivityCache];
  [(HDDatabaseMigrator *)self addMigrationTo:18005 function:_HDResetReceivedNanoSyncAnchorsOnWatch];
  [(HDDatabaseMigrator *)self addMigrationTo:18006 function:_HDUpdateSDKVersionTokenFieldOnSubscriptionsTable];
  [(HDDatabaseMigrator *)self addMigrationTo:18200 function:_HDAddPendingFullSyncColumnToCloudSyncStoresTable];
  [(HDDatabaseMigrator *)self addMigrationTo:18201 function:_HDResetAnchorsForAssociationsForNanoSync_0];

  [(HDDatabaseMigrator *)self addMigrationTo:18400 function:_HDAddExcludedSyncIdentitiesColumnToCloudSyncStores];
}

- (void)crystal_addProtectedMigrationSteps
{
  [(HDDatabaseMigrator *)self addMigrationTo:18000 function:_HDAddRPEFieldsToAssociationsTable];
  [(HDDatabaseMigrator *)self addMigrationTo:18001 function:_HDAddPauseRingsScheduleTable];
  [(HDDatabaseMigrator *)self addMigrationTo:18002 function:_HDAddPauseColumnToActivityCache];
  [(HDDatabaseMigrator *)self addMigrationTo:18003 function:_HDAddActivityGoalSchedulesTable];
  [(HDDatabaseMigrator *)self addMigrationTo:18005 function:_HDUpdateTypeAndCreationDateFieldOnAssociationsTableForWorkoutEffortChildren];

  [(HDDatabaseMigrator *)self addMigrationTo:18006 function:_HDUpdateTypeAndCreationDateFieldOnAssociationsTableForNonWorkoutEffortChildren];
}

- (id)cinarUnprotectedMigrationSteps
{
  array = [MEMORY[0x277CBEB18] array];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__HDDatabaseMigrator_Cinar__cinarUnprotectedMigrationSteps__block_invoke;
  v12[3] = &unk_278615508;
  v12[4] = self;
  v4 = [HDDatabaseMigrationStep migrationStepWithForeignKeysDisabledFrom:11013 to:11200 handler:v12];
  [array addObject:v4];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__HDDatabaseMigrator_Cinar__cinarUnprotectedMigrationSteps__block_invoke_2;
  v11[3] = &unk_278615508;
  v11[4] = self;
  v5 = [HDDatabaseMigrationStep migrationStepFrom:11200 to:11201 handler:v11];
  [array addObject:v5];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__HDDatabaseMigrator_Cinar__cinarUnprotectedMigrationSteps__block_invoke_3;
  v10[3] = &unk_278615508;
  v10[4] = self;
  v6 = [HDDatabaseMigrationStep migrationStepFrom:11201 to:11202 handler:v10];
  [array addObject:v6];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__HDDatabaseMigrator_Cinar__cinarUnprotectedMigrationSteps__block_invoke_4;
  v9[3] = &unk_278615508;
  v9[4] = self;
  v7 = [HDDatabaseMigrationStep migrationStepFrom:11202 to:11203 handler:v9];
  [array addObject:v7];

  return array;
}

uint64_t __59__HDDatabaseMigrator_Cinar__cinarUnprotectedMigrationSteps__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v19 addObject:@"ALTER TABLE sources RENAME TO sources_old;"];
    [v19 addObject:{@"CREATE TABLE IF NOT EXISTS sources (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, uuid BLOB UNIQUE NOT NULL, bundle_id TEXT NOT NULL, name TEXT NOT NULL, source_options INTEGER NOT NULL, local_device INTEGER NOT NULL, product_type TEXT NOT NULL, deleted INTEGER NOT NULL, mod_date REAL NOT NULL, provenance INTEGER NOT NULL, sync_anchor INTEGER NOT NULL UNIQUE, sync_primary INTEGER NOT NULL);"}];
    [v19 addObject:{@"INSERT INTO sources SELECT ROWID, uuid, bundle_id, name, source_options, local_device, product_type, deleted, mod_date, provenance, sync_anchor, 0 FROM sources_old;"}];
    [v19 addObject:@"DROP TABLE sources_old;"];
    [v19 addObject:@"UPDATE sources SET sync_primary = 1 WHERE deleted = 1;"];
    if ([v3 executeSQLStatements:v19 error:a3])
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v6 = [v3 transaction];
      v7 = [v6 unprotectedDatabase];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __75__HDDatabaseMigrator_Cinar___cinar_addSyncPrimaryColumnToSourcesWithError___block_invoke;
      v26[3] = &unk_2786247F0;
      v18 = v5;
      v27 = v18;
      v8 = [v7 executeSQL:@"SELECT ROWID error:bundle_id bindingHandler:(provenance <> 0) as is_remote FROM sources WHERE deleted = 0 ORDER BY bundle_id enumerationHandler:{is_remote, ROWID;", a3, 0, v26}];

      if (v8)
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v9 = [v18 allValues];
        v10 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
        if (v10)
        {
          v11 = *v23;
          v20 = 1;
LABEL_6:
          v12 = 0;
          while (1)
          {
            if (*v23 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v22 + 1) + 8 * v12);
            v14 = [v3 transaction];
            v15 = [v14 unprotectedDatabase];
            v21[0] = MEMORY[0x277D85DD0];
            v21[1] = 3221225472;
            v21[2] = __75__HDDatabaseMigrator_Cinar___cinar_addSyncPrimaryColumnToSourcesWithError___block_invoke_2;
            v21[3] = &unk_278615580;
            v21[4] = v13;
            LOBYTE(v13) = [v15 executeSQL:@"UPDATE sources SET sync_primary = 1 WHERE ROWID = ?;" error:a3 bindingHandler:v21 enumerationHandler:0];

            if ((v13 & 1) == 0)
            {
              break;
            }

            if (v10 == ++v12)
            {
              v10 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
              if (v10)
              {
                goto LABEL_6;
              }

              v20 = 0;
              break;
            }
          }
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 1;
      }
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v20;
}

void *__59__HDDatabaseMigrator_Cinar__cinarUnprotectedMigrationSteps__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQL:@"UPDATE sources SET bundle_id = '' error:{name = '', product_type = '', source_options = 0 WHERE deleted = 1;", a3}] ^ 1);
  }

  return result;
}

uint64_t __59__HDDatabaseMigrator_Cinar__cinarUnprotectedMigrationSteps__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v5 addObject:@"DROP INDEX IF EXISTS sources_bundle_id_uuid"];
  [v5 addObject:{@"CREATE INDEX sources_bundle_id_uuid ON sources (bundle_id, uuid)"}];
  [v5 addObject:@"DROP INDEX IF EXISTS datatype_source_order_data_type"];
  [v5 addObject:{@"CREATE INDEX datatype_source_order_data_type ON datatype_source_order (data_type, ROWID)"}];
  [v5 addObject:@"ALTER TABLE source_devices RENAME TO source_devices_old;"];
  [v5 addObject:{@"CREATE TABLE source_devices (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, manufacturer TEXT NOT NULL, model TEXT NOT NULL, hardware TEXT NOT NULL, firmware TEXT NOT NULL, software TEXT NOT NULL, localIdentifier TEXT NOT NULL, FDAUDI TEXT NOT NULL, creation_date REAL NOT NULL, sync_provenance INTEGER NOT NULL, uuid BLOB UNIQUE NOT NULL, UNIQUE(name, manufacturer, model, hardware, firmware, software, localIdentifier, FDAUDI, sync_provenance, uuid));"}];
  [v5 addObject:{@"INSERT OR REPLACE INTO source_devices (ROWID, name, manufacturer, model, hardware, firmware, software, localIdentifier, FDAUDI, creation_date, sync_provenance, uuid) SELECT * FROM source_devices_old;"}];
  [v5 addObject:@"DROP TABLE source_devices_old;"];
  v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;

  return v6;
}

uint64_t __59__HDDatabaseMigrator_Cinar__cinarUnprotectedMigrationSteps__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = [v3 transaction];
    v6 = [v5 unprotectedDatabase];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __82__HDDatabaseMigrator_Cinar___cinar_convertLocalDevicePlaceholderSourcesWithError___block_invoke;
    v28[3] = &unk_2786247F0;
    v20 = v18;
    v29 = v20;
    v7 = [v6 executeSQL:@"SELECT rowid FROM sources WHERE bundle_id LIKE 'com.apple.private.health.localdevice'" error:a3 bindingHandler:0 enumerationHandler:v28];

    if (v7)
    {
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE sources SET bundle_id = 'com.apple.health.' || %@(uuid), sync_anchor = COALESCE((SELECT MAX(sync_anchor) + 1 FROM sources), 1) WHERE rowid = ?", *MEMORY[0x277D10A60]];
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      obj = v20;
      v8 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
      if (v8)
      {
        v9 = *v25;
        v19 = 1;
LABEL_5:
        v10 = 0;
        while (1)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v24 + 1) + 8 * v10);
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 3221225472;
          aBlock[2] = __82__HDDatabaseMigrator_Cinar___cinar_convertLocalDevicePlaceholderSourcesWithError___block_invoke_2;
          aBlock[3] = &unk_278615580;
          aBlock[4] = v11;
          v12 = _Block_copy(aBlock);
          v13 = [v3 transaction];
          v14 = [v13 unprotectedDatabase];
          v15 = [v14 executeSQL:v22 error:a3 bindingHandler:v12 enumerationHandler:0];

          if ((v15 & 1) == 0)
          {
            break;
          }

          if (v8 == ++v10)
          {
            v8 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
            if (v8)
            {
              goto LABEL_5;
            }

            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
        v19 = 0;
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t __75__HDDatabaseMigrator_Cinar___cinar_addSyncPrimaryColumnToSourcesWithError___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = HDSQLiteColumnAsInt64();
  v5 = MEMORY[0x22AAC6C90](a2, 1);
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:v4];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v5];
  }

  return 1;
}

uint64_t __75__HDDatabaseMigrator_Cinar___cinar_addSyncPrimaryColumnToSourcesWithError___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) longLongValue];

  return sqlite3_bind_int64(a2, 1, v3);
}

uint64_t __82__HDDatabaseMigrator_Cinar___cinar_convertLocalDevicePlaceholderSourcesWithError___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x22AAC6C80](a2, 0);
  [v2 addObject:v3];

  return 1;
}

uint64_t __82__HDDatabaseMigrator_Cinar___cinar_convertLocalDevicePlaceholderSourcesWithError___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) longLongValue];

  return sqlite3_bind_int64(a2, 1, v3);
}

- (id)cinarProtectedMigrationSteps
{
  array = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__HDDatabaseMigrator_Cinar__cinarProtectedMigrationSteps__block_invoke;
  v6[3] = &unk_278615508;
  v6[4] = self;
  v4 = [HDDatabaseMigrationStep migrationStepFrom:11051 to:11200 handler:v6];
  [array addObject:v4];

  return array;
}

uint64_t __57__HDDatabaseMigrator_Cinar__cinarProtectedMigrationSteps__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v5 addObject:@"ALTER TABLE object_authorizations RENAME TO object_authorizations_old;"];
  [v5 addObject:{@"CREATE TABLE IF NOT EXISTS object_authorizations (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, object BLOB NOT NULL REFERENCES objects (uuid) ON DELETE CASCADE, source BLOB NOT NULL, status INTEGER NOT NULL, sync_provenance INTEGER NOT NULL, modification_date REAL NOT NULL, UNIQUE(object, source, sync_provenance));"}];
  [v5 addObject:{@"INSERT OR REPLACE INTO object_authorizations (ROWID, object, source, status, sync_provenance, modification_date) SELECT * FROM object_authorizations_old ORDER BY ROWID;"}];
  [v5 addObject:@"DROP TABLE object_authorizations_old"];
  [v5 addObject:@"CREATE INDEX IF NOT EXISTS activity_caches_cache_index ON activity_caches (cache_index);"];
  v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;

  return v6;
}

- (void)sydney_addUnprotectedMigrationSteps
{
  [(HDDatabaseMigrator *)self addMigrationTo:16000 function:_HDAddVersionFieldsToSyncAnchorEntity];
  [(HDDatabaseMigrator *)self addMigrationTo:16001 function:_HDResetWorkoutSyncAnchors];
  [(HDDatabaseMigrator *)self addMigrationTo:16002 function:_HDChangeForeignKeyOnBuilderStatisticsTable];
  [(HDDatabaseMigrator *)self addMigrationTo:16003 function:_HDAddSyncIdentityTable];
  [(HDDatabaseMigrator *)self addMigrationTo:16004 function:_HDAddLogicalSourceEntity];
  [(HDDatabaseMigrator *)self addMigrationTo:16005 function:_HDAddWorkoutAssociatedObjectTimestampColumn];
  [(HDDatabaseMigrator *)self addMigrationTo:16006 function:_HDAddLogicalSourceOrderEntity];
  [(HDDatabaseMigrator *)self addMigrationTo:16007 function:_HDAddMultiActivityFieldsToWorkoutSessionsTable];
  [(HDDatabaseMigrator *)self addMigrationTo:16008 function:_HDValidatedAnchorsToSyncAnchorEntityTable];
  [(HDDatabaseMigrator *)self addMigrationTo:16009 function:_HDAddRequestedDatesToWorkoutSessionsTable];
  [(HDDatabaseMigrator *)self addMigrationTo:16010 function:_HDAddUnprotectedWorkoutOwnerIndices];
  [(HDDatabaseMigrator *)self addMigrationTo:16011 function:_HDRefactorSourcesToAddLogicalSourceID foreignKeys:1];
  [(HDDatabaseMigrator *)self addMigrationTo:16012 function:_HDSwapDataTypeSourceOrderToLogicalSourceOrder];
  [(HDDatabaseMigrator *)self addMigrationTo:16013 function:_HDAddSourceIndices];
  [(HDDatabaseMigrator *)self addMigrationTo:16014 function:_HDAddLegacySyncIdentityToSyncIdentityTable];
  [(HDDatabaseMigrator *)self addMigrationTo:16015 function:_HDSyncIdentityUpdateForDeviceEntity];
  [(HDDatabaseMigrator *)self addMigrationTo:16016 function:_HDSyncIdentityUpdateForSourceEntity foreignKeys:1];
  [(HDDatabaseMigrator *)self addMigrationTo:16017 function:_IncrementSourceOrderSyncAnchors];
  [(HDDatabaseMigrator *)self addMigrationTo:16200 function:_HDSyncIdentityUpdateForLogicalSourceOrderEntity];
  [(HDDatabaseMigrator *)self addMigrationTo:16201 function:_HDSyncIdentityUpdateForAuthorizationEntity];
  [(HDDatabaseMigrator *)self addMigrationTo:16202 function:_HDSyncIdentityUpdateForOnboardingCompletionEntity];
  [(HDDatabaseMigrator *)self addMigrationTo:16203 function:_HDSyncIdentityUpdateForUnProtectedKeyValueEntity];
  [(HDDatabaseMigrator *)self addMigrationTo:16204 function:_HDResetAllReceivedSyncAnchors];
  [(HDDatabaseMigrator *)self addMigrationTo:16400 function:_HDAddSyncIdentityToCloudSyncStoreEntity];

  [(HDDatabaseMigrator *)self addMigrationTo:16500 function:_HDResetAnchorsForAssociationsForNanoSync_1];
}

- (void)sydney_addProtectedMigrationSteps
{
  [(HDDatabaseMigrator *)self addMigrationTo:16000 function:_HDAddAttachmentAndReferencesEntities_0];
  [(HDDatabaseMigrator *)self addMigrationTo:16001 function:_HDAddVisionPrescriptionEntityTable_0];
  [(HDDatabaseMigrator *)self addMigrationTo:16002 function:_HDAddWorkoutStatisticsTable];
  [(HDDatabaseMigrator *)self addMigrationTo:16003 function:_HDCopyWorkoutTotalsToPrimaryActivity];
  [(HDDatabaseMigrator *)self addMigrationTo:16004 function:_HDAddUDCLocalizedStringTable];
  [(HDDatabaseMigrator *)self addMigrationTo:16005 function:_HDModifyConceptIndexTableOntologyVersionColumn];
  [(HDDatabaseMigrator *)self addMigrationTo:16006 function:_HDAddSyncProvenanceToCredentialsTable foreignKeys:1];
  [(HDDatabaseMigrator *)self addMigrationTo:16007 function:_HDAddClinicalAccountEventsTable];
  [(HDDatabaseMigrator *)self addMigrationTo:16008 function:_HDAddMedicationDoseEventSamplesTable];
  [(HDDatabaseMigrator *)self addMigrationTo:16009 function:_HDFixWorkoutStatisticsForeignKey];
  [(HDDatabaseMigrator *)self addMigrationTo:16010 function:_HDAddMedicationUUIDToMedicationDoseEventSamplesTable];
  [(HDDatabaseMigrator *)self addMigrationTo:16011 function:_HDAddAttachmentMetadata];
  [(HDDatabaseMigrator *)self addMigrationTo:16012 function:_HDAddAttachmentEncryptionKeyColumn];
  [(HDDatabaseMigrator *)self addMigrationTo:16013 function:_HDAddDisplaySubtitleColumn];
  [(HDDatabaseMigrator *)self addMigrationTo:16014 function:_HDAddNotNullConstraintsToAttachmentsTable];
  [(HDDatabaseMigrator *)self addMigrationTo:16015 function:_HDAddProtectedWorkoutOwnerIndices];
  [(HDDatabaseMigrator *)self addMigrationTo:16016 function:_HDFixLapLengthColumnInActivitiesTable];
  [(HDDatabaseMigrator *)self addMigrationTo:16017 function:_HDDeleteHearingReductionSamples];
  [(HDDatabaseMigrator *)self addMigrationTo:16018 function:_HDMigrateBloodPressureIdentifierAuthorizationsTable];
  [(HDDatabaseMigrator *)self addMigrationTo:16019 function:_HDAddUserDomainConceptEducationContentTable];
  [(HDDatabaseMigrator *)self addMigrationTo:16020 function:_HDAddVersionColumnToActivityCacheTable];
  [(HDDatabaseMigrator *)self addMigrationTo:16021 function:_HDUpdateClinicalRecordEntities];
  [(HDDatabaseMigrator *)self addMigrationTo:16022 function:_HDRecreateSeriesDataTables];
  [(HDDatabaseMigrator *)self addMigrationTo:16024 function:_HDUpdateGlassesTypeToGlassesDecription];
  [(HDDatabaseMigrator *)self addMigrationTo:16026 function:_HDUpdateMedicalRecordsDiagnosticReportTable];
  [(HDDatabaseMigrator *)self addMigrationTo:16028 function:_HDUpdateMissingDurationInWorkoutActivitiesTable];
  [(HDDatabaseMigrator *)self addMigrationTo:16029 function:_HDUpdateMedicalRecordEntitiesTableWithOrigin];
  [(HDDatabaseMigrator *)self addMigrationTo:16030 function:_HDSanitizeHFDRebuildState];
  [(HDDatabaseMigrator *)self addMigrationTo:16031 function:_HDMigrateHFDToSQLite];
  [(HDDatabaseMigrator *)self addMigrationTo:16032 function:_HDAddSourceURLIndexToOriginalFHIRResourcesTable];
  [(HDDatabaseMigrator *)self addMigrationTo:16033 function:_HDDeleteRunningStrideLengthSamples];
  [(HDDatabaseMigrator *)self addMigrationTo:16034 function:_HDAddUserDomainConceptNamedQuantityTable];
  [(HDDatabaseMigrator *)self addMigrationTo:16035 function:_HDDeleteDeprecated261Samples];
  [(HDDatabaseMigrator *)self addMigrationTo:16036 function:_HDDeleteDeprecated261WorkoutStatistics];
  [(HDDatabaseMigrator *)self addMigrationTo:16037 function:_HDDeleteArchivalHFD];
  [(HDDatabaseMigrator *)self addMigrationTo:16038 function:_HDMoveAdHocConceptIntoCorrectIDNamespace];
  [(HDDatabaseMigrator *)self addMigrationTo:16039 function:_HDForceMedicalRecordReextractionToRelinkUDCs];
  [(HDDatabaseMigrator *)self addMigrationTo:16040 function:_HDFixStatisticsAndRemoveUnusedColumnsFromWorkoutsTable foreignKeys:1];
  [(HDDatabaseMigrator *)self addMigrationTo:16041 function:_HDMoveGlassesDescriptionToMetadata];
  [(HDDatabaseMigrator *)self addMigrationTo:16042 function:_HDDropDeprecatedUDCPropertyTypesFromPropertyTable];
  [(HDDatabaseMigrator *)self addMigrationTo:16044 function:_HDAddSchemaVersionToAttachmentReferences];
  [(HDDatabaseMigrator *)self addMigrationTo:16045 function:_HDMigrateUDCPreferredNameProperties];
  [(HDDatabaseMigrator *)self addMigrationTo:16200 function:_HDAddCHRAccountsDeletionReason];
  [(HDDatabaseMigrator *)self addMigrationTo:16201 function:_HDSyncIdentityUpdateForSignedClinicalDataIssuersEntity foreignKeys:1];
  [(HDDatabaseMigrator *)self addMigrationTo:16202 function:_HDSyncIdentityUpdateForOriginalSignedClinicalDataRecordEntity foreignKeys:1];
  [(HDDatabaseMigrator *)self addMigrationTo:16203 function:_HDSyncIdentityUpdateForUserDomainConceptEntity foreignKeys:1];
  [(HDDatabaseMigrator *)self addMigrationTo:16204 function:_HDSyncIdentityUpdateForOriginalFHIRResourceEntity foreignKeys:1];
  [(HDDatabaseMigrator *)self addMigrationTo:16205 function:_HDSyncIdentityUpdateForFHIRCredentialEntity foreignKeys:1];
  [(HDDatabaseMigrator *)self addMigrationTo:16206 function:_HDSyncIdentityUpdateForClinicalGatewayEntity foreignKeys:1];
  [(HDDatabaseMigrator *)self addMigrationTo:16207 function:_HDSyncIdentityUpdateForClinicalDeletedAccountEntity];
  [(HDDatabaseMigrator *)self addMigrationTo:16208 function:_HDSyncIdentityUpdateForClinicalAccountEntity foreignKeys:1];
  [(HDDatabaseMigrator *)self addMigrationTo:16209 function:_HDSyncIdentityUpdateForSharingRelationshipEntity];
  [(HDDatabaseMigrator *)self addMigrationTo:16210 function:_HDSyncIdentityUpdateForAssociationsAndPendingAssociationsEntities foreignKeys:1];
  [(HDDatabaseMigrator *)self addMigrationTo:16211 function:_HDSyncIdentityUpdateForDataProvenanceEntity foreignKeys:1];
  [(HDDatabaseMigrator *)self addMigrationTo:16212 function:_HDSyncIdentityUpdateForContributorEntity];
  [(HDDatabaseMigrator *)self addMigrationTo:16213 function:_HDSyncIdentityUpdateForProtectedKeyValueEntity];
  [(HDDatabaseMigrator *)self addMigrationTo:16214 function:_HDSyncIdentityUpdateForObjectAuthorizationEntity foreignKeys:1];
  [(HDDatabaseMigrator *)self addMigrationTo:16400 function:_HDAddVerifiableDataToVisionPrescriptionEntity];
  [(HDDatabaseMigrator *)self addMigrationTo:16401 function:_HDAddMedicalDownloadableAttachmentsTable];
  [(HDDatabaseMigrator *)self addMigrationTo:16402 function:_HDAddClinicalNoteRecordSamplesTable];
  [(HDDatabaseMigrator *)self addMigrationTo:16403 function:_HDAddUniquenessChecksumToOriginalFHIRResourceEntity foreignKeys:1];
  [(HDDatabaseMigrator *)self addMigrationTo:16404 function:_HDAdvanceUDCSyncAnchors];

  [(HDDatabaseMigrator *)self addMigrationTo:16405 function:_HDAddPKCEVerifierToAuthSession];
}

- (void)future_addUnprotectedMigrationSteps
{
  [(HDDatabaseMigrator *)self addMigrationTo:100000 function:_HDAddProfileAuthorizationTable];

  [(HDDatabaseMigrator *)self addMigrationTo:100003 function:_HDAddWorkoutBuilderZonesTable];
}

- (void)future_addProtectedMigrationSteps
{
  [(HDDatabaseMigrator *)self addMigrationTo:100001 function:_HDAddCarePlanAndGoalRecordSamplesTables];
  [(HDDatabaseMigrator *)self addMigrationTo:100002 function:_HDMovedCoverageOutOfFuture];
  [(HDDatabaseMigrator *)self addMigrationTo:100003 function:_HDAddDeviceRecordSamplesTable_0];
  [(HDDatabaseMigrator *)self addMigrationTo:100017 function:_HDAddEncounterRecordTable];
  [(HDDatabaseMigrator *)self addMigrationTo:100021 function:_HDAddWorkoutZonesTable];

  [(HDDatabaseMigrator *)self addMigrationTo:100030 function:_HDCreateActionPlansTable];
}

- (HDDatabaseMigrator)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = NSStringFromSelector(a2);
  [v3 raise:*MEMORY[0x277CBE660] format:{@"The -%@ method is not available on %@", v4, objc_opt_class()}];

  return 0;
}

- (HDDatabaseMigrator)initWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  if (!transactionCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabaseMigrator.mm" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"transaction != nil"}];
  }

  v13.receiver = self;
  v13.super_class = HDDatabaseMigrator;
  v7 = [(HDDatabaseMigrator *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_transaction, transaction);
    v9 = [[HDDatabaseSchemaManager alloc] initWithTransaction:v8->_transaction];
    schemaManager = v8->_schemaManager;
    v8->_schemaManager = v9;
  }

  return v8;
}

- (void)addPrimaryMigrationSteps
{
  if ([(HDDatabaseMigrationTransaction *)self->_transaction isProtectedMigration])
  {
    v32 = objc_opt_new();
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __53__HDDatabaseMigrator__primaryProtectedMigrationSteps__block_invoke;
    v36 = &unk_278615508;
    selfCopy2 = self;
    v3 = [HDDatabaseMigrationStep migrationStepFrom:8041 to:8046 handler:&v33];
    [v32 addObject:v3];

    v4 = [HDDatabaseMigrationStep migrationStepFrom:8046 to:8047 handler:&__block_literal_global_213];
    [v32 addObject:v4];

    okemoZursProtectedMigrationSteps = [(HDDatabaseMigrator *)self okemoZursProtectedMigrationSteps];
    [v32 addObjectsFromArray:okemoZursProtectedMigrationSteps];

    monarchProtectedMigrationSteps = [(HDDatabaseMigrator *)self monarchProtectedMigrationSteps];
    [v32 addObjectsFromArray:monarchProtectedMigrationSteps];

    boulderProtectedMigrationSteps = [(HDDatabaseMigrator *)self boulderProtectedMigrationSteps];
    [v32 addObjectsFromArray:boulderProtectedMigrationSteps];

    eagleProtectedMigrationSteps = [(HDDatabaseMigrator *)self eagleProtectedMigrationSteps];
    [v32 addObjectsFromArray:eagleProtectedMigrationSteps];

    whitetailProtectedMigrationSteps = [(HDDatabaseMigrator *)self whitetailProtectedMigrationSteps];
    [v32 addObjectsFromArray:whitetailProtectedMigrationSteps];

    butlerProtectedMigrationSteps = [(HDDatabaseMigrator *)self butlerProtectedMigrationSteps];
    [v32 addObjectsFromArray:butlerProtectedMigrationSteps];

    corryProtectedMigrationSteps = [(HDDatabaseMigrator *)self corryProtectedMigrationSteps];
    [v32 addObjectsFromArray:corryProtectedMigrationSteps];

    erieProtectedMigrationSteps = [(HDDatabaseMigrator *)self erieProtectedMigrationSteps];
    [v32 addObjectsFromArray:erieProtectedMigrationSteps];

    tigrisProtectedMigrationSteps = [(HDDatabaseMigrator *)self tigrisProtectedMigrationSteps];
    [v32 addObjectsFromArray:tigrisProtectedMigrationSteps];

    cinarProtectedMigrationSteps = [(HDDatabaseMigrator *)self cinarProtectedMigrationSteps];
    [v32 addObjectsFromArray:cinarProtectedMigrationSteps];

    emetProtectedMigrationSteps = [(HDDatabaseMigrator *)self emetProtectedMigrationSteps];
    [v32 addObjectsFromArray:emetProtectedMigrationSteps];

    [(HDDatabaseMigrator *)self addMigrationSteps:v32];
    [(HDDatabaseMigrator *)self peace_addProtectedMigrationSteps];
    [(HDDatabaseMigrator *)self yukon_addProtectedMigrationSteps];
    [(HDDatabaseMigrator *)self azul_addProtectedMigrationSteps];
    [(HDDatabaseMigrator *)self sky_addProtectedMigrationSteps];
    [(HDDatabaseMigrator *)self sydney_addProtectedMigrationSteps];
    [(HDDatabaseMigrator *)self dawn_addProtectedMigrationSteps];
    [(HDDatabaseMigrator *)self crystal_addProtectedMigrationSteps];
    [(HDDatabaseMigrator *)self luck_addProtectedMigrationSteps];
    behavior = [(HDDatabaseMigrator *)self behavior];
    futureMigrationsEnabled = [behavior futureMigrationsEnabled];

    if (futureMigrationsEnabled)
    {
      [(HDDatabaseMigrator *)self future_addProtectedMigrationSteps];
    }
  }

  else
  {
    v32 = objc_opt_new();
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __55__HDDatabaseMigrator__primaryUnprotectedMigrationSteps__block_invoke;
    v36 = &unk_278615508;
    selfCopy2 = self;
    v18 = [HDDatabaseMigrationStep migrationStepFrom:8041 to:8044 handler:&v33];
    [v32 addObject:v18];

    okemoZursUnprotectedMigrationSteps = [(HDDatabaseMigrator *)self okemoZursUnprotectedMigrationSteps];
    [v32 addObjectsFromArray:okemoZursUnprotectedMigrationSteps];

    monarchUnprotectedMigrationSteps = [(HDDatabaseMigrator *)self monarchUnprotectedMigrationSteps];
    [v32 addObjectsFromArray:monarchUnprotectedMigrationSteps];

    boulderUnprotectedMigrationSteps = [(HDDatabaseMigrator *)self boulderUnprotectedMigrationSteps];
    [v32 addObjectsFromArray:boulderUnprotectedMigrationSteps];

    eagleUnprotectedMigrationSteps = [(HDDatabaseMigrator *)self eagleUnprotectedMigrationSteps];
    [v32 addObjectsFromArray:eagleUnprotectedMigrationSteps];

    whitetailUnprotectedMigrationSteps = [(HDDatabaseMigrator *)self whitetailUnprotectedMigrationSteps];
    [v32 addObjectsFromArray:whitetailUnprotectedMigrationSteps];

    butlerUnprotectedMigrationSteps = [(HDDatabaseMigrator *)self butlerUnprotectedMigrationSteps];
    [v32 addObjectsFromArray:butlerUnprotectedMigrationSteps];

    corryUnprotectedMigrationSteps = [(HDDatabaseMigrator *)self corryUnprotectedMigrationSteps];
    [v32 addObjectsFromArray:corryUnprotectedMigrationSteps];

    erieUnprotectedMigrationSteps = [(HDDatabaseMigrator *)self erieUnprotectedMigrationSteps];
    [v32 addObjectsFromArray:erieUnprotectedMigrationSteps];

    tigrisUnprotectedMigrationSteps = [(HDDatabaseMigrator *)self tigrisUnprotectedMigrationSteps];
    [v32 addObjectsFromArray:tigrisUnprotectedMigrationSteps];

    cinarUnprotectedMigrationSteps = [(HDDatabaseMigrator *)self cinarUnprotectedMigrationSteps];
    [v32 addObjectsFromArray:cinarUnprotectedMigrationSteps];

    emetUnprotectedMigrationSteps = [(HDDatabaseMigrator *)self emetUnprotectedMigrationSteps];
    [v32 addObjectsFromArray:emetUnprotectedMigrationSteps];

    [(HDDatabaseMigrator *)self addMigrationSteps:v32];
    [(HDDatabaseMigrator *)self peace_addUnprotectedMigrationSteps];
    [(HDDatabaseMigrator *)self yukon_addUnprotectedMigrationSteps];
    [(HDDatabaseMigrator *)self azul_addUnprotectedMigrationSteps];
    [(HDDatabaseMigrator *)self sky_addUnprotectedMigrationSteps];
    [(HDDatabaseMigrator *)self sydney_addUnprotectedMigrationSteps];
    [(HDDatabaseMigrator *)self dawn_addUnprotectedMigrationSteps];
    [(HDDatabaseMigrator *)self crystal_addUnprotectedMigrationSteps];
    [(HDDatabaseMigrator *)self luck_addUnprotectedMigrationSteps];
    behavior2 = [(HDDatabaseMigrator *)self behavior];
    futureMigrationsEnabled2 = [behavior2 futureMigrationsEnabled];

    if (futureMigrationsEnabled2)
    {
      [(HDDatabaseMigrator *)self future_addUnprotectedMigrationSteps];
    }
  }
}

- (void)addMigrationTo:(int64_t)to foreignKeys:(int64_t)keys handler:(id)handler
{
  v12[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v9 = [[HDDatabaseMigrationStep alloc] initForSchema:0 toVersion:to requiringVersion:-1 foreignKeys:keys handler:handlerCopy];
  v12[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [(HDDatabaseMigrator *)self addMigrationSteps:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)addMigrationTo:(int64_t)to function:(void *)function
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__HDDatabaseMigrator_addMigrationTo_function___block_invoke;
  v4[3] = &__block_descriptor_40_e70_q40__0__HDDatabaseMigrator_8__HDDatabaseMigrationTransaction_16q24__32l;
  v4[4] = function;
  [(HDDatabaseMigrator *)self addMigrationTo:to foreignKeys:0 handler:v4];
}

- (void)addMigrationTo:(int64_t)to function:(void *)function foreignKeys:(int64_t)keys
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__HDDatabaseMigrator_addMigrationTo_function_foreignKeys___block_invoke;
  v5[3] = &__block_descriptor_40_e70_q40__0__HDDatabaseMigrator_8__HDDatabaseMigrationTransaction_16q24__32l;
  v5[4] = function;
  [(HDDatabaseMigrator *)self addMigrationTo:to foreignKeys:keys handler:v5];
}

- (void)addMigrationForSchema:(id)schema toVersion:(int64_t)version foreignKeyStatus:(int64_t)status handler:(id)handler
{
  v15[1] = *MEMORY[0x277D85DE8];
  schemaCopy = schema;
  handlerCopy = handler;
  v12 = [[HDDatabaseMigrationStep alloc] initForSchema:schemaCopy toVersion:version requiringVersion:-1 foreignKeys:status handler:handlerCopy];
  v15[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [(HDDatabaseMigrator *)self addMigrationSteps:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)addLockstepMigrationForSchema:(id)schema toVersion:(int64_t)version requiringVersion:(int64_t)requiringVersion foreignKeyStatus:(int64_t)status handler:(id)handler
{
  v19[1] = *MEMORY[0x277D85DE8];
  schemaCopy = schema;
  handlerCopy = handler;
  if (version == -1)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabaseMigrator.mm" lineNumber:177 description:{@"Invalid parameter not satisfying: %@", @"finalVersion != HDSQLiteRequiredPrimarySchemaVersionAny"}];
  }

  v15 = [[HDDatabaseMigrationStep alloc] initForSchema:schemaCopy toVersion:version requiringVersion:requiringVersion foreignKeys:status handler:handlerCopy];
  v19[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  [(HDDatabaseMigrator *)self addMigrationSteps:v16];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)addMigrationSteps:(id)steps
{
  stepsCopy = steps;
  v10 = stepsCopy;
  if (self->_hasPerformedMigration)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabaseMigrator.mm" lineNumber:190 description:{@"Invalid parameter not satisfying: %@", @"!_hasPerformedMigration"}];

    stepsCopy = v10;
  }

  migrationSteps = self->_migrationSteps;
  if (migrationSteps)
  {
    [(NSMutableArray *)migrationSteps addObjectsFromArray:stepsCopy];
  }

  else
  {
    v7 = [stepsCopy mutableCopy];
    v8 = self->_migrationSteps;
    self->_migrationSteps = v7;
  }
}

- (uint64_t)_deleteDatabaseStatusForVersion:(uint64_t)version errorMessage:(uint64_t)message error:(uint64_t)error
{
  v6 = @"Unsupported Okemo database";
  if (version)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:100 format:{@"%@ (version %ld)", @"Unsupported Okemo database", message}];
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __74__HDDatabaseMigrator__runMigrationStep_currentVersion_finalVersion_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(*(a1 + 40) + 32);
    v7 = *(a1 + 72);
    v61 = 0;
    v8 = [v6 currentVersionForSchema:v5 protectionClass:v7 error:&v61];
    v9 = v61;
    if (v8 == -1)
    {
      _HKInitializeLogging();
      v10 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        v53 = *(a1 + 32);
        *buf = 138543618;
        v63 = v53;
        v64 = 2114;
        v65 = v9;
        _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "Failed to retrieve current version for schema '%{public}@': %{public}@.", buf, 0x16u);
      }

      v11 = 0;
      *(*(*(a1 + 56) + 8) + 24) = 1;
      goto LABEL_52;
    }
  }

  else
  {
    v9 = 0;
    v8 = *(a1 + 64);
  }

  v12 = [*(a1 + 48) migrationHandler];
  v13 = *(a1 + 40);
  v14 = [v13 transaction];
  v15 = **(a1 + 80);
  v60 = v9;
  v16 = (v12)[2](v12, v13, v14, v15, &v60);
  v17 = v60;

  *(*(*(a1 + 56) + 8) + 24) = v16;
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    v9 = v17;
  }

  else
  {
    v18 = *(a1 + 32);
    v19 = *(*(a1 + 40) + 32);
    v20 = *(a1 + 88);
    v21 = *(a1 + 72);
    v59 = v17;
    v22 = [v19 setVersion:v20 schema:v18 protectionClass:v21 error:&v59];
    v9 = v59;

    if (v22)
    {
      _HKInitializeLogging();
      v23 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
      {
        v24 = v23;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = [*(a1 + 40) transaction];
          v26 = [v25 isProtectedMigration];
          v27 = @"unprotected";
          if (v26)
          {
            v27 = @"protected";
          }

          v28 = *(a1 + 32);
          v29 = *(a1 + 88);
          *buf = 138543874;
          v63 = v27;
          if (v28)
          {
            v30 = v28;
          }

          else
          {
            v30 = &stru_283BF39C8;
          }

          v64 = 2114;
          v65 = v30;
          v66 = 2048;
          v67 = v29;
          _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_INFO, "Successfully migrated %{public}@ schema '%{public}@' to %ld", buf, 0x20u);
        }
      }

      if (!*(a1 + 32))
      {
        **(a1 + 80) = *(a1 + 88);
      }
    }

    else
    {
      _HKInitializeLogging();
      v31 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        v54 = *(a1 + 32);
        if (!v54)
        {
          v54 = &stru_283BF39C8;
        }

        v55 = *(a1 + 88);
        *buf = 138543874;
        v63 = v54;
        v64 = 2048;
        v65 = v55;
        v66 = 2114;
        v67 = v9;
        _os_log_error_impl(&dword_228986000, v31, OS_LOG_TYPE_ERROR, "Data migration succeeded for '%{public}@' to %ld but setting schema version failed: %{public}@", buf, 0x20u);
      }

      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  if (*(a1 + 96) == 1)
  {
    v58 = v9;
    v32 = [v4 validateForeignKeysForTable:0 databaseName:0 error:&v58];
    v33 = v58;

    v9 = v33;
    if (v32 == 1)
    {
      _HKInitializeLogging();
      v35 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v63 = v33;
        _os_log_fault_impl(&dword_228986000, v35, OS_LOG_TYPE_FAULT, "Foreign key constraint violation encountered after migration step: %{public}@", buf, 0xCu);
      }

      v36 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Foreign key constraint violation encountered"];

      v9 = v36;
    }

    else if (v32 == 2)
    {
      _HKInitializeLogging();
      v34 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v63 = v33;
        _os_log_fault_impl(&dword_228986000, v34, OS_LOG_TYPE_FAULT, "Error encountered when validating foreign keys: %{public}@", buf, 0xCu);
      }
    }
  }

  v37 = *(*(*(a1 + 56) + 8) + 24);
  if (v37)
  {
    v38 = v37 == 3;
  }

  else
  {
    v38 = 1;
  }

  v11 = v38;
  if (v37)
  {
    v39 = v37 == 3;
  }

  else
  {
    v39 = 1;
  }

  if (!v39)
  {
    v56 = v4;
    v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"(main schema version %lu)", *(a1 + 64)];
    v41 = MEMORY[0x277CCACA8];
    v42 = [*(a1 + 40) transaction];
    v43 = [v42 isProtectedMigration];
    v44 = *(a1 + 32);
    v45 = [*(a1 + 48) finalSchemaVersion];
    v46 = &stru_283BF39C8;
    v47 = @"unprotected";
    if (v44)
    {
      v48 = v44;
    }

    else
    {
      v48 = &stru_283BF39C8;
    }

    if (v43)
    {
      v47 = @"protected";
    }

    if (*(a1 + 32))
    {
      v46 = v40;
    }

    v49 = [v41 stringWithFormat:@"migration of %@ (schema: %@) from %ld to %ld %@", v47, v48, v8, v45, v46];

    v4 = v56;
    if (v9)
    {
      v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error during %@", v49];
      [MEMORY[0x277CCA9B8] hk_assignError:a3 code:100 description:v50 underlyingError:v9];
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a3 code:100 format:{@"Error missing for an unsuccessful %@", v49}];
    }
  }

LABEL_52:

  v51 = *MEMORY[0x277D85DE8];
  return v11;
}

- (int64_t)migrateFromVersion:(int64_t)version toVersion:(int64_t)toVersion error:(id *)error
{
  v128 = *MEMORY[0x277D85DE8];
  v78 = self->_migrationSteps;
  versionCopy = version;
  if (!version)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel__runMigrationSteps_currentVersion_expectedFinalVersion_error_ object:self file:@"HDDatabaseMigrator.mm" lineNumber:435 description:{@"Invalid parameter not satisfying: %@", @"currentVersion"}];

    if (error)
    {
      goto LABEL_3;
    }

LABEL_125:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:sel__runMigrationSteps_currentVersion_expectedFinalVersion_error_ object:self file:@"HDDatabaseMigrator.mm" lineNumber:436 description:{@"Invalid parameter not satisfying: %@", @"error"}];

    goto LABEL_3;
  }

  if (!error)
  {
    goto LABEL_125;
  }

LABEL_3:
  v83 = versionCopy;
  v101 = 0;
  v79 = v78;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  obj = v79;
  v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v103 objects:v122 count:16];
  errorCopy = error;
  if (v8)
  {
    v98 = 0;
    v9 = *v104;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v104 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v103 + 1) + 8 * i);
        schemaName = [v11 schemaName];
        if (schemaName)
        {
          v13 = v98;
          if (!v98)
          {
            v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
          }

          v98 = v13;
          v14 = [v13 objectForKeyedSubscript:schemaName];
          if (!v14)
          {
            v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
            [v98 setObject:v14 forKeyedSubscript:schemaName];
          }

          [v14 addObject:v11];
        }

        else
        {
          [v7 addObject:v11];
        }
      }

      v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v103 objects:v122 count:16];
    }

    while (v8);
  }

  else
  {
    v98 = 0;
  }

  [v7 sortUsingComparator:&__block_literal_global_437];
  allKeys = [v98 allKeys];
  v16 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v120 = 0u;
  v121 = 0u;
  memset(v119, 0, sizeof(v119));
  v85 = v16;
  v92 = [v85 countByEnumeratingWithState:v119 objects:v111 count:16];
  if (v92)
  {
    v90 = **&v119[16];
    do
    {
      for (j = 0; j != v92; ++j)
      {
        if (**&v119[16] != v90)
        {
          objc_enumerationMutation(v85);
        }

        v17 = [v98 objectForKeyedSubscript:*(*&v119[8] + 8 * j)];
        [v17 sortUsingComparator:&__block_literal_global_441];
        v18 = 0;
        while (v18 < [v17 count])
        {
          v19 = [v17 objectAtIndexedSubscript:v18];
          requiredPrimarySchemaVersion = [v19 requiredPrimarySchemaVersion];
          v21 = requiredPrimarySchemaVersion;
          if (requiredPrimarySchemaVersion == -1)
          {
            ++v18;
          }

          else
          {
            *&buf = MEMORY[0x277D85DD0];
            *(&buf + 1) = 3221225472;
            v108 = ___ZL23_HDSortedMigrationStepsP7NSArrayIP23HDDatabaseMigrationStepE_block_invoke_3;
            v109 = &__block_descriptor_40_e40_B32__0__HDDatabaseMigrationStep_8Q16_B24l;
            v110 = requiredPrimarySchemaVersion;
            v22 = [v7 indexOfObjectPassingTest:&buf];
            if (v22 == 0x7FFFFFFFFFFFFFFFLL)
            {
              currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
              v81 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSArray<HDDatabaseMigrationStep *> * _Nonnull _HDSortedMigrationSteps(NSArray<HDDatabaseMigrationStep *> * _Nonnull __strong)"];
              [currentHandler3 handleFailureInFunction:v81 file:@"HDDatabaseMigrator.mm" lineNumber:615 description:{@"Unable to find a primary migration step resulting in %ld, which is required for migration step %@", v21, v19}];
            }

            v23 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v22 + 1, v18 + 1}];
            v24 = [v17 subarrayWithRange:{0, v18 + 1}];
            [v7 insertObjects:v24 atIndexes:v23];

            [v17 removeObjectsInRange:{0, v18 + 1}];
            v18 = 0;
          }
        }

        [v7 addObjectsFromArray:v17];
      }

      v92 = [v85 countByEnumeratingWithState:v119 objects:v111 count:16];
    }

    while (v92);
  }

  v93 = v7;
  v99 = objc_alloc_init(MEMORY[0x277CBEB18]);
  transaction = [(HDDatabaseMigrator *)self transaction];
  isProtectedMigration = [transaction isProtectedMigration];
  v27 = 1;
  if (isProtectedMigration)
  {
    v27 = 2;
  }

  v96 = v27;

  v112 = 0u;
  v113 = 0u;
  memset(v111, 0, sizeof(v111));
  v28 = v93;
  v29 = 0;
  v30 = [v28 countByEnumeratingWithState:v111 objects:v122 count:16];
  if (v30)
  {
    v31 = **&v111[16];
    while (2)
    {
      for (k = 0; k != v30; ++k)
      {
        if (**&v111[16] != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*&v111[8] + 8 * k);
        schemaName2 = [v33 schemaName];
        if (schemaName2)
        {
          v35 = [v29 objectForKeyedSubscript:schemaName2];
          v36 = v35;
          if (v35)
          {
            integerValue = [v35 integerValue];
          }

          else
          {
            integerValue = [(HDDatabaseSchemaManager *)self->_schemaManager currentVersionForSchema:schemaName2 protectionClass:v96 error:&v101];
            if (integerValue == -1)
            {

              v91 = 0;
              v39 = v99;
              goto LABEL_56;
            }

            if (!v29)
            {
              v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
            }

            v38 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
            [v29 setObject:v38 forKeyedSubscript:schemaName2];
          }
        }

        else
        {
          integerValue = v83;
        }

        if ([v33 finalSchemaVersion] > integerValue)
        {
          [v99 addObject:v33];
        }
      }

      v30 = [v28 countByEnumeratingWithState:v111 objects:v122 count:16];
      if (v30)
      {
        continue;
      }

      break;
    }
  }

  v39 = v99;
  v91 = v99;
LABEL_56:

  v86 = v101;
  if (!v91)
  {
    _HKInitializeLogging();
    v62 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      *v122 = 134218498;
      v123 = versionCopy;
      v124 = 2048;
      toVersionCopy = toVersion;
      v126 = 2114;
      v127 = v86;
      _os_log_error_impl(&dword_228986000, v62, OS_LOG_TYPE_ERROR, "Unable to sort and prune migration steps from %ld to %ld: %{public}@.", v122, 0x20u);
    }

    v80 = v86;
    if (v80)
    {
      if (errorCopy)
      {
        v63 = v80;
        *errorCopy = v80;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v56 = 1;
    goto LABEL_115;
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v80 = v91;
  v40 = [v80 countByEnumeratingWithState:&v103 objects:v122 count:16];
  if (!v40)
  {
LABEL_99:
    v56 = 0;
    goto LABEL_115;
  }

  v41 = &selRef__queue_enqueueConceptAuthorizationRequestWithIdentifier_bundleIdentifier_objectType_promptIfNeeded_authorizationNeededHandler_completionHandler_;
  v97 = *v104;
LABEL_59:
  v42 = 0;
  obja = v41[64];
  v94 = v40;
  while (1)
  {
    if (*v104 != v97)
    {
      objc_enumerationMutation(v80);
    }

    v100 = v42;
    v43 = *(*(&v103 + 1) + 8 * v42);
    if (!errorCopy)
    {
      currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler4 handleFailureInMethod:obja object:self file:@"HDDatabaseMigrator.mm" lineNumber:260 description:{@"Invalid parameter not satisfying: %@", @"error"}];
    }

    v44 = versionCopy;
    finalSchemaVersion = [v43 finalSchemaVersion];
    schemaName3 = [v43 schemaName];
    if (schemaName3)
    {
      if ([v43 requiredPrimarySchemaVersion] != -1 && v44 != objc_msgSend(v43, "requiredPrimarySchemaVersion"))
      {
        [MEMORY[0x277CCA9B8] hk_assignError:errorCopy code:3 format:{@"Invalid current main schema version %lu for migration step %@", v44, v43}];

        goto LABEL_112;
      }
    }

    else
    {
      if (finalSchemaVersion > toVersion)
      {
        currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler5 handleFailureInMethod:obja object:self file:@"HDDatabaseMigrator.mm" lineNumber:268 description:{@"Invalid parameter not satisfying: %@", @"stepFinalSchemaVersion <= finalVersion"}];

        if (v44 < finalSchemaVersion)
        {
          _HKInitializeLogging();
          v61 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            *v119 = 134218240;
            *&v119[4] = finalSchemaVersion;
            *&v119[12] = 2048;
            *&v119[14] = toVersion;
            _os_log_error_impl(&dword_228986000, v61, OS_LOG_TYPE_ERROR, "Skipping migration step to %ld because expected current schema version is %ld.", v119, 0x16u);
          }
        }

LABEL_96:

        goto LABEL_97;
      }

      if (v44 >= finalSchemaVersion)
      {
        goto LABEL_96;
      }
    }

    v47 = 0;
    v48 = v119;
    *v119 = 0;
    *&v119[8] = v119;
    *&v119[16] = 0x2020000000;
    *&v119[24] = 1;
    while (1)
    {
      *(v48 + 3) = 1;
      if ([v43 foreignKeyStatus] == 1)
      {
        break;
      }

LABEL_74:
      transaction2 = [(HDDatabaseMigrator *)self transaction];
      if ([transaction2 isProtectedMigration])
      {
        transaction3 = [(HDDatabaseMigrator *)self transaction];
        [transaction3 protectedDatabase];
      }

      else
      {
        transaction3 = [(HDDatabaseMigrator *)self transaction];
        [transaction3 unprotectedDatabase];
      }
      v51 = ;

      transaction4 = [(HDDatabaseMigrator *)self transaction];
      if ([transaction4 isProtectedMigration])
      {
        v53 = 2;
      }

      else
      {
        v53 = 1;
      }

      *v111 = MEMORY[0x277D85DD0];
      *&v111[8] = 3221225472;
      *&v111[16] = __74__HDDatabaseMigrator__runMigrationStep_currentVersion_finalVersion_error___block_invoke;
      *&v111[24] = &unk_27862BC18;
      v114 = v44;
      *&v112 = schemaName3;
      *(&v112 + 1) = self;
      v115 = v53;
      *(&v113 + 1) = v119;
      *&v113 = v43;
      v116 = &versionCopy;
      v117 = finalSchemaVersion;
      v118 = v47 & 1;
      if (([v51 performTransactionWithType:1 error:errorCopy usingBlock:v111] & 1) == 0)
      {
        *(*&v119[8] + 24) = 1;
      }

      v48 = *&v119[8];
      if (*(*&v119[8] + 24) != 3)
      {
        goto LABEL_85;
      }
    }

    if ([(HDDatabaseMigrator *)self executeSQL:@"PRAGMA foreign_keys = OFF" error:errorCopy])
    {
      v47 = 1;
      goto LABEL_74;
    }

    _HKInitializeLogging();
    v54 = *MEMORY[0x277CCC2A0];
    if (!os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
LABEL_85:
      if ((v47 & 1) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    }

    v57 = *errorCopy;
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v57;
    _os_log_error_impl(&dword_228986000, v54, OS_LOG_TYPE_ERROR, "Failed to disable foreign keys: %{public}@", &buf, 0xCu);
    if ((v47 & 1) == 0)
    {
      goto LABEL_89;
    }

LABEL_86:
    if (![(HDDatabaseMigrator *)self executeSQL:@"PRAGMA foreign_keys = ON" error:errorCopy])
    {
      *(*&v119[8] + 24) = 1;
      _HKInitializeLogging();
      v55 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        v58 = *errorCopy;
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v58;
        _os_log_error_impl(&dword_228986000, v55, OS_LOG_TYPE_ERROR, "Failed to enable foreign keys: %{public}@", &buf, 0xCu);
      }
    }

LABEL_89:
    v56 = *(*&v119[8] + 24);
    _Block_object_dispose(v119, 8);

    if (v56)
    {
      break;
    }

LABEL_97:
    v42 = v100 + 1;
    if (v100 + 1 == v94)
    {
      v40 = [v80 countByEnumeratingWithState:&v103 objects:v122 count:16];
      v41 = &selRef__queue_enqueueConceptAuthorizationRequestWithIdentifier_bundleIdentifier_objectType_promptIfNeeded_authorizationNeededHandler_completionHandler_;
      if (!v40)
      {
        goto LABEL_99;
      }

      goto LABEL_59;
    }
  }

  if (v56 == 2)
  {
    _HKInitializeLogging();
    v64 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
    {
      transaction5 = [(HDDatabaseMigrator *)self transaction];
      if ([transaction5 isProtectedMigration])
      {
        v72 = @"protected";
      }

      else
      {
        v72 = @"unprotected";
      }

      schemaName4 = [v43 schemaName];
      finalSchemaVersion2 = [v43 finalSchemaVersion];
      *v111 = 138543874;
      *&v111[4] = v72;
      *&v111[12] = 2112;
      *&v111[14] = schemaName4;
      *&v111[22] = 2048;
      *&v111[24] = finalSchemaVersion2;
      _os_log_fault_impl(&dword_228986000, v64, OS_LOG_TYPE_FAULT, "Fatal error encountered attempting migration for %{public}@ (schema: %@) to %ld; migration will be aborted.", v111, 0x20u);
    }

    v56 = 2;
  }

  else
  {
    if (v56 != 1)
    {
      goto LABEL_115;
    }

LABEL_112:
    _HKInitializeLogging();
    v64 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
    {
      transaction6 = [(HDDatabaseMigrator *)self transaction];
      if ([transaction6 isProtectedMigration])
      {
        v68 = @"protected";
      }

      else
      {
        v68 = @"unprotected";
      }

      schemaName5 = [v43 schemaName];
      finalSchemaVersion3 = [v43 finalSchemaVersion];
      *v111 = 138543874;
      *&v111[4] = v68;
      *&v111[12] = 2112;
      *&v111[14] = schemaName5;
      *&v111[22] = 2048;
      *&v111[24] = finalSchemaVersion3;
      _os_log_fault_impl(&dword_228986000, v64, OS_LOG_TYPE_FAULT, "Database migration interrupted attempting migration for %{public}@ (schema: %@) to %ld; migration will be retried.", v111, 0x20u);
    }

    v56 = 1;
  }

LABEL_115:
  v65 = *MEMORY[0x277D85DE8];
  return v56;
}

- (int64_t)performHFDMigrationToVersion:(int64_t)version handler:(id)handler error:(id *)error
{
  handlerCopy = handler;
  transaction = [(HDDatabaseMigrator *)self transaction];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__HDDatabaseMigrator_performHFDMigrationToVersion_handler_error___block_invoke;
  v13[3] = &unk_27862BC68;
  versionCopy = version;
  v10 = handlerCopy;
  v14 = v10;
  v11 = [transaction accessHistoricHFDWithError:error block:v13];

  return v11;
}

uint64_t __65__HDDatabaseMigrator_performHFDMigrationToVersion_handler_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__HDDatabaseMigrator_performHFDMigrationToVersion_handler_error___block_invoke_2;
  v8[3] = &unk_27862BC40;
  v5 = *(a1 + 32);
  v11 = *(a1 + 40);
  v9 = v5;
  v10 = &v12;
  if ([a2 accessStoreWithError:a3 block:v8])
  {
    v6 = v13[3];
  }

  else
  {
    v6 = 1;
  }

  _Block_object_dispose(&v12, 8);
  return v6;
}

void __65__HDDatabaseMigrator_performHFDMigrationToVersion_handler_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = a2;
  v3 = 1;
  operator new();
}

- (BOOL)executeSQL:(id)l error:(id *)error
{
  lCopy = l;
  transaction = [(HDDatabaseMigrator *)self transaction];
  if ([transaction isProtectedMigration])
  {
    transaction2 = [(HDDatabaseMigrator *)self transaction];
    [transaction2 protectedDatabase];
  }

  else
  {
    transaction2 = [(HDDatabaseMigrator *)self transaction];
    [transaction2 unprotectedDatabase];
  }
  v9 = ;

  v10 = [v9 executeUncachedSQL:lCopy error:error];
  return v10;
}

- (BOOL)executeSQLStatements:(id)statements error:(id *)error
{
  statementsCopy = statements;
  transaction = [(HDDatabaseMigrator *)self transaction];
  if ([transaction isProtectedMigration])
  {
    transaction2 = [(HDDatabaseMigrator *)self transaction];
    [transaction2 protectedDatabase];
  }

  else
  {
    transaction2 = [(HDDatabaseMigrator *)self transaction];
    [transaction2 unprotectedDatabase];
  }
  v9 = ;

  v10 = [v9 executeSQLStatements:statementsCopy error:error];
  return v10;
}

- (unint64_t)fetchLegacySyncIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  protectedDatabase = [identityCopy protectedDatabase];

  if (!protectedDatabase)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabaseMigrator.mm" lineNumber:539 description:@"Protected database must not be nil"];
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT ROWID FROM sync_identities WHERE hardware_identifier = %@('00000000-0000-0000-0000-000000000000') AND database_identifier = %@('00000000-0000-0000-0000-000000000000') AND instance_discriminator = '' LIMIT 1", *MEMORY[0x277D10A68], *MEMORY[0x277D10A68]];;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  unprotectedDatabase = [identityCopy unprotectedDatabase];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__HDDatabaseMigrator_fetchLegacySyncIdentity_error___block_invoke;
  v15[3] = &unk_278615530;
  v15[4] = &v16;
  v11 = [unprotectedDatabase executeSQL:v9 error:error bindingHandler:0 enumerationHandler:v15];

  if (v11)
  {
    v12 = v17[3];
  }

  else
  {
    v12 = -1;
  }

  _Block_object_dispose(&v16, 8);

  return v12;
}

- (id)okemoZursUnprotectedMigrationSteps
{
  array = [MEMORY[0x277CBEB18] array];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __67__HDDatabaseMigrator_OkemoZurs__okemoZursUnprotectedMigrationSteps__block_invoke;
  v20[3] = &unk_27861B758;
  v20[4] = self;
  v4 = HDCreateMigrationStep(8044, 8101, v20);
  [array addObject:v4];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __67__HDDatabaseMigrator_OkemoZurs__okemoZursUnprotectedMigrationSteps__block_invoke_2;
  v19[3] = &unk_27861B758;
  v19[4] = self;
  v5 = [HDDatabaseMigrationStep migrationStepFrom:8101 to:8103 handler:v19];
  [array addObject:v5];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __67__HDDatabaseMigrator_OkemoZurs__okemoZursUnprotectedMigrationSteps__block_invoke_3;
  v18[3] = &unk_27861B758;
  v18[4] = self;
  v6 = [HDDatabaseMigrationStep migrationStepFrom:8103 to:8106 handler:v18];
  [array addObject:v6];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __67__HDDatabaseMigrator_OkemoZurs__okemoZursUnprotectedMigrationSteps__block_invoke_4;
  v17[3] = &unk_27861B758;
  v17[4] = self;
  v7 = [HDDatabaseMigrationStep migrationStepFrom:8106 to:8109 handler:v17];
  [array addObject:v7];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__HDDatabaseMigrator_OkemoZurs__okemoZursUnprotectedMigrationSteps__block_invoke_5;
  v16[3] = &unk_27861B758;
  v16[4] = self;
  v8 = [HDDatabaseMigrationStep migrationStepFrom:8109 to:8110 handler:v16];
  [array addObject:v8];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__HDDatabaseMigrator_OkemoZurs__okemoZursUnprotectedMigrationSteps__block_invoke_6;
  v15[3] = &unk_27861B758;
  v15[4] = self;
  v9 = [HDDatabaseMigrationStep migrationStepFrom:8110 to:8111 handler:v15];
  [array addObject:v9];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__HDDatabaseMigrator_OkemoZurs__okemoZursUnprotectedMigrationSteps__block_invoke_7;
  v14[3] = &unk_27861B758;
  v14[4] = self;
  v10 = [HDDatabaseMigrationStep migrationStepFrom:8111 to:8113 handler:v14];
  [array addObject:v10];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__HDDatabaseMigrator_OkemoZurs__okemoZursUnprotectedMigrationSteps__block_invoke_8;
  v13[3] = &unk_27861B758;
  v13[4] = self;
  v11 = [HDDatabaseMigrationStep migrationStepFrom:8113 to:8114 handler:v13];
  [array addObject:v11];

  return array;
}

void *__67__HDDatabaseMigrator_OkemoZurs__okemoZursUnprotectedMigrationSteps__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQLStatements:&unk_283CB01C8 error:a3] ^ 1);
  }

  return result;
}

- (uint64_t)_renameKeyValueSyncStoreColumnInProtectedDabase:(uint64_t)dabase error:
{
  v20[4] = *MEMORY[0x277D85DE8];
  if (self)
  {
    v4 = a2;
    v6 = @"key_value";
    if (a2)
    {
      v6 = @"key_value_secure";
    }

    v7 = v6;
    transaction = [self transaction];
    v9 = transaction;
    if (v4)
    {
      [transaction protectedDatabase];
    }

    else
    {
      [transaction unprotectedDatabase];
    }
    v10 = ;

    if ([v10 table:v7 hasColumnWithName:@"sync_store" error:dabase])
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"new_%@", v7];
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"CREATE TABLE %@ (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, category INTEGER, provenance INTEGER, domain STRING, key STRING, value, mod_date REAL, UNIQUE(category, provenance, domain, key))", v11];;
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT INTO %@ SELECT * FROM %@", v11, v7];;
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"DROP TABLE %@", v7];;
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"ALTER TABLE %@ RENAME TO %@", v11, v7];;
      v20[0] = v12;
      v20[1] = v13;
      v20[2] = v14;
      v20[3] = v15;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];
      v17 = [self executeSQLStatements:v16 error:dabase] ^ 1;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t __67__HDDatabaseMigrator_OkemoZurs__okemoZursUnprotectedMigrationSteps__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (!v3)
  {
    v20 = 0;
    goto LABEL_20;
  }

  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [v5 integerForKey:@"LastPedometerRecordID"];

  _HKInitializeLogging();
  v7 = MEMORY[0x277CCC2A0];
  v8 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "Received last pedometer record ID of %ld", &buf, 0xCu);
  }

  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__180;
  v43 = __Block_byref_object_dispose__180;
  v44 = 0;
  if (v6 >= 1 && [MEMORY[0x277CC1D18] isStepCountingAvailable])
  {
    v9 = objc_alloc_init(MEMORY[0x277CC1D18]);
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__180;
    v37 = __Block_byref_object_dispose__180;
    v38 = 0;
    v10 = dispatch_semaphore_create(0);
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v46 = __61__HDDatabaseMigrator_OkemoZurs___lastReceivedPedometerDatum___block_invoke;
    v47 = &unk_2786186B0;
    v49 = &v39;
    v50 = &v33;
    v11 = v10;
    v48 = v11;
    [v9 queryPedometerDataSinceRecord:v6 withHandler:&buf];
    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
    v12 = v34[5];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    _Block_object_dispose(&v33, 8);
  }

  else
  {
    v13 = 0;
  }

  v15 = v40[5];
  _Block_object_dispose(&v39, 8);

  v16 = v13;
  v17 = v16;
  if (v16)
  {
    if (a3)
    {
      v18 = v16;
      *a3 = v17;
    }

    goto LABEL_18;
  }

  if (v15)
  {
    if (![(HDDatabaseMigrator *)v3 _updateDataCollectorKeyValueContextWithObject:v15 domain:@"STEP_INGESTION" error:a3]|| ([(HDDatabaseMigrator *)v3 _updateDataCollectorKeyValueContextWithObject:v15 domain:@"DISTANCE_INGESTION" error:a3]& 1) == 0)
    {
LABEL_18:

      goto LABEL_19;
    }

    v19 = [(HDDatabaseMigrator *)v3 _updateDataCollectorKeyValueContextWithObject:v15 domain:@"FLIGHTS_INGESTION" error:a3];

    if (!v19)
    {
LABEL_19:
      v20 = 1;
      goto LABEL_20;
    }
  }

  v23 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v24 = [v23 integerForKey:@"LastCaloriesRecordID"];

  _HKInitializeLogging();
  v25 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v24;
    _os_log_impl(&dword_228986000, v25, OS_LOG_TYPE_DEFAULT, "Received last calorie record ID of %ld", &buf, 0xCu);
  }

  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__180;
  v43 = __Block_byref_object_dispose__180;
  v44 = 0;
  if (v24 >= 1 && [MEMORY[0x277CC1CE0] isNatalimeterAvailable])
  {
    v26 = objc_alloc_init(MEMORY[0x277CC1CE0]);
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__180;
    v37 = __Block_byref_object_dispose__180;
    v38 = 0;
    v27 = dispatch_semaphore_create(0);
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v46 = __59__HDDatabaseMigrator_OkemoZurs___lastReceivedNatalieDatum___block_invoke;
    v47 = &unk_2786186B0;
    v49 = &v39;
    v50 = &v33;
    v28 = v27;
    v48 = v28;
    [v26 queryAbsoluteNatalimetryDataSinceRecord:v24 withHandler:&buf];
    dispatch_semaphore_wait(v28, 0xFFFFFFFFFFFFFFFFLL);
    v29 = v34[5];
    v30 = v29;
    if (v29)
    {
      if (a3)
      {
        v31 = v29;
        *a3 = v30;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    _Block_object_dispose(&v33, 8);
  }

  v32 = v40[5];
  _Block_object_dispose(&v39, 8);

  if (v32)
  {
    if ([(HDDatabaseMigrator *)v3 _updateDataCollectorKeyValueContextWithObject:v32 domain:@"BRISK_MINUTE_INGESTION" error:a3])
    {
      v20 = [(HDDatabaseMigrator *)v3 _updateDataCollectorKeyValueContextWithObject:v32 domain:@"ACTIVE_ENERGY_INGESTION" error:a3]^ 1;
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 0;
  }

LABEL_20:
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t __67__HDDatabaseMigrator_OkemoZurs__okemoZursUnprotectedMigrationSteps__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v9[0] = @"DROP TABLE IF EXISTS main.activity_caches;";
    v9[1] = @"DROP TABLE IF EXISTS main.achievements;";
    v9[2] = @"DELETE FROM key_value WHERE category = 1";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
    v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t __67__HDDatabaseMigrator_OkemoZurs__okemoZursUnprotectedMigrationSteps__block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v9[0] = @"DROP TABLE IF EXISTS nano_pairing;";
    v9[1] = @"DELETE FROM key_value WHERE category = 0 AND domain = 'NanoPairing';";
    v9[2] = @"CREATE TABLE nano_pairing (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, persistent_uuid BLOB UNIQUE NOT NULL, health_uuid BLOB NOT NULL, creation_date REAL NOT NULL);";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
    v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (uint64_t)_migrateKeyValueColumnsFromStringToText:(uint64_t)text error:
{
  v17[4] = *MEMORY[0x277D85DE8];
  if (self)
  {
    v5 = @"key_value";
    if (a2)
    {
      v5 = @"key_value_secure";
    }

    v6 = MEMORY[0x277CCACA8];
    v7 = v5;
    v8 = [v6 stringWithFormat:@"tmp_%@", v7];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"CREATE TABLE %@ (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, category INTEGER, provenance INTEGER, domain TEXT, key TEXT, value, mod_date REAL, UNIQUE(category, provenance, domain, key))", v8];;
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT INTO %@ SELECT * FROM %@", v8, v7];;
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"DROP TABLE %@", v7];;
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"ALTER TABLE %@ RENAME TO %@", v8, v7];;

    v17[0] = v9;
    v17[1] = v10;
    v17[2] = v11;
    v17[3] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];
    v14 = [self executeSQLStatements:v13 error:text] ^ 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

void *__67__HDDatabaseMigrator_OkemoZurs__okemoZursUnprotectedMigrationSteps__block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQL:@"DELETE FROM datatype_source_order;" error:a3] ^ 1);
  }

  return result;
}

uint64_t __67__HDDatabaseMigrator_OkemoZurs__okemoZursUnprotectedMigrationSteps__block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v9[0] = @"DROP TABLE IF EXISTS sync_stores;";
    v9[1] = @"DROP TABLE IF EXISTS sync_anchors;";
    v9[2] = @"CREATE TABLE IF NOT EXISTS sync_anchors (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, next INTEGER, acked INTEGER, received INTEGER, type INTEGER, store INTEGER, UNIQUE(type, store));";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
    v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)okemoZursProtectedMigrationSteps
{
  array = [MEMORY[0x277CBEB18] array];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __65__HDDatabaseMigrator_OkemoZurs__okemoZursProtectedMigrationSteps__block_invoke;
  v40[3] = &unk_27861B758;
  v40[4] = self;
  v4 = [HDDatabaseMigrationStep migrationStepFrom:8047 to:8101 handler:v40];
  [array addObject:v4];

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __65__HDDatabaseMigrator_OkemoZurs__okemoZursProtectedMigrationSteps__block_invoke_2;
  v39[3] = &unk_27861B758;
  v39[4] = self;
  v5 = [HDDatabaseMigrationStep migrationStepFrom:8101 to:8102 handler:v39];
  [array addObject:v5];

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __65__HDDatabaseMigrator_OkemoZurs__okemoZursProtectedMigrationSteps__block_invoke_3;
  v38[3] = &unk_27861B758;
  v38[4] = self;
  v6 = [HDDatabaseMigrationStep migrationStepFrom:8102 to:8103 handler:v38];
  [array addObject:v6];

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __65__HDDatabaseMigrator_OkemoZurs__okemoZursProtectedMigrationSteps__block_invoke_4;
  v37[3] = &unk_27861B758;
  v37[4] = self;
  v7 = [HDDatabaseMigrationStep migrationStepFrom:8103 to:8104 handler:v37];
  [array addObject:v7];

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __65__HDDatabaseMigrator_OkemoZurs__okemoZursProtectedMigrationSteps__block_invoke_5;
  v36[3] = &unk_27861B758;
  v36[4] = self;
  v8 = [HDDatabaseMigrationStep migrationStepFrom:8104 to:8105 handler:v36];
  [array addObject:v8];

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __65__HDDatabaseMigrator_OkemoZurs__okemoZursProtectedMigrationSteps__block_invoke_6;
  v35[3] = &unk_27861B758;
  v35[4] = self;
  v9 = [HDDatabaseMigrationStep migrationStepFrom:8105 to:8106 handler:v35];
  [array addObject:v9];

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __65__HDDatabaseMigrator_OkemoZurs__okemoZursProtectedMigrationSteps__block_invoke_7;
  v34[3] = &unk_27861B758;
  v34[4] = self;
  v10 = [HDDatabaseMigrationStep migrationStepFrom:8106 to:8107 handler:v34];
  [array addObject:v10];

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __65__HDDatabaseMigrator_OkemoZurs__okemoZursProtectedMigrationSteps__block_invoke_8;
  v33[3] = &unk_27861B758;
  v33[4] = self;
  v11 = [HDDatabaseMigrationStep migrationStepFrom:8107 to:8109 handler:v33];
  [array addObject:v11];

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __65__HDDatabaseMigrator_OkemoZurs__okemoZursProtectedMigrationSteps__block_invoke_9;
  v32[3] = &unk_27861B758;
  v32[4] = self;
  v12 = [HDDatabaseMigrationStep migrationStepFrom:8109 to:8110 handler:v32];
  [array addObject:v12];

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __65__HDDatabaseMigrator_OkemoZurs__okemoZursProtectedMigrationSteps__block_invoke_10;
  v31[3] = &unk_27861B758;
  v31[4] = self;
  v13 = [HDDatabaseMigrationStep migrationStepFrom:8110 to:8111 handler:v31];
  [array addObject:v13];

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __65__HDDatabaseMigrator_OkemoZurs__okemoZursProtectedMigrationSteps__block_invoke_11;
  v30[3] = &unk_27861B758;
  v30[4] = self;
  v14 = [HDDatabaseMigrationStep migrationStepFrom:8111 to:8112 handler:v30];
  [array addObject:v14];

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __65__HDDatabaseMigrator_OkemoZurs__okemoZursProtectedMigrationSteps__block_invoke_12;
  v29[3] = &unk_27861B758;
  v29[4] = self;
  v15 = [HDDatabaseMigrationStep migrationStepFrom:8112 to:8114 handler:v29];
  [array addObject:v15];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __65__HDDatabaseMigrator_OkemoZurs__okemoZursProtectedMigrationSteps__block_invoke_13;
  v28[3] = &unk_27861B758;
  v28[4] = self;
  v16 = [HDDatabaseMigrationStep migrationStepFrom:8114 to:8115 handler:v28];
  [array addObject:v16];

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __65__HDDatabaseMigrator_OkemoZurs__okemoZursProtectedMigrationSteps__block_invoke_14;
  v27[3] = &unk_27861B758;
  v27[4] = self;
  v17 = [HDDatabaseMigrationStep migrationStepFrom:8115 to:8116 handler:v27];
  [array addObject:v17];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __65__HDDatabaseMigrator_OkemoZurs__okemoZursProtectedMigrationSteps__block_invoke_15;
  v26[3] = &unk_27861B758;
  v26[4] = self;
  v18 = [HDDatabaseMigrationStep migrationStepFrom:8116 to:8117 handler:v26];
  [array addObject:v18];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __65__HDDatabaseMigrator_OkemoZurs__okemoZursProtectedMigrationSteps__block_invoke_16;
  v25[3] = &unk_27861B758;
  v25[4] = self;
  v19 = [HDDatabaseMigrationStep migrationStepFrom:8117 to:8118 handler:v25];
  [array addObject:v19];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __65__HDDatabaseMigrator_OkemoZurs__okemoZursProtectedMigrationSteps__block_invoke_17;
  v24[3] = &unk_27861B758;
  v24[4] = self;
  v20 = [HDDatabaseMigrationStep migrationStepFrom:8118 to:8119 handler:v24];
  [array addObject:v20];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __65__HDDatabaseMigrator_OkemoZurs__okemoZursProtectedMigrationSteps__block_invoke_18;
  v23[3] = &unk_27861B758;
  v23[4] = self;
  v21 = [HDDatabaseMigrationStep migrationStepFrom:8119 to:8120 handler:v23];
  [array addObject:v21];

  return array;
}

uint64_t __65__HDDatabaseMigrator_OkemoZurs__okemoZursProtectedMigrationSteps__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[7] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v9[0] = @"CREATE TABLE key_value_secure (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, category INTEGER, provenance INTEGER, domain STRING, key STRING, value, mod_date REAL, UNIQUE(category, provenance, domain, key));";
    v9[1] = @"INSERT INTO key_value_secure (domain, key, value, mod_date, category, provenance) SELECT bundle_id, key, value, 0.0, 102, 0 FROM user_defaults;";
    v9[2] = @"INSERT INTO key_value_secure (domain, key, value, mod_date, category, provenance) SELECT NULL, 'birthdate', birthdate, 0.0, 101, 0 FROM users;";
    v9[3] = @"INSERT INTO key_value_secure (domain, key, value, mod_date, category, provenance) SELECT NULL, 'sex', sex, 0.0, 101, 0 FROM users;";
    v9[4] = @"INSERT INTO key_value_secure (domain, key, value, mod_date, category, provenance) SELECT NULL, 'blood_type', blood_type, 0.0, 101, 0 FROM users;";
    v9[5] = @"DROP TABLE user_defaults;";
    v9[6] = @"DROP TABLE users";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:7];
    v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t __65__HDDatabaseMigrator_OkemoZurs__okemoZursProtectedMigrationSteps__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = 1;
    if (![(HDDatabaseMigrator *)*(a1 + 32) _renameKeyValueSyncStoreColumnInProtectedDabase:a3 error:?])
    {
      v9[0] = @"UPDATE objects SET provenance = 0 WHERE provenance != 16;";
      v9[1] = @"UPDATE objects SET provenance = 1 WHERE provenance = 16;";
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
      v5 = [v3 executeSQLStatements:v6 error:a3] ^ 1;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

void *__65__HDDatabaseMigrator_OkemoZurs__okemoZursProtectedMigrationSteps__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQLStatements:&unk_283CB01E0 error:a3] ^ 1);
  }

  return result;
}

void *__65__HDDatabaseMigrator_OkemoZurs__okemoZursProtectedMigrationSteps__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQL:@"DROP TABLE IF EXISTS data_session_activities;" error:a3] ^ 1);
  }

  return result;
}

uint64_t __65__HDDatabaseMigrator_OkemoZurs__okemoZursProtectedMigrationSteps__block_invoke_5(uint64_t a1)
{
  v19[5] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM %@ WHERE data_id IN (SELECT data_id FROM %@ LEFT JOIN objects USING (data_id) WHERE objects.data_id IS NULL)", @"samples", @"samples"];;
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM %@ WHERE data_id IN (SELECT data_id FROM %@ LEFT JOIN objects USING (data_id) WHERE objects.data_id IS NULL)", @"quantity_samples", @"quantity_samples"];;
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM %@ WHERE data_id IN (SELECT data_id FROM %@ LEFT JOIN objects USING (data_id) WHERE objects.data_id IS NULL)", @"category_samples", @"category_samples"];;
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM %@ WHERE data_id IN (SELECT data_id FROM %@ LEFT JOIN objects USING (data_id) WHERE objects.data_id IS NULL)", @"workouts", @"workouts"];;
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM %@ WHERE data_id IN (SELECT data_id FROM %@ LEFT JOIN objects USING (data_id) WHERE objects.data_id IS NULL)", @"activity_caches", @"activity_caches"];;
    v19[0] = v2;
    v19[1] = v3;
    v19[2] = v4;
    v19[3] = v5;
    v19[4] = v6;
    [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:5];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v17 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v1 executeSQL:*(*(&v14 + 1) + 8 * v11++) error:0];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

void *__65__HDDatabaseMigrator_OkemoZurs__okemoZursProtectedMigrationSteps__block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQL:@"UPDATE workouts SET activity_type=3000 WHERE activity_type=0" error:a3] ^ 1);
  }

  return result;
}

uint64_t __65__HDDatabaseMigrator_OkemoZurs__okemoZursProtectedMigrationSteps__block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    [v3 executeSQL:@"ALTER TABLE activity_caches ADD COLUMN walk_distance REAL;" error:a3];
  }

  return 0;
}

uint64_t __65__HDDatabaseMigrator_OkemoZurs__okemoZursProtectedMigrationSteps__block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v9[0] = @"CREATE TABLE IF NOT EXISTS activity_caches (data_id INTEGER PRIMARY KEY, energy_burned_goal REAL, energy_burned REAL, brisk_minutes REAL, active_hours REAL, cache_index INTEGER, active_hours_goal REAL, brisk_minutes_goal REAL, steps REAL, walk_distance REAL);";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void *__65__HDDatabaseMigrator_OkemoZurs__okemoZursProtectedMigrationSteps__block_invoke_9(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQL:@"CREATE INDEX IF NOT EXISTS metadata_values_index_0 ON metadata_values(object_id);" error:a3] ^ 1);
  }

  return result;
}

void *__65__HDDatabaseMigrator_OkemoZurs__okemoZursProtectedMigrationSteps__block_invoke_11(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQL:@"CREATE INDEX IF NOT EXISTS correlations_index_0 ON correlations(object);" error:a3] ^ 1);
  }

  return result;
}

uint64_t __65__HDDatabaseMigrator_OkemoZurs__okemoZursProtectedMigrationSteps__block_invoke_12(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v9[0] = @"ALTER TABLE correlations ADD COLUMN provenance INTEGER;";
    v9[1] = @"UPDATE correlations SET provenance = 0;";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
    v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t __65__HDDatabaseMigrator_OkemoZurs__okemoZursProtectedMigrationSteps__block_invoke_13(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [&unk_283CB01F8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(&unk_283CB01F8);
          }

          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"ALTER TABLE activity_caches ADD COLUMN %@ INTEGER", *(*(&v14 + 1) + 8 * v9)];;
          [v5 addObject:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [&unk_283CB01F8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v11 = [v3 executeSQLStatements:v5 error:a3] ^ 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t __65__HDDatabaseMigrator_OkemoZurs__okemoZursProtectedMigrationSteps__block_invoke_14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = +[HDKeyValueEntity generateNewDatabaseIdentifier];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT ROWID FROM sync_identities WHERE hardware_identifier = %@('00000000-0000-0000-0000-000000000000') AND database_identifier = %@('00000000-0000-0000-0000-000000000000') AND instance_discriminator = '' LIMIT 1", *MEMORY[0x277D10A68], *MEMORY[0x277D10A68]];;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = 0;
  v7 = [v3 transaction];
  v8 = [v7 unprotectedDatabase];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __73__HDDatabaseMigrator_OkemoZurs___initializeDatabaseIdentifiersWithError___block_invoke;
  v24[3] = &unk_278614620;
  v24[4] = v25;
  v9 = [v8 executeSQL:v6 error:a3 bindingHandler:0 enumerationHandler:v24];

  if (v9)
  {
    v10 = [v3 transaction];
    v11 = [v10 unprotectedDatabase];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __73__HDDatabaseMigrator_OkemoZurs___initializeDatabaseIdentifiersWithError___block_invoke_2;
    v21[3] = &unk_27862BF60;
    v12 = v5;
    v22 = v12;
    v23 = v25;
    v13 = [v11 executeUncachedSQL:@"INSERT OR REPLACE INTO key_value (domain error:key bindingHandler:value enumerationHandler:{mod_date, category, provenance, sync_identity) VALUES('DATABASE_CREATION', 'IDENTIFIER', ?, 0.0, 0, 0, ?);", a3, v21, 0}];

    if (v13)
    {
      v14 = [v3 transaction];
      v15 = [v14 protectedDatabase];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __73__HDDatabaseMigrator_OkemoZurs___initializeDatabaseIdentifiersWithError___block_invoke_3;
      v19[3] = &unk_278614860;
      v20 = v12;
      v16 = [v15 executeUncachedSQL:@"INSERT OR REPLACE INTO key_value_secure (domain error:key bindingHandler:value enumerationHandler:{mod_date, category, provenance) VALUES('DATABASE_CREATION', 'IDENTIFIER', ?, 0.0, 100, 0);", a3, v19, 0}];

      v17 = v16 ^ 1u;
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 1;
  }

  _Block_object_dispose(v25, 8);

  return v17;
}

void *__65__HDDatabaseMigrator_OkemoZurs__okemoZursProtectedMigrationSteps__block_invoke_15(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQL:@"UPDATE key_value_secure SET key = 'LastSessionEndDate' error:{value = (SELECT samples.end_date FROM workouts, samples WHERE workouts.data_id = samples.data_id ORDER BY samples.end_date DESC LIMIT 1) WHERE key = 'LastSessionAnchor';", a3}] ^ 1);
  }

  return result;
}

uint64_t __65__HDDatabaseMigrator_OkemoZurs__okemoZursProtectedMigrationSteps__block_invoke_16(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37[10] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [v3 transaction];
    v7 = [v6 unprotectedDatabase];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __70__HDDatabaseMigrator_OkemoZurs___clearSamplesWithoutSourcesWithError___block_invoke_2;
    v34[3] = &unk_278614098;
    v8 = v5;
    v35 = v8;
    v9 = [v7 executeUncachedSQL:@"SELECT rowid FROM sources" error:a3 bindingHandler:0 enumerationHandler:v34];

    if (v9)
    {
      v29 = a3;
      v27 = v8;
      if ([v8 count])
      {
        v10 = MEMORY[0x277CCACA8];
        v11 = [v8 componentsJoinedByString:{@", "}];
        v12 = [v10 stringWithFormat:@"WHERE source NOT IN (%@)", v11];
      }

      else
      {
        v12 = &stru_283BF39C8;
      }

      v30 = v12;
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"CREATE TEMPORARY TABLE temp_unattached_objects AS SELECT data_id FROM objects %@", v12];
      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM %@ WHERE %@ IN (SELECT * FROM temp_unattached_objects)", @"samples", @"data_id"];;
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM %@ WHERE %@ IN (SELECT * FROM temp_unattached_objects)", @"quantity_samples", @"data_id"];;
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM %@ WHERE %@ IN (SELECT * FROM temp_unattached_objects)", @"category_samples", @"data_id"];;
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM %@ WHERE %@ IN (SELECT * FROM temp_unattached_objects)", @"workouts", @"data_id"];;
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM %@ WHERE %@ IN (SELECT * FROM temp_unattached_objects)", @"workout_events", @"workout_id"];;
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM %@ WHERE %@ IN (SELECT * FROM temp_unattached_objects)", @"activity_caches", @"data_id"];;
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM %@ WHERE %@ IN (SELECT * FROM temp_unattached_objects)", @"correlations", @"object"];;
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM %@ WHERE %@ IN (SELECT * FROM temp_unattached_objects)", @"correlations", @"correlation"];;
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM %@ WHERE %@ IN (SELECT * FROM temp_unattached_objects)", @"metadata_values", @"object_id"];;
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM %@ WHERE %@ IN (SELECT * FROM temp_unattached_objects)", @"objects", @"data_id"];;
      v37[0] = v32;
      v37[1] = v13;
      v28 = v14;
      v37[2] = v31;
      v37[3] = v14;
      v20 = v15;
      v37[4] = v26;
      v37[5] = v15;
      v37[6] = v16;
      v37[7] = v17;
      v37[8] = v18;
      v37[9] = v19;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:10];
      v36[0] = v33;
      v36[1] = @"CREATE UNIQUE INDEX IF NOT EXISTS temp_index_0 ON temp_unattached_objects (data_id);";
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
      v23 = [v3 executeSQLStatements:v22 error:v29];

      if (v23)
      {
        [v3 executeSQLStatements:v21 error:0];
        [v3 executeSQL:@"DROP INDEX IF EXISTS temp_index_0;" error:0];
      }

      [v3 executeSQL:@"DROP TABLE IF EXISTS temp_unattached_objects;" error:0];
      v3 = v23 ^ 1u;

      v8 = v27;
    }

    else
    {
      v3 = 1;
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t __65__HDDatabaseMigrator_OkemoZurs__okemoZursProtectedMigrationSteps__block_invoke_17(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v9[0] = @"ALTER TABLE devices add column device_enabled BOOLEAN default 1;";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void *__65__HDDatabaseMigrator_OkemoZurs__okemoZursProtectedMigrationSteps__block_invoke_18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQL:@"INSERT INTO key_value_secure (category error:{provenance, domain, key, value, mod_date) SELECT 100, 0, 'OBJECT_ANCHOR', 'OBJECT_ANCHOR_8_2', MAX(data_id), strftime('%s', 'now', '-31 years') FROM objects;", a3}] ^ 1);
  }

  return result;
}

- (uint64_t)_updateDataCollectorKeyValueContextWithObject:(void *)object domain:(uint64_t)domain error:
{
  objectCopy = object;
  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a2 requiringSecureCoding:1 error:domain];
  if (v8)
  {
    transaction = [self transaction];
    unprotectedDatabase = [transaction unprotectedDatabase];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __92__HDDatabaseMigrator_OkemoZurs___updateDataCollectorKeyValueContextWithObject_domain_error___block_invoke;
    v13[3] = &unk_278613038;
    v14 = objectCopy;
    v15 = v8;
    v11 = [unprotectedDatabase executeUncachedSQL:@"INSERT INTO key_value (domain error:key bindingHandler:value enumerationHandler:{mod_date, category, provenance) VALUES (?, ?, ?, ?, ?, ?);", domain, v13, 0}];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __92__HDDatabaseMigrator_OkemoZurs___updateDataCollectorKeyValueContextWithObject_domain_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  HDSQLiteBindFoundationValueToStatement();
  v3 = *(a1 + 40);
  HDSQLiteBindFoundationValueToStatement();
  v4 = [MEMORY[0x277CBEAA8] date];
  HDSQLiteBindFoundationValueToStatement();

  HDSQLiteBindFoundationValueToStatement();

  return HDSQLiteBindFoundationValueToStatement();
}

void __61__HDDatabaseMigrator_OkemoZurs___lastReceivedPedometerDatum___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 firstObject];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  _HKInitializeLogging();
  v10 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(*(*(a1 + 40) + 8) + 40);
    v12 = v10;
    v13 = HKLogSafeDescription();
    v15 = 138412546;
    v16 = v13;
    v17 = 2048;
    v18 = [v5 count];
    _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "Received last pedometer datum of %@ (out of %ld results)", &v15, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v14 = *MEMORY[0x277D85DE8];
}

void __59__HDDatabaseMigrator_OkemoZurs___lastReceivedNatalieDatum___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 firstObject];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  _HKInitializeLogging();
  v10 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(*(*(a1 + 40) + 8) + 40);
    v12 = v10;
    v13 = HKLogSafeDescription();
    v15 = 138543618;
    v16 = v13;
    v17 = 2048;
    v18 = [v5 count];
    _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "Received last calorie datum of %{public}@ (out of %ld results)", &v15, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __73__HDDatabaseMigrator_OkemoZurs___initializeDatabaseIdentifiersWithError___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  v5 = *(*(*(a1 + 40) + 8) + 24);

  return sqlite3_bind_int64(a2, 2, v5);
}

uint64_t __70__HDDatabaseMigrator_OkemoZurs___clearSamplesWithoutSourcesWithError___block_invoke_2(uint64_t a1)
{
  v2 = HDSQLiteColumnAsInt64();
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:v2];
  [v3 addObject:v4];

  return 1;
}

- (id)eagleUnprotectedMigrationSteps
{
  array = [MEMORY[0x277CBEB18] array];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__HDDatabaseMigrator_Eagle__eagleUnprotectedMigrationSteps__block_invoke;
  v12[3] = &unk_27861B758;
  v12[4] = self;
  v4 = HDCreateMigrationStep(9007, 9200, v12);
  [array addObject:v4];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__HDDatabaseMigrator_Eagle__eagleUnprotectedMigrationSteps__block_invoke_2;
  v11[3] = &unk_27861B758;
  v11[4] = self;
  v5 = HDCreateMigrationStep(9200, 9201, v11);
  [array addObject:v5];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__HDDatabaseMigrator_Eagle__eagleUnprotectedMigrationSteps__block_invoke_3;
  v10[3] = &unk_27861B758;
  v10[4] = self;
  v6 = HDCreateMigrationStep(9201, 9202, v10);
  [array addObject:v6];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__HDDatabaseMigrator_Eagle__eagleUnprotectedMigrationSteps__block_invoke_4;
  v9[3] = &unk_27861B758;
  v9[4] = self;
  v7 = HDCreateMigrationStep(9202, 9203, v9);
  [array addObject:v7];

  return array;
}

- (uint64_t)_updateKeyValueEntityUniquenessWithProtectedDatabase:(uint64_t)database error:
{
  if (!self)
  {
    return 0;
  }

  v5 = @"key_value";
  if (a2)
  {
    v5 = @"key_value_secure";
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = v5;
  v8 = [v6 stringWithFormat:@"%@_old", v7];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_temp", v7];
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"ALTER TABLE %@ RENAME TO %@", v7, v8];;
  [v10 addObject:v11];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"CREATE TABLE IF NOT EXISTS %@ (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, category INTEGER NOT NULL, domain TEXT NOT NULL, key TEXT NOT NULL, value, provenance INTEGER NOT NULL, mod_date REAL NOT NULL, UNIQUE(category, domain, key))", v7];;
  [v10 addObject:v12];

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"CREATE TEMPORARY TABLE %@ (category INTEGER NOT NULL, domain TEXT NOT NULL, key TEXT NOT NULL, value, provenance INTEGER NOT NULL, mod_date REAL NOT NULL, UNIQUE(category, domain, key))", v9];;
  [v10 addObject:v13];

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT OR IGNORE INTO %@ (category, domain, key, value, provenance, mod_date) SELECT category, COALESCE(domain, ''), key, value, provenance, mod_date FROM %@ ORDER BY mod_date DESC", v9, v8];;
  [v10 addObject:v14];

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT OR REPLACE INTO %@ (rowid, category, domain, key, value, provenance, mod_date) SELECT old.rowid, merged.category, merged.domain, merged.key, merged.value, merged.provenance, merged.mod_date FROM %@ as old, %@ as merged WHERE merged.category = old.category AND merged.domain = COALESCE(old.domain, '') AND merged.key = old.key ORDER BY old.rowid ASC", v7, v8, v9];;

  [v10 addObject:v15];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"DROP TABLE %@", v9];;
  [v10 addObject:v16];

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"DROP TABLE %@", v8];;
  [v10 addObject:v17];

  v18 = [self executeSQLStatements:v10 error:database] ^ 1;
  return v18;
}

uint64_t __59__HDDatabaseMigrator_Eagle__eagleUnprotectedMigrationSteps__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v5 addObject:{@"CREATE TABLE IF NOT EXISTS sync_stores (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, uuid BLOB UNIQUE NOT NULL, type INTEGER NOT NULL, creation_date REAL NOT NULL);"}];
  [v5 addObject:@"ALTER TABLE nano_pairing RENAME TO nano_pairing_old;"];
  [v5 addObject:{@"CREATE TABLE IF NOT EXISTS nano_pairing (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, registry_uuid BLOB UNIQUE NOT NULL, persistent_uuid BLOB, health_uuid BLOB, sync_provenance INTEGER NOT NULL REFERENCES sync_stores (ROWID) ON DELETE CASCADE, restored INTEGER NOT NULL);"}];
  [v5 addObject:@"DELETE FROM nano_pairing_old WHERE rowid < (SELECT MAX(rowid) FROM nano_pairing_old);"];
  [v5 addObject:{@"INSERT INTO sync_stores (rowid, uuid, type, creation_date) SELECT 1, registry_uuid, 1, 0.0 FROM nano_pairing_old;"}];
  [v5 addObject:@"INSERT INTO nano_pairing SELECT * FROM nano_pairing_old;"];
  [v5 addObject:@"DROP TABLE nano_pairing_old"];
  v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;

  return v6;
}

void *__59__HDDatabaseMigrator_Eagle__eagleUnprotectedMigrationSteps__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQL:@"ALTER TABLE nano_pairing ADD COLUMN source_bundle_id TEXT;" error:a3] ^ 1);
  }

  return result;
}

uint64_t __59__HDDatabaseMigrator_Eagle__eagleUnprotectedMigrationSteps__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v5 addObject:@"ALTER TABLE nano_pairing ADD COLUMN ids_id TEXT;"];
  [v5 addObject:@"ALTER TABLE sync_anchors ADD COLUMN expected INTEGER;"];
  v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;

  return v6;
}

- (id)eagleProtectedMigrationSteps
{
  array = [MEMORY[0x277CBEB18] array];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __57__HDDatabaseMigrator_Eagle__eagleProtectedMigrationSteps__block_invoke;
  v19[3] = &unk_27861B758;
  v19[4] = self;
  v4 = HDCreateMigrationStep(9100, 9201, v19);
  [array addObject:v4];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __57__HDDatabaseMigrator_Eagle__eagleProtectedMigrationSteps__block_invoke_2;
  v18[3] = &unk_27861B758;
  v18[4] = self;
  v5 = HDCreateMigrationStep(9201, 9202, v18);
  [array addObject:v5];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __57__HDDatabaseMigrator_Eagle__eagleProtectedMigrationSteps__block_invoke_3;
  v17[3] = &unk_27861B758;
  v17[4] = self;
  v6 = HDCreateMigrationStep(9202, 9203, v17);
  [array addObject:v6];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __57__HDDatabaseMigrator_Eagle__eagleProtectedMigrationSteps__block_invoke_4;
  v16[3] = &unk_27861B758;
  v16[4] = self;
  v7 = HDCreateMigrationStep(9203, 9204, v16);
  [array addObject:v7];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__HDDatabaseMigrator_Eagle__eagleProtectedMigrationSteps__block_invoke_5;
  v15[3] = &unk_27861B758;
  v15[4] = self;
  v8 = HDCreateMigrationStep(9204, 9206, v15);
  [array addObject:v8];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__HDDatabaseMigrator_Eagle__eagleProtectedMigrationSteps__block_invoke_6;
  v14[3] = &unk_27861B758;
  v14[4] = self;
  v9 = HDCreateMigrationStep(9206, 9208, v14);
  [array addObject:v9];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__HDDatabaseMigrator_Eagle__eagleProtectedMigrationSteps__block_invoke_7;
  v13[3] = &unk_27861B758;
  v13[4] = self;
  v10 = HDCreateMigrationStep(9208, 9209, v13);
  [array addObject:v10];

  v11 = HDCreateMigrationStep(9209, 9210, &__block_literal_global_221);
  [array addObject:v11];

  return array;
}

void *__57__HDDatabaseMigrator_Eagle__eagleProtectedMigrationSteps__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQLStatements:&unk_283CB0258 error:a3] ^ 1);
  }

  return result;
}

void *__57__HDDatabaseMigrator_Eagle__eagleProtectedMigrationSteps__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQL:@"CREATE TABLE IF NOT EXISTS binary_samples (data_id INTEGER PRIMARY KEY error:{payload BLOB)", a3}] ^ 1);
  }

  return result;
}

void *__57__HDDatabaseMigrator_Eagle__eagleProtectedMigrationSteps__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQL:@"CREATE TABLE IF NOT EXISTS data_series (data_id INTEGER PRIMARY KEY REFERENCES samples(data_id) error:{frozen INTEGER NOT NULL DEFAULT 0, count INTEGER NOT NULL DEFAULT 0)", a3}] ^ 1);
  }

  return result;
}

void *__57__HDDatabaseMigrator_Eagle__eagleProtectedMigrationSteps__block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQLStatements:&unk_283CB0270 error:a3] ^ 1);
  }

  return result;
}

void *__57__HDDatabaseMigrator_Eagle__eagleProtectedMigrationSteps__block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQL:@"INSERT OR REPLACE INTO key_value_secure (category error:{domain, provenance, mod_date, key, value)                       SELECT category, domain, provenance, mod_date, 'LastSessionAnchor', (SELECT workouts.data_id FROM workouts INNER JOIN samples USING(data_id) ORDER BY samples.end_date DESC LIMIT 1)                       FROM key_value_secure WHERE key = 'LastSessionEndDate' ORDER BY value DESC;", a3}] ^ 1);
  }

  return result;
}

void *__57__HDDatabaseMigrator_Eagle__eagleProtectedMigrationSteps__block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQL:@"UPDATE key_value_secure SET category = 106 WHERE category = 103;" error:a3] ^ 1);
  }

  return result;
}

- (id)tigrisUnprotectedMigrationSteps
{
  array = [MEMORY[0x277CBEB18] array];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __61__HDDatabaseMigrator_Tigris__tigrisUnprotectedMigrationSteps__block_invoke;
  v30[3] = &unk_278615508;
  v30[4] = self;
  v4 = [HDDatabaseMigrationStep migrationStepFrom:10001 to:11000 handler:v30];
  [array addObject:v4];

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __61__HDDatabaseMigrator_Tigris__tigrisUnprotectedMigrationSteps__block_invoke_2;
  v29[3] = &unk_278615508;
  v29[4] = self;
  v5 = [HDDatabaseMigrationStep migrationStepWithForeignKeysDisabledFrom:11000 to:11001 handler:v29];
  [array addObject:v5];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __61__HDDatabaseMigrator_Tigris__tigrisUnprotectedMigrationSteps__block_invoke_3;
  v28[3] = &unk_278615508;
  v28[4] = self;
  v6 = [HDDatabaseMigrationStep migrationStepWithForeignKeysDisabledFrom:11001 to:11002 handler:v28];
  [array addObject:v6];

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __61__HDDatabaseMigrator_Tigris__tigrisUnprotectedMigrationSteps__block_invoke_4;
  v27[3] = &unk_278615508;
  v27[4] = self;
  v7 = [HDDatabaseMigrationStep migrationStepFrom:11002 to:11003 handler:v27];
  [array addObject:v7];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __61__HDDatabaseMigrator_Tigris__tigrisUnprotectedMigrationSteps__block_invoke_5;
  v26[3] = &unk_278615508;
  v26[4] = self;
  v8 = HDCreateMigrationStep(11003, 11004, v26);
  [array addObject:v8];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __61__HDDatabaseMigrator_Tigris__tigrisUnprotectedMigrationSteps__block_invoke_6;
  v25[3] = &unk_278615508;
  v25[4] = self;
  v9 = HDCreateMigrationStep(11004, 11005, v25);
  [array addObject:v9];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __61__HDDatabaseMigrator_Tigris__tigrisUnprotectedMigrationSteps__block_invoke_7;
  v24[3] = &unk_278615508;
  v24[4] = self;
  v10 = HDCreateMigrationStep(11005, 11006, v24);
  [array addObject:v10];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __61__HDDatabaseMigrator_Tigris__tigrisUnprotectedMigrationSteps__block_invoke_8;
  v23[3] = &unk_278615508;
  v23[4] = self;
  v11 = HDCreateMigrationStep(11006, 11007, v23);
  [array addObject:v11];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __61__HDDatabaseMigrator_Tigris__tigrisUnprotectedMigrationSteps__block_invoke_9;
  v22[3] = &unk_278615508;
  v22[4] = self;
  v12 = HDCreateMigrationStep(11007, 11009, v22);
  [array addObject:v12];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __61__HDDatabaseMigrator_Tigris__tigrisUnprotectedMigrationSteps__block_invoke_10;
  v21[3] = &unk_278615508;
  v21[4] = self;
  v13 = [HDDatabaseMigrationStep migrationStepFrom:11009 to:11010 handler:v21];
  [array addObject:v13];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __61__HDDatabaseMigrator_Tigris__tigrisUnprotectedMigrationSteps__block_invoke_11;
  v20[3] = &unk_278615508;
  v20[4] = self;
  v14 = HDCreateMigrationStep(11010, 11011, v20);
  [array addObject:v14];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __61__HDDatabaseMigrator_Tigris__tigrisUnprotectedMigrationSteps__block_invoke_12;
  v19[3] = &unk_278615508;
  v19[4] = self;
  v15 = HDCreateMigrationStep(11011, 11012, v19);
  [array addObject:v15];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __61__HDDatabaseMigrator_Tigris__tigrisUnprotectedMigrationSteps__block_invoke_13;
  v18[3] = &unk_278615508;
  v18[4] = self;
  v16 = HDCreateMigrationStep(11012, 11013, v18);
  [array addObject:v16];

  return array;
}

void *__61__HDDatabaseMigrator_Tigris__tigrisUnprotectedMigrationSteps__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQL:@"CREATE TABLE IF NOT EXISTS cloud_sync_stores (sync_store INTEGER PRIMARY KEY REFERENCES sync_stores (ROWID) ON DELETE CASCADE error:{server_change_token BLOB NOT NULL)", a3}] ^ 1);
  }

  return result;
}

uint64_t __61__HDDatabaseMigrator_Tigris__tigrisUnprotectedMigrationSteps__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v5 addObject:@"ALTER TABLE sources RENAME TO sources_old;"];
  [v5 addObject:{@"CREATE TABLE sources (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, uuid BLOB UNIQUE NOT NULL, bundle_id TEXT NOT NULL, name TEXT NOT NULL, source_options INTEGER NOT NULL, local_device INTEGER NOT NULL, product_type TEXT NOT NULL, deleted INTEGER NOT NULL, mod_date REAL NOT NULL, provenance INTEGER NOT NULL, sync_anchor INTEGER NOT NULL);"}];
  [v5 addObject:{@"INSERT INTO sources SELECT rowid, uuid, COALESCE(bundle_id, ''), COALESCE(name, ''), COALESCE(source_options, 0), COALESCE(local_device, 0), COALESCE(product_type, ''), deleted, COALESCE(mod_date, 0.0), provenance, rowid FROM sources_old;"}];
  [v5 addObject:@"DROP TABLE sources_old;"];
  v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;

  return v6;
}

uint64_t __61__HDDatabaseMigrator_Tigris__tigrisUnprotectedMigrationSteps__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v8[0] = @"DROP TABLE IF EXISTS cloud_sync_stores";
    v8[1] = @"CREATE TABLE IF NOT EXISTS cloud_sync_stores (sync_store INTEGER PRIMARY KEY REFERENCES sync_stores (ROWID) ON DELETE CASCADE, server_change_token BLOB, baseline_epoch INTEGER NOT NULL)";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
    LODWORD(a3) = [v3 executeSQLStatements:v5 error:a3];

    result = a3 ^ 1;
  }

  else
  {
    result = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __61__HDDatabaseMigrator_Tigris__tigrisUnprotectedMigrationSteps__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v5 addObject:@"ALTER TABLE authorization RENAME TO authorization_old;"];
  [v5 addObject:{@"CREATE TABLE authorization (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, source_id INTEGER NOT NULL REFERENCES sources(ROWID) ON DELETE CASCADE, object_type INTEGER NOT NULL, status INTEGER NOT NULL, request INTEGER NOT NULL, date_modified REAL NOT NULL, modification_epoch INTEGER NOT NULL, provenance INTEGER NOT NULL, object_anchor INTEGER NOT NULL DEFAULT 0, UNIQUE(source_id, object_type));"}];
  [v5 addObject:{@"INSERT INTO authorization (ROWID, source_id, object_type, status, request, date_modified, modification_epoch, provenance, object_anchor) SELECT ROWID, source_id, object_type, status, request, date_modified, 0, provenance, object_anchor FROM authorization_old;"}];
  [v5 addObject:@"DROP TABLE authorization_old;"];
  v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;

  return v6;
}

void *__61__HDDatabaseMigrator_Tigris__tigrisUnprotectedMigrationSteps__block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQL:@"ALTER TABLE cloud_sync_stores ADD COLUMN rebase_deadline REAL;" error:a3] ^ 1);
  }

  return result;
}

void *__61__HDDatabaseMigrator_Tigris__tigrisUnprotectedMigrationSteps__block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQL:@"ALTER TABLE cloud_sync_stores ADD COLUMN last_sync REAL;" error:a3] ^ 1);
  }

  return result;
}

void *__61__HDDatabaseMigrator_Tigris__tigrisUnprotectedMigrationSteps__block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQL:@"ALTER TABLE cloud_sync_stores ADD COLUMN empty_zones BLOB;" error:a3] ^ 1);
  }

  return result;
}

uint64_t __61__HDDatabaseMigrator_Tigris__tigrisUnprotectedMigrationSteps__block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v5 addObject:@"ALTER TABLE cloud_sync_stores ADD COLUMN last_check REAL;"];
  [v5 addObject:@"ALTER TABLE cloud_sync_stores ADD COLUMN owner_id TEXT;"];
  v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;

  return v6;
}

uint64_t __61__HDDatabaseMigrator_Tigris__tigrisUnprotectedMigrationSteps__block_invoke_9(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v5 addObject:@"DELETE FROM sync_stores WHERE EXISTS (SELECT * FROM cloud_sync_stores WHERE sync_stores.rowid = cloud_sync_stores.sync_store)"];
  [v5 addObject:@"DROP TABLE cloud_sync_stores"];
  [v5 addObject:{@"CREATE TABLE cloud_sync_stores (sync_store INTEGER PRIMARY KEY REFERENCES sync_stores (ROWID) ON DELETE CASCADE, server_change_token BLOB, baseline_epoch INTEGER NOT NULL, rebase_deadline REAL, last_sync REAL, empty_zones BLOB, last_check REAL, owner_id TEXT NOT NULL, container_id TEXT NOT NULL);"}];
  v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;

  return v6;
}

void *__61__HDDatabaseMigrator_Tigris__tigrisUnprotectedMigrationSteps__block_invoke_10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQL:@"UPDATE sources SET source_options=18 WHERE bundle_id='com.apple.private.health.fitnessmachine'" error:a3] ^ 1);
  }

  return result;
}

uint64_t __61__HDDatabaseMigrator_Tigris__tigrisUnprotectedMigrationSteps__block_invoke_11(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v5 addObject:@"ALTER TABLE cloud_sync_stores RENAME TO cloud_sync_stores_old;"];
  [v5 addObject:{@"CREATE TABLE cloud_sync_stores (sync_store INTEGER PRIMARY KEY REFERENCES sync_stores (ROWID) ON DELETE CASCADE, server_change_token BLOB, baseline_epoch INTEGER NOT NULL, rebase_deadline REAL, last_sync REAL, empty_zones BLOB, last_check REAL, owner_id TEXT NOT NULL, container_id TEXT NOT NULL, has_gap INTEGER NOT NULL);"}];
  [v5 addObject:{@"INSERT INTO cloud_sync_stores SELECT sync_store, server_change_token, baseline_epoch, rebase_deadline, last_sync, empty_zones, last_check, owner_id, container_id, 0 FROM cloud_sync_stores_old;"}];
  [v5 addObject:@"DROP TABLE cloud_sync_stores_old"];
  v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;

  return v6;
}

uint64_t __61__HDDatabaseMigrator_Tigris__tigrisUnprotectedMigrationSteps__block_invoke_12(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v5 addObject:@"ALTER TABLE sync_anchors RENAME TO sync_anchors_old;"];
  [v5 addObject:{@"CREATE TABLE sync_anchors (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, next INTEGER NOT NULL, acked INTEGER NOT NULL, received INTEGER NOT NULL, type INTEGER NOT NULL, store INTEGER NOT NULL, epoch INTEGER NOT NULL, UNIQUE(store, epoch, type));"}];
  [v5 addObject:{@"INSERT INTO sync_anchors SELECT ROWID, COALESCE(next, 0), COALESCE(acked, 0), COALESCE(received, 0), type, store, 0 FROM sync_anchors_old WHERE type IS NOT NULL AND store IS NOT NULL;"}];
  [v5 addObject:@"DROP TABLE sync_anchors_old"];
  [v5 addObject:@"UPDATE sync_anchors SET epoch = (SELECT baseline_epoch FROM cloud_sync_stores WHERE sync_store = store) WHERE EXISTS (SELECT * FROM cloud_sync_stores WHERE sync_store = store)"];
  v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;

  return v6;
}

uint64_t __61__HDDatabaseMigrator_Tigris__tigrisUnprotectedMigrationSteps__block_invoke_13(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v5 addObject:@"DROP INDEX IF EXISTS sources_bundle_id"];
  [v5 addObject:{@"CREATE INDEX sources_bundle_id_uuid ON sources (bundle_id, uuid)"}];
  v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;

  return v6;
}

- (id)tigrisProtectedMigrationSteps
{
  array = [MEMORY[0x277CBEB18] array];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __59__HDDatabaseMigrator_Tigris__tigrisProtectedMigrationSteps__block_invoke;
  v46[3] = &unk_278615508;
  v46[4] = self;
  v4 = [HDDatabaseMigrationStep migrationStepWithForeignKeysDisabledFrom:10200 to:11000 handler:v46];
  [array addObject:v4];

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __59__HDDatabaseMigrator_Tigris__tigrisProtectedMigrationSteps__block_invoke_2;
  v45[3] = &unk_278615508;
  v45[4] = self;
  v5 = [HDDatabaseMigrationStep migrationStepFrom:11000 to:11001 handler:v45];
  [array addObject:v5];

  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __59__HDDatabaseMigrator_Tigris__tigrisProtectedMigrationSteps__block_invoke_3;
  v44[3] = &unk_278615508;
  v44[4] = self;
  v6 = [HDDatabaseMigrationStep migrationStepFrom:11001 to:11002 handler:v44];
  [array addObject:v6];

  v7 = [HDDatabaseMigrationStep migrationStepFrom:11002 to:11003 handler:&__block_literal_global_239];
  [array addObject:v7];

  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __59__HDDatabaseMigrator_Tigris__tigrisProtectedMigrationSteps__block_invoke_5;
  v43[3] = &unk_278615508;
  v43[4] = self;
  v8 = [HDDatabaseMigrationStep migrationStepFrom:11003 to:11004 handler:v43];
  [array addObject:v8];

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __59__HDDatabaseMigrator_Tigris__tigrisProtectedMigrationSteps__block_invoke_6;
  v42[3] = &unk_278615508;
  v42[4] = self;
  v9 = [HDDatabaseMigrationStep migrationStepFrom:11004 to:11005 handler:v42];
  [array addObject:v9];

  v10 = [HDDatabaseMigrationStep migrationStepFrom:11005 to:11007 handler:&__block_literal_global_389_1];
  [array addObject:v10];

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __59__HDDatabaseMigrator_Tigris__tigrisProtectedMigrationSteps__block_invoke_8;
  v41[3] = &unk_278615508;
  v41[4] = self;
  v11 = [HDDatabaseMigrationStep migrationStepFrom:11007 to:11008 handler:v41];
  [array addObject:v11];

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __59__HDDatabaseMigrator_Tigris__tigrisProtectedMigrationSteps__block_invoke_9;
  v40[3] = &unk_278615508;
  v40[4] = self;
  v12 = [HDDatabaseMigrationStep migrationStepFrom:11008 to:11009 handler:v40];
  [array addObject:v12];

  v13 = HDCreateMigrationStep(11009, 11010, &__block_literal_global_391);
  [array addObject:v13];

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __59__HDDatabaseMigrator_Tigris__tigrisProtectedMigrationSteps__block_invoke_11;
  v39[3] = &unk_278615508;
  v39[4] = self;
  v14 = [HDDatabaseMigrationStep migrationStepFrom:11010 to:11011 handler:v39];
  [array addObject:v14];

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __59__HDDatabaseMigrator_Tigris__tigrisProtectedMigrationSteps__block_invoke_12;
  v38[3] = &unk_278615508;
  v38[4] = self;
  v15 = [HDDatabaseMigrationStep migrationStepFrom:11011 to:11012 handler:v38];
  [array addObject:v15];

  v16 = [HDDatabaseMigrationStep migrationStepFrom:11012 to:11013 handler:&__block_literal_global_393_0];
  [array addObject:v16];

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __59__HDDatabaseMigrator_Tigris__tigrisProtectedMigrationSteps__block_invoke_14;
  v37[3] = &unk_278615508;
  v37[4] = self;
  v17 = HDCreateMigrationStep(11013, 11014, v37);
  [array addObject:v17];

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __59__HDDatabaseMigrator_Tigris__tigrisProtectedMigrationSteps__block_invoke_15;
  v36[3] = &unk_278615508;
  v36[4] = self;
  v18 = HDCreateMigrationStep(11014, 11015, v36);
  [array addObject:v18];

  v19 = HDCreateMigrationStep(11015, 11028, &__block_literal_global_395_0);
  [array addObject:v19];

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __59__HDDatabaseMigrator_Tigris__tigrisProtectedMigrationSteps__block_invoke_17;
  v35[3] = &unk_278615508;
  v35[4] = self;
  v20 = [HDDatabaseMigrationStep migrationStepFrom:11028 to:11029 handler:v35];
  [array addObject:v20];

  v21 = [HDDatabaseMigrationStep migrationStepFrom:11029 to:11033 handler:&__block_literal_global_397];
  [array addObject:v21];

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __59__HDDatabaseMigrator_Tigris__tigrisProtectedMigrationSteps__block_invoke_19;
  v34[3] = &unk_278615508;
  v34[4] = self;
  v22 = [HDDatabaseMigrationStep migrationStepFrom:11033 to:11035 handler:v34];
  [array addObject:v22];

  v23 = [HDDatabaseMigrationStep migrationStepFrom:11035 to:11036 handler:&__block_literal_global_399];
  [array addObject:v23];

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __59__HDDatabaseMigrator_Tigris__tigrisProtectedMigrationSteps__block_invoke_21;
  v33[3] = &unk_278615508;
  v33[4] = self;
  v24 = [HDDatabaseMigrationStep migrationStepFrom:11036 to:11040 handler:v33];
  [array addObject:v24];

  v25 = [HDDatabaseMigrationStep migrationStepFrom:11040 to:11048 handler:&__block_literal_global_401];
  [array addObject:v25];

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __59__HDDatabaseMigrator_Tigris__tigrisProtectedMigrationSteps__block_invoke_23;
  v32[3] = &unk_278615508;
  v32[4] = self;
  v26 = [HDDatabaseMigrationStep migrationStepFrom:11048 to:11049 handler:v32];
  [array addObject:v26];

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __59__HDDatabaseMigrator_Tigris__tigrisProtectedMigrationSteps__block_invoke_24;
  v31[3] = &unk_278615508;
  v31[4] = self;
  v27 = [HDDatabaseMigrationStep migrationStepFrom:11049 to:11050 handler:v31];
  [array addObject:v27];

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __59__HDDatabaseMigrator_Tigris__tigrisProtectedMigrationSteps__block_invoke_25;
  v30[3] = &unk_278615508;
  v30[4] = self;
  v28 = [HDDatabaseMigrationStep migrationStepFrom:11050 to:11051 handler:v30];
  [array addObject:v28];

  return array;
}

uint64_t __59__HDDatabaseMigrator_Tigris__tigrisProtectedMigrationSteps__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v8[0] = @"ALTER TABLE data_provenances RENAME TO data_provenances_old";
    v8[1] = @"CREATE TABLE IF NOT EXISTS data_provenances (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, sync_provenance INTEGER NOT NULL, origin_product_type TEXT NOT NULL, origin_build TEXT NOT NULL, local_product_type TEXT NOT NULL, local_build TEXT NOT NULL, source_id INTEGER NOT NULL, device_id INTEGER NOT NULL, source_version TEXT NOT NULL, tz_name TEXT NOT NULL, origin_major_version INTEGER NOT NULL, origin_minor_version INTEGER NOT NULL, origin_patch_version INTEGER NOT NULL, UNIQUE(sync_provenance, origin_product_type, origin_build, local_product_type, local_build, source_id, device_id, source_version, tz_name, origin_major_version, origin_minor_version, origin_patch_version))";
    v8[2] = @"INSERT INTO data_provenances (rowid, sync_provenance, origin_product_type, origin_build, local_product_type, local_build, source_id, device_id, source_version, tz_name, origin_major_version, origin_minor_version, origin_patch_version) SELECT rowid, sync_provenance, origin_product_type, origin_build, local_product_type, local_build, source_id, device_id, source_version, tz_name, -1, 0, 0 FROM data_provenances_old;";
    v8[3] = @"DROP TABLE IF EXISTS data_provenances_old;";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:4];
    LODWORD(a3) = [v3 executeSQLStatements:v5 error:a3];

    result = a3 ^ 1;
  }

  else
  {
    result = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void *__59__HDDatabaseMigrator_Tigris__tigrisProtectedMigrationSteps__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQL:@"CREATE TABLE IF NOT EXISTS external_sync_ids (object_id INTEGER NOT NULL REFERENCES objects (data_id) ON DELETE CASCADE error:{source_id INTEGER NOT NULL, sid TEXT NOT NULL, version REAL NOT NULL, current_flag INTEGER)", a3}] ^ 1);
  }

  return result;
}

uint64_t __59__HDDatabaseMigrator_Tigris__tigrisProtectedMigrationSteps__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = [*(a1 + 32) transaction];
  v6 = [v5 protectedDatabase];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__HDDatabaseMigrator_Tigris___updateOriginVersionsWithError___block_invoke;
  v8[3] = &unk_2786247F0;
  v8[4] = v3;
  LODWORD(a3) = [v6 executeSQL:@"SELECT DISTINCT origin_build error:origin_product_type FROM data_provenances WHERE origin_major_version=-1 AND origin_minor_version=0 AND origin_patch_version=0" bindingHandler:a3 enumerationHandler:{0, v8}];

  return a3 ^ 1;
}

uint64_t __59__HDDatabaseMigrator_Tigris__tigrisProtectedMigrationSteps__block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v5 addObject:@"ALTER TABLE activity_caches RENAME TO activity_caches_old"];
  [v5 addObject:{@"CREATE TABLE IF NOT EXISTS activity_caches (data_id INTEGER PRIMARY KEY, cache_index INTEGER, energy_burned REAL, brisk_minutes REAL, active_hours REAL, steps REAL, vulcan_count REAL, vulcan_condition INTEGER, energy_burned_goal REAL, energy_burned_goal_date REAL, brisk_minutes_goal REAL, active_hours_goal REAL, walk_distance REAL, deep_breathing_duration REAL, active_energy_burned_anchor INTEGER, active_hours_anchor INTEGER, brisk_minutes_anchor INTEGER, energy_burned_goal_anchor INTEGER, step_count_anchor INTEGER, vulcan_count_anchor INTEGER, walking_and_running_distance_anchor INTEGER, workout_anchor INTEGER, deep_breathing_session_anchor INTEGER, flights INTEGER, flights_anchor INTEGER, energy_burned_stats BLOB, brisk_minutes_stats BLOB)"}];
  [v5 addObject:{@"INSERT INTO activity_caches (data_id, cache_index, energy_burned, brisk_minutes, active_hours, steps, vulcan_count, vulcan_condition, energy_burned_goal, energy_burned_goal_date, brisk_minutes_goal, active_hours_goal, walk_distance, active_energy_burned_anchor, active_hours_anchor, brisk_minutes_anchor, energy_burned_goal_anchor, step_count_anchor, vulcan_count_anchor, walking_and_running_distance_anchor, workout_anchor, flights, flights_anchor) SELECT data_id, cache_index, energy_burned, brisk_minutes, active_hours, steps, vulcan_count, vulcan_condition, energy_burned_goal, energy_burned_goal_date, brisk_minutes_goal, active_hours_goal, walk_distance, active_energy_burned_anchor, active_hours_anchor, brisk_minutes_anchor, energy_burned_goal_anchor, step_count_anchor, vulcan_count_anchor, walking_and_running_distance_anchor, workout_anchor, flights, flights_anchor from activity_caches_old;"}];
  [v5 addObject:@"DROP TABLE activity_caches_old"];
  v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;

  return v6;
}

uint64_t __59__HDDatabaseMigrator_Tigris__tigrisProtectedMigrationSteps__block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v8[0] = @"DROP TABLE IF EXISTS external_sync_ids";
    v8[1] = @"CREATE TABLE IF NOT EXISTS external_sync_ids (object_id INTEGER PRIMARY KEY REFERENCES objects (data_id) ON DELETE CASCADE, source_id INTEGER NOT NULL, object_code INTEGER NOT NULL, sid TEXT NOT NULL, version REAL NOT NULL, deleted INTEGER NON NULL)";
    v8[2] = @"CREATE INDEX IF NOT EXISTS external_sync_ids_source_object_code_sid_deleted ON external_sync_ids (source_id, object_code, sid, deleted)";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];
    LODWORD(a3) = [v3 executeSQLStatements:v5 error:a3];

    result = a3 ^ 1;
  }

  else
  {
    result = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __59__HDDatabaseMigrator_Tigris__tigrisProtectedMigrationSteps__block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v8[0] = @"ALTER TABLE workout_events RENAME TO workout_events_old;";
    v8[1] = @"CREATE TABLE IF NOT EXISTS workout_events (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, workout_id INTEGER, date REAL, type INTEGER, w_step_style INTEGER, duration REAL NOT NULL);";
    v8[2] = @"INSERT INTO workout_events (workout_id, date, type, w_step_style, duration) SELECT workout_id, date, type, w_step_style, 0 FROM workout_events_old;";
    v8[3] = @"DROP TABLE IF EXISTS workout_events_old;";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:4];
    LODWORD(a3) = [v3 executeSQLStatements:v5 error:a3];

    result = a3 ^ 1;
  }

  else
  {
    result = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __59__HDDatabaseMigrator_Tigris__tigrisProtectedMigrationSteps__block_invoke_9(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v8[0] = @"ALTER TABLE metadata_values ADD COLUMN data_value BLOB";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    LODWORD(a3) = [v3 executeSQLStatements:v5 error:a3];

    result = a3 ^ 1;
  }

  else
  {
    result = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __59__HDDatabaseMigrator_Tigris__tigrisProtectedMigrationSteps__block_invoke_11(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v5 addObject:{@"CREATE TABLE IF NOT EXISTS pending_associations (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, parent_uuid BLOB NOT NULL, child_uuid BLOB NOT NULL, provenance INTEGER NOT NULL, UNIQUE(parent_uuid, child_uuid));"}];
  [v5 addObject:@"CREATE INDEX IF NOT EXISTS pending_associations_child ON pending_associations (child_uuid);"];
  v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;

  return v6;
}

uint64_t __59__HDDatabaseMigrator_Tigris__tigrisProtectedMigrationSteps__block_invoke_12(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v8[0] = @"ALTER TABLE workouts ADD COLUMN total_flights_climbed REAL;";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    LODWORD(a3) = [v3 executeSQLStatements:v5 error:a3];

    result = a3 ^ 1;
  }

  else
  {
    result = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void *__59__HDDatabaseMigrator_Tigris__tigrisProtectedMigrationSteps__block_invoke_17(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQLStatements:&unk_283CB0318 error:a3] ^ 1);
  }

  return result;
}

uint64_t __59__HDDatabaseMigrator_Tigris__tigrisProtectedMigrationSteps__block_invoke_19(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v5 addObject:@"ALTER TABLE activity_caches RENAME TO activity_caches_old"];
  [v5 addObject:{@"CREATE TABLE IF NOT EXISTS activity_caches (data_id INTEGER PRIMARY KEY, cache_index INTEGER, energy_burned REAL, brisk_minutes REAL, active_hours REAL, steps REAL, vulcan_count REAL, vulcan_condition INTEGER, energy_burned_goal REAL, energy_burned_goal_date REAL, brisk_minutes_goal REAL, active_hours_goal REAL, walk_distance REAL, deep_breathing_duration REAL, flights INTEGER, energy_burned_stats BLOB, brisk_minutes_stats BLOB)"}];
  [v5 addObject:{@"INSERT INTO activity_caches SELECT data_id, cache_index, energy_burned, brisk_minutes, active_hours, steps, vulcan_count, vulcan_condition, energy_burned_goal, energy_burned_goal_date, brisk_minutes_goal, active_hours_goal, walk_distance, deep_breathing_duration, flights, energy_burned_stats, brisk_minutes_stats FROM activity_caches_old;"}];
  [v5 addObject:@"DROP TABLE activity_caches_old"];
  v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;

  return v6;
}

uint64_t __59__HDDatabaseMigrator_Tigris__tigrisProtectedMigrationSteps__block_invoke_21(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v5 addObject:@"ALTER TABLE workout_events RENAME TO workout_events_old;"];
  [v5 addObject:@"ALTER TABLE workout_events_old ADD COLUMN metadata BLOB;"];
  if ([v3 executeSQLStatements:v5 error:a3])
  {
    v6 = [v3 transaction];
    v7 = [v6 protectedDatabase];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __84__HDDatabaseMigrator_Tigris___addArbitraryMetadataSupportForWorkoutEventsWithError___block_invoke;
    v12[3] = &unk_2786247F0;
    v12[4] = v3;
    v8 = [v7 executeSQL:@"SELECT * FROM workout_events_old WHERE w_step_style IS NOT NULL" error:a3 bindingHandler:0 enumerationHandler:v12];
  }

  else
  {
    v8 = 0;
  }

  [v5 removeAllObjects];
  [v5 addObject:{@"CREATE TABLE IF NOT EXISTS workout_events (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, workout_id INTEGER, date REAL NOT NULL, type INTEGER, duration REAL NOT NULL, metadata BLOB);"}];
  [v5 addObject:{@"INSERT INTO workout_events (workout_id, date, type, duration, metadata) SELECT workout_id, date, type, duration, metadata FROM workout_events_old;"}];
  [v5 addObject:@"DROP TABLE IF EXISTS workout_events_old;"];
  if (v8)
  {
    v9 = [v3 executeSQLStatements:v5 error:a3];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 ^ 1u;

  return v10;
}

void *__59__HDDatabaseMigrator_Tigris__tigrisProtectedMigrationSteps__block_invoke_23(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQL:@"DROP TABLE IF EXISTS trusted_fitness_machines" error:a3] ^ 1);
  }

  return result;
}

void *__59__HDDatabaseMigrator_Tigris__tigrisProtectedMigrationSteps__block_invoke_24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result executeSQL:@"UPDATE metadata_values SET numerical_value=2 WHERE key_ID=(SELECT ROWID FROM metadata_keys WHERE key='HKVO2MaxTestType') AND numerical_value=4" error:a3] ^ 1);
  }

  return result;
}

uint64_t __59__HDDatabaseMigrator_Tigris__tigrisProtectedMigrationSteps__block_invoke_25(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v5 addObject:@"ALTER TABLE activity_caches RENAME TO activity_caches_old"];
  [v5 addObject:{@"CREATE TABLE IF NOT EXISTS activity_caches (data_id INTEGER PRIMARY KEY, cache_index INTEGER, sequence INTEGER NOT NULL, energy_burned REAL, brisk_minutes REAL, active_hours REAL, steps REAL, vulcan_count REAL, vulcan_condition INTEGER, energy_burned_goal REAL, energy_burned_goal_date REAL, brisk_minutes_goal REAL, active_hours_goal REAL, walk_distance REAL, deep_breathing_duration REAL, flights INTEGER, energy_burned_stats BLOB, brisk_minutes_stats BLOB)"}];
  [v5 addObject:{@"INSERT INTO activity_caches SELECT data_id, cache_index, 1, energy_burned, brisk_minutes, active_hours, steps, vulcan_count, vulcan_condition, energy_burned_goal, energy_burned_goal_date, brisk_minutes_goal, active_hours_goal, walk_distance, deep_breathing_duration, flights, energy_burned_stats, brisk_minutes_stats FROM activity_caches_old;"}];
  [v5 addObject:@"DROP TABLE activity_caches_old"];
  v6 = [v3 executeSQLStatements:v5 error:a3] ^ 1;

  return v6;
}

uint64_t __61__HDDatabaseMigrator_Tigris___updateOriginVersionsWithError___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x22AAC6C90](a2, 0);
  v7 = MEMORY[0x22AAC6C90](a2, 1);
  v19 = 0uLL;
  v20 = 0;
  HDVersionFromBuildStringForProductType(v6, v7, &v19);
  *buf = v19;
  v22 = v20;
  if (HKNSOperatingSystemVersionIsUnknown())
  {
    if (v6 != @"UnknownBuild" && (!@"UnknownBuild" || ([(__CFString *)v6 isEqualToString:?]& 1) == 0))
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v6;
        _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "Unexpected failure in migrating origin build to system versions, build string: %@", buf, 0xCu);
      }
    }

    v9 = 1;
  }

  else
  {
    v10 = [*(a1 + 32) transaction];
    v11 = [v10 protectedDatabase];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __61__HDDatabaseMigrator_Tigris___updateOriginVersionsWithError___block_invoke_423;
    v14[3] = &unk_27862EB70;
    v17 = v19;
    v18 = v20;
    v15 = v6;
    v16 = v7;
    v9 = [v11 executeSQL:@"UPDATE OR IGNORE data_provenances SET origin_major_version=? error:origin_minor_version=? bindingHandler:origin_patch_version=? WHERE origin_build=? AND origin_product_type=?" enumerationHandler:{a3, v14, 0}];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __61__HDDatabaseMigrator_Tigris___updateOriginVersionsWithError___block_invoke_423(void *a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, a1[6]);
  sqlite3_bind_int64(a2, 2, a1[7]);
  sqlite3_bind_int64(a2, 3, a1[8]);
  v4 = a1[4];
  HDSQLiteBindFoundationValueToStatement();
  v5 = a1[5];

  return HDSQLiteBindFoundationValueToStatement();
}

uint64_t __84__HDDatabaseMigrator_Tigris___addArbitraryMetadataSupportForWorkoutEventsWithError___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = HDSQLiteColumnAsInt64();
  v17 = @"HKSwimmingStrokeStyle";
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnWithNameAsInt64()];
  v18[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];

  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:a3];
  if (v8)
  {
    v9 = [*(a1 + 32) transaction];
    v10 = [v9 protectedDatabase];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __84__HDDatabaseMigrator_Tigris___addArbitraryMetadataSupportForWorkoutEventsWithError___block_invoke_2;
    v14[3] = &unk_278615A20;
    v15 = v8;
    v16 = v5;
    v11 = [v10 executeSQL:@"UPDATE workout_events_old SET metadata = ? WHERE rowid = ?" error:a3 bindingHandler:v14 enumerationHandler:0];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t __84__HDDatabaseMigrator_Tigris___addArbitraryMetadataSupportForWorkoutEventsWithError___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  v5 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 2, v5);
}

- (id)corryProtectedMigrationSteps
{
  array = [MEMORY[0x277CBEB18] array];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__HDDatabaseMigrator_Corry__corryProtectedMigrationSteps__block_invoke;
  v10[3] = &unk_278615508;
  v10[4] = self;
  v4 = HDCreateMigrationStep(10100, 10200, v10);
  [array addObject:v4];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__HDDatabaseMigrator_Corry__corryProtectedMigrationSteps__block_invoke_2;
  v9[3] = &unk_278615508;
  v9[4] = self;
  v5 = HDCreateMigrationStep(10200, 10201, v9);
  [array addObject:v5];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__HDDatabaseMigrator_Corry__corryProtectedMigrationSteps__block_invoke_3;
  v8[3] = &unk_278615508;
  v8[4] = self;
  v6 = HDCreateMigrationStep(10201, 10202, v8);
  [array addObject:v6];

  return array;
}

uint64_t __57__HDDatabaseMigrator_Corry__corryProtectedMigrationSteps__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    [v3 performHFDMigrationToVersion:10200 handler:&__block_literal_global_243 error:a3];
  }

  return 0;
}

@end