@interface NTNewsTodayResultsContentFillAggregator
- (NTNewsTodayResultsContentFillAggregator)init;
- (NTNewsTodayResultsContentFillAggregator)initWithAggregator:(id)aggregator minHeadlineScale:(double)scale maxHeadlineScale:(double)headlineScale;
- (id)_aggregateSections:(id)sections itemsBySectionDescriptor:(id)descriptor budgetInfo:(id)info todayData:(id)data scale:(double)scale;
- (id)_bestResultOfResults:(id)results withBudgetInfo:(id)info;
- (id)aggregateSections:(id)sections itemsBySectionDescriptor:(id)descriptor budgetInfo:(id)info todayData:(id)data;
@end

@implementation NTNewsTodayResultsContentFillAggregator

- (NTNewsTodayResultsContentFillAggregator)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTNewsTodayResultsContentFillAggregator init]";
    v10 = 2080;
    v11 = "NTNewsTodayResultsContentFillAggregator.m";
    v12 = 1024;
    v13 = 24;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTNewsTodayResultsContentFillAggregator init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTNewsTodayResultsContentFillAggregator)initWithAggregator:(id)aggregator minHeadlineScale:(double)scale maxHeadlineScale:(double)headlineScale
{
  aggregatorCopy = aggregator;
  if (!aggregatorCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsContentFillAggregator initWithAggregator:minHeadlineScale:maxHeadlineScale:];
  }

  scaleCopy5 = scale;
  if (scale < 0.0)
  {
    v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    scaleCopy5 = scale;
    if (v9)
    {
      [NTNewsTodayResultsContentFillAggregator initWithAggregator:minHeadlineScale:maxHeadlineScale:];
      scaleCopy5 = scale;
    }
  }

  if (headlineScale < 0.0)
  {
    v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    scaleCopy5 = scale;
    if (v10)
    {
      [NTNewsTodayResultsContentFillAggregator initWithAggregator:minHeadlineScale:maxHeadlineScale:];
      scaleCopy5 = scale;
    }
  }

  if (scaleCopy5 > headlineScale && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsContentFillAggregator initWithAggregator:minHeadlineScale:maxHeadlineScale:];
  }

  v23.receiver = self;
  v23.super_class = NTNewsTodayResultsContentFillAggregator;
  v11 = [(NTNewsTodayResultsContentFillAggregator *)&v23 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_aggregator, aggregator);
    v13.f64[0] = scale;
    v13.f64[1] = v21;
    __asm { FMOV            V1.2D, #1.0 }

    *&v12->_minHeadlineScale = vbslq_s8(vceqzq_f64(v13), _Q1, v13);
  }

  return v12;
}

