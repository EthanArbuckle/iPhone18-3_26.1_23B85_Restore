@interface HDRacePreviousRouteSchemaProvider
+ (id)databaseEntitiesForProtectionClass:(int64_t)class;
+ (void)registerMigrationStepsForProtectionClass:(int64_t)class migrator:(id)migrator;
@end

@implementation HDRacePreviousRouteSchemaProvider

+ (id)databaseEntitiesForProtectionClass:(int64_t)class
{
  v6[4] = *MEMORY[0x277D85DE8];
  if (class == 2)
  {
    v6[0] = objc_opt_class();
    v6[1] = objc_opt_class();
    v6[2] = objc_opt_class();
    v6[3] = objc_opt_class();
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (void)registerMigrationStepsForProtectionClass:(int64_t)class migrator:(id)migrator
{
  if (class == 2)
  {
    migratorCopy = migrator;
    objc_opt_self();
    [migratorCopy addMigrationForSchema:@"RacePreviousRoute" toVersion:11 foreignKeyStatus:0 handler:&__block_literal_global_9];

    v6 = migratorCopy;
    objc_opt_self();
    [v6 addMigrationForSchema:@"RacePreviousRoute" toVersion:12 foreignKeyStatus:0 handler:&__block_literal_global_328];

    v7 = v6;
    objc_opt_self();
    [v7 addMigrationForSchema:@"RacePreviousRoute" toVersion:13 foreignKeyStatus:0 handler:&__block_literal_global_336];

    v8 = v7;
    objc_opt_self();
    [v8 addMigrationForSchema:@"RacePreviousRoute" toVersion:14 foreignKeyStatus:0 handler:&__block_literal_global_356];

    v9 = v8;
    objc_opt_self();
    [v9 addMigrationForSchema:@"RacePreviousRoute" toVersion:15 foreignKeyStatus:0 handler:&__block_literal_global_471];

    v10 = v9;
    objc_opt_self();
    [v10 addMigrationForSchema:@"RacePreviousRoute" toVersion:16 foreignKeyStatus:0 handler:&__block_literal_global_497];
  }
}

uint64_t __83__HDRacePreviousRouteSchemaProvider__addWorkoutAndRacingClusterTablesWithMigrator___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = [a3 protectedDatabase];
  LODWORD(a5) = [v6 executeSQLStatements:&unk_283CAE5C0 error:a5];

  return a5 ^ 1;
}

uint64_t __74__HDRacePreviousRouteSchemaProvider__addGenerationQueueTableWithMigrator___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = [a3 protectedDatabase];
  LODWORD(a5) = [v6 executeSQLStatements:&unk_283CAE5D8 error:a5];

  return a5 ^ 1;
}

uint64_t __80__HDRacePreviousRouteSchemaProvider__addConcreteClusterSyncAnchorsWithMigrator___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = [a3 protectedDatabase];
  LODWORD(a5) = [v6 executeSQLStatements:&unk_283CAE5F0 error:a5];

  return a5 ^ 1;
}

