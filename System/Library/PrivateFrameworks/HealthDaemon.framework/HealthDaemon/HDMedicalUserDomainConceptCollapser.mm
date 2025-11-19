@interface HDMedicalUserDomainConceptCollapser
+ (BOOL)preDeduplicationProcessingForUserDomainConcept:(id)a3 duplicateConcept:(id)a4 transaction:(id)a5 error:(id *)a6;
+ (id)mergeSubclassDataTo:(id)a3 fromDuplicateConcept:(id)a4;
@end

@implementation HDMedicalUserDomainConceptCollapser

+ (BOOL)preDeduplicationProcessingForUserDomainConcept:(id)a3 duplicateConcept:(id)a4 transaction:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a4;
  objc_opt_self();
  v12 = [v10 protectedDatabase];
  v13 = [v11 UUID];

  v14 = HDDataEntityPredicateForDataUUID();
  v15 = [(HDSQLiteEntity *)HDMedicalUserDomainConceptEntity anyInDatabase:v12 predicate:v14 error:a6];

  if (v15)
  {
    v16 = [v10 protectedDatabase];
    v17 = [v9 UUID];
    v18 = HDDataEntityPredicateForDataUUID();
    v19 = [(HDSQLiteEntity *)HDMedicalUserDomainConceptEntity anyInDatabase:v16 predicate:v18 error:a6];

    if (v19)
    {
      v20 = +[HDMedicalUserDomainConceptMappingEntity migrateMappingsFromUserDomainConceptID:toUserDomainConceptID:transaction:error:](HDMedicalUserDomainConceptMappingEntity, "migrateMappingsFromUserDomainConceptID:toUserDomainConceptID:transaction:error:", [v15 persistentID], objc_msgSend(v19, "persistentID"), v10, a6);
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)mergeSubclassDataTo:(id)a3 fromDuplicateConcept:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 categoryTypes];
  v8 = [v7 mutableCopy];

  v9 = [v6 categoryTypes];

  [v8 hk_addUniqueObjectsFromArray:v9];
  v10 = [v8 count];
  v11 = [v5 categoryTypes];
  v12 = [v11 count];

  if (v10 == v12)
  {
    v13 = v5;
  }

  else
  {
    v13 = [v5 medicalConceptByReplacingCategoryTypes:v8];
  }

  v14 = v13;

  return v14;
}

@end