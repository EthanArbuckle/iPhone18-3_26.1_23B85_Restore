@interface FinHealthRecurringHelper
+ (id)histogramKeysForCardPurchaseTransaction:(id)a3 transactionAmount:(id)a4 transactionSourceIdentifier:(id)a5 transactionType:(int64_t)a6 accountType:(int64_t)a7 amountFromDatabase:(int64_t)a8 receiptIdentifier:(id)a9;
+ (id)histogramKeysForMerchantDetailedCategoryTransaction:(id)a3 transactionSourceIdentifier:(id)a4 transactionAmount:(id)a5 transactionType:(int64_t)a6 amountFromDatabase:(int64_t)a7;
+ (id)histogramKeysForPeerPaymentTransaction:(id)a3 transactionAmount:(id)a4 transactionPeerPaymentSubtype:(int64_t)a5 amountFromDatabase:(int64_t)a6;
+ (id)histogramKeysForTopUpTransaction:(id)a3 amountFromDatabase:(int64_t)a4;
+ (id)histogramKeysForTransaction:(id)a3;
+ (id)mean:(id)a3;
+ (id)mean:(id)a3 startIndex:(unint64_t)a4 arrayLength:(unint64_t)a5;
+ (id)rootMeanSquareError:(id)a3;
+ (id)rootMeanSquareError:(id)a3 decimalKey:(id)a4 startIndex:(unint64_t)a5 arrayLength:(unint64_t)a6 decimalDenominator:(id)a7;
+ (id)rootMeanSquareError:(id)a3 startIndex:(unint64_t)a4 arrayLength:(unint64_t)a5;
+ (void)rootMeanSquareErrorForSlidingWindowWithCompletion:(id)a3 slidingWindowWidth:(unint64_t)a4 decimalThreshold:(id)a5 decimalDenominator:(id)a6 decimalKeyEntry:(id)a7 completion:(id)a8;
@end

@implementation FinHealthRecurringHelper

+ (void)rootMeanSquareErrorForSlidingWindowWithCompletion:(id)a3 slidingWindowWidth:(unint64_t)a4 decimalThreshold:(id)a5 decimalDenominator:(id)a6 decimalKeyEntry:(id)a7 completion:(id)a8
{
  v20 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  if (1 - a4 + [v20 count])
  {
    v18 = 0;
    do
    {
      v19 = [a1 rootMeanSquareError:v20 decimalKey:v16 startIndex:v18 arrayLength:a4 decimalDenominator:v15];
      if ([v19 lessThan:v14])
      {
        v17[2](v17, v18, v19);
      }

      ++v18;
    }

    while (v18 < 1 - a4 + [v20 count]);
  }
}

+ (id)histogramKeysForTransaction:(id)a3
{
  v4 = a3;
  v5 = [v4 transactionType];
  v6 = 0;
  if (v5 <= 0x15)
  {
    if (((1 << v5) & 0x380401) != 0)
    {
      v7 = [v4 displayName];
      v8 = [v4 amount];
      v9 = [v4 transactionSourceIdentifier];
      v10 = [v4 transactionType];
      v11 = [v4 amountFromDatabase];
      v12 = [v4 receiptIdentifier];
      v6 = [a1 histogramKeysForCardPurchaseTransaction:v7 transactionAmount:v8 transactionSourceIdentifier:v9 transactionType:v10 amountFromDatabase:v11 receiptIdentifier:v12];

LABEL_4:
LABEL_5:

      goto LABEL_6;
    }

    if (v5 == 3)
    {
      v7 = [v4 peerPaymentCounterpartHandle];
      v8 = [v4 amount];
      v6 = [a1 histogramKeysForPeerPaymentTransaction:v7 transactionAmount:v8 transactionPeerPaymentSubtype:objc_msgSend(v4 amountFromDatabase:{"peerPaymentType"), objc_msgSend(v4, "amountFromDatabase")}];
      goto LABEL_4;
    }

    if (v5 == 6)
    {
      v7 = [v4 amount];
      v6 = [a1 histogramKeysForTopUpTransaction:v7 amountFromDatabase:{objc_msgSend(v4, "amountFromDatabase")}];
      goto LABEL_5;
    }
  }

LABEL_6:

  return v6;
}

