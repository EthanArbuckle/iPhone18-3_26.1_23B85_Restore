@interface ASCAssociatedReaderID
+ (id)_associatedReaderIDsWithQuery:(id)a3 inDatabase:(id)a4;
+ (id)_predicateForAutomaticSelectionCriterionPID:(int64_t)a3;
+ (id)_propertySetters;
+ (id)_propertyValuesFor:(id)a3;
+ (id)associatedReaderIDsForAutomaticSelectionCriterionPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)deleteAssociatedReaderIDsForAutomaticSelectionCriterionPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)insertOrUpdateAssociatedReaderIDs:(id)a3 forAutomaticSelectionCriterionPID:(int64_t)a4 inDatabase:(id)a5;
- (ASCAssociatedReaderID)initWithObject:(id)a3 forAutomaticSelectionCriterionPID:(int64_t)a4 inDatabase:(id)a5;
- (id)associatedReaderID;
- (void)updateWithObject:(id)a3;
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

- (ASCAssociatedReaderID)initWithObject:(id)a3 forAutomaticSelectionCriterionPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [objc_opt_class() _propertyValuesFor:v9];

  v11 = [NSNumber numberWithLongLong:a4];
  [v10 setObjectOrNull:v11 forKey:@"automatic_selection_criterion_pid"];

  v12 = [(SQLiteEntity *)self initWithPropertyValues:v10 inDatabase:v8];
  return v12;
}

- (void)updateWithObject:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _propertyValuesFor:v4];

  [(SQLiteEntity *)self setValuesWithDictionary:v5];
}

+ (id)associatedReaderIDsForAutomaticSelectionCriterionPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForAutomaticSelectionCriterionPID:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];
  v9 = [a1 _associatedReaderIDsWithQuery:v8 inDatabase:v6];

  return v9;
}

+ (void)deleteAssociatedReaderIDsForAutomaticSelectionCriterionPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v8 = [a1 _predicateForAutomaticSelectionCriterionPID:a3];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

+ (void)insertOrUpdateAssociatedReaderIDs:(id)a3 forAutomaticSelectionCriterionPID:(int64_t)a4 inDatabase:(id)a5
{
  v7 = a3;
  v8 = a5;
  v26 = objc_alloc_init(NSMutableSet);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v7;
  v27 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v27)
  {
    v23 = a4;
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
        v11 = [v10 readerID];
        v12 = [a1 _predicateForAutomaticSelectionCriterionPID:a4];
        v33[0] = v12;
        v13 = [a1 _predicateForReaderID:v11];
        v33[1] = v13;
        v14 = [NSArray arrayWithObjects:v33 count:2];
        v15 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v14];
        v16 = [a1 anyInDatabase:v8 predicate:v15];

        if (v16)
        {
          [(ASCAssociatedReaderID *)v16 updateWithObject:v10];
          a4 = v23;
        }

        else
        {
          a4 = v23;
          v16 = [[ASCAssociatedReaderID alloc] initWithObject:v10 forAutomaticSelectionCriterionPID:v23 inDatabase:v8];
        }

        [v26 addObject:v11];
      }

      v27 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v27);
  }

  v17 = [SQLiteContainsPredicate doesNotContainPredicateWithProperty:@"reader_id" values:v26];
  v32[0] = v17;
  v18 = [a1 _predicateForAutomaticSelectionCriterionPID:a4];
  v32[1] = v18;
  v19 = [NSArray arrayWithObjects:v32 count:2];
  v20 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v19];

  v21 = [a1 queryWithDatabase:v8 predicate:v20];
  [v21 deleteAllEntities];
}

+ (id)_associatedReaderIDsWithQuery:(id)a3 inDatabase:(id)a4
{
  v5 = a3;
  v6 = [a1 _propertySetters];
  v7 = objc_alloc_init(NSMutableSet);
  v8 = [v6 allKeys];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100190A38;
  v13[3] = &unk_10083C998;
  v16 = a1;
  v14 = v6;
  v9 = v7;
  v15 = v9;
  v10 = v6;
  [v5 enumeratePersistentIDsAndProperties:v8 usingBlock:v13];

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
  v4 = [objc_opt_class() _propertySetters];
  v5 = [v4 allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100190BB8;
  v11[3] = &unk_10083BEE0;
  v11[4] = self;
  v12 = v4;
  v6 = v3;
  v13 = v6;
  v7 = v4;
  [(SQLiteEntity *)self getValuesForProperties:v5 withApplier:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

+ (id)_predicateForAutomaticSelectionCriterionPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"automatic_selection_criterion_pid" equalToValue:v3];

  return v4;
}

+ (id)_propertyValuesFor:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 readerID];
  [v4 setObjectOrNull:v5 forKey:@"reader_id"];

  v6 = [v3 priority];
  v7 = [NSNumber numberWithUnsignedInteger:v6];
  [v4 setObjectOrNull:v7 forKey:@"priority"];

  return v4;
}

@end