uint64_t __72__HDRacePreviousRouteSchemaProvider__addRouteSnapshotTableWithMigrator___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  v8 = a3;
  v9 = [v8 protectedDatabase];
  v10 = 1;
  if ([v9 executeSQLStatements:&unk_283CAE608 error:a5])
  {
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x2020000000;
    v34[3] = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 1;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __72__HDRacePreviousRouteSchemaProvider__addRouteSnapshotTableWithMigrator___block_invoke_2;
    v24[3] = &unk_2786148B0;
    v11 = v9;
    v25 = v11;
    v26 = @"INSERT INTO RacePreviousRoute_route_snapshot (data) VALUES (?)";
    v28 = &v30;
    v29 = v34;
    v27 = @"INSERT INTO RacePreviousRoute_workout_cluster_new (uuid, relevance, last_workout_id, best_workout_id, snapshot_id, route_label, modified_date) VALUES (?, ?, ?, ?, ?, ?, ?)";
    if ([v11 executeUncachedSQL:@"SELECT uuid error:relevance bindingHandler:last_workout_id enumerationHandler:{best_workout_id, route_snapshot, route_label, modified_date FROM RacePreviousRoute_workout_cluster", a5, 0, v24}] && *(v31 + 24))
    {
      v10 = 1;
      if ([v11 executeUncachedSQL:@"INSERT INTO RacePreviousRoute_concrete_cluster_new (uuid error:workout_cluster_uuid bindingHandler:relevance enumerationHandler:{workout_activity_type, workout_cluster_size, last_workout_uuid, last_workout_date, last_workout_distance, last_workout_duration, last_route_key, best_workout_uuid, best_workout_date, best_workout_distance, best_workout_duration, best_route_key, snapshot_id, route_label, modified_date, sync_provenance, frozen, sync_anchor, relevance_anchor) SELECT cc.uuid, workout_cluster_uuid, cc.relevance, workout_activity_type, workout_cluster_size, last_workout_uuid, last_workout_date, last_workout_distance, last_workout_duration, last_route_key, best_workout_uuid, best_workout_date, best_workout_distance, best_workout_duration, best_route_key, nwc.snapshot_id, cc.route_label, cc.modified_date, sync_provenance, frozen, sync_anchor, relevance_anchor FROM RacePreviousRoute_concrete_cluster cc  INNER JOIN RacePreviousRoute_workout_cluster_new nwc ON cc.workout_cluster_uuid = nwc.uuid", a5, 0, 0}])
      {
        v20 = 0;
        v21 = &v20;
        v22 = 0x2020000000;
        v23 = 1;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __72__HDRacePreviousRouteSchemaProvider__addRouteSnapshotTableWithMigrator___block_invoke_5;
        v14[3] = &unk_2786148B0;
        v12 = v11;
        v15 = v12;
        v16 = @"INSERT INTO RacePreviousRoute_route_snapshot (data) VALUES (?)";
        v18 = &v20;
        v19 = v34;
        v17 = @"INSERT INTO RacePreviousRoute_concrete_cluster_new (uuid, workout_cluster_uuid, relevance, workout_activity_type, workout_cluster_size, last_workout_uuid, last_workout_date, last_workout_distance, last_workout_duration, last_route_key, best_workout_uuid, best_workout_date, best_workout_distance, best_workout_duration, best_route_key, snapshot_id, route_label, modified_date, sync_provenance, frozen, sync_anchor, relevance_anchor) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        if ([v12 executeUncachedSQL:@"SELECT uuid error:workout_cluster_uuid bindingHandler:relevance enumerationHandler:{workout_activity_type, workout_cluster_size, last_workout_uuid, last_workout_date, last_workout_distance, last_workout_duration, last_route_key, best_workout_uuid, best_workout_date, best_workout_distance, best_workout_duration, best_route_key, route_snapshot, route_label, modified_date, sync_provenance, frozen, sync_anchor, relevance_anchor FROM RacePreviousRoute_concrete_cluster WHERE uuid NOT IN (SELECT uuid FROM RacePreviousRoute_concrete_cluster_new)", a5, 0, v14}] && *(v21 + 24))
        {
          v10 = [v12 executeSQLStatements:&unk_283CAE620 error:a5] ^ 1;
        }

        else
        {
          v10 = 1;
        }

        _Block_object_dispose(&v20, 8);
      }
    }

    else
    {
      v10 = 1;
    }

    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(v34, 8);
  }

  return v10;
}

uint64_t __72__HDRacePreviousRouteSchemaProvider__addRouteSnapshotTableWithMigrator___block_invoke_2(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = HDSQLiteColumnWithNameAsData();
  v6 = a1[4];
  v7 = a1[5];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __72__HDRacePreviousRouteSchemaProvider__addRouteSnapshotTableWithMigrator___block_invoke_3;
  v32[3] = &unk_278614860;
  v8 = v5;
  v33 = v8;
  if ([v6 executeSQL:v7 error:a3 bindingHandler:v32 enumerationHandler:0])
  {
    ++*(*(a1[8] + 8) + 24);
    v9 = HDSQLiteColumnWithNameAsUUID();
    HDSQLiteColumnWithNameAsDouble();
    v11 = v10;
    v12 = HDSQLiteColumnWithNameAsInt64();
    v13 = HDSQLiteColumnWithNameAsInt64();
    v14 = HDSQLiteColumnWithNameAsString();
    v15 = HDSQLiteColumnWithNameAsDate();
    v16 = a1[4];
    v23 = a1[6];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __72__HDRacePreviousRouteSchemaProvider__addRouteSnapshotTableWithMigrator___block_invoke_4;
    v24[3] = &unk_278614888;
    v17 = v9;
    v29 = v11;
    v30 = v12;
    v31 = v13;
    v18 = a1[8];
    v25 = v17;
    v28 = v18;
    v19 = v14;
    v26 = v19;
    v20 = v15;
    v27 = v20;
    v21 = [v16 executeSQL:v23 error:a3 bindingHandler:v24 enumerationHandler:0];
    if ((v21 & 1) == 0)
    {
      *(*(a1[7] + 8) + 24) = 0;
    }
  }

  else
  {
    v21 = 0;
    *(*(a1[7] + 8) + 24) = 0;
  }

  return v21;
}

