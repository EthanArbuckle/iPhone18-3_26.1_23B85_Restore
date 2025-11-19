@interface HDContributorEntity
+ (BOOL)deleteContributorWithUUID:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)_insertWithUUID:(double)a1 appleID:(uint64_t)a2 callerID:(void *)a3 deleted:(void *)a4 modificationDate:(void *)a5 syncAnchor:(uint64_t)a6 syncProvenance:(uint64_t)a7 syncIdentity:(uint64_t)a8 primaryUser:(char)a9 database:(void *)a10 error:(uint64_t)a11;
+ (id)_nextSyncAnchorInDatabase:(void *)a3 error:;
+ (id)_predicateForContributorReference:(uint64_t)a1;
+ (id)_predicateForContributorWithUUID:(uint64_t)a1;
+ (id)contributorEntityForNoContributorWithProfile:(id)a3 error:(id *)a4;
+ (id)contributorEntityWithUUID:(id)a3 profile:(id)a4 includeDeleted:(BOOL)a5 error:(id *)a6;
+ (id)contributorForReference:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)externalReferenceForContributorReference:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)insertOrLookupContributorEntityForNoContributorWithTransaction:(id)a3 syncIdentity:(int64_t)a4 error:(id *)a5;
+ (id)insertPrimaryUserWithAppleID:(id)a3 callerID:(id)a4 syncIdentity:(int64_t)a5 database:(id)a6 error:(id *)a7;
+ (id)insertWithUUID:(id)a3 appleID:(id)a4 callerID:(id)a5 primaryUser:(BOOL)a6 profile:(id)a7 error:(id *)a8;
+ (id)insertWithUUID:(id)a3 appleID:(id)a4 callerID:(id)a5 primaryUser:(BOOL)a6 syncProvenance:(int64_t)a7 syncIdentity:(int64_t)a8 transaction:(id)a9 error:(id *)a10;
+ (id)noneContributorUUID;
+ (id)primaryUserContributorInDatabase:(id)a3 error:(id *)a4;
+ (id)primaryUserContributorInProfile:(id)a3 error:(id *)a4;
- (BOOL)deletedInProfile:(id)a3 error:(id *)a4;
- (BOOL)updateAppleID:(id)a3 profile:(id)a4 error:(id *)a5;
- (BOOL)updateCallerID:(id)a3 profile:(id)a4 error:(id *)a5;
- (id)appleIDInProfile:(id)a3 error:(id *)a4;
- (id)callerIDInProfile:(id)a3 error:(id *)a4;
- (id)modificationDateInProfile:(id)a3 error:(id *)a4;
- (id)syncAnchorInProfile:(id)a3 error:(id *)a4;
@end

@implementation HDContributorEntity

+ (id)insertOrLookupContributorEntityForNoContributorWithTransaction:(id)a3 syncIdentity:(int64_t)a4 error:(id *)a5
{
  v24[9] = *MEMORY[0x277D85DE8];
  v8 = [a3 databaseForEntityClass:a1];
  v9 = [a1 noneContributorUUID];
  v10 = [(HDContributorEntity *)a1 _predicateForContributorWithUUID:v9];
  v23 = 0;
  v11 = [a1 anyInDatabase:v8 predicate:v10 error:&v23];
  v12 = v23;
  v13 = v12;
  if (v11)
  {
    v14 = v11;
  }

  else if (v12)
  {
    if (a5)
    {
      v17 = v12;
      v14 = 0;
      *a5 = v13;
    }

    else
    {
      _HKLogDroppedError();
      v14 = 0;
    }
  }

  else
  {
    v24[0] = @"uuid";
    v24[1] = @"apple_id";
    v24[2] = @"caller_id";
    v24[3] = @"deleted";
    v24[4] = @"mod_date";
    v24[5] = @"sync_anchor";
    v24[6] = @"sync_provenance";
    v24[7] = @"sync_identity";
    v24[8] = @"primary_user";
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:9];
    v22 = 0;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __105__HDContributorEntity_insertOrLookupContributorEntityForNoContributorWithTransaction_syncIdentity_error___block_invoke;
    v19[3] = &unk_278616B10;
    v20 = v9;
    v21 = a4;
    v14 = [a1 insertOrReplaceEntity:0 database:v8 properties:v18 error:&v22 bindingHandler:v19];
    v13 = v22;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)_predicateForContributorWithUUID:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = MEMORY[0x277D10B18];
  v4 = _HDSQLiteValueForUUID();

  v5 = [v3 predicateWithProperty:@"uuid" equalToValue:v4];

  return v5;
}

