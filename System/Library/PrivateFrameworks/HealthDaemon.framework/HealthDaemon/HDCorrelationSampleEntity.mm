@interface HDCorrelationSampleEntity
+ (BOOL)acceptsObject:(id)a3;
+ (BOOL)addCodableObject:(id)a3 toCollection:(id)a4;
+ (id)deleteStatementsForRelatedEntitiesWithTransaction:(id)a3;
+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7;
@end

@implementation HDCorrelationSampleEntity

+ (BOOL)acceptsObject:(id)a3
{
  v4 = a3;
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___HDCorrelationSampleEntity;
  if (objc_msgSendSuper2(&v7, sel_acceptsObject_, v4) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 _containsObjects];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)deleteStatementsForRelatedEntitiesWithTransaction:(id)a3
{
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___HDCorrelationSampleEntity;
  v3 = a3;
  v4 = objc_msgSendSuper2(&v8, sel_deleteStatementsForRelatedEntitiesWithTransaction_, v3);
  v5 = [HDAssociationEntity deleteStatementForParentIDWithTransaction:v3, v8.receiver, v8.super_class];

  v6 = [v4 arrayByAddingObject:v5];

  return v6;
}

uint64_t __53__HDCorrelationSampleEntity__objectsWithIDs_profile___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v5 = *(a1 + 32);
    v6 = MEMORY[0x277CCABB0];
    v7 = a2;
    v8 = [v6 numberWithLongLong:a3];
    [v5 addObject:v8];

    [*(a1 + 40) addObject:v7];
  }

  return 1;
}

+ (BOOL)addCodableObject:(id)a3 toCollection:(id)a4
{
  if (a3)
  {
    [a4 addCorrelations:a3];
  }

  return a3 != 0;
}

+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [(HDEntityEncoder *)[_HDCorrelationSampleEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:v14 transaction:v13 purpose:a5 encodingOptions:v12 authorizationFilter:v11];

  return v15;
}

@end