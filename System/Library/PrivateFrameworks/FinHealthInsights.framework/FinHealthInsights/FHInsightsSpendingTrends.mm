@interface FHInsightsSpendingTrends
+ (id)_defaultQueue;
- (FHInsightsSpendingTrends)initWithWeeklyThreshold:(double)threshold monthlyThreshold:(double)monthlyThreshold merchantCounts:(id)counts;
- (FHInsightsSpendingTrends)trendsWithCompletion:(id)completion;
- (double)_fillFactorWithStartOfPeriodForMostRecentEntryDate:(id)date mostRecentEntryDate:(id)entryDate endOfPeriodForMostRecentEntryDate:(id)recentEntryDate numberOfDaysSinceFirstTransaction:(unint64_t)transaction transactionCount:(unint64_t)count transactionCountForMostRecentPeriod:(unint64_t)period transactionAmountSums:(double)sums transactionAmountSumsForMostRecentPeriod:(double)self0;
- (id)_kendallCoefficientWithIndexedAmountSums:(id)sums;
- (id)_orderedTimeStampAndAmountPair:(id)pair;
- (void)_computeAndStoreTrend:(id)trend indexedAmountSums:(id)sums insightFeatureName:(id)name insightType:(id)type trendWindow:(int64_t)window;
- (void)_computeCategoryAndMerchantTrends;
@end

@implementation FHInsightsSpendingTrends

- (FHInsightsSpendingTrends)initWithWeeklyThreshold:(double)threshold monthlyThreshold:(double)monthlyThreshold merchantCounts:(id)counts
{
  countsCopy = counts;
  v23.receiver = self;
  v23.super_class = FHInsightsSpendingTrends;
  v10 = [(FHInsightsSpendingTrends *)&v23 init];
  if (v10)
  {
    v11 = [MEMORY[0x277D087F8] initWithBuilder:&__block_literal_global];
    v12 = objc_alloc(MEMORY[0x277D087E8]);
    v13 = [v12 initWithEntity:*MEMORY[0x277D087B0] joinClause:v11];
    transactionAndFeauturesEntities = v10->_transactionAndFeauturesEntities;
    v10->_transactionAndFeauturesEntities = v13;

    v15 = objc_alloc(MEMORY[0x277D087E8]);
    v16 = [v15 initWithEntity:*MEMORY[0x277D086F0]];
    insightsDestinationEntity = v10->_insightsDestinationEntity;
    v10->_insightsDestinationEntity = v16;

    _defaultQueue = [objc_opt_class() _defaultQueue];
    insightsProcessingQueue = v10->_insightsProcessingQueue;
    v10->_insightsProcessingQueue = _defaultQueue;

    objc_storeStrong(&v10->_merchantCounts, counts);
    if (fabs(threshold) <= 1.0)
    {
      thresholdCopy = threshold;
    }

    else
    {
      thresholdCopy = *&defaultWeeklyThreshold;
    }

    if (fabs(monthlyThreshold) <= 1.0)
    {
      monthlyThresholdCopy = monthlyThreshold;
    }

    else
    {
      monthlyThresholdCopy = *&defaultMonthlyThreshold;
    }

    v10->_weeklyThreshold = thresholdCopy;
    v10->_monthlyThreshold = monthlyThresholdCopy;
  }

  return v10;
}

- (FHInsightsSpendingTrends)trendsWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  insightsProcessingQueue = self->_insightsProcessingQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__FHInsightsSpendingTrends_trendsWithCompletion___block_invoke;
  v8[3] = &unk_278FFBF40;
  objc_copyWeak(&v10, &location);
  v8[4] = self;
  v9 = completionCopy;
  v6 = completionCopy;
  dispatch_sync(insightsProcessingQueue, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
  return result;
}

