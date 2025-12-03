@interface AccountPromotionCompletionStep
+ (id)_anyInDatabase:(id)database withPromotionPID:(int64_t)d index:(int64_t)index;
+ (id)_insertAccountPromotionCompletionStep:(id)step forPromotionPID:(int64_t)d inDatabase:(id)database;
+ (id)_predicateForIndex:(int64_t)index;
+ (id)_predicateForPromotionPID:(int64_t)d;
+ (id)_predicateForPromotionPID:(int64_t)d index:(int64_t)index;
+ (id)_promotionCompletionStepsWithPredicate:(id)predicate inDatabase:(id)database;
+ (id)_propertySettersForAccountPromotionCompletionStep;
+ (id)_propertyValuesForCompletionStep:(id)step promotionPID:(int64_t)d;
+ (id)accountPromotionCompletionStepsForProgramIdentifier:(id)identifier accountPID:(int64_t)d inDatabase:(id)database;
+ (id)accountPromotionCompletionStepsForPromotionPID:(int64_t)d inDatabase:(id)database;
+ (void)deletePromotionCompletionStepsForPromotionPID:(int64_t)d inDatabase:(id)database;
+ (void)insertOrUpdatePromotionCompletionStep:(id)step promotionPID:(int64_t)d inDatabase:(id)database;
+ (void)insertOrUpdatePromotionCompletionSteps:(id)steps promotionPID:(int64_t)d inDatabase:(id)database;
- (AccountPromotionCompletionStep)initWithAccountPromotionCompletionStep:(id)step forPromotionPID:(int64_t)d inDatabase:(id)database;
- (id)completionStep;
- (void)_updateWithPromotionCompletionStep:(id)step promotionPID:(int64_t)d;
@end

@implementation AccountPromotionCompletionStep

- (AccountPromotionCompletionStep)initWithAccountPromotionCompletionStep:(id)step forPromotionPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v9 = [AccountPromotionCompletionStep _propertyValuesForCompletionStep:step promotionPID:d];
  v10 = [(SQLiteEntity *)self initWithPropertyValues:v9 inDatabase:databaseCopy];

  return v10;
}

+ (id)accountPromotionCompletionStepsForPromotionPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForPromotionPID:d];
  v8 = [self _promotionCompletionStepsWithPredicate:v7 inDatabase:databaseCopy];

  return v8;
}

+ (id)accountPromotionCompletionStepsForProgramIdentifier:(id)identifier accountPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v9 = [AccountPromotion promotionPIDsForProgramIdentifier:identifier accountPID:d inDatabase:databaseCopy];
  v10 = v9;
  if (v9 && [v9 count])
  {
    v11 = objc_alloc_init(NSMutableSet);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [self accountPromotionCompletionStepsForPromotionPID:objc_msgSend(*(*(&v21 + 1) + 8 * i) inDatabase:{"longLongValue", v21), databaseCopy}];
          v18 = v17;
          if (v17 && [v17 count])
          {
            [v11 addObjectsFromArray:v18];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }

    if ([v11 count])
    {
      v19 = [v11 copy];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)_promotionCompletionStepsWithPredicate:(id)predicate inDatabase:(id)database
{
  v26 = @"b";
  databaseCopy = database;
  predicateCopy = predicate;
  v8 = [NSArray arrayWithObjects:&v26 count:1];
  v25 = @"ASC";
  v9 = [NSArray arrayWithObjects:&v25 count:1];
  v10 = [self queryWithDatabase:databaseCopy predicate:predicateCopy orderingProperties:v8 orderingDirections:v9];

  _propertySettersForAccountPromotionCompletionStep = [self _propertySettersForAccountPromotionCompletionStep];
  v12 = +[NSMutableArray array];
  allKeys = [_propertySettersForAccountPromotionCompletionStep allKeys];
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_1000DC8C0;
  v21 = &unk_10083C998;
  v23 = v12;
  selfCopy = self;
  v22 = _propertySettersForAccountPromotionCompletionStep;
  v14 = v12;
  v15 = _propertySettersForAccountPromotionCompletionStep;
  [v10 enumeratePersistentIDsAndProperties:allKeys usingBlock:&v18];

  v16 = [v14 copy];

  return v16;
}

+ (void)insertOrUpdatePromotionCompletionSteps:(id)steps promotionPID:(int64_t)d inDatabase:(id)database
{
  stepsCopy = steps;
  databaseCopy = database;
  [self deletePromotionCompletionStepsForPromotionPID:d inDatabase:databaseCopy];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = stepsCopy;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [self insertOrUpdatePromotionCompletionStep:*(*(&v15 + 1) + 8 * v14) promotionPID:d inDatabase:{databaseCopy, v15}];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

+ (void)insertOrUpdatePromotionCompletionStep:(id)step promotionPID:(int64_t)d inDatabase:(id)database
{
  stepCopy = step;
  databaseCopy = database;
  v9 = [self _anyInDatabase:databaseCopy withPromotionPID:d index:{objc_msgSend(stepCopy, "index")}];
  v10 = v9;
  if (v9)
  {
    [v9 _updateWithPromotionCompletionStep:stepCopy promotionPID:d];
  }

  else
  {
    v11 = [self _insertAccountPromotionCompletionStep:stepCopy forPromotionPID:d inDatabase:databaseCopy];
  }
}

+ (id)_anyInDatabase:(id)database withPromotionPID:(int64_t)d index:(int64_t)index
{
  databaseCopy = database;
  v9 = [self _predicateForPromotionPID:d index:index];
  v10 = [self anyInDatabase:databaseCopy predicate:v9];

  return v10;
}

+ (id)_insertAccountPromotionCompletionStep:(id)step forPromotionPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  stepCopy = step;
  v10 = [[self alloc] initWithAccountPromotionCompletionStep:stepCopy forPromotionPID:d inDatabase:databaseCopy];

  return v10;
}

+ (void)deletePromotionCompletionStepsForPromotionPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForPromotionPID:d];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

