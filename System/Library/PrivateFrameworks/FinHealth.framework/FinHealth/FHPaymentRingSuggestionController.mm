@interface FHPaymentRingSuggestionController
- (BOOL)_allMandatoryValuesAreSameAmount:(id)amount;
- (BOOL)_fhEqualObjects:(id)objects obj2:(id)obj2;
- (FHPaymentRingSuggestionController)init;
- (id)_calculateThresholdForLastPaymentCategory:(unint64_t)category statementBalance:(id)balance lastPaymentCategoryAmount:(id)amount previousStatementPaymentsSum:(id)sum statementPurchasesSum:(id)purchasesSum;
- (id)_filterSuggestions:(id)suggestions belowThreshold:(id)threshold;
- (id)_suggestedAmountsForPayOffDateForStatementBalance:(id)balance statementPurchasesSum:(id)sum creditUtilization:(id)utilization lastPaymentCategory:(unint64_t)category;
- (id)_zerothOrFirstMonthPaymentRingSuggestionsForList:(id)list;
- (id)generatePaymentRingSuggestion:(id)suggestion;
- (id)generatePaymentRingSuggestionsFromConvertedObjects:(id)objects previousStatementPaymentsSum:(id)sum currentStatementPaymentsSum:(id)paymentsSum statementPurchasesSum:(id)purchasesSum merchantCategoryTransactionSums:(id)sums billPaymentSelectedSuggestedAmountData:(id)data isMonthZero:(BOOL)zero isMonthOne:(BOOL)self0;
- (void)_minimumMerchcantCategoriesAboveMinimumAmount:(id)amount minMerchantCategory1:(int64_t *)category1 minMerchantCategory2:(int64_t *)category2 minMerchantCategorySum1:(id *)sum1 minMerchantCategorySum2:(id *)sum2 merchantCategoryTransactionSums:(id)sums;
- (void)recordPaymentRingAction:(id)action;
@end

@implementation FHPaymentRingSuggestionController