- (id)aggregateSections:(id)sections itemsBySectionDescriptor:(id)descriptor budgetInfo:(id)info todayData:(id)data
{
  sectionsCopy = sections;
  descriptorCopy = descriptor;
  infoCopy = info;
  dataCopy = data;
  [(NTNewsTodayResultsContentFillAggregator *)self minHeadlineScale];
  v15 = v14;
  [(NTNewsTodayResultsContentFillAggregator *)self maxHeadlineScale];
  v17 = v16;
  sectionSlotCostInfo = [infoCopy sectionSlotCostInfo];
  [sectionSlotCostInfo headlineSlotCost];
  v20 = v19;
  sectionSlotCostInfo2 = [infoCopy sectionSlotCostInfo];
  [sectionSlotCostInfo2 sectionTitleSlotCost];
  v23 = v22;
  sectionSlotCostInfo3 = [infoCopy sectionSlotCostInfo];
  [sectionSlotCostInfo3 sectionFooterSlotCost];
  v26 = v25;
  [infoCopy slotsLimit];
  v28 = v27;

  sectionSlotCostInfo4 = [infoCopy sectionSlotCostInfo];
  [sectionSlotCostInfo4 sectionTitleSlotCost];
  v31 = v30;
  [infoCopy slotsLimit];
  v33 = v31 / v32;

  v34 = objc_opt_new();
  v56 = MEMORY[0x277D85DD0];
  v57 = 3221225472;
  v58 = __107__NTNewsTodayResultsContentFillAggregator_aggregateSections_itemsBySectionDescriptor_budgetInfo_todayData___block_invoke;
  v59 = &unk_2799834F8;
  selfCopy = self;
  v35 = sectionsCopy;
  v61 = v35;
  v36 = descriptorCopy;
  v62 = v36;
  v37 = infoCopy;
  v63 = v37;
  v38 = dataCopy;
  v64 = v38;
  v39 = v34;
  v65 = v39;
  v40 = _Block_copy(&v56);
  if (v15 != 1.0)
  {
    v41 = v15 - (v20 + v23 + v26) / v28;
    v42 = 1.0 - v33;
    if (1.0 - v33 >= v41 && v42 > 0.0)
    {
      do
      {
        v40[2](v40, v42);
        v42 = v42 - v33;
      }

      while (v42 >= v41 && v42 > 0.0);
    }
  }

  if (v17 != 1.0)
  {
    for (i = v33 + 1.0; i <= v17; i = v33 + i)
    {
      v40[2](v40, i);
    }
  }

  v40[2](v40, 1.0);
  if (![v39 count])
  {
    aggregator = [(NTNewsTodayResultsContentFillAggregator *)self aggregator];
    v45 = [aggregator aggregateSections:v35 itemsBySectionDescriptor:v36 budgetInfo:v37 todayData:v38];

    [(NTNewsTodayResultsContentFillAggregator *)self maxHeadlineScale];
    v46 = [v45 copyWithHeadlineScale:?];
    [v46 slotCostWithInfo:v37];
    v48 = v47;
    [v37 slotsLimit];
    if (v48 <= v49)
    {
      v52 = v39;
      v53 = v46;
    }

    else
    {
      [(NTNewsTodayResultsContentFillAggregator *)self minHeadlineScale];
      if (v50 > 1.0)
      {
        [(NTNewsTodayResultsContentFillAggregator *)self minHeadlineScale];
        v51 = [v45 copyWithHeadlineScale:?];
        [v39 addObject:v51];

LABEL_16:
        goto LABEL_17;
      }

      v52 = v39;
      v53 = v45;
    }

    [v52 addObject:v53];
    goto LABEL_16;
  }

LABEL_17:
  v54 = [(NTNewsTodayResultsContentFillAggregator *)self _bestResultOfResults:v39 withBudgetInfo:v37];

  return v54;
}

uint64_t __107__NTNewsTodayResultsContentFillAggregator_aggregateSections_itemsBySectionDescriptor_budgetInfo_todayData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _aggregateSections:*(a1 + 40) itemsBySectionDescriptor:*(a1 + 48) budgetInfo:*(a1 + 56) todayData:*(a1 + 64) scale:?];
  v3 = v2;
  if (v2)
  {
    v5 = v2;
    v2 = [*(a1 + 72) addObject:v2];
    v3 = v5;
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

- (id)_aggregateSections:(id)sections itemsBySectionDescriptor:(id)descriptor budgetInfo:(id)info todayData:(id)data scale:(double)scale
{
  sectionsCopy = sections;
  descriptorCopy = descriptor;
  infoCopy = info;
  dataCopy = data;
  if (!sectionsCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsContentFillAggregator _aggregateSections:itemsBySectionDescriptor:budgetInfo:todayData:scale:];
    if (descriptorCopy)
    {
      goto LABEL_6;
    }
  }

  else if (descriptorCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsContentFillAggregator _aggregateSections:itemsBySectionDescriptor:budgetInfo:todayData:scale:];
  }