void __105__HDContributorEntity_insertOrLookupContributorEntityForNoContributorWithTransaction_syncIdentity_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6C00](a2, @"uuid", *(a1 + 32));
  MEMORY[0x22AAC6BA0](a2, @"apple_id");
  MEMORY[0x22AAC6BA0](a2, @"caller_id");
  MEMORY[0x22AAC6B30](a2, @"deleted", 0);
  Current = CFAbsoluteTimeGetCurrent();
  MEMORY[0x22AAC6B60](a2, @"mod_date", Current);
  MEMORY[0x22AAC6B90](a2, @"sync_anchor", 0);
  MEMORY[0x22AAC6B90](a2, @"sync_provenance", 0);
  MEMORY[0x22AAC6B90](a2, @"sync_identity", *(a1 + 40));

  JUMPOUT(0x22AAC6B30);
}

+ (id)insertWithUUID:(id)a3 appleID:(id)a4 callerID:(id)a5 primaryUser:(BOOL)a6 profile:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__39;
  v37 = __Block_byref_object_dispose__39;
  v38 = 0;
  v18 = [v17 database];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __81__HDContributorEntity_insertWithUUID_appleID_callerID_primaryUser_profile_error___block_invoke;
  v25[3] = &unk_2786192F8;
  v30 = &v33;
  v31 = a1;
  v19 = v14;
  v26 = v19;
  v20 = v15;
  v27 = v20;
  v21 = v16;
  v28 = v21;
  v22 = v17;
  v29 = v22;
  v32 = a6;
  [a1 performWriteTransactionWithHealthDatabase:v18 error:a8 block:v25];

  v23 = v34[5];
  _Block_object_dispose(&v33, 8);

  return v23;
}

uint64_t __81__HDContributorEntity_insertWithUUID_appleID_callerID_primaryUser_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 72)];
  v6 = *(a1 + 72);
  v32 = 0;
  v7 = [(HDContributorEntity *)v6 _nextSyncAnchorInDatabase:v5 error:&v32];
  v8 = v32;
  v9 = v8;
  if (!v7)
  {
    v21 = v8;
    if (!v21)
    {
LABEL_10:

      v24 = 0;
      goto LABEL_11;
    }

    if (!a3)
    {
LABEL_9:
      _HKLogDroppedError();
      goto LABEL_10;
    }

LABEL_6:
    v25 = v21;
    *a3 = v21;
    goto LABEL_10;
  }

  v10 = *(a1 + 72);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v27 = a3;
  v28 = *(a1 + 48);
  Current = CFAbsoluteTimeGetCurrent();
  v29 = v7;
  v14 = [v7 longLongValue];
  v15 = [*(a1 + 56) syncIdentityManager];
  v16 = [v15 currentSyncIdentity];
  v17 = [v16 entity];
  v18 = [v17 persistentID];
  v19 = *(a1 + 80);
  v30 = v5;
  v31 = v9;
  v20 = [HDContributorEntity _insertWithUUID:v10 appleID:v11 callerID:v12 deleted:v28 modificationDate:v14 syncAnchor:0 syncProvenance:v18 syncIdentity:v19 primaryUser:v5 database:&v31 error:?];
  v21 = v31;

  v22 = *(*(a1 + 64) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v20;

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v21 = v21;
    v7 = v29;
    v5 = v30;
    if (!v21)
    {
      goto LABEL_10;
    }

    a3 = v27;
    if (!v27)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v24 = 1;
  v7 = v29;
  v5 = v30;
LABEL_11:

  return v24;
}

