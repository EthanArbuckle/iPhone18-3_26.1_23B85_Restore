@interface AccountPromotionCompletionStep
+ (id)_anyInDatabase:(id)a3 withPromotionPID:(int64_t)a4 index:(int64_t)a5;
+ (id)_insertAccountPromotionCompletionStep:(id)a3 forPromotionPID:(int64_t)a4 inDatabase:(id)a5;
+ (id)_predicateForIndex:(int64_t)a3;
+ (id)_predicateForPromotionPID:(int64_t)a3;
+ (id)_predicateForPromotionPID:(int64_t)a3 index:(int64_t)a4;
+ (id)_promotionCompletionStepsWithPredicate:(id)a3 inDatabase:(id)a4;
+ (id)_propertySettersForAccountPromotionCompletionStep;
+ (id)_propertyValuesForCompletionStep:(id)a3 promotionPID:(int64_t)a4;
+ (id)accountPromotionCompletionStepsForProgramIdentifier:(id)a3 accountPID:(int64_t)a4 inDatabase:(id)a5;
+ (id)accountPromotionCompletionStepsForPromotionPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)deletePromotionCompletionStepsForPromotionPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)insertOrUpdatePromotionCompletionStep:(id)a3 promotionPID:(int64_t)a4 inDatabase:(id)a5;
+ (void)insertOrUpdatePromotionCompletionSteps:(id)a3 promotionPID:(int64_t)a4 inDatabase:(id)a5;
- (AccountPromotionCompletionStep)initWithAccountPromotionCompletionStep:(id)a3 forPromotionPID:(int64_t)a4 inDatabase:(id)a5;
- (id)completionStep;
- (void)_updateWithPromotionCompletionStep:(id)a3 promotionPID:(int64_t)a4;
@end

@implementation AccountPromotionCompletionStep

- (AccountPromotionCompletionStep)initWithAccountPromotionCompletionStep:(id)a3 forPromotionPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = [AccountPromotionCompletionStep _propertyValuesForCompletionStep:a3 promotionPID:a4];
  v10 = [(SQLiteEntity *)self initWithPropertyValues:v9 inDatabase:v8];

  return v10;
}

+ (id)accountPromotionCompletionStepsForPromotionPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForPromotionPID:a3];
  v8 = [a1 _promotionCompletionStepsWithPredicate:v7 inDatabase:v6];

  return v8;
}

+ (id)accountPromotionCompletionStepsForProgramIdentifier:(id)a3 accountPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = [AccountPromotion promotionPIDsForProgramIdentifier:a3 accountPID:a4 inDatabase:v8];
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

          v17 = [a1 accountPromotionCompletionStepsForPromotionPID:objc_msgSend(*(*(&v21 + 1) + 8 * i) inDatabase:{"longLongValue", v21), v8}];
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

+ (id)_promotionCompletionStepsWithPredicate:(id)a3 inDatabase:(id)a4
{
  v26 = @"b";
  v6 = a4;
  v7 = a3;
  v8 = [NSArray arrayWithObjects:&v26 count:1];
  v25 = @"ASC";
  v9 = [NSArray arrayWithObjects:&v25 count:1];
  v10 = [a1 queryWithDatabase:v6 predicate:v7 orderingProperties:v8 orderingDirections:v9];

  v11 = [a1 _propertySettersForAccountPromotionCompletionStep];
  v12 = +[NSMutableArray array];
  v13 = [v11 allKeys];
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_1000DC8C0;
  v21 = &unk_10083C998;
  v23 = v12;
  v24 = a1;
  v22 = v11;
  v14 = v12;
  v15 = v11;
  [v10 enumeratePersistentIDsAndProperties:v13 usingBlock:&v18];

  v16 = [v14 copy];

  return v16;
}

+ (void)insertOrUpdatePromotionCompletionSteps:(id)a3 promotionPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a3;
  v9 = a5;
  [a1 deletePromotionCompletionStepsForPromotionPID:a4 inDatabase:v9];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = v8;
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

        [a1 insertOrUpdatePromotionCompletionStep:*(*(&v15 + 1) + 8 * v14) promotionPID:a4 inDatabase:{v9, v15}];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

+ (void)insertOrUpdatePromotionCompletionStep:(id)a3 promotionPID:(int64_t)a4 inDatabase:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = [a1 _anyInDatabase:v8 withPromotionPID:a4 index:{objc_msgSend(v12, "index")}];
  v10 = v9;
  if (v9)
  {
    [v9 _updateWithPromotionCompletionStep:v12 promotionPID:a4];
  }

  else
  {
    v11 = [a1 _insertAccountPromotionCompletionStep:v12 forPromotionPID:a4 inDatabase:v8];
  }
}

+ (id)_anyInDatabase:(id)a3 withPromotionPID:(int64_t)a4 index:(int64_t)a5
{
  v8 = a3;
  v9 = [a1 _predicateForPromotionPID:a4 index:a5];
  v10 = [a1 anyInDatabase:v8 predicate:v9];

  return v10;
}

+ (id)_insertAccountPromotionCompletionStep:(id)a3 forPromotionPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initWithAccountPromotionCompletionStep:v9 forPromotionPID:a4 inDatabase:v8];

  return v10;
}

+ (void)deletePromotionCompletionStepsForPromotionPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v8 = [a1 _predicateForPromotionPID:a3];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

- (void)_updateWithPromotionCompletionStep:(id)a3 promotionPID:(int64_t)a4
{
  v5 = [AccountPromotionCompletionStep _propertyValuesForCompletionStep:a3 promotionPID:a4];
  [(SQLiteEntity *)self setValuesWithDictionary:v5];
}

+ (id)_predicateForPromotionPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"a" equalToValue:v3];

  return v4;
}

+ (id)_predicateForIndex:(int64_t)a3
{
  v3 = [NSNumber numberWithInteger:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"b" equalToValue:v3];

  return v4;
}

+ (id)_predicateForPromotionPID:(int64_t)a3 index:(int64_t)a4
{
  v6 = [a1 _predicateForPromotionPID:a3];
  v7 = [a1 _predicateForIndex:a4];
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
  v4 = [objc_opt_class() _propertySettersForAccountPromotionCompletionStep];
  v5 = [v4 allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000DD294;
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

+ (id)_propertyValuesForCompletionStep:(id)a3 promotionPID:(int64_t)a4
{
  v5 = a3;
  v6 = +[NSMutableDictionary dictionary];
  v7 = [NSNumber numberWithLongLong:a4];
  [v6 setObjectOrNull:v7 forKey:@"a"];

  [v6 setInteger:objc_msgSend(v5 forKey:{"index"), @"b"}];
  [v6 setInteger:objc_msgSend(v5 forKey:{"progressType"), @"c"}];
  v8 = [v5 currencyCode];
  [v6 setObjectOrNull:v8 forKey:@"d"];

  v9 = [v5 endValue];
  v10 = PKCurrencyDecimalToStorageNumber();
  [v6 setObjectOrNull:v10 forKey:@"e"];

  v11 = [v5 currentValue];
  v12 = PKCurrencyDecimalToStorageNumber();
  [v6 setObjectOrNull:v12 forKey:@"f"];

  v13 = [v5 completed];
  [v6 setBool:v13 forKey:@"g"];
  v14 = [v6 copy];

  return v14;
}

@end