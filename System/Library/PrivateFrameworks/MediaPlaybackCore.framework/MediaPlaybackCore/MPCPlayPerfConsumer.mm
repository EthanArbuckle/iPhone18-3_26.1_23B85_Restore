@interface MPCPlayPerfConsumer
+ (id)analyticsContentType:(int64_t)a3;
+ (id)analyticsFormat:(id)a3;
+ (id)coreAnalyticsEventNameWithEventType:(id)a3;
- (MPCPlayPerfConsumer)initWithPlaybackEngine:(id)a3;
- (MPCPlaybackEngine)playbackEngine;
- (void)generatePlayPerfSignposts:(id)a3;
- (void)handleMetrics:(id)a3;
- (void)publishPlaybackMetrics:(id)a3;
- (void)sendMetricsToCoreAnalytics:(id)a3;
- (void)sendMetricsToSiriSelfLogger:(id)a3;
- (void)setupErrorHandlerForEventType:(id)a3 errorKey:(id)a4 prefix:(id)a5;
- (void)subscribeToEventStream:(id)a3;
@end

@implementation MPCPlayPerfConsumer

- (MPCPlaybackEngine)playbackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

- (void)sendMetricsToSiriSelfLogger:(id)a3
{
  v8 = a3;
  v4 = [v8 siriRefId];
  v5 = [v4 isEqualToString:self->_lastSiriReferenceIdentifier];

  if ((v5 & 1) == 0)
  {
    [MPCSiriSelfLogger sendMetrics:v8];
    v6 = [v8 siriRefId];
    lastSiriReferenceIdentifier = self->_lastSiriReferenceIdentifier;
    self->_lastSiriReferenceIdentifier = v6;
  }
}

- (void)sendMetricsToCoreAnalytics:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [v3 eventType];
  v6 = [v4 coreAnalyticsEventNameWithEventType:v5];

  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__MPCPlayPerfConsumer_sendMetricsToCoreAnalytics___block_invoke;
    v8[3] = &unk_1E8231D58;
    v9 = v3;
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