- (void)_updateWithPromotionCompletionStep:(id)step promotionPID:(int64_t)d
{
  v5 = [AccountPromotionCompletionStep _propertyValuesForCompletionStep:step promotionPID:d];
  [(SQLiteEntity *)self setValuesWithDictionary:v5];
}

+ (id)_predicateForPromotionPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"a" equalToValue:v3];

  return v4;
}

+ (id)_predicateForIndex:(int64_t)index
{
  v3 = [NSNumber numberWithInteger:index];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"b" equalToValue:v3];

  return v4;
}

+ (id)_predicateForPromotionPID:(int64_t)d index:(int64_t)index
{
  v6 = [self _predicateForPromotionPID:d];
  v7 = [self _predicateForIndex:index];
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v12[0] = v6;
    v12[1] = v7;
    v10 = [NSArray arrayWithObjects:v12 count:2];
    v9 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v10];
  }

  return v9;
}

+ (id)_propertySettersForAccountPromotionCompletionStep
{
  v4[0] = @"b";
  v4[1] = @"c";
  v5[0] = &stru_1008441C8;
  v5[1] = &stru_1008441E8;
  v4[2] = @"d";
  v4[3] = @"e";
  v5[2] = &stru_100844208;
  v5[3] = &stru_100844228;
  v4[4] = @"f";
  v4[5] = @"g";
  v5[4] = &stru_100844248;
  v5[5] = &stru_100844268;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:6];

  return v2;
}

- (id)completionStep
{
  v3 = objc_alloc_init(PKAccountPromotionCompletionStep);
  _propertySettersForAccountPromotionCompletionStep = [objc_opt_class() _propertySettersForAccountPromotionCompletionStep];
  allKeys = [_propertySettersForAccountPromotionCompletionStep allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000DD294;
  v11[3] = &unk_10083BEE0;
  v11[4] = self;
  v12 = _propertySettersForAccountPromotionCompletionStep;
  v6 = v3;
  v13 = v6;
  v7 = _propertySettersForAccountPromotionCompletionStep;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

+ (id)_propertyValuesForCompletionStep:(id)step promotionPID:(int64_t)d
{
  stepCopy = step;
  v6 = +[NSMutableDictionary dictionary];
  v7 = [NSNumber numberWithLongLong:d];
  [v6 setObjectOrNull:v7 forKey:@"a"];

  [v6 setInteger:objc_msgSend(stepCopy forKey:{"index"), @"b"}];
  [v6 setInteger:objc_msgSend(stepCopy forKey:{"progressType"), @"c"}];
  currencyCode = [stepCopy currencyCode];
  [v6 setObjectOrNull:currencyCode forKey:@"d"];

  endValue = [stepCopy endValue];
  v10 = PKCurrencyDecimalToStorageNumber();
  [v6 setObjectOrNull:v10 forKey:@"e"];

  currentValue = [stepCopy currentValue];
  v12 = PKCurrencyDecimalToStorageNumber();
  [v6 setObjectOrNull:v12 forKey:@"f"];

  completed = [stepCopy completed];
  [v6 setBool:completed forKey:@"g"];
  v14 = [v6 copy];

  return v14;
}

@end