+ (id)_nextSyncAnchorInDatabase:(void *)a3 error:
{
  v4 = a2;
  v11 = 0;
  v5 = [objc_opt_self() maxValueForProperty:@"sync_anchor" predicate:0 database:v4 error:&v11];

  v6 = v11;
  v7 = v6;
  if (v5 || !v6)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v5, "longLongValue") + 1}];
  }

  else if (a3)
  {
    v8 = v6;
    v9 = 0;
    *a3 = v7;
  }

  else
  {
    _HKLogDroppedError();
    v9 = 0;
  }

  return v9;
}

+ (id)_insertWithUUID:(double)a1 appleID:(uint64_t)a2 callerID:(void *)a3 deleted:(void *)a4 modificationDate:(void *)a5 syncAnchor:(uint64_t)a6 syncProvenance:(uint64_t)a7 syncIdentity:(uint64_t)a8 primaryUser:(char)a9 database:(void *)a10 error:(uint64_t)a11
{
  v40[9] = *MEMORY[0x277D85DE8];
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a10;
  v22 = objc_opt_self();
  v40[0] = @"uuid";
  v40[1] = @"apple_id";
  v40[2] = @"caller_id";
  v40[3] = @"deleted";
  v40[4] = @"mod_date";
  v40[5] = @"sync_anchor";
  v40[6] = @"sync_provenance";
  v40[7] = @"sync_identity";
  v40[8] = @"primary_user";
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:9];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __147__HDContributorEntity__insertWithUUID_appleID_callerID_deleted_modificationDate_syncAnchor_syncProvenance_syncIdentity_primaryUser_database_error___block_invoke;
  v30[3] = &unk_278619320;
  v31 = v18;
  v32 = v19;
  v33 = v20;
  v38 = 0;
  v34 = a1;
  v35 = a6;
  v36 = a7;
  v37 = a8;
  v39 = a9;
  v24 = v20;
  v25 = v19;
  v26 = v18;
  v27 = [v22 insertOrReplaceEntity:0 database:v21 properties:v23 error:a11 bindingHandler:v30];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (id)insertWithUUID:(id)a3 appleID:(id)a4 callerID:(id)a5 primaryUser:(BOOL)a6 syncProvenance:(int64_t)a7 syncIdentity:(int64_t)a8 transaction:(id)a9 error:(id *)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = [a9 databaseForEntityClass:a1];
  v20 = [(HDContributorEntity *)a1 _nextSyncAnchorInDatabase:v19 error:a10];
  if (v20)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v22 = +[HDContributorEntity _insertWithUUID:appleID:callerID:deleted:modificationDate:syncAnchor:syncProvenance:syncIdentity:primaryUser:database:error:](Current, a1, v16, v17, v18, [v20 longLongValue], a7, a8, a6, v19, a10);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)insertPrimaryUserWithAppleID:(id)a3 callerID:(id)a4 syncIdentity:(int64_t)a5 database:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = [(HDContributorEntity *)a1 _nextSyncAnchorInDatabase:v14 error:a7];
  if (v15)
  {
    v16 = [MEMORY[0x277CCAD78] UUID];
    Current = CFAbsoluteTimeGetCurrent();
    v18 = +[HDContributorEntity _insertWithUUID:appleID:callerID:deleted:modificationDate:syncAnchor:syncProvenance:syncIdentity:primaryUser:database:error:](Current, a1, v16, v12, v13, [v15 longLongValue], 0, a5, 1, v14, a7);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void __147__HDContributorEntity__insertWithUUID_appleID_callerID_deleted_modificationDate_syncAnchor_syncProvenance_syncIdentity_primaryUser_database_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6C00](a2, @"uuid", *(a1 + 32));
  if (*(a1 + 40))
  {
    MEMORY[0x22AAC6BD0](a2, @"apple_id");
  }

  else
  {
    MEMORY[0x22AAC6BA0](a2, @"apple_id");
  }

  if (*(a1 + 48))
  {
    MEMORY[0x22AAC6BD0](a2, @"caller_id");
  }

  else
  {
    MEMORY[0x22AAC6BA0](a2, @"caller_id");
  }

  MEMORY[0x22AAC6B30](a2, @"deleted", *(a1 + 88));
  MEMORY[0x22AAC6B60](a2, @"mod_date", *(a1 + 56));
  MEMORY[0x22AAC6B90](a2, @"sync_anchor", *(a1 + 64));
  MEMORY[0x22AAC6B90](a2, @"sync_provenance", *(a1 + 72));
  MEMORY[0x22AAC6B90](a2, @"sync_identity", *(a1 + 80));
  v4 = *(a1 + 89);

  JUMPOUT(0x22AAC6B30);
}

