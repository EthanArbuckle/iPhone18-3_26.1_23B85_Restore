@interface HDUserDomainConceptSyncEntity
+ (BOOL)enumerateCodableObjectsForPredicate:(id)predicate limit:(int64_t)limit orderingTerms:(id)terms profile:(id)profile transaction:(id)transaction error:(id *)error handler:(id)handler;
+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error;
+ (BOOL)receiveSyncObjects:(id)objects version:(id)version syncProvenance:(int64_t)provenance profile:(id)profile error:(id *)error;
+ (id)_predicateForSyncableUserDomainConceptEntitiesForProfile:(void *)profile syncSession:;
+ (id)decodeSyncObjectWithData:(id)data;
+ (id)pruneSyncedObjectsThroughAnchor:(id)anchor limit:(unint64_t)limit nowDate:(id)date profile:(id)profile error:(id *)error;
+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error;
+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error;
@end

@implementation HDUserDomainConceptSyncEntity

+ (id)decodeSyncObjectWithData:(id)data
{
  dataCopy = data;
  v4 = [[HDCodableUserDomainConcept alloc] initWithData:dataCopy];

  return v4;
}

+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  sessionCopy = session;
  v12 = [(HDUserDomainConceptSyncEntity *)self _predicateForSyncableUserDomainConceptEntitiesForProfile:profileCopy syncSession:sessionCopy];
  database = [profileCopy database];

  v14 = [(HDHealthEntity *)HDUserDomainConceptEntity nextSyncAnchorWithStartAnchor:anchor predicate:v12 session:sessionCopy healthDatabase:database error:error];
  return v14;
}

+ (id)_predicateForSyncableUserDomainConceptEntitiesForProfile:(void *)profile syncSession:
{
  profileCopy = profile;
  v5 = a2;
  objc_opt_self();
  daemon = [v5 daemon];

  userDomainConceptEntityRegistry = [daemon userDomainConceptEntityRegistry];
  registeredDictionaryOfEntities = [userDomainConceptEntityRegistry registeredDictionaryOfEntities];

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __102__HDUserDomainConceptSyncEntity__predicateForSyncableUserDomainConceptEntitiesForProfile_syncSession___block_invoke;
  v14[3] = &unk_27862EC70;
  v15 = profileCopy;
  v16 = v9;
  v10 = v9;
  v11 = profileCopy;
  [registeredDictionaryOfEntities enumerateKeysAndObjectsUsingBlock:v14];
  v12 = HDUserDomainConceptEntityPredicateForConceptsWithTypeIdentifiers(v10);

  return v12;
}

+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error
{
  end = range.end;
  start = range.start;
  sessionCopy = session;
  profileCopy = profile;
  handlerCopy = handler;
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = -1;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v34[3] = 0;
  v16 = [sessionCopy maxEncodedBytesPerCodableChangeForSyncEntityClass:self];
  database = [profileCopy database];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __108__HDUserDomainConceptSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke;
  v24[3] = &unk_27862EC20;
  v18 = profileCopy;
  v25 = v18;
  selfCopy = self;
  v19 = sessionCopy;
  v31 = start;
  v32 = end;
  v26 = v19;
  v28 = &v35;
  v20 = v15;
  v27 = v20;
  v29 = v34;
  v33 = v16;
  LOBYTE(v16) = [(HDHealthEntity *)HDUserDomainConceptEntity performReadTransactionWithHealthDatabase:database error:error block:v24];

  if (v16)
  {
    v21 = [handlerCopy sendCodableChange:v20 version:0x400000000 resultAnchor:v36[3] sequence:0 done:1 error:error];
  }

  else
  {
    v21 = 0;
  }

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(&v35, 8);

  return v21;
}

