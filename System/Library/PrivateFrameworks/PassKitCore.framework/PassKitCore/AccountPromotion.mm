@interface AccountPromotion
+ (id)_anyInDatabase:(id)a3 withProgramIdentifier:(id)a4 accountPID:(int64_t)a5;
+ (id)_insertAccountPromotion:(id)a3 forAccountPID:(int64_t)a4 inDatabase:(id)a5;
+ (id)_predicateForAccountPID:(int64_t)a3;
+ (id)_predicateForProgramIdentifier:(id)a3;
+ (id)_predicateForProgramIdentifier:(id)a3 accountPID:(int64_t)a4;
+ (id)_promotionsWithPredicate:(id)a3 inDatabase:(id)a4;
+ (id)_propertySettersForAccountPromotion;
+ (id)_propertyValuesForPromotion:(id)a3 accountPID:(int64_t)a4;
+ (id)_queryForPredicate:(id)a3 database:(id)a4;
+ (id)accountPromotionForProgramIdentifier:(id)a3 accountPID:(int64_t)a4 inDatabase:(id)a5;
+ (id)accountPromotionsForAccountPID:(int64_t)a3 inDatabase:(id)a4;
+ (id)promotionPIDsForProgramIdentifier:(id)a3 accountPID:(int64_t)a4 inDatabase:(id)a5;
+ (void)deleteAccountPromotion:(id)a3 accountPID:(int64_t)a4 inDatabase:(id)a5;
+ (void)deleteAccountPromotionsForAccountPID:(int64_t)a3 inDatabase:(id)a4;
+ (void)insertOrUpdateAccountPromotion:(id)a3 accountPID:(int64_t)a4 inDatabase:(id)a5;
+ (void)insertOrUpdateAccountPromotions:(id)a3 accountPID:(int64_t)a4 inDatabase:(id)a5;
+ (void)populateAssociatedCompletionStepsForPromotion:(id)a3 promotionPID:(int64_t)a4 inDatabase:(id)a5;
+ (void)updateImpressionCount:(int64_t)a3 promotionProgramIdentifier:(id)a4 accountPID:(int64_t)a5 inDatabase:(id)a6;
+ (void)updateImpressionCountsForPromotions:(id)a3 accountPID:(int64_t)a4 inDatabase:(id)a5;
- (AccountPromotion)initWithAccountPromotion:(id)a3 forAccountPID:(int64_t)a4 inDatabase:(id)a5;
- (BOOL)deleteFromDatabase;
- (id)accountPromotion;
- (void)_updateWithAccountPromotion:(id)a3 accountPID:(int64_t)a4;
- (void)updateWithPromotionCompletionSteps:(id)a3;
@end

@implementation AccountPromotion

- (AccountPromotion)initWithAccountPromotion:(id)a3 forAccountPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [AccountPromotion _propertyValuesForPromotion:v9 accountPID:a4];
  v11 = [(SQLiteEntity *)self initWithPropertyValues:v10 inDatabase:v8];

  v12 = v11;
  v13 = [v9 completionSteps];

  if (v13 && [v13 count])
  {
    [(AccountPromotion *)v12 updateWithPromotionCompletionSteps:v13];
  }

  return v12;
}

