@interface HDCorrelationSampleEntity
+ (BOOL)acceptsObject:(id)object;
+ (BOOL)addCodableObject:(id)object toCollection:(id)collection;
+ (id)deleteStatementsForRelatedEntitiesWithTransaction:(id)transaction;
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
@end

@implementation HDCorrelationSampleEntity

+ (BOOL)acceptsObject:(id)object
{
  objectCopy = object;
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___HDCorrelationSampleEntity;
  if (objc_msgSendSuper2(&v7, sel_acceptsObject_, objectCopy) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    _containsObjects = [objectCopy _containsObjects];
  }

  else
  {
    _containsObjects = 0;
  }

  return _containsObjects;
}

+ (id)deleteStatementsForRelatedEntitiesWithTransaction:(id)transaction
{
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___HDCorrelationSampleEntity;
  transactionCopy = transaction;
  v4 = objc_msgSendSuper2(&v8, sel_deleteStatementsForRelatedEntitiesWithTransaction_, transactionCopy);
  v5 = [HDAssociationEntity deleteStatementForParentIDWithTransaction:transactionCopy, v8.receiver, v8.super_class];

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

+ (BOOL)addCodableObject:(id)object toCollection:(id)collection
{
  if (object)
  {
    [collection addCorrelations:object];
  }

  return object != 0;
}

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  filterCopy = filter;
  optionsCopy = options;
  transactionCopy = transaction;
  profileCopy = profile;
  v15 = [(HDEntityEncoder *)[_HDCorrelationSampleEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v15;
}

@end