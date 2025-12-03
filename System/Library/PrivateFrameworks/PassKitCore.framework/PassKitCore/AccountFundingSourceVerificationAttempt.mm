@interface AccountFundingSourceVerificationAttempt
+ (BOOL)deleteVerificationAttemptForPID:(id)d inDatabase:(id)database;
+ (id)_propertySetters;
+ (id)_propertyValuesForVerificationAttempt:(id)attempt;
+ (id)_verificationActionsWithQuery:(id)query;
+ (id)insertOrUpdateVerificationAttempt:(id)attempt forPID:(id)d inDatabase:(id)database;
+ (id)verificationAttemptForPID:(id)d inDatabase:(id)database;
- (id)_verificationAttempt;
@end

@implementation AccountFundingSourceVerificationAttempt

+ (id)insertOrUpdateVerificationAttempt:(id)attempt forPID:(id)d inDatabase:(id)database
{
  attemptCopy = attempt;
  dCopy = d;
  databaseCopy = database;
  if (dCopy)
  {
    v11 = [self _predicateForPersistentID:dCopy];
    v12 = [self anyInDatabase:databaseCopy predicate:v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = [self _propertyValuesForVerificationAttempt:attemptCopy];
  if (v12)
  {
    [v12 setValuesWithDictionary:v13];
  }

  else
  {
    v12 = [[self alloc] initWithPropertyValues:v13 inDatabase:databaseCopy];
  }

  return v12;
}

+ (id)verificationAttemptForPID:(id)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForPersistentID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  v9 = [self _verificationActionsWithQuery:v8];
  firstObject = [v9 firstObject];

  return firstObject;
}

+ (BOOL)deleteVerificationAttemptForPID:(id)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForPersistentID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  LOBYTE(v7) = [v8 deleteAllEntities];
  return v7;
}

- (id)_verificationAttempt
{
  v3 = objc_alloc_init(PKAccountFundingSourceVerificationAttempt);
  _propertySetters = [objc_opt_class() _propertySetters];
  allKeys = [_propertySetters allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100122A8C;
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

+ (id)_verificationActionsWithQuery:(id)query
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100122BF0;
  v7[3] = &unk_100847770;
  selfCopy = self;
  queryCopy = query;
  v3 = objc_alloc_init(NSMutableArray);
  v9 = v3;
  v4 = queryCopy;
  [v4 enumeratePersistentIDsUsingBlock:v7];
  if ([v3 count])
  {
    v5 = [v3 copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_propertyValuesForVerificationAttempt:(id)attempt
{
  attemptCopy = attempt;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [attemptCopy type]);
  [v4 setObjectOrNull:v5 forKey:@"type"];

  sentDate = [attemptCopy sentDate];
  v7 = _SQLValueForDate();
  [v4 setObjectOrNull:v7 forKey:@"sent_date"];

  expiryDate = [attemptCopy expiryDate];
  v9 = _SQLValueForDate();
  [v4 setObjectOrNull:v9 forKey:@"expiry_date"];

  failureReason = [attemptCopy failureReason];
  v11 = [NSNumber numberWithUnsignedInteger:failureReason];
  [v4 setObjectOrNull:v11 forKey:@"failure_reason"];

  return v4;
}

+ (id)_propertySetters
{
  v4[0] = @"type";
  v4[1] = @"sent_date";
  v5[0] = &stru_1008477B0;
  v5[1] = &stru_1008477D0;
  v4[2] = @"expiry_date";
  v4[3] = @"failure_reason";
  v5[2] = &stru_1008477F0;
  v5[3] = &stru_100847810;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:4];

  return v2;
}

@end