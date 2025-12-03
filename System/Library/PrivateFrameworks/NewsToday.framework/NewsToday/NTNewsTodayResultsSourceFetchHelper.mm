@interface NTNewsTodayResultsSourceFetchHelper
- (NTNewsTodayResultsSourceFetchHelper)init;
- (NTNewsTodayResultsSourceFetchHelper)initWithSectionQueueDescriptors:(id)descriptors;
- (id)sectionDescriptorsAtHeadsOfQueues;
- (void)removeSectionDescriptors:(id)descriptors;
@end

@implementation NTNewsTodayResultsSourceFetchHelper

- (NTNewsTodayResultsSourceFetchHelper)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTNewsTodayResultsSourceFetchHelper init]";
    v10 = 2080;
    v11 = "NTNewsTodayResultsSourceFetchHelper.m";
    v12 = 1024;
    v13 = 33;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTNewsTodayResultsSourceFetchHelper init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTNewsTodayResultsSourceFetchHelper)initWithSectionQueueDescriptors:(id)descriptors
{
  v28 = *MEMORY[0x277D85DE8];
  descriptorsCopy = descriptors;
  if (!descriptorsCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsSourceFetchHelper initWithSectionQueueDescriptors:];
  }

  v26.receiver = self;
  v26.super_class = NTNewsTodayResultsSourceFetchHelper;
  v5 = [(NTNewsTodayResultsSourceFetchHelper *)&v26 init];
  if (v5)
  {
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = descriptorsCopy;
    v8 = descriptorsCopy;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          sectionDescriptors = [v13 sectionDescriptors];
          if ([sectionDescriptors count])
          {
            [(NSMutableArray *)v6 addObject:v13];
            v15 = [sectionDescriptors mutableCopy];
            [(NSMutableDictionary *)v7 setObject:v15 forKeyedSubscript:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v10);
    }

    sectionQueueDescriptors = v5->_sectionQueueDescriptors;
    v5->_sectionQueueDescriptors = v6;
    v17 = v6;

    remainingSectionsBySectionQueueDescriptors = v5->_remainingSectionsBySectionQueueDescriptors;
    v5->_remainingSectionsBySectionQueueDescriptors = v7;

    descriptorsCopy = v21;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)sectionDescriptorsAtHeadsOfQueues
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  sectionQueueDescriptors = [(NTNewsTodayResultsSourceFetchHelper *)self sectionQueueDescriptors];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__NTNewsTodayResultsSourceFetchHelper_sectionDescriptorsAtHeadsOfQueues__block_invoke;
  v11[3] = &unk_279983070;
  v11[4] = self;
  v12 = v4;
  v6 = v3;
  v13 = v6;
  v7 = v4;
  [sectionQueueDescriptors enumerateObjectsUsingBlock:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

void __72__NTNewsTodayResultsSourceFetchHelper_sectionDescriptorsAtHeadsOfQueues__block_invoke(id *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] remainingSectionsBySectionQueueDescriptors];
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = [v5 fc_subarrayWithMaxCount:{objc_msgSend(v3, "visibleSectionConfigsLimit")}];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v12 identifier];
        if (([a1[5] containsObject:v13] & 1) == 0)
        {
          v14 = [[NTNewsTodayResultsSourceFetchHelperSectionDescriptor alloc] initWithSectionDescriptor:v12 parentSectionQueueDescriptor:v3];
          [a1[6] addObject:v14];
          [a1[5] addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)removeSectionDescriptors:(id)descriptors
{
  v32 = *MEMORY[0x277D85DE8];
  descriptorsCopy = descriptors;
  if (!descriptorsCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsTodayResultsSourceFetchHelper removeSectionDescriptors:];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = descriptorsCopy;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        objc_opt_class();
        v11 = FCCheckedDynamicCast();
        parentSectionQueueDescriptor = [v11 parentSectionQueueDescriptor];
        remainingSectionsBySectionQueueDescriptors = [(NTNewsTodayResultsSourceFetchHelper *)self remainingSectionsBySectionQueueDescriptors];
        v14 = [remainingSectionsBySectionQueueDescriptors objectForKeyedSubscript:parentSectionQueueDescriptor];

        if (![v14 count] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"expected inequality between %s and %s", "remainingSectionsForParent.count", "0"];
          *buf = 136315906;
          v24 = "[NTNewsTodayResultsSourceFetchHelper removeSectionDescriptors:]";
          v25 = 2080;
          v26 = "NTNewsTodayResultsSourceFetchHelper.m";
          v27 = 1024;
          v28 = 104;
          v29 = 2114;
          v30 = v17;
          _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

        if ([v14 count] == 1)
        {
          sectionQueueDescriptors = [(NTNewsTodayResultsSourceFetchHelper *)self sectionQueueDescriptors];
          [sectionQueueDescriptors removeObject:parentSectionQueueDescriptor];

          remainingSectionsBySectionQueueDescriptors2 = [(NTNewsTodayResultsSourceFetchHelper *)self remainingSectionsBySectionQueueDescriptors];
          [remainingSectionsBySectionQueueDescriptors2 removeObjectForKey:parentSectionQueueDescriptor];
        }

        else
        {
          [v14 removeObjectAtIndex:0];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v31 count:16];
    }

    while (v7);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)initWithSectionQueueDescriptors:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "sectionQueueDescriptors", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeSectionDescriptors:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "sectionDescriptors", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end