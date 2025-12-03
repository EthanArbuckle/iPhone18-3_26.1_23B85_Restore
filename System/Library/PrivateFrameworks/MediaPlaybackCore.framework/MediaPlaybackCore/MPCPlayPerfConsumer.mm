@interface MPCPlayPerfConsumer
+ (id)analyticsContentType:(int64_t)type;
+ (id)analyticsFormat:(id)format;
+ (id)coreAnalyticsEventNameWithEventType:(id)type;
- (MPCPlayPerfConsumer)initWithPlaybackEngine:(id)engine;
- (MPCPlaybackEngine)playbackEngine;
- (void)generatePlayPerfSignposts:(id)signposts;
- (void)handleMetrics:(id)metrics;
- (void)publishPlaybackMetrics:(id)metrics;
- (void)sendMetricsToCoreAnalytics:(id)analytics;
- (void)sendMetricsToSiriSelfLogger:(id)logger;
- (void)setupErrorHandlerForEventType:(id)type errorKey:(id)key prefix:(id)prefix;
- (void)subscribeToEventStream:(id)stream;
@end

@implementation MPCPlayPerfConsumer

- (MPCPlaybackEngine)playbackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

- (void)sendMetricsToSiriSelfLogger:(id)logger
{
  loggerCopy = logger;
  siriRefId = [loggerCopy siriRefId];
  v5 = [siriRefId isEqualToString:self->_lastSiriReferenceIdentifier];

  if ((v5 & 1) == 0)
  {
    [MPCSiriSelfLogger sendMetrics:loggerCopy];
    siriRefId2 = [loggerCopy siriRefId];
    lastSiriReferenceIdentifier = self->_lastSiriReferenceIdentifier;
    self->_lastSiriReferenceIdentifier = siriRefId2;
  }
}

- (void)sendMetricsToCoreAnalytics:(id)analytics
{
  analyticsCopy = analytics;
  v4 = objc_opt_class();
  eventType = [analyticsCopy eventType];
  v6 = [v4 coreAnalyticsEventNameWithEventType:eventType];

  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__MPCPlayPerfConsumer_sendMetricsToCoreAnalytics___block_invoke;
    v8[3] = &unk_1E8231D58;
    v9 = analyticsCopy;
    v10 = v6;
    v7 = _Block_copy(v8);
    AnalyticsSendEventLazy();
  }
}