void __49__FHInsightsSpendingTrends_trendsWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    [WeakRetained[2] clearData];
    [*(a1 + 32) _computeCategoryAndMerchantTrends];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_computeCategoryAndMerchantTrends
{
  v160 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_insightsProcessingQueue);
  v52 = [MEMORY[0x277D087E0] initWithBuilder:&__block_literal_global_109];
  v152 = 0;
  v153 = &v152;
  v154 = 0x3032000000;
  v155 = __Block_byref_object_copy_;
  v156 = __Block_byref_object_dispose_;
  v157 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v146 = 0;
  v147 = &v146;
  v148 = 0x3032000000;
  v149 = __Block_byref_object_copy_;
  v150 = __Block_byref_object_dispose_;
  v151 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v140 = 0;
  v141 = &v140;
  v142 = 0x3032000000;
  v143 = __Block_byref_object_copy_;
  v144 = __Block_byref_object_dispose_;
  v145 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v134 = 0;
  v135 = &v134;
  v136 = 0x3032000000;
  v137 = __Block_byref_object_copy_;
  v138 = __Block_byref_object_dispose_;
  v139 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v128 = 0;
  v129 = &v128;
  v130 = 0x3032000000;
  v131 = __Block_byref_object_copy_;
  v132 = __Block_byref_object_dispose_;
  v133 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v122 = 0;
  v123 = &v122;
  v124 = 0x3032000000;
  v125 = __Block_byref_object_copy_;
  v126 = __Block_byref_object_dispose_;
  v127 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v116 = 0;
  v117 = &v116;
  v118 = 0x3032000000;
  v119 = __Block_byref_object_copy_;
  v120 = __Block_byref_object_dispose_;
  v121 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v110 = 0;
  v111 = &v110;
  v112 = 0x3032000000;
  v113 = __Block_byref_object_copy_;
  v114 = __Block_byref_object_dispose_;
  v115 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v104 = 0;
  v105 = &v104;
  v106 = 0x3032000000;
  v107 = __Block_byref_object_copy_;
  v108 = __Block_byref_object_dispose_;
  v109 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v98 = 0;
  v99 = &v98;
  v100 = 0x3032000000;
  v101 = __Block_byref_object_copy_;
  v102 = __Block_byref_object_dispose_;
  v103 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v94 = 0;
  v95 = &v94;
  v96 = 0x2020000000;
  v97 = 0;
  v90 = 0;
  v91 = &v90;
  v92 = 0x2020000000;
  v93 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  v82 = 0;
  v83 = &v82;
  v84 = 0x2020000000;
  v85 = 0;
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  v73[0] = 0;
  v73[1] = v73;
  v73[2] = 0x2020000000;
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  [distantPast timeIntervalSinceReferenceDate];
  v5 = v4;

  v73[3] = v5;
  v72[0] = 0;
  v72[1] = v72;
  v72[2] = 0x2020000000;
  distantPast2 = [MEMORY[0x277CBEAA8] distantPast];
  [distantPast2 timeIntervalSinceReferenceDate];
  v8 = v7;

  v72[3] = v8;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  distantPast3 = [MEMORY[0x277CBEAA8] distantPast];
  [distantPast3 timeIntervalSinceReferenceDate];
  v11 = v10;

  v71 = v11;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  [distantFuture timeIntervalSinceReferenceDate];
  v14 = v13;

  v67 = v14;
  objc_initWeak(&location, self);
  transactionAndFeauturesEntities = self->_transactionAndFeauturesEntities;
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke_122;
  v61[3] = &unk_278FFBF88;
  objc_copyWeak(&v62, &location);
  v16 = *MEMORY[0x277D08750];
  v61[4] = &v64;
  v61[5] = &v68;
  v61[6] = v72;
  v61[7] = &v78;
  v61[8] = &v74;
  v61[9] = &v82;
  v61[10] = &v152;
  v61[11] = &v104;
  v61[12] = v73;
  v61[13] = &v94;
  v61[14] = &v90;
  v61[15] = &v128;
  v61[16] = &v98;
  v61[17] = &v146;
  v61[18] = &v122;
  v61[19] = &v140;
  v61[20] = &v116;
  v61[21] = &v134;
  v61[22] = &v110;
  v61[23] = &v86;
  [(FHDatabaseEntity *)transactionAndFeauturesEntities queryDataWithBlock:v52 logicalOperator:v16 selectFields:&unk_285E24688 usingBlock:v61];
  v17 = [MEMORY[0x277CBEAA8] now];
  v18 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v65[3]];
  v19 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v69[3]];
  v51 = FHDateStartOfWeekOnMonday();
  v50 = FHDateEndOfWeekStartingOnMonday();
  v49 = FHDateStartOfMonth();
  v20 = FHDateEndOfMonth();
  v21 = FHNumberOfDaysBetweenDates();
  if (defaultWeeklyFillFactorStatus)
  {
    v22 = 1;
  }

  else if (FHIsDateBetweenDates() && v87[3] && v79[3])
  {
    [FHInsightsSpendingTrends _fillFactorWithStartOfPeriodForMostRecentEntryDate:"_fillFactorWithStartOfPeriodForMostRecentEntryDate:mostRecentEntryDate:endOfPeriodForMostRecentEntryDate:numberOfDaysSinceFirstTransaction:transactionCount:transactionCountForMostRecentPeriod:transactionAmountSums:transactionAmountSumsForMostRecentPeriod:" mostRecentEntryDate:v51 endOfPeriodForMostRecentEntryDate:v19 numberOfDaysSinceFirstTransaction:v50 transactionCount:v21 transactionCountForMostRecentPeriod:v83[3] transactionAmountSums:v75[3] transactionAmountSumsForMostRecentPeriod:?];
    v24 = v23;
    v22 = v23 >= *MEMORY[0x277D08710];
    v25 = *MEMORY[0x277D087C0];
    v26 = FinHealthLogObject();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v159 = v24;
      _os_log_impl(&dword_24ABED000, v26, OS_LOG_TYPE_DEBUG, "weeklyFillFactor: %f", buf, 0xCu);
    }
  }

  else
  {
    v22 = 0;
  }

  if (defaultMonthlyFillFactorStatus)
  {
    v27 = 1;
    if (!v22)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (!FHIsDateBetweenDates() || !v87[3] || !v95[3])
  {
    v27 = 0;
    if (!v22)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  [FHInsightsSpendingTrends _fillFactorWithStartOfPeriodForMostRecentEntryDate:"_fillFactorWithStartOfPeriodForMostRecentEntryDate:mostRecentEntryDate:endOfPeriodForMostRecentEntryDate:numberOfDaysSinceFirstTransaction:transactionCount:transactionCountForMostRecentPeriod:transactionAmountSums:transactionAmountSumsForMostRecentPeriod:" mostRecentEntryDate:v49 endOfPeriodForMostRecentEntryDate:v19 numberOfDaysSinceFirstTransaction:v20 transactionCount:v21 transactionCountForMostRecentPeriod:v83[3] transactionAmountSums:v91[3] transactionAmountSumsForMostRecentPeriod:?];
  v29 = v28;
  v27 = v28 >= *MEMORY[0x277D08700];
  v30 = *MEMORY[0x277D087C0];
  v31 = FinHealthLogObject();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v159 = v29;
    _os_log_impl(&dword_24ABED000, v31, OS_LOG_TYPE_DEBUG, "monthlyFillFactor: %f", buf, 0xCu);
  }

  if (v22)
  {
LABEL_21:
    v32 = v153[5];
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke_130;
    v60[3] = &unk_278FFBFB0;
    v60[4] = self;
    [v32 enumerateKeysAndObjectsUsingBlock:{v60, v49}];
    v33 = v147[5];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke_2;
    v59[3] = &unk_278FFBFB0;
    v59[4] = self;
    [v33 enumerateKeysAndObjectsUsingBlock:v59];
    v34 = [v105[5] copy];
    v35 = [(FHInsightsSpendingTrends *)self _orderedTimeStampAndAmountPair:v34];

    firstObject = [v35 firstObject];
    lastObject = [v35 lastObject];
    [(FHInsightsSpendingTrends *)self _computeAndStoreTrend:firstObject indexedAmountSums:lastObject insightFeatureName:@"Overall Spend" insightType:@"FHInsightTypeOverallSpend" trendWindow:1];

    v38 = v141[5];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke_3;
    v58[3] = &unk_278FFBFB0;
    v58[4] = self;
    [v38 enumerateKeysAndObjectsUsingBlock:v58];
    v39 = v135[5];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke_4;
    v57[3] = &unk_278FFBFB0;
    v57[4] = self;
    [v39 enumerateKeysAndObjectsUsingBlock:v57];
  }

LABEL_22:
  if (v27)
  {
    v40 = v129[5];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke_5;
    v56[3] = &unk_278FFBFB0;
    v56[4] = self;
    [v40 enumerateKeysAndObjectsUsingBlock:v56];
    v41 = v123[5];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke_6;
    v55[3] = &unk_278FFBFB0;
    v55[4] = self;
    [v41 enumerateKeysAndObjectsUsingBlock:v55];
    v42 = [v99[5] copy];
    v43 = [(FHInsightsSpendingTrends *)self _orderedTimeStampAndAmountPair:v42];

    firstObject2 = [v43 firstObject];
    lastObject2 = [v43 lastObject];
    [(FHInsightsSpendingTrends *)self _computeAndStoreTrend:firstObject2 indexedAmountSums:lastObject2 insightFeatureName:@"Overall Spend" insightType:@"FHInsightTypeOverallSpend" trendWindow:2];

    v46 = v117[5];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke_7;
    v54[3] = &unk_278FFBFB0;
    v54[4] = self;
    [v46 enumerateKeysAndObjectsUsingBlock:v54];
    v47 = v111[5];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke_8;
    v53[3] = &unk_278FFBFB0;
    v53[4] = self;
    [v47 enumerateKeysAndObjectsUsingBlock:v53];
  }

  objc_destroyWeak(&v62);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(v72, 8);
  _Block_object_dispose(v73, 8);
  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(&v82, 8);
  _Block_object_dispose(&v86, 8);
  _Block_object_dispose(&v90, 8);
  _Block_object_dispose(&v94, 8);
  _Block_object_dispose(&v98, 8);

  _Block_object_dispose(&v104, 8);
  _Block_object_dispose(&v110, 8);

  _Block_object_dispose(&v116, 8);
  _Block_object_dispose(&v122, 8);

  _Block_object_dispose(&v128, 8);
  _Block_object_dispose(&v134, 8);

  _Block_object_dispose(&v140, 8);
  _Block_object_dispose(&v146, 8);

  _Block_object_dispose(&v152, 8);
  v48 = *MEMORY[0x277D85DE8];
}