- (FHPaymentRingSuggestionController)init
{
  v6.receiver = self;
  v6.super_class = FHPaymentRingSuggestionController;
  v2 = [(FHPaymentRingSuggestionController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(FHSearchSuggestionController);
    searchController = v2->_searchController;
    v2->_searchController = v3;
  }

  return v2;
}

- (id)generatePaymentRingSuggestionsFromConvertedObjects:(id)objects previousStatementPaymentsSum:(id)sum currentStatementPaymentsSum:(id)paymentsSum statementPurchasesSum:(id)purchasesSum merchantCategoryTransactionSums:(id)sums billPaymentSelectedSuggestedAmountData:(id)data isMonthZero:(BOOL)zero isMonthOne:(BOOL)self0
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = RequestFromPKAccountSummary(objects, sum, paymentsSum, purchasesSum, sums, data, zero, one);
  v12 = [(FHPaymentRingSuggestionController *)self generatePaymentRingSuggestion:v11];
  v13 = ResponseToPKBillPaymentSuggestion(v12);
  v14 = *MEMORY[0x277D087C0];
  v15 = FinHealthLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = [v13 description];
    v19 = 136315394;
    v20 = "[FHPaymentRingSuggestionController generatePaymentRingSuggestionsFromConvertedObjects:previousStatementPaymentsSum:currentStatementPaymentsSum:statementPurchasesSum:merchantCategoryTransactionSums:billPaymentSelectedSuggestedAmountData:isMonthZero:isMonthOne:]";
    v21 = 2112;
    v22 = v16;
    _os_log_impl(&dword_24ABD8000, v15, OS_LOG_TYPE_DEBUG, "%s FinHealth final suggestions: %@", &v19, 0x16u);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)generatePaymentRingSuggestion:(id)suggestion
{
  v226 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  currentStatement = [suggestionCopy currentStatement];
  remainingMinimumPayment = [currentStatement remainingMinimumPayment];

  currentStatement2 = [suggestionCopy currentStatement];
  remainingStatementBalance = [currentStatement2 remainingStatementBalance];

  currentStatement3 = [suggestionCopy currentStatement];
  currentBalance = [currentStatement3 currentBalance];

  currentStatement4 = [suggestionCopy currentStatement];
  statementBalance = [currentStatement4 statementBalance];

  currentStatement5 = [suggestionCopy currentStatement];
  creditLimit = [currentStatement5 creditLimit];

  currentStatement6 = [suggestionCopy currentStatement];
  openingDate = [currentStatement6 openingDate];

  currentStatement7 = [suggestionCopy currentStatement];
  closingDate = [currentStatement7 closingDate];

  currentStatement8 = [suggestionCopy currentStatement];
  isMonthZero = [currentStatement8 isMonthZero];

  currentStatement9 = [suggestionCopy currentStatement];
  isMonthOne = [currentStatement9 isMonthOne];

  currentStatement10 = [suggestionCopy currentStatement];
  isMonthOfMerge = [currentStatement10 isMonthOfMerge];

  paymentDetails = [suggestionCopy paymentDetails];
  previousSelectedSuggestion = self->_previousSelectedSuggestion;
  self->_previousSelectedSuggestion = paymentDetails;

  v204 = 0;
  v205 = &v204;
  v206 = 0x3032000000;
  v207 = __Block_byref_object_copy_;
  v208 = __Block_byref_object_dispose_;
  v209 = objc_opt_new();
  if (remainingStatementBalance)
  {
    zero = [MEMORY[0x277CCA980] zero];
    v19 = [remainingStatementBalance compare:zero] == 1;
  }

  else
  {
    v19 = 0;
  }

  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  zero2 = [MEMORY[0x277CCA980] zero];
  if (statementBalance)
  {
    if (creditLimit)
    {
      zero3 = [MEMORY[0x277CCA980] zero];
      v22 = [creditLimit isEqualToNumber:zero3];

      if ((v22 & 1) == 0)
      {
        v23 = [statementBalance decimalNumberByDividingBy:creditLimit];

        zero2 = v23;
      }
    }
  }

  if (isMonthOfMerge)
  {
    currentStatement11 = [suggestionCopy currentStatement];
    combinedBalance = [currentStatement11 combinedBalance];
    v26 = combinedBalance == 0;

    if (!v26)
    {
      v27 = objc_alloc(MEMORY[0x277D08818]);
      currentStatement12 = [suggestionCopy currentStatement];
      combinedBalance2 = [currentStatement12 combinedBalance];
      v30 = [v27 initWithAmount:combinedBalance2 category:31];

      [v20 addObject:v30];
      goto LABEL_18;
    }
  }

  if ((isMonthZero | isMonthOne))
  {
    goto LABEL_14;
  }

  previousStatementPaymentsSum = [suggestionCopy previousStatementPaymentsSum];
  if (!previousStatementPaymentsSum)
  {
    goto LABEL_14;
  }

  previousStatementPaymentsSum2 = [suggestionCopy previousStatementPaymentsSum];
  zero4 = [MEMORY[0x277CCA980] zero];
  v34 = [(FHPaymentRingSuggestionController *)self _fhEqualObjects:previousStatementPaymentsSum2 obj2:zero4];

  if (v34)
  {
LABEL_14:
    v35 = *MEMORY[0x277D087C0];
    v36 = FinHealthLogObject();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v37 = [suggestionCopy description];
      *buf = 136315394;
      *&buf[4] = "[FHPaymentRingSuggestionController generatePaymentRingSuggestion:]";
      *&buf[12] = 2112;
      *&buf[14] = v37;
      _os_log_impl(&dword_24ABD8000, v36, OS_LOG_TYPE_DEBUG, "%s Request %@", buf, 0x16u);
    }

    v38 = [(FHPaymentRingSuggestionController *)self _zerothOrFirstMonthPaymentRingSuggestionsForList:suggestionCopy];
    [v20 addObjectsFromArray:v38];

    goto LABEL_17;
  }

  if ([(FHPaymentRingSuggestionController *)self _allMandatoryValuesAreSameAmount:suggestionCopy])
  {
LABEL_17:
    v30 = 0;
    goto LABEL_18;
  }

  v200 = 0;
  v201 = &v200;
  v202 = 0x2020000000;
  v203 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v223 = __Block_byref_object_copy_;
  v224 = __Block_byref_object_dispose_;
  v225 = 0;
  if (v19)
  {
    v42 = self->_previousSelectedSuggestion;
    v195[0] = MEMORY[0x277D85DD0];
    v195[1] = 3221225472;
    v195[2] = __67__FHPaymentRingSuggestionController_generatePaymentRingSuggestion___block_invoke;
    v195[3] = &unk_278FFB4F8;
    v198 = &v200;
    v195[4] = self;
    v196 = suggestionCopy;
    v197 = remainingStatementBalance;
    v199 = buf;
    [(NSArray *)v42 enumerateObjectsUsingBlock:v195];

    v43 = v201[3] == 13;
  }

  else
  {
    v43 = 0;
    v203 = 18;
  }

  self->_isOnPlanCompletion = v43;
  previousStatementPaymentsSum3 = [suggestionCopy previousStatementPaymentsSum];
  v45 = 0x277CCA000;
  if (previousStatementPaymentsSum3)
  {
    isOnPaymentPlan = self->_isOnPaymentPlan;

    if (isOnPaymentPlan)
    {
      v47 = 0;
      v45 = 0x277CCA000;
    }

    else
    {
      v48 = objc_alloc(MEMORY[0x277D08818]);
      previousStatementPaymentsSum4 = [suggestionCopy previousStatementPaymentsSum];
      v47 = [v48 initWithAmount:previousStatementPaymentsSum4 category:2];

      [v20 addObject:v47];
      v45 = 0x277CCA000uLL;
    }
  }

  else
  {
    v47 = 0;
  }

  statementPurchasesSum = [suggestionCopy statementPurchasesSum];
  if (!statementPurchasesSum)
  {
    goto LABEL_32;
  }

  statementPurchasesSum2 = [suggestionCopy statementPurchasesSum];
  zero5 = [*(v45 + 2432) zero];
  v53 = [(FHPaymentRingSuggestionController *)self _fhEqualObjects:statementPurchasesSum2 obj2:zero5];

  if (!v53)
  {
    statementPurchasesSum3 = [suggestionCopy statementPurchasesSum];
    v54 = [objc_alloc(MEMORY[0x277D08818]) initWithAmount:statementPurchasesSum3 category:5];

    [v20 addObject:v54];
  }

  else
  {
LABEL_32:
    v54 = v47;
  }

  v193 = 0;
  v194 = 0;
  zero6 = [*(v45 + 2432) zero];
  if ([remainingMinimumPayment compare:zero6] != 1)
  {

LABEL_40:
    zero7 = [MEMORY[0x277CCA980] zero];
    if ([remainingStatementBalance compare:zero7] == 1)
    {
      v61 = [remainingStatementBalance compare:currentBalance] == -1;

      v59 = remainingStatementBalance;
      if (v61)
      {
        goto LABEL_45;
      }
    }

    else
    {
    }

    v59 = currentBalance;
    goto LABEL_45;
  }

  v57 = [remainingMinimumPayment compare:remainingStatementBalance] == -1;

  if (!v57)
  {
    goto LABEL_40;
  }

  v58 = [remainingMinimumPayment compare:currentBalance];
  v59 = remainingMinimumPayment;
  if (v58 != -1)
  {
    v59 = currentBalance;
  }

