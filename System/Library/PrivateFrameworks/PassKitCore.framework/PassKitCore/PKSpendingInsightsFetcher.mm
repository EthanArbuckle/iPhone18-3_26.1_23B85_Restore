@interface PKSpendingInsightsFetcher
- (BOOL)_validateTrends:(id)trends againstSummary:(id)summary;
- (PKSpendingInsightsFetcher)init;
- (id)_deriveTrendsFromSummary:(id)summary previousSummary:(id)previousSummary error:(id *)error;
- (void)_getTrendsFromFinHealthForSummary:(id)summary previousSummary:(id)previousSummary completion:(id)completion;
- (void)fetchInsightTrendsForSummary:(id)summary previousSummary:(id)previousSummary completion:(id)completion;
@end

@implementation PKSpendingInsightsFetcher

- (PKSpendingInsightsFetcher)init
{
  v6.receiver = self;
  v6.super_class = PKSpendingInsightsFetcher;
  v2 = [(PKSpendingInsightsFetcher *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(getFHSearchSuggestionControllerClass());
    searchSuggestionController = v2->_searchSuggestionController;
    v2->_searchSuggestionController = v3;

    v2->_foundFHInsightsDiscrepancy = 0;
  }

  return v2;
}

- (void)fetchInsightTrendsForSummary:(id)summary previousSummary:(id)previousSummary completion:(id)completion
{
  if (self->_useFinHealth)
  {
    completionCopy = completion;
    [(PKSpendingInsightsFetcher *)self _getTrendsFromFinHealthForSummary:summary previousSummary:previousSummary completion:completionCopy];
  }

  else
  {
    v11 = 0;
    completionCopy2 = completion;
    v10 = [(PKSpendingInsightsFetcher *)self _deriveTrendsFromSummary:summary previousSummary:previousSummary error:&v11];
    completionCopy = v11;
    completionCopy2[2](completionCopy2, v10, completionCopy);
  }
}

- (void)_getTrendsFromFinHealthForSummary:(id)summary previousSummary:(id)previousSummary completion:(id)completion
{
  v29[2] = *MEMORY[0x1E69E9840];
  summaryCopy = summary;
  previousSummaryCopy = previousSummary;
  completionCopy = completion;
  if (self->_foundFHInsightsDiscrepancy)
  {
    v10 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKSpendingInsightErrorDomain" code:3 userInfo:0];
    completionCopy[2](completionCopy, 0, v10);
  }

  else
  {
    summaryType = [summaryCopy summaryType];
    if (summaryType == 1)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    date = [MEMORY[0x1E695DF00] date];
    startDate = [summaryCopy startDate];
    endDate = [summaryCopy endDate];
    if ([endDate compare:date] == -1)
    {
      v15 = endDate;
    }

    else
    {
      v15 = date;
    }

    v16 = v15;

    objc_initWeak(&location, self);
    searchSuggestionController = self->_searchSuggestionController;
    v18 = _MergedGlobals_182();
    v29[0] = v18;
    v19 = off_1ED6D11A0();
    v29[1] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    if (summaryType == 2)
    {
      v21 = 3;
    }

    else
    {
      v21 = v12;
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __90__PKSpendingInsightsFetcher__getTrendsFromFinHealthForSummary_previousSummary_completion___block_invoke;
    v24[3] = &unk_1E79E49E8;
    v25 = summaryCopy;
    objc_copyWeak(&v27, &location);
    v26 = completionCopy;
    [(FHSearchSuggestionController *)searchSuggestionController allFeatureInsightsWithStartDate:startDate endDate:v16 insightTypeItems:v20 trendWindow:v21 completion:v24];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }
}

void __90__PKSpendingInsightsFetcher__getTrendsFromFinHealthForSummary_previousSummary_completion___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) startDate];
    v6 = [*(a1 + 32) endDate];
    v15 = 138412802;
    v16 = v3;
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Received FH insights: %@\n\nfor summary with startDate %@ and endDate %@", &v15, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v3)
    {
      v8 = [[PKSpendingInsightTrendCollection alloc] initWithFHFeatureInsights:v3];
      if ([WeakRetained _validateTrends:v8 againstSummary:*(a1 + 32)])
      {
        v9 = *(a1 + 40);
        if (v9)
        {
          v10 = [[PKSpendingInsightTrendCollection alloc] initWithFHFeatureInsights:v3];
          (*(v9 + 16))(v9, v10, 0);
LABEL_15:
        }
      }

      else
      {
        WeakRetained[16] = 1;
        v14 = *(a1 + 40);
        if (v14)
        {
          v10 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKSpendingInsightErrorDomain" code:3 userInfo:0];
          (*(v14 + 16))(v14, 0, v10);
          goto LABEL_15;
        }
      }

LABEL_16:

      goto LABEL_17;
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      v12 = objc_alloc(MEMORY[0x1E696ABC0]);
      v13 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v11 = *(a1 + 40);
    if (v11)
    {
      v12 = objc_alloc(MEMORY[0x1E696ABC0]);
      v13 = -1;
LABEL_12:
      v8 = [v12 initWithDomain:@"PKSpendingInsightErrorDomain" code:v13 userInfo:0];
      (*(v11 + 16))(v11, 0, v8);
      goto LABEL_16;
    }
  }