void __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x277D086B8];
  v3 = a2;
  [v3 addIntegerClause:v2 fieldName:@"transactions.t_type" expression:0];
  [v3 addIntegerClause:*MEMORY[0x277D086C0] fieldName:@"transactions.t_status" expression:0];
  [v3 addIntegerClause:*MEMORY[0x277D086C8] fieldName:@"transactions.t_status" expression:1];
  [v3 addIntegerClause:v2 fieldName:@"transactions.a_type" expression:2];
}

void __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke_122(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v120 = *MEMORY[0x277D85DE8];
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 192));
  if (WeakRetained && (a4 & 1) == 0)
  {
    v8 = [v6 objectAtIndex:1];
    [v8 doubleValue];
    v10 = v9 / 100.0;

    v11 = [v6 objectAtIndex:2];
    [v11 doubleValue];
    v13 = v12;

    v14 = [v6 objectAtIndex:3];
    [v14 integerValue];
    v15 = FHMerchantCategoryToString();

    v16 = [v6 objectAtIndex:4];
    v106 = [v16 stringValue];

    v17 = [v6 objectAtIndex:5];
    v105 = [v17 stringValue];

    v18 = [v6 objectAtIndex:6];
    v19 = [v18 stringValue];

    *(*(*(a1 + 32) + 8) + 24) = fmin(*(*(*(a1 + 32) + 8) + 24), v13);
    *(*(*(a1 + 40) + 8) + 24) = fmax(*(*(*(a1 + 40) + 8) + 24), v13);
    v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v13];
    v97 = FHDateStartOfWeekOnMonday();
    [v97 timeIntervalSinceReferenceDate];
    v22 = v21;
    v23 = *(*(a1 + 48) + 8);
    v24 = *(v23 + 24);
    if (v22 <= v24)
    {
      if (v22 == v24)
      {
        ++*(*(*(a1 + 56) + 8) + 24);
        *(*(*(a1 + 64) + 8) + 24) = v10 + *(*(*(a1 + 64) + 8) + 24);
      }
    }

    else
    {
      *(v23 + 24) = v22;
      *(*(*(a1 + 56) + 8) + 24) = 1;
      *(*(*(a1 + 64) + 8) + 24) = v10;
    }

    *(*(*(a1 + 72) + 8) + 24) = v10 + *(*(*(a1 + 72) + 8) + 24);
    v109 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v22];
    v25 = [*(*(*(a1 + 80) + 8) + 40) objectForKey:v15];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v28 = v27;

    [v28 setOrAddToDoubleValue:v109 forKey:v10];
    [*(*(*(a1 + 88) + 8) + 40) setOrAddToDoubleValue:v109 forKey:v10];
    v104 = v28;
    [*(*(*(a1 + 80) + 8) + 40) setObject:v28 forKey:v15];
    v29 = FHDateStartOfMonth();
    [v29 timeIntervalSinceReferenceDate];
    v31 = v30;
    v32 = *(*(a1 + 96) + 8);
    v33 = *(v32 + 24);
    v98 = v20;
    v99 = v6;
    v96 = v29;
    if (v31 <= v33)
    {
      if (v31 == v33)
      {
        ++*(*(*(a1 + 104) + 8) + 24);
        *(*(*(a1 + 112) + 8) + 24) = v10 + *(*(*(a1 + 112) + 8) + 24);
      }
    }

    else
    {
      *(v32 + 24) = v31;
      *(*(*(a1 + 104) + 8) + 24) = 1;
      *(*(*(a1 + 112) + 8) + 24) = v10;
    }

    v34 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v31];
    v35 = [*(*(*(a1 + 120) + 8) + 40) objectForKey:v15];
    v36 = v35;
    if (v35)
    {
      v37 = v35;
    }

    else
    {
      v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v38 = v37;

    [v38 setOrAddToDoubleValue:v34 forKey:v10];
    [*(*(*(a1 + 128) + 8) + 40) setOrAddToDoubleValue:v34 forKey:v10];
    [*(*(*(a1 + 120) + 8) + 40) setObject:v38 forKey:v15];
    v39 = [WeakRetained[3] objectForKey:v106];
    v40 = [v39 integerValue];
    v41 = *MEMORY[0x277D086F8];

    if (v40 > v41)
    {
      v42 = [*(*(*(a1 + 136) + 8) + 40) objectForKey:v106];
      v43 = v42;
      v44 = v19;
      if (v42)
      {
        v45 = v42;
      }

      else
      {
        v45 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      v46 = v45;

      [v46 setOrAddToDoubleValue:v109 forKey:v10];
      [*(*(*(a1 + 136) + 8) + 40) setObject:v46 forKey:v106];
      v47 = [*(*(*(a1 + 144) + 8) + 40) objectForKey:v106];
      v48 = v47;
      if (v47)
      {
        v49 = v47;
      }

      else
      {
        v49 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      v50 = v49;

      [v50 setOrAddToDoubleValue:v34 forKey:v10];
      [*(*(*(a1 + 144) + 8) + 40) setObject:v50 forKey:v106];

      v19 = v44;
    }

    v51 = v104;
    v52 = v105;
    v101 = v15;
    v102 = WeakRetained;
    v100 = v19;
    v103 = v38;
    if (v105)
    {
      v95 = [v105 componentsSeparatedByString:*MEMORY[0x277D08790]];
      v53 = [MEMORY[0x277D08888] reconstructAggregateFeaturesWithProcessingWindow:?];
      v54 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF.%K == %@ OR SELF.%K == %@", *MEMORY[0x277D086B0], *MEMORY[0x277D08780], *MEMORY[0x277D086B0], *MEMORY[0x277D08778]];
      v94 = v53;
      v55 = [v53 filteredArrayUsingPredicate:v54];

      if ([v55 count])
      {
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v93 = v55;
        obj = v55;
        v56 = [obj countByEnumeratingWithState:&v114 objects:v119 count:16];
        if (v56)
        {
          v57 = v56;
          v58 = *v115;
          do
          {
            for (i = 0; i != v57; ++i)
            {
              if (*v115 != v58)
              {
                objc_enumerationMutation(obj);
              }

              v60 = *(*(&v114 + 1) + 8 * i);
              v61 = *(*(*(a1 + 152) + 8) + 40);
              v62 = [v60 name];
              v63 = [v61 objectForKey:v62];
              v64 = v63;
              if (v63)
              {
                v65 = v63;
              }

              else
              {
                v65 = objc_alloc_init(MEMORY[0x277CBEB38]);
              }

              v66 = v65;

              [v66 setOrAddToDoubleValue:v109 forKey:v10];
              v67 = *(*(*(a1 + 152) + 8) + 40);
              v68 = [v60 name];
              [v67 setObject:v66 forKey:v68];

              v69 = *(*(*(a1 + 160) + 8) + 40);
              v70 = [v60 name];
              v71 = [v69 objectForKey:v70];
              v72 = v71;
              if (v71)
              {
                v73 = v71;
              }

              else
              {
                v73 = objc_alloc_init(MEMORY[0x277CBEB38]);
              }

              v74 = v73;

              [v74 setOrAddToDoubleValue:v34 forKey:v10];
              v75 = *(*(*(a1 + 160) + 8) + 40);
              v76 = [v60 name];
              [v75 setObject:v74 forKey:v76];
            }

            v57 = [obj countByEnumeratingWithState:&v114 objects:v119 count:16];
          }

          while (v57);
        }

        v15 = v101;
        WeakRetained = v102;
        v51 = v104;
        v52 = v105;
        v19 = v100;
        v38 = v103;
        v55 = v93;
      }
    }

    if (v19)
    {
      obja = [MEMORY[0x277D08888] reconstructCompoundFeatures:v19];
      v77 = [obja objectForKey:*MEMORY[0x277D08788]];
      v78 = v77;
      if (v77)
      {
        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        v79 = [v77 countByEnumeratingWithState:&v110 objects:v118 count:16];
        if (v79)
        {
          v80 = v79;
          v81 = *v111;
          do
          {
            for (j = 0; j != v80; ++j)
            {
              if (*v111 != v81)
              {
                objc_enumerationMutation(v78);
              }

              v83 = [*(*(&v110 + 1) + 8 * j) featureLabel];
              v84 = [*(*(*(a1 + 168) + 8) + 40) objectForKey:v83];
              v85 = v84;
              if (v84)
              {
                v86 = v84;
              }

              else
              {
                v86 = objc_alloc_init(MEMORY[0x277CBEB38]);
              }

              v87 = v86;

              [v87 setOrAddToDoubleValue:v109 forKey:v10];
              [*(*(*(a1 + 168) + 8) + 40) setObject:v87 forKey:v83];
              v88 = [*(*(*(a1 + 176) + 8) + 40) objectForKey:v83];
              v89 = v88;
              if (v88)
              {
                v90 = v88;
              }

              else
              {
                v90 = objc_alloc_init(MEMORY[0x277CBEB38]);
              }

              v91 = v90;

              [v91 setOrAddToDoubleValue:v34 forKey:v10];
              [*(*(*(a1 + 176) + 8) + 40) setObject:v91 forKey:v83];
            }

            v80 = [v78 countByEnumeratingWithState:&v110 objects:v118 count:16];
          }

          while (v80);
        }
      }

      v15 = v101;
      WeakRetained = v102;
      v51 = v104;
      v52 = v105;
      v19 = v100;
      v38 = v103;
    }

    ++*(*(*(a1 + 184) + 8) + 24);

    v6 = v99;
  }

  v92 = *MEMORY[0x277D85DE8];
}

void __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke_130(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 copy];
  v11 = [v5 _orderedTimeStampAndAmountPair:v7];

  v8 = *(a1 + 32);
  v9 = [v11 firstObject];
  v10 = [v11 lastObject];
  [v8 _computeAndStoreTrend:v9 indexedAmountSums:v10 insightFeatureName:v6 insightType:@"FHInsightTypeCategorySpend" trendWindow:1];
}

