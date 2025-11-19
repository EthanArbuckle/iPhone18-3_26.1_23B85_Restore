@interface HDHealthMedicationsPluginProtectedDatabaseSchema
- (NSArray)databaseEntities;
- (id)_getLegacySyncIdentityWithTransaction:(id)a3 errorOut:(id *)a4;
- (int64_t)_addCompatibilityVersionColumnsWithTransaction:(id)a3 error:(id *)a4;
- (int64_t)_addDisplayOptionsToMedicationScheduleTable:(id)a3 error:(id *)a4;
- (int64_t)_addScheduleTypeToMedicationScheduleTable:(id)a3 error:(id *)a4;
- (int64_t)_addUniqueConstraintToScheduleMedicationIdentifier:(id)a3 error:(id *)a4;
- (int64_t)_createMedicationDismissedPregnancyLactationInteractionsTableWithTransaction:(id)a3 error:(id *)a4;
- (int64_t)_createRemoteScheduleUnavailableRecordsTableWithTransaction:(id)a3 error:(id *)a4;
- (int64_t)_moveLifestyleFactorsFromUserDefaultsToKeyValueDomain:(id)a3 error:(id *)a4;
- (int64_t)_setInvalidSchedulesAsLocallyIncompatibleWithMaximumIntegerValue:(id)a3 error:(id *)a4;
- (int64_t)_sydney_addSyncIdentityToMedicationScheduleEntityWithTransaction:(id)a3 error:(id *)a4;
- (int64_t)_sydney_createMedicationDismissedInteractionsTableWithTransaction:(id)a3 error:(id *)a4;
- (int64_t)_sydney_dropAndReAddMedicationScheduleTableWithTransaction:(id)a3 error:(id *)a4;
- (int64_t)_sydney_dropMedicationIngredientsTableWithTransaction:(id)a3 error:(id *)a4;
- (int64_t)currentSchemaVersion;
- (void)registerMigrationStepsWithMigrator:(id)a3 schemaName:(id)a4;
@end

@implementation HDHealthMedicationsPluginProtectedDatabaseSchema

- (int64_t)currentSchemaVersion
{
  v2 = [MEMORY[0x277D115D0] sharedBehavior];
  v3 = [v2 medicationsFutureMigrationsEnabled];

  if (v3)
  {
    return 100000;
  }

  else
  {
    return 18300;
  }
}