- (void)generatePlayPerfSignposts:(id)a3
{
  v102 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 eventType];
  v5 = [v4 isEqualToString:@"FirstItem"];

  if (v5)
  {
    v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
    v7 = os_signpost_id_generate(v6);

    v8 = [v3 assetType];
    v9 = +[MPCPlayPerfConsumer analyticsContentType:](MPCPlayPerfConsumer, "analyticsContentType:", [v8 integerValue]);

    v10 = [v3 formatInfo];
    v11 = [MPCPlayPerfConsumer analyticsFormat:v10];

    v12 = mach_continuous_time();
    v13 = v12 - mach_absolute_time();
    v14 = [v3 checkpointMRSetQueueBegin];
    if (v14)
    {
      v15 = v14;
      v16 = [v3 checkpointSetQueueBegin];

      if (v16)
      {
        v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
        v18 = v17;
        if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
        {
          v19 = [v3 checkpointMRSetQueueBegin];
          v96 = 134349570;
          v97 = [v19 longLongValue] + v13;
          v98 = 2082;
          v99 = [v9 UTF8String];
          v100 = 2082;
          v101 = [v11 UTF8String];
          _os_signpost_emit_with_name_impl(&dword_1C5C61000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v7, "SendQueue", "%{public, signpost.description:begin_time}llu,contentType=%{public, signpost.telemetry:string1, name=contentType}s format=%{public, signpost.telemetry:string2, name=format}s", &v96, 0x20u);
        }

        v20 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
        v21 = v20;
        if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
        {
          v22 = [v3 checkpointSetQueueBegin];
          v23 = [v22 longLongValue];
          v96 = 134349056;
          v97 = v23 + v13;
          _os_signpost_emit_with_name_impl(&dword_1C5C61000, v21, OS_SIGNPOST_INTERVAL_END, v7, "SendQueue", "%{public, signpost.description:end_time}llu,", &v96, 0xCu);
        }
      }
    }

    v24 = [v3 checkpointSetQueueBegin];
    if (v24)
    {
      v25 = v24;
      v26 = [v3 checkpointAssetLoadBegin];

      if (v26)
      {
        v27 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
        v28 = v27;
        if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
        {
          v29 = [v3 checkpointSetQueueBegin];
          v30 = [v29 longLongValue] + v13;
          v31 = [v9 UTF8String];
          v32 = [v11 UTF8String];
          v96 = 134349570;
          v97 = v30;
          v98 = 2082;
          v99 = v31;
          v100 = 2082;
          v101 = v32;
          _os_signpost_emit_with_name_impl(&dword_1C5C61000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v7, "SetQueue", "%{public, signpost.description:begin_time}llu,contentType=%{public, signpost.telemetry:string1, name=contentType}s format=%{public, signpost.telemetry:string2, name=format}s", &v96, 0x20u);
        }

        v33 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
        v34 = v33;
        if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
        {
          v35 = [v3 checkpointAssetLoadBegin];
          v36 = [v35 longLongValue];
          v96 = 134349056;
          v97 = v36 + v13;
          _os_signpost_emit_with_name_impl(&dword_1C5C61000, v34, OS_SIGNPOST_INTERVAL_END, v7, "SetQueue", "%{public, signpost.description:end_time}llu,", &v96, 0xCu);
        }
      }
    }

    v37 = [v3 checkpointAssetLoadEnd];
    if (v37)
    {
      v38 = v37;
      v39 = [v3 checkpointLikelyToKeepUp];

      if (v39)
      {
        v40 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
        v41 = v40;
        if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
        {
          v42 = [v3 checkpointAssetLoadEnd];
          v43 = [v42 longLongValue] + v13;
          v44 = [v9 UTF8String];
          v45 = [v11 UTF8String];
          v96 = 134349570;
          v97 = v43;
          v98 = 2082;
          v99 = v44;
          v100 = 2082;
          v101 = v45;
          _os_signpost_emit_with_name_impl(&dword_1C5C61000, v41, OS_SIGNPOST_INTERVAL_BEGIN, v7, "WaitForLikelyToKeepUp", "%{public, signpost.description:begin_time}llu,contentType=%{public, signpost.telemetry:string1, name=contentType}s format=%{public, signpost.telemetry:string2, name=format}s", &v96, 0x20u);
        }

        v46 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
        v47 = v46;
        if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
        {
          v48 = [v3 checkpointLikelyToKeepUp];
          v49 = [v48 longLongValue];
          v96 = 134349056;
          v97 = v49 + v13;
          _os_signpost_emit_with_name_impl(&dword_1C5C61000, v47, OS_SIGNPOST_INTERVAL_END, v7, "WaitForLikelyToKeepUp", "%{public, signpost.description:end_time}llu,", &v96, 0xCu);
        }
      }
    }

    v50 = [v3 checkpointAssetLoadEnd];
    if (v50)
    {
      v51 = v50;
      v52 = [v3 checkpointReadyToPlay];

      if (v52)
      {
        v53 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
        v54 = v53;
        if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
        {
          v55 = [v3 checkpointAssetLoadEnd];
          v56 = [v55 longLongValue] + v13;
          v57 = [v9 UTF8String];
          v58 = [v11 UTF8String];
          v96 = 134349570;
          v97 = v56;
          v98 = 2082;
          v99 = v57;
          v100 = 2082;
          v101 = v58;
          _os_signpost_emit_with_name_impl(&dword_1C5C61000, v54, OS_SIGNPOST_INTERVAL_BEGIN, v7, "WaitForReadyToPlay", "%{public, signpost.description:begin_time}llu,contentType=%{public, signpost.telemetry:string1, name=contentType}s format=%{public, signpost.telemetry:string2, name=format}s", &v96, 0x20u);
        }

        v59 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
        v60 = v59;
        if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v59))
        {
          v61 = [v3 checkpointReadyToPlay];
          v62 = [v61 longLongValue];
          v96 = 134349056;
          v97 = v62 + v13;
          _os_signpost_emit_with_name_impl(&dword_1C5C61000, v60, OS_SIGNPOST_INTERVAL_END, v7, "WaitForReadyToPlay", "%{public, signpost.description:end_time}llu,", &v96, 0xCu);
        }
      }
    }

    v63 = [v3 checkpointReadyToPlay];
    if (v63)
    {
      v64 = v63;
      v65 = [v3 checkpointRateOne];

      if (v65)
      {
        v66 = [v3 checkpointReadyToPlay];
        v67 = [v66 longLongValue];

        v68 = [v3 checkpointPlay];

        if (v68)
        {
          v69 = [v3 checkpointPlay];
          v70 = [v69 longLongValue];

          if (v67 <= v70)
          {
            v67 = v70;
          }
        }

        v71 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
        v72 = v71;
        if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v71))
        {
          v73 = v67 + v13;
          v74 = [v9 UTF8String];
          v75 = [v11 UTF8String];
          v96 = 134349570;
          v97 = v73;
          v98 = 2082;
          v99 = v74;
          v100 = 2082;
          v101 = v75;
          _os_signpost_emit_with_name_impl(&dword_1C5C61000, v72, OS_SIGNPOST_INTERVAL_BEGIN, v7, "PlayToSetRate", "%{public, signpost.description:begin_time}llu,contentType=%{public, signpost.telemetry:string1, name=contentType}s format=%{public, signpost.telemetry:string2, name=format}s", &v96, 0x20u);
        }

        v76 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
        v77 = v76;
        if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v76))
        {
          v78 = [v3 checkpointRateOne];
          v79 = [v78 longLongValue];
          v96 = 134349056;
          v97 = v79 + v13;
          _os_signpost_emit_with_name_impl(&dword_1C5C61000, v77, OS_SIGNPOST_INTERVAL_END, v7, "PlayToSetRate", "%{public, signpost.description:end_time}llu,", &v96, 0xCu);
        }
      }
    }

    v80 = [v3 checkpointRateOne];
    if (v80)
    {
      v81 = v80;
      v82 = [v3 checkpointFirstAudioFrame];

      if (v82)
      {
        v83 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
        v84 = v83;
        if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v83))
        {
          v85 = [v3 checkpointRateOne];
          v86 = [v85 longLongValue] + v13;
          v87 = [v9 UTF8String];
          v88 = [v11 UTF8String];
          v96 = 134349570;
          v97 = v86;
          v98 = 2082;
          v99 = v87;
          v100 = 2082;
          v101 = v88;
          _os_signpost_emit_with_name_impl(&dword_1C5C61000, v84, OS_SIGNPOST_INTERVAL_BEGIN, v7, "SetRateToEffectiveRate", "%{public, signpost.description:begin_time}llu,contentType=%{public, signpost.telemetry:string1, name=contentType}s format=%{public, signpost.telemetry:string2, name=format}s", &v96, 0x20u);
        }

        v89 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
        v90 = v89;
        if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v89))
        {
          v91 = [v3 checkpointRateOne];
          v92 = [v91 longLongValue];

          v93 = [v3 checkpointFirstAudioFrame];
          v94 = [v93 longLongValue];

          if (v92 + 1 > v94)
          {
            v95 = v92 + 1;
          }

          else
          {
            v95 = v94;
          }

          v96 = 134349056;
          v97 = v95 + v13;
          _os_signpost_emit_with_name_impl(&dword_1C5C61000, v90, OS_SIGNPOST_INTERVAL_END, v7, "SetRateToEffectiveRate", "%{public, signpost.description:end_time}llu,", &v96, 0xCu);
        }
      }
    }
  }
}

