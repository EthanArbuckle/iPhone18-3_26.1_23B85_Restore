@interface FHInsightsFetcher
+ (id)sharedInstance;
- (id)_init;
- (id)retrieveInsightsWithStartDate:(id)date endDate:(id)endDate insightTypeItems:(id)items trendWindow:(int64_t)window;
- (id)retrieveSpendInsightsWithStartDate:(id)date endDate:(id)endDate insightTypeItems:(id)items trendWindow:(int64_t)window sourceId:(id)id accountType:(int64_t)type;
- (id)totalSpendAmountBetweenDates:(id)dates endDate:(id)date sourceId:(id)id accountType:(int64_t)type;
@end

@implementation FHInsightsFetcher

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[FHInsightsFetcher sharedInstance];
  }

  v3 = sharedInstance_insightsFetcher;

  return v3;
}

uint64_t __35__FHInsightsFetcher_sharedInstance__block_invoke()
{
  sharedInstance_insightsFetcher = [[FHInsightsFetcher alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = FHInsightsFetcher;
  v2 = [(FHInsightsFetcher *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA988] decimalNumberHandlerWithRoundingMode:0 scale:2 raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
    roundingBehavior = v2->_roundingBehavior;
    v2->_roundingBehavior = v3;
  }

  return v2;
}

- (id)totalSpendAmountBetweenDates:(id)dates endDate:(id)date sourceId:(id)id accountType:(int64_t)type
{
  datesCopy = dates;
  dateCopy = date;
  idCopy = id;
  v12 = objc_opt_new();
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__0;
  v43 = __Block_byref_object_dispose__0;
  v44 = objc_opt_new();
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v13 = objc_alloc(MEMORY[0x277D087E8]);
  v14 = [v13 initWithEntity:*MEMORY[0x277D087B0]];
  fieldsInOrder = [v14 fieldsInOrder];
  v16 = MEMORY[0x277D087E0];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __79__FHInsightsFetcher_totalSpendAmountBetweenDates_endDate_sourceId_accountType___block_invoke;
  v30[3] = &unk_278FFC0F0;
  v17 = datesCopy;
  v31 = v17;
  v18 = dateCopy;
  v32 = v18;
  v19 = idCopy;
  v33 = v19;
  typeCopy = type;
  v20 = [v16 initWithBuilder:v30];
  v21 = *MEMORY[0x277D08750];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __79__FHInsightsFetcher_totalSpendAmountBetweenDates_endDate_sourceId_accountType___block_invoke_2;
  v29[3] = &unk_278FFC118;
  v29[4] = &v35;
  v29[5] = &v39;
  [v14 queryDataWithBlock:v20 logicalOperator:v21 selectFields:fieldsInOrder usingBlock:v29];
  v22 = MEMORY[0x277CCA980];
  v23 = [MEMORY[0x277CCABB0] numberWithDouble:v36[3]];
  v24 = v23;
  if (v23)
  {
    [v23 decimalValue];
  }

  else
  {
    v27[0] = 0;
    v27[1] = 0;
    v28 = 0;
  }

  v25 = [v22 decimalNumberWithDecimal:v27];
  [v12 setValue:v25 forKey:@"overallSpending"];

  [v12 setValue:v40[5] forKey:@"categorySpending"];
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);

  return v12;
}

void __79__FHInsightsFetcher_totalSpendAmountBetweenDates_endDate_sourceId_accountType___block_invoke(void *a1, void *a2)
{
  v5 = a2;
  [v5 addDateClause:*MEMORY[0x277D086C0] fieldName:@"transactions.t_date" expression:a1[4]];
  [v5 addDateClause:*MEMORY[0x277D086C8] fieldName:@"transactions.t_date" expression:a1[5]];
  [v5 addIntegerClause:*MEMORY[0x277D086D0] fieldName:@"transactions.t_fh_internal_state" expression:6];
  v3 = a1[7];
  if (a1[6])
  {
    if (v3 != 2)
    {
      v4 = v5;
      if (v3 != 4)
      {
        goto LABEL_8;
      }

      [v5 addStringClause:*MEMORY[0x277D086B8] fieldName:@"transactions.t_source_identifier" expression:?];
      goto LABEL_7;
    }
  }

  else
  {
    v4 = v5;
    if (v3 != 2)
    {
      goto LABEL_8;
    }
  }

  [v5 addIntegerClause:*MEMORY[0x277D086B8] fieldName:@"transactions.a_type" expression:2];
LABEL_7:
  v4 = v5;
LABEL_8:
}

void __79__FHInsightsFetcher_totalSpendAmountBetweenDates_endDate_sourceId_accountType___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [v14 signedIntegerAtIndex:17];
  v4 = [v14 signedIntegerAtIndex:13];
  if (v3 == 13 || !v3)
  {
    v5 = MEMORY[0x277CCA980];
    v6 = [v14 objectAtIndex:9];
    v7 = [v6 stringValue];
    v8 = [v5 decimalNumberWithString:v7];

    if (v4 <= 8 && ((1 << v4) & 0x103) != 0)
    {
      v9 = *(*(*(a1 + 32) + 8) + 24);
      v10 = [v14 objectAtIndex:9];
      [v10 doubleValue];
      *(*(*(a1 + 32) + 8) + 24) = v9 + v11;

      v12 = *(*(*(a1 + 40) + 8) + 40);
      v13 = [v14 objectAtIndex:27];
      [v12 setOrAddToDecimalValue:v8 forKey:v13];
    }
  }
}

