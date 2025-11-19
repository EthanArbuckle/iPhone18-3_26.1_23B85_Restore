@interface HDWorkoutZonesAssociationSyncEntity
+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7;
+ (id)decodeSyncObjectWithData:(id)a3;
+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7;
@end

@implementation HDWorkoutZonesAssociationSyncEntity

+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7
{
  end = a4.end;
  start = a4.start;
  v12 = a3;
  v13 = a5;
  v23 = a6;
  v14 = [MEMORY[0x277CBEB18] array];
  v15 = +[HDWorkoutZonesAssociationEntity propertyForSyncIdentity];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = -1;
  v16 = [v13 database];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __114__HDWorkoutZonesAssociationSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke;
  v24[3] = &unk_27861D100;
  v17 = v15;
  v25 = v17;
  v18 = v12;
  v30 = start;
  v31 = end;
  v26 = v18;
  v29 = &v32;
  v19 = v13;
  v27 = v19;
  v20 = v14;
  v28 = v20;
  LODWORD(v13) = [(HDHealthEntity *)HDWorkoutZonesAssociationEntity performReadTransactionWithHealthDatabase:v16 error:a7 block:v24];

  if (v13)
  {
    v21 = [v23 sendCodableChange:v20 resultAnchor:v33[3] sequence:0 done:1 error:a7];
  }

  else
  {
    v21 = 0;
  }

  _Block_object_dispose(&v32, 8);
  return v21;
}

BOOL __114__HDWorkoutZonesAssociationSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v21[0] = *(a1 + 32);
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v7 = *(*(a1 + 64) + 8) + 24;
  v8 = *(a1 + 40);
  v9 = [*(a1 + 48) database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __114__HDWorkoutZonesAssociationSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2;
  v16[3] = &unk_27861D0D8;
  v17 = v5;
  v18 = *(a1 + 32);
  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  v11 = *(a1 + 72);
  v10 = *(a1 + 80);
  v12 = v5;
  v13 = [(HDHealthEntity *)HDWorkoutZonesAssociationEntity enumerateEntitiesForSyncWithProperties:v6 predicate:0 session:v8 syncAnchorRange:v11 limit:v10 lastSyncAnchor:0 healthDatabase:v7 error:v9 block:a3, v16];

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL __114__HDWorkoutZonesAssociationSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  v11 = [v10 workoutUUIDWithTransaction:*(a1 + 32) error:a8];
  if (v11)
  {
    v12 = [v10 zonesUUIDWithTransaction:*(a1 + 32) error:a8];
    if (v12)
    {
      v13 = *(a1 + 40);
      v14 = HDSQLiteColumnWithNameAsInt64();
      v15 = [*(a1 + 48) syncIdentityManager];
      v16 = [v15 identityForEntityID:v14 transaction:*(a1 + 32) error:a8];

      v17 = v16 != 0;
      if (v16)
      {
        v18 = objc_alloc_init(HDCodableWorkoutZonesAssociation);
        v19 = [v11 hk_dataForUUIDBytes];
        [(HDCodableWorkoutZonesAssociation *)v18 setWorkoutUUID:v19];

        v20 = [v12 hk_dataForUUIDBytes];
        [(HDCodableWorkoutZonesAssociation *)v18 setZonesSampleUUID:v20];

        v21 = [v16 identity];
        v22 = [v21 codableSyncIdentity];
        [(HDCodableWorkoutZonesAssociation *)v18 setSyncIdentity:v22];

        [*(a1 + 56) addObject:v18];
      }
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

  return v17;
}

+ (id)decodeSyncObjectWithData:(id)a3
{
  v3 = a3;
  v4 = [[HDCodableWorkoutZonesAssociation alloc] initWithData:v3];

  return v4;
}

+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = [a5 database];
  v11 = [(HDHealthEntity *)HDWorkoutZonesAssociationEntity nextSyncAnchorWithStartAnchor:a4 predicate:0 session:v9 healthDatabase:v10 error:a6];

  return v11;
}

+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7
{
  v10 = a3;
  v11 = a6;
  v12 = a5;
  v13 = [HDInsertWorkoutZonesAssociationOperation alloc];
  v14 = [v12 syncProvenance];

  v15 = [(HDInsertWorkoutZonesAssociationOperation *)v13 initWithCodableWorkoutZoneAssociations:v10 syncProvenance:v14];
  LODWORD(a7) = [(HDJournalableOperation *)v15 performOrJournalWithProfile:v11 error:a7];

  return a7 ^ 1;
}

@end