+ (BOOL)deleteContributorWithUUID:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [a4 database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__HDContributorEntity_deleteContributorWithUUID_profile_error___block_invoke;
  v12[3] = &unk_278619348;
  v13 = v8;
  v14 = a1;
  v10 = v8;
  LOBYTE(a5) = [a1 performWriteTransactionWithHealthDatabase:v9 error:a5 block:v12];

  return a5;
}

uint64_t __63__HDContributorEntity_deleteContributorWithUUID_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27[5] = *MEMORY[0x277D85DE8];
  v5 = [a2 databaseForEntityClass:*(a1 + 40)];
  v6 = *(a1 + 40);
  v25 = 0;
  v7 = [(HDContributorEntity *)v6 _nextSyncAnchorInDatabase:v5 error:&v25];
  v8 = v25;
  v9 = v8;
  if (v7)
  {
    v27[0] = @"apple_id";
    v27[1] = @"caller_id";
    v27[2] = @"deleted";
    v27[3] = @"mod_date";
    v27[4] = @"sync_anchor";
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:5];
    v11 = [(HDContributorEntity *)*(a1 + 40) _predicateForContributorWithUUID:?];
    v26[0] = v11;
    v12 = *(a1 + 40);
    objc_opt_self();
    v13 = [MEMORY[0x277D10B18] predicateWithProperty:@"deleted" equalToValue:MEMORY[0x277CBEC28]];
    v26[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];

    v15 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v14];
    v16 = *(a1 + 40);
    v24 = v9;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __63__HDContributorEntity_deleteContributorWithUUID_profile_error___block_invoke_2;
    v22[3] = &unk_278614508;
    v23 = v7;
    v17 = [v16 updateProperties:v10 predicate:v15 database:v5 error:&v24 bindingHandler:v22];
    v18 = v24;
  }

  else
  {
    v10 = v8;
    if (v10)
    {
      if (a3)
      {
        v19 = v10;
        v17 = 0;
        *a3 = v10;
      }

      else
      {
        _HKLogDroppedError();
        v17 = 0;
      }

      v18 = v10;
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v17;
}

void __63__HDContributorEntity_deleteContributorWithUUID_profile_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6BA0](a2, @"apple_id");
  MEMORY[0x22AAC6BA0](a2, @"caller_id");
  MEMORY[0x22AAC6B30](a2, @"deleted", 1);
  Current = CFAbsoluteTimeGetCurrent();
  MEMORY[0x22AAC6B60](a2, @"mod_date", Current);
  [*(a1 + 32) longLongValue];

  JUMPOUT(0x22AAC6B90);
}

+ (id)contributorEntityWithUUID:(id)a3 profile:(id)a4 includeDeleted:(BOOL)a5 error:(id *)a6
{
  v20[2] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = [(HDContributorEntity *)a1 _predicateForContributorWithUUID:a3];
  if (!a5)
  {
    objc_opt_self();
    v12 = [MEMORY[0x277D10B18] predicateWithProperty:@"deleted" equalToValue:MEMORY[0x277CBEC28]];
    v13 = MEMORY[0x277D10B20];
    v20[0] = v11;
    v20[1] = v12;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    v15 = [v13 predicateMatchingAllPredicates:v14];

    v11 = v15;
  }

  v16 = [v10 database];
  v17 = [a1 anyWithPredicate:v11 healthDatabase:v16 error:a6];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)contributorEntityForNoContributorWithProfile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 noneContributorUUID];
  v8 = [(HDContributorEntity *)a1 _predicateForContributorWithUUID:v7];
  v9 = [v6 database];

  v10 = [a1 anyWithPredicate:v8 healthDatabase:v9 error:a4];

  return v10;
}

