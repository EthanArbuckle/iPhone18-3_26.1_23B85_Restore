@interface AccountEndpointBackOff
- (id)nextPossibleFetchDate;
- (unint64_t)accountType;
- (unint64_t)endpointType;
- (void)increaseBackoffLevel;
@end

@implementation AccountEndpointBackOff

- (id)nextPossibleFetchDate
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"next_fetch"];
  v3 = _DateForSQLValue();

  return v3;
}

- (void)increaseBackoffLevel
{
  v3 = [(SQLiteEntity *)self valueForProperty:@"backoff_level"];
  integerValue = [v3 integerValue];

  v5 = integerValue + 1;
  v6 = 13;
  if ((integerValue + 1) < 0xD)
  {
    v6 = (integerValue + 1);
  }

  v7 = [NSDate dateWithTimeIntervalSinceNow:dbl_10068EB38[v6]];
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    accountType = [(AccountEndpointBackOff *)self accountType];
    if (accountType > 5)
    {
      v10 = @"broadway";
    }

    else
    {
      v10 = off_10085F378[accountType];
    }

    v11 = PDAccountEndpointBackOffEndpointTypeToString([(AccountEndpointBackOff *)self endpointType]);
    *buf = 138412802;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Increasing backoff level for account type %@, endpoint type %@, next fetch date %@", buf, 0x20u);
  }

  database = [(SQLiteEntity *)self database];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000126C4;
  v14[3] = &unk_100848FC0;
  v15 = v7;
  v16 = v5;
  v14[4] = self;
  v13 = v7;
  sub_1005D4424(database, v14);
}

- (unint64_t)accountType
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"account_type"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (unint64_t)endpointType
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"endpoint_type"];
  integerValue = [v2 integerValue];

  return integerValue;
}

@end