void __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 copy];
  v11 = [v5 _orderedTimeStampAndAmountPair:v7];

  v8 = *(a1 + 32);
  v9 = [v11 firstObject];
  v10 = [v11 lastObject];
  [v8 _computeAndStoreTrend:v9 indexedAmountSums:v10 insightFeatureName:v6 insightType:@"FHInsightTypeMerchantSpend" trendWindow:1];
}

void __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 copy];
  v11 = [v5 _orderedTimeStampAndAmountPair:v7];

  v8 = *(a1 + 32);
  v9 = [v11 firstObject];
  v10 = [v11 lastObject];
  [v8 _computeAndStoreTrend:v9 indexedAmountSums:v10 insightFeatureName:v6 insightType:@"FHInsightTypeAggregateTag" trendWindow:1];
}

void __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 copy];
  v11 = [v5 _orderedTimeStampAndAmountPair:v7];

  v8 = *(a1 + 32);
  v9 = [v11 firstObject];
  v10 = [v11 lastObject];
  [v8 _computeAndStoreTrend:v9 indexedAmountSums:v10 insightFeatureName:v6 insightType:@"FHInsightTypeCompoundTag" trendWindow:1];
}

void __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 copy];
  v11 = [v5 _orderedTimeStampAndAmountPair:v7];

  v8 = *(a1 + 32);
  v9 = [v11 firstObject];
  v10 = [v11 lastObject];
  [v8 _computeAndStoreTrend:v9 indexedAmountSums:v10 insightFeatureName:v6 insightType:@"FHInsightTypeCategorySpend" trendWindow:2];
}