LABEL_17:
}

- (BOOL)_validateTrends:(id)trends againstSummary:(id)summary
{
  v74 = *MEMORY[0x1E69E9840];
  trendsCopy = trends;
  summaryCopy = summary;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__PKSpendingInsightsFetcher__validateTrends_againstSummary___block_invoke_2;
  aBlock[3] = &unk_1E79E4A10;
  aBlock[4] = self;
  v8 = summaryCopy;
  v62 = v8;
  v9 = _Block_copy(aBlock);
  overallSpendingTrend = [trendsCopy overallSpendingTrend];
  totalSpending = [overallSpendingTrend totalSpending];
  amount = [totalSpending amount];

  totalSpending2 = [v8 totalSpending];
  amount2 = [totalSpending2 amount];

  v60 = 0;
  LOBYTE(totalSpending2) = __60__PKSpendingInsightsFetcher__validateTrends_againstSummary___block_invoke(amount, amount2, &v60);
  v15 = v60;
  if (totalSpending2)
  {
    overallSpendingTrend2 = [trendsCopy overallSpendingTrend];
    previousTotalSpending = [overallSpendingTrend2 previousTotalSpending];
    amount3 = [previousTotalSpending amount];

    previousTotalSpending2 = [v8 previousTotalSpending];
    amount4 = [previousTotalSpending2 amount];

    v50 = amount4;
    if (([v8 isCurrentPeriod] & 1) == 0)
    {
      v59 = v15;
      v21 = __60__PKSpendingInsightsFetcher__validateTrends_againstSummary___block_invoke(amount3, amount4, &v59);
      v22 = v59;

      if (!v21)
      {
        v49 = v9;
        v41 = PKLogFacilityTypeGetObject(0xFuLL);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          startDate = [v8 startDate];
          [v8 endDate];
          v44 = v43 = amount3;
          *buf = 138544130;
          v64 = startDate;
          v65 = 2114;
          v66 = v44;
          v67 = 2112;
          v68 = v43;
          v69 = 2112;
          v70 = v50;
          _os_log_impl(&dword_1AD337000, v41, OS_LOG_TYPE_DEFAULT, "Rejecting trends for dates [%{public}@ to %{public}@]\nbecause previous spending %@\ndoes not match summary previous spending %@. No further insights will be generated for this session.", buf, 0x2Au);

          amount3 = v43;
        }

        v9 = v49;
        v49[2](v49, v22);
        v33 = 0;
        v15 = v22;
        amount4 = v50;
LABEL_26:

        goto LABEL_27;
      }

      v15 = v22;
      amount4 = v50;
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = [v8 orderedSpendingCategories];
    v23 = [obj countByEnumeratingWithState:&v55 objects:v73 count:16];
    if (v23)
    {
      v24 = v23;
      v46 = amount3;
      v47 = v8;
      v48 = v9;
      v52 = *v56;
      v53 = trendsCopy;
      while (2)
      {
        v25 = 0;
        v26 = v15;
        v27 = amount2;
        v28 = amount;
        do
        {
          if (*v56 != v52)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v55 + 1) + 8 * v25);
          v30 = [v53 spendingTrendForMerchantCategory:{objc_msgSend(v29, "merchantCategory", v46)}];
          totalSpending3 = [v30 totalSpending];
          amount = [totalSpending3 amount];

          totalAmount = [v29 totalAmount];
          amount2 = [totalAmount amount];

          v54 = v26;
          LOBYTE(totalAmount) = __60__PKSpendingInsightsFetcher__validateTrends_againstSummary___block_invoke(amount, amount2, &v54);
          v15 = v54;

          if ((totalAmount & 1) == 0)
          {
            v37 = PKLogFacilityTypeGetObject(0xFuLL);
            v8 = v47;
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              startDate2 = [v47 startDate];
              endDate = [v47 endDate];
              v40 = PKMerchantCategoryToString([v29 merchantCategory]);
              *buf = 138544386;
              v64 = startDate2;
              v65 = 2114;
              v66 = endDate;
              v67 = 2112;
              v68 = v40;
              v69 = 2112;
              v70 = amount;
              v71 = 2112;
              v72 = amount2;
              _os_log_impl(&dword_1AD337000, v37, OS_LOG_TYPE_DEFAULT, "Rejecting trends for dates [%{public}@ to %{public}@]\nbecause spending for merchant category %@ %@\ndoes not match summary spending %@. No further insights will be generated for this session.", buf, 0x34u);
            }

            v9 = v48;
            v48[2](v48, v15);
            v33 = 0;
            trendsCopy = v53;
            goto LABEL_20;
          }

          ++v25;
          v26 = v15;
          v27 = amount2;
          v28 = amount;
        }

        while (v24 != v25);
        v24 = [obj countByEnumeratingWithState:&v55 objects:v73 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }

      v33 = 1;
      trendsCopy = v53;
      v8 = v47;
      v9 = v48;
LABEL_20:
      amount3 = v46;
      amount4 = v50;
    }

    else
    {
      v33 = 1;
    }

    goto LABEL_26;
  }

  v34 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    startDate3 = [v8 startDate];
    endDate2 = [v8 endDate];
    *buf = 138544130;
    v64 = startDate3;
    v65 = 2114;
    v66 = endDate2;
    v67 = 2112;
    v68 = amount;
    v69 = 2112;
    v70 = amount2;
    _os_log_impl(&dword_1AD337000, v34, OS_LOG_TYPE_DEFAULT, "Rejecting trends for dates [%{public}@ to %{public}@]\nbecause total spending %@\ndoes not match summary total spending %@. No further insights will be generated for this session.", buf, 0x2Au);
  }

  v9[2](v9, v15);
  v33 = 0;