+ (id)primaryUserContributorInProfile:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277D10B18];
  v7 = a3;
  v8 = [v6 predicateWithProperty:@"primary_user" equalToValue:MEMORY[0x277CBEC38]];
  v9 = [v7 database];

  v10 = [a1 anyWithPredicate:v8 healthDatabase:v9 error:a4];

  return v10;
}

+ (id)primaryUserContributorInDatabase:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277D10B18];
  v7 = a3;
  v8 = [v6 predicateWithProperty:@"primary_user" equalToValue:MEMORY[0x277CBEC38]];
  v9 = [a1 anyInDatabase:v7 predicate:v8 error:a4];

  return v9;
}

+ (id)contributorForReference:(id)a3 profile:(id)a4 error:(id *)a5
{
  v32[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([v8 contributorType] == 2)
  {
    v10 = 0;
  }

  else
  {
    v11 = [(HDContributorEntity *)a1 _predicateForContributorReference:v8];
    objc_opt_self();
    v12 = [MEMORY[0x277D10B18] predicateWithProperty:@"deleted" equalToValue:MEMORY[0x277CBEC28]];
    v13 = MEMORY[0x277D10B20];
    v32[0] = v11;
    v32[1] = v12;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    v15 = [v13 predicateMatchingAllPredicates:v14];

    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__39;
    v30 = __Block_byref_object_dispose__39;
    v31 = 0;
    v16 = [v9 database];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __61__HDContributorEntity_contributorForReference_profile_error___block_invoke;
    v22[3] = &unk_278616AA0;
    v25 = a1;
    v17 = v15;
    v23 = v17;
    v24 = &v26;
    v18 = [a1 performReadTransactionWithHealthDatabase:v16 error:a5 block:v22];

    if (v18)
    {
      v19 = v27[5];
    }

    else
    {
      v19 = 0;
    }

    v10 = v19;

    _Block_object_dispose(&v26, 8);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)_predicateForContributorReference:(uint64_t)a1
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = [v2 contributorType];
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v8 = [MEMORY[0x277D10B18] predicateWithProperty:@"primary_user" equalToValue:MEMORY[0x277CBEC38]];
      goto LABEL_12;
    }

    if (v4 == 4)
    {
      v5 = [v2 UUID];
      goto LABEL_8;
    }
  }

  else
  {
    if (v4 == 1)
    {
      v9 = MEMORY[0x277D10B18];
      v10 = *MEMORY[0x277D10A40];
      v11 = [v2 persistentID];
      v7 = [v9 predicateWithProperty:v10 equalToValue:v11];

      goto LABEL_13;
    }

    if (v4 == 2)
    {
      v5 = [v3 noneContributorUUID];
LABEL_8:
      v6 = v5;
      v7 = [(HDContributorEntity *)v3 _predicateForContributorWithUUID:v5];

      goto LABEL_13;
    }
  }

  v8 = [MEMORY[0x277D10B70] falsePredicate];
LABEL_12:
  v7 = v8;
LABEL_13:

  return v7;
}