+ (id)histogramKeysForCardPurchaseTransaction:(id)a3 transactionAmount:(id)a4 transactionSourceIdentifier:(id)a5 transactionType:(int64_t)a6 accountType:(int64_t)a7 amountFromDatabase:(int64_t)a8 receiptIdentifier:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a9;
  v19 = v18;
  if (v18)
  {
    v35 = v16;
    v37 = v15;
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __179__FinHealthRecurringHelper_histogramKeysForCardPurchaseTransaction_transactionAmount_transactionSourceIdentifier_transactionType_accountType_amountFromDatabase_receiptIdentifier___block_invoke;
    v49[3] = &unk_2785CB058;
    v50 = v18;
    v20 = [FHDatabaseClauseFromBuilder initWithBuilder:v49];
    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy__0;
    v47 = __Block_byref_object_dispose__0;
    v48 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v21 = [[FHDatabaseEntity alloc] initWithEntity:@"fh_receipt_data"];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __179__FinHealthRecurringHelper_histogramKeysForCardPurchaseTransaction_transactionAmount_transactionSourceIdentifier_transactionType_accountType_amountFromDatabase_receiptIdentifier___block_invoke_451;
    v38[3] = &unk_2785CB5A8;
    v40 = &v43;
    v41 = a1;
    v22 = v17;
    v39 = v22;
    v42 = a6;
    [(FHDatabaseEntity *)v21 queryDataWithBlock:v20 logicalOperator:@"AND" selectFields:&unk_283A88170 usingBlock:v38];
    if ([v44[5] count])
    {
      v23 = [v44[5] copy];
    }

    else
    {
      v23 = [a1 histogramKeysForCardPurchaseTransaction:v37 transactionAmount:v35 transactionSourceIdentifier:v22 transactionType:a6 accountType:a7 amountFromDatabase:a8 receiptIdentifier:0];
    }

    v33 = v23;

    _Block_object_dispose(&v43, 8);
    v16 = v35;
    v31 = v37;
  }

  else
  {
    [v16 doubleValue];
    v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%ld_%.2f_%ld", v15, v17, a6, log(fabs(v24) + 1.0), a7];
    [MEMORY[0x277CCACA8] stringWithFormat:@"%ld%@", objc_msgSend(v36, "hash"), @"_4bd92d83a"];
    v26 = v25 = v17;
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%ld_%ld_%ld", v15, v25, a6, 14 * a8, a7];
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(v27, "hash")];
    v29 = MEMORY[0x277CBEB98];
    v30 = [[FHSmartCompoundFeatureRankedValue alloc] initWithLabelAndIntegerRank:v26 featureRank:0];
    v31 = v15;
    v32 = [[FHSmartCompoundFeatureRankedValue alloc] initWithLabelAndIntegerRank:v28 featureRank:0];
    v33 = [v29 setWithObjects:{v30, v32, 0}];

    v17 = v25;
    v19 = 0;
  }

  return v33;
}

void __179__FinHealthRecurringHelper_histogramKeysForCardPurchaseTransaction_transactionAmount_transactionSourceIdentifier_transactionType_accountType_amountFromDatabase_receiptIdentifier___block_invoke_451(void *a1, void *a2)
{
  v3 = a2;
  v16 = [v3 stringAtIndex:0];
  v4 = [v3 stringAtIndex:1];
  v5 = [v3 intAtIndex:2];

  v6 = [objc_alloc(MEMORY[0x277CCA980]) initWithInteger:v5];
  v7 = [MEMORY[0x277CCA980] defaultDatabaseAmountMultiplier];
  v8 = [v6 decimalNumberByDividingBy:v7];

  v9 = a1[6];
  v10 = *(*(a1[5] + 8) + 40);
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v16, v4];
  v12 = [v9 histogramKeysForCardPurchaseTransaction:v11 transactionAmount:v8 transactionSourceIdentifier:a1[4] transactionType:a1[7] amountFromDatabase:v5 receiptIdentifier:0];
  v13 = [v10 setByAddingObjectsFromSet:v12];
  v14 = *(a1[5] + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;
}

