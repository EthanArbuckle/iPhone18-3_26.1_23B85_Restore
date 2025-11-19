@interface BMCoreDuetMediaUsageSource
- (BMCoreDuetMediaUsageSource)initWithIdentifier:(id)a3;
- (void)sendEvent:(id)a3;
@end

@implementation BMCoreDuetMediaUsageSource

- (BMCoreDuetMediaUsageSource)initWithIdentifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = BMCoreDuetMediaUsageSource;
  v3 = [(BMSource *)&v7 initWithIdentifier:a3];
  if (v3)
  {
    v4 = objc_alloc_init(BMCoreDuetMediaUsageStore);
    storage = v3->_storage;
    v3->_storage = v4;
  }

  return v3;
}

- (void)sendEvent:(id)a3
{
  v4 = a3;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(BMCoreDuetMediaUsageSource *)self sendEvent:v4, v5];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    if (([v6 isValidWithContext:0 error:0]& 1) != 0)
    {
      v7 = [get_CDContextQueriesClass_0() keyPathForAppMediaUsageDataDictionaries];
      if ([v6 isStarting])
      {
        v8 = v6;
        if ([v8 isStarting])
        {
          v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v10 = [v8 bundleID];
          v11 = [get_CDContextQueriesClass_0() appMediaUsageBundleID];
          [v9 setObject:v10 forKeyedSubscript:v11];

          v12 = [v8 URL];
          v13 = [get_CDContextQueriesClass_0() appMediaUsageURL];
          [v9 setObject:v12 forKeyedSubscript:v13];

          v14 = [v8 mediaURL];
          v15 = [get_CDContextQueriesClass_0() appMediaUsageMediaURL];
          [v9 setObject:v14 forKeyedSubscript:v15];

          v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[NSObject isUsageTrusted](v8, "isUsageTrusted")}];
          v17 = [get_CDContextQueriesClass_0() isUsageTrusted];
          [v9 setObject:v16 forKeyedSubscript:v17];

          v18 = [v8 dateInterval];
          v19 = [v18 startDate];
          v20 = [get_CDContextQueriesClass_0() appMediaUsageStartDate];
          [v9 setObject:v19 forKeyedSubscript:v20];

          v21 = [v8 safariProfileID];
          v22 = [get_CDContextQueriesClass_0() appUsageSafariProfileID];
          [v9 setObject:v21 forKeyedSubscript:v22];

          v23 = [v9 copy];
        }

        else
        {
          v23 = 0;
        }

        v32 = [(BMCoreDuetMediaUsageSource *)self storage];
        [v32 addContextValue:v23 toArrayAtKeyPath:v7];
      }

      else
      {
        v59 = v4;
        v60 = MEMORY[0x1E696AE18];
        v57 = [get_CDContextQueriesClass_0() appMediaUsageBundleID];
        v24 = [v6 bundleID];
        v25 = [get_CDContextQueriesClass_0() appMediaUsageURL];
        v26 = [v6 URL];
        [get_CDContextQueriesClass_0() appMediaUsageMediaURL];
        v27 = v62 = v7;
        v28 = [v6 mediaURL];
        [get_CDContextQueriesClass_0() isUsageTrusted];
        v29 = v63 = self;
        v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[NSObject isUsageTrusted](v6, "isUsageTrusted")}];
        v23 = [v60 predicateWithFormat:@"SELF.%K == %@ && SELF.%K == %@ && SELF.%K == %@ && SELF.%K == %@", v57, v24, v25, v26, v27, v28, v29, v30];

        v7 = v62;
        v31 = [(BMCoreDuetMediaUsageSource *)v63 storage];
        v32 = [v31 removeObjectsMatchingPredicate:v23 fromArrayAtKeyPath:v62];

        if ([v32 count])
        {
          v33 = [v32 firstObject];
          v34 = [get_CDContextQueriesClass_0() appMediaUsageStartDate];
          v35 = [v33 objectForKeyedSubscript:v34];

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

            v42 = [v36 mediaURL];
            v43 = [get_DKAppMediaUsageMetadataKeyClass() mediaURL];
            [v39 setObject:v42 forKeyedSubscript:v43];

            v44 = [MEMORY[0x1E696AD98] numberWithBool:{-[NSObject isUsageTrusted](v36, "isUsageTrusted")}];
            v45 = [get_DKDigitalHealthMetadataKeyClass_0() isUsageTrusted];
            [v39 setObject:v44 forKeyedSubscript:v45];

            v46 = [v36 safariProfileID];
            v47 = [get_DKDigitalHealthMetadataKeyClass_0() safariProfileID];
            [v39 setObject:v46 forKeyedSubscript:v47];

            DKEventClass_0 = get_DKEventClass_0();
            v49 = [get_DKSystemEventStreamsClass_0() appMediaUsageStream];
            [v36 dateInterval];
            v50 = v58 = v23;
            [v50 startDate];
            v52 = v51 = v33;
            v53 = [v36 bundleID];
            v38 = [DKEventClass_0 eventWithStream:v49 startDate:v61 endDate:v52 identifierStringValue:v53 metadata:v39];

            v7 = v62;
            v33 = v51;
            v37 = v61;

            v23 = v58;
          }

          v4 = v59;

          v54 = [(BMCoreDuetMediaUsageSource *)v63 storage];
          v64 = 0;
          [v54 saveKnowledgeEvent:v38 error:&v64];
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
          v33 = __biome_log_for_category();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            [BMCoreDuetMediaUsageSource sendEvent:];
          }

          v4 = v59;
        }
      }
    }

    else
    {
      v7 = __biome_log_for_category();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
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