LABEL_45:
  v154 = v59;
  v155 = *MEMORY[0x277D087C0];
  v62 = FinHealthLogObject();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
  {
    *v214 = 134218754;
    v215 = v194;
    v216 = 2048;
    v217 = v193;
    v218 = 2112;
    v219 = 0;
    v220 = 2112;
    v221 = 0;
    _os_log_impl(&dword_24ABD8000, v62, OS_LOG_TYPE_DEBUG, "Printing _merchantCategoryTransactionSums %lu, %lu, %@, %@", v214, 0x2Au);
  }

  v191 = 0;
  v192 = 0;
  merchantCategoryTransactionSums = [suggestionCopy merchantCategoryTransactionSums];
  [(FHPaymentRingSuggestionController *)self _minimumMerchcantCategoriesAboveMinimumAmount:v154 minMerchantCategory1:&v194 minMerchantCategory2:&v193 minMerchantCategorySum1:&v192 minMerchantCategorySum2:&v191 merchantCategoryTransactionSums:merchantCategoryTransactionSums];
  v158 = v192;
  v157 = v191;

  previousStatementPaymentsSum5 = [suggestionCopy previousStatementPaymentsSum];

  if (previousStatementPaymentsSum5)
  {
    if (v158)
    {
      previousStatementPaymentsSum6 = [suggestionCopy previousStatementPaymentsSum];
      v66 = [v158 decimalNumberByAdding:previousStatementPaymentsSum6];

      statementPurchasesSum4 = [suggestionCopy statementPurchasesSum];
      v68 = [v66 compare:statementPurchasesSum4] == -1;

      if (v68)
      {
        v69 = [objc_alloc(MEMORY[0x277D08818]) initWithAmount:v66 category:3];

        [v69 setMerchantCategory:v194];
        [v20 addObject:v69];
      }

      else
      {
        v69 = v54;
      }
    }

    else
    {
      v69 = v54;
    }

    if (v157)
    {
      previousStatementPaymentsSum7 = [suggestionCopy previousStatementPaymentsSum];
      v71 = [v157 decimalNumberByAdding:previousStatementPaymentsSum7];

      statementPurchasesSum5 = [suggestionCopy statementPurchasesSum];
      v73 = [v71 compare:statementPurchasesSum5] == -1;

      if (v73)
      {
        v54 = [objc_alloc(MEMORY[0x277D08818]) initWithAmount:v71 category:4];

        [v54 setMerchantCategory:v193];
        [v20 addObject:v54];
      }

      else
      {
        v54 = v69;
      }
    }

    else
    {
      v54 = v69;
    }
  }

  if (statementBalance)
  {
    statementPurchasesSum6 = [suggestionCopy statementPurchasesSum];
    v75 = !statementPurchasesSum6 || zero2 == 0;
    v76 = !v75;

    if (v76)
    {
      statementPurchasesSum7 = [suggestionCopy statementPurchasesSum];
      v78 = [(FHPaymentRingSuggestionController *)self _suggestedAmountsForPayOffDateForStatementBalance:statementBalance statementPurchasesSum:statementPurchasesSum7 creditUtilization:zero2 lastPaymentCategory:v201[3]];

      [v20 addObject:v78];
      v54 = v78;
    }
  }

  v79 = dispatch_semaphore_create(0);
  searchController = self->_searchController;
  v188[0] = MEMORY[0x277D85DD0];
  v188[1] = 3221225472;
  v188[2] = __67__FHPaymentRingSuggestionController_generatePaymentRingSuggestion___block_invoke_89;
  v188[3] = &unk_278FFB520;
  v190 = &v204;
  v81 = v79;
  v189 = v81;
  [(FHSearchSuggestionController *)searchController paymentRingSuggestionsFromSearchFeatures:@"Payment Ring" startDate:openingDate endDate:closingDate completion:v188];
  v82 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v81, v82);
  v186 = 0u;
  v187 = 0u;
  v184 = 0u;
  v185 = 0u;
  v83 = v205[5];
  v84 = [v83 countByEnumeratingWithState:&v184 objects:v213 count:16];
  v153 = v81;
  if (v84)
  {
    v85 = *v185;
    do
    {
      for (i = 0; i != v84; ++i)
      {
        if (*v185 != v85)
        {
          objc_enumerationMutation(v83);
        }

        v87 = *(*(&v184 + 1) + 8 * i);
        featureRank = [v87 featureRank];
        featureLabel = [v87 featureLabel];
        v90 = FHPaymentRingSuggestionCategoryFromString();

        if (v90 != 32)
        {
          v91 = [objc_alloc(MEMORY[0x277D08818]) initWithAmount:featureRank category:v90];

          [v20 addObject:v91];
          v54 = v91;
        }
      }

      v84 = [v83 countByEnumeratingWithState:&v184 objects:v213 count:16];
    }

    while (v84);
  }

  if (self->_isOnPaymentPlan)
  {
    paymentAmountCategory = [*(*&buf[8] + 40) paymentAmountCategory];
    v93 = 0x277CCA000;
    v94 = paymentAmountCategory;
  }

  else
  {
    v94 = v201[3];
    v93 = 0x277CCA000uLL;
  }

  zero8 = [*(v93 + 2432) zero];
  v182 = 0u;
  v183 = 0u;
  v180 = 0u;
  v181 = 0u;
  paymentDetails2 = [suggestionCopy paymentDetails];
  v96 = [paymentDetails2 countByEnumeratingWithState:&v180 objects:v212 count:16];
  if (v96)
  {
    v97 = *v181;
    while (2)
    {
      for (j = 0; j != v96; ++j)
      {
        if (*v181 != v97)
        {
          objc_enumerationMutation(paymentDetails2);
        }

        v99 = *(*(&v180 + 1) + 8 * j);
        paymentAmountCategory2 = [v99 paymentAmountCategory];
        if (paymentAmountCategory2 == v201[3])
        {
          transactionAmount = [v99 transactionAmount];

          zero8 = transactionAmount;
          goto LABEL_91;
        }
      }

      v96 = [paymentDetails2 countByEnumeratingWithState:&v180 objects:v212 count:16];
      if (v96)
      {
        continue;
      }

      break;
    }
  }

