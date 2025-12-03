@interface NTTodayConfigConversionOperation
- (BOOL)validateOperation;
- (NTTodayConfigConversionOperation)init;
- (id)_todayConfigWithConfigJSON:(id)n error:(id *)error;
- (void)_collectRecordIDsReferencedBySectionConfig:(id)config withArticleListIDs:(id)ds articleIDs:(id)iDs;
- (void)_collectRecordIDsReferencedByTodayConfig:(id)config withArticleListIDs:(id)ds articleIDs:(id)iDs;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
- (void)validateOperation;
@end

@implementation NTTodayConfigConversionOperation

- (NTTodayConfigConversionOperation)init
{
  v3.receiver = self;
  v3.super_class = NTTodayConfigConversionOperation;
  return [(FCOperation *)&v3 init];
}

- (BOOL)validateOperation
{
  widgetConfiguration = [(NTTodayConfigConversionOperation *)self widgetConfiguration];

  if (!widgetConfiguration && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayConfigConversionOperation validateOperation];
  }

  configuration = [(NTTodayConfigConversionOperation *)self configuration];

  if (!configuration && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayConfigConversionOperation validateOperation];
  }

  context = [(NTTodayConfigConversionOperation *)self context];

  if (!context && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayConfigConversionOperation validateOperation];
  }

  defaultConfigCompletionHandler = [(NTTodayConfigConversionOperation *)self defaultConfigCompletionHandler];

  if (!defaultConfigCompletionHandler && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayConfigConversionOperation validateOperation];
  }

  singleTagConfigCompletionHandler = [(NTTodayConfigConversionOperation *)self singleTagConfigCompletionHandler];

  if (!singleTagConfigCompletionHandler && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayConfigConversionOperation validateOperation];
  }

  if (widgetConfiguration)
  {
    v8 = configuration == 0;
  }

  else
  {
    v8 = 1;
  }

  return !v8 && context != 0 && defaultConfigCompletionHandler != 0 && singleTagConfigCompletionHandler != 0;
}

- (void)performOperation
{
  widgetConfiguration = [(NTTodayConfigConversionOperation *)self widgetConfiguration];
  v4 = FCAppConfigurationDictionaryValue();

  v25 = 0;
  v5 = [(NTTodayConfigConversionOperation *)self _todayConfigWithConfigJSON:v4 error:&v25];
  v20 = v25;
  [(NTTodayConfigConversionOperation *)self setResultDefaultConfig:v5];
  [(NTTodayConfigConversionOperation *)self setDefaultConfigError:v20];
  widgetConfiguration2 = [(NTTodayConfigConversionOperation *)self widgetConfiguration];
  v7 = FCAppConfigurationDictionaryValue();

  v24 = 0;
  v8 = [(NTTodayConfigConversionOperation *)self _todayConfigWithConfigJSON:v7 error:&v24];
  v9 = v24;
  [(NTTodayConfigConversionOperation *)self setResultSingleTagConfig:v8];
  [(NTTodayConfigConversionOperation *)self setSingleTagConfigError:v9];
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  [(NTTodayConfigConversionOperation *)self _collectRecordIDsReferencedByTodayConfig:v5 withArticleListIDs:v10 articleIDs:v11];
  [(NTTodayConfigConversionOperation *)self _collectRecordIDsReferencedByTodayConfig:v8 withArticleListIDs:v10 articleIDs:v11];
  v12 = objc_alloc_init(NTWidgetConfigDataOperation);
  context = [(NTTodayConfigConversionOperation *)self context];
  [(NTWidgetConfigDataOperation *)v12 setContext:context];

  configuration = [(NTTodayConfigConversionOperation *)self configuration];
  [(NTWidgetConfigDataOperation *)v12 setConfiguration:configuration];

  widgetConfiguration3 = [(NTTodayConfigConversionOperation *)self widgetConfiguration];
  [(NTWidgetConfigDataOperation *)v12 setWidgetConfiguration:widgetConfiguration3];

  allObjects = [v11 allObjects];
  [(NTWidgetConfigDataOperation *)v12 setExpectedArticleIDs:allObjects];

  allObjects2 = [v10 allObjects];
  [(NTWidgetConfigDataOperation *)v12 setExpectedArticleListIDs:allObjects2];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __52__NTTodayConfigConversionOperation_performOperation__block_invoke;
  v21[3] = &unk_2799837B8;
  v21[4] = self;
  v22 = v4;
  v23 = v7;
  v18 = v7;
  v19 = v4;
  [(NTWidgetConfigDataOperation *)v12 setWidgetConfigDataCompletionHandler:v21];
  [(FCOperation *)self associateChildOperation:v12];
  [(FCOperation *)v12 start];
}

