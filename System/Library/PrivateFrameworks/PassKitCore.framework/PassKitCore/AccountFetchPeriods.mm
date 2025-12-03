@interface AccountFetchPeriods
+ (id)_propertyValuesForAccountFetchPeriods;
- (id)accountFetchPeriods;
@end

@implementation AccountFetchPeriods

- (id)accountFetchPeriods
{
  v3 = objc_alloc_init(PKAccountFetchPeriods);
  _propertyValuesForAccountFetchPeriods = [objc_opt_class() _propertyValuesForAccountFetchPeriods];
  allKeys = [_propertyValuesForAccountFetchPeriods allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100007728;
  v11[3] = &unk_10083BEE0;
  v11[4] = self;
  v12 = _propertyValuesForAccountFetchPeriods;
  v6 = v3;
  v13 = v6;
  v7 = _propertyValuesForAccountFetchPeriods;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

+ (id)_propertyValuesForAccountFetchPeriods
{
  v4[0] = @"blocked_endpoints";
  v4[1] = @"account_fetch_period";
  v5[0] = &stru_100864870;
  v5[1] = &stru_1008648B0;
  v4[2] = @"extended_account_fetch_period";
  v4[3] = @"a";
  v5[2] = &stru_1008648D0;
  v5[3] = &stru_1008648F0;
  v4[4] = @"b";
  v4[5] = @"c";
  v5[4] = &stru_100864910;
  v5[5] = &stru_100864930;
  v4[6] = @"funding_sources_fetch_period";
  v4[7] = @"recovery_payment_plans_fetch_period";
  v5[6] = &stru_100864950;
  v5[7] = &stru_100864970;
  v4[8] = @"physical_cards_fetch_period";
  v5[8] = &stru_100864990;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:9];

  return v2;
}

@end