id __50__MPCPlayPerfConsumer_sendMetricsToCoreAnalytics___block_invoke(uint64_t a1)
{
  v147 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 bundleIdentifier];
  [v2 setObject:v4 forKeyedSubscript:@"app"];

  v5 = [*(a1 + 32) assetCacheAge];
  [v2 setObject:v5 forKeyedSubscript:@"assetCacheAge"];

  v6 = [*(a1 + 32) assetLoadWaitTime];
  [v2 setObject:v6 forKeyedSubscript:@"assetLoadWaitTime"];

  v7 = [*(a1 + 32) assetLocation];
  [v2 setObject:v7 forKeyedSubscript:@"assetLocation"];

  v8 = [*(a1 + 32) assetProtectionType];
  [v2 setObject:v8 forKeyedSubscript:@"assetProtectionType"];

  v9 = [*(a1 + 32) assetSource];
  [v2 setObject:v9 forKeyedSubscript:@"assetSource"];

  v10 = [*(a1 + 32) assetType];
  [v2 setObject:v10 forKeyedSubscript:@"assetType"];

  v11 = [*(a1 + 32) avTime];
  [v2 setObject:v11 forKeyedSubscript:@"avTime"];

  v12 = [*(a1 + 32) bagWaitTime];
  [v2 setObject:v12 forKeyedSubscript:@"bagWaitTime"];

  v13 = [*(a1 + 32) endpointType];
  [v2 setObject:v13 forKeyedSubscript:@"endpointType"];

  v14 = MEMORY[0x1E696AD98];
  v15 = [*(a1 + 32) errorResolution];
  v16 = [v14 numberWithInt:v15 != 0];
  [v2 setObject:v16 forKeyedSubscript:@"errorResolutionApplied"];

  v17 = [*(a1 + 32) errorSignature];
  [v2 setObject:v17 forKeyedSubscript:@"errorSignature"];

  v18 = [*(a1 + 32) experimentID];
  [v2 setObject:v18 forKeyedSubscript:@"experimentID"];

  v19 = [*(a1 + 32) featureName];
  [v2 setObject:v19 forKeyedSubscript:@"featureName"];

  v20 = [*(a1 + 32) firstAudioFrameWaitTime];
  [v2 setObject:v20 forKeyedSubscript:@"firstAudioFrameWaitTime"];

  v21 = [*(a1 + 32) formatInfo];
  v22 = [v21 objectForKeyedSubscript:@"bitDepth"];
  [v2 setObject:v22 forKeyedSubscript:@"formatInfoBitDepth"];

  v23 = [*(a1 + 32) formatInfo];
  v24 = [v23 objectForKeyedSubscript:@"bitrate"];
  [v2 setObject:v24 forKeyedSubscript:@"formatInfoBitrate"];

  v25 = [*(a1 + 32) formatInfo];
  v26 = [v25 objectForKeyedSubscript:@"channelLayout"];
  [v2 setObject:v26 forKeyedSubscript:@"formatInfoChannelLayout"];

  v27 = [*(a1 + 32) formatInfo];
  v28 = [v27 objectForKeyedSubscript:@"codec"];
  [v2 setObject:v28 forKeyedSubscript:@"formatInfoCodec"];

  v29 = [*(a1 + 32) formatInfo];
  v30 = [v29 objectForKeyedSubscript:@"multiChannel"];
  [v2 setObject:v30 forKeyedSubscript:@"formatInfoMultiChannel"];

  v31 = [*(a1 + 32) formatInfo];
  v32 = [v31 objectForKeyedSubscript:@"sampleRate"];
  [v2 setObject:v32 forKeyedSubscript:@"formatInfoSampleRate"];

  v33 = [*(a1 + 32) formatInfo];
  v34 = [v33 objectForKeyedSubscript:@"spatialized"];
  [v2 setObject:v34 forKeyedSubscript:@"formatInfoSpartialized"];

  v35 = [*(a1 + 32) formatInfo];
  v36 = [v35 objectForKeyedSubscript:@"tier"];
  [v2 setObject:v36 forKeyedSubscript:@"formatInfoTier"];

  v37 = [*(a1 + 32) hasAccountInfo];
  [v2 setObject:v37 forKeyedSubscript:@"hasAccountInfo"];

  v38 = MEMORY[0x1E696AD98];
  v39 = [*(a1 + 32) leaseWaitTime];
  [v39 doubleValue];
  v41 = [v38 numberWithInt:v40 > 0.0];
  [v2 setObject:v41 forKeyedSubscript:@"hasLeaseWaitTime"];

  v42 = MEMORY[0x1E696AD98];
  v43 = [*(a1 + 32) lookupWaitTime];
  [v43 doubleValue];
  v45 = [v42 numberWithInt:v44 > 0.0];
  [v2 setObject:v45 forKeyedSubscript:@"hasLookupWaitTime"];

  v46 = MEMORY[0x1E696AD98];
  v47 = [*(a1 + 32) mediaRedownloadWaitTime];
  [v47 doubleValue];
  v49 = [v46 numberWithInt:v48 > 0.0];
  [v2 setObject:v49 forKeyedSubscript:@"hasMediaRedownloadWaitTime"];

  v50 = [*(a1 + 32) hasOfflinePlaybackKeys];
  [v2 setObject:v50 forKeyedSubscript:@"hasOfflinePlaybackKeys"];

  v51 = [*(a1 + 32) hasOnlinePlaybackKeys];
  [v2 setObject:v51 forKeyedSubscript:@"hasOnlinePlaybackKeys"];

  v52 = MEMORY[0x1E696AD98];
  v53 = [*(a1 + 32) subscriptionAssetLoadWaitTime];
  [v53 doubleValue];
  v55 = [v52 numberWithInt:v54 > 0.0];
  [v2 setObject:v55 forKeyedSubscript:@"hasSubscriptionAssetLoadWaitTime"];

  v56 = MEMORY[0x1E696AD98];
  v57 = [*(a1 + 32) suzeLeaseWaitTime];
  [v57 doubleValue];
  v59 = [v56 numberWithInt:v58 > 0.0];
  [v2 setObject:v59 forKeyedSubscript:@"hasSuzeLeaseWaitTime"];

  v60 = [*(a1 + 32) hlsMetadataWaitTime];
  [v2 setObject:v60 forKeyedSubscript:@"hlsMetadataWaitTime"];

  v61 = [*(a1 + 32) isActiveAccount];
  [v2 setObject:v61 forKeyedSubscript:@"isActiveAccount"];

  v62 = [*(a1 + 32) isAutoPlayEnabled];
  [v2 setObject:v62 forKeyedSubscript:@"isAutoPlayEnabled"];

  v63 = [*(a1 + 32) isDelegatedPlayback];
  [v2 setObject:v63 forKeyedSubscript:@"isDelegatedPlayback"];

  v64 = [*(a1 + 32) itemMetadata];
  v65 = [v64 objectForKeyedSubscript:@"item-is-start-item"];
  [v2 setObject:v65 forKeyedSubscript:@"isFirstItem"];

  v66 = [*(a1 + 32) isFirstPlay];
  [v2 setObject:v66 forKeyedSubscript:@"isFirstPlay"];

  v67 = [*(a1 + 32) isRemoteSetQueue];
  [v2 setObject:v67 forKeyedSubscript:@"isRemoteSetQueue"];

  v68 = [*(a1 + 32) isReplacingPlayback];
  [v2 setObject:v68 forKeyedSubscript:@"isReplacingPlayback"];

  v69 = [*(a1 + 32) isSharePlay];
  [v2 setObject:v69 forKeyedSubscript:@"isSharePlay"];

  v70 = [*(a1 + 32) isShuffled];
  [v2 setObject:v70 forKeyedSubscript:@"isShuffled"];

  v71 = [*(a1 + 32) leaseWaitTime];
  [v2 setObject:v71 forKeyedSubscript:@"leaseWaitTime"];

  v72 = [*(a1 + 32) lookupWaitTime];
  [v2 setObject:v72 forKeyedSubscript:@"lookupWaitTime"];

  v73 = [*(a1 + 32) mediaPlayerTime];
  [v2 setObject:v73 forKeyedSubscript:@"mediaPlayerTime"];

  v74 = [*(a1 + 32) mediaRedownloadWaitTime];
  [v2 setObject:v74 forKeyedSubscript:@"mediaRedownloadWaitTime"];

  v75 = [*(a1 + 32) musicWaitTime];
  [v2 setObject:v75 forKeyedSubscript:@"musicWaitTime"];

  v76 = [*(a1 + 32) networkType];
  [v2 setObject:v76 forKeyedSubscript:@"networkType"];

  v77 = [*(a1 + 32) networkTime];
  [v2 setObject:v77 forKeyedSubscript:@"networkTime"];

  v78 = [*(a1 + 32) playCommandSendTime];
  [v2 setObject:v78 forKeyedSubscript:@"playCommandSendTime"];

  v79 = [*(a1 + 32) playCommandWaitTime];
  [v2 setObject:v79 forKeyedSubscript:@"playCommandWaitTime"];

  v80 = [*(a1 + 32) queueCommandType];
  [v2 setObject:v80 forKeyedSubscript:@"queueCommandType"];

  v81 = [*(a1 + 32) queueLoadWaitTime];
  [v2 setObject:v81 forKeyedSubscript:@"queueLoadWaitTime"];

  v82 = [*(a1 + 32) queueType];
  [v2 setObject:v82 forKeyedSubscript:@"queueType"];

  v83 = [*(a1 + 32) rateChangeWaitTime];
  [v2 setObject:v83 forKeyedSubscript:@"rateChangeWaitTime"];

  v84 = [*(a1 + 32) readyToPlayStatusWaitTime];
  [v2 setObject:v84 forKeyedSubscript:@"readyToPlayStatusWaitTime"];

  v85 = [*(a1 + 32) routeInfo];
  v86 = [v85 objectForKeyedSubscript:@"type"];
  [v2 setObject:v86 forKeyedSubscript:@"routeInfoType"];

  v87 = [*(a1 + 32) seekBeforePlaying];
  [v2 setObject:v87 forKeyedSubscript:@"seekBeforePlaying"];

  v88 = [*(a1 + 32) sessionActivationAVTime];
  [v2 setObject:v88 forKeyedSubscript:@"sessionActivationAVTime"];

  v89 = [*(a1 + 32) sessionActivationWaitTime];
  [v2 setObject:v89 forKeyedSubscript:@"sessionActivationTime"];

  v90 = [*(a1 + 32) setQueueCommandSendTime];
  [v2 setObject:v90 forKeyedSubscript:@"setQueueCommandSendTime"];

  v91 = [*(a1 + 32) storefront];
  [v2 setObject:v91 forKeyedSubscript:@"storefront"];

  v92 = [*(a1 + 32) subscriptionAssetLoadWaitTime];
  [v2 setObject:v92 forKeyedSubscript:@"subscriptionAssetLoadWaitTime"];

  v93 = [*(a1 + 32) subscriptionType];
  [v2 setObject:v93 forKeyedSubscript:@"subscriptionType"];

  v94 = [*(a1 + 32) suzeLeaseWaitTime];
  [v2 setObject:v94 forKeyedSubscript:@"suzeLeaseWaitTime"];

  v95 = [*(a1 + 32) treatmentID];
  [v2 setObject:v95 forKeyedSubscript:@"treatmentID"];

  v96 = [*(a1 + 32) timeSinceBoot];
  [v2 setObject:v96 forKeyedSubscript:@"timeSinceBoot"];

  v97 = [*(a1 + 32) timeSinceLaunch];
  [v2 setObject:v97 forKeyedSubscript:@"timeSinceLaunch"];

  v98 = [*(a1 + 32) timeSincePaused];
  [v2 setObject:v98 forKeyedSubscript:@"timeSincePaused"];

  v99 = [*(a1 + 32) musicTotalTime];
  [v2 setObject:v99 forKeyedSubscript:@"totalTime"];

  v100 = [*(a1 + 32) nextItemWaitTime];
  [v2 setObject:v100 forKeyedSubscript:@"gapTime"];

  v101 = [*(a1 + 32) vocalsControlActive];
  [v2 setObject:v101 forKeyedSubscript:@"vocalsControlActive"];

  v102 = [*(a1 + 32) AVPlayerItemPerformanceMetrics];
  v103 = v102;
  if (v102)
  {
    v104 = [v102 objectForKeyedSubscript:@"BufferedAirPlay"];
    [v2 setObject:v104 forKeyedSubscript:@"avBufferedAirPlay"];

    v105 = [v103 objectForKeyedSubscript:@"CKFetchTime"];
    [v2 setObject:v105 forKeyedSubscript:@"avCKFetchTime"];

    v106 = [v103 objectForKeyedSubscript:@"IndexResponseCount"];
    [v2 setObject:v106 forKeyedSubscript:@"avIndexResponseCount"];

    v107 = [v103 objectForKeyedSubscript:@"IndexResponseTime0"];
    [v2 setObject:v107 forKeyedSubscript:@"avIndexResponseTime0"];

    v108 = [v103 objectForKeyedSubscript:@"IndexResponseTimeSum"];
    [v2 setObject:v108 forKeyedSubscript:@"avIndexResponseTimeSum"];

    v109 = [v103 objectForKeyedSubscript:@"indicatedBitrate"];
    [v2 setObject:v109 forKeyedSubscript:@"avIndicatedBitrate"];

    v110 = [v103 objectForKeyedSubscript:@"MediaFile2CKCount"];
    [v2 setObject:v110 forKeyedSubscript:@"avMediaFile2CKCount"];

    v111 = [v103 objectForKeyedSubscript:@"MediaFile2CKTime"];
    [v2 setObject:v111 forKeyedSubscript:@"avMediaFile2CKTime"];

    v112 = [v103 objectForKeyedSubscript:@"MVPResponseCount"];
    [v2 setObject:v112 forKeyedSubscript:@"avMVPResponseCount"];

    v113 = [v103 objectForKeyedSubscript:@"MVPResponseTime0"];
    [v2 setObject:v113 forKeyedSubscript:@"avMVPResponseTime0"];

    v114 = [v103 objectForKeyedSubscript:@"MVPResponseTimeSum"];
    [v2 setObject:v114 forKeyedSubscript:@"avMVPResponseTimeSum"];

    v115 = [v103 objectForKeyedSubscript:@"numberOfBytesTransferred"];
    [v2 setObject:v115 forKeyedSubscript:@"avNumberOfBytesTransferred"];

    v116 = [v103 objectForKeyedSubscript:@"observedBitrate"];
    [v2 setObject:v116 forKeyedSubscript:@"avObservedBitrate"];

    v117 = [v103 objectForKeyedSubscript:@"PPTime"];
    [v2 setObject:v117 forKeyedSubscript:@"avPPTime"];

    v118 = [v103 objectForKeyedSubscript:@"ReadyToPlayTime"];
    [v2 setObject:v118 forKeyedSubscript:@"avReadyToPlayTime"];

    v119 = [v103 objectForKeyedSubscript:@"RequestCount"];
    [v2 setObject:v119 forKeyedSubscript:@"avRequestCount"];

    v120 = [v103 objectForKeyedSubscript:@"RequestTimeSum"];
    [v2 setObject:v120 forKeyedSubscript:@"avRequestTimeSum"];

    v121 = [v103 objectForKeyedSubscript:@"SchedulingDelayCount"];
    [v2 setObject:v121 forKeyedSubscript:@"avSchedulingDelayCount"];

    v122 = [v103 objectForKeyedSubscript:@"SchedulingDelayTimeSum"];
    [v2 setObject:v122 forKeyedSubscript:@"avSchedulingDelayTimeSum"];

    v123 = [v103 objectForKeyedSubscript:@"segmentsDownloadedDuration"];
    [v2 setObject:v123 forKeyedSubscript:@"avSegmentsDownloadedDuration"];

    v124 = [v103 objectForKeyedSubscript:@"startupTime"];
    [v2 setObject:v124 forKeyedSubscript:@"avStartupTime"];

    v125 = [v103 objectForKeyedSubscript:@"tfac2ICreate"];
    [v2 setObject:v125 forKeyedSubscript:@"avTfac2ICreate"];

    v126 = [v103 objectForKeyedSubscript:@"tfac2ICurrent"];
    [v2 setObject:v126 forKeyedSubscript:@"avTfac2ICurrent"];

    v127 = [v103 objectForKeyedSubscript:@"tfac2IEnqueued"];
    [v2 setObject:v127 forKeyedSubscript:@"avTfac2IEnqueued"];

    v128 = [v103 objectForKeyedSubscript:@"tfac2IReady"];
    [v2 setObject:v128 forKeyedSubscript:@"avTfac2IReady"];

    v129 = [v103 objectForKeyedSubscript:@"tfac2NWStart"];
    [v2 setObject:v129 forKeyedSubscript:@"avTfac2NWStart"];

    v130 = [v103 objectForKeyedSubscript:@"tfac2RPCreate"];
    [v2 setObject:v130 forKeyedSubscript:@"avTfac2RPCreate"];

    v131 = [v103 objectForKeyedSubscript:@"tfac2RPCreateEnd"];
    [v2 setObject:v131 forKeyedSubscript:@"avTfac2RPCreateEnd"];

    v132 = [v103 objectForKeyedSubscript:@"tfac2SetRate"];
    [v2 setObject:v132 forKeyedSubscript:@"avTfac2SetRate"];

    v133 = [v103 objectForKeyedSubscript:@"tfac2SetRateEnd"];
    [v2 setObject:v133 forKeyedSubscript:@"avTfac2SetRateEnd"];

    v134 = [v103 objectForKeyedSubscript:@"TimeItemToCurrent"];
    [v2 setObject:v134 forKeyedSubscript:@"avTimeItemToCurrent"];

    v135 = [v103 objectForKeyedSubscript:@"TimeItemToEnqueue"];
    [v2 setObject:v135 forKeyedSubscript:@"avTimeItemToEnqueue"];

    v136 = [v103 objectForKeyedSubscript:@"TimeItemToLTKU"];
    [v2 setObject:v136 forKeyedSubscript:@"avTimeItemToLTKU"];

    v137 = [v103 objectForKeyedSubscript:@"TimeLTKPToStart"];
    [v2 setObject:v137 forKeyedSubscript:@"avTimeLTKPToStart"];

    v138 = [v103 objectForKeyedSubscript:@"TimeLTKUToSTimebaseChange"];
    [v2 setObject:v138 forKeyedSubscript:@"avTimeLTKUToSTimebaseChange"];

    v139 = [v103 objectForKeyedSubscript:@"TimeUntilOutputStart"];
    [v2 setObject:v139 forKeyedSubscript:@"avTimeUntilOutputStart"];
  }

  if (MSVDeviceOSIsInternalInstall())
  {
    v140 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics_Oversize");
    if (os_log_type_enabled(v140, OS_LOG_TYPE_DEBUG))
    {
      v141 = *(a1 + 40);
      v143 = 138543618;
      v144 = v141;
      v145 = 2114;
      v146 = v2;
      _os_log_impl(&dword_1C5C61000, v140, OS_LOG_TYPE_DEBUG, "PlayPerfEvent: Logging CoreAnalytics event %{public}@ with payload:\n%{public}@", &v143, 0x16u);
    }
  }

  return v2;
}