void __52__NTTodayConfigConversionOperation_performOperation__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v42 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = MEMORY[0x277D30B40];
  v14 = *MEMORY[0x277D30B40];
  if (os_log_type_enabled(*MEMORY[0x277D30B40], OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 32);
    v16 = v14;
    v17 = [v15 shortOperationDescription];
    v18 = *(a1 + 40);
    v19 = *(a1 + 48);
    *buf = 138544642;
    v31 = v17;
    v32 = 2112;
    v33 = v18;
    v34 = 2112;
    v35 = v19;
    v36 = 2112;
    v37 = v9;
    v38 = 2112;
    v39 = v10;
    v40 = 2112;
    v41 = v12;
    _os_log_impl(&dword_25BF21000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ received defaultConfigDictionary: %@, singleTagConfigDictionary: %@, articleIDs: %@, articleListIDs: %@, error: %@", buf, 0x3Eu);
  }

  if (v12)
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __52__NTTodayConfigConversionOperation_performOperation__block_invoke_25;
    v28[3] = &unk_279983648;
    v28[4] = *(a1 + 32);
    v29 = v12;
    __52__NTTodayConfigConversionOperation_performOperation__block_invoke_25(v28);
  }

  else
  {
    [*(a1 + 32) setResultHeldRecordsByType:v11];
    v20 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 32);
      v22 = v20;
      v23 = [v21 shortOperationDescription];
      v24 = [*(a1 + 32) resultDefaultConfig];
      v25 = [*(a1 + 32) resultSingleTagConfig];
      v26 = [*(a1 + 32) resultHeldRecordsByType];
      *buf = 138544130;
      v31 = v23;
      v32 = 2112;
      v33 = v24;
      v34 = 2112;
      v35 = v25;
      v36 = 2048;
      v37 = v26;
      _os_log_impl(&dword_25BF21000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ defaultConfig: %@, singleTagConfig: %@, resultHeldRecordsByType: %p", buf, 0x2Au);
    }

    [*(a1 + 32) finishedPerformingOperationWithError:0];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  defaultConfigCompletionHandler = [(NTTodayConfigConversionOperation *)self defaultConfigCompletionHandler];
  resultDefaultConfig = [(NTTodayConfigConversionOperation *)self resultDefaultConfig];
  resultHeldRecordsByType = [(NTTodayConfigConversionOperation *)self resultHeldRecordsByType];
  defaultConfigError = [(NTTodayConfigConversionOperation *)self defaultConfigError];
  v9 = defaultConfigError;
  if (defaultConfigError)
  {
    v10 = defaultConfigError;
  }

  else
  {
    v10 = errorCopy;
  }

  (defaultConfigCompletionHandler)[2](defaultConfigCompletionHandler, resultDefaultConfig, resultHeldRecordsByType, v10);

  singleTagConfigCompletionHandler = [(NTTodayConfigConversionOperation *)self singleTagConfigCompletionHandler];
  resultSingleTagConfig = [(NTTodayConfigConversionOperation *)self resultSingleTagConfig];
  resultHeldRecordsByType2 = [(NTTodayConfigConversionOperation *)self resultHeldRecordsByType];
  singleTagConfigError = [(NTTodayConfigConversionOperation *)self singleTagConfigError];
  v14 = singleTagConfigError;
  if (singleTagConfigError)
  {
    v15 = singleTagConfigError;
  }

  else
  {
    v15 = errorCopy;
  }

  singleTagConfigCompletionHandler[2](singleTagConfigCompletionHandler, resultSingleTagConfig, resultHeldRecordsByType2, v15);
}