void __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 copy];
  v11 = [v5 _orderedTimeStampAndAmountPair:v7];

  v8 = *(a1 + 32);
  v9 = [v11 firstObject];
  v10 = [v11 lastObject];
  [v8 _computeAndStoreTrend:v9 indexedAmountSums:v10 insightFeatureName:v6 insightType:@"FHInsightTypeMerchantSpend" trendWindow:2];
}

void __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 copy];
  v11 = [v5 _orderedTimeStampAndAmountPair:v7];

  v8 = *(a1 + 32);
  v9 = [v11 firstObject];
  v10 = [v11 lastObject];
  [v8 _computeAndStoreTrend:v9 indexedAmountSums:v10 insightFeatureName:v6 insightType:@"FHInsightTypeAggregateTag" trendWindow:2];
}

void __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 copy];
  v11 = [v5 _orderedTimeStampAndAmountPair:v7];

  v8 = *(a1 + 32);
  v9 = [v11 firstObject];
  v10 = [v11 lastObject];
  [v8 _computeAndStoreTrend:v9 indexedAmountSums:v10 insightFeatureName:v6 insightType:@"FHInsightTypeCompoundTag" trendWindow:2];
}

- (double)_fillFactorWithStartOfPeriodForMostRecentEntryDate:(id)date mostRecentEntryDate:(id)entryDate endOfPeriodForMostRecentEntryDate:(id)recentEntryDate numberOfDaysSinceFirstTransaction:(unint64_t)transaction transactionCount:(unint64_t)count transactionCountForMostRecentPeriod:(unint64_t)period transactionAmountSums:(double)sums transactionAmountSumsForMostRecentPeriod:(double)self0
{
  v27 = *MEMORY[0x277D85DE8];
  recentEntryDateCopy = recentEntryDate;
  dateCopy = date;
  v18 = FHNumberOfDaysBetweenDates();
  v19 = FHNumberOfDaysBetweenDates();

  v20 = *MEMORY[0x277D087C0];
  v21 = (recentPeriod / v18 / ((sums - recentPeriod) / (transaction - v18)) + v18 / v19 + period / v18 / ((count - period) / (transaction - v18))) / 3.0;
  v22 = FinHealthLogObject();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v25 = 134217984;
    v26 = v21;
    _os_log_impl(&dword_24ABED000, v22, OS_LOG_TYPE_DEBUG, "fillFactorForPeriod: %f", &v25, 0xCu);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v21;
}