+ (id)histogramKeysForPeerPaymentTransaction:(id)a3 transactionAmount:(id)a4 transactionPeerPaymentSubtype:(int64_t)a5 amountFromDatabase:(int64_t)a6
{
  v9 = a3;
  [a4 doubleValue];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%ld_%.2f", v9, a5, log(fabs(v10) + 1.0)];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld%@", objc_msgSend(v11, "hash"), @"_4bd92d83a"];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%ld_%ld", v9, a5, 14 * a6];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(v13, "hash")];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%ld", v9, a5];

  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(v15, "hash")];
  v17 = MEMORY[0x277CBEB98];
  v18 = [[FHSmartCompoundFeatureRankedValue alloc] initWithLabelAndIntegerRank:v12 featureRank:3];
  v19 = [[FHSmartCompoundFeatureRankedValue alloc] initWithLabelAndIntegerRank:v14 featureRank:3];
  v20 = [[FHSmartCompoundFeatureRankedValue alloc] initWithLabelAndIntegerRank:v16 featureRank:4];
  v21 = [v17 setWithObjects:{v18, v19, v20, 0}];

  return v21;
}

+ (id)histogramKeysForTopUpTransaction:(id)a3 amountFromDatabase:(int64_t)a4
{
  [a3 doubleValue];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f", log(fabs(v5) + 1.0)];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld%@", objc_msgSend(v6, "hash"), @"_4bd92d83a"];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", 14 * a4];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(v8, "hash")];
  v10 = MEMORY[0x277CBEB98];
  v11 = [[FHSmartCompoundFeatureRankedValue alloc] initWithLabelAndIntegerRank:v7 featureRank:5];
  v12 = [[FHSmartCompoundFeatureRankedValue alloc] initWithLabelAndIntegerRank:v9 featureRank:5];
  v13 = [v10 setWithObjects:{v11, v12, 0}];

  return v13;
}

+ (id)histogramKeysForMerchantDetailedCategoryTransaction:(id)a3 transactionSourceIdentifier:(id)a4 transactionAmount:(id)a5 transactionType:(int64_t)a6 amountFromDatabase:(int64_t)a7
{
  v11 = a4;
  v12 = a3;
  [a5 doubleValue];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%ld_%.2f", v12, v11, a6, log(fabs(v13) + 1.0)];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld%@", objc_msgSend(v14, "hash"), @"_4bd92d83a"];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%ld_%ld", v12, v11, a6, 14 * a7];

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(v16, "hash")];
  v18 = MEMORY[0x277CBEB98];
  v19 = [[FHSmartCompoundFeatureRankedValue alloc] initWithLabelAndIntegerRank:v15 featureRank:9];
  v20 = [[FHSmartCompoundFeatureRankedValue alloc] initWithLabelAndIntegerRank:v17 featureRank:9];
  v21 = [v18 setWithObjects:{v19, v20, 0}];

  return v21;
}