BOOL __108__HDUserDomainConceptSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [HDUserDomainConceptEntity entityEncoderForProfile:*(a1 + 32) transaction:a2 purpose:0 encodingOptions:0 authorizationFilter:0];
  v5 = [v4 orderedProperties];
  v6 = [(HDUserDomainConceptSyncEntity *)*(a1 + 72) _predicateForSyncableUserDomainConceptEntitiesForProfile:*(a1 + 40) syncSession:?];
  v7 = *(*(a1 + 56) + 8) + 24;
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) database];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __108__HDUserDomainConceptSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2;
  v18[3] = &unk_27862EBF8;
  v19 = v4;
  v10 = *(a1 + 48);
  v11 = *(a1 + 64);
  v20 = v10;
  v21 = v11;
  v22 = *(a1 + 96);
  v13 = *(a1 + 80);
  v12 = *(a1 + 88);
  v14 = v4;
  v15 = [(HDHealthEntity *)HDUserDomainConceptEntity enumerateEntitiesForSyncWithProperties:v5 predicate:v6 session:v8 syncAnchorRange:v13 limit:v12 lastSyncAnchor:0 healthDatabase:v7 error:v9 block:a3, v18];

  return v15;
}

BOOL __108__HDUserDomainConceptSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  v10 = [*(a1 + 32) codableRepresentationForPersistentID:objc_msgSend(a2 row:"persistentID") error:{a4, a8}];
  if (v10)
  {
    [*(a1 + 40) addObject:v10];
    *(*(*(a1 + 48) + 8) + 24) += [v10 encodedByteCount];
    if (*(*(*(a1 + 48) + 8) + 24) >= *(a1 + 56))
    {
      *a7 = 1;
    }
  }

  return v10 != 0;
}

+ (BOOL)enumerateCodableObjectsForPredicate:(id)predicate limit:(int64_t)limit orderingTerms:(id)terms profile:(id)profile transaction:(id)transaction error:(id *)error handler:(id)handler
{
  handlerCopy = handler;
  transactionCopy = transaction;
  termsCopy = terms;
  predicateCopy = predicate;
  v19 = [HDUserDomainConceptEntity entityEncoderForProfile:profile transaction:transactionCopy purpose:0 encodingOptions:0 authorizationFilter:0];
  protectedDatabase = [transactionCopy protectedDatabase];

  v21 = [(HDSQLiteEntity *)HDUserDomainConceptEntity queryWithDatabase:protectedDatabase predicate:predicateCopy limit:limit orderingTerms:termsCopy groupBy:0];

  orderedProperties = [v19 orderedProperties];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __123__HDUserDomainConceptSyncEntity_enumerateCodableObjectsForPredicate_limit_orderingTerms_profile_transaction_error_handler___block_invoke;
  v26[3] = &unk_278618880;
  v27 = v19;
  v28 = handlerCopy;
  v23 = handlerCopy;
  v24 = v19;
  LOBYTE(error) = [v21 enumeratePersistentIDsAndProperties:orderedProperties error:error enumerationHandler:v26];

  return error;
}