- (void)generatePlayPerfSignposts:(id)signposts
{
  v102 = *MEMORY[0x1E69E9840];
  signpostsCopy = signposts;
  eventType = [signpostsCopy eventType];
  v5 = [eventType isEqualToString:@"FirstItem"];

  if (v5)
  {
    v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
    v7 = os_signpost_id_generate(v6);

    assetType = [signpostsCopy assetType];
    v9 = +[MPCPlayPerfConsumer analyticsContentType:](MPCPlayPerfConsumer, "analyticsContentType:", [assetType integerValue]);

    formatInfo = [signpostsCopy formatInfo];
    v11 = [MPCPlayPerfConsumer analyticsFormat:formatInfo];

    v12 = mach_continuous_time();
    v13 = v12 - mach_absolute_time();
    checkpointMRSetQueueBegin = [signpostsCopy checkpointMRSetQueueBegin];
    if (checkpointMRSetQueueBegin)
    {
      v15 = checkpointMRSetQueueBegin;
      checkpointSetQueueBegin = [signpostsCopy checkpointSetQueueBegin];

      if (checkpointSetQueueBegin)
      {
        v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
        v18 = v17;
        if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
        {
          checkpointMRSetQueueBegin2 = [signpostsCopy checkpointMRSetQueueBegin];
          v96 = 134349570;
          v97 = [checkpointMRSetQueueBegin2 longLongValue] + v13;
          v98 = 2082;
          uTF8String = [v9 UTF8String];
          v100 = 2082;
          uTF8String2 = [v11 UTF8String];
          _os_signpost_emit_with_name_impl(&dword_1C5C61000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v7, "SendQueue", "%{public, signpost.description:begin_time}llu,contentType=%{public, signpost.telemetry:string1, name=contentType}s format=%{public, signpost.telemetry:string2, name=format}s", &v96, 0x20u);
        }

        v20 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
        v21 = v20;
        if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
        {
          checkpointSetQueueBegin2 = [signpostsCopy checkpointSetQueueBegin];
          longLongValue = [checkpointSetQueueBegin2 longLongValue];
          v96 = 134349056;
          v97 = longLongValue + v13;
          _os_signpost_emit_with_name_impl(&dword_1C5C61000, v21, OS_SIGNPOST_INTERVAL_END, v7, "SendQueue", "%{public, signpost.description:end_time}llu,", &v96, 0xCu);
        }
      }
    }

    checkpointSetQueueBegin3 = [signpostsCopy checkpointSetQueueBegin];
    if (checkpointSetQueueBegin3)
    {
      v25 = checkpointSetQueueBegin3;
      checkpointAssetLoadBegin = [signpostsCopy checkpointAssetLoadBegin];

      if (checkpointAssetLoadBegin)
      {
        v27 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
        v28 = v27;
        if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
        {
          checkpointSetQueueBegin4 = [signpostsCopy checkpointSetQueueBegin];
          v30 = [checkpointSetQueueBegin4 longLongValue] + v13;
          uTF8String3 = [v9 UTF8String];
          uTF8String4 = [v11 UTF8String];
          v96 = 134349570;
          v97 = v30;
          v98 = 2082;
          uTF8String = uTF8String3;
          v100 = 2082;
          uTF8String2 = uTF8String4;
          _os_signpost_emit_with_name_impl(&dword_1C5C61000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v7, "SetQueue", "%{public, signpost.description:begin_time}llu,contentType=%{public, signpost.telemetry:string1, name=contentType}s format=%{public, signpost.telemetry:string2, name=format}s", &v96, 0x20u);
        }

        v33 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
        v34 = v33;
        if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
        {
          checkpointAssetLoadBegin2 = [signpostsCopy checkpointAssetLoadBegin];
          longLongValue2 = [checkpointAssetLoadBegin2 longLongValue];
          v96 = 134349056;
          v97 = longLongValue2 + v13;
          _os_signpost_emit_with_name_impl(&dword_1C5C61000, v34, OS_SIGNPOST_INTERVAL_END, v7, "SetQueue", "%{public, signpost.description:end_time}llu,", &v96, 0xCu);
        }
      }
    }

    checkpointAssetLoadEnd = [signpostsCopy checkpointAssetLoadEnd];
    if (checkpointAssetLoadEnd)
    {
      v38 = checkpointAssetLoadEnd;
      checkpointLikelyToKeepUp = [signpostsCopy checkpointLikelyToKeepUp];

      if (checkpointLikelyToKeepUp)
      {
        v40 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
        v41 = v40;
        if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
        {
          checkpointAssetLoadEnd2 = [signpostsCopy checkpointAssetLoadEnd];
          v43 = [checkpointAssetLoadEnd2 longLongValue] + v13;
          uTF8String5 = [v9 UTF8String];
          uTF8String6 = [v11 UTF8String];
          v96 = 134349570;
          v97 = v43;
          v98 = 2082;
          uTF8String = uTF8String5;
          v100 = 2082;
          uTF8String2 = uTF8String6;
          _os_signpost_emit_with_name_impl(&dword_1C5C61000, v41, OS_SIGNPOST_INTERVAL_BEGIN, v7, "WaitForLikelyToKeepUp", "%{public, signpost.description:begin_time}llu,contentType=%{public, signpost.telemetry:string1, name=contentType}s format=%{public, signpost.telemetry:string2, name=format}s", &v96, 0x20u);
        }

        v46 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
        v47 = v46;
        if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
        {
          checkpointLikelyToKeepUp2 = [signpostsCopy checkpointLikelyToKeepUp];
          longLongValue3 = [checkpointLikelyToKeepUp2 longLongValue];
          v96 = 134349056;
          v97 = longLongValue3 + v13;
          _os_signpost_emit_with_name_impl(&dword_1C5C61000, v47, OS_SIGNPOST_INTERVAL_END, v7, "WaitForLikelyToKeepUp", "%{public, signpost.description:end_time}llu,", &v96, 0xCu);
        }
      }
    }

    checkpointAssetLoadEnd3 = [signpostsCopy checkpointAssetLoadEnd];
    if (checkpointAssetLoadEnd3)
    {
      v51 = checkpointAssetLoadEnd3;
      checkpointReadyToPlay = [signpostsCopy checkpointReadyToPlay];

      if (checkpointReadyToPlay)
      {
        v53 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
        v54 = v53;
        if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
        {
          checkpointAssetLoadEnd4 = [signpostsCopy checkpointAssetLoadEnd];
          v56 = [checkpointAssetLoadEnd4 longLongValue] + v13;
          uTF8String7 = [v9 UTF8String];
          uTF8String8 = [v11 UTF8String];
          v96 = 134349570;
          v97 = v56;
          v98 = 2082;
          uTF8String = uTF8String7;
          v100 = 2082;
          uTF8String2 = uTF8String8;
          _os_signpost_emit_with_name_impl(&dword_1C5C61000, v54, OS_SIGNPOST_INTERVAL_BEGIN, v7, "WaitForReadyToPlay", "%{public, signpost.description:begin_time}llu,contentType=%{public, signpost.telemetry:string1, name=contentType}s format=%{public, signpost.telemetry:string2, name=format}s", &v96, 0x20u);
        }

        v59 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
        v60 = v59;
        if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v59))
        {
          checkpointReadyToPlay2 = [signpostsCopy checkpointReadyToPlay];
          longLongValue4 = [checkpointReadyToPlay2 longLongValue];
          v96 = 134349056;
          v97 = longLongValue4 + v13;
          _os_signpost_emit_with_name_impl(&dword_1C5C61000, v60, OS_SIGNPOST_INTERVAL_END, v7, "WaitForReadyToPlay", "%{public, signpost.description:end_time}llu,", &v96, 0xCu);
        }
      }
    }

    checkpointReadyToPlay3 = [signpostsCopy checkpointReadyToPlay];
    if (checkpointReadyToPlay3)
    {
      v64 = checkpointReadyToPlay3;
      checkpointRateOne = [signpostsCopy checkpointRateOne];

      if (checkpointRateOne)
      {
        checkpointReadyToPlay4 = [signpostsCopy checkpointReadyToPlay];
        longLongValue5 = [checkpointReadyToPlay4 longLongValue];

        checkpointPlay = [signpostsCopy checkpointPlay];

        if (checkpointPlay)
        {
          checkpointPlay2 = [signpostsCopy checkpointPlay];
          longLongValue6 = [checkpointPlay2 longLongValue];

          if (longLongValue5 <= longLongValue6)
          {
            longLongValue5 = longLongValue6;
          }
        }

        v71 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
        v72 = v71;
        if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v71))
        {
          v73 = longLongValue5 + v13;
          uTF8String9 = [v9 UTF8String];
          uTF8String10 = [v11 UTF8String];
          v96 = 134349570;
          v97 = v73;
          v98 = 2082;
          uTF8String = uTF8String9;
          v100 = 2082;
          uTF8String2 = uTF8String10;
          _os_signpost_emit_with_name_impl(&dword_1C5C61000, v72, OS_SIGNPOST_INTERVAL_BEGIN, v7, "PlayToSetRate", "%{public, signpost.description:begin_time}llu,contentType=%{public, signpost.telemetry:string1, name=contentType}s format=%{public, signpost.telemetry:string2, name=format}s", &v96, 0x20u);
        }

        v76 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
        v77 = v76;
        if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v76))
        {
          checkpointRateOne2 = [signpostsCopy checkpointRateOne];
          longLongValue7 = [checkpointRateOne2 longLongValue];
          v96 = 134349056;
          v97 = longLongValue7 + v13;
          _os_signpost_emit_with_name_impl(&dword_1C5C61000, v77, OS_SIGNPOST_INTERVAL_END, v7, "PlayToSetRate", "%{public, signpost.description:end_time}llu,", &v96, 0xCu);
        }
      }
    }

    checkpointRateOne3 = [signpostsCopy checkpointRateOne];
    if (checkpointRateOne3)
    {
      v81 = checkpointRateOne3;
      checkpointFirstAudioFrame = [signpostsCopy checkpointFirstAudioFrame];

      if (checkpointFirstAudioFrame)
      {
        v83 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
        v84 = v83;
        if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v83))
        {
          checkpointRateOne4 = [signpostsCopy checkpointRateOne];
          v86 = [checkpointRateOne4 longLongValue] + v13;
          uTF8String11 = [v9 UTF8String];
          uTF8String12 = [v11 UTF8String];
          v96 = 134349570;
          v97 = v86;
          v98 = 2082;
          uTF8String = uTF8String11;
          v100 = 2082;
          uTF8String2 = uTF8String12;
          _os_signpost_emit_with_name_impl(&dword_1C5C61000, v84, OS_SIGNPOST_INTERVAL_BEGIN, v7, "SetRateToEffectiveRate", "%{public, signpost.description:begin_time}llu,contentType=%{public, signpost.telemetry:string1, name=contentType}s format=%{public, signpost.telemetry:string2, name=format}s", &v96, 0x20u);
        }

        v89 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
        v90 = v89;
        if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v89))
        {
          checkpointRateOne5 = [signpostsCopy checkpointRateOne];
          longLongValue8 = [checkpointRateOne5 longLongValue];

          checkpointFirstAudioFrame2 = [signpostsCopy checkpointFirstAudioFrame];
          longLongValue9 = [checkpointFirstAudioFrame2 longLongValue];

          if (longLongValue8 + 1 > longLongValue9)
          {
            v95 = longLongValue8 + 1;
          }

          else
          {
            v95 = longLongValue9;
          }

          v96 = 134349056;
          v97 = v95 + v13;
          _os_signpost_emit_with_name_impl(&dword_1C5C61000, v90, OS_SIGNPOST_INTERVAL_END, v7, "SetRateToEffectiveRate", "%{public, signpost.description:end_time}llu,", &v96, 0xCu);
        }
      }
    }
  }
}