uint64_t __72__HDRacePreviousRouteSchemaProvider__addRouteSnapshotTableWithMigrator___block_invoke_4(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_double(a2, 2, *(a1 + 64));
  sqlite3_bind_int64(a2, 3, *(a1 + 72));
  sqlite3_bind_int64(a2, 4, *(a1 + 80));
  sqlite3_bind_int64(a2, 5, *(*(*(a1 + 56) + 8) + 24));
  v5 = *(a1 + 40);
  HDSQLiteBindFoundationValueToStatement();
  v6 = *(a1 + 48);

  return HDSQLiteBindFoundationValueToStatement();
}

uint64_t __72__HDRacePreviousRouteSchemaProvider__addRouteSnapshotTableWithMigrator___block_invoke_5(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = HDSQLiteColumnWithNameAsData();
  v6 = a1[4];
  v7 = a1[5];
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __72__HDRacePreviousRouteSchemaProvider__addRouteSnapshotTableWithMigrator___block_invoke_6;
  v73[3] = &unk_278614860;
  v8 = v5;
  v74 = v8;
  if ([v6 executeSQL:v7 error:a3 bindingHandler:v73 enumerationHandler:0])
  {
    v49 = v8;
    ++*(*(a1[8] + 8) + 24);
    v9 = HDSQLiteColumnWithNameAsUUID();
    v10 = HDSQLiteColumnWithNameAsUUID();
    HDSQLiteColumnWithNameAsDouble();
    v12 = v11;
    v13 = HDSQLiteColumnWithNameAsInt64();
    v14 = HDSQLiteColumnWithNameAsInt64();
    HDSQLiteColumnWithNameAsUUID();
    v15 = v48 = a3;
    v16 = HDSQLiteColumnWithNameAsDate();
    HDSQLiteColumnWithNameAsDouble();
    v18 = v17;
    HDSQLiteColumnWithNameAsDouble();
    v20 = v19;
    v46 = HDSQLiteColumnWithNameAsInt64();
    v21 = HDSQLiteColumnWithNameAsUUID();
    v45 = HDSQLiteColumnWithNameAsDate();
    HDSQLiteColumnWithNameAsDouble();
    v23 = v22;
    HDSQLiteColumnWithNameAsDouble();
    v25 = v24;
    v44 = HDSQLiteColumnWithNameAsInt64();
    v43 = HDSQLiteColumnWithNameAsString();
    v42 = HDSQLiteColumnWithNameAsDate();
    v41 = HDSQLiteColumnWithNameAsInt64();
    v40 = HDSQLiteColumnWithNameAsInt64();
    v39 = HDSQLiteColumnWithNameAsInt64();
    v26 = HDSQLiteColumnWithNameAsInt64();
    v27 = a1[4];
    v38 = a1[6];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __72__HDRacePreviousRouteSchemaProvider__addRouteSnapshotTableWithMigrator___block_invoke_7;
    v50[3] = &unk_2786148D8;
    v47 = v9;
    v51 = v47;
    v28 = v10;
    v52 = v28;
    v60 = v12;
    v61 = v13;
    v62 = v14;
    v29 = v15;
    v53 = v29;
    v30 = v16;
    v54 = v30;
    v63 = v18;
    v64 = v20;
    v65 = v46;
    v31 = v21;
    v55 = v31;
    v32 = v45;
    v66 = v23;
    v67 = v25;
    v68 = v44;
    v33 = a1[8];
    v56 = v32;
    v59 = v33;
    v34 = v43;
    v57 = v34;
    v35 = v42;
    v58 = v35;
    v69 = v41;
    v70 = v40;
    v71 = v39;
    v72 = v26;
    v36 = [v27 executeSQL:v38 error:v48 bindingHandler:v50 enumerationHandler:0];
    if ((v36 & 1) == 0)
    {
      *(*(a1[7] + 8) + 24) = 0;
    }

    v8 = v49;
  }

  else
  {
    v36 = 0;
    *(*(a1[7] + 8) + 24) = 0;
  }

  return v36;
}