- (id)retrieveSpendInsightsWithStartDate:(id)date endDate:(id)endDate insightTypeItems:(id)items trendWindow:(int64_t)window sourceId:(id)id accountType:(int64_t)type
{
  v110 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  idCopy = id;
  v15 = *MEMORY[0x277D087C0];
  v16 = FinHealthLogObject();
  v17 = FinHealthLogObject();
  ptr = self;
  v18 = os_signpost_id_make_with_pointer(v17, self);

  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24ABED000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v18, "insight:retriveSpendingInsights", "", buf, 2u);
  }

  v19 = FinHealthLogObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24ABED000, v19, OS_LOG_TYPE_INFO, "BEGIN insight:retriveSpendingInsights", buf, 2u);
  }

  v93 = objc_alloc_init(FHOverallSpendInsight);
  v97 = objc_opt_new();
  v20 = +[FHInsightsFetcher sharedInstance];
  v21 = [v20 totalSpendAmountBetweenDates:dateCopy endDate:endDateCopy sourceId:idCopy accountType:type];

  v22 = [v21 objectForKey:@"overallSpending"];
  [v22 doubleValue];
  v24 = v23;

  v91 = v21;
  v25 = [v21 objectForKey:@"categorySpending"];
  v98 = objc_opt_new();
  v26 = [MEMORY[0x277CBEAA8] now];
  v27 = FHIsDateBetweenDates();

  if (v27)
  {
    v28 = [MEMORY[0x277CBEAA8] now];
    v29 = FHNumberOfDaysBetweenDates();
  }

  else
  {
    v29 = FHNumberOfDaysBetweenDates();
  }

  v92 = idCopy;
  switch(window)
  {
    case 3:
      v30 = FHStartOfLastYear();
      break;
    case 2:
      v31 = FHDateStartOfLastMonth();
      if (v29 == FHNumberOfDaysInMonthForDate() || v29 >= FHNumberOfDaysInMonthForDate())
      {
        FHNumberOfDaysInMonthForDate();
      }

      goto LABEL_19;
    case 1:
      v30 = FHDateFromNumberOfDays();
      break;
    default:
      v37 = 0.0;
      v41 = 3.40282347e38;
      v39 = v24;
      goto LABEL_24;
  }

  v31 = v30;
