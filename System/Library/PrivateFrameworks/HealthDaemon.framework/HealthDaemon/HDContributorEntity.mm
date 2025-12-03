@interface HDContributorEntity
+ (BOOL)deleteContributorWithUUID:(id)d profile:(id)profile error:(id *)error;
+ (id)_insertWithUUID:(double)d appleID:(uint64_t)iD callerID:(void *)callerID deleted:(void *)deleted modificationDate:(void *)date syncAnchor:(uint64_t)anchor syncProvenance:(uint64_t)provenance syncIdentity:(uint64_t)identity primaryUser:(char)user database:(void *)d0 error:(uint64_t)d1;
+ (id)_nextSyncAnchorInDatabase:(void *)database error:;
+ (id)_predicateForContributorReference:(uint64_t)reference;
+ (id)_predicateForContributorWithUUID:(uint64_t)d;
+ (id)contributorEntityForNoContributorWithProfile:(id)profile error:(id *)error;
+ (id)contributorEntityWithUUID:(id)d profile:(id)profile includeDeleted:(BOOL)deleted error:(id *)error;
+ (id)contributorForReference:(id)reference profile:(id)profile error:(id *)error;
+ (id)externalReferenceForContributorReference:(id)reference profile:(id)profile error:(id *)error;
+ (id)insertOrLookupContributorEntityForNoContributorWithTransaction:(id)transaction syncIdentity:(int64_t)identity error:(id *)error;
+ (id)insertPrimaryUserWithAppleID:(id)d callerID:(id)iD syncIdentity:(int64_t)identity database:(id)database error:(id *)error;
+ (id)insertWithUUID:(id)d appleID:(id)iD callerID:(id)callerID primaryUser:(BOOL)user profile:(id)profile error:(id *)error;
+ (id)insertWithUUID:(id)d appleID:(id)iD callerID:(id)callerID primaryUser:(BOOL)user syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity transaction:(id)transaction error:(id *)self0;
+ (id)noneContributorUUID;
+ (id)primaryUserContributorInDatabase:(id)database error:(id *)error;
+ (id)primaryUserContributorInProfile:(id)profile error:(id *)error;
- (BOOL)deletedInProfile:(id)profile error:(id *)error;
- (BOOL)updateAppleID:(id)d profile:(id)profile error:(id *)error;
- (BOOL)updateCallerID:(id)d profile:(id)profile error:(id *)error;
- (id)appleIDInProfile:(id)profile error:(id *)error;
- (id)callerIDInProfile:(id)profile error:(id *)error;
- (id)modificationDateInProfile:(id)profile error:(id *)error;
- (id)syncAnchorInProfile:(id)profile error:(id *)error;
@end

@implementation HDContributorEntity