+ (id)accountPromotionsForAccountPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForAccountPID:a3];
  if (v7)
  {
    v8 = [a1 _promotionsWithPredicate:v7 inDatabase:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)promotionPIDsForProgramIdentifier:(id)a3 accountPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = [a1 _predicateForProgramIdentifier:a3 accountPID:a4];
  if (v9)
  {
    v10 = [a1 _queryForPredicate:v9 database:v8];
    +[NSMutableArray array];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10004E184;
    v11 = v14[3] = &unk_10083EF38;
    v15 = v11;
    [v10 enumeratePersistentIDsUsingBlock:v14];
    if ([v11 count])
    {
      v12 = [v11 copy];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_promotionsWithPredicate:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _queryForPredicate:a3 database:v6];
  v8 = [a1 _propertySettersForAccountPromotion];
  v9 = +[NSMutableArray array];
  v10 = [v8 allKeys];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10004E334;
  v19 = &unk_10083BF08;
  v20 = v8;
  v21 = v6;
  v22 = v9;
  v23 = a1;
  v11 = v9;
  v12 = v6;
  v13 = v8;
  [v7 enumeratePersistentIDsAndProperties:v10 usingBlock:&v16];

  v14 = [v11 copy];

  return v14;
}

+ (id)_anyInDatabase:(id)a3 withProgramIdentifier:(id)a4 accountPID:(int64_t)a5
{
  v8 = a3;
  v9 = [a1 _predicateForProgramIdentifier:a4 accountPID:a5];
  if (v9)
  {
    v10 = [a1 anyInDatabase:v8 predicate:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)accountPromotionForProgramIdentifier:(id)a3 accountPID:(int64_t)a4 inDatabase:(id)a5
{
  v5 = [a1 _anyInDatabase:a5 withProgramIdentifier:a3 accountPID:a4];
  v6 = [v5 accountPromotion];

  return v6;
}

+ (void)insertOrUpdateAccountPromotions:(id)a3 accountPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a3;
  v9 = a5;
  [a1 deleteAccountPromotionsForAccountPID:a4 inDatabase:v9];
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

        [a1 insertOrUpdateAccountPromotion:*(*(&v15 + 1) + 8 * v14) accountPID:a4 inDatabase:{v9, v15}];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

+ (void)insertOrUpdateAccountPromotion:(id)a3 accountPID:(int64_t)a4 inDatabase:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = [v12 programIdentifier];
  v10 = [a1 _anyInDatabase:v8 withProgramIdentifier:v9 accountPID:a4];

  if (v10)
  {
    [v10 _updateWithAccountPromotion:v12 accountPID:a4];
  }

  else
  {
    v11 = [a1 _insertAccountPromotion:v12 forAccountPID:a4 inDatabase:v8];
  }
}

+ (id)_insertAccountPromotion:(id)a3 forAccountPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initWithAccountPromotion:v9 forAccountPID:a4 inDatabase:v8];

  return v10;
}

+ (void)deleteAccountPromotionsForAccountPID:(int64_t)a3 inDatabase:(id)a4
{
  v6 = a4;
  v8 = [a1 _predicateForAccountPID:a3];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

+ (void)deleteAccountPromotion:(id)a3 accountPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = [a3 programIdentifier];
  v10 = [a1 _anyInDatabase:v8 withProgramIdentifier:v9 accountPID:a4];

  [v10 deleteFromDatabase];
}

- (BOOL)deleteFromDatabase
{
  v3 = [(SQLiteEntity *)self persistentID];
  v4 = [(SQLiteEntity *)self database];
  [AccountPromotionCompletionStep deletePromotionCompletionStepsForPromotionPID:v3 inDatabase:v4];

  v6.receiver = self;
  v6.super_class = AccountPromotion;
  return [(SQLiteEntity *)&v6 deleteFromDatabase];
}

+ (void)updateImpressionCountsForPromotions:(id)a3 accountPID:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a3;
  v9 = a5;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        v15 = [v14 impressionCount];
        v16 = [v14 programIdentifier];
        [a1 updateImpressionCount:v15 promotionProgramIdentifier:v16 accountPID:a4 inDatabase:v9];
      }

      v11 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

+ (void)updateImpressionCount:(int64_t)a3 promotionProgramIdentifier:(id)a4 accountPID:(int64_t)a5 inDatabase:(id)a6
{
  v8 = [a1 _anyInDatabase:a6 withProgramIdentifier:a4 accountPID:a5];
  v7 = [NSNumber numberWithInteger:a3];
  [v8 setValue:v7 forProperty:@"j"];
}

- (void)_updateWithAccountPromotion:(id)a3 accountPID:(int64_t)a4
{
  v6 = a3;
  v8 = [AccountPromotion _propertyValuesForPromotion:v6 accountPID:a4];
  [(SQLiteEntity *)self setValuesWithDictionary:v8];
  v7 = [v6 completionSteps];

  [(AccountPromotion *)self updateWithPromotionCompletionSteps:v7];
}