LABEL_19:
  v32 = FHDateFromNumberOfDays();
  v33 = +[FHInsightsFetcher sharedInstance];
  v34 = [v33 totalSpendAmountBetweenDates:v31 endDate:v32 sourceId:idCopy accountType:type];

  v35 = [v34 objectForKey:@"overallSpending"];
  [v35 doubleValue];
  v37 = v36;

  v38 = [v34 objectForKey:@"categorySpending"];

  v39 = v24 - v37;
  v40 = fabs(v24 - v37) / v37 * 100.0;
  if (v37 == 0.0)
  {
    v41 = 3.40282347e38;
  }

  else
  {
    v41 = v40;
  }

  v98 = v38;
LABEL_24:
  v42 = 2;
  if (v39 >= 0.0)
  {
    v42 = 1;
  }

  if (v39 == 0.0)
  {
    v43 = 0;
  }

  else
  {
    v43 = v42;
  }

  [(FHFeatureInsight *)v93 setDirection:v43];
  [(FHFeatureInsight *)v93 setType:@"FHInsightTypeOverallSpend"];
  v44 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v24 / 100.0];
  v45 = [v44 decimalNumberByRoundingAccordingToBehavior:self->_roundingBehavior];
  [(FHFeatureInsight *)v93 setSpendAmount:v45];

  v46 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v37 / 100.0];
  v47 = [v46 decimalNumberByRoundingAccordingToBehavior:self->_roundingBehavior];
  [(FHFeatureInsight *)v93 setAverageAmount:v47];

  v48 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v39 / 100.0];
  v49 = [v48 decimalNumberByRoundingAccordingToBehavior:self->_roundingBehavior];
  [(FHFeatureInsight *)v93 setSpendingInsightAmount:v49];

  v50 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v41];
  v51 = [v50 decimalNumberByRoundingAccordingToBehavior:self->_roundingBehavior];
  [(FHFeatureInsight *)v93 setSpendingInsightPercentageValue:v51];

  [(FHFeatureInsight *)v93 setStartDate:dateCopy];
  [(FHFeatureInsight *)v93 setEndDate:endDateCopy];
  windowCopy = window;
  [(FHFeatureInsight *)v93 setWindow:window];
  [(FHFeatureInsight *)v93 setCurrencyCode:@"USD"];
  [v97 addObject:v93];
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  obj = v25;
  v100 = [obj countByEnumeratingWithState:&v104 objects:v109 count:16];
  if (v100)
  {
    v94 = *v105;
    v95 = endDateCopy;
    do
    {
      for (i = 0; i != v100; ++i)
      {
        v53 = 0x277CCA000uLL;
        if (*v105 != v94)
        {
          objc_enumerationMutation(obj);
        }

        v54 = *(*(&v104 + 1) + 8 * i);
        v55 = objc_alloc_init(FHCategorySpendInsight);
        zero = [MEMORY[0x277CCA980] zero];
        zero2 = [MEMORY[0x277CCA980] zero];
        v103 = [obj objectForKeyedSubscript:v54];
        v58 = [v98 objectForKey:v54];

        if (v58)
        {
          v59 = [v98 objectForKeyedSubscript:v54];

          zero = v59;
        }

        v60 = [v103 decimalNumberBySubtracting:zero];
        v61 = [v60 decimalNumberByRoundingAccordingToBehavior:ptr->_roundingBehavior];

        zero3 = [MEMORY[0x277CCA980] zero];
        v63 = [zero compare:zero3];

        if (!v63)
        {
          [(FHFeatureInsight *)v55 setDirection:1];
          zero5 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:3.40282347e38];
LABEL_42:
          v68 = zero5;
          [(FHFeatureInsight *)v55 setSpendingInsightPercentageValue:zero5];
          goto LABEL_44;
        }

        zero4 = [MEMORY[0x277CCA980] zero];
        v65 = [v61 compare:zero4];

        if (!v65)
        {
          [(FHFeatureInsight *)v55 setDirection:0];
          zero5 = [MEMORY[0x277CCA980] zero];
          goto LABEL_42;
        }

        zero6 = [MEMORY[0x277CCA980] zero];
        v67 = [v61 compare:zero6];

        if (v67 == 1)
        {
          [(FHFeatureInsight *)v55 setDirection:1];
          v68 = [v61 decimalNumberByDividingBy:zero];
          v69 = [MEMORY[0x277CCA980] decimalNumberWithString:@"100"];
          v70 = [v68 decimalNumberByMultiplyingBy:v69];
          v71 = [v70 decimalNumberByRoundingAccordingToBehavior:ptr->_roundingBehavior];
          [(FHFeatureInsight *)v55 setSpendingInsightPercentageValue:v71];

          v53 = 0x277CCA000;
        }

        else
        {
          [(FHFeatureInsight *)v55 setDirection:2];
          v68 = [zero decimalNumberBySubtracting:v103];
          v73 = [v68 decimalNumberByDividingBy:zero];
          v74 = [MEMORY[0x277CCA980] decimalNumberWithString:@"100"];
          v75 = [v73 decimalNumberByMultiplyingBy:v74];
          v76 = [v75 decimalNumberByRoundingAccordingToBehavior:ptr->_roundingBehavior];
          [(FHFeatureInsight *)v55 setSpendingInsightPercentageValue:v76];

          v53 = 0x277CCA000uLL;
        }

LABEL_44:

        [(FHFeatureInsight *)v55 setType:@"FHInsightTypeCategorySpend"];
        defaultDatabaseAmountMultiplier = [*(v53 + 2432) defaultDatabaseAmountMultiplier];
        [v103 decimalNumberByDividingBy:defaultDatabaseAmountMultiplier];
        v79 = v78 = v53;
        [(FHFeatureInsight *)v55 setSpendAmount:v79];

        defaultDatabaseAmountMultiplier2 = [*(v78 + 2432) defaultDatabaseAmountMultiplier];
        v81 = [zero decimalNumberByDividingBy:defaultDatabaseAmountMultiplier2];
        [(FHFeatureInsight *)v55 setAverageAmount:v81];

        defaultDatabaseAmountMultiplier3 = [*(v78 + 2432) defaultDatabaseAmountMultiplier];
        v83 = [v61 decimalNumberByDividingBy:defaultDatabaseAmountMultiplier3];
        [(FHFeatureInsight *)v55 setSpendingInsightAmount:v83];

        [(FHFeatureInsight *)v55 setStartDate:dateCopy];
        endDateCopy = v95;
        [(FHFeatureInsight *)v55 setEndDate:v95];
        [(FHFeatureInsight *)v55 setWindow:windowCopy];
        [(FHFeatureInsight *)v55 setCurrencyCode:@"USD"];
        -[FHCategorySpendInsight setMerchantCategory:](v55, "setMerchantCategory:", [v54 intValue]);
        [v97 addObject:v55];
      }

      v100 = [obj countByEnumeratingWithState:&v104 objects:v109 count:16];
    }

    while (v100);
  }

  v84 = FinHealthLogObject();
  v85 = FinHealthLogObject();
  v86 = os_signpost_id_make_with_pointer(v85, ptr);

  if (v86 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v84))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24ABED000, v84, OS_SIGNPOST_INTERVAL_END, v86, "insight:retriveSpendingInsights", "", buf, 2u);
  }

  v87 = FinHealthLogObject();
  if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24ABED000, v87, OS_LOG_TYPE_INFO, "END insight:retriveSpendingInsights", buf, 2u);
  }

  v88 = [v97 copy];
  v89 = *MEMORY[0x277D85DE8];

  return v88;
}

