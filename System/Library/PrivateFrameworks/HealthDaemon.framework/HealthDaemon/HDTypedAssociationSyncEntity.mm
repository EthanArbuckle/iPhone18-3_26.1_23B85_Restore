@interface HDTypedAssociationSyncEntity
+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7;
+ (id)_syncPredicateForSession:(uint64_t)a1;
+ (id)decodeSyncObjectWithData:(id)a3;
+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7;
@end

@implementation HDTypedAssociationSyncEntity

+ (id)_syncPredicateForSession:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = HDAssociationEntityPredicateForAssociationEntityForNotType(0);
  v4 = [v2 syncPredicate];
  v5 = [v4 defaultMaximumObjectAge];

  if (v5)
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = [v2 calendar];
    v8 = *MEMORY[0x277CCCEF0];
    v9 = [v2 startDate];
    v10 = [v7 hk_dateBySubtractingDays:v8 fromDate:v9];
    v11 = [v2 startDate];
    [v10 timeIntervalSinceDate:v11];
    v13 = [v6 numberWithDouble:-v12];

    v14 = [v2 startDate];
    [v13 doubleValue];
    v16 = [v14 dateByAddingTimeInterval:-v15];

    v17 = HDAssociationEntityPredicateForChildEndDate(6, v16);
    v18 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v3 otherPredicate:v17];
  }

  else
  {
    v18 = v3;
  }

  return v18;
}

+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7
{
  end = a4.end;
  start = a4.start;
  v11 = a3;
  v12 = a5;
  v30 = a6;
  v13 = [(HDTypedAssociationSyncEntity *)a1 _syncPredicateForSession:v11];
  v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = [v11 maxEncodedBytesPerCodableChangeForSyncEntityClass:a1];
  if (v16 >= 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 127;
  }

  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x2020000000;
  v59[3] = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = -1;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__82;
  v53 = __Block_byref_object_dispose__82;
  v54 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = [v12 database];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __107__HDTypedAssociationSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke;
  v36[3] = &unk_27861FB68;
  v19 = v13;
  v37 = v19;
  v45 = a1;
  v46 = start;
  v47 = end;
  v29 = v11;
  v38 = v29;
  v43 = &v55;
  v20 = v12;
  v39 = v20;
  v21 = v14;
  v40 = v21;
  v22 = v15;
  v41 = v22;
  v23 = v27;
  v42 = v23;
  v44 = v59;
  v48 = v17 >> 7;
  v24 = [(HDHealthEntity *)HDSyncIdentityEntity performReadTransactionWithHealthDatabase:v18 error:a7 block:v36];

  if (v24)
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __107__HDTypedAssociationSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_3;
    v32[3] = &unk_27861FB90;
    v33 = v22;
    v34 = v21;
    v35 = &v49;
    [v23 enumerateKeysAndObjectsUsingBlock:v32];
    v25 = [v30 sendCodableChange:v50[5] resultAnchor:v56[3] sequence:0 done:1 error:a7];
  }

  else
  {
    v25 = 0;
  }

  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(v59, 8);

  return v25;
}

BOOL __107__HDTypedAssociationSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 96);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(*(a1 + 80) + 8);
  v10 = [*(a1 + 48) database];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __107__HDTypedAssociationSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2;
  v18[3] = &unk_27861FB40;
  v19 = *(a1 + 56);
  v20 = *(a1 + 48);
  v21 = v5;
  v22 = *(a1 + 64);
  v11 = *(a1 + 72);
  v12 = *(a1 + 88);
  v23 = v11;
  v24 = v12;
  v25 = *(a1 + 120);
  v14 = *(a1 + 104);
  v13 = *(a1 + 112);
  v15 = v5;
  v16 = [HDAssociationEntity _enumerateTypedAssociationsWithPredicate:v8 syncEntityClass:v6 session:v7 syncAnchorRange:v14 lastSyncAnchor:v13 healthDatabase:v9 + 24 transaction:v10 error:v15 block:a3, v18];

  return v16;
}