+ (id)rootMeanSquareError:(id)a3 startIndex:(unint64_t)a4 arrayLength:(unint64_t)a5
{
  v7 = a3;
  if (a5 + a4 > a4)
  {
    v8 = 0.0;
    v9 = a5;
    v10 = a4;
    do
    {
      v11 = [v7 objectAtIndex:v10];
      [v11 doubleValue];
      v8 = v8 + v12;

      ++v10;
      --v9;
    }

    while (v9);
    v13 = a5;
    v14 = v8 / a5;
    if (v14 >= 7.0 - 2.0)
    {
      v15 = 0.0;
      if (a5 + a4 > a4)
      {
        do
        {
          v16 = [v7 objectAtIndex:a4];
          [v16 doubleValue];
          v18 = v17;

          v15 = v15 + (v18 - v14) * (v18 - v14);
          ++a4;
          --a5;
        }

        while (a5);
      }

      goto LABEL_10;
    }

LABEL_9:
    v19 = objc_alloc(MEMORY[0x277CCA980]);
    v20 = 2.0 + 1.0;
    goto LABEL_11;
  }

  v13 = a5;
  v15 = 0.0;
  if (0.0 / a5 < 7.0 - 2.0)
  {
    goto LABEL_9;
  }

LABEL_10:
  v19 = objc_alloc(MEMORY[0x277CCA980]);
  v20 = sqrt(v15 / v13);
LABEL_11:
  v21 = [v19 initWithDouble:v20];

  return v21;
}

+ (id)rootMeanSquareError:(id)a3
{
  v4 = a3;
  v5 = [a1 rootMeanSquareError:v4 startIndex:0 arrayLength:{objc_msgSend(v4, "count")}];

  return v5;
}

+ (id)mean:(id)a3 startIndex:(unint64_t)a4 arrayLength:(unint64_t)a5
{
  v6 = 0.0;
  if (a5 + a4 > a4)
  {
    v7 = a4;
    v9 = a5;
    do
    {
      v10 = [a3 objectAtIndex:v7];
      [v10 doubleValue];
      v6 = v6 + v11;

      ++v7;
      --v9;
    }

    while (v9);
  }

  v12 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v6 / a5];

  return v12;
}

+ (id)mean:(id)a3
{
  v4 = a3;
  v5 = [a1 mean:v4 startIndex:0 arrayLength:{objc_msgSend(v4, "count")}];

  return v5;
}

+ (id)rootMeanSquareError:(id)a3 decimalKey:(id)a4 startIndex:(unint64_t)a5 arrayLength:(unint64_t)a6 decimalDenominator:(id)a7
{
  v11 = a3;
  v12 = a4;
  [a7 doubleValue];
  v14 = v13;
  v15 = 0.0;
  if (a5 + 1 < a6 + a5)
  {
    v16 = a6 - 1;
    v17 = a5;
    do
    {
      v18 = v17 + 1;
      v19 = [v11 objectAtIndex:?];
      v20 = [v19 objectForKey:v12];

      v21 = [v11 objectAtIndex:v18];
      v22 = [v21 objectForKey:v12];

      v23 = [v20 decimalNumberBySubtracting:v22];
      [v23 doubleValue];
      v15 = v15 + v24 / v14;

      v17 = v18;
      --v16;
    }

    while (v16);
  }

  v25 = a6 - 1;
  v26 = (a6 - 1);
  v27 = v15 / v26;
  if (v27 >= 7.0 - 2.0)
  {
    v30 = 0.0;
    if (a5 + 1 < a6 + a5)
    {
      do
      {
        v31 = a5 + 1;
        v32 = [v11 objectAtIndex:a5];
        v33 = [v32 objectForKey:v12];

        v34 = [v11 objectAtIndex:v31];
        v35 = [v34 objectForKey:v12];

        v36 = [v33 decimalNumberBySubtracting:v35];
        [v36 doubleValue];
        v38 = v37 / v14;

        v30 = v30 + (v38 - v27) * (v38 - v27);
        a5 = v31;
        --v25;
      }

      while (v25);
    }

    v28 = objc_alloc(MEMORY[0x277CCA980]);
    v29 = sqrt(v30 / v26);
  }

  else
  {
    v28 = objc_alloc(MEMORY[0x277CCA980]);
    v29 = 2.0 + 1.0;
  }

  v39 = [v28 initWithDouble:v29];

  return v39;
}

@end