- (id)_orderedTimeStampAndAmountPair:(id)pair
{
  v26 = *MEMORY[0x277D85DE8];
  pairCopy = pair;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (pairCopy && [pairCopy count])
  {
    allKeys = [pairCopy allKeys];
    v7 = [allKeys sortedArrayUsingComparator:&__block_literal_global_135];

    if (v7 && [v7 count])
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v22;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v22 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v21 + 1) + 8 * i);
            [v4 addObject:v13];
            v14 = [pairCopy objectForKey:v13];
            [v5 addObject:v14];
          }

          v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v10);
      }
    }
  }

  v15 = MEMORY[0x277CBEA60];
  v16 = [v4 copy];
  v17 = [v5 copy];
  v18 = [v15 arrayWithObjects:{v16, v17, 0}];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)_computeAndStoreTrend:(id)trend indexedAmountSums:(id)sums insightFeatureName:(id)name insightType:(id)type trendWindow:(int64_t)window
{
  v60 = *MEMORY[0x277D85DE8];
  trendCopy = trend;
  sumsCopy = sums;
  nameCopy = name;
  windowCopy = window;
  typeCopy = type;
  v12 = 48;
  if (window == 1)
  {
    v12 = 40;
  }

  selfCopy = self;
  v13 = *(&self->super.isa + v12);
  v40 = *MEMORY[0x277D087C0];
  v14 = FinHealthLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v57 = v13;
    _os_log_impl(&dword_24ABED000, v14, OS_LOG_TYPE_DEBUG, "threshold: %f", buf, 0xCu);
  }

  v15 = MEMORY[0x277D08718];
  if (window != 1)
  {
    v15 = MEMORY[0x277D08708];
  }

  v16 = *v15;
  v17 = [sumsCopy count];
  v18 = v17 - v16;
  if (v17 >= v16)
  {
    v20 = v17;
    v21 = 0x277CCA000uLL;
    v41 = v16;
    do
    {
      v22 = [sumsCopy subarrayWithRange:{v18, v16}];
      v23 = [trendCopy objectAtIndex:--v20];
      [v23 doubleValue];
      v25 = v24;

      v26 = [MEMORY[0x277D08890] kendallCoefficientWithIndexedAmountSums:v22];
      v27 = [objc_alloc(*(v21 + 2432)) initWithDouble:v13];
      v28 = [v26 greaterThanOrEqual:v27];

      if (v28)
      {
        v29 = 1;
      }

      else
      {
        v30 = [objc_alloc(*(v21 + 2432)) initWithDouble:-v13];
        v31 = [v26 lessThanOrEqual:v30];

        if ((v31 & 1) == 0)
        {
          v32 = FinHealthLogObject();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v57 = *&nameCopy;
            v58 = 2112;
            v59 = typeCopy;
            _os_log_impl(&dword_24ABED000, v32, OS_LOG_TYPE_DEBUG, "No trend detected for %@: %@", buf, 0x16u);
          }

          goto LABEL_15;
        }

        v29 = 2;
      }

      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:{v22, 0}];
      v33 = [MEMORY[0x277CCA9C0] expressionWithFormat:@"average(%@)" argumentArray:v32];
      v34 = [v33 expressionValueWithObject:0 context:0];
      lastObject = [v22 lastObject];
      v36 = MEMORY[0x277D087F0];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __111__FHInsightsSpendingTrends__computeAndStoreTrend_indexedAmountSums_insightFeatureName_insightType_trendWindow___block_invoke;
      v48[3] = &unk_278FFBFF8;
      v53 = v25;
      v54 = v29;
      v49 = nameCopy;
      v50 = typeCopy;
      v51 = v34;
      v55 = windowCopy;
      v52 = lastObject;
      v37 = lastObject;
      v38 = v34;
      v39 = [v36 initWithBuilder:v48];
      [(FHDatabaseEntity *)selfCopy->_insightsDestinationEntity insertOrUpdate:v39 upsert:0];

      v16 = v41;
      v21 = 0x277CCA000;
