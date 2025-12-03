@interface NTQueueConfigSectionQueueDescriptor
- (NTQueueConfigSectionQueueDescriptor)init;
- (NTQueueConfigSectionQueueDescriptor)initWithQueueConfig:(id)config appConfiguration:(id)configuration todayData:(id)data inFavoritesOnlyMode:(BOOL)mode respectsWidgetVisibleSectionsLimit:(BOOL)limit groupingService:(id)service;
@end

@implementation NTQueueConfigSectionQueueDescriptor

- (NTQueueConfigSectionQueueDescriptor)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTQueueConfigSectionQueueDescriptor init]";
    v10 = 2080;
    v11 = "NTQueueConfigSectionQueueDescriptor.m";
    v12 = 1024;
    v13 = 20;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTQueueConfigSectionQueueDescriptor init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTQueueConfigSectionQueueDescriptor)initWithQueueConfig:(id)config appConfiguration:(id)configuration todayData:(id)data inFavoritesOnlyMode:(BOOL)mode respectsWidgetVisibleSectionsLimit:(BOOL)limit groupingService:(id)service
{
  limitCopy = limit;
  configCopy = config;
  configurationCopy = configuration;
  dataCopy = data;
  serviceCopy = service;
  if (!configCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTQueueConfigSectionQueueDescriptor initWithQueueConfig:appConfiguration:todayData:inFavoritesOnlyMode:respectsWidgetVisibleSectionsLimit:groupingService:];
    if (configurationCopy)
    {
      goto LABEL_6;
    }
  }

  else if (configurationCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTQueueConfigSectionQueueDescriptor initWithQueueConfig:appConfiguration:todayData:inFavoritesOnlyMode:respectsWidgetVisibleSectionsLimit:groupingService:];
  }

LABEL_6:
  v32.receiver = self;
  v32.super_class = NTQueueConfigSectionQueueDescriptor;
  v18 = [(NTQueueConfigSectionQueueDescriptor *)&v32 init];
  if (v18)
  {
    todaySectionConfigs = [configCopy todaySectionConfigs];
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __157__NTQueueConfigSectionQueueDescriptor_initWithQueueConfig_appConfiguration_todayData_inFavoritesOnlyMode_respectsWidgetVisibleSectionsLimit_groupingService___block_invoke;
    v27 = &unk_2799838C8;
    modeCopy = mode;
    v28 = dataCopy;
    v29 = configurationCopy;
    v30 = serviceCopy;
    v20 = [todaySectionConfigs fc_arrayByTransformingWithBlock:&v24];
    sectionDescriptors = v18->_sectionDescriptors;
    v18->_sectionDescriptors = v20;

    if (limitCopy)
    {
      widgetVisibleSectionsLimit = [configCopy widgetVisibleSectionsLimit];
    }

    else
    {
      widgetVisibleSectionsLimit = -1;
    }

    v18->_visibleSectionConfigsLimit = widgetVisibleSectionsLimit;
  }

  return v18;
}

NTSectionConfigSectionDescriptor *__157__NTQueueConfigSectionQueueDescriptor_initWithQueueConfig_appConfiguration_todayData_inFavoritesOnlyMode_respectsWidgetVisibleSectionsLimit_groupingService___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 56) == 1 && [v3 filterNonSubscribedInFavoritesOnlyMode])
  {
    v5 = NTSharedLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 name];
      v7 = [*(a1 + 32) rankedAllSubscribedTagIDs];
      *buf = 138543618;
      v20 = v6;
      v21 = 2114;
      v22 = v7;
      _os_log_impl(&dword_25BF21000, v5, OS_LOG_TYPE_DEFAULT, "will filter non-subscribed channels from section, name=%{public}@, subscribedTagIDs=%{public}@", buf, 0x16u);
    }

    v8 = 0x820000000;
  }

  else
  {
    v8 = 0x800000000;
  }

  if ([v4 sectionType] == 1 && objc_msgSend(*(a1 + 40), "tabiScoringInWidgetsEnabled"))
  {
    v8 |= 0x1000000000uLL;
  }

  v9 = NewsCoreUserDefaults();
  v10 = [v9 BOOLForKey:*MEMORY[0x277D30D58]];

  v11 = [NTSectionConfigSectionDescriptor alloc];
  v12 = *(a1 + 40);
  v13 = [v12 topStoriesConfig];
  v14 = [v13 channelID];
  v15 = [*(a1 + 40) hiddenFeedIDs];
  v16 = [(NTSectionConfigSectionDescriptor *)v11 initWithSectionConfig:v4 appConfiguration:v12 topStoriesChannelID:v14 hiddenFeedIDs:v15 allowPaidBundleFeed:v10 ^ 1u todayData:*(a1 + 32) supplementalFeedFilterOptions:v8 groupingService:*(a1 + 48)];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)initWithQueueConfig:appConfiguration:todayData:inFavoritesOnlyMode:respectsWidgetVisibleSectionsLimit:groupingService:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "queueConfig"];
  *buf = 136315906;
  v3 = "[NTQueueConfigSectionQueueDescriptor initWithQueueConfig:appConfiguration:todayData:inFavoritesOnlyMode:respectsWidgetVisibleSectionsLimit:groupingService:]";
  v4 = 2080;
  v5 = "NTQueueConfigSectionQueueDescriptor.m";
  v6 = 1024;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

- (void)initWithQueueConfig:appConfiguration:todayData:inFavoritesOnlyMode:respectsWidgetVisibleSectionsLimit:groupingService:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "appConfiguration"];
  *buf = 136315906;
  v3 = "[NTQueueConfigSectionQueueDescriptor initWithQueueConfig:appConfiguration:todayData:inFavoritesOnlyMode:respectsWidgetVisibleSectionsLimit:groupingService:]";
  v4 = 2080;
  v5 = "NTQueueConfigSectionQueueDescriptor.m";
  v6 = 1024;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

@end