- (void)publishPlaybackMetrics:(id)metrics
{
  metricsCopy = metrics;
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);
  mediaRemotePublisher = [WeakRetained mediaRemotePublisher];
  objc_initWeak(&location, mediaRemotePublisher);

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__MPCPlayPerfConsumer_publishPlaybackMetrics___block_invoke;
  block[3] = &unk_1E8235150;
  objc_copyWeak(&v10, &location);
  v9 = metricsCopy;
  v7 = metricsCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __46__MPCPlayPerfConsumer_publishPlaybackMetrics___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained updatePlaybackMetrics:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)handleMetrics:(id)metrics
{
  v25 = *MEMORY[0x1E69E9840];
  metricsCopy = metrics;
  if (!metricsCopy)
  {
    goto LABEL_18;
  }

  if (MSVDeviceOSIsInternalInstall() && (MSVDeviceIsInternalCarry() & 1) == 0)
  {
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics_Oversize");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [metricsCopy description];
      *buf = 138543362;
      v24 = v6;
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "PlayPerfJSON: %{public}@", buf, 0xCu);
    }
  }

  playbackEngine = [(MPCPlayPerfConsumer *)self playbackEngine];
  eventType = [metricsCopy eventType];
  if ([eventType isEqualToString:@"FirstItem"])
  {

LABEL_10:
    eventStream = [playbackEngine eventStream];
    jsonObject = [metricsCopy jsonObject];
    v22[0] = jsonObject;
    v21[1] = @"queue-section-id";
    sectionIdentifier = [metricsCopy sectionIdentifier];
    v22[1] = sectionIdentifier;
    v21[2] = @"queue-item-id";
    itemIdentifier = [metricsCopy itemIdentifier];
    v22[2] = itemIdentifier;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
    [eventStream emitEventType:@"perf-report" payload:v15];

    goto LABEL_11;
  }

  eventType2 = [metricsCopy eventType];
  v10 = [eventType2 isEqualToString:@"NextItem"];

  if (v10)
  {
    goto LABEL_10;
  }

