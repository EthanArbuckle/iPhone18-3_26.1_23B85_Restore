@interface PKSpendingSummaryGenerator
+ (id)generateSummaryOfType:(unint64_t)a3 startingAt:(id)a4 withSegmentLimit:(unint64_t)a5 generateBeyondCurrentDay:(BOOL)a6;
@end

@implementation PKSpendingSummaryGenerator

+ (id)generateSummaryOfType:(unint64_t)a3 startingAt:(id)a4 withSegmentLimit:(unint64_t)a5 generateBeyondCurrentDay:(BOOL)a6
{
  v49 = a6;
  v48 = a5;
  v7 = a4;
  v8 = [MEMORY[0x1E695DEE8] currentCalendar];
  [v8 setFirstWeekday:2];
  v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
  switch(a3)
  {
    case 2uLL:
      v9 = v8;
      v10 = 8;
      v11 = 4;
      goto LABEL_7;
    case 1uLL:
      v9 = v8;
      v10 = 4096;
      v11 = 8;
      goto LABEL_7;
    case 0uLL:
      v9 = v8;
      v10 = 512;
      v11 = 0x2000;
LABEL_7:
      [v9 rangeOfUnit:v10 inUnit:v11 forDate:v7];
      v13 = v12;
      goto LABEL_9;
  }

  v13 = 0;
LABEL_9:
  v14 = 0x2000;
  if (a3 == 1)
  {
    v14 = 8;
  }

  if (a3 == 2)
  {
    v15 = 4;
  }

  else
  {
    v15 = v14;
  }

  v16 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v53[0] = v16;
  v43 = v15;
  [v8 rangeOfUnit:v15 startDate:v53 interval:0 forDate:v7];
  v45 = v53[0];

  if (v13)
  {
    v44 = a3;
    v17 = 0;
    v41 = v51;
    v18 = 0.0;
    v19 = MEMORY[0x1E695E0F0];
    v42 = v13;
    do
    {
      v47 = v17;
      v20 = [v8 dateByAddingUnit:v43 value:v41 toDate:? options:?];
      v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v22 = 0;
      v23 = 0.0;
      do
      {
        if (v22)
        {
          if (([v8 compareDate:v20 toDate:v7 toUnitGranularity:16] != 1 || v49) && arc4random_uniform(3u))
          {
            v24 = arc4random_uniform(v48 + 1);
          }

          else
          {
            v24 = 0;
          }

          v23 = v23 + v24;
          v25 = objc_alloc_init(PKPaymentTransactionGroup);
          [(PKPaymentTransactionGroup *)v25 setTransactions:v19];
          [(PKPaymentTransactionGroup *)v25 setTransactionCount:0];
          [(PKPaymentTransactionGroup *)v25 setMerchantCategory:v22];
          [(PKPaymentTransactionGroup *)v25 setType:0];
          v26 = [MEMORY[0x1E696AB90] decimalNumberWithMantissa:v24 exponent:0 isNegative:0];
          v27 = PKCurrencyAmountCreate(v26, &cfstr_Usd.isa, 0);
          [(PKPaymentTransactionGroup *)v25 setTotalAmount:v27];

          [v21 addObject:v25];
        }

        ++v22;
      }

      while (v22 != 8);
      v28 = objc_alloc_init(PKSpendingSummary);
      v29 = v28;
      if (v44 < 3)
      {
        [(PKSpendingSummary *)v28 setStartDate:v20];
        [(PKSpendingSummary *)v29 setEndDate:v20];
      }

      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v51[0] = __105__PKSpendingSummaryGenerator_generateSummaryOfType_startingAt_withSegmentLimit_generateBeyondCurrentDay___block_invoke;
      v51[1] = &unk_1E79DB178;
      v52 = &unk_1F23B4298;
      v30 = [v21 sortedArrayUsingComparator:v50];
      [(PKSpendingSummary *)v29 setOrderedSpendingCategories:v30];

      v31 = [MEMORY[0x1E696AB90] decimalNumberWithMantissa:v23 exponent:0 isNegative:0];
      v32 = PKCurrencyAmountCreate(v31, &cfstr_Usd.isa, 0);
      [(PKSpendingSummary *)v29 setTotalSpending:v32];

      [v46 addObject:v29];
      v18 = v18 + v23;

      v17 = v47 + 1;
    }

    while (v47 + 1 != v42);
    v13 = v18;
    a3 = v44;
  }

  v33 = objc_alloc_init(PKSpendingSummary);
  [(PKSpendingSummary *)v33 setSummaryType:a3];
  v34 = [v46 firstObject];
  v35 = [v34 startDate];
  [(PKSpendingSummary *)v33 setStartDate:v35];

  v36 = [v46 lastObject];
  v37 = [v36 endDate];
  [(PKSpendingSummary *)v33 setEndDate:v37];

  v38 = [MEMORY[0x1E696AB90] decimalNumberWithMantissa:v13 exponent:0 isNegative:0];
  v39 = PKCurrencyAmountCreate(v38, &cfstr_Usd.isa, 0);
  [(PKSpendingSummary *)v33 setTotalSpending:v39];

  [(PKSpendingSummary *)v33 setSpendingsPerCalendarUnit:v46];

  return v33;
}

uint64_t __105__PKSpendingSummaryGenerator_generateSummaryOfType_startingAt_withSegmentLimit_generateBeyondCurrentDay___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v8 = [v6 numberWithInteger:{objc_msgSend(a2, "merchantCategory")}];
  v9 = [v5 indexOfObject:v8];

  v10 = *(a1 + 32);
  v11 = MEMORY[0x1E696AD98];
  v12 = [v7 merchantCategory];

  v13 = [v11 numberWithInteger:v12];
  v14 = [v10 indexOfObject:v13];

  if (v9 < v14)
  {
    return -1;
  }

  else
  {
    return v9 > v14;
  }
}

@end