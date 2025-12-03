@interface HDMedicalUserDomainConceptCollapser
+ (BOOL)preDeduplicationProcessingForUserDomainConcept:(id)concept duplicateConcept:(id)duplicateConcept transaction:(id)transaction error:(id *)error;
+ (id)mergeSubclassDataTo:(id)to fromDuplicateConcept:(id)concept;
@end

@implementation HDMedicalUserDomainConceptCollapser

+ (BOOL)preDeduplicationProcessingForUserDomainConcept:(id)concept duplicateConcept:(id)duplicateConcept transaction:(id)transaction error:(id *)error
{
  conceptCopy = concept;
  transactionCopy = transaction;
  duplicateConceptCopy = duplicateConcept;
  objc_opt_self();
  protectedDatabase = [transactionCopy protectedDatabase];
  uUID = [duplicateConceptCopy UUID];

  v14 = HDDataEntityPredicateForDataUUID();
  v15 = [(HDSQLiteEntity *)HDMedicalUserDomainConceptEntity anyInDatabase:protectedDatabase predicate:v14 error:error];

  if (v15)
  {
    protectedDatabase2 = [transactionCopy protectedDatabase];
    uUID2 = [conceptCopy UUID];
    v18 = HDDataEntityPredicateForDataUUID();
    v19 = [(HDSQLiteEntity *)HDMedicalUserDomainConceptEntity anyInDatabase:protectedDatabase2 predicate:v18 error:error];

    if (v19)
    {
      v20 = +[HDMedicalUserDomainConceptMappingEntity migrateMappingsFromUserDomainConceptID:toUserDomainConceptID:transaction:error:](HDMedicalUserDomainConceptMappingEntity, "migrateMappingsFromUserDomainConceptID:toUserDomainConceptID:transaction:error:", [v15 persistentID], objc_msgSend(v19, "persistentID"), transactionCopy, error);
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

+ (id)mergeSubclassDataTo:(id)to fromDuplicateConcept:(id)concept
{
  toCopy = to;
  conceptCopy = concept;
  categoryTypes = [toCopy categoryTypes];
  v8 = [categoryTypes mutableCopy];

  categoryTypes2 = [conceptCopy categoryTypes];

  [v8 hk_addUniqueObjectsFromArray:categoryTypes2];
  v10 = [v8 count];
  categoryTypes3 = [toCopy categoryTypes];
  v12 = [categoryTypes3 count];

  if (v10 == v12)
  {
    v13 = toCopy;
  }

  else
  {
    v13 = [toCopy medicalConceptByReplacingCategoryTypes:v8];
  }

  v14 = v13;

  return v14;
}

@end