LABEL_91:

  previousStatementPaymentsSum8 = [suggestionCopy previousStatementPaymentsSum];
  statementPurchasesSum8 = [suggestionCopy statementPurchasesSum];
  v159 = [(FHPaymentRingSuggestionController *)self _calculateThresholdForLastPaymentCategory:v94 statementBalance:statementBalance lastPaymentCategoryAmount:zero8 previousStatementPaymentsSum:previousStatementPaymentsSum8 statementPurchasesSum:statementPurchasesSum8];

  v104 = FinHealthLogObject();
  if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
  {
    *v214 = 138412290;
    v215 = v159;
    _os_log_impl(&dword_24ABD8000, v104, OS_LOG_TYPE_DEBUG, "Calculated Threshold value : %@", v214, 0xCu);
  }

  v105 = [(FHPaymentRingSuggestionController *)self _filterSuggestions:v20 belowThreshold:v159];

  v106 = FinHealthLogObject();
  if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
  {
    previousStatementPaymentsSum8 = [v105 description];
    *v214 = 138412290;
    v215 = previousStatementPaymentsSum8;
    _os_log_impl(&dword_24ABD8000, v106, OS_LOG_TYPE_DEBUG, "FinHealth Suggestions after threshold value : %@", v214, 0xCu);
  }

  if (!statementBalance)
  {
    goto LABEL_108;
  }

  statementPurchasesSum9 = [suggestionCopy statementPurchasesSum];
  if (statementPurchasesSum9)
  {
    statementPurchasesSum10 = [suggestionCopy statementPurchasesSum];
    v109 = [statementBalance compare:statementPurchasesSum10];
    if (!v109 || ([suggestionCopy statementPurchasesSum], previousStatementPaymentsSum8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(statementBalance, "compare:", previousStatementPaymentsSum8) == -1))
    {
      v110 = [creditLimit compare:statementBalance] == 1;
      if (v109)
      {

        if (!v110)
        {
          goto LABEL_106;
        }
      }

      else
      {

        if (!v110)
        {
          goto LABEL_106;
        }
      }

      v111 = [MEMORY[0x277CCA980] decimalNumberWithString:@"2"];
      v112 = [statementBalance decimalNumberByDividingBy:v111];
      v113 = [statementBalance decimalNumberBySubtracting:v112];
      v114 = [MEMORY[0x277CCA980] decimalNumberWithString:@"2"];
      v115 = [statementBalance decimalNumberByDividingBy:v114];
      v116 = [creditLimit decimalNumberBySubtracting:v115];
      v117 = [v113 decimalNumberByDividingBy:v116];

      v118 = [MEMORY[0x277CCA980] decimalNumberWithString:@"0.33"];
      v119 = [v117 compare:v118] == -1;

      if (v119)
      {
        v152 = objc_alloc(MEMORY[0x277D08818]);
        v123 = [MEMORY[0x277CCA980] decimalNumberWithString:@"2"];
        v124 = [statementBalance decimalNumberByDividingBy:v123];
        v125 = [statementBalance decimalNumberBySubtracting:v124];
        v167 = [MEMORY[0x277CCA980] decimalNumberWithString:@"3"];
        v156 = [v125 decimalNumberByDividingBy:v167];
        v126 = [MEMORY[0x277CCA980] decimalNumberWithString:@"2"];
        v127 = [statementBalance decimalNumberByDividingBy:v126];
        v128 = [v156 decimalNumberByAdding:v127];
        v129 = [v152 initWithAmount:v128 category:23];
      }

      else
      {
        v120 = [MEMORY[0x277CCA980] decimalNumberWithString:@"0.67"];
        v121 = [v117 compare:v120] == -1;

        v122 = objc_alloc(MEMORY[0x277D08818]);
        v123 = [MEMORY[0x277CCA980] decimalNumberWithString:@"2"];
        v124 = [statementBalance decimalNumberByDividingBy:v123];
        v125 = [statementBalance decimalNumberBySubtracting:v124];
        if (v121)
        {
          v167 = [MEMORY[0x277CCA980] decimalNumberWithString:@"6"];
          v156 = [v125 decimalNumberByDividingBy:v167];
          v126 = [MEMORY[0x277CCA980] decimalNumberWithString:@"2"];
          v127 = [statementBalance decimalNumberByDividingBy:v126];
          v128 = [v156 decimalNumberByAdding:v127];
          v129 = [v122 initWithAmount:v128 category:24];
        }

        else
        {
          v167 = [MEMORY[0x277CCA980] decimalNumberWithString:@"9"];
          v156 = [v125 decimalNumberByDividingBy:v167];
          v126 = [MEMORY[0x277CCA980] decimalNumberWithString:@"2"];
          v127 = [statementBalance decimalNumberByDividingBy:v126];
          v128 = [v156 decimalNumberByAdding:v127];
          v129 = [v122 initWithAmount:v128 category:25];
        }
      }

      v30 = v129;

      [v105 addObject:v30];
      goto LABEL_109;
    }
  }

LABEL_106:
  if (remainingMinimumPayment && ![(FHPaymentRingSuggestionController *)self _categoryIsPaymentPlan:v201[3]])
  {
    v148 = objc_alloc(MEMORY[0x277D08818]);
    v149 = [statementBalance decimalNumberByAdding:remainingMinimumPayment];
    v150 = [MEMORY[0x277CCA980] decimalNumberWithString:@"2"];
    v151 = [v149 decimalNumberByDividingBy:v150];
    v30 = [v148 initWithAmount:v151 category:29];

    [v105 addObject:v30];
    goto LABEL_109;
  }

LABEL_108:
  v30 = v54;
LABEL_109:
  v178 = 0u;
  v179 = 0u;
  v176 = 0u;
  v177 = 0u;
  v130 = v205[5];
  v131 = [v130 countByEnumeratingWithState:&v176 objects:v211 count:16];
  if (v131)
  {
    v132 = *v177;
    do
    {
      for (k = 0; k != v131; ++k)
      {
        if (*v177 != v132)
        {
          objc_enumerationMutation(v130);
        }

        v134 = *(*(&v176 + 1) + 8 * k);
        featureRank2 = [v134 featureRank];
        featureLabel2 = [v134 featureLabel];
        v137 = FHPaymentRingSuggestionCategoryFromString();

        if (v137 == 32)
        {
          v138 = [objc_alloc(MEMORY[0x277D08818]) initWithAmount:featureRank2 category:32];

          [v105 addObject:v138];
          v30 = v138;
        }
      }

      v131 = [v130 countByEnumeratingWithState:&v176 objects:v211 count:16];
    }

    while (v131);
  }

  currentStatementPaymentsSum = [suggestionCopy currentStatementPaymentsSum];

  if (currentStatementPaymentsSum)
  {
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v140 = v105;
    v141 = [v140 countByEnumeratingWithState:&v172 objects:v210 count:16];
    if (v141)
    {
      v142 = *v173;
      do
      {
        for (m = 0; m != v141; ++m)
        {
          if (*v173 != v142)
          {
            objc_enumerationMutation(v140);
          }

          v144 = *(*(&v172 + 1) + 8 * m);
          amount = [v144 amount];
          currentStatementPaymentsSum2 = [suggestionCopy currentStatementPaymentsSum];
          v147 = [amount decimalNumberBySubtracting:currentStatementPaymentsSum2];

          [v144 setAmount:v147];
        }

        v141 = [v140 countByEnumeratingWithState:&v172 objects:v210 count:16];
      }

      while (v141);
    }
  }

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v200, 8);
  v20 = v105;
LABEL_18:
  v39 = v20;

  _Block_object_dispose(&v204, 8);
  v40 = *MEMORY[0x277D85DE8];

  return v39;
}

void __67__FHPaymentRingSuggestionController_generatePaymentRingSuggestion___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  *(*(*(a1 + 56) + 8) + 24) = [v9 paymentAmountCategory];
  if ([*(a1 + 32) _categoryIsPaymentPlan:{objc_msgSend(v9, "paymentAmountCategory")}])
  {
    v7 = [*(a1 + 40) previousStatementPaymentsSum];
    v8 = [v7 compare:*(a1 + 48)];

    if (v8 == -1)
    {
      *(*(a1 + 32) + 9) = 1;
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

void __67__FHPaymentRingSuggestionController_generatePaymentRingSuggestion___block_invoke_89(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = a1;
  [*(*(*(a1 + 40) + 8) + 40) addObjectsFromArray:v3];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = *MEMORY[0x277D087C0];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = FinHealthLogObject();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v19 = "[FHPaymentRingSuggestionController generatePaymentRingSuggestion:]_block_invoke";
          v20 = 2112;
          v21 = v10;
          _os_log_impl(&dword_24ABD8000, v11, OS_LOG_TYPE_DEBUG, "[%s] FinHealth suggestion: %@", buf, 0x16u);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v6);
  }

  dispatch_semaphore_signal(*(v13 + 32));
  v12 = *MEMORY[0x277D85DE8];
}