LABEL_11:
  [(MPCPlayPerfConsumer *)self generatePlayPerfSignposts:metricsCopy];
  [(MPCPlayPerfConsumer *)self sendMetricsToCoreAnalytics:metricsCopy];
  eventType3 = [metricsCopy eventType];
  if ([eventType3 isEqualToString:@"FirstItem"])
  {
    siriRefId = [metricsCopy siriRefId];

    if (siriRefId)
    {
      [(MPCPlayPerfConsumer *)self sendMetricsToSiriSelfLogger:metricsCopy];
    }
  }

  else
  {
  }

  eventType4 = [metricsCopy eventType];
  v19 = [eventType4 isEqualToString:@"FirstItem"];

  if (v19)
  {
    player = [playbackEngine player];
    [player donateMetricsToPlayerItem:metricsCopy];
  }

LABEL_18:
}

- (void)setupErrorHandlerForEventType:(id)type errorKey:(id)key prefix:(id)prefix
{
  keyCopy = key;
  prefixCopy = prefix;
  subscription = self->_subscription;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__MPCPlayPerfConsumer_setupErrorHandlerForEventType_errorKey_prefix___block_invoke;
  v13[3] = &unk_1E8231D30;
  v14 = keyCopy;
  v15 = prefixCopy;
  selfCopy = self;
  v11 = prefixCopy;
  v12 = keyCopy;
  [(MPCPlaybackEngineEventStreamSubscription *)subscription subscribeToEventType:type handler:v13];
}