uint64_t __107__HDTypedAssociationSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, _BYTE *a10, void *a11)
{
  v17 = a2;
  v42 = a3;
  v18 = a4;
  v19 = a9;
  v20 = [v17 UUIDString];
  if (v18)
  {
    [v18 UUIDString];
    v21 = v17;
    v22 = a5;
    v23 = a8;
    v24 = a6;
    v26 = v25 = v19;
    v27 = [v20 stringByAppendingString:v26];

    v19 = v25;
    a6 = v24;
    a8 = v23;
    a5 = v22;
    v17 = v21;
    v20 = v27;
  }

  v28 = [*(a1 + 32) objectForKeyedSubscript:v20];
  if (v28)
  {
    goto LABEL_6;
  }

  v40 = v19;
  v29 = [*(a1 + 40) syncIdentityManager];
  v30 = *(a1 + 48);
  v43 = 0;
  v31 = [v29 identityForEntityID:a5 transaction:v30 error:&v43];
  v32 = v43;

  if (v31)
  {
    [*(a1 + 32) setObject:v31 forKeyedSubscript:v20];

    v19 = v40;
LABEL_6:
    v33 = [[HDIntermediateSyncAssociation alloc] initWithAssociationUUID:v17 type:a7 behavior:a8 creationDate:v19 deleted:a6 destinationSubObjectUUID:v18];
    [*(a1 + 56) setObject:v33 forKeyedSubscript:v20];

    v34 = [*(a1 + 64) objectForKeyedSubscript:v20];
    if (!v34)
    {
      v34 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [*(a1 + 64) setObject:v34 forKeyedSubscript:v20];
    }

    [v34 hk_appendBytesWithUUID:v42];
    ++*(*(*(a1 + 72) + 8) + 24);
    v35 = *(a1 + 80);
    if (v35)
    {
      v36 = *(*(*(a1 + 72) + 8) + 24);
      v37 = 1;
      if (v36 >= v35)
      {
        *a10 = 1;
      }
    }

    else
    {
      v37 = 1;
    }

    goto LABEL_17;
  }

  v34 = v32;
  if (v34)
  {
    if (a11)
    {
      v38 = v34;
      *a11 = v34;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v37 = 0;
  v19 = v40;
LABEL_17:

  return v37;
}

void __107__HDTypedAssociationSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [HDCodableTypedObjectAssociation alloc];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];
  v12 = [(HDCodableTypedObjectAssociation *)v7 initWithIntermediateSyncAssociation:v8];

  [(HDCodableTypedObjectAssociation *)v12 setObjectUUIDs:v5];
  v9 = [*(a1 + 40) objectForKeyedSubscript:v6];

  v10 = [v9 identity];
  v11 = [v10 codableSyncIdentity];
  [(HDCodableTypedObjectAssociation *)v12 setSyncIdentity:v11];

  [*(*(*(a1 + 48) + 8) + 40) addObject:v12];
}

+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v23[2] = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a3;
  v12 = [(HDTypedAssociationSyncEntity *)a1 _syncPredicateForSession:v11];
  v13 = [MEMORY[0x277D10B60] isNotNullPredicateWithProperty:@"child_id_objects.uuid"];
  v14 = [MEMORY[0x277D10B60] isNotNullPredicateWithProperty:@"parent_id_objects.uuid"];
  v15 = MEMORY[0x277D10B20];
  v23[0] = v13;
  v23[1] = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v17 = [v15 predicateMatchingAllPredicates:v16];

  v18 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v17 otherPredicate:v12];

  v19 = [v10 database];

  v20 = [(HDHealthEntity *)HDAssociationEntity nextSyncAnchorWithStartAnchor:a4 predicate:v18 session:v11 healthDatabase:v19 error:a6];
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

+ (id)decodeSyncObjectWithData:(id)a3
{
  v3 = a3;
  v4 = [[HDCodableTypedObjectAssociation alloc] initWithData:v3];

  return v4;
}

+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [v10 associationManager];
  LODWORD(a7) = [v13 insertCodableTypedObjectAssociations:v12 syncStore:v11 profile:v10 error:a7];

  return a7 ^ 1;
}

@end