- (NSArray)databaseEntities
{
  v5[6] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v5[4] = objc_opt_class();
  v5[5] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:6];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)registerMigrationStepsWithMigrator:(id)a3 schemaName:(id)a4
{
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __98__HDHealthMedicationsPluginProtectedDatabaseSchema_registerMigrationStepsWithMigrator_schemaName___block_invoke;
  v19[3] = &unk_2796CE640;
  v19[4] = self;
  v6 = a4;
  v7 = a3;
  [v7 addMigrationForSchema:v6 toVersion:16001 foreignKeyStatus:0 handler:v19];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __98__HDHealthMedicationsPluginProtectedDatabaseSchema_registerMigrationStepsWithMigrator_schemaName___block_invoke_2;
  v18[3] = &unk_2796CE640;
  v18[4] = self;
  [v7 addMigrationForSchema:v6 toVersion:16002 foreignKeyStatus:0 handler:v18];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __98__HDHealthMedicationsPluginProtectedDatabaseSchema_registerMigrationStepsWithMigrator_schemaName___block_invoke_3;
  v17[3] = &unk_2796CE640;
  v17[4] = self;
  [v7 addMigrationForSchema:v6 toVersion:16003 foreignKeyStatus:0 handler:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __98__HDHealthMedicationsPluginProtectedDatabaseSchema_registerMigrationStepsWithMigrator_schemaName___block_invoke_4;
  v16[3] = &unk_2796CE640;
  v16[4] = self;
  [v7 addMigrationForSchema:v6 toVersion:16004 foreignKeyStatus:1 handler:v16];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __98__HDHealthMedicationsPluginProtectedDatabaseSchema_registerMigrationStepsWithMigrator_schemaName___block_invoke_5;
  v15[3] = &unk_2796CE640;
  v15[4] = self;
  [v7 addMigrationForSchema:v6 toVersion:16400 foreignKeyStatus:1 handler:v15];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __98__HDHealthMedicationsPluginProtectedDatabaseSchema_registerMigrationStepsWithMigrator_schemaName___block_invoke_6;
  v14[3] = &unk_2796CE640;
  v14[4] = self;
  [v7 addMigrationForSchema:v6 toVersion:17009 foreignKeyStatus:0 handler:v14];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __98__HDHealthMedicationsPluginProtectedDatabaseSchema_registerMigrationStepsWithMigrator_schemaName___block_invoke_7;
  v13[3] = &unk_2796CE640;
  v13[4] = self;
  [v7 addMigrationForSchema:v6 toVersion:17011 foreignKeyStatus:1 handler:v13];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __98__HDHealthMedicationsPluginProtectedDatabaseSchema_registerMigrationStepsWithMigrator_schemaName___block_invoke_8;
  v12[3] = &unk_2796CE640;
  v12[4] = self;
  [v7 addMigrationForSchema:v6 toVersion:18000 foreignKeyStatus:1 handler:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __98__HDHealthMedicationsPluginProtectedDatabaseSchema_registerMigrationStepsWithMigrator_schemaName___block_invoke_9;
  v11[3] = &unk_2796CE640;
  v11[4] = self;
  [v7 addMigrationForSchema:v6 toVersion:18001 foreignKeyStatus:1 handler:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __98__HDHealthMedicationsPluginProtectedDatabaseSchema_registerMigrationStepsWithMigrator_schemaName___block_invoke_10;
  v10[3] = &unk_2796CE640;
  v10[4] = self;
  [v7 addMigrationForSchema:v6 toVersion:18002 foreignKeyStatus:0 handler:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __98__HDHealthMedicationsPluginProtectedDatabaseSchema_registerMigrationStepsWithMigrator_schemaName___block_invoke_11;
  v9[3] = &unk_2796CE640;
  v9[4] = self;
  [v7 addMigrationForSchema:v6 toVersion:18003 foreignKeyStatus:0 handler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __98__HDHealthMedicationsPluginProtectedDatabaseSchema_registerMigrationStepsWithMigrator_schemaName___block_invoke_12;
  v8[3] = &unk_2796CE640;
  v8[4] = self;
  [v7 addMigrationForSchema:v6 toVersion:18300 foreignKeyStatus:0 handler:v8];
}

- (id)_getLegacySyncIdentityWithTransaction:(id)a3 errorOut:(id *)a4
{
  v5 = a3;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT ROWID FROM sync_identities WHERE hardware_identifier = %@('00000000-0000-0000-0000-000000000000') AND database_identifier = %@('00000000-0000-0000-0000-000000000000') AND instance_discriminator = '' LIMIT 1", *MEMORY[0x277D10A68], *MEMORY[0x277D10A68]];;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = [v5 unprotectedDatabase];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __99__HDHealthMedicationsPluginProtectedDatabaseSchema__getLegacySyncIdentityWithTransaction_errorOut___block_invoke;
  v10[3] = &unk_2796CE5C8;
  v10[4] = &v11;
  LODWORD(a4) = [v7 executeSQL:v6 error:a4 bindingHandler:0 enumerationHandler:v10];

  if (a4)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:v12[3]];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v8;
}

- (int64_t)_sydney_dropMedicationIngredientsTableWithTransaction:(id)a3 error:(id *)a4
{
  v5 = [a3 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_2863C2D20 error:a4] ^ 1;

  return v6;
}

- (int64_t)_sydney_dropAndReAddMedicationScheduleTableWithTransaction:(id)a3 error:(id *)a4
{
  v5 = [a3 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_2863C2D38 error:a4] ^ 1;

  return v6;
}

- (int64_t)_sydney_createMedicationDismissedInteractionsTableWithTransaction:(id)a3 error:(id *)a4
{
  v5 = [a3 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_2863C2D50 error:a4] ^ 1;

  return v6;
}

- (int64_t)_sydney_addSyncIdentityToMedicationScheduleEntityWithTransaction:(id)a3 error:(id *)a4
{
  v19[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 protectedDatabase];
  if ([v7 executeUncachedSQL:@"CREATE TABLE medication_schedules_new (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{uuid BLOB UNIQUE NOT NULL, medication_uuid BLOB NOT NULL, medication_identifier TEXT NOT NULL, start_date_time REAL NOT NULL, end_date_time REAL, created_time_zone TEXT NOT NULL, frequency_type INTEGER NOT NULL, cycle_start_date_components BLOB, note TEXT, creation_date REAL NOT NULL, deleted INTEGER NOT NULL, sync_provenance INTEGER NOT NULL, sync_identity INTEGER NOT NULL)", a4}])
  {
    v8 = [(HDHealthMedicationsPluginProtectedDatabaseSchema *)self _getLegacySyncIdentityWithTransaction:v6 errorOut:a4];
    if (v8)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT INTO medication_schedules_new (ROWID, uuid, medication_uuid, medication_identifier, start_date_time, end_date_time, created_time_zone, frequency_type, cycle_start_date_components, note, creation_date, deleted, sync_provenance, sync_identity) SELECT ROWID, uuid, medication_uuid, medication_identifier, start_date_time, end_date_time, created_time_zone, frequency_type, cycle_start_date_components, note, creation_date, deleted, sync_provenance, ? FROM medication_schedules"];;
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __123__HDHealthMedicationsPluginProtectedDatabaseSchema__sydney_addSyncIdentityToMedicationScheduleEntityWithTransaction_error___block_invoke;
      v17 = &unk_2796CE028;
      v18 = v8;
      if ([v7 executeSQL:v9 error:a4 bindingHandler:&v14 enumerationHandler:0])
      {
        v19[0] = @"DROP TABLE medication_schedules;";
        v19[1] = @"ALTER TABLE medication_schedules_new RENAME TO medication_schedules;";
        v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:{2, v14, v15, v16, v17}];
        v11 = [v7 executeSQLStatements:v10 error:a4] ^ 1;
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t __123__HDHealthMedicationsPluginProtectedDatabaseSchema__sydney_addSyncIdentityToMedicationScheduleEntityWithTransaction_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) unsignedLongValue];

  return sqlite3_bind_int64(a2, 1, v3);
}

- (int64_t)_addCompatibilityVersionColumnsWithTransaction:(id)a3 error:(id *)a4
{
  v5 = [a3 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_2863C2D68 error:a4] ^ 1;

  return v6;
}

- (int64_t)_moveLifestyleFactorsFromUserDefaultsToKeyValueDomain:(id)a3 error:(id *)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v24 = [HDHealthMedicationsPluginProtectedDatabaseSchema _getLegacySyncIdentityWithTransaction:"_getLegacySyncIdentityWithTransaction:errorOut:" errorOut:?];
  if (v24)
  {
    v6 = objc_alloc(MEMORY[0x277CBEBD0]);
    v7 = [v6 initWithSuiteName:*MEMORY[0x277D114C8]];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v8 = [&unk_2863C2D80 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v34;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v34 != v10)
          {
            objc_enumerationMutation(&unk_2863C2D80);
          }

          v12 = *(*(&v33 + 1) + 8 * i);
          if ([v7 hk_keyExists:{v12, v24}])
          {
            v13 = [v7 BOOLForKey:v12];
            v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT OR REPLACE INTO key_value_secure (category, domain, key, value, provenance, sync_identity, mod_date) values (?, ?, ?, ?, ?, ?, ?)"];
            v15 = [v25 protectedDatabase];
            v30[0] = MEMORY[0x277D85DD0];
            v30[1] = 3221225472;
            v30[2] = __112__HDHealthMedicationsPluginProtectedDatabaseSchema__moveLifestyleFactorsFromUserDefaultsToKeyValueDomain_error___block_invoke;
            v30[3] = &unk_2796CE668;
            v30[4] = v12;
            v32 = v13;
            v31 = v24;
            v16 = [v15 executeSQL:v14 error:a4 bindingHandler:v30 enumerationHandler:0];

            if (!v16)
            {
              v21 = 1;
              goto LABEL_21;
            }
          }
        }

        v9 = [&unk_2863C2D80 countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = [&unk_2863C2D80 countByEnumeratingWithState:&v26 objects:v37 count:{16, v24}];
    if (v17)
    {
      v18 = v17;
      v19 = *v27;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(&unk_2863C2D80);
          }

          [v7 removeObjectForKey:*(*(&v26 + 1) + 8 * j)];
        }

        v18 = [&unk_2863C2D80 countByEnumeratingWithState:&v26 objects:v37 count:16];
      }

      while (v18);
    }

    v21 = 0;
