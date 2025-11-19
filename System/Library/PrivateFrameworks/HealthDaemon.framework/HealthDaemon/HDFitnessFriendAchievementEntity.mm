@interface HDFitnessFriendAchievementEntity
+ (BOOL)addCodableObject:(id)a3 toCollection:(id)a4;
+ (BOOL)enumerateAchievementsWithPredicate:(id)a3 anchor:(id *)a4 profile:(id)a5 error:(id *)a6 handler:(id)a7;
+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7;
+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7;
@end

@implementation HDFitnessFriendAchievementEntity

+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [(HDEntityEncoder *)[_HDFitnessFriendAchievementEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:v14 transaction:v13 purpose:a5 encodingOptions:v12 authorizationFilter:v11];

  return v15;
}

+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7
{
  v28[5] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  v14 = a5;
  v15 = objc_opt_class();
  if (([v15 isEqual:objc_opt_class()] & 1) == 0)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:a1 file:@"HDFitnessFriendAchievementEntity.m" lineNumber:84 description:{@"Subclasses must override %s", "+[HDFitnessFriendAchievementEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  v28[0] = @"data_id";
  v28[1] = @"friend_uuid";
  v28[2] = @"template_unique_name";
  v28[3] = @"completed_date";
  v28[4] = @"value";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:5];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __98__HDFitnessFriendAchievementEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
  v25[3] = &unk_278613DE8;
  v26 = v13;
  v27 = v12;
  v17 = v12;
  v18 = v13;
  v19 = [a1 insertOrReplaceEntity:1 database:v14 properties:v16 error:a7 bindingHandler:v25];

  if (v19)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

void __98__HDFitnessFriendAchievementEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"data_id", [*(a1 + 32) longLongValue]);
  v4 = [*(a1 + 40) friendUUID];
  MEMORY[0x22AAC6C00](a2, @"friend_uuid", v4);

  v5 = [*(a1 + 40) templateUniqueName];
  MEMORY[0x22AAC6BD0](a2, @"template_unique_name", v5);

  v6 = [*(a1 + 40) completedDate];
  MEMORY[0x22AAC6B50](a2, @"completed_date", v6);

  v7 = [*(a1 + 40) value];
  MEMORY[0x22AAC6BB0](a2, @"value", v7);
}

+ (BOOL)addCodableObject:(id)a3 toCollection:(id)a4
{
  if (a3)
  {
    [a4 addFitnessFriendAchievements:a3];
  }

  return a3 != 0;
}

+ (BOOL)enumerateAchievementsWithPredicate:(id)a3 anchor:(id *)a4 profile:(id)a5 error:(id *)a6 handler:(id)a7
{
  v33[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a7;
  if (a4)
  {
    v13 = *a4;
    v14 = *MEMORY[0x277D10A40];
    if (v13)
    {
      v15 = [MEMORY[0x277D10B18] predicateWithProperty:*MEMORY[0x277D10A40] greaterThanValue:v13];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v14 = *MEMORY[0x277D10A40];
  }

  v16 = [MEMORY[0x277CCD720] fitnessFriendAchievementType];
  v17 = [(HDSampleEntity *)HDFitnessFriendAchievementEntity entityEnumeratorWithType:v16 profile:v11];

  v18 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v10 otherPredicate:v15];
  [v17 setPredicate:v18];

  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = [v13 longLongValue];
  v19 = [MEMORY[0x277D10B68] orderingTermWithProperty:v14 entityClass:objc_opt_class() ascending:1];
  v33[0] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
  [v17 setOrderingTerms:v20];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __100__HDFitnessFriendAchievementEntity_enumerateAchievementsWithPredicate_anchor_profile_error_handler___block_invoke;
  v26[3] = &unk_278622330;
  v28 = &v29;
  v21 = v12;
  v27 = v21;
  v22 = [v17 enumerateWithError:a6 handler:v26];
  if (a4)
  {
    *a4 = [MEMORY[0x277CCABB0] numberWithLongLong:v30[3]];
  }

  _Block_object_dispose(&v29, 8);
  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t __100__HDFitnessFriendAchievementEntity_enumerateAchievementsWithPredicate_anchor_profile_error_handler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 24);
  if (v4 <= a3)
  {
    v4 = a3;
  }

  *(v3 + 24) = v4;
  return (*(*(a1 + 32) + 16))();
}

@end