uint64_t __123__HDUserDomainConceptSyncEntity_enumerateCodableObjectsForPredicate_limit_orderingTerms_profile_transaction_error_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) codableRepresentationForPersistentID:a2 row:? error:?];
  if (v3)
  {
    v4 = (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  storeCopy = store;
  profileCopy = profile;
  if (version.var0 < 5)
  {
    v19 = [self receiveSyncObjects:objectsCopy version:version syncProvenance:objc_msgSend(storeCopy profile:"syncProvenance") error:{profileCopy, error}] ^ 1;
  }

  else
  {
    _HKInitializeLogging();
    v15 = HKLogHealthOntology();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [objectsCopy count];
      v17 = HDSyncVersionRangeToString(*&version);
      v18 = HDSyncVersionRangeToString(0x400000000uLL);
      v22 = 138413314;
      selfCopy = self;
      v24 = 2048;
      v25 = v16;
      v26 = 2112;
      v27 = storeCopy;
      v28 = 2112;
      v29 = v17;
      v30 = 2112;
      v31 = v18;
      _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "%@: Ignoring %lu sync objects from sync store %@ with version %@ because our current version is %@", &v22, 0x34u);
    }

    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

+ (BOOL)receiveSyncObjects:(id)objects version:(id)version syncProvenance:(int64_t)provenance profile:(id)profile error:(id *)error
{
  objectsCopy = objects;
  profileCopy = profile;
  v13 = objectsCopy;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__200;
  v42 = __Block_byref_object_dispose__200;
  v43 = objc_alloc_init(MEMORY[0x277CBEB38]);
  database = [profileCopy database];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __89__HDUserDomainConceptSyncEntity_receiveSyncObjects_version_syncProvenance_profile_error___block_invoke;
  v34[3] = &unk_278615F88;
  v15 = v13;
  v35 = v15;
  v16 = profileCopy;
  v36 = v16;
  v37 = &v38;
  [(HDHealthEntity *)HDSyncIdentityEntity performWriteTransactionWithHealthDatabase:database error:error block:v34];

  if ([v39[5] count])
  {
    userDomainConceptManager = [v16 userDomainConceptManager];
    [userDomainConceptManager openObserverTransaction];

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __89__HDUserDomainConceptSyncEntity_receiveSyncObjects_version_syncProvenance_profile_error___block_invoke_305;
    aBlock[3] = &unk_27862EC48;
    v31 = &v38;
    v18 = v16;
    v30 = v18;
    provenanceCopy = provenance;
    versionCopy = version;
    v19 = _Block_copy(aBlock);
    database2 = [v18 database];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __89__HDUserDomainConceptSyncEntity_receiveSyncObjects_version_syncProvenance_profile_error___block_invoke_2;
    v27[3] = &unk_27861A528;
    v28 = v19;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __89__HDUserDomainConceptSyncEntity_receiveSyncObjects_version_syncProvenance_profile_error___block_invoke_3;
    v25[3] = &unk_278618968;
    v21 = v28;
    v26 = v21;
    v22 = [(HDHealthEntity *)HDUserDomainConceptEntity performWriteTransactionWithHealthDatabase:database2 error:error block:v27 inaccessibilityHandler:v25];

    userDomainConceptManager2 = [v18 userDomainConceptManager];
    [userDomainConceptManager2 closeObserverTransaction];
  }

  else
  {
    v22 = 1;
  }

  _Block_object_dispose(&v38, 8);
  return v22;
}

uint64_t __89__HDUserDomainConceptSyncEntity_receiveSyncObjects_version_syncProvenance_profile_error___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v22 = a2;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v28;
    do
    {
      v6 = 0;
      v23 = v4;
      do
      {
        if (*v28 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v27 + 1) + 8 * v6);
        v8 = [*(a1 + 40) syncIdentityManager];
        v9 = [v8 legacySyncIdentity];

        if ([v7 hasSyncIdentity])
        {
          v10 = v5;
          v11 = [v7 syncIdentity];
          v26 = 0;
          v12 = [HDSyncIdentity syncIdentityWithCodable:v11 error:&v26];
          v13 = v26;

          if (!v12)
          {
            _HKInitializeLogging();
            v18 = *MEMORY[0x277CCC2A0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
            {
              *buf = 138543362;
              v32 = v13;
              _os_log_fault_impl(&dword_228986000, v18, OS_LOG_TYPE_FAULT, "HDUserDomainConcept SyncIdentity from received codable is nil %{public}@", buf, 0xCu);
            }

            v12 = 0;
            goto LABEL_20;
          }

          v14 = [*(a1 + 40) syncIdentityManager];
          v25 = v13;
          v15 = [v14 concreteIdentityForIdentity:v12 shouldCreate:1 transaction:v22 error:&v25];
          v16 = v25;

          if (!v15)
          {
            _HKInitializeLogging();
            v19 = *MEMORY[0x277CCC2A0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
            {
              *buf = 138543362;
              v32 = v16;
              _os_log_fault_impl(&dword_228986000, v19, OS_LOG_TYPE_FAULT, "HDUserDomainConcept ConcreteSyncIdentity from received codable is nil %{public}@", buf, 0xCu);
            }

            v9 = 0;
            v13 = v16;
LABEL_20:
            v5 = v10;
            v4 = v23;
            goto LABEL_21;
          }

          v9 = v15;
          v5 = v10;
          v4 = v23;
        }

        v13 = [MEMORY[0x277CCDAF0] createWithCodableConcept:v7 profile:*(a1 + 40)];
        if (!v13)
        {
          goto LABEL_22;
        }

        v17 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:v9];

        if (v17)
        {
          v12 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:v9];
          [v12 addObject:v13];
        }

        else
        {
          v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v13, 0}];
          [*(*(*(a1 + 48) + 8) + 40) setObject:v12 forKeyedSubscript:v9];
        }