LABEL_21:
  }

  else
  {
    v21 = 1;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t __112__HDHealthMedicationsPluginProtectedDatabaseSchema__moveLifestyleFactorsFromUserDefaultsToKeyValueDomain_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, 105);
  HDSQLiteBindStringToStatement();
  v4 = *(a1 + 32);
  HDSQLiteBindStringToStatement();
  sqlite3_bind_int(a2, 4, *(a1 + 48));
  sqlite3_bind_int(a2, 5, 0);
  sqlite3_bind_int64(a2, 6, [*(a1 + 40) unsignedLongValue]);
  Current = CFAbsoluteTimeGetCurrent();

  return sqlite3_bind_double(a2, 7, Current);
}

- (int64_t)_addUniqueConstraintToScheduleMedicationIdentifier:(id)a3 error:(id *)a4
{
  v15[6] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _HDCalculateMedicationScheduleSyncAnchorOffset(v5, a4);
  if (v6 < 0)
  {
    v12 = 1;
  }

  else
  {
    v7 = v6;
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT INTO medication_schedules_new (ROWID, uuid, medication_uuid, medication_identifier, start_date_time, end_date_time, created_time_zone, frequency_type, cycle_start_date_components, note, creation_date, deleted, sync_provenance, sync_identity, minimum_compatibility_version, origin_compatibility_version, sync_anchor)     SELECT ROWID, uuid, medication_uuid, medication_identifier, start_date_time, end_date_time, created_time_zone, frequency_type, cycle_start_date_components, note, max(creation_date), deleted, sync_provenance, sync_identity, minimum_compatibility_version, origin_compatibility_version, (ROWID + %lld)     FROM medication_schedules     WHERE deleted = 0     GROUP BY medication_identifier", v6];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT INTO medication_schedules_new (ROWID, uuid, medication_uuid, medication_identifier, start_date_time, end_date_time, created_time_zone, frequency_type, cycle_start_date_components, note, creation_date, deleted, sync_provenance, sync_identity, minimum_compatibility_version, origin_compatibility_version, sync_anchor)     SELECT ROWID, uuid, medication_uuid, null, start_date_time, end_date_time, created_time_zone, frequency_type, cycle_start_date_components, note, creation_date, deleted, sync_provenance, sync_identity, minimum_compatibility_version, origin_compatibility_version, (ROWID + %lld)     FROM medication_schedules     WHERE deleted = 1", v7];
    v10 = [v5 protectedDatabase];
    v15[0] = @"CREATE TABLE medication_schedules_new     (     ROWID                         INTEGER PRIMARY KEY AUTOINCREMENT,      uuid                          BLOB UNIQUE    NOT NULL,      medication_uuid               BLOB           NOT NULL,      medication_identifier         TEXT UNIQUE,      start_date_time               REAL           NOT NULL,      end_date_time                 REAL,      created_time_zone             TEXT           NOT NULL,      frequency_type                INTEGER        NOT NULL,      cycle_start_date_components   BLOB,      note                          TEXT,      creation_date                 REAL           NOT NULL,      deleted                       INTEGER        NOT NULL,      sync_provenance               INTEGER        NOT NULL,      sync_identity                 INTEGER        NOT NULL,      minimum_compatibility_version INTEGER        NOT NULL,      origin_compatibility_version  INTEGER        NOT NULL,      sync_anchor                   INTEGER UNIQUE NOT NULL     )";
    v15[1] = v8;
    v15[2] = v9;
    v15[3] = @"DELETE                      FROM medication_schedule_interval_data                      WHERE NOT EXISTS(SELECT *                      FROM medication_schedules_new                      WHERE medication_schedule_interval_data.schedule_id = medication_schedules_new.ROWID)";
    v15[4] = @"DROP TABLE medication_schedules";
    v15[5] = @"ALTER TABLE medication_schedules_new RENAME TO medication_schedules";
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:6];
    v12 = [v10 executeSQLStatements:v11 error:a4] ^ 1;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (int64_t)_addScheduleTypeToMedicationScheduleTable:(id)a3 error:(id *)a4
{
  v5 = [a3 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_2863C2D98 error:a4] ^ 1;

  return v6;
}

