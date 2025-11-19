@interface NTItemAggregationResult
- (NTItemAggregationResult)init;
- (NTItemAggregationResult)initWithAggregatedItemsBySectionDescriptor:(id)a3 unusedSectionDescriptors:(id)a4 debugInspectionsBySectionDescriptor:(id)a5;
- (double)headlineSlotCostWithSlotCost:(double)a3;
- (double)sectionOverheadSlotCostWithInfo:(id)a3;
- (double)slotCostWithInfo:(id)a3;
- (id)copyWithHeadlineScale:(double)a3;
- (unint64_t)itemCount;
@end

@implementation NTItemAggregationResult

- (NTItemAggregationResult)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTItemAggregationResult init]";
    v10 = 2080;
    v11 = "NTNewsTodayResultsExplicitAllocationAggregator.m";
    v12 = 1024;
    v13 = 59;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTItemAggregationResult init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTItemAggregationResult)initWithAggregatedItemsBySectionDescriptor:(id)a3 unusedSectionDescriptors:(id)a4 debugInspectionsBySectionDescriptor:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTItemAggregationResult initWithAggregatedItemsBySectionDescriptor:unusedSectionDescriptors:debugInspectionsBySectionDescriptor:];
    if (v9)
    {
      goto LABEL_6;
    }
  }

  else if (v9)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTItemAggregationResult initWithAggregatedItemsBySectionDescriptor:unusedSectionDescriptors:debugInspectionsBySectionDescriptor:];
  }

LABEL_6:
  v19.receiver = self;
  v19.super_class = NTItemAggregationResult;
  v11 = [(NTItemAggregationResult *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    aggregatedItemsBySectionDescriptor = v11->_aggregatedItemsBySectionDescriptor;
    v11->_aggregatedItemsBySectionDescriptor = v12;

    v14 = [v9 copy];
    unusedSectionDescriptors = v11->_unusedSectionDescriptors;
    v11->_unusedSectionDescriptors = v14;

    v16 = [v10 copy];
    debugInspectionsBySectionDescriptor = v11->_debugInspectionsBySectionDescriptor;
    v11->_debugInspectionsBySectionDescriptor = v16;

    v11->_headlineScale = 1.0;
  }

  return v11;
}

- (id)copyWithHeadlineScale:(double)a3
{
  v5 = [NTItemAggregationResult alloc];
  v6 = [(NTItemAggregationResult *)self aggregatedItemsBySectionDescriptor];
  v7 = [(NTItemAggregationResult *)self unusedSectionDescriptors];
  v8 = [(NTItemAggregationResult *)self debugInspectionsBySectionDescriptor];
  v9 = [(NTItemAggregationResult *)v5 initWithAggregatedItemsBySectionDescriptor:v6 unusedSectionDescriptors:v7 debugInspectionsBySectionDescriptor:v8];

  [(NTItemAggregationResult *)v9 setHeadlineScale:a3];
  return v9;
}

- (double)headlineSlotCostWithSlotCost:(double)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(NTItemAggregationResult *)self aggregatedItemsBySectionDescriptor];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__NTItemAggregationResult_headlineSlotCostWithSlotCost___block_invoke;
  v10[3] = &unk_2799833B0;
  v10[4] = &v11;
  *&v10[5] = a3;
  [v5 enumerateKeysAndObjectsUsingBlock:v10];

  v6 = v12[3];
  [(NTItemAggregationResult *)self headlineScale];
  v8 = v6 * v7;
  _Block_object_dispose(&v11, 8);
  return v8;
}

double __56__NTItemAggregationResult_headlineSlotCostWithSlotCost___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 40);
  v5 = [a3 count];
  v6 = *(*(a1 + 32) + 8);
  result = *(v6 + 24) + v4 * v5;
  *(v6 + 24) = result;
  return result;
}

- (double)sectionOverheadSlotCostWithInfo:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [(NTItemAggregationResult *)self aggregatedItemsBySectionDescriptor];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__NTItemAggregationResult_sectionOverheadSlotCostWithInfo___block_invoke;
  v9[3] = &unk_2799833D8;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __59__NTItemAggregationResult_sectionOverheadSlotCostWithInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = [a3 count];
  v6 = v15;
  if (v5)
  {
    v7 = [v15 name];
    if (v7)
    {
      v8 = v7;
      v9 = [*(a1 + 32) allowSectionTitles];

      if (v9)
      {
        v10 = [*(a1 + 32) sectionSlotCostInfo];
        [v10 sectionTitleSlotCost];
        *(*(*(a1 + 40) + 8) + 24) = v11 + *(*(*(a1 + 40) + 8) + 24);
      }
    }

    v12 = [*(a1 + 32) sectionSlotCostInfo];
    [v12 sectionFooterSlotCost];
    *(*(*(a1 + 40) + 8) + 24) = v13 + *(*(*(a1 + 40) + 8) + 24);

    v6 = v15;
  }

  return MEMORY[0x2821F96F8](v5, v6);
}

- (double)slotCostWithInfo:(id)a3
{
  v4 = a3;
  [(NTItemAggregationResult *)self sectionOverheadSlotCostWithInfo:v4];
  v6 = v5;
  v7 = [v4 sectionSlotCostInfo];

  [v7 headlineSlotCost];
  [(NTItemAggregationResult *)self headlineSlotCostWithSlotCost:?];
  v9 = v6 + v8;

  return v9;
}

- (unint64_t)itemCount
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(NTItemAggregationResult *)self aggregatedItemsBySectionDescriptor];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [*(*(&v11 + 1) + 8 * i) count];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)initWithAggregatedItemsBySectionDescriptor:unusedSectionDescriptors:debugInspectionsBySectionDescriptor:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "aggregatedItemsBySectionDescriptor", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithAggregatedItemsBySectionDescriptor:unusedSectionDescriptors:debugInspectionsBySectionDescriptor:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "unusedSectionDescriptors", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end