LABEL_21:

LABEL_22:
        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v4);
  }

  v20 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __89__HDUserDomainConceptSyncEntity_receiveSyncObjects_version_syncProvenance_profile_error___block_invoke_305(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        v10 = [*(a1 + 32) userDomainConceptManager];
        v11 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:v9];
        v12 = *(a1 + 48);
        v13 = [v9 entity];
        LODWORD(v12) = [v10 modifyUserDomainConcepts:v11 method:1 syncProvenance:v12 syncIdentity:objc_msgSend(v13 syncVersion:"persistentID") error:{*(a1 + 56), a2}];

        if (!v12)
        {
          v14 = 0;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (id)pruneSyncedObjectsThroughAnchor:(id)anchor limit:(unint64_t)limit nowDate:(id)date profile:(id)profile error:(id *)error
{
  v51[1] = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  dateCopy = date;
  profileCopy = profile;
  v11 = anchorCopy;
  v12 = dateCopy;
  objc_opt_self();
  v39 = v12;
  v13 = [v12 dateByAddingTimeInterval:-31536000.0];

  v14 = [MEMORY[0x277D10B18] predicateWithProperty:@"modification_date" lessThanValue:v13];
  v15 = v14;
  if (v11)
  {
    v16 = MEMORY[0x277D10B20];
    v50[0] = v14;
    v17 = [MEMORY[0x277D10B18] predicateWithProperty:@"sync_anchor" lessThanOrEqualToValue:v11];
    v50[1] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:2];
    v19 = [v16 predicateMatchingAnyPredicates:v18];

    v15 = v19;
  }

  v20 = MEMORY[0x277D10B20];
  v44 = v15;
  objc_opt_self();
  v21 = objc_alloc(MEMORY[0x277CCACA8]);
  v22 = [v21 initWithFormat:@"%@(%@)", *MEMORY[0x277D10A90], @"sync_anchor"];
  v23 = objc_alloc_init(MEMORY[0x277D10B80]);
  [v23 setEntityClass:objc_opt_class()];
  v24 = MEMORY[0x277D10B18];
  v51[0] = v22;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
  v26 = [v24 predicateWithProperty:@"sync_anchor" comparisonType:2 subqueryDescriptor:v23 subqueryProperties:v25];

  v45 = v26;
  v27 = [MEMORY[0x277D10B18] predicateWithProperty:@"deleted" equalToValue:MEMORY[0x277CBEC38]];
  v46 = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:3];
  v29 = [v20 predicateMatchingAllPredicates:v28];

  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__200;
  v48 = __Block_byref_object_dispose__200;
  v49 = &unk_283CB40B0;
  database = [profileCopy database];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __93__HDUserDomainConceptSyncEntity_pruneSyncedObjectsThroughAnchor_limit_nowDate_profile_error___block_invoke;
  v40[3] = &unk_278616AA0;
  v31 = v29;
  v42 = &v44;
  limitCopy = limit;
  v41 = v31;
  LODWORD(v28) = [(HDHealthEntity *)HDUserDomainConceptEntity performWriteTransactionWithHealthDatabase:database error:error block:v40];

  if (v28)
  {
    v32 = v45[5];
  }

  else
  {
    v32 = 0;
  }

  v33 = v32;

  _Block_object_dispose(&v44, 8);
  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

uint64_t __93__HDUserDomainConceptSyncEntity_pruneSyncedObjectsThroughAnchor_limit_nowDate_profile_error___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = [a2 protectedDatabase];
  v6 = [(HDSQLiteEntity *)HDUserDomainConceptEntity queryWithDatabase:v5 predicate:a1[4] limit:a1[6] orderingTerms:0 groupBy:0];
  v7 = [v6 deleteAllEntitiesWithError:a3];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v5, "getChangesCount")}];
  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return v7;
}

void __102__HDUserDomainConceptSyncEntity__predicateForSyncableUserDomainConceptEntitiesForProfile_syncSession___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [*(a1 + 32) syncStore];
  LODWORD(a3) = [a3 supportsSyncStore:v5];

  if (a3)
  {
    [*(a1 + 40) addObject:v6];
  }
}

@end