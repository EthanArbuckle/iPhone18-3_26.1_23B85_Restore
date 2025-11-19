@interface HDRaceRouteSnapshotEntity
+ (BOOL)pruneUnreachableDataWithTransaction:(id)a3 error:(id *)a4;
+ (id)insertSnapshotData:(id)a3 transaction:(id)a4 error:(id *)a5;
- (BOOL)deleteDataWithTransaction:(id)a3 error:(id *)a4;
- (BOOL)updateSnapshotData:(id)a3 transaction:(id)a4 error:(id *)a5;
- (id)snapshotDataWithTransaction:(id)a3 error:(id *)a4;
@end

@implementation HDRaceRouteSnapshotEntity

+ (id)insertSnapshotData:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v9 databaseForEntityClass:a1];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = -1;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __66__HDRaceRouteSnapshotEntity_insertSnapshotData_transaction_error___block_invoke;
  v20[3] = &unk_278614860;
  v11 = v8;
  v21 = v11;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __66__HDRaceRouteSnapshotEntity_insertSnapshotData_transaction_error___block_invoke_2;
  v19[3] = &unk_278614620;
  v19[4] = &v22;
  if ([v10 executeSQL:@"SELECT ROWID FROM RacePreviousRoute_route_snapshot WHERE data = ?" error:a5 bindingHandler:v20 enumerationHandler:v19])
  {
    if (v23[3] < 0)
    {
      v26[0] = @"data";
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __66__HDRaceRouteSnapshotEntity_insertSnapshotData_transaction_error___block_invoke_3;
      v17[3] = &unk_278614508;
      v18 = v11;
      v13 = [a1 insertOrReplaceEntity:0 database:v10 properties:v14 error:a5 bindingHandler:v17];
    }

    else
    {
      v12 = [HDRaceRouteSnapshotEntity alloc];
      v13 = [(HDSQLiteEntity *)v12 initWithPersistentID:v23[3]];
    }
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v22, 8);
  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (BOOL)pruneUnreachableDataWithTransaction:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCACA8];
  v7 = a3;
  v8 = +[HDWorkoutClusterEntity databaseTable];
  v9 = +[HDRaceRouteClusterEntity databaseTable];
  v10 = [v6 stringWithFormat:@"DELETE FROM RacePreviousRoute_route_snapshot WHERE (NOT EXISTS (SELECT * FROM %@ WHERE %@ = RacePreviousRoute_route_snapshot.ROWID)) AND (NOT EXISTS (SELECT * FROM %@ WHERE %@ = RacePreviousRoute_route_snapshot.ROWID))", v8, @"snapshot_id", v9, @"snapshot_id"];

  v11 = [v7 databaseForEntityClass:a1];

  LOBYTE(a4) = [v11 executeSQL:v10 error:a4 bindingHandler:0 enumerationHandler:0];
  return a4;
}

- (BOOL)updateSnapshotData:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v18[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v18[0] = @"data";
  v9 = MEMORY[0x277CBEA60];
  v10 = a4;
  v11 = [v9 arrayWithObjects:v18 count:1];
  v12 = [v10 databaseForEntity:self];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __66__HDRaceRouteSnapshotEntity_updateSnapshotData_transaction_error___block_invoke;
  v16[3] = &unk_278614508;
  v17 = v8;
  v13 = v8;
  LOBYTE(a5) = [(HDSQLiteEntity *)self updateProperties:v11 database:v12 error:a5 bindingHandler:v16];

  v14 = *MEMORY[0x277D85DE8];
  return a5;
}

- (id)snapshotDataWithTransaction:(id)a3 error:(id *)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__199;
  v17 = __Block_byref_object_dispose__199;
  v18 = 0;
  v19[0] = @"data";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v7 = [v5 databaseForEntity:self];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__HDRaceRouteSnapshotEntity_snapshotDataWithTransaction_error___block_invoke;
  v12[3] = &unk_278618B98;
  v12[4] = &v13;
  LODWORD(self) = [(HDSQLiteEntity *)self getValuesForProperties:v6 database:v7 handler:v12];

  if (self)
  {
    v8 = v14[5];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __63__HDRaceRouteSnapshotEntity_snapshotDataWithTransaction_error___block_invoke(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsData();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (BOOL)deleteDataWithTransaction:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCACA8];
  v7 = a3;
  v8 = +[HDWorkoutClusterEntity databaseTable];
  v9 = +[HDRaceRouteClusterEntity databaseTable];
  v10 = [v6 stringWithFormat:@"DELETE FROM RacePreviousRoute_route_snapshot WHERE ROWID = ? AND((SELECT COUNT(*) FROM %@ WHERE %@ = RacePreviousRoute_route_snapshot.ROWID) + (SELECT COUNT(*) FROM %@ WHERE %@ = RacePreviousRoute_route_snapshot.ROWID) <= 1)", v8, @"snapshot_id", v9, @"snapshot_id"];

  v11 = [v7 databaseForEntity:self];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__HDRaceRouteSnapshotEntity_deleteDataWithTransaction_error___block_invoke;
  v13[3] = &unk_278614860;
  v13[4] = self;
  LOBYTE(a4) = [v11 executeSQL:v10 error:a4 bindingHandler:v13 enumerationHandler:0];

  return a4;
}

uint64_t __61__HDRaceRouteSnapshotEntity_deleteDataWithTransaction_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) persistentID];

  return sqlite3_bind_int64(a2, 1, v3);
}

@end