- (id)_todayConfigWithConfigJSON:(id)n error:(id *)error
{
  v50 = *MEMORY[0x277D85DE8];
  nCopy = n;
  v7 = [nCopy objectForKeyedSubscript:*MEMORY[0x277D30918]];
  if (v7)
  {
    selfCopy = self;
    errorCopy = error;
    v40 = nCopy;
    v8 = objc_opt_new();
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v38 = v7;
    obj = v7;
    v9 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v46;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v46 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = [MEMORY[0x277D35568] sectionConfigWithJSONDictionary:{*(*(&v45 + 1) + 8 * i), selfCopy}];
          v14 = v13;
          if (v13 && [v13 queueMembershipsCount])
          {
            v15 = 0;
            do
            {
              v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v14, "queueMembershipAtIndex:", v15)}];
              v17 = [v8 objectForKeyedSubscript:v16];
              if (!v17)
              {
                v17 = objc_opt_new();
                [v8 setObject:v17 forKeyedSubscript:v16];
              }

              [v17 addObject:v14];

              ++v15;
            }

            while (v15 < [v14 queueMembershipsCount]);
          }
        }

        v10 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v10);
    }

    allKeys = [v8 allKeys];
    v19 = [allKeys sortedArrayUsingSelector:sel_compare_];

    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __69__NTTodayConfigConversionOperation__todayConfigWithConfigJSON_error___block_invoke;
    v43[3] = &unk_2799837E0;
    v20 = v8;
    v44 = v20;
    obja = v19;
    v21 = [v19 fc_arrayByTransformingWithBlock:v43];
    nCopy = v40;
    v22 = [v40 objectForKeyedSubscript:*MEMORY[0x277D307C0]];
    v23 = [v40 objectForKeyedSubscript:*MEMORY[0x277D30760]];
    v24 = [v40 objectForKeyedSubscript:*MEMORY[0x277D30758]];
    v25 = [v40 objectForKeyedSubscript:*MEMORY[0x277D30750]];
    v26 = *MEMORY[0x277D306A8];
    v27 = [v40 objectForKeyedSubscript:*MEMORY[0x277D306A8]];

    if (v27)
    {
      v28 = MEMORY[0x277D35530];
      v29 = [v40 objectForKeyedSubscript:v26];
      v30 = [v28 bannerConfigWithJSONDictionary:v29];
    }

    else
    {
      v30 = 0;
    }

    configuration = [(NTTodayConfigConversionOperation *)selfCopy configuration];
    v32 = [configuration todayConfigWithIdentifier:v22 queueConfigs:v21 backgroundColorLight:v23 backgroundColorDark:v24 audioIndicatorColor:v25 widgetBannerConfig:v30];

    v31 = 0;
    v7 = v38;
    error = errorCopy;
    if (errorCopy)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v31 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D309C8] code:13 userInfo:0];
    v32 = 0;
    if (error)
    {
LABEL_21:
      v34 = v31;
      *error = v31;
    }
  }

  v35 = *MEMORY[0x277D85DE8];

  return v32;
}

id __69__NTTodayConfigConversionOperation__todayConfigWithConfigJSON_error___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  [v4 setWidgetVisibleSectionsLimit:1];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [*(a1 + 32) objectForKeyedSubscript:{v3, 0}];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 addTodaySectionConfigs:*(*(&v12 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_collectRecordIDsReferencedByTodayConfig:(id)config withArticleListIDs:(id)ds articleIDs:(id)iDs
{
  v32 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  iDsCopy = iDs;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [config todayQueueConfigs];
  v10 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      v13 = 0;
      do
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v26 + 1) + 8 * v13);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        todaySectionConfigs = [v14 todaySectionConfigs];
        v16 = [todaySectionConfigs countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v23;
          do
          {
            v19 = 0;
            do
            {
              if (*v23 != v18)
              {
                objc_enumerationMutation(todaySectionConfigs);
              }

              [(NTTodayConfigConversionOperation *)self _collectRecordIDsReferencedBySectionConfig:*(*(&v22 + 1) + 8 * v19++) withArticleListIDs:dsCopy articleIDs:iDsCopy];
            }

            while (v17 != v19);
            v17 = [todaySectionConfigs countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v17);
        }

        ++v13;
      }

      while (v13 != v11);
      v11 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v11);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_collectRecordIDsReferencedBySectionConfig:(id)config withArticleListIDs:(id)ds articleIDs:(id)iDs
{
  v59 = *MEMORY[0x277D85DE8];
  configCopy = config;
  dsCopy = ds;
  iDsCopy = iDs;
  if (!dsCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayConfigConversionOperation _collectRecordIDsReferencedBySectionConfig:withArticleListIDs:articleIDs:];
    if (iDsCopy)
    {
      goto LABEL_6;
    }
  }

  else if (iDsCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTodayConfigConversionOperation _collectRecordIDsReferencedBySectionConfig:withArticleListIDs:articleIDs:];
  }