uint64_t __72__HDRacePreviousRouteSchemaProvider__addRouteSnapshotTableWithMigrator___block_invoke_7(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  v5 = *(a1 + 40);
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_double(a2, 3, *(a1 + 104));
  sqlite3_bind_int64(a2, 4, *(a1 + 112));
  sqlite3_bind_int64(a2, 5, *(a1 + 120));
  v6 = *(a1 + 48);
  HDSQLiteBindFoundationValueToStatement();
  v7 = *(a1 + 56);
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_double(a2, 8, *(a1 + 128));
  sqlite3_bind_double(a2, 9, *(a1 + 136));
  sqlite3_bind_int64(a2, 10, *(a1 + 144));
  v8 = *(a1 + 64);
  HDSQLiteBindFoundationValueToStatement();
  v9 = *(a1 + 72);
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_double(a2, 13, *(a1 + 152));
  sqlite3_bind_double(a2, 14, *(a1 + 160));
  sqlite3_bind_int64(a2, 15, *(a1 + 168));
  sqlite3_bind_int64(a2, 16, *(*(*(a1 + 96) + 8) + 24));
  v10 = *(a1 + 80);
  HDSQLiteBindFoundationValueToStatement();
  v11 = *(a1 + 88);
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_int64(a2, 19, *(a1 + 176));
  sqlite3_bind_int64(a2, 20, *(a1 + 184));
  sqlite3_bind_int64(a2, 21, *(a1 + 192));
  v12 = *(a1 + 200);

  return sqlite3_bind_int64(a2, 22, v12);
}

uint64_t __66__HDRacePreviousRouteSchemaProvider__addWorkoutTableWithMigrator___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3;
  v7 = [v6 protectedDatabase];
  v8 = [v7 executeSQLStatements:&unk_283CAE638 error:a5];

  if (v8)
  {
    v9 = [v6 protectedDatabase];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66__HDRacePreviousRouteSchemaProvider__addWorkoutTableWithMigrator___block_invoke_2;
    v13[3] = &unk_278614098;
    v10 = v9;
    v14 = v10;
    if ([v10 executeUncachedSQL:@"SELECT uuid error:workout_cluster_uuid bindingHandler:relevance enumerationHandler:{workout_activity_type, workout_cluster_size, last_workout_uuid, last_workout_date, last_workout_distance, last_workout_duration, last_route_key, best_workout_uuid, best_workout_date, best_workout_distance, best_workout_duration, best_route_key, snapshot_id, route_label, modified_date, sync_provenance, frozen, sync_anchor, relevance_anchor FROM RacePreviousRoute_concrete_cluster", a5, 0, v13}])
    {
      v11 = [v10 executeSQLStatements:&unk_283CAE650 error:a5] ^ 1;
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

  return v11;
}

