@interface CreditAccountRates
+ (id)_propertySettersForCreditAccountRates;
- (id)creditAccountRates;
@end

@implementation CreditAccountRates

- (id)creditAccountRates
{
  v3 = objc_alloc_init(PKCreditAccountRates);
  v4 = [objc_opt_class() _propertySettersForCreditAccountRates];
  v5 = [v4 allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100008B40;
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

+ (id)_propertySettersForCreditAccountRates
{
  v4 = @"b";
  v5 = &stru_10084F508;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

@end