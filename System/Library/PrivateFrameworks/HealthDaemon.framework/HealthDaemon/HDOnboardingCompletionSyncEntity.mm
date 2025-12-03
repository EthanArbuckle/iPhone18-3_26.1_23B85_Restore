@interface HDOnboardingCompletionSyncEntity
+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error;
+ (id)decodeSyncObjectWithData:(id)data;
+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error;
+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error;
@end

@implementation HDOnboardingCompletionSyncEntity

+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error
{
  end = range.end;
  start = range.start;
  sessionCopy = session;
  profileCopy = profile;
  handlerCopy = handler;
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = -1;
  database = [profileCopy database];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __111__HDOnboardingCompletionSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke;
  v25 = &unk_27861F578;
  v17 = profileCopy;
  v26 = v17;
  v18 = sessionCopy;
  v30 = start;
  v31 = end;
  v27 = v18;
  v29 = &v32;
  v19 = v15;
  v28 = v19;
  LODWORD(start) = [(HDHealthEntity *)HDOnboardingCompletionEntity performReadTransactionWithHealthDatabase:database error:error block:&v22];

  if (start)
  {
    v20 = [handlerCopy sendCodableChange:v19 resultAnchor:v33[3] sequence:0 done:1 error:{error, v22, v23, v24, v25, v26, v27}];
  }

  else
  {
    v20 = 0;
  }

  _Block_object_dispose(&v32, 8);
  return v20;
}

BOOL __111__HDOnboardingCompletionSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [HDOnboardingCompletionEntity entityEncoderForProfile:*(a1 + 32) transaction:v4 purpose:0 encodingOptions:0 authorizationFilter:0];
  v6 = [v5 orderedProperties];
  v7 = *(*(a1 + 56) + 8) + 24;
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) database];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __111__HDOnboardingCompletionSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2;
  v17[3] = &unk_27861F550;
  v18 = v5;
  v19 = *(a1 + 32);
  v20 = v4;
  v21 = *(a1 + 48);
  v11 = *(a1 + 64);
  v10 = *(a1 + 72);
  v12 = v4;
  v13 = v5;
  v14 = [(HDHealthEntity *)HDOnboardingCompletionEntity enumerateEntitiesForSyncWithProperties:v6 predicate:0 session:v8 syncAnchorRange:v11 limit:v10 lastSyncAnchor:0 healthDatabase:v7 error:v9 block:a3, v17];

  return v14;
}

BOOL __111__HDOnboardingCompletionSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = [*(a1 + 32) codableRepresentationForPersistentID:objc_msgSend(a2 row:"persistentID") error:{a4, a8}];
  if (v10)
  {
    v11 = HDSQLiteColumnWithNameAsInt64();
    v12 = [*(a1 + 40) syncIdentityManager];
    v13 = [v12 identityForEntityID:v11 transaction:*(a1 + 48) error:a8];

    v14 = v13 != 0;
    if (v13)
    {
      v15 = [v13 identity];
      v16 = [v15 codableSyncIdentity];
      [v10 setSyncIdentity:v16];

      [*(a1 + 56) addObject:v10];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error
{
  sessionCopy = session;
  database = [profile database];
  v11 = [(HDHealthEntity *)HDOnboardingCompletionEntity nextSyncAnchorWithStartAnchor:anchor predicate:0 session:sessionCopy healthDatabase:database error:error];

  return v11;
}

+ (id)decodeSyncObjectWithData:(id)data
{
  dataCopy = data;
  v4 = [[HDCodableOnboardingCompletion alloc] initWithData:dataCopy];

  return v4;
}

+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error
{
  objectsCopy = objects;
  storeCopy = store;
  onboardingCompletionManager = [profile onboardingCompletionManager];
  syncProvenance = [storeCopy syncProvenance];

  LODWORD(error) = [onboardingCompletionManager insertCodableOnboardingCompletions:objectsCopy syncProvenance:syncProvenance error:error];
  return error ^ 1;
}

@end