uint64_t __69__MPCPlayPerfConsumer_setupErrorHandlerForEventType_errorKey_prefix___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 payload];
  v8 = [v7 objectForKeyedSubscript:a1[4]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 msv_errorByUnwrappingDomain:@"MPCError" code:28];

    if (!v9)
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = a1[5];
      v12 = [v8 msv_analyticSignature];
      v13 = [v10 stringWithFormat:@"%@:%@", v11, v12];

      v14 = a1[6];
      v15 = [MPCPlayPerfMetrics playMetricsWithErrorSignature:v13 event:v5 cursor:v6];
      [v14 handleMetrics:v15];
    }
  }

  return 1;
}

- (void)subscribeToEventStream:(id)stream
{
  objc_storeStrong(&self->_subscription, stream);
  streamCopy = stream;
  subscription = self->_subscription;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __46__MPCPlayPerfConsumer_subscribeToEventStream___block_invoke;
  v19[3] = &unk_1E8232330;
  v19[4] = self;
  [(MPCPlaybackEngineEventStreamSubscription *)subscription subscribeToEventType:@"item-begin" handler:v19];
  v7 = self->_subscription;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __46__MPCPlayPerfConsumer_subscribeToEventStream___block_invoke_2;
  v18[3] = &unk_1E8232330;
  v18[4] = self;
  [(MPCPlaybackEngineEventStreamSubscription *)v7 subscribeToEventType:@"perf-report" handler:v18];
  v8 = self->_subscription;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __46__MPCPlayPerfConsumer_subscribeToEventStream___block_invoke_3;
  v17[3] = &unk_1E8232330;
  v17[4] = self;
  [(MPCPlaybackEngineEventStreamSubscription *)v8 subscribeToEventType:@"item-ready-for-metrics" handler:v17];
  v9 = self->_subscription;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __46__MPCPlayPerfConsumer_subscribeToEventStream___block_invoke_4;
  v16[3] = &unk_1E8232330;
  v16[4] = self;
  [(MPCPlaybackEngineEventStreamSubscription *)v9 subscribeToEventType:@"remote-control-end" handler:v16];
  v10 = self->_subscription;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __46__MPCPlayPerfConsumer_subscribeToEventStream___block_invoke_5;
  v15[3] = &unk_1E8232330;
  v15[4] = self;
  [(MPCPlaybackEngineEventStreamSubscription *)v10 subscribeToEventType:@"remote-control-timeout" handler:v15];
  [(MPCPlayPerfConsumer *)self setupErrorHandlerForEventType:@"asset-load-end" errorKey:@"asset-load-error" prefix:@"AssetLoad"];
  [(MPCPlayPerfConsumer *)self setupErrorHandlerForEventType:@"queue-load-end" errorKey:@"queue-load-error" prefix:@"QueueLoad"];
  [(MPCPlayPerfConsumer *)self setupErrorHandlerForEventType:@"session-migrate-end" errorKey:@"session-migration-error" prefix:@"SessionMigrate"];
  [(MPCPlayPerfConsumer *)self setupErrorHandlerForEventType:@"session-restore-end" errorKey:@"session-restoration-error" prefix:@"SessionRestore"];
  [(MPCPlayPerfConsumer *)self setupErrorHandlerForEventType:@"shared-session-synchronization-end" errorKey:@"shared-sync-error" prefix:@"SharedSessionSynchronization"];
  [(MPCPlayPerfConsumer *)self setupErrorHandlerForEventType:@"session-activation-end" errorKey:@"session-activation-error" prefix:@"SessionActivation"];
  [(MPCPlayPerfConsumer *)self setupErrorHandlerForEventType:@"item-failed" errorKey:@"asset-load-error" prefix:@"PlayToEnd"];
  v11 = self->_subscription;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46__MPCPlayPerfConsumer_subscribeToEventStream___block_invoke_6;
  v14[3] = &unk_1E8232330;
  v14[4] = self;
  [(MPCPlaybackEngineEventStreamSubscription *)v11 subscribeToEventType:@"item-pause" handler:v14];
  v12 = self->_subscription;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46__MPCPlayPerfConsumer_subscribeToEventStream___block_invoke_7;
  v13[3] = &unk_1E8232330;
  v13[4] = self;
  [(MPCPlaybackEngineEventStreamSubscription *)v12 subscribeToEventType:@"item-rate-changed" handler:v13];
}