uint64_t __61__HDContributorEntity_contributorForReference_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14[3] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 48);
  v6 = [a2 databaseForEntityClass:v5];
  v7 = [v5 queryWithDatabase:v6 predicate:*(a1 + 32)];

  v14[0] = @"uuid";
  v14[1] = @"apple_id";
  v14[2] = @"caller_id";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__HDContributorEntity_contributorForReference_profile_error___block_invoke_2;
  v12[3] = &unk_278619370;
  v13 = *(a1 + 40);
  v9 = [v7 enumerateProperties:v8 error:a3 enumerationHandler:v12];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __61__HDContributorEntity_contributorForReference_profile_error___block_invoke_2(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsUUID();
  v3 = [*(a1 + 40) noneContributorUUID];
  v4 = [v2 isEqual:v3];

  if ((v4 & 1) == 0)
  {
    v5 = HDSQLiteColumnWithNameAsString();
    v6 = HDSQLiteColumnWithNameAsString();
    v7 = [objc_alloc(MEMORY[0x277CCD228]) _initWithUUID:v2 appleID:v5 callerID:v6];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  return 0;
}

+ (id)externalReferenceForContributorReference:(id)a3 profile:(id)a4 error:(id *)a5
{
  v35[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v8 contributorType];
  if (v10 > 2)
  {
    if (v10 != 3)
    {
      if (v10 != 4)
      {
        goto LABEL_12;
      }

      goto LABEL_7;
    }

LABEL_8:
    v11 = [(HDContributorEntity *)a1 _predicateForContributorReference:v8];
    objc_opt_self();
    v24 = [MEMORY[0x277D10B18] predicateWithProperty:@"deleted" equalToValue:MEMORY[0x277CBEC28]];
    v12 = MEMORY[0x277D10B20];
    v35[0] = v11;
    v35[1] = v24;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
    v14 = [v12 predicateMatchingAllPredicates:v13];

    v15 = v14;
    v16 = v9;
    v17 = objc_opt_self();
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__39;
    v33 = __Block_byref_object_dispose__39;
    v34 = 0;
    v18 = [v16 database];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __85__HDContributorEntity__contributorReferenceForEntityMatchingPredicate_profile_error___block_invoke;
    v25[3] = &unk_278616AA0;
    v28 = v17;
    v19 = v15;
    v26 = v19;
    v27 = &v29;
    v20 = [v17 performReadTransactionWithHealthDatabase:v18 error:a5 block:v25];

    if (v20)
    {
      v21 = v30[5];
    }

    else
    {
      v21 = 0;
    }

    a5 = v21;

    _Block_object_dispose(&v29, 8);
    goto LABEL_12;
  }

  if (v10 == 1)
  {
    goto LABEL_8;
  }

  if (v10 == 2)
  {
LABEL_7:
    a5 = v8;
  }

LABEL_12:

  v22 = *MEMORY[0x277D85DE8];

  return a5;
}

- (id)appleIDInProfile:(id)a3 error:(id *)a4
{
  v6 = [a3 database];
  v7 = [(HDHealthEntity *)self valueForProperty:@"apple_id" healthDatabase:v6 error:a4];

  return v7;
}

- (BOOL)updateAppleID:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_class();
  v11 = [v9 database];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __51__HDContributorEntity_updateAppleID_profile_error___block_invoke;
  v14[3] = &unk_278613218;
  v14[4] = self;
  v15 = v8;
  v12 = v8;
  LOBYTE(a5) = [v10 performWriteTransactionWithHealthDatabase:v11 error:a5 block:v14];

  return a5;
}

uint64_t __51__HDContributorEntity_updateAppleID_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21[3] = *MEMORY[0x277D85DE8];
  v5 = [a2 databaseForEntity:*(a1 + 32)];
  v20 = 0;
  v6 = [HDContributorEntity _nextSyncAnchorInDatabase:v5 error:&v20];
  v7 = v20;
  v8 = v7;
  if (v6)
  {
    v21[0] = @"apple_id";
    v21[1] = @"mod_date";
    v21[2] = @"sync_anchor";
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
    v19 = v8;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __51__HDContributorEntity_updateAppleID_profile_error___block_invoke_2;
    v16[3] = &unk_278613DE8;
    v10 = *(a1 + 32);
    v17 = *(a1 + 40);
    v18 = v6;
    v11 = [v10 updateProperties:v9 database:v5 error:&v19 bindingHandler:v16];
    v12 = v19;
  }

  else
  {
    v9 = v7;
    if (v9)
    {
      if (a3)
      {
        v13 = v9;
        v11 = 0;
        *a3 = v9;
      }

      else
      {
        _HKLogDroppedError();
        v11 = 0;
      }

      v12 = v9;
    }

    else
    {
      v12 = 0;
      v11 = 0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

void __51__HDContributorEntity_updateAppleID_profile_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    MEMORY[0x22AAC6BD0](a2, @"apple_id");
  }

  else
  {
    MEMORY[0x22AAC6BA0](a2, @"apple_id");
  }

  Current = CFAbsoluteTimeGetCurrent();
  MEMORY[0x22AAC6B60](a2, @"mod_date", Current);
  [*(a1 + 40) longLongValue];

  JUMPOUT(0x22AAC6B90);
}

- (id)callerIDInProfile:(id)a3 error:(id *)a4
{
  v6 = [a3 database];
  v7 = [(HDHealthEntity *)self valueForProperty:@"caller_id" healthDatabase:v6 error:a4];

  return v7;
}