LABEL_6:
  sectionType = [configCopy sectionType];
  if (sectionType > 3)
  {
    if (sectionType == 4)
    {
      personalizedTodaySectionConfig = [configCopy personalizedTodaySectionConfig];
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      mandatoryArticles = [personalizedTodaySectionConfig mandatoryArticles];
      v28 = [mandatoryArticles countByEnumeratingWithState:&v47 objects:v57 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v48;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v48 != v30)
            {
              objc_enumerationMutation(mandatoryArticles);
            }

            articleID = [*(*(&v47 + 1) + 8 * i) articleID];
            [iDsCopy addObject:articleID];
          }

          v29 = [mandatoryArticles countByEnumeratingWithState:&v47 objects:v57 count:16];
        }

        while (v29);
      }

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      personalizedArticles = [personalizedTodaySectionConfig personalizedArticles];
      v33 = [personalizedArticles countByEnumeratingWithState:&v43 objects:v56 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v44;
        do
        {
          for (j = 0; j != v34; ++j)
          {
            if (*v44 != v35)
            {
              objc_enumerationMutation(personalizedArticles);
            }

            articleID2 = [*(*(&v43 + 1) + 8 * j) articleID];
            [iDsCopy addObject:articleID2];
          }

          v34 = [personalizedArticles countByEnumeratingWithState:&v43 objects:v56 count:16];
        }

        while (v34);
      }
    }

    else
    {
      if (sectionType != 5)
      {
        goto LABEL_46;
      }

      personalizedTodaySectionConfig = [configCopy itemsTodaySectionConfig];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      personalizedArticles = [personalizedTodaySectionConfig items];
      v19 = [personalizedArticles countByEnumeratingWithState:&v39 objects:v55 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v40;
        do
        {
          for (k = 0; k != v20; ++k)
          {
            if (*v40 != v21)
            {
              objc_enumerationMutation(personalizedArticles);
            }

            v23 = *(*(&v39 + 1) + 8 * k);
            if (![v23 itemType])
            {
              article = [v23 article];
              articleID3 = [article articleID];
              [iDsCopy addObject:articleID3];
            }
          }

          v20 = [personalizedArticles countByEnumeratingWithState:&v39 objects:v55 count:16];
        }

        while (v20);
      }
    }

LABEL_45:
    goto LABEL_46;
  }

  if (!sectionType)
  {
    articleListTodaySectionConfig = [configCopy articleListTodaySectionConfig];
    personalizedTodaySectionConfig = [articleListTodaySectionConfig articleListID];

    [dsCopy addObject:personalizedTodaySectionConfig];
    goto LABEL_45;
  }

  if (sectionType == 3)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    articleIDsTodaySectionConfig = [configCopy articleIDsTodaySectionConfig];
    personalizedTodaySectionConfig = [articleIDsTodaySectionConfig articles];

    v13 = [personalizedTodaySectionConfig countByEnumeratingWithState:&v51 objects:v58 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v52;
      do
      {
        for (m = 0; m != v14; ++m)
        {
          if (*v52 != v15)
          {
            objc_enumerationMutation(personalizedTodaySectionConfig);
          }

          articleID4 = [*(*(&v51 + 1) + 8 * m) articleID];
          [iDsCopy addObject:articleID4];
        }

        v14 = [personalizedTodaySectionConfig countByEnumeratingWithState:&v51 objects:v58 count:16];
      }

      while (v14);
    }

    goto LABEL_45;
  }

LABEL_46:

  v38 = *MEMORY[0x277D85DE8];
}

- (void)validateOperation
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Today config conversion operation requires a single tag config handler."];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_collectRecordIDsReferencedBySectionConfig:withArticleListIDs:articleIDs:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "articleListIDs"];
  *buf = 136315906;
  v3 = "[NTTodayConfigConversionOperation _collectRecordIDsReferencedBySectionConfig:withArticleListIDs:articleIDs:]";
  v4 = 2080;
  v5 = "NTTodayConfigConversionOperation.m";
  v6 = 1024;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

- (void)_collectRecordIDsReferencedBySectionConfig:withArticleListIDs:articleIDs:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "articleIDs"];
  *buf = 136315906;
  v3 = "[NTTodayConfigConversionOperation _collectRecordIDsReferencedBySectionConfig:withArticleListIDs:articleIDs:]";
  v4 = 2080;
  v5 = "NTTodayConfigConversionOperation.m";
  v6 = 1024;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

@end