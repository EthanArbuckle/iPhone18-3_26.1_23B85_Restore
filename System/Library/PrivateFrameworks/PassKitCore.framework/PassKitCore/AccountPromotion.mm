@interface AccountPromotion
+ (id)_anyInDatabase:(id)database withProgramIdentifier:(id)identifier accountPID:(int64_t)d;
+ (id)_insertAccountPromotion:(id)promotion forAccountPID:(int64_t)d inDatabase:(id)database;
+ (id)_predicateForAccountPID:(int64_t)d;
+ (id)_predicateForProgramIdentifier:(id)identifier;
+ (id)_predicateForProgramIdentifier:(id)identifier accountPID:(int64_t)d;
+ (id)_promotionsWithPredicate:(id)predicate inDatabase:(id)database;
+ (id)_propertySettersForAccountPromotion;
+ (id)_propertyValuesForPromotion:(id)promotion accountPID:(int64_t)d;
+ (id)_queryForPredicate:(id)predicate database:(id)database;
+ (id)accountPromotionForProgramIdentifier:(id)identifier accountPID:(int64_t)d inDatabase:(id)database;
+ (id)accountPromotionsForAccountPID:(int64_t)d inDatabase:(id)database;
+ (id)promotionPIDsForProgramIdentifier:(id)identifier accountPID:(int64_t)d inDatabase:(id)database;
+ (void)deleteAccountPromotion:(id)promotion accountPID:(int64_t)d inDatabase:(id)database;
+ (void)deleteAccountPromotionsForAccountPID:(int64_t)d inDatabase:(id)database;
+ (void)insertOrUpdateAccountPromotion:(id)promotion accountPID:(int64_t)d inDatabase:(id)database;
+ (void)insertOrUpdateAccountPromotions:(id)promotions accountPID:(int64_t)d inDatabase:(id)database;
+ (void)populateAssociatedCompletionStepsForPromotion:(id)promotion promotionPID:(int64_t)d inDatabase:(id)database;
+ (void)updateImpressionCount:(int64_t)count promotionProgramIdentifier:(id)identifier accountPID:(int64_t)d inDatabase:(id)database;
+ (void)updateImpressionCountsForPromotions:(id)promotions accountPID:(int64_t)d inDatabase:(id)database;
- (AccountPromotion)initWithAccountPromotion:(id)promotion forAccountPID:(int64_t)d inDatabase:(id)database;
- (BOOL)deleteFromDatabase;
- (id)accountPromotion;
- (void)_updateWithAccountPromotion:(id)promotion accountPID:(int64_t)d;
- (void)updateWithPromotionCompletionSteps:(id)steps;
@end

@implementation AccountPromotion

- (AccountPromotion)initWithAccountPromotion:(id)promotion forAccountPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  promotionCopy = promotion;
  v10 = [AccountPromotion _propertyValuesForPromotion:promotionCopy accountPID:d];
  v11 = [(SQLiteEntity *)self initWithPropertyValues:v10 inDatabase:databaseCopy];

  v12 = v11;
  completionSteps = [promotionCopy completionSteps];

  if (completionSteps && [completionSteps count])
  {
    [(AccountPromotion *)v12 updateWithPromotionCompletionSteps:completionSteps];
  }

  return v12;
}

+ (id)accountPromotionsForAccountPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForAccountPID:d];
  if (v7)
  {
    v8 = [self _promotionsWithPredicate:v7 inDatabase:databaseCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)promotionPIDsForProgramIdentifier:(id)identifier accountPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v9 = [self _predicateForProgramIdentifier:identifier accountPID:d];
  if (v9)
  {
    v10 = [self _queryForPredicate:v9 database:databaseCopy];
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

+ (id)_promotionsWithPredicate:(id)predicate inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _queryForPredicate:predicate database:databaseCopy];
  _propertySettersForAccountPromotion = [self _propertySettersForAccountPromotion];
  v9 = +[NSMutableArray array];
  allKeys = [_propertySettersForAccountPromotion allKeys];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10004E334;
  v19 = &unk_10083BF08;
  v20 = _propertySettersForAccountPromotion;
  v21 = databaseCopy;
  v22 = v9;
  selfCopy = self;
  v11 = v9;
  v12 = databaseCopy;
  v13 = _propertySettersForAccountPromotion;
  [v7 enumeratePersistentIDsAndProperties:allKeys usingBlock:&v16];

  v14 = [v11 copy];

  return v14;
}

