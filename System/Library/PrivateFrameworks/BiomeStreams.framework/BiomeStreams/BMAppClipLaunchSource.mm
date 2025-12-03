@interface BMAppClipLaunchSource
- (BMAppClipLaunchSource)initWithStoreSource:(id)source;
- (void)sendEvent:(id)event;
@end

@implementation BMAppClipLaunchSource

- (BMAppClipLaunchSource)initWithStoreSource:(id)source
{
  sourceCopy = source;
  v13.receiver = self;
  v13.super_class = BMAppClipLaunchSource;
  v6 = [(BMAppClipLaunchSource *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storeSource, source);
    userContext = [get_CDClientContextClass() userContext];
    contextStore = v7->_contextStore;
    v7->_contextStore = userContext;

    knowledgeStore = [get_DKKnowledgeStoreClass() knowledgeStore];
    knowledgeStore = v7->_knowledgeStore;
    v7->_knowledgeStore = knowledgeStore;
  }

  return v7;
}

- (void)sendEvent:(id)event
{
  v65[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(BMAppClipLaunchSource *)self sendEvent:v5];
  }

  [(BMSource *)self->_storeSource sendEvent:eventCopy];
  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:CFAbsoluteTimeGetCurrent()];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = eventCopy;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    uRLHash = [v7 URLHash];

    if (uRLHash)
    {
      uRLHash2 = [v7 URLHash];
      uRLHashKey = [get_CDContextQueriesClass_0() URLHashKey];
      [dictionary setObject:uRLHash2 forKeyedSubscript:uRLHashKey];

      uRLHash3 = [v7 URLHash];
      uRLHash4 = [get_DKAppClipUsageMetadataKeyClass() URLHash];
      [dictionary2 setObject:uRLHash3 forKeyedSubscript:uRLHash4];
    }

    clipBundleID = [v7 clipBundleID];

    if (clipBundleID)
    {
      clipBundleID2 = [v7 clipBundleID];
      clipBundleIDKey = [get_CDContextQueriesClass_0() clipBundleIDKey];
      [dictionary setObject:clipBundleID2 forKeyedSubscript:clipBundleIDKey];

      clipBundleID3 = [v7 clipBundleID];
      clipBundleID4 = [get_DKAppClipUsageMetadataKeyClass() clipBundleID];
      [dictionary2 setObject:clipBundleID3 forKeyedSubscript:clipBundleID4];
    }

    appBundleID = [v7 appBundleID];

    if (appBundleID)
    {
      appBundleID2 = [v7 appBundleID];
      appBundleIdKey = [get_CDContextQueriesClass_0() appBundleIdKey];
      [dictionary setObject:appBundleID2 forKeyedSubscript:appBundleIdKey];

      appBundleID3 = [v7 appBundleID];
      appBundleID4 = [get_DKAppClipUsageMetadataKeyClass() appBundleID];
      [dictionary2 setObject:appBundleID3 forKeyedSubscript:appBundleID4];
    }

    webAppBundleID = [v7 webAppBundleID];

    if (webAppBundleID)
    {
      webAppBundleID2 = [v7 webAppBundleID];
      webAppBundleIDKey = [get_CDContextQueriesClass_0() webAppBundleIDKey];
      [dictionary setObject:webAppBundleID2 forKeyedSubscript:webAppBundleIDKey];

      webAppBundleID3 = [v7 webAppBundleID];
      webAppBundleID4 = [get_DKAppClipUsageMetadataKeyClass() webAppBundleID];
      [dictionary2 setObject:webAppBundleID3 forKeyedSubscript:webAppBundleID4];
    }

    launchReason = [v7 launchReason];

    if (launchReason)
    {
      launchReason2 = [v7 launchReason];
      appLaunchReasonKey = [get_CDContextQueriesClass_0() appLaunchReasonKey];
      [dictionary setObject:launchReason2 forKeyedSubscript:appLaunchReasonKey];

      launchReason3 = [v7 launchReason];
      launchReason4 = [get_DKAppClipUsageMetadataKeyClass() launchReason];
      [dictionary2 setObject:launchReason3 forKeyedSubscript:launchReason4];
    }

    fullURL = [v7 fullURL];

    if (fullURL)
    {
      fullURL2 = [v7 fullURL];
      fullURLKey = [get_CDContextQueriesClass_0() fullURLKey];
      [dictionary setObject:fullURL2 forKeyedSubscript:fullURLKey];

      fullURL3 = [v7 fullURL];
      fullURL4 = [get_DKAppClipUsageMetadataKeyClass() fullURL];
      [dictionary2 setObject:fullURL3 forKeyedSubscript:fullURL4];
    }

    referrerURL = [v7 referrerURL];

    if (referrerURL)
    {
      referrerURL2 = [v7 referrerURL];
      referrerURLKey = [get_CDContextQueriesClass_0() referrerURLKey];
      [dictionary setObject:referrerURL2 forKeyedSubscript:referrerURLKey];

      referrerURL3 = [v7 referrerURL];
      referrerURL4 = [get_DKAppClipUsageMetadataKeyClass() referrerURL];
      [dictionary2 setObject:referrerURL3 forKeyedSubscript:referrerURL4];
    }

    v45 = dictionary;
    referrerBundleID = [v7 referrerBundleID];

    if (referrerBundleID)
    {
      referrerBundleID2 = [v7 referrerBundleID];
      referrerBundleID3 = [get_DKAppClipUsageMetadataKeyClass() referrerBundleID];
      [dictionary2 setObject:referrerBundleID2 forKeyedSubscript:referrerBundleID3];
    }

    DKEventClass_0 = get_DKEventClass_0();
    appClipUsageStream = [get_DKSystemEventStreamsClass_0() appClipUsageStream];
    clipBundleID5 = [v7 clipBundleID];
    v52 = v6;
    v53 = [DKEventClass_0 eventWithStream:appClipUsageStream startDate:v6 endDate:v6 identifierStringValue:clipBundleID5 metadata:dictionary2];

    knowledgeStore = [(BMAppClipLaunchSource *)self knowledgeStore];
    v65[0] = v53;
    v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:1];
    v64 = 0;
    v56 = [knowledgeStore saveObjects:v55 error:&v64];
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
    contextStore = [(BMAppClipLaunchSource *)self contextStore];
    keyPathForAppClipLaunch = [get_CDContextQueriesClass_0() keyPathForAppClipLaunch];
    [contextStore setObject:v59 forKeyedSubscript:keyPathForAppClipLaunch];

    v6 = v52;
    eventCopy = v63;
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