uint64_t __46__MPCPlayPerfConsumer_subscribeToEventStream___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 payload];
  v4 = [v3 objectForKeyedSubscript:@"perf-metrics"];
  [v2 publishPlaybackMetrics:v4];

  return 1;
}

uint64_t __46__MPCPlayPerfConsumer_subscribeToEventStream___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [MPCPlayPerfMetrics playMetricsWithItemReadyForMetricsEvent:a2 cursor:a3];
  [*(a1 + 32) handleMetrics:v4];

  return 1;
}

uint64_t __46__MPCPlayPerfConsumer_subscribeToEventStream___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 payload];
  v8 = [v7 objectForKeyedSubscript:@"remote-control-status"];
  v9 = [v8 firstObject];

  if ([v9 type] == 3)
  {
    v10 = [v9 error];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v12 = [v5 payload];
      v13 = [v12 objectForKeyedSubscript:@"remote-control-type"];
      [v13 unsignedIntValue];

      v14 = MRMediaRemoteCopyCommandDescription();
      v15 = MEMORY[0x1E696AEC0];
      v16 = [v9 error];
      v17 = [v16 msv_analyticSignature];
      v18 = [v15 stringWithFormat:@"Command:%@:%@", v14, v17];

      v19 = *(a1 + 32);
      v20 = [MPCPlayPerfMetrics playMetricsWithErrorSignature:v18 event:v5 cursor:v6];
      [v19 handleMetrics:v20];
    }
  }

  return 1;
}