LABEL_6:
  if (!infoCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsContentFillAggregator _aggregateSections:itemsBySectionDescriptor:budgetInfo:todayData:scale:];
  }

  if (scale <= 0.0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsContentFillAggregator _aggregateSections:itemsBySectionDescriptor:budgetInfo:todayData:scale:];
  }

  v16 = [infoCopy copy];
  sectionSlotCostInfo = [v16 sectionSlotCostInfo];
  [sectionSlotCostInfo headlineSlotCost];
  [sectionSlotCostInfo setHeadlineSlotCost:v18 * scale];

  aggregator = [(NTNewsTodayResultsContentFillAggregator *)self aggregator];
  v20 = [aggregator aggregateSections:sectionsCopy itemsBySectionDescriptor:descriptorCopy budgetInfo:v16 todayData:dataCopy];

  [v20 sectionOverheadSlotCostWithInfo:infoCopy];
  v22 = v21;
  sectionSlotCostInfo2 = [infoCopy sectionSlotCostInfo];
  [sectionSlotCostInfo2 headlineSlotCost];
  [v20 headlineSlotCostWithSlotCost:?];
  v25 = v24;

  [infoCopy slotsLimit];
  v27 = (v26 - v22) / v25;
  [(NTNewsTodayResultsContentFillAggregator *)self minHeadlineScale];
  if (v28 <= v27 && ([(NTNewsTodayResultsContentFillAggregator *)self maxHeadlineScale], v27 <= v29))
  {
    v30 = [v20 copyWithHeadlineScale:v27];
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (id)_bestResultOfResults:(id)results withBudgetInfo:(id)info
{
  v19[2] = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  infoCopy = info;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __79__NTNewsTodayResultsContentFillAggregator__bestResultOfResults_withBudgetInfo___block_invoke;
  v17[3] = &unk_279983520;
  v7 = infoCopy;
  v18 = v7;
  v8 = [resultsCopy fc_arrayOfObjectsPassingTest:v17];
  if ([v8 count])
  {
    v9 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"itemCount" ascending:0];
    v10 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"headlineScale" ascending:1 comparator:&__block_literal_global_7];
    v19[0] = v10;
    v19[1] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    v12 = [v8 sortedArrayUsingDescriptors:v11];
    firstObject = [v12 firstObject];
  }

  else
  {
    v16 = resultsCopy;
    firstObject = [v16 firstObject];
    v9 = v16;
  }

  v14 = *MEMORY[0x277D85DE8];

  return firstObject;
}

BOOL __79__NTNewsTodayResultsContentFillAggregator__bestResultOfResults_withBudgetInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 slotsLimit];
  v6 = v5;
  [v4 slotCostWithInfo:*(a1 + 32)];
  v8 = v7;

  return vabdd_f64(v6, v8) < 0.01;
}

uint64_t __79__NTNewsTodayResultsContentFillAggregator__bestResultOfResults_withBudgetInfo___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 doubleValue];
  v7 = v6 + -1.0;
  if (v7 < 0.0)
  {
    v7 = -v7;
  }

  v8 = [v4 numberWithDouble:v7];
  v9 = MEMORY[0x277CCABB0];
  [v5 doubleValue];
  v11 = v10;

  v12 = v11 + -1.0;
  if (v11 + -1.0 < 0.0)
  {
    v12 = -(v11 + -1.0);
  }

  v13 = [v9 numberWithDouble:v12];
  v14 = [v8 compare:v13];

  return v14;
}

- (void)initWithAggregator:minHeadlineScale:maxHeadlineScale:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "aggregator", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithAggregator:minHeadlineScale:maxHeadlineScale:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "0 <= minHeadlineScale", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithAggregator:minHeadlineScale:maxHeadlineScale:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "0 <= maxHeadlineScale", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithAggregator:minHeadlineScale:maxHeadlineScale:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "minHeadlineScale <= maxHeadlineScale", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_aggregateSections:itemsBySectionDescriptor:budgetInfo:todayData:scale:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "sectionDescriptors", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_aggregateSections:itemsBySectionDescriptor:budgetInfo:todayData:scale:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "itemsBySectionDescriptor", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_aggregateSections:itemsBySectionDescriptor:budgetInfo:todayData:scale:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "budgetInfo", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_aggregateSections:itemsBySectionDescriptor:budgetInfo:todayData:scale:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "inputScale > 0", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end