uint64_t __66__HDRacePreviousRouteSchemaProvider__addWorkoutTableWithMigrator___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = HDSQLiteColumnWithNameAsUUID();
  v40 = HDSQLiteColumnWithNameAsUUID();
  HDSQLiteColumnWithNameAsDouble();
  v7 = v6;
  v38 = HDSQLiteColumnWithNameAsInt64();
  v37 = HDSQLiteColumnWithNameAsInt64();
  v8 = HDSQLiteColumnWithNameAsUUID();
  v42 = HDSQLiteColumnWithNameAsDate();
  HDSQLiteColumnWithNameAsDouble();
  v10 = v9;
  HDSQLiteColumnWithNameAsDouble();
  v12 = v11;
  v13 = HDSQLiteColumnWithNameAsInt64();
  v43 = HDSQLiteColumnWithNameAsUUID();
  v41 = HDSQLiteColumnWithNameAsDate();
  HDSQLiteColumnWithNameAsDouble();
  v15 = v14;
  HDSQLiteColumnWithNameAsDouble();
  v17 = v16;
  v18 = HDSQLiteColumnWithNameAsInt64();
  v36 = HDSQLiteColumnWithNameAsInt64();
  v19 = HDSQLiteColumnWithNameAsString();
  v20 = HDSQLiteColumnWithNameAsDate();
  v35 = HDSQLiteColumnWithNameAsInt64();
  v34 = HDSQLiteColumnWithNameAsInt64();
  v33 = HDSQLiteColumnWithNameAsInt64();
  v32 = HDSQLiteColumnWithNameAsInt64();
  v21 = *(a1 + 32);
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __66__HDRacePreviousRouteSchemaProvider__addWorkoutTableWithMigrator___block_invoke_3;
  v69[3] = &unk_278613B58;
  v22 = v8;
  v70 = v22;
  v71 = v13;
  if ([v21 executeSQL:@"INSERT INTO RacePreviousRoute_workout (workout_uuid error:route_key bindingHandler:date_to_delete) VALUES (? enumerationHandler:{?, ?)", a3, v69, 0}])
  {
    v39 = v5;
    v23 = [*(a1 + 32) lastInsertRowID];
    v24 = v23;
    if (v18 != v13)
    {
      v25 = *(a1 + 32);
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __66__HDRacePreviousRouteSchemaProvider__addWorkoutTableWithMigrator___block_invoke_4;
      v67[3] = &unk_278613B58;
      v68[0] = v43;
      v68[1] = v18;
      if (![v25 executeSQL:@"INSERT INTO RacePreviousRoute_workout (workout_uuid error:route_key bindingHandler:date_to_delete) VALUES (? enumerationHandler:{?, ?)", a3, v67, 0}])
      {
        v30 = 0;
        v27 = v68;
        v29 = v23;
        v28 = v40;
        goto LABEL_8;
      }

      v24 = [*(a1 + 32) lastInsertRowID];
    }

    v26 = *(a1 + 32);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __66__HDRacePreviousRouteSchemaProvider__addWorkoutTableWithMigrator___block_invoke_5;
    v44[3] = &unk_278614900;
    v27 = &v45;
    v45 = v39;
    v28 = v40;
    v46 = v40;
    v55 = v7;
    v56 = v38;
    v57 = v37;
    v47 = v22;
    v48 = v42;
    v58 = v10;
    v59 = v12;
    v49 = v23;
    v50 = v43;
    v51 = v41;
    v60 = v15;
    v61 = v17;
    v29 = v24;
    v52 = v29;
    v62 = v36;
    v53 = v19;
    v54 = v20;
    v63 = v35;
    v64 = v34;
    v65 = v33;
    v66 = v32;
    v30 = [v26 executeSQL:@"INSERT INTO RacePreviousRoute_concrete_cluster_new (uuid error:workout_cluster_uuid bindingHandler:relevance enumerationHandler:{workout_activity_type, workout_cluster_size, last_workout_uuid, last_workout_date, last_workout_distance, last_workout_duration, last_workout_rowid, best_workout_uuid, best_workout_date, best_workout_distance, best_workout_duration, best_workout_rowid, snapshot_id, route_label, modified_date, sync_provenance, frozen, sync_anchor, relevance_anchor) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", a3, v44, 0}];

LABEL_8:
    v5 = v39;
    goto LABEL_9;
  }

  v30 = 0;
  v28 = v40;
LABEL_9:

  return v30;
}

uint64_t __66__HDRacePreviousRouteSchemaProvider__addWorkoutTableWithMigrator___block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_int64(a2, 2, *(a1 + 40));

  return sqlite3_bind_null(a2, 3);
}

uint64_t __66__HDRacePreviousRouteSchemaProvider__addWorkoutTableWithMigrator___block_invoke_4(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_int64(a2, 2, *(a1 + 40));

  return sqlite3_bind_null(a2, 3);
}

