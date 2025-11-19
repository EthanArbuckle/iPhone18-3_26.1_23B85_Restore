@interface AccountFundingSourceVerificationAttempt
+ (BOOL)deleteVerificationAttemptForPID:(id)a3 inDatabase:(id)a4;
+ (id)_propertySetters;
+ (id)_propertyValuesForVerificationAttempt:(id)a3;
+ (id)_verificationActionsWithQuery:(id)a3;
+ (id)insertOrUpdateVerificationAttempt:(id)a3 forPID:(id)a4 inDatabase:(id)a5;
+ (id)verificationAttemptForPID:(id)a3 inDatabase:(id)a4;
- (id)_verificationAttempt;
@end

@implementation AccountFundingSourceVerificationAttempt

+ (id)insertOrUpdateVerificationAttempt:(id)a3 forPID:(id)a4 inDatabase:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = [a1 _predicateForPersistentID:v9];
    v12 = [a1 anyInDatabase:v10 predicate:v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = [a1 _propertyValuesForVerificationAttempt:v8];
  if (v12)
  {
    [v12 setValuesWithDictionary:v13];
  }

  else
  {
    v12 = [[a1 alloc] initWithPropertyValues:v13 inDatabase:v10];
  }

  return v12;
}

+ (id)verificationAttemptForPID:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForPersistentID:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  v9 = [a1 _verificationActionsWithQuery:v8];
  v10 = [v9 firstObject];

  return v10;
}

+ (BOOL)deleteVerificationAttemptForPID:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForPersistentID:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  LOBYTE(v7) = [v8 deleteAllEntities];
  return v7;
}

- (id)_verificationAttempt
{
  v3 = objc_alloc_init(PKAccountFundingSourceVerificationAttempt);
  v4 = [objc_opt_class() _propertySetters];
  v5 = [v4 allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100122A8C;
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

+ (id)_verificationActionsWithQuery:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100122BF0;
  v7[3] = &unk_100847770;
  v10 = a1;
  v8 = a3;
  v3 = objc_alloc_init(NSMutableArray);
  v9 = v3;
  v4 = v8;
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

+ (id)_propertyValuesForVerificationAttempt:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 type]);
  [v4 setObjectOrNull:v5 forKey:@"type"];

  v6 = [v3 sentDate];
  v7 = _SQLValueForDate();
  [v4 setObjectOrNull:v7 forKey:@"sent_date"];

  v8 = [v3 expiryDate];
  v9 = _SQLValueForDate();
  [v4 setObjectOrNull:v9 forKey:@"expiry_date"];

  v10 = [v3 failureReason];
  v11 = [NSNumber numberWithUnsignedInteger:v10];
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