+ (id)_anyInDatabase:(id)database withProgramIdentifier:(id)identifier accountPID:(int64_t)d
{
  databaseCopy = database;
  v9 = [self _predicateForProgramIdentifier:identifier accountPID:d];
  if (v9)
  {
    v10 = [self anyInDatabase:databaseCopy predicate:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)accountPromotionForProgramIdentifier:(id)identifier accountPID:(int64_t)d inDatabase:(id)database
{
  v5 = [self _anyInDatabase:database withProgramIdentifier:identifier accountPID:d];
  accountPromotion = [v5 accountPromotion];

  return accountPromotion;
}

+ (void)insertOrUpdateAccountPromotions:(id)promotions accountPID:(int64_t)d inDatabase:(id)database
{
  promotionsCopy = promotions;
  databaseCopy = database;
  [self deleteAccountPromotionsForAccountPID:d inDatabase:databaseCopy];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = promotionsCopy;
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

        [self insertOrUpdateAccountPromotion:*(*(&v15 + 1) + 8 * v14) accountPID:d inDatabase:{databaseCopy, v15}];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

+ (void)insertOrUpdateAccountPromotion:(id)promotion accountPID:(int64_t)d inDatabase:(id)database
{
  promotionCopy = promotion;
  databaseCopy = database;
  programIdentifier = [promotionCopy programIdentifier];
  v10 = [self _anyInDatabase:databaseCopy withProgramIdentifier:programIdentifier accountPID:d];

  if (v10)
  {
    [v10 _updateWithAccountPromotion:promotionCopy accountPID:d];
  }

  else
  {
    v11 = [self _insertAccountPromotion:promotionCopy forAccountPID:d inDatabase:databaseCopy];
  }
}

+ (id)_insertAccountPromotion:(id)promotion forAccountPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  promotionCopy = promotion;
  v10 = [[self alloc] initWithAccountPromotion:promotionCopy forAccountPID:d inDatabase:databaseCopy];

  return v10;
}

+ (void)deleteAccountPromotionsForAccountPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForAccountPID:d];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

+ (void)deleteAccountPromotion:(id)promotion accountPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  programIdentifier = [promotion programIdentifier];
  v10 = [self _anyInDatabase:databaseCopy withProgramIdentifier:programIdentifier accountPID:d];

  [v10 deleteFromDatabase];
}

- (BOOL)deleteFromDatabase
{
  persistentID = [(SQLiteEntity *)self persistentID];
  database = [(SQLiteEntity *)self database];
  [AccountPromotionCompletionStep deletePromotionCompletionStepsForPromotionPID:persistentID inDatabase:database];

  v6.receiver = self;
  v6.super_class = AccountPromotion;
  return [(SQLiteEntity *)&v6 deleteFromDatabase];
}

+ (void)updateImpressionCountsForPromotions:(id)promotions accountPID:(int64_t)d inDatabase:(id)database
{
  promotionsCopy = promotions;
  databaseCopy = database;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [promotionsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(promotionsCopy);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        impressionCount = [v14 impressionCount];
        programIdentifier = [v14 programIdentifier];
        [self updateImpressionCount:impressionCount promotionProgramIdentifier:programIdentifier accountPID:d inDatabase:databaseCopy];
      }

      v11 = [promotionsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

+ (void)updateImpressionCount:(int64_t)count promotionProgramIdentifier:(id)identifier accountPID:(int64_t)d inDatabase:(id)database
{
  v8 = [self _anyInDatabase:database withProgramIdentifier:identifier accountPID:d];
  v7 = [NSNumber numberWithInteger:count];
  [v8 setValue:v7 forProperty:@"j"];
}

- (void)_updateWithAccountPromotion:(id)promotion accountPID:(int64_t)d
{
  promotionCopy = promotion;
  v8 = [AccountPromotion _propertyValuesForPromotion:promotionCopy accountPID:d];
  [(SQLiteEntity *)self setValuesWithDictionary:v8];
  completionSteps = [promotionCopy completionSteps];

  [(AccountPromotion *)self updateWithPromotionCompletionSteps:completionSteps];
}

+ (id)_predicateForProgramIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = [SQLiteComparisonPredicate predicateWithProperty:@"b" equalToValue:identifier];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_predicateForAccountPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"a" equalToValue:v3];

  return v4;
}