uint64_t __66__HDRacePreviousRouteSchemaProvider__addWorkoutTableWithMigrator___block_invoke_5(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  v5 = *(a1 + 40);
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_double(a2, 3, *(a1 + 112));
  sqlite3_bind_int64(a2, 4, *(a1 + 120));
  sqlite3_bind_int64(a2, 5, *(a1 + 128));
  v6 = *(a1 + 48);
  HDSQLiteBindFoundationValueToStatement();
  v7 = *(a1 + 56);
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_double(a2, 8, *(a1 + 136));
  sqlite3_bind_double(a2, 9, *(a1 + 144));
  sqlite3_bind_int64(a2, 10, [*(a1 + 64) longLongValue]);
  v8 = *(a1 + 72);
  HDSQLiteBindFoundationValueToStatement();
  v9 = *(a1 + 80);
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_double(a2, 13, *(a1 + 152));
  sqlite3_bind_double(a2, 14, *(a1 + 160));
  sqlite3_bind_int64(a2, 15, [*(a1 + 88) longLongValue]);
  sqlite3_bind_int64(a2, 16, *(a1 + 168));
  v10 = *(a1 + 96);
  HDSQLiteBindFoundationValueToStatement();
  v11 = *(a1 + 104);
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_int64(a2, 19, *(a1 + 176));
  sqlite3_bind_int64(a2, 20, *(a1 + 184));
  sqlite3_bind_int64(a2, 21, *(a1 + 192));
  v12 = *(a1 + 200);

  return sqlite3_bind_int64(a2, 22, v12);
}

uint64_t __88__HDRacePreviousRouteSchemaProvider__addSyncIdentityToConcreteClusterTableWithMigrator___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [v8 protectedDatabase];
  if (![v9 executeUncachedSQL:@"CREATE TABLE RacePreviousRoute_concrete_cluster_new (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{uuid BLOB NOT NULL, workout_cluster_uuid BLOB NOT NULL, relevance REAL NOT NULL, workout_activity_type INTEGER NOT NULL, workout_cluster_size INTEGER NOT NULL, last_workout_uuid BLOB NOT NULL, last_workout_date REAL NOT NULL, last_workout_distance REAL NOT NULL, last_workout_duration REAL NOT NULL, last_workout_rowid INTEGER NOT NULL, best_workout_uuid BLOB NOT NULL, best_workout_date REAL NOT NULL, best_workout_distance REAL NOT NULL, best_workout_duration REAL NOT NULL, best_workout_rowid INTEGER NOT NULL, snapshot_id INTEGER NOT NULL REFERENCES RacePreviousRoute_route_snapshot (ROWID) ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED, route_label TEXT NOT NULL, modified_date REAL NOT NULL, sync_provenance INTEGER NOT NULL, frozen INTEGER NOT NULL, sync_anchor INTEGER NOT NULL, relevance_anchor INTEGER NOT NULL, sync_identity INTEGER NOT NULL, UNIQUE(uuid));", a5}] || (v10 = objc_msgSend(v7, "fetchLegacySyncIdentity:error:", v8, a5), v10 == -1))
  {
    v14 = 1;
  }

  else
  {
    v11 = v10;
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT INTO RacePreviousRoute_concrete_cluster_new (ROWID, uuid, workout_cluster_uuid, relevance, workout_activity_type, workout_cluster_size, last_workout_uuid, last_workout_date, last_workout_distance, last_workout_duration, last_workout_rowid, best_workout_uuid, best_workout_date, best_workout_distance, best_workout_duration, best_workout_rowid, snapshot_id, route_label, modified_date, sync_provenance, frozen, sync_anchor, relevance_anchor, sync_identity) SELECT ROWID, uuid, workout_cluster_uuid, relevance, workout_activity_type, workout_cluster_size, last_workout_uuid, last_workout_date, last_workout_distance, last_workout_duration, last_workout_rowid, best_workout_uuid, best_workout_date, best_workout_distance, best_workout_duration, best_workout_rowid, snapshot_id, route_label, modified_date, sync_provenance, frozen, sync_anchor, relevance_anchor, ? FROM RacePreviousRoute_concrete_cluster"];;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __88__HDRacePreviousRouteSchemaProvider__addSyncIdentityToConcreteClusterTableWithMigrator___block_invoke_2;
    v17[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
    v17[4] = v11;
    if ([v9 executeSQL:v12 error:a5 bindingHandler:v17 enumerationHandler:0])
    {
      v18[0] = @"DROP TABLE RacePreviousRoute_concrete_cluster;";
      v18[1] = @"ALTER TABLE RacePreviousRoute_concrete_cluster_new RENAME TO RacePreviousRoute_concrete_cluster;";
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
      v14 = [v9 executeSQLStatements:v13 error:a5] ^ 1;
    }

    else
    {
      v14 = 1;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

@end