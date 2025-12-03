@interface BMCoreDuetMediaUsageSource
- (BMCoreDuetMediaUsageSource)initWithIdentifier:(id)identifier;
- (void)sendEvent:(id)event;
@end

@implementation BMCoreDuetMediaUsageSource

- (BMCoreDuetMediaUsageSource)initWithIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = BMCoreDuetMediaUsageSource;
  v3 = [(BMSource *)&v7 initWithIdentifier:identifier];
  if (v3)
  {
    v4 = objc_alloc_init(BMCoreDuetMediaUsageStore);
    storage = v3->_storage;
    v3->_storage = v4;
  }

  return v3;
}

- (void)sendEvent:(id)event
{
  eventCopy = event;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(BMCoreDuetMediaUsageSource *)self sendEvent:eventCopy, v5];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = eventCopy;
    if (([v6 isValidWithContext:0 error:0]& 1) != 0)
    {
      keyPathForAppMediaUsageDataDictionaries = [get_CDContextQueriesClass_0() keyPathForAppMediaUsageDataDictionaries];
      if ([v6 isStarting])
      {
        v8 = v6;
        if ([v8 isStarting])
        {
          v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
          bundleID = [v8 bundleID];
          appMediaUsageBundleID = [get_CDContextQueriesClass_0() appMediaUsageBundleID];
          [v9 setObject:bundleID forKeyedSubscript:appMediaUsageBundleID];

          v12 = [v8 URL];
          appMediaUsageURL = [get_CDContextQueriesClass_0() appMediaUsageURL];
          [v9 setObject:v12 forKeyedSubscript:appMediaUsageURL];

          mediaURL = [v8 mediaURL];
          appMediaUsageMediaURL = [get_CDContextQueriesClass_0() appMediaUsageMediaURL];
          [v9 setObject:mediaURL forKeyedSubscript:appMediaUsageMediaURL];

          v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[NSObject isUsageTrusted](v8, "isUsageTrusted")}];
          isUsageTrusted = [get_CDContextQueriesClass_0() isUsageTrusted];
          [v9 setObject:v16 forKeyedSubscript:isUsageTrusted];

          dateInterval = [v8 dateInterval];
          startDate = [dateInterval startDate];
          appMediaUsageStartDate = [get_CDContextQueriesClass_0() appMediaUsageStartDate];
          [v9 setObject:startDate forKeyedSubscript:appMediaUsageStartDate];

          safariProfileID = [v8 safariProfileID];
          appUsageSafariProfileID = [get_CDContextQueriesClass_0() appUsageSafariProfileID];
          [v9 setObject:safariProfileID forKeyedSubscript:appUsageSafariProfileID];

          v23 = [v9 copy];
        }

        else
        {
          v23 = 0;
        }

        storage = [(BMCoreDuetMediaUsageSource *)self storage];
        [storage addContextValue:v23 toArrayAtKeyPath:keyPathForAppMediaUsageDataDictionaries];
      }

      else
      {
        v59 = eventCopy;
        v60 = MEMORY[0x1E696AE18];
        appMediaUsageBundleID2 = [get_CDContextQueriesClass_0() appMediaUsageBundleID];
        bundleID2 = [v6 bundleID];
        appMediaUsageURL2 = [get_CDContextQueriesClass_0() appMediaUsageURL];
        v26 = [v6 URL];
        [get_CDContextQueriesClass_0() appMediaUsageMediaURL];
        v27 = v62 = keyPathForAppMediaUsageDataDictionaries;
        mediaURL2 = [v6 mediaURL];
        [get_CDContextQueriesClass_0() isUsageTrusted];
        v29 = v63 = self;
        v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[NSObject isUsageTrusted](v6, "isUsageTrusted")}];
        v23 = [v60 predicateWithFormat:@"SELF.%K == %@ && SELF.%K == %@ && SELF.%K == %@ && SELF.%K == %@", appMediaUsageBundleID2, bundleID2, appMediaUsageURL2, v26, v27, mediaURL2, v29, v30];

        keyPathForAppMediaUsageDataDictionaries = v62;
        storage2 = [(BMCoreDuetMediaUsageSource *)v63 storage];
        storage = [storage2 removeObjectsMatchingPredicate:v23 fromArrayAtKeyPath:v62];

        if ([storage count])
        {
          firstObject = [storage firstObject];
          appMediaUsageStartDate2 = [get_CDContextQueriesClass_0() appMediaUsageStartDate];
          v35 = [firstObject objectForKeyedSubscript:appMediaUsageStartDate2];

          v36 = v6;
          v37 = v35;
          v61 = v37;
          if (([v36 isStarting]& 1) != 0)
          {
            v38 = 0;
          }

          else
          {
            v39 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v40 = [v36 URL];
            v41 = [get_DKAppMediaUsageMetadataKeyClass() URL];
            [v39 setObject:v40 forKeyedSubscript:v41];

            mediaURL3 = [v36 mediaURL];
            mediaURL4 = [get_DKAppMediaUsageMetadataKeyClass() mediaURL];
            [v39 setObject:mediaURL3 forKeyedSubscript:mediaURL4];

            v44 = [MEMORY[0x1E696AD98] numberWithBool:{-[NSObject isUsageTrusted](v36, "isUsageTrusted")}];
            isUsageTrusted2 = [get_DKDigitalHealthMetadataKeyClass_0() isUsageTrusted];
            [v39 setObject:v44 forKeyedSubscript:isUsageTrusted2];

            safariProfileID2 = [v36 safariProfileID];
            safariProfileID3 = [get_DKDigitalHealthMetadataKeyClass_0() safariProfileID];
            [v39 setObject:safariProfileID2 forKeyedSubscript:safariProfileID3];

            DKEventClass_0 = get_DKEventClass_0();
            appMediaUsageStream = [get_DKSystemEventStreamsClass_0() appMediaUsageStream];
            [v36 dateInterval];
            v50 = v58 = v23;
            [v50 startDate];
            v52 = v51 = firstObject;
            bundleID3 = [v36 bundleID];
            v38 = [DKEventClass_0 eventWithStream:appMediaUsageStream startDate:v61 endDate:v52 identifierStringValue:bundleID3 metadata:v39];

            keyPathForAppMediaUsageDataDictionaries = v62;
            firstObject = v51;
            v37 = v61;

            v23 = v58;
          }

          eventCopy = v59;

          storage3 = [(BMCoreDuetMediaUsageSource *)v63 storage];
          v64 = 0;
          [storage3 saveKnowledgeEvent:v38 error:&v64];
          v55 = v64;

          if (v55)
          {
            v56 = __biome_log_for_category();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              [BMCoreDuetMediaUsageSource sendEvent:];
            }
          }
        }

        else
        {
          firstObject = __biome_log_for_category();
          if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
          {
            [BMCoreDuetMediaUsageSource sendEvent:];
          }

          eventCopy = v59;
        }
      }
    }

    else
    {
      keyPathForAppMediaUsageDataDictionaries = __biome_log_for_category();
      if (os_log_type_enabled(keyPathForAppMediaUsageDataDictionaries, OS_LOG_TYPE_FAULT))
      {
        [BMCoreDuetMediaUsageSource sendEvent:];
      }
    }
  }

  else
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BMCoreDuetMediaUsageSource sendEvent:];
    }
  }
}

@end