- (id)retrieveInsightsWithStartDate:(id)date endDate:(id)endDate insightTypeItems:(id)items trendWindow:(int64_t)window
{
  v48 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  itemsCopy = items;
  v13 = objc_alloc(MEMORY[0x277D087E8]);
  v14 = [v13 initWithEntity:*MEMORY[0x277D086F0]];
  fieldsInOrder = [v14 fieldsInOrder];
  v16 = [fieldsInOrder subarrayWithRange:{1, objc_msgSend(fieldsInOrder, "count") - 1}];
  v17 = MEMORY[0x277D087E0];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __88__FHInsightsFetcher_retrieveInsightsWithStartDate_endDate_insightTypeItems_trendWindow___block_invoke;
  v40[3] = &unk_278FFC140;
  v18 = dateCopy;
  v41 = v18;
  v19 = endDateCopy;
  v42 = v19;
  v20 = [v17 initWithBuilder:v40];
  v21 = *MEMORY[0x277D087C0];
  v22 = FinHealthLogObject();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v20;
    _os_log_impl(&dword_24ABED000, v22, OS_LOG_TYPE_DEBUG, "databaseClauses: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__0;
  v46 = __Block_byref_object_dispose__0;
  v47 = objc_opt_new();
  objc_initWeak(&location, self);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __88__FHInsightsFetcher_retrieveInsightsWithStartDate_endDate_insightTypeItems_trendWindow___block_invoke_119;
  v35[3] = &unk_278FFC168;
  objc_copyWeak(v38, &location);
  v23 = *MEMORY[0x277D08750];
  v38[1] = window;
  v24 = itemsCopy;
  v36 = v24;
  p_buf = &buf;
  [v14 queryDataWithBlock:v20 logicalOperator:v23 selectFields:v16 usingBlock:v35];
  v25 = *(*(&buf + 1) + 40);
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __88__FHInsightsFetcher_retrieveInsightsWithStartDate_endDate_insightTypeItems_trendWindow___block_invoke_2;
  v33 = &unk_278FFC190;
  v26 = v24;
  v34 = v26;
  [v25 sortUsingComparator:&v30];
  v27 = [*(*(&buf + 1) + 40) copy];

  objc_destroyWeak(v38);
  objc_destroyWeak(&location);
  _Block_object_dispose(&buf, 8);

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

void __88__FHInsightsFetcher_retrieveInsightsWithStartDate_endDate_insightTypeItems_trendWindow___block_invoke(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D086C0];
  v4 = *(a1 + 32);
  v5 = a2;
  [v5 addDateClause:v3 fieldName:@"features_insight_trends.trend_date" expression:v4];
  [v5 addDateClause:*MEMORY[0x277D086C8] fieldName:@"features_insight_trends.trend_date" expression:*(a1 + 40)];
}

void __88__FHInsightsFetcher_retrieveInsightsWithStartDate_endDate_insightTypeItems_trendWindow___block_invoke_119(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v35 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && (a4 & 1) == 0)
  {
    v7 = [v35 objectAtIndex:0];
    [v7 doubleValue];
    v9 = v8;

    v10 = [v35 objectAtIndex:1];
    v11 = [v10 intValue];

    v12 = [v35 objectAtIndex:5];
    v13 = [v12 intValue];

    v14 = [v35 objectAtIndex:4];
    [v14 doubleValue];
    v16 = v15;

    v17 = [v35 objectAtIndex:6];
    [v17 doubleValue];
    v19 = v18;

    v20 = [v35 objectAtIndex:2];
    v21 = [v20 stringValue];

    v22 = [v35 objectAtIndex:3];
    v23 = [v22 stringValue];

    if (*(a1 + 56) != v13 || ![*(a1 + 32) containsObject:v23])
    {
      goto LABEL_13;
    }

    v24 = v11;
    if ([v23 isEqualToString:@"FHInsightTypeCategorySpend"])
    {
      v25 = objc_alloc_init(FHCategorySpendInsight);
      [(FHFeatureInsight *)v25 setType:@"FHInsightTypeCategorySpend"];
      [(FHFeatureInsight *)v25 setDetectionType:2];
      [(FHFeatureInsight *)v25 setDirection:v24];
      [(FHCategorySpendInsight *)v25 setMerchantCategory:FHMerchantCategoryFromString()];
    }

    else if ([v23 isEqualToString:@"FHInsightTypeOverallSpend"])
    {
      v25 = objc_alloc_init(FHOverallSpendInsight);
      [(FHFeatureInsight *)v25 setType:@"FHInsightTypeOverallSpend"];
      [(FHFeatureInsight *)v25 setDetectionType:2];
      [(FHFeatureInsight *)v25 setDirection:v24];
    }

    else
    {
      if (![v23 isEqualToString:@"FHInsightTypeMerchantSpend"])
      {
        if (([v23 isEqualToString:@"FHInsightTypeAggregateTag"] & 1) == 0 && !objc_msgSend(v23, "isEqualToString:", @"FHInsightTypeCompoundTag"))
        {
          goto LABEL_13;
        }

        v25 = objc_alloc_init(FHSearchTagSpendInsight);
        [(FHFeatureInsight *)v25 setDetectionType:2];
        [(FHFeatureInsight *)v25 setDirection:v24];
        [(FHFeatureInsight *)v25 setWindow:v13];
        v30 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v9];
        [(FHFeatureInsight *)v25 setStartDate:v30];

        v31 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v9];
        [(FHFeatureInsight *)v25 setEndDate:v31];

        v32 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v16];
        [(FHFeatureInsight *)v25 setSpendAmount:v32];

        v33 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v19];
        [(FHFeatureInsight *)v25 setAverageAmount:v33];

        [(FHFeatureInsight *)v25 setCurrencyCode:@"USD"];
        if ([v23 isEqualToString:@"FHInsightTypeAggregateTag"])
        {
          v34 = @"FHInsightTypeAggregateTag";
        }

        else
        {
          v34 = @"FHInsightTypeCompoundTag";
        }

        [(FHFeatureInsight *)v25 setType:v34];
