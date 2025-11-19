@interface PKSpendingInsightsFetcher
- (BOOL)_validateTrends:(id)a3 againstSummary:(id)a4;
- (PKSpendingInsightsFetcher)init;
- (id)_deriveTrendsFromSummary:(id)a3 previousSummary:(id)a4 error:(id *)a5;
- (void)_getTrendsFromFinHealthForSummary:(id)a3 previousSummary:(id)a4 completion:(id)a5;
- (void)fetchInsightTrendsForSummary:(id)a3 previousSummary:(id)a4 completion:(id)a5;
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

- (void)fetchInsightTrendsForSummary:(id)a3 previousSummary:(id)a4 completion:(id)a5
{
  if (self->_useFinHealth)
  {
    v8 = a5;
    [(PKSpendingInsightsFetcher *)self _getTrendsFromFinHealthForSummary:a3 previousSummary:a4 completion:v8];
  }

  else
  {
    v11 = 0;
    v9 = a5;
    v10 = [(PKSpendingInsightsFetcher *)self _deriveTrendsFromSummary:a3 previousSummary:a4 error:&v11];
    v8 = v11;
    v9[2](v9, v10, v8);
  }
}

- (void)_getTrendsFromFinHealthForSummary:(id)a3 previousSummary:(id)a4 completion:(id)a5
{
  v29[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v23 = a4;
  v9 = a5;
  if (self->_foundFHInsightsDiscrepancy)
  {
    v10 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKSpendingInsightErrorDomain" code:3 userInfo:0];
    v9[2](v9, 0, v10);
  }

  else
  {
    v11 = [v8 summaryType];
    if (v11 == 1)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    v13 = [MEMORY[0x1E695DF00] date];
    v22 = [v8 startDate];
    v14 = [v8 endDate];
    if ([v14 compare:v13] == -1)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    v16 = v15;

    objc_initWeak(&location, self);
    searchSuggestionController = self->_searchSuggestionController;
    v18 = _MergedGlobals_182();
    v29[0] = v18;
    v19 = off_1ED6D11A0();
    v29[1] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    if (v11 == 2)
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
    v25 = v8;
    objc_copyWeak(&v27, &location);
    v26 = v9;
    [(FHSearchSuggestionController *)searchSuggestionController allFeatureInsightsWithStartDate:v22 endDate:v16 insightTypeItems:v20 trendWindow:v21 completion:v24];

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

- (BOOL)_validateTrends:(id)a3 againstSummary:(id)a4
{
  v74 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__PKSpendingInsightsFetcher__validateTrends_againstSummary___block_invoke_2;
  aBlock[3] = &unk_1E79E4A10;
  aBlock[4] = self;
  v8 = v7;
  v62 = v8;
  v9 = _Block_copy(aBlock);
  v10 = [v6 overallSpendingTrend];
  v11 = [v10 totalSpending];
  v12 = [v11 amount];

  v13 = [v8 totalSpending];
  v14 = [v13 amount];

  v60 = 0;
  LOBYTE(v13) = __60__PKSpendingInsightsFetcher__validateTrends_againstSummary___block_invoke(v12, v14, &v60);
  v15 = v60;
  if (v13)
  {
    v16 = [v6 overallSpendingTrend];
    v17 = [v16 previousTotalSpending];
    v18 = [v17 amount];

    v19 = [v8 previousTotalSpending];
    v20 = [v19 amount];

    v50 = v20;
    if (([v8 isCurrentPeriod] & 1) == 0)
    {
      v59 = v15;
      v21 = __60__PKSpendingInsightsFetcher__validateTrends_againstSummary___block_invoke(v18, v20, &v59);
      v22 = v59;

      if (!v21)
      {
        v49 = v9;
        v41 = PKLogFacilityTypeGetObject(0xFuLL);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = [v8 startDate];
          [v8 endDate];
          v44 = v43 = v18;
          *buf = 138544130;
          v64 = v42;
          v65 = 2114;
          v66 = v44;
          v67 = 2112;
          v68 = v43;
          v69 = 2112;
          v70 = v50;
          _os_log_impl(&dword_1AD337000, v41, OS_LOG_TYPE_DEFAULT, "Rejecting trends for dates [%{public}@ to %{public}@]\nbecause previous spending %@\ndoes not match summary previous spending %@. No further insights will be generated for this session.", buf, 0x2Au);

          v18 = v43;
        }

        v9 = v49;
        v49[2](v49, v22);
        v33 = 0;
        v15 = v22;
        v20 = v50;
LABEL_26:

        goto LABEL_27;
      }

      v15 = v22;
      v20 = v50;
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
      v46 = v18;
      v47 = v8;
      v48 = v9;
      v52 = *v56;
      v53 = v6;
      while (2)
      {
        v25 = 0;
        v26 = v15;
        v27 = v14;
        v28 = v12;
        do
        {
          if (*v56 != v52)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v55 + 1) + 8 * v25);
          v30 = [v53 spendingTrendForMerchantCategory:{objc_msgSend(v29, "merchantCategory", v46)}];
          v31 = [v30 totalSpending];
          v12 = [v31 amount];

          v32 = [v29 totalAmount];
          v14 = [v32 amount];

          v54 = v26;
          LOBYTE(v32) = __60__PKSpendingInsightsFetcher__validateTrends_againstSummary___block_invoke(v12, v14, &v54);
          v15 = v54;

          if ((v32 & 1) == 0)
          {
            v37 = PKLogFacilityTypeGetObject(0xFuLL);
            v8 = v47;
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              v38 = [v47 startDate];
              v39 = [v47 endDate];
              v40 = PKMerchantCategoryToString([v29 merchantCategory]);
              *buf = 138544386;
              v64 = v38;
              v65 = 2114;
              v66 = v39;
              v67 = 2112;
              v68 = v40;
              v69 = 2112;
              v70 = v12;
              v71 = 2112;
              v72 = v14;
              _os_log_impl(&dword_1AD337000, v37, OS_LOG_TYPE_DEFAULT, "Rejecting trends for dates [%{public}@ to %{public}@]\nbecause spending for merchant category %@ %@\ndoes not match summary spending %@. No further insights will be generated for this session.", buf, 0x34u);
            }

            v9 = v48;
            v48[2](v48, v15);
            v33 = 0;
            v6 = v53;
            goto LABEL_20;
          }

          ++v25;
          v26 = v15;
          v27 = v14;
          v28 = v12;
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
      v6 = v53;
      v8 = v47;
      v9 = v48;
LABEL_20:
      v18 = v46;
      v20 = v50;
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
    v35 = [v8 startDate];
    v36 = [v8 endDate];
    *buf = 138544130;
    v64 = v35;
    v65 = 2114;
    v66 = v36;
    v67 = 2112;
    v68 = v12;
    v69 = 2112;
    v70 = v14;
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

- (id)_deriveTrendsFromSummary:(id)a3 previousSummary:(id)a4 error:(id *)a5
{
  v68 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v8)
  {
    v11 = [v7 totalSpending];
    v13 = [MEMORY[0x1E696AB90] zero];
    v14 = [v7 totalSpending];
    v15 = [v14 currency];
    v12 = PKCurrencyAmountCreate(v13, v15, 0);

LABEL_5:
    v16 = [v11 amount];
    v17 = [v12 amount];
    v18 = [v16 decimalNumberBySubtracting:v17];
    if ([v17 pk_isZeroNumber])
    {
      v19 = 0.0;
      if (([v16 pk_isZeroNumber] & 1) == 0)
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
      [v17 doubleValue];
      v19 = fabs(v22 / v23 * 100.0);
    }

    v53 = v17;
    v54 = v16;
    v52 = v18;
    if (v16 && ([v16 pk_isZeroNumber] & 1) == 0)
    {
      v24 = __76__PKSpendingInsightsFetcher__deriveTrendsFromSummary_previousSummary_error___block_invoke(v18, v19);
    }

    else
    {
      v24 = 0;
    }

    v25 = [v11 currencyAmountBySubtractingCurrencyAmount:v12];
    v26 = [v25 absoluteValue];

    v51 = v26;
    v55 = v12;
    v56 = v11;
    v50 = [[PKSpendingInsightTrend alloc] initWithType:1 direction:v24 percentageChange:v26 amountChange:0 merchantCategory:v11 totalSpending:v12 previousTotalSpending:v19];
    v57 = v7;
    v58 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    obj = [v7 orderedSpendingCategories];
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
          v32 = [v31 merchantCategory];
          v33 = [v31 totalAmount];
          v34 = [v33 amount];
          if (([v34 pk_isZeroNumber] & 1) == 0)
          {
            if (v9 && ([v9 orderedSpendingCategories], v35 = objc_claimAutoreleasedReturnValue(), v62[0] = MEMORY[0x1E69E9820], v62[1] = 3221225472, v62[2] = __76__PKSpendingInsightsFetcher__deriveTrendsFromSummary_previousSummary_error___block_invoke_2, v62[3] = &__block_descriptor_40_e35_B16__0__PKPaymentTransactionGroup_8l, v62[4] = v32, objc_msgSend(v35, "pk_firstObjectPassingTest:", v62), v36 = objc_claimAutoreleasedReturnValue(), v35, v36))
            {
              v37 = [v36 totalAmount];
              v38 = [v37 amount];
            }

            else
            {
              v38 = [MEMORY[0x1E696AB90] zero];
              v36 = [v33 currency];
              v37 = PKCurrencyAmountCreate(v38, v36, 0);
            }

            v39 = [v34 decimalNumberBySubtracting:v38];
            v40 = [v37 amount];
            v41 = [v40 pk_isZeroNumber];

            if ((v41 & 1) == 0)
            {
              [v39 doubleValue];
              v43 = v42;
              [(NSDecimalNumber *)v38 doubleValue];
              v45 = fabs(v43 / v44 * 100.0);
              v46 = [v33 currencyAmountBySubtractingCurrencyAmount:v37];
              v47 = [v46 absoluteValue];

              v48 = [[PKSpendingInsightTrend alloc] initWithType:2 direction:__76__PKSpendingInsightsFetcher__deriveTrendsFromSummary_previousSummary_error___block_invoke(v39 percentageChange:v45) amountChange:v47 merchantCategory:v32 totalSpending:v33 previousTotalSpending:v37, v45];
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
    v11 = v56;
    v7 = v57;
    v16 = v54;
    v12 = v55;
    v18 = v52;
    v17 = v53;
    goto LABEL_31;
  }

  v10 = [v8 summaryType];
  if (v10 == [v7 summaryType])
  {
    v11 = [v7 totalSpending];
    v12 = [v9 totalSpending];
    goto LABEL_5;
  }

  v20 = 0;
  if (a5)
  {
    *a5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKSpendingInsightErrorDomain" code:4 userInfo:0];
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