- (void)publishPlaybackMetrics:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);
  v6 = [WeakRetained mediaRemotePublisher];
  objc_initWeak(&location, v6);

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__MPCPlayPerfConsumer_publishPlaybackMetrics___block_invoke;
  block[3] = &unk_1E8235150;
  objc_copyWeak(&v10, &location);
  v9 = v4;
  v7 = v4;
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

- (void)handleMetrics:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    goto LABEL_18;
  }

  if (MSVDeviceOSIsInternalInstall() && (MSVDeviceIsInternalCarry() & 1) == 0)
  {
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics_Oversize");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 description];
      *buf = 138543362;
      v24 = v6;
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "PlayPerfJSON: %{public}@", buf, 0xCu);
    }
  }

  v7 = [(MPCPlayPerfConsumer *)self playbackEngine];
  v8 = [v4 eventType];
  if ([v8 isEqualToString:@"FirstItem"])
  {

LABEL_10:
    v11 = [v7 eventStream];
    v12 = [v4 jsonObject];
    v22[0] = v12;
    v21[1] = @"queue-section-id";
    v13 = [v4 sectionIdentifier];
    v22[1] = v13;
    v21[2] = @"queue-item-id";
    v14 = [v4 itemIdentifier];
    v22[2] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
    [v11 emitEventType:@"perf-report" payload:v15];

    goto LABEL_11;
  }

  v9 = [v4 eventType];
  v10 = [v9 isEqualToString:@"NextItem"];

  if (v10)
  {
    goto LABEL_10;
  }

