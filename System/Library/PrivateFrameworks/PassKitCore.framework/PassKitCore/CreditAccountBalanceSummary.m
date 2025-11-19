@interface CreditAccountBalanceSummary
+ (id)_propertySettersForCreditAccountBalanceSummary;
- (id)creditAccountBalanceSummary;
@end

@implementation CreditAccountBalanceSummary

- (id)creditAccountBalanceSummary
{
  v3 = objc_alloc_init(PKCreditAccountBalanceSummary);
  v4 = [objc_opt_class() _propertySettersForCreditAccountBalanceSummary];
  v5 = [v4 allKeys];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100009BA8;
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

+ (id)_propertySettersForCreditAccountBalanceSummary
{
  v4[0] = @"b";
  v4[1] = @"c";
  v5[0] = &stru_1008604C0;
  v5[1] = &stru_1008604E0;
  v4[2] = @"d";
  v4[3] = @"e";
  v5[2] = &stru_100860500;
  v5[3] = &stru_100860520;
  v4[4] = @"f";
  v4[5] = @"g";
  v5[4] = &stru_100860540;
  v5[5] = &stru_100860560;
  v4[6] = @"h";
  v4[7] = @"i";
  v5[6] = &stru_100860580;
  v5[7] = &stru_1008605A0;
  v4[8] = @"l";
  v4[9] = @"m";
  v5[8] = &stru_1008605C0;
  v5[9] = &stru_1008605E0;
  v4[10] = @"l";
  v4[11] = @"m";
  v5[10] = &stru_100860600;
  v5[11] = &stru_100860620;
  v4[12] = @"j";
  v4[13] = @"k";
  v5[12] = &stru_100860640;
  v5[13] = &stru_100860660;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:14];

  return v2;
}

@end