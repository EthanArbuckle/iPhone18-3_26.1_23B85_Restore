@interface HDFitnessFriendAchievementEntity
+ (BOOL)addCodableObject:(id)object toCollection:(id)collection;
+ (BOOL)enumerateAchievementsWithPredicate:(id)predicate anchor:(id *)anchor profile:(id)profile error:(id *)error handler:(id)handler;
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error;
@end

@implementation HDFitnessFriendAchievementEntity

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  filterCopy = filter;
  optionsCopy = options;
  transactionCopy = transaction;
  profileCopy = profile;
  v15 = [(HDEntityEncoder *)[_HDFitnessFriendAchievementEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v15;
}

+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error
{
  v28[5] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  dCopy = d;
  databaseCopy = database;
  v15 = objc_opt_class();
  if (([v15 isEqual:objc_opt_class()] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDFitnessFriendAchievementEntity.m" lineNumber:84 description:{@"Subclasses must override %s", "+[HDFitnessFriendAchievementEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
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
  v26 = dCopy;
  v27 = objectCopy;
  v17 = objectCopy;
  v18 = dCopy;
  v19 = [self insertOrReplaceEntity:1 database:databaseCopy properties:v16 error:error bindingHandler:v25];

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

+ (BOOL)addCodableObject:(id)object toCollection:(id)collection
{
  if (object)
  {
    [collection addFitnessFriendAchievements:object];
  }

  return object != 0;
}

+ (BOOL)enumerateAchievementsWithPredicate:(id)predicate anchor:(id *)anchor profile:(id)profile error:(id *)error handler:(id)handler
{
  v33[1] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  profileCopy = profile;
  handlerCopy = handler;
  if (anchor)
  {
    v13 = *anchor;
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

  fitnessFriendAchievementType = [MEMORY[0x277CCD720] fitnessFriendAchievementType];
  v17 = [(HDSampleEntity *)HDFitnessFriendAchievementEntity entityEnumeratorWithType:fitnessFriendAchievementType profile:profileCopy];

  v18 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:predicateCopy otherPredicate:v15];
  [v17 setPredicate:v18];

  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  longLongValue = [v13 longLongValue];
  v19 = [MEMORY[0x277D10B68] orderingTermWithProperty:v14 entityClass:objc_opt_class() ascending:1];
  v33[0] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
  [v17 setOrderingTerms:v20];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __100__HDFitnessFriendAchievementEntity_enumerateAchievementsWithPredicate_anchor_profile_error_handler___block_invoke;
  v26[3] = &unk_278622330;
  v28 = &v29;
  v21 = handlerCopy;
  v27 = v21;
  v22 = [v17 enumerateWithError:error handler:v26];
  if (anchor)
  {
    *anchor = [MEMORY[0x277CCABB0] numberWithLongLong:v30[3]];
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