LABEL_15:

      --v18;
    }

    while (v20 >= v16);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __111__FHInsightsSpendingTrends__computeAndStoreTrend_indexedAmountSums_insightFeatureName_insightType_trendWindow___block_invoke(double *a1, void *a2)
{
  v3 = a1[8];
  v4 = a2;
  [v4 addDoubleValueForField:@"features_insight_trends.trend_date" fieldValue:v3];
  [v4 addIntegerValueForField:@"features_insight_trends.trend_direction" fieldValue:*(a1 + 9)];
  [v4 addStringValueForField:@"features_insight_trends.trend_feature_name" fieldValue:*(a1 + 4)];
  [v4 addStringValueForField:@"features_insight_trends.trend_feature_type" fieldValue:*(a1 + 5)];
  [v4 addIntegerValueForField:@"features_insight_trends.trend_window" fieldValue:*(a1 + 10)];
  [v4 addNumberValueForField:@"features_insight_trends.trend_average" fieldValue:*(a1 + 6)];
  [v4 addDecimalNumberValueForField:@"features_insight_trends.trend_spend" fieldValue:*(a1 + 7)];
  v5 = @"Downward";
  if (*(a1 + 9) == 1)
  {
    v5 = @"Upward";
  }

  v6 = @"monthly";
  if (*(a1 + 10) == 1)
  {
    v6 = @"weekly";
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ trend for feature %@, type %@", v5, v6, *(a1 + 4), *(a1 + 5)];
  [v4 addStringValueForField:@"features_insight_trends.trend_readable_description" fieldValue:v7];
}

- (id)_kendallCoefficientWithIndexedAmountSums:(id)sums
{
  sumsCopy = sums;
  v4 = sumsCopy;
  if (!sumsCopy || [sumsCopy count] < 2)
  {
    goto LABEL_14;
  }

  if ([v4 count] == 1)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
    do
    {
      for (i = v7; i < [v4 count]; ++i)
      {
        v9 = [v4 objectAtIndex:v7];
        v10 = [v4 objectAtIndex:i];
        v11 = [v9 lessThan:v10];

        if (v11)
        {
          ++v5;
        }

        else
        {
          v12 = [v4 objectAtIndex:v7];
          v13 = [v4 objectAtIndex:i];
          v14 = [v12 greaterThan:v13];

          v6 += v14;
        }
      }

      ++v7;
    }

    while (v7 < [v4 count] - 1);
  }

  if (v6 + v5)
  {
    v15 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:(v5 - v6) / (v6 + v5)];
  }

  else
  {
LABEL_14:
    v15 = 0;
  }

  return v15;
}

+ (id)_defaultQueue
{
  if (_defaultQueue_onceToken != -1)
  {
    +[FHInsightsSpendingTrends _defaultQueue];
  }

  v3 = _defaultQueue_defaultQueue;

  return v3;
}

uint64_t __41__FHInsightsSpendingTrends__defaultQueue__block_invoke()
{
  _defaultQueue_defaultQueue = dispatch_queue_create("com.apple.finhealth.insights", 0);

  return MEMORY[0x2821F96F8]();
}

@end