LABEL_27:

  return v33;
}

BOOL __60__PKSpendingInsightsFetcher__validateTrends_againstSummary___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AB98];
  v6 = a2;
  v7 = a1;
  v8 = [v5 decimalNumberHandlerWithRoundingMode:0 scale:2 raiseOnExactness:0 raiseOnOverflow:1 raiseOnUnderflow:1 raiseOnDivideByZero:1];
  v9 = [v7 decimalNumberByRoundingAccordingToBehavior:v8];

  v10 = [v6 decimalNumberByRoundingAccordingToBehavior:v8];

  v11 = [v9 compare:v10];
  v12 = v11;
  if (a3 && v11)
  {
    *a3 = [v9 decimalNumberBySubtracting:v10];
  }

  return v12 == 0;
}

void __60__PKSpendingInsightsFetcher__validateTrends_againstSummary___block_invoke_2(uint64_t a1, void *a2)
{
  v14[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  has_internal_ui = os_variant_has_internal_ui();
  if (v3 && has_internal_ui && (*(*(a1 + 32) + 16) & 1) == 0)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    [v5 setMaximumFractionDigits:2];
    v6 = objc_alloc_init(PKAutoBugCaptureReporter);
    v13[0] = @"insightDifferenceFromSummary";
    v7 = [v5 stringFromNumber:v3];
    v14[0] = v7;
    v13[1] = @"startDate";
    v8 = [*(a1 + 40) startDate];
    v9 = [v8 description];
    v14[1] = v9;
    v13[2] = @"endDate";
    v10 = [*(a1 + 40) endDate];
    v11 = [v10 description];
    v14[2] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
    [(PKAutoBugCaptureReporter *)v6 reportIssueWithDomain:@"Wallet" type:@"PKSpendingInsightsFetcher" subtype:@"SpendingDiscrepancy" subtypeContext:0 payload:v12];
  }
}

