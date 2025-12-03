@interface ASCAssociatedReaderID
+ (id)_associatedReaderIDsWithQuery:(id)query inDatabase:(id)database;
+ (id)_predicateForAutomaticSelectionCriterionPID:(int64_t)d;
+ (id)_propertySetters;
+ (id)_propertyValuesFor:(id)for;
+ (id)associatedReaderIDsForAutomaticSelectionCriterionPID:(int64_t)d inDatabase:(id)database;
+ (void)deleteAssociatedReaderIDsForAutomaticSelectionCriterionPID:(int64_t)d inDatabase:(id)database;
+ (void)insertOrUpdateAssociatedReaderIDs:(id)ds forAutomaticSelectionCriterionPID:(int64_t)d inDatabase:(id)database;
- (ASCAssociatedReaderID)initWithObject:(id)object forAutomaticSelectionCriterionPID:(int64_t)d inDatabase:(id)database;
- (id)associatedReaderID;
- (void)updateWithObject:(id)object;
@end

@implementation ASCAssociatedReaderID

+ (id)_propertySetters
{
  v4[0] = @"reader_id";
  v4[1] = @"priority";
  v5[0] = &stru_10084A8F0;
  v5[1] = &stru_10084A910;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

- (ASCAssociatedReaderID)initWithObject:(id)object forAutomaticSelectionCriterionPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  objectCopy = object;
  v10 = [objc_opt_class() _propertyValuesFor:objectCopy];

  v11 = [NSNumber numberWithLongLong:d];
  [v10 setObjectOrNull:v11 forKey:@"automatic_selection_criterion_pid"];

  v12 = [(SQLiteEntity *)self initWithPropertyValues:v10 inDatabase:databaseCopy];
  return v12;
}

- (void)updateWithObject:(id)object
{
  objectCopy = object;
  v5 = [objc_opt_class() _propertyValuesFor:objectCopy];

  [(SQLiteEntity *)self setValuesWithDictionary:v5];
}

+ (id)associatedReaderIDsForAutomaticSelectionCriterionPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForAutomaticSelectionCriterionPID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];
  v9 = [self _associatedReaderIDsWithQuery:v8 inDatabase:databaseCopy];

  return v9;
}

+ (void)deleteAssociatedReaderIDsForAutomaticSelectionCriterionPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForAutomaticSelectionCriterionPID:d];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

+ (void)insertOrUpdateAssociatedReaderIDs:(id)ds forAutomaticSelectionCriterionPID:(int64_t)d inDatabase:(id)database
{
  dsCopy = ds;
  databaseCopy = database;
  v26 = objc_alloc_init(NSMutableSet);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = dsCopy;
  v27 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v27)
  {
    dCopy = d;
    v24 = *v29;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        readerID = [v10 readerID];
        v12 = [self _predicateForAutomaticSelectionCriterionPID:d];
        v33[0] = v12;
        v13 = [self _predicateForReaderID:readerID];
        v33[1] = v13;
        v14 = [NSArray arrayWithObjects:v33 count:2];
        v15 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v14];
        v16 = [self anyInDatabase:databaseCopy predicate:v15];

        if (v16)
        {
          [(ASCAssociatedReaderID *)v16 updateWithObject:v10];
          d = dCopy;
        }

        else
        {
          d = dCopy;
          v16 = [[ASCAssociatedReaderID alloc] initWithObject:v10 forAutomaticSelectionCriterionPID:dCopy inDatabase:databaseCopy];
        }

        [v26 addObject:readerID];
      }

      v27 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v27);
  }

  v17 = [SQLiteContainsPredicate doesNotContainPredicateWithProperty:@"reader_id" values:v26];
  v32[0] = v17;
  v18 = [self _predicateForAutomaticSelectionCriterionPID:d];
  v32[1] = v18;
  v19 = [NSArray arrayWithObjects:v32 count:2];
  v20 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v19];

  v21 = [self queryWithDatabase:databaseCopy predicate:v20];
  [v21 deleteAllEntities];
}

+ (id)_associatedReaderIDsWithQuery:(id)query inDatabase:(id)database
{
  queryCopy = query;
  _propertySetters = [self _propertySetters];
  v7 = objc_alloc_init(NSMutableSet);
  allKeys = [_propertySetters allKeys];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100190A38;
  v13[3] = &unk_10083C998;
  selfCopy = self;
  v14 = _propertySetters;
  v9 = v7;
  v15 = v9;
  v10 = _propertySetters;
  [queryCopy enumeratePersistentIDsAndProperties:allKeys usingBlock:v13];

  if ([v9 count])
  {
    v11 = [v9 copy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)associatedReaderID
{
  v3 = objc_alloc_init(PKASCAssociatedReaderID);
  _propertySetters = [objc_opt_class() _propertySetters];
  allKeys = [_propertySetters allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100190BB8;
  v11[3] = &unk_10083BEE0;
  v11[4] = self;
  v12 = _propertySetters;
  v6 = v3;
  v13 = v6;
  v7 = _propertySetters;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

+ (id)_predicateForAutomaticSelectionCriterionPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"automatic_selection_criterion_pid" equalToValue:v3];

  return v4;
}

+ (id)_propertyValuesFor:(id)for
{
  forCopy = for;
  v4 = objc_alloc_init(NSMutableDictionary);
  readerID = [forCopy readerID];
  [v4 setObjectOrNull:readerID forKey:@"reader_id"];

  priority = [forCopy priority];
  v7 = [NSNumber numberWithUnsignedInteger:priority];
  [v4 setObjectOrNull:v7 forKey:@"priority"];

  return v4;
}

@end