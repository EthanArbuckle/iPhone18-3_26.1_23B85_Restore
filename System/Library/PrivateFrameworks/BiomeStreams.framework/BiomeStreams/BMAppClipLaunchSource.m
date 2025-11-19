@interface BMAppClipLaunchSource
- (BMAppClipLaunchSource)initWithStoreSource:(id)a3;
- (void)sendEvent:(id)a3;
@end

@implementation BMAppClipLaunchSource

- (BMAppClipLaunchSource)initWithStoreSource:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = BMAppClipLaunchSource;
  v6 = [(BMAppClipLaunchSource *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storeSource, a3);
    v8 = [get_CDClientContextClass() userContext];
    contextStore = v7->_contextStore;
    v7->_contextStore = v8;

    v10 = [get_DKKnowledgeStoreClass() knowledgeStore];
    knowledgeStore = v7->_knowledgeStore;
    v7->_knowledgeStore = v10;
  }

  return v7;
}

- (void)sendEvent:(id)a3
{
  v65[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(BMAppClipLaunchSource *)self sendEvent:v5];
  }

  [(BMSource *)self->_storeSource sendEvent:v4];
  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:CFAbsoluteTimeGetCurrent()];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v4;
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v9 = [MEMORY[0x1E695DF90] dictionary];
    v10 = [v7 URLHash];

    if (v10)
    {
      v11 = [v7 URLHash];
      v12 = [get_CDContextQueriesClass_0() URLHashKey];
      [v8 setObject:v11 forKeyedSubscript:v12];

      v13 = [v7 URLHash];
      v14 = [get_DKAppClipUsageMetadataKeyClass() URLHash];
      [v9 setObject:v13 forKeyedSubscript:v14];
    }

    v15 = [v7 clipBundleID];

    if (v15)
    {
      v16 = [v7 clipBundleID];
      v17 = [get_CDContextQueriesClass_0() clipBundleIDKey];
      [v8 setObject:v16 forKeyedSubscript:v17];

      v18 = [v7 clipBundleID];
      v19 = [get_DKAppClipUsageMetadataKeyClass() clipBundleID];
      [v9 setObject:v18 forKeyedSubscript:v19];
    }

    v20 = [v7 appBundleID];

    if (v20)
    {
      v21 = [v7 appBundleID];
      v22 = [get_CDContextQueriesClass_0() appBundleIdKey];
      [v8 setObject:v21 forKeyedSubscript:v22];

      v23 = [v7 appBundleID];
      v24 = [get_DKAppClipUsageMetadataKeyClass() appBundleID];
      [v9 setObject:v23 forKeyedSubscript:v24];
    }

    v25 = [v7 webAppBundleID];

    if (v25)
    {
      v26 = [v7 webAppBundleID];
      v27 = [get_CDContextQueriesClass_0() webAppBundleIDKey];
      [v8 setObject:v26 forKeyedSubscript:v27];

      v28 = [v7 webAppBundleID];
      v29 = [get_DKAppClipUsageMetadataKeyClass() webAppBundleID];
      [v9 setObject:v28 forKeyedSubscript:v29];
    }

    v30 = [v7 launchReason];

    if (v30)
    {
      v31 = [v7 launchReason];
      v32 = [get_CDContextQueriesClass_0() appLaunchReasonKey];
      [v8 setObject:v31 forKeyedSubscript:v32];

      v33 = [v7 launchReason];
      v34 = [get_DKAppClipUsageMetadataKeyClass() launchReason];
      [v9 setObject:v33 forKeyedSubscript:v34];
    }

    v35 = [v7 fullURL];

    if (v35)
    {
      v36 = [v7 fullURL];
      v37 = [get_CDContextQueriesClass_0() fullURLKey];
      [v8 setObject:v36 forKeyedSubscript:v37];

      v38 = [v7 fullURL];
      v39 = [get_DKAppClipUsageMetadataKeyClass() fullURL];
      [v9 setObject:v38 forKeyedSubscript:v39];
    }

    v40 = [v7 referrerURL];

    if (v40)
    {
      v41 = [v7 referrerURL];
      v42 = [get_CDContextQueriesClass_0() referrerURLKey];
      [v8 setObject:v41 forKeyedSubscript:v42];

      v43 = [v7 referrerURL];
      v44 = [get_DKAppClipUsageMetadataKeyClass() referrerURL];
      [v9 setObject:v43 forKeyedSubscript:v44];
    }

    v45 = v8;
    v46 = [v7 referrerBundleID];

    if (v46)
    {
      v47 = [v7 referrerBundleID];
      v48 = [get_DKAppClipUsageMetadataKeyClass() referrerBundleID];
      [v9 setObject:v47 forKeyedSubscript:v48];
    }

    DKEventClass_0 = get_DKEventClass_0();
    v50 = [get_DKSystemEventStreamsClass_0() appClipUsageStream];
    v51 = [v7 clipBundleID];
    v52 = v6;
    v53 = [DKEventClass_0 eventWithStream:v50 startDate:v6 endDate:v6 identifierStringValue:v51 metadata:v9];

    v54 = [(BMAppClipLaunchSource *)self knowledgeStore];
    v65[0] = v53;
    v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:1];
    v64 = 0;
    v56 = [v54 saveObjects:v55 error:&v64];
    v57 = v64;

    if ((v56 & 1) == 0)
    {
      v58 = __biome_log_for_category();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        [BMAppClipLaunchSource sendEvent:];
      }
    }

    v59 = [v45 copy];
    v60 = [(BMAppClipLaunchSource *)self contextStore];
    v61 = [get_CDContextQueriesClass_0() keyPathForAppClipLaunch];
    [v60 setObject:v59 forKeyedSubscript:v61];

    v6 = v52;
    v4 = v63;
  }

  else
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(BMAppClipLaunchSource *)self sendEvent:v7];
    }
  }

  v62 = *MEMORY[0x1E69E9840];
}

@end