- (id)_deriveTrendsFromSummary:(id)summary previousSummary:(id)previousSummary error:(id *)error
{
  v68 = *MEMORY[0x1E69E9840];
  summaryCopy = summary;
  previousSummaryCopy = previousSummary;
  v9 = previousSummaryCopy;
  if (!previousSummaryCopy)
  {
    totalSpending = [summaryCopy totalSpending];
    zero = [MEMORY[0x1E696AB90] zero];
    totalSpending2 = [summaryCopy totalSpending];
    currency = [totalSpending2 currency];
    totalSpending3 = PKCurrencyAmountCreate(zero, currency, 0);

LABEL_5:
    amount = [totalSpending amount];
    amount2 = [totalSpending3 amount];
    v18 = [amount decimalNumberBySubtracting:amount2];
    if ([amount2 pk_isZeroNumber])
    {
      v19 = 0.0;
      if (([amount pk_isZeroNumber] & 1) == 0)
      {
        v20 = 0;
LABEL_31:

        goto LABEL_32;
      }
    }

    else
    {
      [v18 doubleValue];
      v22 = v21;
      [amount2 doubleValue];
      v19 = fabs(v22 / v23 * 100.0);
    }

    v53 = amount2;
    v54 = amount;
    v52 = v18;
    if (amount && ([amount pk_isZeroNumber] & 1) == 0)
    {
      v24 = __76__PKSpendingInsightsFetcher__deriveTrendsFromSummary_previousSummary_error___block_invoke(v18, v19);
    }

    else
    {
      v24 = 0;
    }

    v25 = [totalSpending currencyAmountBySubtractingCurrencyAmount:totalSpending3];
    absoluteValue = [v25 absoluteValue];

    v51 = absoluteValue;
    v55 = totalSpending3;
    v56 = totalSpending;
    v50 = [[PKSpendingInsightTrend alloc] initWithType:1 direction:v24 percentageChange:absoluteValue amountChange:0 merchantCategory:totalSpending totalSpending:totalSpending3 previousTotalSpending:v19];
    v57 = summaryCopy;
    v58 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    obj = [summaryCopy orderedSpendingCategories];
    v27 = [obj countByEnumeratingWithState:&v63 objects:v67 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v64;
      v59 = *v64;
      v60 = v9;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v64 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v63 + 1) + 8 * i);
          merchantCategory = [v31 merchantCategory];
          totalAmount = [v31 totalAmount];
          amount3 = [totalAmount amount];
          if (([amount3 pk_isZeroNumber] & 1) == 0)
          {
            if (v9 && ([v9 orderedSpendingCategories], v35 = objc_claimAutoreleasedReturnValue(), v62[0] = MEMORY[0x1E69E9820], v62[1] = 3221225472, v62[2] = __76__PKSpendingInsightsFetcher__deriveTrendsFromSummary_previousSummary_error___block_invoke_2, v62[3] = &__block_descriptor_40_e35_B16__0__PKPaymentTransactionGroup_8l, v62[4] = merchantCategory, objc_msgSend(v35, "pk_firstObjectPassingTest:", v62), currency2 = objc_claimAutoreleasedReturnValue(), v35, currency2))
            {
              totalAmount2 = [currency2 totalAmount];
              amount4 = [totalAmount2 amount];
            }

            else
            {
              amount4 = [MEMORY[0x1E696AB90] zero];
              currency2 = [totalAmount currency];
              totalAmount2 = PKCurrencyAmountCreate(amount4, currency2, 0);
            }

            v39 = [amount3 decimalNumberBySubtracting:amount4];
            amount5 = [totalAmount2 amount];
            pk_isZeroNumber = [amount5 pk_isZeroNumber];

            if ((pk_isZeroNumber & 1) == 0)
            {
              [v39 doubleValue];
              v43 = v42;
              [(NSDecimalNumber *)amount4 doubleValue];
              v45 = fabs(v43 / v44 * 100.0);
              v46 = [totalAmount currencyAmountBySubtractingCurrencyAmount:totalAmount2];
              absoluteValue2 = [v46 absoluteValue];

              v48 = [[PKSpendingInsightTrend alloc] initWithType:2 direction:__76__PKSpendingInsightsFetcher__deriveTrendsFromSummary_previousSummary_error___block_invoke(v39 percentageChange:v45) amountChange:absoluteValue2 merchantCategory:merchantCategory totalSpending:totalAmount previousTotalSpending:totalAmount2, v45];
              [v58 addObject:v48];
            }

            v29 = v59;
            v9 = v60;
          }
        }

        v28 = [obj countByEnumeratingWithState:&v63 objects:v67 count:16];
      }

      while (v28);
    }

    v20 = [[PKSpendingInsightTrendCollection alloc] initWithOverallTrend:v50 categoryTrends:v58];
    totalSpending = v56;
    summaryCopy = v57;
    amount = v54;
    totalSpending3 = v55;
    v18 = v52;
    amount2 = v53;
    goto LABEL_31;
  }

  summaryType = [previousSummaryCopy summaryType];
  if (summaryType == [summaryCopy summaryType])
  {
    totalSpending = [summaryCopy totalSpending];
    totalSpending3 = [v9 totalSpending];
    goto LABEL_5;
  }

  v20 = 0;
  if (error)
  {
    *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKSpendingInsightErrorDomain" code:4 userInfo:0];
  }

LABEL_32:

  return v20;
}

uint64_t __76__PKSpendingInsightsFetcher__deriveTrendsFromSummary_previousSummary_error___block_invoke(void *a1, double a2)
{
  v3 = a1;
  +[PKSpendingInsightTrend percentageChangeSteadyThreshold];
  v5 = v4;
  v6 = [v3 pk_isZeroNumber];
  v7 = 1;
  if (a2 != 0.0 && (v6 & 1) == 0)
  {
    if ([v3 pk_isNegativeNumber] && v5 > a2)
    {
      v7 = 3;
    }

    else if ([v3 pk_isNegativeNumber])
    {
      v7 = 5;
    }

    else if (([v3 pk_isPositiveNumber] & (v5 > a2)) != 0)
    {
      v7 = 2;
    }

    else
    {
      v7 = 4;
    }
  }

  return v7;
}

@end