uint64_t __46__MPCPlayPerfConsumer_subscribeToEventStream___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 payload];
  v8 = [v7 objectForKeyedSubscript:@"remote-control-type"];
  [v8 unsignedIntValue];

  v9 = MRMediaRemoteCopyCommandDescription();
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Command:%@:Timeout", v9];
  v11 = *(a1 + 32);
  v12 = [MPCPlayPerfMetrics playMetricsWithErrorSignature:v10 event:v6 cursor:v5];

  [v11 handleMetrics:v12];
  return 1;
}

uint64_t __46__MPCPlayPerfConsumer_subscribeToEventStream___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 payload];
  v8 = [v7 objectForKeyedSubscript:@"item-rate-change-reason"];

  v9 = [v5 payload];
  v10 = [v9 objectForKeyedSubscript:@"item-rate-change-source"];

  if ([v8 isEqualToString:@"error"])
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ItemPause:%@:%@", v8, v10];
    v12 = *(a1 + 32);
    v13 = [MPCPlayPerfMetrics playMetricsWithErrorSignature:v11 event:v5 cursor:v6];
    [v12 handleMetrics:v13];
  }

  return 1;
}

uint64_t __46__MPCPlayPerfConsumer_subscribeToEventStream___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 payload];
  v8 = [v7 objectForKeyedSubscript:@"item-rate-change-reason"];

  v9 = [v5 payload];
  v10 = [v9 objectForKeyedSubscript:@"item-rate-change-source"];

  if ([v8 isEqualToString:*MEMORY[0x1E6987AB0]])
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ItemRateChange:%@:%@", v8, v10];
    v12 = *(a1 + 32);
    v13 = [MPCPlayPerfMetrics playMetricsWithErrorSignature:v11 event:v5 cursor:v6];
    [v12 handleMetrics:v13];
  }

  return 1;
}

- (MPCPlayPerfConsumer)initWithPlaybackEngine:(id)engine
{
  engineCopy = engine;
  v8.receiver = self;
  v8.super_class = MPCPlayPerfConsumer;
  v5 = [(MPCPlayPerfConsumer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_playbackEngine, engineCopy);
  }

  return v6;
}

+ (id)coreAnalyticsEventNameWithEventType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"FirstItem"])
  {
    v4 = @"com.apple.amp.mediaplayer.playperf.FirstItem";
  }

  else if ([typeCopy isEqualToString:@"NextItem"])
  {
    v4 = @"com.apple.amp.mediaplayer.playperf.NextItem";
  }

  else if ([typeCopy isEqualToString:@"PlayError"])
  {
    v4 = @"com.apple.amp.mediaplayer.playperf.PlayError";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)analyticsFormat:(id)format
{
  formatCopy = format;
  v4 = [formatCopy objectForKeyedSubscript:@"codec"];
  integerValue = [v4 integerValue];

  v21 = bswap32(integerValue);
  v22 = 0;
  v6 = [MEMORY[0x1E696AEC0] stringWithCString:&v21 encoding:1];
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  v9 = [formatCopy objectForKeyedSubscript:@"bitrate"];
  integerValue2 = [v9 integerValue];

  v11 = [formatCopy objectForKeyedSubscript:@"channelLayout"];
  integerValue3 = [v11 integerValue];

  v13 = [formatCopy objectForKeyedSubscript:@"sampleRate"];
  integerValue4 = [v13 integerValue];

  v15 = [formatCopy objectForKeyedSubscript:@"bitrate"];

  integerValue5 = [v15 integerValue];
  if (integerValue2 >= 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %ldkbps, %ld", v8, integerValue2 / 0x3E8uLL, integerValue3];
    v17 = LABEL_5:;
    goto LABEL_6;
  }

  if (integerValue4 >= 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %ldkhz, %ld", v8, integerValue4 / 0x3E8uLL, integerValue5];
    goto LABEL_5;
  }

  v20 = &stru_1F454A698;
  if (v8)
  {
    v20 = v8;
  }

  v17 = v20;
LABEL_6:
  v18 = v17;

  return v18;
}

+ (id)analyticsContentType:(int64_t)type
{
  if ((type - 1) > 4)
  {
    return &stru_1F454A698;
  }

  else
  {
    return off_1E8231D78[type - 1];
  }
}

@end