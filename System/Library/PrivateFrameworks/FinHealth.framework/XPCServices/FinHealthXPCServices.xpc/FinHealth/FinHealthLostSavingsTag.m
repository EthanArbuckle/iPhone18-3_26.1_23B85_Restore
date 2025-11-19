@interface FinHealthLostSavingsTag
- (FinHealthLostSavingsTag)init;
- (id)lostSavingsOverTimeForMerchant:(id)a3 timePeriod:(int64_t)a4 currentDate:(id)a5 stateController:(id)a6;
- (int64_t)cashbackPercentForMerchant:(id)a3;
- (void)lostSavingsTagComputationForTransaction:(id)a3 transactionSource:(unint64_t)a4 cashbackPercent:(int64_t)a5 merchantName:(id)a6 completion:(id)a7;
@end

@implementation FinHealthLostSavingsTag

- (FinHealthLostSavingsTag)init
{
  v3.receiver = self;
  v3.super_class = FinHealthLostSavingsTag;
  return [(FinHealthLostSavingsTag *)&v3 init];
}

- (int64_t)cashbackPercentForMerchant:(id)a3
{
  v3 = getCleanMerchantName();
  v4 = FHMerchantsUnaffectedBySource();
  v5 = [v4 containsObject:v3];

  if (v5)
  {
    v6 = &notApplicableForLostSavings;
  }

  else
  {
    v7 = FHCleanSuperMerchants();
    v8 = [v7 containsObject:v3];

    v6 = &twoPercentCashback;
    if (v8)
    {
      v6 = &threePercentCashback;
    }
  }

  v9 = *v6;

  return v9;
}

- (void)lostSavingsTagComputationForTransaction:(id)a3 transactionSource:(unint64_t)a4 cashbackPercent:(int64_t)a5 merchantName:(id)a6 completion:(id)a7
{
  v26 = a3;
  v11 = a6;
  if (a7)
  {
    v12 = a7;
    v13 = objc_opt_new();
    if (a4 - 5 <= 2)
    {
      v14 = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:0 scale:2 raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
      v15 = [NSString stringWithFormat:@"%ld", a5 - 1];
      v16 = [NSDecimalNumber decimalNumberWithString:v15];

      v17 = [v16 decimalNumberByMultiplyingBy:v26];
      v18 = [NSString stringWithFormat:@"100"];
      v19 = [NSDecimalNumber decimalNumberWithString:v18];
      v20 = [v17 decimalNumberByDividingBy:v19];

      v21 = [v20 decimalNumberByRoundingAccordingToBehavior:v14];
      v22 = [NSString stringWithFormat:@"FHLostSaving%@", v11];
      v23 = [[FHSmartCompoundFeatureRankedValue alloc] initWithLabelAndRank:v22 featureRank:v21];
      [v13 addObject:v23];
    }

    v24 = [NSArray arrayWithArray:v13];
    v25 = [NSDictionary dictionaryWithObject:v24 forKey:FHSmartFeatureCompoundTypeLostSavings];
    v12[2](v12, v25);
  }
}

- (id)lostSavingsOverTimeForMerchant:(id)a3 timePeriod:(int64_t)a4 currentDate:(id)a5 stateController:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = a5;
  v12 = objc_alloc_init(NSDateComponents);
  v13 = objc_alloc_init(NSArray);
  [v12 setDay:-a4];
  v14 = +[NSCalendar currentCalendar];
  v15 = [v14 dateByAddingComponents:v12 toDate:v11 options:0];
  if (v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = 0;
  }

  v17 = [v10 getLostSavingsOverTime:v16 from:v15 to:v11];

  v18 = [v17 valueForKeyPath:@"@sum.self"];

  return v18;
}

@end