@interface FinHealthLostSavingsTag
- (FinHealthLostSavingsTag)init;
- (id)lostSavingsOverTimeForMerchant:(id)merchant timePeriod:(int64_t)period currentDate:(id)date stateController:(id)controller;
- (int64_t)cashbackPercentForMerchant:(id)merchant;
- (void)lostSavingsTagComputationForTransaction:(id)transaction transactionSource:(unint64_t)source cashbackPercent:(int64_t)percent merchantName:(id)name completion:(id)completion;
@end

@implementation FinHealthLostSavingsTag

- (FinHealthLostSavingsTag)init
{
  v3.receiver = self;
  v3.super_class = FinHealthLostSavingsTag;
  return [(FinHealthLostSavingsTag *)&v3 init];
}

- (int64_t)cashbackPercentForMerchant:(id)merchant
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

- (void)lostSavingsTagComputationForTransaction:(id)transaction transactionSource:(unint64_t)source cashbackPercent:(int64_t)percent merchantName:(id)name completion:(id)completion
{
  transactionCopy = transaction;
  nameCopy = name;
  if (completion)
  {
    completionCopy = completion;
    v13 = objc_opt_new();
    if (source - 5 <= 2)
    {
      v14 = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:0 scale:2 raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
      v15 = [NSString stringWithFormat:@"%ld", percent - 1];
      v16 = [NSDecimalNumber decimalNumberWithString:v15];

      v17 = [v16 decimalNumberByMultiplyingBy:transactionCopy];
      v18 = [NSString stringWithFormat:@"100"];
      v19 = [NSDecimalNumber decimalNumberWithString:v18];
      v20 = [v17 decimalNumberByDividingBy:v19];

      v21 = [v20 decimalNumberByRoundingAccordingToBehavior:v14];
      nameCopy = [NSString stringWithFormat:@"FHLostSaving%@", nameCopy];
      v23 = [[FHSmartCompoundFeatureRankedValue alloc] initWithLabelAndRank:nameCopy featureRank:v21];
      [v13 addObject:v23];
    }

    v24 = [NSArray arrayWithArray:v13];
    v25 = [NSDictionary dictionaryWithObject:v24 forKey:FHSmartFeatureCompoundTypeLostSavings];
    completionCopy[2](completionCopy, v25);
  }
}

- (id)lostSavingsOverTimeForMerchant:(id)merchant timePeriod:(int64_t)period currentDate:(id)date stateController:(id)controller
{
  merchantCopy = merchant;
  controllerCopy = controller;
  dateCopy = date;
  v12 = objc_alloc_init(NSDateComponents);
  v13 = objc_alloc_init(NSArray);
  [v12 setDay:-period];
  v14 = +[NSCalendar currentCalendar];
  v15 = [v14 dateByAddingComponents:v12 toDate:dateCopy options:0];
  if (merchantCopy)
  {
    v16 = merchantCopy;
  }

  else
  {
    v16 = 0;
  }

  v17 = [controllerCopy getLostSavingsOverTime:v16 from:v15 to:dateCopy];

  v18 = [v17 valueForKeyPath:@"@sum.self"];

  return v18;
}

@end