LABEL_12:
        [*(*(*(a1 + 40) + 8) + 40) addObject:v25];

LABEL_13:
        goto LABEL_14;
      }

      v25 = objc_alloc_init(FHMerchantSpendInsight);
      [(FHFeatureInsight *)v25 setType:@"FHInsightTypeMerchantSpend"];
      [(FHFeatureInsight *)v25 setDetectionType:2];
      [(FHFeatureInsight *)v25 setDirection:v24];
      [(FHCategorySpendInsight *)v25 setMerchantName:v21];
    }

    [(FHFeatureInsight *)v25 setWindow:v13];
    v26 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v9];
    [(FHFeatureInsight *)v25 setStartDate:v26];

    v27 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v9];
    [(FHFeatureInsight *)v25 setEndDate:v27];

    v28 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v16];
    [(FHFeatureInsight *)v25 setSpendAmount:v28];

    v29 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v19];
    [(FHFeatureInsight *)v25 setAverageAmount:v29];

    [(FHFeatureInsight *)v25 setCurrencyCode:@"USD"];
    goto LABEL_12;
  }

LABEL_14:
}

uint64_t __88__FHInsightsFetcher_retrieveInsightsWithStartDate_endDate_insightTypeItems_trendWindow___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 type];
  v9 = [v7 indexOfObject:v8];

  v10 = *(a1 + 32);
  v11 = [v6 type];
  v12 = [v10 indexOfObject:v11];

  if (v9 != 0x7FFFFFFFFFFFFFFFLL && v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v9 != v12)
    {
      v14 = v9 > v12;
      goto LABEL_14;
    }

    v15 = [v5 type];
    if ([v15 isEqualToString:@"FHInsightTypeCategorySpend"])
    {
      v16 = [v6 type];
      v17 = [v16 isEqualToString:@"FHInsightTypeCategorySpend"];

      if (v17)
      {
        v18 = [v5 merchantCategory];
        v14 = v18 <= [v6 merchantCategory];
        goto LABEL_14;
      }
    }

    else
    {
    }

    v19 = [v5 spendAmount];
    v20 = [v6 spendAmount];
    v14 = [v19 compare:v20];

    goto LABEL_14;
  }

  v14 = 0;
LABEL_14:

  return v14;
}

@end