+ (id)insertOrLookupContributorEntityForNoContributorWithTransaction:(id)transaction syncIdentity:(int64_t)identity error:(id *)error
{
  v24[9] = *MEMORY[0x277D85DE8];
  v8 = [transaction databaseForEntityClass:self];
  noneContributorUUID = [self noneContributorUUID];
  v10 = [(HDContributorEntity *)self _predicateForContributorWithUUID:noneContributorUUID];
  v23 = 0;
  v11 = [self anyInDatabase:v8 predicate:v10 error:&v23];
  v12 = v23;
  v13 = v12;
  if (v11)
  {
    v14 = v11;
  }

  else if (v12)
  {
    if (error)
    {
      v17 = v12;
      v14 = 0;
      *error = v13;
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
    v20 = noneContributorUUID;
    identityCopy = identity;
    v14 = [self insertOrReplaceEntity:0 database:v8 properties:v18 error:&v22 bindingHandler:v19];
    v13 = v22;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)_predicateForContributorWithUUID:(uint64_t)d
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

+ (id)insertWithUUID:(id)d appleID:(id)iD callerID:(id)callerID primaryUser:(BOOL)user profile:(id)profile error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  callerIDCopy = callerID;
  profileCopy = profile;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__39;
  v37 = __Block_byref_object_dispose__39;
  v38 = 0;
  database = [profileCopy database];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __81__HDContributorEntity_insertWithUUID_appleID_callerID_primaryUser_profile_error___block_invoke;
  v25[3] = &unk_2786192F8;
  v30 = &v33;
  selfCopy = self;
  v19 = dCopy;
  v26 = v19;
  v20 = iDCopy;
  v27 = v20;
  v21 = callerIDCopy;
  v28 = v21;
  v22 = profileCopy;
  v29 = v22;
  userCopy = user;
  [self performWriteTransactionWithHealthDatabase:database error:error block:v25];

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

+ (id)_nextSyncAnchorInDatabase:(void *)database error:
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

  else if (database)
  {
    v8 = v6;
    v9 = 0;
    *database = v7;
  }

  else
  {
    _HKLogDroppedError();
    v9 = 0;
  }

  return v9;
}

+ (id)_insertWithUUID:(double)d appleID:(uint64_t)iD callerID:(void *)callerID deleted:(void *)deleted modificationDate:(void *)date syncAnchor:(uint64_t)anchor syncProvenance:(uint64_t)provenance syncIdentity:(uint64_t)identity primaryUser:(char)user database:(void *)d0 error:(uint64_t)d1
{
  v40[9] = *MEMORY[0x277D85DE8];
  callerIDCopy = callerID;
  deletedCopy = deleted;
  dateCopy = date;
  databaseCopy = database;
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
  v31 = callerIDCopy;
  v32 = deletedCopy;
  v33 = dateCopy;
  v38 = 0;
  dCopy = d;
  anchorCopy = anchor;
  provenanceCopy = provenance;
  identityCopy = identity;
  userCopy = user;
  v24 = dateCopy;
  v25 = deletedCopy;
  v26 = callerIDCopy;
  v27 = [v22 insertOrReplaceEntity:0 database:databaseCopy properties:v23 error:error bindingHandler:v30];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (id)insertWithUUID:(id)d appleID:(id)iD callerID:(id)callerID primaryUser:(BOOL)user syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity transaction:(id)transaction error:(id *)self0
{
  dCopy = d;
  iDCopy = iD;
  callerIDCopy = callerID;
  v19 = [transaction databaseForEntityClass:self];
  v20 = [(HDContributorEntity *)self _nextSyncAnchorInDatabase:v19 error:error];
  if (v20)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v22 = +[HDContributorEntity _insertWithUUID:appleID:callerID:deleted:modificationDate:syncAnchor:syncProvenance:syncIdentity:primaryUser:database:error:](Current, self, dCopy, iDCopy, callerIDCopy, [v20 longLongValue], provenance, identity, user, v19, error);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)insertPrimaryUserWithAppleID:(id)d callerID:(id)iD syncIdentity:(int64_t)identity database:(id)database error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  databaseCopy = database;
  v15 = [(HDContributorEntity *)self _nextSyncAnchorInDatabase:databaseCopy error:error];
  if (v15)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    Current = CFAbsoluteTimeGetCurrent();
    v18 = +[HDContributorEntity _insertWithUUID:appleID:callerID:deleted:modificationDate:syncAnchor:syncProvenance:syncIdentity:primaryUser:database:error:](Current, self, uUID, dCopy, iDCopy, [v15 longLongValue], 0, identity, 1, databaseCopy, error);
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

+ (BOOL)deleteContributorWithUUID:(id)d profile:(id)profile error:(id *)error
{
  dCopy = d;
  database = [profile database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__HDContributorEntity_deleteContributorWithUUID_profile_error___block_invoke;
  v12[3] = &unk_278619348;
  v13 = dCopy;
  selfCopy = self;
  v10 = dCopy;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v12];

  return error;
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

+ (id)contributorEntityWithUUID:(id)d profile:(id)profile includeDeleted:(BOOL)deleted error:(id *)error
{
  v20[2] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v11 = [(HDContributorEntity *)self _predicateForContributorWithUUID:d];
  if (!deleted)
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

  database = [profileCopy database];
  v17 = [self anyWithPredicate:v11 healthDatabase:database error:error];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)contributorEntityForNoContributorWithProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  noneContributorUUID = [self noneContributorUUID];
  v8 = [(HDContributorEntity *)self _predicateForContributorWithUUID:noneContributorUUID];
  database = [profileCopy database];

  v10 = [self anyWithPredicate:v8 healthDatabase:database error:error];

  return v10;
}

+ (id)primaryUserContributorInProfile:(id)profile error:(id *)error
{
  v6 = MEMORY[0x277D10B18];
  profileCopy = profile;
  v8 = [v6 predicateWithProperty:@"primary_user" equalToValue:MEMORY[0x277CBEC38]];
  database = [profileCopy database];

  v10 = [self anyWithPredicate:v8 healthDatabase:database error:error];

  return v10;
}

+ (id)primaryUserContributorInDatabase:(id)database error:(id *)error
{
  v6 = MEMORY[0x277D10B18];
  databaseCopy = database;
  v8 = [v6 predicateWithProperty:@"primary_user" equalToValue:MEMORY[0x277CBEC38]];
  v9 = [self anyInDatabase:databaseCopy predicate:v8 error:error];

  return v9;
}

+ (id)contributorForReference:(id)reference profile:(id)profile error:(id *)error
{
  v32[2] = *MEMORY[0x277D85DE8];
  referenceCopy = reference;
  profileCopy = profile;
  if ([referenceCopy contributorType] == 2)
  {
    v10 = 0;
  }

  else
  {
    v11 = [(HDContributorEntity *)self _predicateForContributorReference:referenceCopy];
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
    database = [profileCopy database];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __61__HDContributorEntity_contributorForReference_profile_error___block_invoke;
    v22[3] = &unk_278616AA0;
    selfCopy = self;
    v17 = v15;
    v23 = v17;
    v24 = &v26;
    v18 = [self performReadTransactionWithHealthDatabase:database error:error block:v22];

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

+ (id)_predicateForContributorReference:(uint64_t)reference
{
  v2 = a2;
  v3 = objc_opt_self();
  contributorType = [v2 contributorType];
  if (contributorType > 2)
  {
    if (contributorType == 3)
    {
      falsePredicate = [MEMORY[0x277D10B18] predicateWithProperty:@"primary_user" equalToValue:MEMORY[0x277CBEC38]];
      goto LABEL_12;
    }

    if (contributorType == 4)
    {
      uUID = [v2 UUID];
      goto LABEL_8;
    }
  }

  else
  {
    if (contributorType == 1)
    {
      v9 = MEMORY[0x277D10B18];
      v10 = *MEMORY[0x277D10A40];
      persistentID = [v2 persistentID];
      v7 = [v9 predicateWithProperty:v10 equalToValue:persistentID];

      goto LABEL_13;
    }

    if (contributorType == 2)
    {
      uUID = [v3 noneContributorUUID];
LABEL_8:
      v6 = uUID;
      v7 = [(HDContributorEntity *)v3 _predicateForContributorWithUUID:uUID];

      goto LABEL_13;
    }
  }

  falsePredicate = [MEMORY[0x277D10B70] falsePredicate];
LABEL_12:
  v7 = falsePredicate;
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

+ (id)externalReferenceForContributorReference:(id)reference profile:(id)profile error:(id *)error
{
  v35[2] = *MEMORY[0x277D85DE8];
  referenceCopy = reference;
  profileCopy = profile;
  contributorType = [referenceCopy contributorType];
  if (contributorType > 2)
  {
    if (contributorType != 3)
    {
      if (contributorType != 4)
      {
        goto LABEL_12;
      }

      goto LABEL_7;
    }

LABEL_8:
    v11 = [(HDContributorEntity *)self _predicateForContributorReference:referenceCopy];
    objc_opt_self();
    v24 = [MEMORY[0x277D10B18] predicateWithProperty:@"deleted" equalToValue:MEMORY[0x277CBEC28]];
    v12 = MEMORY[0x277D10B20];
    v35[0] = v11;
    v35[1] = v24;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
    v14 = [v12 predicateMatchingAllPredicates:v13];

    v15 = v14;
    v16 = profileCopy;
    v17 = objc_opt_self();
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__39;
    v33 = __Block_byref_object_dispose__39;
    v34 = 0;
    database = [v16 database];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __85__HDContributorEntity__contributorReferenceForEntityMatchingPredicate_profile_error___block_invoke;
    v25[3] = &unk_278616AA0;
    v28 = v17;
    v19 = v15;
    v26 = v19;
    v27 = &v29;
    v20 = [v17 performReadTransactionWithHealthDatabase:database error:error block:v25];

    if (v20)
    {
      v21 = v30[5];
    }

    else
    {
      v21 = 0;
    }

    error = v21;

    _Block_object_dispose(&v29, 8);
    goto LABEL_12;
  }

  if (contributorType == 1)
  {
    goto LABEL_8;
  }

  if (contributorType == 2)
  {
LABEL_7:
    error = referenceCopy;
  }

LABEL_12:

  v22 = *MEMORY[0x277D85DE8];

  return error;
}

- (id)appleIDInProfile:(id)profile error:(id *)error
{
  database = [profile database];
  v7 = [(HDHealthEntity *)self valueForProperty:@"apple_id" healthDatabase:database error:error];

  return v7;
}

- (BOOL)updateAppleID:(id)d profile:(id)profile error:(id *)error
{
  dCopy = d;
  profileCopy = profile;
  v10 = objc_opt_class();
  database = [profileCopy database];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __51__HDContributorEntity_updateAppleID_profile_error___block_invoke;
  v14[3] = &unk_278613218;
  v14[4] = self;
  v15 = dCopy;
  v12 = dCopy;
  LOBYTE(error) = [v10 performWriteTransactionWithHealthDatabase:database error:error block:v14];

  return error;
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

- (id)callerIDInProfile:(id)profile error:(id *)error
{
  database = [profile database];
  v7 = [(HDHealthEntity *)self valueForProperty:@"caller_id" healthDatabase:database error:error];

  return v7;
}

- (BOOL)updateCallerID:(id)d profile:(id)profile error:(id *)error
{
  dCopy = d;
  profileCopy = profile;
  v10 = objc_opt_class();
  database = [profileCopy database];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__HDContributorEntity_updateCallerID_profile_error___block_invoke;
  v14[3] = &unk_278613218;
  v14[4] = self;
  v15 = dCopy;
  v12 = dCopy;
  LOBYTE(error) = [v10 performWriteTransactionWithHealthDatabase:database error:error block:v14];

  return error;
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

- (id)modificationDateInProfile:(id)profile error:(id *)error
{
  database = [profile database];
  v7 = [(HDHealthEntity *)self valueForProperty:@"mod_date" healthDatabase:database error:error];

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

- (id)syncAnchorInProfile:(id)profile error:(id *)error
{
  database = [profile database];
  v7 = [(HDHealthEntity *)self valueForProperty:@"sync_anchor" healthDatabase:database error:error];

  return v7;
}

- (BOOL)deletedInProfile:(id)profile error:(id *)error
{
  database = [profile database];
  v7 = [(HDHealthEntity *)self valueForProperty:@"deleted" healthDatabase:database error:error];

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