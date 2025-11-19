@interface HDLogicalSourceOrderSyncEntity
+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7;
+ (id)_sourceOrderSyncPredicateForSession:(uint64_t)a1;
+ (id)decodeSyncObjectWithData:(id)a3;
+ (id)syncEntityDependenciesForSyncProtocolVersion:(int)a3;
+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7;
@end

@implementation HDLogicalSourceOrderSyncEntity

+ (id)_sourceOrderSyncPredicateForSession:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 syncStore];
  v4 = [v3 protocolVersion];

  if (v4 > 5)
  {
    v7 = 0;
  }

  else
  {
    v5 = [v2 excludedSyncStores];
    v6 = [v5 hk_map:&__block_literal_global_415];

    v7 = [MEMORY[0x277D10B28] doesNotContainPredicateWithProperty:@"sources.provenance" values:v6];
  }

  return v7;
}

uint64_t __70__HDLogicalSourceOrderSyncEntity__sourceOrderSyncPredicateForSession___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 syncProvenance];

  return [v2 numberWithLongLong:v3];
}

+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7
{
  end = a4.end;
  start = a4.start;
  v72[5] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v38 = a1;
  v17 = [v12 maxEncodedBytesPerCodableChangeForSyncEntityClass:a1];
  v18 = v17;
  v71[0] = 0;
  v71[1] = v71;
  if (v17 >= 0)
  {
    v19 = v17;
  }

  else
  {
    v19 = v17 + 63;
  }

  v71[2] = 0x2020000000;
  v71[3] = -1;
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 0;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  v37 = [v13 database];
  v36 = v16;
  v20 = end;
  v35 = v14;
  v72[0] = @"data_type";
  v72[1] = @"user_preferred";
  v72[2] = @"sources.uuid";
  v72[3] = @"modification_date";
  v72[4] = @"sync_identity";
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:5];
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = -1;
  v22 = [v13 database];
  v23 = v19 >> 6;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __109__HDLogicalSourceOrderSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke;
  v44[3] = &unk_27862D8D0;
  v34 = v21;
  v45 = v34;
  v55 = v38;
  v56 = start;
  v57 = v20;
  v39 = v12;
  v46 = v39;
  v51 = &v59;
  v24 = v37;
  v47 = v24;
  v52 = v71;
  v58 = v23;
  v53 = &v67;
  v54 = &v63;
  v25 = v15;
  v48 = v25;
  v26 = v13;
  v49 = v26;
  v27 = v36;
  v50 = v27;
  v28 = [(HDHealthEntity *)HDSourceEntity performReadTransactionWithHealthDatabase:v22 error:a7 block:v44];

  if (v28)
  {
    v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __109__HDLogicalSourceOrderSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_3;
    v41[3] = &unk_27862D8F8;
    v42 = v27;
    v30 = v29;
    v43 = v30;
    [v25 enumerateKeysAndObjectsUsingBlock:{v41, v34}];
    if (v18 <= 63)
    {
      v31 = v60;
    }

    else
    {
      v31 = v60;
      if (v68[3] >= v23)
      {
        v60[3] = v64[3];
      }
    }

    LOBYTE(v28) = [v35 sendCodableChange:v30 resultAnchor:v31[3] sequence:0 done:1 error:a7];
  }

  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(v71, 8);

  v32 = *MEMORY[0x277D85DE8];
  return v28;
}

BOOL __109__HDLogicalSourceOrderSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = [(HDLogicalSourceOrderSyncEntity *)*(a1 + 112) _sourceOrderSyncPredicateForSession:?];
  v7 = *(*(a1 + 80) + 8) + 24;
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __109__HDLogicalSourceOrderSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2;
  v17[3] = &unk_27862D8A8;
  v10 = *(a1 + 136);
  v22 = *(a1 + 88);
  v23 = *(a1 + 104);
  v24 = v10;
  v18 = *(a1 + 56);
  v19 = *(a1 + 64);
  v20 = v4;
  v21 = *(a1 + 72);
  v12 = *(a1 + 120);
  v11 = *(a1 + 128);
  v13 = v4;
  v14 = [(HDHealthEntity *)HDLogicalSourceOrderEntity enumerateEntitiesForSyncWithProperties:v5 predicate:v6 session:v9 syncAnchorRange:v12 limit:v11 lastSyncAnchor:0 healthDatabase:v7 error:v8 block:a3, v17];

  return v14;
}

uint64_t __109__HDLogicalSourceOrderSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, void *a8)
{
  v13 = HDSQLiteColumnAsInt64();
  v14 = [MEMORY[0x277CCABB0] numberWithLongLong:v13];
  v15 = *(*(a1 + 64) + 8);
  if (v13 != *(v15 + 24))
  {
    v16 = *(a1 + 88);
    if (v16 >= 1 && *(*(*(a1 + 72) + 8) + 24) >= v16)
    {
      v27 = 1;
      *a7 = 1;
      goto LABEL_13;
    }
  }

  *(v15 + 24) = v13;
  ++*(*(*(a1 + 72) + 8) + 24);
  *(*(*(a1 + 80) + 8) + 24) = a5;
  v17 = [*(a1 + 32) objectForKeyedSubscript:v14];
  if (!v17)
  {
    v17 = objc_alloc_init(HDCodableObjectTypeSourceOrder);
    [(HDCodableObjectTypeSourceOrder *)v17 setObjectType:v13];
    [(HDCodableObjectTypeSourceOrder *)v17 setUserOrdered:MEMORY[0x22AAC6C10](a4, 1)];
    v18 = HDSQLiteColumnWithNameAsInt64();
    v19 = [*(a1 + 40) syncIdentityManager];
    v20 = *(a1 + 48);
    v30 = 0;
    v21 = [v19 identityForEntityID:v18 transaction:v20 error:&v30];
    v22 = v30;

    if (!v21)
    {
      v25 = v22;
      if (v25)
      {
        if (a8)
        {
          v29 = v25;
          *a8 = v25;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v27 = 0;
      goto LABEL_12;
    }

    v23 = [v21 identity];
    v24 = [v23 codableSyncIdentity];
    [(HDCodableObjectTypeSourceOrder *)v17 setSyncIdentity:v24];

    [*(a1 + 32) setObject:v17 forKeyedSubscript:v14];
  }

  v25 = [*(a1 + 56) objectForKeyedSubscript:v14];
  if (!v25)
  {
    v25 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*(a1 + 56) setObject:v25 forKeyedSubscript:v14];
  }

  v26 = MEMORY[0x22AAC6C20](a4, 2);
  if (v26)
  {
    [v25 appendBytes:v26 length:{MEMORY[0x22AAC6CB0](a4, 2)}];
  }

  MEMORY[0x22AAC6C50](a4, 3);
  [(HDCodableObjectTypeSourceOrder *)v17 addModificationDates:?];
  v27 = 1;
LABEL_12:

LABEL_13:
  return v27;
}

void __109__HDLogicalSourceOrderSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v7 = a3;
  v6 = [v5 objectForKeyedSubscript:a2];
  [v7 setSourceUUIDs:v6];

  [*(a1 + 40) addObject:v7];
}

+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a3;
  v12 = [(HDLogicalSourceOrderSyncEntity *)a1 _sourceOrderSyncPredicateForSession:v11];
  v13 = [v10 database];

  v14 = [(HDHealthEntity *)HDLogicalSourceOrderEntity nextSyncAnchorWithStartAnchor:a4 predicate:v12 session:v11 healthDatabase:v13 error:a6];
  return v14;
}

+ (id)decodeSyncObjectWithData:(id)a3
{
  v3 = a3;
  v4 = [[HDCodableObjectTypeSourceOrder alloc] initWithData:v3];

  return v4;
}

+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7
{
  v9 = a3;
  v10 = [a6 sourceOrderManager];
  LODWORD(a7) = [v10 createSourceOrdersWithCodables:v9 error:a7];

  return a7 ^ 1;
}

+ (id)syncEntityDependenciesForSyncProtocolVersion:(int)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();

  return [v3 setWithObject:v4];
}

@end