+ (id)_predicateForProgramIdentifier:(id)identifier accountPID:(int64_t)d
{
  v6 = [self _predicateForProgramIdentifier:identifier];
  v7 = [self _predicateForAccountPID:d];
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

+ (id)_queryForPredicate:(id)predicate database:(id)database
{
  v13 = @"d";
  databaseCopy = database;
  predicateCopy = predicate;
  v8 = [NSArray arrayWithObjects:&v13 count:1];
  v12 = @"DESC";
  v9 = [NSArray arrayWithObjects:&v12 count:1];
  v10 = [self queryWithDatabase:databaseCopy predicate:predicateCopy orderingProperties:v8 orderingDirections:v9];

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
  _propertySettersForAccountPromotion = [objc_opt_class() _propertySettersForAccountPromotion];
  allKeys = [_propertySettersForAccountPromotion allKeys];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10004F1C8;
  v14[3] = &unk_10083BEE0;
  v14[4] = self;
  v15 = _propertySettersForAccountPromotion;
  v6 = v3;
  v16 = v6;
  v7 = _propertySettersForAccountPromotion;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v14];

  v8 = objc_opt_class();
  persistentID = [(SQLiteEntity *)self persistentID];
  database = [(SQLiteEntity *)self database];
  [v8 populateAssociatedCompletionStepsForPromotion:v6 promotionPID:persistentID inDatabase:database];

  v11 = v16;
  v12 = v6;

  return v6;
}

- (void)updateWithPromotionCompletionSteps:(id)steps
{
  stepsCopy = steps;
  persistentID = [(SQLiteEntity *)self persistentID];
  database = [(SQLiteEntity *)self database];
  [AccountPromotionCompletionStep insertOrUpdatePromotionCompletionSteps:stepsCopy promotionPID:persistentID inDatabase:database];
}

+ (void)populateAssociatedCompletionStepsForPromotion:(id)promotion promotionPID:(int64_t)d inDatabase:(id)database
{
  promotionCopy = promotion;
  v7 = [AccountPromotionCompletionStep accountPromotionCompletionStepsForPromotionPID:d inDatabase:database];
  if ([v7 count])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [promotionCopy setCompletionSteps:v9];
}

+ (id)_propertyValuesForPromotion:(id)promotion accountPID:(int64_t)d
{
  promotionCopy = promotion;
  v6 = +[NSMutableDictionary dictionary];
  v7 = [NSNumber numberWithLongLong:d];
  [v6 setObjectOrNull:v7 forKey:@"a"];

  programIdentifier = [promotionCopy programIdentifier];
  [v6 setObjectOrNull:programIdentifier forKey:@"b"];

  [v6 setInteger:objc_msgSend(promotionCopy forKey:{"type"), @"c"}];
  startDate = [promotionCopy startDate];
  v10 = _SQLValueForDate();
  [v6 setObjectOrNull:v10 forKey:@"d"];

  endDate = [promotionCopy endDate];
  v12 = _SQLValueForDate();
  [v6 setObjectOrNull:v12 forKey:@"e"];

  name = [promotionCopy name];
  [v6 setObjectOrNull:name forKey:@"f"];

  termsURL = [promotionCopy termsURL];
  absoluteString = [termsURL absoluteString];
  [v6 setObjectOrNull:absoluteString forKey:@"h"];

  templateIdentifier = [promotionCopy templateIdentifier];
  [v6 setObjectOrNull:templateIdentifier forKey:@"g"];

  layoutData = [promotionCopy layoutData];
  [v6 setObjectOrNull:layoutData forKey:@"i"];

  impressionCount = [promotionCopy impressionCount];
  [v6 setInteger:impressionCount forKey:@"j"];
  v19 = [v6 copy];

  return v19;
}

@end