LABEL_11:
  [(MPCPlayPerfConsumer *)self generatePlayPerfSignposts:v4];
  [(MPCPlayPerfConsumer *)self sendMetricsToCoreAnalytics:v4];
  v16 = [v4 eventType];
  if ([v16 isEqualToString:@"FirstItem"])
  {
    v17 = [v4 siriRefId];

    if (v17)
    {
      [(MPCPlayPerfConsumer *)self sendMetricsToSiriSelfLogger:v4];
    }
  }

  else
  {
  }

  v18 = [v4 eventType];
  v19 = [v18 isEqualToString:@"FirstItem"];

  if (v19)
  {
    v20 = [v7 player];
    [v20 donateMetricsToPlayerItem:v4];
  }

LABEL_18:
}

- (void)setupErrorHandlerForEventType:(id)a3 errorKey:(id)a4 prefix:(id)a5
{
  v8 = a4;
  v9 = a5;
  subscription = self->_subscription;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__MPCPlayPerfConsumer_setupErrorHandlerForEventType_errorKey_prefix___block_invoke;
  v13[3] = &unk_1E8231D30;
  v14 = v8;
  v15 = v9;
  v16 = self;
  v11 = v9;
  v12 = v8;
  [(MPCPlaybackEngineEventStreamSubscription *)subscription subscribeToEventType:a3 handler:v13];
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

- (void)subscribeToEventStream:(id)a3
{
  objc_storeStrong(&self->_subscription, a3);
  v5 = a3;
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

- (MPCPlayPerfConsumer)initWithPlaybackEngine:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MPCPlayPerfConsumer;
  v5 = [(MPCPlayPerfConsumer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_playbackEngine, v4);
  }

  return v6;
}

+ (id)coreAnalyticsEventNameWithEventType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"FirstItem"])
  {
    v4 = @"com.apple.amp.mediaplayer.playperf.FirstItem";
  }

  else if ([v3 isEqualToString:@"NextItem"])
  {
    v4 = @"com.apple.amp.mediaplayer.playperf.NextItem";
  }

  else if ([v3 isEqualToString:@"PlayError"])
  {
    v4 = @"com.apple.amp.mediaplayer.playperf.PlayError";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)analyticsFormat:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"codec"];
  v5 = [v4 integerValue];

  v21 = bswap32(v5);
  v22 = 0;
  v6 = [MEMORY[0x1E696AEC0] stringWithCString:&v21 encoding:1];
  v7 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];

  v9 = [v3 objectForKeyedSubscript:@"bitrate"];
  v10 = [v9 integerValue];

  v11 = [v3 objectForKeyedSubscript:@"channelLayout"];
  v12 = [v11 integerValue];

  v13 = [v3 objectForKeyedSubscript:@"sampleRate"];
  v14 = [v13 integerValue];

  v15 = [v3 objectForKeyedSubscript:@"bitrate"];

  v16 = [v15 integerValue];
  if (v10 >= 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %ldkbps, %ld", v8, v10 / 0x3E8uLL, v12];
    v17 = LABEL_5:;
    goto LABEL_6;
  }

  if (v14 >= 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %ldkhz, %ld", v8, v14 / 0x3E8uLL, v16];
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

+ (id)analyticsContentType:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return &stru_1F454A698;
  }

  else
  {
    return off_1E8231D78[a3 - 1];
  }
}

@end