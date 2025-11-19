@interface NTPBTodayPersonalizationEvent(FTAdditions)
+ (id)ft_eventWithDate:()FTAdditions action:headline:section:headlineIndexInSection:precedingHeadlinesCount:precedingSectionsCount:;
@end

@implementation NTPBTodayPersonalizationEvent(FTAdditions)

+ (id)ft_eventWithDate:()FTAdditions action:headline:section:headlineIndexInSection:precedingHeadlinesCount:precedingSectionsCount:
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  if (!v14 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NTPBTodayPersonalizationEvent(FTAdditions) ft_eventWithDate:action:headline:section:headlineIndexInSection:precedingHeadlinesCount:precedingSectionsCount:];
    if (v15)
    {
      goto LABEL_6;
    }
  }

  else if (v15)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NTPBTodayPersonalizationEvent(FTAdditions) ft_eventWithDate:action:headline:section:headlineIndexInSection:precedingHeadlinesCount:precedingSectionsCount:];
  }

LABEL_6:
  if (!v16 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NTPBTodayPersonalizationEvent(FTAdditions) ft_eventWithDate:action:headline:section:headlineIndexInSection:precedingHeadlinesCount:precedingSectionsCount:];
  }

  v17 = [v15 personalizationMetadata];
  if (!v17 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NTPBTodayPersonalizationEvent(FTAdditions) ft_eventWithDate:action:headline:section:headlineIndexInSection:precedingHeadlinesCount:precedingSectionsCount:];
  }

  v18 = objc_opt_new();
  [v14 timeIntervalSince1970];
  [v18 setCreatedAt:?];
  [v18 setAction:a4];
  v19 = [v17 articleID];
  [v18 setArticleId:v19];

  v20 = [v17 scoredTopicIDs];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __157__NTPBTodayPersonalizationEvent_FTAdditions__ft_eventWithDate_action_headline_section_headlineIndexInSection_precedingHeadlinesCount_precedingSectionsCount___block_invoke;
  v25[3] = &unk_279983758;
  v21 = v18;
  v26 = v21;
  [v20 enumerateKeysAndObjectsUsingBlock:v25];

  v22 = [v17 publisherID];
  [v21 setHeadlinePublisher:v22];

  [v21 setOrderInGroup:a7];
  [v21 setOverallOrder:a8];
  [v21 setSectionOrder:a9];
  v23 = [v16 personalizationFeatureID];
  [v21 setPersonalizationSectionFeatureId:v23];

  return v21;
}

+ (void)ft_eventWithDate:()FTAdditions action:headline:section:headlineIndexInSection:precedingHeadlinesCount:precedingSectionsCount:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "date", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)ft_eventWithDate:()FTAdditions action:headline:section:headlineIndexInSection:precedingHeadlinesCount:precedingSectionsCount:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "headline", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)ft_eventWithDate:()FTAdditions action:headline:section:headlineIndexInSection:precedingHeadlinesCount:precedingSectionsCount:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "section", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)ft_eventWithDate:()FTAdditions action:headline:section:headlineIndexInSection:precedingHeadlinesCount:precedingSectionsCount:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "personalizationMetadata", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end