+ (id)_predicateForProgramIdentifier:(id)a3
{
  if (a3)
  {
    v4 = [SQLiteComparisonPredicate predicateWithProperty:@"b" equalToValue:a3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_predicateForAccountPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"a" equalToValue:v3];

  return v4;
}

+ (id)_predicateForProgramIdentifier:(id)a3 accountPID:(int64_t)a4
{
  v6 = [a1 _predicateForProgramIdentifier:a3];
  v7 = [a1 _predicateForAccountPID:a4];
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

+ (id)_queryForPredicate:(id)a3 database:(id)a4
{
  v13 = @"d";
  v6 = a4;
  v7 = a3;
  v8 = [NSArray arrayWithObjects:&v13 count:1];
  v12 = @"DESC";
  v9 = [NSArray arrayWithObjects:&v12 count:1];
  v10 = [a1 queryWithDatabase:v6 predicate:v7 orderingProperties:v8 orderingDirections:v9];

  return v10;
}

+ (id)_propertySettersForAccountPromotion
{
  v4[0] = @"b";
  v4[1] = @"c";
  v5[0] = &stru_10083EF78;
  v5[1] = &stru_10083EF98;
  v4[2] = @"d";
  v4[3] = @"e";
  v5[2] = &stru_10083EFB8;
  v5[3] = &stru_10083EFD8;
  v4[4] = @"f";
  v4[5] = @"i";
  v5[4] = &stru_10083EFF8;
  v5[5] = &stru_10083F018;
  v4[6] = @"j";
  v5[6] = &stru_10083F038;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:7];

  return v2;
}

- (id)accountPromotion
{
  v3 = objc_alloc_init(PKAccountPromotion);
  v4 = [objc_opt_class() _propertySettersForAccountPromotion];
  v5 = [v4 allKeys];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10004F1C8;
  v14[3] = &unk_10083BEE0;
  v14[4] = self;
  v15 = v4;
  v6 = v3;
  v16 = v6;
  v7 = v4;
  [(SQLiteEntity *)self getValuesForProperties:v5 withApplier:v14];

  v8 = objc_opt_class();
  v9 = [(SQLiteEntity *)self persistentID];
  v10 = [(SQLiteEntity *)self database];
  [v8 populateAssociatedCompletionStepsForPromotion:v6 promotionPID:v9 inDatabase:v10];

  v11 = v16;
  v12 = v6;

  return v6;
}

- (void)updateWithPromotionCompletionSteps:(id)a3
{
  v4 = a3;
  v5 = [(SQLiteEntity *)self persistentID];
  v6 = [(SQLiteEntity *)self database];
  [AccountPromotionCompletionStep insertOrUpdatePromotionCompletionSteps:v4 promotionPID:v5 inDatabase:v6];
}

+ (void)populateAssociatedCompletionStepsForPromotion:(id)a3 promotionPID:(int64_t)a4 inDatabase:(id)a5
{
  v10 = a3;
  v7 = [AccountPromotionCompletionStep accountPromotionCompletionStepsForPromotionPID:a4 inDatabase:a5];
  if ([v7 count])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v10 setCompletionSteps:v9];
}

+ (id)_propertyValuesForPromotion:(id)a3 accountPID:(int64_t)a4
{
  v5 = a3;
  v6 = +[NSMutableDictionary dictionary];
  v7 = [NSNumber numberWithLongLong:a4];
  [v6 setObjectOrNull:v7 forKey:@"a"];

  v8 = [v5 programIdentifier];
  [v6 setObjectOrNull:v8 forKey:@"b"];

  [v6 setInteger:objc_msgSend(v5 forKey:{"type"), @"c"}];
  v9 = [v5 startDate];
  v10 = _SQLValueForDate();
  [v6 setObjectOrNull:v10 forKey:@"d"];

  v11 = [v5 endDate];
  v12 = _SQLValueForDate();
  [v6 setObjectOrNull:v12 forKey:@"e"];

  v13 = [v5 name];
  [v6 setObjectOrNull:v13 forKey:@"f"];

  v14 = [v5 termsURL];
  v15 = [v14 absoluteString];
  [v6 setObjectOrNull:v15 forKey:@"h"];

  v16 = [v5 templateIdentifier];
  [v6 setObjectOrNull:v16 forKey:@"g"];

  v17 = [v5 layoutData];
  [v6 setObjectOrNull:v17 forKey:@"i"];

  v18 = [v5 impressionCount];
  [v6 setInteger:v18 forKey:@"j"];
  v19 = [v6 copy];

  return v19;
}

@end