- (BOOL)updateCallerID:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_class();
  v11 = [v9 database];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__HDContributorEntity_updateCallerID_profile_error___block_invoke;
  v14[3] = &unk_278613218;
  v14[4] = self;
  v15 = v8;
  v12 = v8;
  LOBYTE(a5) = [v10 performWriteTransactionWithHealthDatabase:v11 error:a5 block:v14];

  return a5;
}

uint64_t __52__HDContributorEntity_updateCallerID_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21[3] = *MEMORY[0x277D85DE8];
  v5 = [a2 databaseForEntity:*(a1 + 32)];
  v20 = 0;
  v6 = [HDContributorEntity _nextSyncAnchorInDatabase:v5 error:&v20];
  v7 = v20;
  v8 = v7;
  if (v6)
  {
    v21[0] = @"caller_id";
    v21[1] = @"mod_date";
    v21[2] = @"sync_anchor";
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
    v19 = v8;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __52__HDContributorEntity_updateCallerID_profile_error___block_invoke_2;
    v16[3] = &unk_278613DE8;
    v10 = *(a1 + 32);
    v17 = *(a1 + 40);
    v18 = v6;
    v11 = [v10 updateProperties:v9 database:v5 error:&v19 bindingHandler:v16];
    v12 = v19;
  }

  else
  {
    v9 = v7;
    if (v9)
    {
      if (a3)
      {
        v13 = v9;
        v11 = 0;
        *a3 = v9;
      }

      else
      {
        _HKLogDroppedError();
        v11 = 0;
      }

      v12 = v9;
    }

    else
    {
      v12 = 0;
      v11 = 0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

void __52__HDContributorEntity_updateCallerID_profile_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    MEMORY[0x22AAC6BD0](a2, @"caller_id");
  }

  else
  {
    MEMORY[0x22AAC6BA0](a2, @"caller_id");
  }

  Current = CFAbsoluteTimeGetCurrent();
  MEMORY[0x22AAC6B60](a2, @"mod_date", Current);
  [*(a1 + 40) longLongValue];

  JUMPOUT(0x22AAC6B90);
}

- (id)modificationDateInProfile:(id)a3 error:(id *)a4
{
  v6 = [a3 database];
  v7 = [(HDHealthEntity *)self valueForProperty:@"mod_date" healthDatabase:v6 error:a4];

  if (v7)
  {
    v8 = MEMORY[0x277CBEAA8];
    [v7 doubleValue];
    v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)syncAnchorInProfile:(id)a3 error:(id *)a4
{
  v6 = [a3 database];
  v7 = [(HDHealthEntity *)self valueForProperty:@"sync_anchor" healthDatabase:v6 error:a4];

  return v7;
}

- (BOOL)deletedInProfile:(id)a3 error:(id *)a4
{
  v6 = [a3 database];
  v7 = [(HDHealthEntity *)self valueForProperty:@"deleted" healthDatabase:v6 error:a4];

  LOBYTE(self) = [v7 BOOLValue];
  return self;
}

+ (id)noneContributorUUID
{
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];

  return v2;
}

uint64_t __85__HDContributorEntity__contributorReferenceForEntityMatchingPredicate_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 48);
  v6 = [a2 databaseForEntityClass:v5];
  v7 = [v5 queryWithDatabase:v6 predicate:*(a1 + 32)];

  v14[0] = @"uuid";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__HDContributorEntity__contributorReferenceForEntityMatchingPredicate_profile_error___block_invoke_2;
  v12[3] = &unk_278619370;
  v13 = *(a1 + 40);
  v9 = [v7 enumerateProperties:v8 error:a3 enumerationHandler:v12];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __85__HDContributorEntity__contributorReferenceForEntityMatchingPredicate_profile_error___block_invoke_2(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsUUID();
  v3 = [*(a1 + 40) noneContributorUUID];
  v4 = [v2 isEqual:v3];

  if (v4)
  {
    +[HDContributorReference contributorReferenceForNoContributor];
  }

  else
  {
    [HDContributorReference contributorReferenceForOtherUserWithUUID:v2];
  }
  v5 = ;
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return 0;
}

@end