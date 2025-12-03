@interface NSManagedObjectContext
+ (id)mergePredicate:(id)predicate andPredicate:(id)andPredicate;
- (id)copyEntityProperty:(id)property fromEntityName:(id)name withPredicate:(id)predicate;
- (id)entity:(id)entity withPredicate:(id)predicate sortDescriptors:(id)descriptors fetchLimit:(unint64_t)limit prefetchRelationships:(id)relationships;
- (id)newByClass:(Class)class;
- (id)objectIDsWithPredicate:(id)predicate forEntity:(id)entity;
- (id)unbatchedObjectsWithPredicate:(id)predicate forEntity:(id)entity;
- (unint64_t)countEntity:(id)entity withPredicate:(id)predicate;
- (void)batchDeleteEntity:(id)entity matching:(id)matching prefetchRelationships:(id)relationships;
- (void)im_performSafeAccess:(id)access;
@end

@implementation NSManagedObjectContext

+ (id)mergePredicate:(id)predicate andPredicate:(id)andPredicate
{
  predicateCopy = predicate;
  andPredicateCopy = andPredicate;
  v7 = andPredicateCopy;
  if (predicateCopy && andPredicateCopy)
  {
    v8 = [[NSArray alloc] initWithObjects:{predicateCopy, andPredicateCopy, 0}];
    v9 = [NSCompoundPredicate andPredicateWithSubpredicates:v8];
  }

  else
  {
    if (predicateCopy)
    {
      v10 = predicateCopy;
    }

    else
    {
      v10 = andPredicateCopy;
    }

    v9 = v10;
  }

  return v9;
}

- (unint64_t)countEntity:(id)entity withPredicate:(id)predicate
{
  predicateCopy = predicate;
  entityCopy = entity;
  v8 = objc_alloc_init(NSFetchRequest);
  v9 = [NSEntityDescription entityForName:entityCopy inManagedObjectContext:self];

  [v8 setEntity:v9];
  [v8 setPredicate:predicateCopy];

  v14 = 0;
  v10 = [(NSManagedObjectContext *)self countForFetchRequest:v8 error:&v14];
  v11 = v14;
  v12 = v11;
  if (v11)
  {
    [v11 logRecursively];
  }

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyEntityProperty:(id)property fromEntityName:(id)name withPredicate:(id)predicate
{
  v5 = [(NSManagedObjectContext *)self copyEntityPropertyArray:property fromEntityName:name withPredicate:predicate sortBy:0 ascending:0];
  if ([v5 count] == 1 || objc_msgSend(v5, "count") >= 2)
  {
    lastObject = [v5 lastObject];
  }

  else
  {
    lastObject = 0;
  }

  v7 = [lastObject copy];

  return v7;
}

- (id)newByClass:(Class)class
{
  v4 = NSStringFromClass(class);
  v5 = [NSEntityDescription insertNewObjectForEntityForName:v4 inManagedObjectContext:self];

  return v5;
}

- (id)objectIDsWithPredicate:(id)predicate forEntity:(id)entity
{
  predicateCopy = predicate;
  entityCopy = entity;
  v8 = objc_autoreleasePoolPush();
  v9 = objc_alloc_init(NSFetchRequest);
  v10 = [NSEntityDescription entityForName:entityCopy inManagedObjectContext:self];
  [v9 setEntity:v10];

  [v9 setPredicate:predicateCopy];
  [v9 setResultType:1];
  [v9 setIncludesPropertyValues:0];
  v15 = 0;
  v11 = [(NSManagedObjectContext *)self executeFetchRequest:v9 error:&v15];
  v12 = v15;
  v13 = v12;
  if (v12)
  {
    [v12 logRecursively];
  }

  objc_autoreleasePoolPop(v8);

  return v11;
}

- (id)unbatchedObjectsWithPredicate:(id)predicate forEntity:(id)entity
{
  predicateCopy = predicate;
  entityCopy = entity;
  v8 = objc_autoreleasePoolPush();
  v9 = objc_alloc_init(NSFetchRequest);
  v10 = [NSEntityDescription entityForName:entityCopy inManagedObjectContext:self];
  [v9 setEntity:v10];

  [v9 setPredicate:predicateCopy];
  [v9 setIncludesPropertyValues:1];
  v15 = 0;
  v11 = [(NSManagedObjectContext *)self executeFetchRequest:v9 error:&v15];
  v12 = v15;
  v13 = v12;
  if (v12)
  {
    [v12 logRecursively];
  }

  objc_autoreleasePoolPop(v8);

  return v11;
}

- (id)entity:(id)entity withPredicate:(id)predicate sortDescriptors:(id)descriptors fetchLimit:(unint64_t)limit prefetchRelationships:(id)relationships
{
  entityCopy = entity;
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  relationshipsCopy = relationships;
  v16 = objc_autoreleasePoolPush();
  v17 = objc_alloc_init(NSFetchRequest);
  v18 = [NSEntityDescription entityForName:entityCopy inManagedObjectContext:self];
  [v17 setEntity:v18];

  [v17 setPredicate:predicateCopy];
  [v17 setSortDescriptors:descriptorsCopy];
  if ([relationshipsCopy count])
  {
    [v17 setRelationshipKeyPathsForPrefetching:relationshipsCopy];
  }

  if (limit)
  {
    if (limit <= 0xA)
    {
      [v17 setReturnsObjectsAsFaults:0];
    }

    [v17 setFetchLimit:limit];
  }

  else
  {
    [v17 setFetchBatchSize:100];
  }

  v23 = 0;
  v19 = [(NSManagedObjectContext *)self executeFetchRequest:v17 error:&v23];
  v20 = v23;
  v21 = v20;
  if (v20)
  {
    [v20 logRecursively];
  }

  objc_autoreleasePoolPop(v16);

  return v19;
}

- (void)im_performSafeAccess:(id)access
{
  accessCopy = access;
  [(NSManagedObjectContext *)self im_pushSafeAccessState];
  accessCopy[2](accessCopy);
  [(NSManagedObjectContext *)self im_popSafeAccessState];
}

- (void)batchDeleteEntity:(id)entity matching:(id)matching prefetchRelationships:(id)relationships
{
  entityCopy = entity;
  matchingCopy = matching;
  relationshipsCopy = relationships;
  v11 = objc_autoreleasePoolPush();
  [(NSManagedObjectContext *)self unbatchedObjectsWithPredicate:matchingCopy forEntity:entityCopy];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100014FE0;
  v12 = v13[3] = &unk_10023FA70;
  v14 = v12;
  selfCopy = self;
  v16 = &v17;
  [(NSManagedObjectContext *)self im_performSafeAccess:v13];
  if (*(v18 + 6))
  {
    [(NSManagedObjectContext *)self save:0];
  }

  _Block_object_dispose(&v17, 8);
  objc_autoreleasePoolPop(v11);
}

@end