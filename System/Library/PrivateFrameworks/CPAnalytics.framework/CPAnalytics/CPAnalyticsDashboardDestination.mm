@interface CPAnalyticsDashboardDestination
- (BOOL)isMediaEvent:(id)event;
- (CPAnalytics)cpAnalyticsInstance;
- (CPAnalyticsDashboardDestination)initWithConfig:(id)config cpAnalyticsInstance:(id)instance;
- (NSArray)allErrorProperties;
- (NSArray)allMediaProperties;
- (NSArray)allStandardProperties;
- (id)buildCoreAnalyticsEventPayloadWithProperties:(id)properties fromSourceEvent:(id)event intoTargetEventPayload:(id)payload;
- (void)reportMalformedEvent:(id)event malformationDescriptionWithFormat:(id)format;
- (void)sendCoreAnalyticsEventWithStandardPropertiesForEventWithName:(id)name fromSourceEvent:(id)event payload:(id)payload;
@end

@implementation CPAnalyticsDashboardDestination

- (CPAnalytics)cpAnalyticsInstance
{
  WeakRetained = objc_loadWeakRetained(&self->_cpAnalyticsInstance);

  return WeakRetained;
}

- (void)reportMalformedEvent:(id)event malformationDescriptionWithFormat:(id)format
{
  v18 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v6 = MEMORY[0x277CCACA8];
  formatCopy = format;
  v8 = [[v6 alloc] initWithFormat:formatCopy arguments:&v19];

  v9 = CPAnalyticsLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    copyRawPayload = [eventCopy copyRawPayload];
    *buf = 138412802;
    v13 = eventCopy;
    v14 = 2112;
    v15 = copyRawPayload;
    v16 = 2112;
    v17 = v8;
    _os_log_error_impl(&dword_24260A000, v9, OS_LOG_TYPE_ERROR, "Malformed event %@ with payload %@: %@", buf, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)buildCoreAnalyticsEventPayloadWithProperties:(id)properties fromSourceEvent:(id)event intoTargetEventPayload:(id)payload
{
  v28 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  eventCopy = event;
  payloadCopy = payload;
  v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:payloadCopy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = propertiesCopy;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        v17 = [v10 objectForKeyedSubscript:{v16, v23}];

        if (!v17)
        {
          v18 = [eventCopy propertyForKey:v16];
          if (v18)
          {
            [v10 setObject:v18 forKeyedSubscript:v16];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  if ([v10 count])
  {
    v19 = v10;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)sendCoreAnalyticsEventWithStandardPropertiesForEventWithName:(id)name fromSourceEvent:(id)event payload:(id)payload
{
  payloadCopy = payload;
  eventCopy = event;
  nameCopy = name;
  allStandardProperties = [(CPAnalyticsDashboardDestination *)self allStandardProperties];
  v12 = [(CPAnalyticsDashboardDestination *)self buildCoreAnalyticsEventPayloadWithProperties:allStandardProperties fromSourceEvent:eventCopy intoTargetEventPayload:payloadCopy];

  [CPAnalyticsCoreAnalyticsHelper sendCoreAnalyticsEvent:nameCopy withPayload:v12 shouldSanitize:0];
}

- (BOOL)isMediaEvent:(id)event
{
  v3 = [event propertyForKey:@"cpa_media_localIdentifier"];
  v4 = [v3 length] != 0;

  return v4;
}

- (NSArray)allErrorProperties
{
  v5[5] = *MEMORY[0x277D85DE8];
  v5[0] = @"cpa_error_domain";
  v5[1] = @"cpa_error_code";
  v5[2] = @"cpa_error_codeAsString";
  v5[3] = @"cpa_error_description";
  v5[4] = @"cpa_error_indepthErrors";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:5];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (NSArray)allMediaProperties
{
  v5[16] = *MEMORY[0x277D85DE8];
  v5[0] = @"cpa_media_adjusted";
  v5[1] = @"cpa_media_cameraType";
  v5[2] = @"cpa_media_favorite";
  v5[3] = @"cpa_media_importSource";
  v5[4] = @"cpa_media_type";
  v5[5] = @"cpa_media_subType";
  v5[6] = @"cpa_media_age";
  v5[7] = @"cpa_media_count";
  v5[8] = @"cpa_media_duration";
  v5[9] = @"cpa_media_orientation";
  v5[10] = @"cpa_media_sceneType";
  v5[11] = @"cpa_media_subject";
  v5[12] = @"cpa_media_libraryType";
  v5[13] = @"cpa_media_syndicationState";
  v5[14] = @"cpa_media_hasSyndicationIdentifier";
  v5[15] = @"cpa_media_sharedLibraryScope";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:16];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (NSArray)allStandardProperties
{
  v5[16] = *MEMORY[0x277D85DE8];
  v5[0] = @"cpa_common_hourOfDay";
  v5[1] = @"cpa_common_dayOfWeek";
  v5[2] = @"cpa_common_deviceFreeSpace";
  v5[3] = @"cpa_common_deviceModel";
  v5[4] = @"cpa_common_osVersion";
  v5[5] = @"cpa_common_librarySizeRange";
  v5[6] = @"cpa_common_processName";
  v5[7] = @"cpa_common_lowPowerModeEnabled";
  v5[8] = @"cpa_common_icpl_enabled";
  v5[9] = @"cpa_common_icpl_exceedingQuota";
  v5[10] = @"cpa_common_icpl_lowDiskSpace";
  v5[11] = @"cpa_common_icpl_veryLowDiskSpace";
  v5[12] = @"cpa_common_icpl_hasChangesToProcess";
  v5[13] = @"cpa_common_sharedLibraryEnabled";
  v5[14] = @"cpa_demographic_userGender";
  v5[15] = @"cpa_demographic_userAgeRange";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:16];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (CPAnalyticsDashboardDestination)initWithConfig:(id)config cpAnalyticsInstance:(id)instance
{
  instanceCopy = instance;
  v9.receiver = self;
  v9.super_class = CPAnalyticsDashboardDestination;
  v6 = [(CPAnalyticsDashboardDestination *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_cpAnalyticsInstance, instanceCopy);
  }

  return v7;
}

@end