- (void)recordPaymentRingAction:(id)action
{
  v4 = MEMORY[0x277CBEB38];
  actionCopy = action;
  v14 = objc_alloc_init(v4);
  v6 = [actionCopy objectForKey:*MEMORY[0x277D08770]];
  intValue = [v6 intValue];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:intValue + 200];
  [v14 setObject:v8 forKey:*MEMORY[0x277D08740]];

  v9 = [actionCopy objectForKey:*MEMORY[0x277D08760]];
  [v14 setObject:v9 forKey:*MEMORY[0x277D08748]];

  [v14 setObject:&unk_285E21B98 forKey:*MEMORY[0x277D08738]];
  v10 = [actionCopy objectForKey:*MEMORY[0x277D08758]];
  [v14 setObject:v10 forKey:*MEMORY[0x277D08720]];

  v11 = [actionCopy objectForKey:*MEMORY[0x277D08768]];

  [v14 setObject:v11 forKey:*MEMORY[0x277D08730]];
  searchController = self->_searchController;
  v13 = [v14 copy];
  [(FHSearchSuggestionController *)searchController recordUserInteraction:v13];
}

- (id)_zerothOrFirstMonthPaymentRingSuggestionsForList:(id)list
{
  v131 = *MEMORY[0x277D85DE8];
  listCopy = list;
  currentStatement = [listCopy currentStatement];
  creditLimit = [currentStatement creditLimit];
  v7 = creditLimit;
  if (creditLimit)
  {
    zero = creditLimit;
  }

  else
  {
    zero = [MEMORY[0x277CCA980] zero];
  }

  v101 = zero;

  currentStatement2 = [listCopy currentStatement];
  currentBalanceForMonthZero = [currentStatement2 currentBalanceForMonthZero];

  currentStatement3 = [listCopy currentStatement];
  remainingMinimumPayment = [currentStatement3 remainingMinimumPayment];
  v12 = remainingMinimumPayment;
  if (remainingMinimumPayment)
  {
    zero2 = remainingMinimumPayment;
  }

  else
  {
    zero2 = [MEMORY[0x277CCA980] zero];
  }

  v104 = zero2;
  v14 = v101;

  currentStatement4 = [listCopy currentStatement];
  remainingStatementBalance = [currentStatement4 remainingStatementBalance];
  v17 = remainingStatementBalance;
  if (remainingStatementBalance)
  {
    zero3 = remainingStatementBalance;
  }

  else
  {
    zero3 = [MEMORY[0x277CCA980] zero];
  }

  v103 = zero3;

  currentStatement5 = [listCopy currentStatement];
  minimumDue = [currentStatement5 minimumDue];
  v21 = minimumDue;
  if (minimumDue)
  {
    zero4 = minimumDue;
  }

  else
  {
    zero4 = [MEMORY[0x277CCA980] zero];
  }

  v105 = zero4;

  currentStatement6 = [listCopy currentStatement];
  statementBalance = [currentStatement6 statementBalance];
  v25 = statementBalance;
  if (statementBalance)
  {
    zero5 = statementBalance;
  }

  else
  {
    zero5 = [MEMORY[0x277CCA980] zero];
  }

  v106 = zero5;

  currentStatement7 = [listCopy currentStatement];
  isMonthZero = [currentStatement7 isMonthZero];

  currentStatement8 = [listCopy currentStatement];
  LODWORD(v30) = [currentStatement8 isMonthOne];

  v102 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v31 = *MEMORY[0x277D087C0];
  v32 = FinHealthLogObject();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138414082;
    *&buf[4] = v101;
    v117 = 2112;
    v118 = currentBalanceForMonthZero;
    v119 = 2112;
    v120 = v104;
    v121 = 2112;
    v122 = v103;
    v123 = 2112;
    v124 = v105;
    v125 = 2112;
    v126 = v106;
    v127 = 1024;
    v128 = isMonthZero;
    v129 = 1024;
    v130 = v30;
    _os_log_impl(&dword_24ABD8000, v32, OS_LOG_TYPE_DEBUG, "Month-zero values CL, CB, RMP, RSB, MD, SB, isMonthZero, isMonthOne, %@, %@, %@, %@, %@, %@, %d, %d", buf, 0x4Au);
  }

  zero6 = [MEMORY[0x277CCA980] zero];
  v34 = zero6;
  if (currentBalanceForMonthZero && v101)
  {
    v35 = v30;
    zero7 = [MEMORY[0x277CCA980] zero];
    v37 = [v101 isEqualToNumber:zero7];

    if (v37)
    {
      v38 = v34;
    }

    else
    {
      v39 = [currentBalanceForMonthZero decimalNumberByDividingBy:v101];

      v40 = FinHealthLogObject();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v39;
        _os_log_impl(&dword_24ABD8000, v40, OS_LOG_TYPE_DEBUG, "Logging creditUtilizationForMonthZero %@", buf, 0xCu);
      }

      v38 = v39;
    }

    LOBYTE(v30) = v35;
  }

  else
  {
    v38 = zero6;
  }

  zero8 = [MEMORY[0x277CCA980] zero];
  if (currentBalanceForMonthZero && v106)
  {
    v41 = v38;
    zero9 = [MEMORY[0x277CCA980] zero];
    if (([currentBalanceForMonthZero isEqualToNumber:zero9] & 1) == 0)
    {
      zero10 = [MEMORY[0x277CCA980] zero];
      v44 = [v101 isEqualToNumber:zero10];

      if (v44)
      {
LABEL_33:
        v38 = v41;
        goto LABEL_34;
      }

      [v106 decimalNumberByDividingBy:v101];
      zero8 = zero9 = zero8;
    }

    goto LABEL_33;
  }