- (int64_t)_addDisplayOptionsToMedicationScheduleTable:(id)a3 error:(id *)a4
{
  v5 = [a3 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_2863C2DB0 error:a4] ^ 1;

  return v6;
}

- (int64_t)_createMedicationDismissedPregnancyLactationInteractionsTableWithTransaction:(id)a3 error:(id *)a4
{
  v5 = [a3 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_2863C2DC8 error:a4] ^ 1;

  return v6;
}

- (int64_t)_createRemoteScheduleUnavailableRecordsTableWithTransaction:(id)a3 error:(id *)a4
{
  v5 = [a3 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_2863C2DE0 error:a4] ^ 1;

  return v6;
}

- (int64_t)_setInvalidSchedulesAsLocallyIncompatibleWithMaximumIntegerValue:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = _HDCalculateMedicationScheduleSyncAnchorOffset(v5, a4);
  if (v6 < 0)
  {
    goto LABEL_4;
  }

  v7 = v6;
  v8 = [v5 protectedDatabase];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __123__HDHealthMedicationsPluginProtectedDatabaseSchema__setInvalidSchedulesAsLocallyIncompatibleWithMaximumIntegerValue_error___block_invoke;
  v20[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v20[4] = v7;
  v9 = [v8 executeSQL:@"UPDATE medication_schedules SET schedule_type = frequency_type error:sync_anchor = (sync_anchor + ?) WHERE schedule_type = 0 AND frequency_type != 0" bindingHandler:a4 enumerationHandler:{v20, 0}];

  if (!v9)
  {
LABEL_4:
    v15 = 1;
  }

  else
  {
    v10 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
    v11 = [v10 name];

    v12 = [v5 protectedDatabase];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __123__HDHealthMedicationsPluginProtectedDatabaseSchema__setInvalidSchedulesAsLocallyIncompatibleWithMaximumIntegerValue_error___block_invoke_2;
    v17[3] = &unk_2796CE690;
    v18 = v11;
    v19 = v7;
    v13 = v11;
    v14 = [v12 executeSQL:@"INSERT OR REPLACE INTO medication_schedules (uuid error:medication_uuid bindingHandler:medication_identifier enumerationHandler:{start_date_time, end_date_time, created_time_zone, frequency_type, cycle_start_date_components, note, creation_date, deleted, sync_provenance, sync_identity, minimum_compatibility_version, origin_compatibility_version, schedule_type, display_options, sync_anchor) SELECT uuid, medication_uuid, medication_identifier, 0.0, NULL, ?, 0, NULL, NULL, creation_date, deleted, sync_provenance, sync_identity, ?, ?, 0, 0, (sync_anchor + ?) FROM medication_schedules WHERE schedule_type = 0 AND frequency_type = 0 AND minimum_compatibility_version <= origin_compatibility_version AND deleted = 0", a4, v17, 0}];

    v15 = v14 ^ 1u;
  }

  return v15;
}

uint64_t __123__HDHealthMedicationsPluginProtectedDatabaseSchema__setInvalidSchedulesAsLocallyIncompatibleWithMaximumIntegerValue_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindStringToStatement();
  sqlite3_bind_int64(a2, 2, 0x7FFFFFFFLL);
  sqlite3_bind_int64(a2, 3, 1);
  v5 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 4, v5);
}

@end