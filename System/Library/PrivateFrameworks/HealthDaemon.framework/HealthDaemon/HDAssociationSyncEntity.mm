@interface HDAssociationSyncEntity
+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error;
+ (id)_syncPredicateForSession:(uint64_t)session;
+ (id)decodeSyncObjectWithData:(id)data;
+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error;
+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error;
@end

@implementation HDAssociationSyncEntity

+ (id)_syncPredicateForSession:(uint64_t)session
{
  v2 = a2;
  objc_opt_self();
  v3 = HDAssociationEntityPredicateForAssociationEntityWithType(0);
  syncPredicate = [v2 syncPredicate];
  defaultMaximumObjectAge = [syncPredicate defaultMaximumObjectAge];

  if (defaultMaximumObjectAge)
  {
    startDate = [v2 startDate];
    [defaultMaximumObjectAge doubleValue];
    v8 = [startDate dateByAddingTimeInterval:-v7];

    v9 = HDAssociationEntityPredicateForChildEndDate(6, v8);
    v10 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v3 otherPredicate:v9];
  }

  else
  {
    v10 = v3;
  }

  return v10;
}

+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error
{
  end = range.end;
  start = range.start;
  sessionCopy = session;
  profileCopy = profile;
  handlerCopy = handler;
  v29 = [(HDAssociationSyncEntity *)self _syncPredicateForSession:sessionCopy];
  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = [sessionCopy maxEncodedBytesPerCodableChangeForSyncEntityClass:self];
  if (v16 >= 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 127;
  }

  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x2020000000;
  v58[3] = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = -1;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__163;
  v52 = __Block_byref_object_dispose__163;
  v53 = objc_alloc_init(MEMORY[0x277CBEB18]);
  database = [profileCopy database];
  errorCopy = error;
  v20 = handlerCopy;
  v21 = v17 >> 7;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __102__HDAssociationSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke;
  v36[3] = &unk_278629CF8;
  v30 = v29;
  v37 = v30;
  selfCopy = self;
  v22 = sessionCopy;
  v45 = start;
  v46 = end;
  v38 = v22;
  v42 = &v54;
  v23 = profileCopy;
  v39 = v23;
  v24 = v31;
  v40 = v24;
  v25 = v15;
  v41 = v25;
  v43 = v58;
  v47 = v21;
  v26 = errorCopy;
  LOBYTE(errorCopy) = [(HDHealthEntity *)HDSyncIdentityEntity performReadTransactionWithHealthDatabase:database error:errorCopy block:v36];

  if (errorCopy)
  {
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __102__HDAssociationSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_3;
    v33[3] = &unk_278629D20;
    v34 = v24;
    v35 = &v48;
    [v25 enumerateKeysAndObjectsUsingBlock:v33];
    v27 = [v20 sendCodableChange:v49[5] resultAnchor:v55[3] sequence:0 done:1 error:v26];
  }

  else
  {
    v27 = 0;
  }

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(v58, 8);

  return v27;
}

BOOL __102__HDAssociationSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = *(a1 + 88);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(*(a1 + 72) + 8);
  v9 = [*(a1 + 48) database];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __102__HDAssociationSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2;
  v18[3] = &unk_278629CD0;
  v19 = *(a1 + 56);
  v20 = *(a1 + 48);
  v21 = v4;
  v10 = *(a1 + 64);
  v11 = *(a1 + 80);
  v22 = v10;
  v23 = v11;
  v24 = *(a1 + 112);
  v13 = *(a1 + 96);
  v12 = *(a1 + 104);
  v14 = v4;
  v15 = [HDAssociationEntity _enumerateAssociationsWithPredicate:v7 syncEntityClass:v5 session:v6 syncAnchorRange:v13 lastSyncAnchor:v12 healthDatabase:v8 + 24 error:v9 block:a3, v18];

  return v15;
}

uint64_t __102__HDAssociationSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4, _BYTE *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = [*(a1 + 32) objectForKeyedSubscript:v11];
  if (v13)
  {
    goto LABEL_4;
  }

  v14 = [*(a1 + 40) syncIdentityManager];
  v15 = *(a1 + 48);
  v24 = 0;
  v16 = [v14 identityForEntityID:a4 transaction:v15 error:&v24];
  v17 = v24;

  if (v16)
  {
    [*(a1 + 32) setObject:v16 forKeyedSubscript:v11];

LABEL_4:
    v18 = [*(a1 + 56) objectForKeyedSubscript:v11];
    if (!v18)
    {
      v18 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [*(a1 + 56) setObject:v18 forKeyedSubscript:v11];
    }

    [v18 hk_appendBytesWithUUID:v12];
    ++*(*(*(a1 + 64) + 8) + 24);
    v19 = *(a1 + 72);
    if (v19)
    {
      v20 = *(*(*(a1 + 64) + 8) + 24);
      v21 = 1;
      if (v20 >= v19)
      {
        *a5 = 1;
      }
    }

    else
    {
      v21 = 1;
    }

    goto LABEL_15;
  }

  v18 = v17;
  if (v18)
  {
    if (a6)
    {
      v22 = v18;
      *a6 = v18;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v21 = 0;
LABEL_15:

  return v21;
}

void __102__HDAssociationSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v10 = [[HDCodableObjectAssociation alloc] initWithAssociationUUID:v6];
  [(HDCodableObjectAssociation *)v10 setObjectUuids:v5];

  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v8 = [v7 identity];
  v9 = [v8 codableSyncIdentity];
  [(HDCodableObjectAssociation *)v10 setSyncIdentity:v9];

  [*(*(*(a1 + 40) + 8) + 40) addObject:v10];
}

+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error
{
  v23[2] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  sessionCopy = session;
  v12 = [(HDAssociationSyncEntity *)self _syncPredicateForSession:sessionCopy];
  v13 = [MEMORY[0x277D10B60] isNotNullPredicateWithProperty:@"child_id_objects.uuid"];
  v14 = [MEMORY[0x277D10B60] isNotNullPredicateWithProperty:@"parent_id_objects.uuid"];
  v15 = MEMORY[0x277D10B20];
  v23[0] = v13;
  v23[1] = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v17 = [v15 predicateMatchingAllPredicates:v16];

  v18 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v17 otherPredicate:v12];

  database = [profileCopy database];

  v20 = [(HDHealthEntity *)HDAssociationEntity nextSyncAnchorWithStartAnchor:anchor predicate:v18 session:sessionCopy healthDatabase:database error:error];
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

+ (id)decodeSyncObjectWithData:(id)data
{
  dataCopy = data;
  v4 = [[HDCodableObjectAssociation alloc] initWithData:dataCopy];

  return v4;
}

+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error
{
  v7 = [HDAssociationEntity _insertCodableObjectAssociations:objects syncStore:store profile:profile error:error];
  if (v7)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"HDAssociationEntityDidReceiveSyncObjectsNotification" object:0];
  }

  return !v7;
}

@end