LABEL_34:
  if ([(FHPaymentRingSuggestionController *)self _allMandatoryValuesAreSameAmount:listCopy])
  {
    goto LABEL_89;
  }

  *buf = 0;
  v113 = 0;
  v114 = 0;
  v112 = 0;
  merchantCategoryTransactionSums = [listCopy merchantCategoryTransactionSums];
  [(FHPaymentRingSuggestionController *)self _minimumMerchcantCategoriesAboveMinimumAmount:v104 minMerchantCategory1:buf minMerchantCategory2:&v114 minMerchantCategorySum1:&v113 minMerchantCategorySum2:&v112 merchantCategoryTransactionSums:merchantCategoryTransactionSums];
  v46 = v113;
  v98 = v112;

  v96 = v46;
  if (!v46)
  {
    v99 = 0;
    v48 = v102;
    goto LABEL_45;
  }

  v47 = [v46 decimalNumberByAdding:{v105, v46}];
  v48 = v102;
  if (isMonthZero)
  {
    goto LABEL_43;
  }

  if ((v30 & 1) != 0 || ([listCopy previousStatementPaymentsSum], (v49 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ([v47 compare:v103] != -1)
    {
      goto LABEL_42;
    }

LABEL_43:
    v50 = [objc_alloc(MEMORY[0x277D08818]) initWithAmount:v47 category:3];
    [v50 setMerchantCategory:*buf];
    v99 = v50;
    [v102 addObject:v50];
    goto LABEL_44;
  }

LABEL_42:
  v99 = 0;
LABEL_44:

LABEL_45:
  if (!v98)
  {
    goto LABEL_53;
  }

  v51 = [v98 decimalNumberByAdding:v105];
  if (isMonthZero)
  {
    goto LABEL_51;
  }

  if ((v30 & 1) != 0 || ([listCopy previousStatementPaymentsSum], (v52 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    currentStatement9 = [listCopy currentStatement];
    [currentStatement9 remainingStatementBalance];
    v30 = v54 = v30;
    v55 = [v51 compare:v30];

    LOBYTE(v30) = v54;
    v48 = v102;

    if (v55 != -1)
    {
      goto LABEL_52;
    }

LABEL_51:
    v56 = [objc_alloc(MEMORY[0x277D08818]) initWithAmount:v51 category:4];

    [v56 setMerchantCategory:v114];
    [v48 addObject:v56];
    v99 = v56;
    goto LABEL_52;
  }

LABEL_52:
LABEL_53:
  if (v38)
  {
    v57 = isMonthZero;
  }

  else
  {
    v57 = 0;
  }

  v97 = v38;
  if (currentBalanceForMonthZero && v57)
  {
    v58 = [MEMORY[0x277CCA980] decimalNumberWithString:@"0.33"];
    v59 = [v38 compare:v58];

    if (v59 == -1)
    {
      v80 = objc_alloc(MEMORY[0x277D08818]);
      v63 = [MEMORY[0x277CCA980] decimalNumberWithString:@"3"];
      v64 = [currentBalanceForMonthZero decimalNumberByDividingBy:v63];
      v65 = v80;
      v66 = v64;
      v67 = 20;
    }

    else
    {
      v60 = [MEMORY[0x277CCA980] decimalNumberWithString:@"0.67"];
      v61 = [v38 compare:v60];

      v62 = objc_alloc(MEMORY[0x277D08818]);
      if (v61 == -1)
      {
        v63 = [MEMORY[0x277CCA980] decimalNumberWithString:@"6"];
        v64 = [currentBalanceForMonthZero decimalNumberByDividingBy:v63];
        v65 = v62;
        v66 = v64;
        v67 = 21;
      }

      else
      {
        v63 = [MEMORY[0x277CCA980] decimalNumberWithString:@"9"];
        v64 = [currentBalanceForMonthZero decimalNumberByDividingBy:v63];
        v65 = v62;
        v66 = v64;
        v67 = 22;
      }
    }

    v82 = [v65 initWithAmount:v66 category:{v67, v96}];
  }

  else
  {
    if (zero8)
    {
      v68 = v30;
    }

    else
    {
      v68 = 0;
    }

    if (!v106 || (v68 & 1) == 0)
    {
      previousStatementPaymentsSum = [listCopy previousStatementPaymentsSum];

      if (previousStatementPaymentsSum)
      {
        goto LABEL_77;
      }
    }

    v70 = [MEMORY[0x277CCA980] decimalNumberWithString:{@"0.33", v96}];
    v71 = [zero8 compare:v70];

    if (v71 == -1)
    {
      v81 = objc_alloc(MEMORY[0x277D08818]);
      v75 = [MEMORY[0x277CCA980] decimalNumberWithString:@"3"];
      v76 = [v106 decimalNumberByDividingBy:v75];
      v77 = v81;
      v78 = v76;
      v79 = 26;
    }

    else
    {
      v72 = [MEMORY[0x277CCA980] decimalNumberWithString:@"0.67"];
      v73 = [zero8 compare:v72];

      v74 = objc_alloc(MEMORY[0x277D08818]);
      if (v73 == -1)
      {
        v75 = [MEMORY[0x277CCA980] decimalNumberWithString:@"6"];
        v76 = [v106 decimalNumberByDividingBy:v75];
        v77 = v74;
        v78 = v76;
        v79 = 27;
      }

      else
      {
        v75 = [MEMORY[0x277CCA980] decimalNumberWithString:@"9"];
        v76 = [v106 decimalNumberByDividingBy:v75];
        v77 = v74;
        v78 = v76;
        v79 = 28;
      }
    }

    v82 = [v77 initWithAmount:v78 category:v79];

    amount = [v82 amount];
    v84 = [amount compare:v103];

    v99 = v82;
    if (v84 != -1)
    {
      goto LABEL_77;
    }
  }

  [v48 addObject:v82];
  v99 = v82;
LABEL_77:
  currentStatementPaymentsSum = [listCopy currentStatementPaymentsSum];
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v86 = v48;
  v87 = [v86 countByEnumeratingWithState:&v108 objects:v115 count:16];
  if (v87)
  {
    v88 = v87;
    v89 = *v109;
    do
    {
      for (i = 0; i != v88; ++i)
      {
        if (*v109 != v89)
        {
          objc_enumerationMutation(v86);
        }

        if (currentStatementPaymentsSum)
        {
          v91 = *(*(&v108 + 1) + 8 * i);
          amount2 = [v91 amount];
          if (!-[FHPaymentRingSuggestionController _categoryIsCurrentBalanceType:](self, "_categoryIsCurrentBalanceType:", [v91 category]))
          {
            v93 = [amount2 decimalNumberBySubtracting:currentStatementPaymentsSum];
            [v91 setAmount:v93];
          }
        }
      }

      v88 = [v86 countByEnumeratingWithState:&v108 objects:v115 count:16];
    }

    while (v88);
  }

  v14 = v101;
  v38 = v97;
LABEL_89:

  v94 = *MEMORY[0x277D85DE8];

  return v102;
}

- (BOOL)_allMandatoryValuesAreSameAmount:(id)amount
{
  amountCopy = amount;
  currentStatement = [amountCopy currentStatement];
  currentBalance = [currentStatement currentBalance];

  currentStatement2 = [amountCopy currentStatement];
  remainingStatementBalance = [currentStatement2 remainingStatementBalance];

  currentStatement3 = [amountCopy currentStatement];

  remainingMinimumPayment = [currentStatement3 remainingMinimumPayment];

  zero = [MEMORY[0x277CCA980] zero];
  if (currentBalance && [currentBalance compare:zero] == -1)
  {
    v11 = zero;

    currentBalance = v11;
  }

  if (remainingStatementBalance && [remainingStatementBalance compare:zero] == -1)
  {
    v14 = zero;

    remainingStatementBalance = v14;
    if (!remainingMinimumPayment)
    {
      goto LABEL_15;
    }
  }

  else if (!remainingMinimumPayment)
  {
    goto LABEL_15;
  }

  if ([remainingMinimumPayment compare:zero] == -1)
  {
    v12 = zero;

    remainingMinimumPayment = v12;
  }

  v13 = 0;
  if (currentBalance && remainingStatementBalance && remainingMinimumPayment)
  {
    if ([currentBalance isEqual:remainingStatementBalance])
    {
      v13 = [remainingStatementBalance isEqual:remainingMinimumPayment];
      goto LABEL_16;
    }

LABEL_15:
    v13 = 0;
  }

LABEL_16:

  return v13;
}

- (void)_minimumMerchcantCategoriesAboveMinimumAmount:(id)amount minMerchantCategory1:(int64_t *)category1 minMerchantCategory2:(int64_t *)category2 minMerchantCategorySum1:(id *)sum1 minMerchantCategorySum2:(id *)sum2 merchantCategoryTransactionSums:(id)sums
{
  amountCopy = amount;
  sumsCopy = sums;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  if (amountCopy)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __205__FHPaymentRingSuggestionController__minimumMerchcantCategoriesAboveMinimumAmount_minMerchantCategory1_minMerchantCategory2_minMerchantCategorySum1_minMerchantCategorySum2_merchantCategoryTransactionSums___block_invoke;
    v15[3] = &unk_278FFB548;
    v16 = amountCopy;
    v17 = &v27;
    v18 = &v37;
    v19 = &v21;
    v20 = &v33;
    [sumsCopy enumerateKeysAndObjectsUsingBlock:v15];
  }

  if (category1)
  {
    *category1 = v38[3];
  }

  if (category2)
  {
    *category2 = v34[3];
  }

  if (sum1)
  {
    *sum1 = v28[5];
  }

  if (sum2)
  {
    *sum2 = v22[5];
  }

  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
}

void __205__FHPaymentRingSuggestionController__minimumMerchcantCategoriesAboveMinimumAmount_minMerchantCategory1_minMerchantCategory2_minMerchantCategorySum1_minMerchantCategorySum2_merchantCategoryTransactionSums___block_invoke(void *a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if ([v5 compare:a1[4]] != 1)
  {
    goto LABEL_16;
  }

  v6 = *(a1[5] + 8);
  v8 = *(v6 + 40);
  v7 = (v6 + 40);
  if (!v8)
  {
    v14 = 6;
LABEL_15:
    objc_storeStrong(v7, a3);
    *(*(a1[v14] + 8) + 24) = [v15 integerValue];
    goto LABEL_16;
  }

  v9 = a1 + 7;
  v10 = *(a1[7] + 8);
  v11 = *(v10 + 40);
  v7 = (v10 + 40);
  if (!v11)
  {
    v14 = 8;
    goto LABEL_15;
  }

  if ([v5 compare:?] == -1 || objc_msgSend(v5, "compare:", *(*(*v9 + 8) + 40)) == -1)
  {
    v12 = [*(*(a1[5] + 8) + 40) compare:*(*(*v9 + 8) + 40)];
    if (v12 == -1)
    {
      v13 = a1 + 7;
    }

    else
    {
      v13 = a1 + 5;
    }

    if (v12 == -1)
    {
      v14 = 8;
    }

    else
    {
      v14 = 6;
    }

    v7 = (*(*v13 + 8) + 40);
    goto LABEL_15;
  }

LABEL_16:
}

- (id)_suggestedAmountsForPayOffDateForStatementBalance:(id)balance statementPurchasesSum:(id)sum creditUtilization:(id)utilization lastPaymentCategory:(unint64_t)category
{
  balanceCopy = balance;
  sumCopy = sum;
  utilizationCopy = utilization;
  v12 = utilizationCopy;
  v13 = 0;
  if (balanceCopy && sumCopy && utilizationCopy)
  {
    switch(category)
    {
      case 6uLL:
      case 0xEuLL:
      case 0x19uLL:
        v14 = objc_alloc(MEMORY[0x277D08818]);
        v15 = [balanceCopy decimalNumberBySubtracting:sumCopy];
        v16 = [MEMORY[0x277CCA980] decimalNumberWithString:@"8"];
        v17 = [v15 decimalNumberByDividingBy:v16];
        v18 = [v17 decimalNumberByAdding:sumCopy];
        v19 = v14;
        v20 = v18;
        v21 = 7;
        goto LABEL_18;
      case 7uLL:
        v27 = objc_alloc(MEMORY[0x277D08818]);
        v15 = [balanceCopy decimalNumberBySubtracting:sumCopy];
        v16 = [MEMORY[0x277CCA980] decimalNumberWithString:@"7"];
        v17 = [v15 decimalNumberByDividingBy:v16];
        v18 = [v17 decimalNumberByAdding:sumCopy];
        v19 = v27;
        v20 = v18;
        v21 = 8;
        goto LABEL_18;
      case 8uLL:
        v24 = objc_alloc(MEMORY[0x277D08818]);
        v15 = [balanceCopy decimalNumberBySubtracting:sumCopy];
        v16 = [MEMORY[0x277CCA980] decimalNumberWithString:@"6"];
        v17 = [v15 decimalNumberByDividingBy:v16];
        v18 = [v17 decimalNumberByAdding:sumCopy];
        v19 = v24;
        v20 = v18;
        v21 = 9;
        goto LABEL_18;
      case 9uLL:
      case 0xFuLL:
      case 0x18uLL:
        v23 = objc_alloc(MEMORY[0x277D08818]);
        v15 = [balanceCopy decimalNumberBySubtracting:sumCopy];
        v16 = [MEMORY[0x277CCA980] decimalNumberWithString:@"5"];
        v17 = [v15 decimalNumberByDividingBy:v16];
        v18 = [v17 decimalNumberByAdding:sumCopy];
        v19 = v23;
        v20 = v18;
        v21 = 10;
        goto LABEL_18;
      case 0xAuLL:
        v26 = objc_alloc(MEMORY[0x277D08818]);
        v15 = [balanceCopy decimalNumberBySubtracting:sumCopy];
        v16 = [MEMORY[0x277CCA980] decimalNumberWithString:@"4"];
        v17 = [v15 decimalNumberByDividingBy:v16];
        v18 = [v17 decimalNumberByAdding:sumCopy];
        v19 = v26;
        v20 = v18;
        v21 = 11;
        goto LABEL_18;
      case 0xBuLL:
        v25 = objc_alloc(MEMORY[0x277D08818]);
        v15 = [balanceCopy decimalNumberBySubtracting:sumCopy];
        v16 = [MEMORY[0x277CCA980] decimalNumberWithString:@"3"];
        v17 = [v15 decimalNumberByDividingBy:v16];
        v18 = [v17 decimalNumberByAdding:sumCopy];
        v19 = v25;
        v20 = v18;
        v21 = 12;
        goto LABEL_18;
      case 0xCuLL:
      case 0x10uLL:
      case 0x17uLL:
        v22 = objc_alloc(MEMORY[0x277D08818]);
        v15 = [balanceCopy decimalNumberBySubtracting:sumCopy];
        v16 = [MEMORY[0x277CCA980] decimalNumberWithString:@"2"];
        v17 = [v15 decimalNumberByDividingBy:v16];
        v18 = [v17 decimalNumberByAdding:sumCopy];
        v19 = v22;
        v20 = v18;
        v21 = 13;
        goto LABEL_18;
      case 0xDuLL:
        v13 = [objc_alloc(MEMORY[0x277D08818]) initWithAmount:balanceCopy category:17];
        break;
      default:
        v28 = [MEMORY[0x277CCA980] decimalNumberWithString:@"0.33"];
        v29 = [v12 compare:v28];

        if (v29 == -1)
        {
          v33 = objc_alloc(MEMORY[0x277D08818]);
          v15 = [balanceCopy decimalNumberBySubtracting:sumCopy];
          v16 = [MEMORY[0x277CCA980] decimalNumberWithString:@"3"];
          v17 = [v15 decimalNumberByDividingBy:v16];
          v18 = [v17 decimalNumberByAdding:sumCopy];
          v19 = v33;
          v20 = v18;
          v21 = 16;
        }

        else
        {
          v30 = [MEMORY[0x277CCA980] decimalNumberWithString:@"0.67"];
          v31 = [v12 compare:v30];

          v32 = objc_alloc(MEMORY[0x277D08818]);
          v15 = [balanceCopy decimalNumberBySubtracting:sumCopy];
          if (v31 == -1)
          {
            v16 = [MEMORY[0x277CCA980] decimalNumberWithString:@"6"];
            v17 = [v15 decimalNumberByDividingBy:v16];
            v18 = [v17 decimalNumberByAdding:sumCopy];
            v19 = v32;
            v20 = v18;
            v21 = 15;
          }

          else
          {
            v16 = [MEMORY[0x277CCA980] decimalNumberWithString:@"9"];
            v17 = [v15 decimalNumberByDividingBy:v16];
            v18 = [v17 decimalNumberByAdding:sumCopy];
            v19 = v32;
            v20 = v18;
            v21 = 14;
          }
        }

LABEL_18:
        v13 = [v19 initWithAmount:v20 category:v21];

        break;
    }
  }

  return v13;
}

- (id)_calculateThresholdForLastPaymentCategory:(unint64_t)category statementBalance:(id)balance lastPaymentCategoryAmount:(id)amount previousStatementPaymentsSum:(id)sum statementPurchasesSum:(id)purchasesSum
{
  balanceCopy = balance;
  amountCopy = amount;
  sumCopy = sum;
  purchasesSumCopy = purchasesSum;
  if (sumCopy)
  {
    v15 = sumCopy;
    switch(category)
    {
      case 0uLL:
        break;
      case 6uLL:
      case 0xEuLL:
      case 0x19uLL:
        v16 = [balanceCopy decimalNumberBySubtracting:purchasesSumCopy];
        v17 = MEMORY[0x277CCA980];
        v18 = @"8";
        goto LABEL_15;
      case 7uLL:
        v16 = [balanceCopy decimalNumberBySubtracting:purchasesSumCopy];
        v17 = MEMORY[0x277CCA980];
        v18 = @"7";
        goto LABEL_15;
      case 8uLL:
        v16 = [balanceCopy decimalNumberBySubtracting:purchasesSumCopy];
        v17 = MEMORY[0x277CCA980];
        v18 = @"6";
        goto LABEL_15;
      case 9uLL:
      case 0xFuLL:
      case 0x18uLL:
        v16 = [balanceCopy decimalNumberBySubtracting:purchasesSumCopy];
        v17 = MEMORY[0x277CCA980];
        v18 = @"5";
        goto LABEL_15;
      case 0xAuLL:
        v16 = [balanceCopy decimalNumberBySubtracting:purchasesSumCopy];
        v17 = MEMORY[0x277CCA980];
        v18 = @"4";
        goto LABEL_15;
      case 0xBuLL:
        v16 = [balanceCopy decimalNumberBySubtracting:purchasesSumCopy];
        v17 = MEMORY[0x277CCA980];
        v18 = @"3";
        goto LABEL_15;
      case 0xCuLL:
      case 0x10uLL:
      case 0x17uLL:
        v16 = [balanceCopy decimalNumberBySubtracting:purchasesSumCopy];
        v17 = MEMORY[0x277CCA980];
        v18 = @"2";
LABEL_15:
        v21 = [v17 decimalNumberWithString:v18];
        v22 = [v16 decimalNumberByDividingBy:v21];
        v20 = [v22 decimalNumberByAdding:purchasesSumCopy];

        v15 = v16;
        goto LABEL_16;
      case 0xDuLL:
        v19 = balanceCopy;
        goto LABEL_12;
      default:
        if ([amountCopy compare:v15] != 1)
        {
          break;
        }

        v19 = amountCopy;
LABEL_12:
        v20 = v19;
LABEL_16:

        v15 = v20;
        break;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_filterSuggestions:(id)suggestions belowThreshold:(id)threshold
{
  v24 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  thresholdCopy = threshold;
  v7 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = suggestionsCopy;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        amount = [v13 amount];
        if ([amount compare:thresholdCopy] == 1)
        {
        }

        else
        {
          amount2 = [v13 amount];
          v16 = [amount2 compare:thresholdCopy];

          if (v16)
          {
            continue;
          }
        }

        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)_fhEqualObjects:(id)objects obj2:(id)obj2
{
  if (objects && obj2)
  {
    return [objects isEqual:obj2];
  }

  else
  {
    return objects == obj2;
  }
}

@end