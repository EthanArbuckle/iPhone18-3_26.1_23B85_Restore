@interface MPCPlayPerfMetrics
+ (id)playMetricsWithErrorSignature:(id)a3 event:(id)a4 cursor:(id)a5;
+ (id)playMetricsWithItemReadyForMetricsEvent:(id)a3 cursor:(id)a4;
- (MPCPlayPerfMetrics)init;
- (NSDictionary)AVPlayerItemPerformanceMetrics;
- (NSDictionary)formatInfo;
- (NSDictionary)itemMetadata;
- (NSDictionary)routeInfo;
- (NSNumber)assetCacheAge;
- (NSNumber)assetLoadWaitTime;
- (NSNumber)assetLocation;
- (NSNumber)assetProtectionType;
- (NSNumber)assetSource;
- (NSNumber)assetType;
- (NSNumber)avTime;
- (NSNumber)bagWaitTime;
- (NSNumber)checkpointAssetLoadBegin;
- (NSNumber)checkpointAssetLoadEnd;
- (NSNumber)checkpointFirstAudioFrame;
- (NSNumber)checkpointLikelyToKeepUp;
- (NSNumber)checkpointMRPlay;
- (NSNumber)checkpointMRSetQueueBegin;
- (NSNumber)checkpointPlay;
- (NSNumber)checkpointRateOne;
- (NSNumber)checkpointRateZero;
- (NSNumber)checkpointReadyToPlay;
- (NSNumber)checkpointSetQueueBegin;
- (NSNumber)checkpointSetQueueEnd;
- (NSNumber)endpointType;
- (NSNumber)errorResolution;
- (NSNumber)eventTime;
- (NSNumber)firstAudioFrameWaitTime;
- (NSNumber)hasAccountInfo;
- (NSNumber)hasOfflinePlaybackKeys;
- (NSNumber)hasOnlinePlaybackKeys;
- (NSNumber)hlsMetadataWaitTime;
- (NSNumber)isActiveAccount;
- (NSNumber)isAutoPlayEnabled;
- (NSNumber)isDelegatedPlayback;
- (NSNumber)isFirstPlay;
- (NSNumber)isRemoteSetQueue;
- (NSNumber)isReplacingPlayback;
- (NSNumber)isSharePlay;
- (NSNumber)isShuffled;
- (NSNumber)leaseWaitTime;
- (NSNumber)lookupWaitTime;
- (NSNumber)mediaPlayerTime;
- (NSNumber)mediaRedownloadWaitTime;
- (NSNumber)musicTotalTime;
- (NSNumber)musicWaitTime;
- (NSNumber)networkTime;
- (NSNumber)networkType;
- (NSNumber)nextItemWaitTime;
- (NSNumber)playCommandSendTime;
- (NSNumber)playCommandWaitTime;
- (NSNumber)queueCommandType;
- (NSNumber)queueLoadWaitTime;
- (NSNumber)rateChangeWaitTime;
- (NSNumber)readyToPlayStatusWaitTime;
- (NSNumber)seekBeforePlaying;
- (NSNumber)sessionActivationAVTime;
- (NSNumber)sessionActivationClientTime;
- (NSNumber)sessionActivationWaitTime;
- (NSNumber)setQueueCommandSendTime;
- (NSNumber)subscriptionAssetLoadWaitTime;
- (NSNumber)subscriptionType;
- (NSNumber)suzeLeaseWaitTime;
- (NSNumber)timeSinceBoot;
- (NSNumber)timeSinceLaunch;
- (NSNumber)timeSincePaused;
- (NSNumber)vocalsControlActive;
- (NSString)errorSignature;
- (NSString)eventType;
- (NSString)experimentID;
- (NSString)featureName;
- (NSString)itemIdentifier;
- (NSString)queueType;
- (NSString)sectionIdentifier;
- (NSString)siriRefId;
- (NSString)storefront;
- (NSString)treatmentID;
- (id)_buildSegmentForComponent:(void *)a3 subcomponent:(void *)a4 duration:;
- (id)description;
- (id)dictionaryRepresentation;
- (id)jsonObject;
- (void)_addComplexityToSegment:(void *)a3 complexity:(int)a4 when:;
- (void)_addOptimizationToSegment:(void *)a3 optimization:(uint64_t)a4 when:;
- (void)_addStepToSegment:(void *)a3 name:(void *)a4 duration:(char)a5 options:;
- (void)addAssetSelectionWithCursor:(id)a3 itemIDPayload:(id)a4;
- (void)addEnvironmentInfoWithCursor:(id)a3;
- (void)addNetworkTimesWithScopedCursor:(id)a3;
- (void)addPlaybackBehaviorWithCursor:(id)a3;
- (void)addQueueMetadata:(id)a3;
- (void)addSessionActivationTimesWithScopedCursor:(id)a3;
- (void)addSharePlayWithCursor:(id)a3;
- (void)set_AVPlayerItemPerformanceMetrics:(id)a3;
- (void)set_assetCacheAge:(id)a3;
- (void)set_assetLoadWaitTime:(id)a3;
- (void)set_assetLocation:(id)a3;
- (void)set_assetProtectionType:(id)a3;
- (void)set_assetSource:(id)a3;
- (void)set_assetType:(id)a3;
- (void)set_bagWaitTime:(id)a3;
- (void)set_checkpointAssetLoadBegin:(id)a3;
- (void)set_checkpointAssetLoadEnd:(id)a3;
- (void)set_checkpointFirstAudioFrame:(id)a3;
- (void)set_checkpointLikelyToKeepUp:(id)a3;
- (void)set_checkpointMRPlay:(id)a3;
- (void)set_checkpointMRSetQueueBegin:(id)a3;
- (void)set_checkpointPlay:(id)a3;
- (void)set_checkpointRateOne:(id)a3;
- (void)set_checkpointRateZero:(id)a3;
- (void)set_checkpointReadyToPlay:(id)a3;
- (void)set_checkpointSetQueueBegin:(id)a3;
- (void)set_checkpointSetQueueEnd:(id)a3;
- (void)set_endpointType:(id)a3;
- (void)set_errorResolution:(id)a3;
- (void)set_errorSignature:(id)a3;
- (void)set_eventTime:(id)a3;
- (void)set_eventType:(id)a3;
- (void)set_experimentID:(id)a3;
- (void)set_featureName:(id)a3;
- (void)set_firstAudioFrameWaitTime:(id)a3;
- (void)set_formatInfo:(id)a3;
- (void)set_hasAccountInfo:(id)a3;
- (void)set_hasOfflinePlaybackKeys:(id)a3;
- (void)set_hasOnlinePlaybackKeys:(id)a3;
- (void)set_hlsMetadataWaitTime:(id)a3;
- (void)set_isActiveAccount:(id)a3;
- (void)set_isAutoPlayEnabled:(id)a3;
- (void)set_isDelegatedPlayback:(id)a3;
- (void)set_isFirstPlay:(id)a3;
- (void)set_isRemoteSetQueue:(id)a3;
- (void)set_isReplacingPlayback:(id)a3;
- (void)set_isSharePlay:(id)a3;
- (void)set_isShuffled:(id)a3;
- (void)set_itemIdentifier:(id)a3;
- (void)set_itemMetadata:(id)a3;
- (void)set_leaseWaitTime:(id)a3;
- (void)set_lookupWaitTime:(id)a3;
- (void)set_mediaRedownloadWaitTime:(id)a3;
- (void)set_networkType:(id)a3;
- (void)set_nextItemWaitTime:(id)a3;
- (void)set_playCommandSendTime:(id)a3;
- (void)set_playCommandWaitTime:(id)a3;
- (void)set_queueCommandType:(id)a3;
- (void)set_queueLoadWaitTime:(id)a3;
- (void)set_queueType:(id)a3;
- (void)set_rateChangeWaitTime:(id)a3;
- (void)set_readyToPlayStatusWaitTime:(id)a3;
- (void)set_routeInfo:(id)a3;
- (void)set_sectionIdentifier:(id)a3;
- (void)set_seekBeforePlaying:(id)a3;
- (void)set_sessionActivationAVTime:(id)a3;
- (void)set_sessionActivationClientTime:(id)a3;
- (void)set_sessionActivationWaitTime:(id)a3;
- (void)set_setQueueCommandSendTime:(id)a3;
- (void)set_siriRefId:(id)a3;
- (void)set_storefront:(id)a3;
- (void)set_subscriptionAssetLoadWaitTime:(id)a3;
- (void)set_subscriptionType:(id)a3;
- (void)set_suzeLeaseWaitTime:(id)a3;
- (void)set_timeSinceBoot:(id)a3;
- (void)set_timeSinceLaunch:(id)a3;
- (void)set_timeSincePaused:(id)a3;
- (void)set_treatmentID:(id)a3;
- (void)set_vocalsControlActive:(id)a3;
@end

@implementation MPCPlayPerfMetrics

- (void)addEnvironmentInfoWithCursor:(id)a3
{
  v6 = [a3 findPreviousEventWithType:@"network-type-changed" matchingPayload:0];
  v4 = [v6 payload];
  v5 = [v4 objectForKeyedSubscript:@"network-type"];
  [(MPCPlayPerfMetrics *)self set_networkType:v5];
}

- (void)addAssetSelectionWithCursor:(id)a3 itemIDPayload:(id)a4
{
  v68 = *MEMORY[0x1E69E9840];
  v43 = a3;
  v44 = a4;
  v42 = [v43 findPreviousEventWithType:@"asset-selection" matchingPayload:?];
  if (v42)
  {
    v6 = [v42 payload];
    v7 = [v6 objectForKeyedSubscript:@"asset-load-info"];

    v8 = [v7 objectForKeyedSubscript:@"item-asset-type"];
    [(MPCPlayPerfMetrics *)self set_assetType:v8];

    v9 = [v7 objectForKeyedSubscript:@"item-asset-source"];
    [(MPCPlayPerfMetrics *)self set_assetSource:v9];

    v10 = [v7 objectForKeyedSubscript:@"item-asset-protection-type"];
    [(MPCPlayPerfMetrics *)self set_assetProtectionType:v10];

    v11 = [v7 objectForKeyedSubscript:@"item-asset-location"];
    [(MPCPlayPerfMetrics *)self set_assetLocation:v11];

    v12 = [v7 objectForKeyedSubscript:@"item-asset-cache-age"];
    [(MPCPlayPerfMetrics *)self set_assetCacheAge:v12];

    v13 = [v7 objectForKeyedSubscript:@"item-asset-endpoint-type"];
    [(MPCPlayPerfMetrics *)self set_endpointType:v13];

    v14 = [v7 objectForKeyedSubscript:@"item-asset-is-delegated-playback"];
    [(MPCPlayPerfMetrics *)self set_isDelegatedPlayback:v14];

    v15 = [v7 objectForKeyedSubscript:@"item-asset-has-online-keys"];
    [(MPCPlayPerfMetrics *)self set_hasOnlinePlaybackKeys:v15];

    v16 = [v7 objectForKeyedSubscript:@"item-asset-has-offline-keys"];
    [(MPCPlayPerfMetrics *)self set_hasOfflinePlaybackKeys:v16];

    v17 = [v7 objectForKeyedSubscript:@"experiment-id"];
    [(MPCPlayPerfMetrics *)self set_experimentID:v17];

    v18 = [v7 objectForKeyedSubscript:@"experiment-treatment-id"];
    [(MPCPlayPerfMetrics *)self set_treatmentID:v18];
  }

  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__3197;
  v50 = __Block_byref_object_dispose__3198;
  v51 = 0;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __64__MPCPlayPerfMetrics_addAssetSelectionWithCursor_itemIDPayload___block_invoke;
  v45[3] = &unk_1E82322F0;
  v45[4] = &v46;
  [v43 enumeratePreviousEventsWithType:@"audio-format-changed" matchingPayload:v44 usingBlock:v45];
  v19 = v47[5];
  if (v19)
  {
    v20 = v19;
    v52 = @"tier";
    v41 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v20, "tier")}];
    v60 = v41;
    v53 = @"bitrate";
    v21 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v20, "bitrate")}];
    v61 = v21;
    v54 = @"sampleRate";
    v22 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v20, "sampleRate")}];
    v62 = v22;
    v55 = @"bitDepth";
    v23 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v20, "bitDepth")}];
    v63 = v23;
    v56 = @"codec";
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v20, "codec")}];
    v64 = v24;
    v57 = @"channelLayout";
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v20, "channelLayout")}];
    v65 = v25;
    v58 = @"spatialized";
    v26 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v20, "isSpatialized")}];
    v66 = v26;
    v59 = @"multiChannel";
    v27 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v20, "isMultiChannel")}];
    v67 = v27;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v52 count:8];

    [(MPCPlayPerfMetrics *)self set_formatInfo:v28];
  }

  v29 = [v43 findPreviousEventWithType:@"item-configuration-end" matchingPayload:v44];
  v30 = v29;
  if (v29)
  {
    v31 = [v29 payload];
    v32 = [v31 objectForKeyedSubscript:@"hls-metadata-wait-time"];
    [(MPCPlayPerfMetrics *)self set_hlsMetadataWaitTime:v32];

    v33 = [v30 payload];
    v34 = [v33 objectForKeyedSubscript:@"audio-route"];

    if (v34)
    {
      v35 = v34;
      v52 = @"name";
      v36 = [v35 name];
      v37 = v36;
      v38 = &stru_1F454A698;
      if (v36)
      {
        v38 = v36;
      }

      v60 = v38;
      v53 = @"type";
      v39 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v35, "type")}];
      v61 = v39;
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v52 count:2];

      [(MPCPlayPerfMetrics *)self set_routeInfo:v40];
    }
  }

  _Block_object_dispose(&v46, 8);
}

void __64__MPCPlayPerfMetrics_addAssetSelectionWithCursor_itemIDPayload___block_invoke(uint64_t a1, void *a2, BOOL *a3)
{
  v5 = [a2 payload];
  v9 = [v5 objectForKeyedSubscript:@"item-audio-format-metadata"];

  v6 = [v9 objectForKeyedSubscript:@"active-format"];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  *a3 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

- (void)addSessionActivationTimesWithScopedCursor:(id)a3
{
  v24[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__3197;
  v22[4] = __Block_byref_object_dispose__3198;
  v23 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v24[0] = @"session-activation-end";
  v24[1] = @"session-activation-begin";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__MPCPlayPerfMetrics_addSessionActivationTimesWithScopedCursor___block_invoke;
  v9[3] = &unk_1E8231DF8;
  v9[4] = v22;
  v9[5] = &v18;
  v9[6] = &v14;
  v9[7] = &v10;
  [v4 enumeratePreviousEventsWithTypes:v5 usingBlock:v9];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:v19[3]];
  [(MPCPlayPerfMetrics *)self set_sessionActivationWaitTime:v6];

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:v15[3]];
  [(MPCPlayPerfMetrics *)self set_sessionActivationAVTime:v7];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:v11[3]];
  [(MPCPlayPerfMetrics *)self set_sessionActivationClientTime:v8];

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(v22, 8);
}

void __64__MPCPlayPerfMetrics_addSessionActivationTimesWithScopedCursor___block_invoke(void *a1, void *a2)
{
  v19 = a2;
  v3 = [v19 type];
  v4 = [v3 isEqualToString:@"session-activation-end"];

  if (v4)
  {
    v5 = *(a1[4] + 8);
    v6 = v19;
    v7 = *(v5 + 40);
    *(v5 + 40) = v6;
  }

  else
  {
    v8 = [v19 type];
    v9 = [v8 isEqualToString:@"session-activation-begin"];

    if (!v9)
    {
      goto LABEL_9;
    }

    v10 = *(a1[4] + 8);
    v11 = *(v10 + 40);
    if (v11)
    {
      [v11 durationSinceEvent:v19];
      *(*(a1[5] + 8) + 24) = v12 + *(*(a1[5] + 8) + 24);
      v13 = [*(*(a1[4] + 8) + 40) payload];
      v14 = [v13 objectForKeyedSubscript:@"session-activation-av-time"];
      [v14 doubleValue];
      *(*(a1[6] + 8) + 24) = v15 + *(*(a1[6] + 8) + 24);

      v16 = [*(*(a1[4] + 8) + 40) payload];
      v17 = [v16 objectForKeyedSubscript:@"session-activation-client-time"];
      [v17 doubleValue];
      *(*(a1[7] + 8) + 24) = v18 + *(*(a1[7] + 8) + 24);

      v10 = *(a1[4] + 8);
      v7 = *(v10 + 40);
    }

    else
    {
      v7 = 0;
    }

    *(v10 + 40) = 0;
  }

LABEL_9:
}

- (void)addNetworkTimesWithScopedCursor:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = [v4 dictionary];
  v17 = @"blocks-playback";
  v18[0] = MEMORY[0x1E695E118];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__MPCPlayPerfMetrics_addNetworkTimesWithScopedCursor___block_invoke;
  v15[3] = &unk_1E8231DD0;
  v15[4] = self;
  v16 = v6;
  v8 = v6;
  [v5 enumeratePreviousEventsWithType:@"network-operation" matchingPayload:v7 usingBlock:v15];

  v9 = [v8 objectForKeyedSubscript:&unk_1F4599070];
  [(MPCPlayPerfMetrics *)self set_bagWaitTime:v9];

  v10 = [v8 objectForKeyedSubscript:&unk_1F4599088];
  [(MPCPlayPerfMetrics *)self set_lookupWaitTime:v10];

  v11 = [v8 objectForKeyedSubscript:&unk_1F45990A0];
  [(MPCPlayPerfMetrics *)self set_leaseWaitTime:v11];

  v12 = [v8 objectForKeyedSubscript:&unk_1F45990B8];
  [(MPCPlayPerfMetrics *)self set_suzeLeaseWaitTime:v12];

  v13 = [v8 objectForKeyedSubscript:&unk_1F45990D0];
  [(MPCPlayPerfMetrics *)self set_subscriptionAssetLoadWaitTime:v13];

  v14 = [v8 objectForKeyedSubscript:&unk_1F45990E8];
  [(MPCPlayPerfMetrics *)self set_mediaRedownloadWaitTime:v14];
}

void __54__MPCPlayPerfMetrics_addNetworkTimesWithScopedCursor___block_invoke(uint64_t a1, void *a2)
{
  v24 = a2;
  v3 = [v24 payload];
  v4 = [v3 objectForKeyedSubscript:@"queue-section-id"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [*(a1 + 32) sectionIdentifier];
  }

  v7 = v6;

  v8 = [v24 payload];
  v9 = [v8 objectForKeyedSubscript:@"queue-item-id"];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [*(a1 + 32) itemIdentifier];
  }

  v12 = v11;

  v13 = [*(a1 + 32) sectionIdentifier];
  if ([v7 isEqualToString:v13])
  {
    v14 = [v12 isEqualToString:v12];

    if (!v14)
    {
      goto LABEL_11;
    }

    v15 = [v24 payload];
    v13 = [v15 objectForKeyedSubscript:@"network-operation-type"];

    v16 = [v24 payload];
    v17 = [v16 objectForKeyedSubscript:@"network-metrics"];

    v18 = MEMORY[0x1E696AD98];
    v19 = [*(a1 + 40) objectForKeyedSubscript:v13];
    [v19 doubleValue];
    v21 = v20;
    [v17 networkTime];
    v23 = [v18 numberWithDouble:v21 + v22];
    [*(a1 + 40) setObject:v23 forKeyedSubscript:v13];
  }

LABEL_11:
}

- (void)addSharePlayWithCursor:(id)a3
{
  v8 = [a3 findPreviousEventWithType:@"session-begin" matchingPayload:0];
  v4 = [v8 payload];
  v5 = [v4 objectForKeyedSubscript:@"behavior-type"];
  v6 = [v5 integerValue];

  v7 = [MEMORY[0x1E696AD98] numberWithInt:v6 == 3];
  [(MPCPlayPerfMetrics *)self set_isSharePlay:v7];
}

- (void)addPlaybackBehaviorWithCursor:(id)a3
{
  v4 = [a3 findPreviousEventWithType:@"playback-behavior-changed" matchingPayload:0];
  if (v4)
  {
    v14 = v4;
    v5 = [v4 payload];
    v6 = [v5 objectForKeyedSubscript:@"playback-behavior-metadata"];
    v7 = [v6 objectForKeyedSubscript:@"shuffle-type"];
    v8 = [v7 intValue];

    v9 = [MEMORY[0x1E696AD98] numberWithInt:v8 != 0];
    [(MPCPlayPerfMetrics *)self set_isShuffled:v9];

    v10 = [v14 payload];
    v11 = [v10 objectForKeyedSubscript:@"playback-behavior-metadata"];
    v12 = [v11 objectForKeyedSubscript:@"autoplay-mode"];
    LODWORD(v7) = [v12 intValue];

    v13 = [MEMORY[0x1E696AD98] numberWithInt:v7 == 2];
    [(MPCPlayPerfMetrics *)self set_isAutoPlayEnabled:v13];

    v4 = v14;
  }
}

- (void)addQueueMetadata:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"feature-name"];
  [(MPCPlayPerfMetrics *)self set_featureName:v5];

  v6 = [v4 objectForKeyedSubscript:@"siri-ref-id"];

  [(MPCPlayPerfMetrics *)self set_siriRefId:v6];
}

- (id)jsonObject
{
  v131[4] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
  v4 = [(MPCPlayPerfMetrics *)self eventType];
  if (v4 == @"FirstItem" || (v5 = v4, v6 = [(__CFString *)v4 isEqual:@"FirstItem"], v5, v5, v6))
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v8 = [MEMORY[0x1E695DF70] array];
    v9 = [(MPCPlayPerfMetrics *)self setQueueCommandSendTime];
    v10 = [(MPCPlayPerfMetrics *)self _buildSegmentForComponent:@"SendQueue" subcomponent:v9 duration:?];

    v11 = [(MPCPlayPerfMetrics *)self isRemoteSetQueue];
    -[MPCPlayPerfMetrics _addComplexityToSegment:complexity:when:](self, v10, @"WHA", [v11 BOOLValue]);

    [v7 addObject:v10];
    v12 = [(MPCPlayPerfMetrics *)self sessionActivationWaitTime];
    v13 = [(MPCPlayPerfMetrics *)self _buildSegmentForComponent:@"SessionActivation" subcomponent:v12 duration:?];

    v14 = [(MPCPlayPerfMetrics *)self routeInfo];
    v15 = [v14 objectForKeyedSubscript:@"type"];
    v16 = [v15 integerValue];

    [(MPCPlayPerfMetrics *)self _addComplexityToSegment:v13 complexity:@"Bluetooth" when:(v16 & 0xFFFFFFFFFFFFFFFELL) == 4];
    [(MPCPlayPerfMetrics *)self _addComplexityToSegment:v13 complexity:@"AirPlay" when:v16 == 9];
    v17 = MEMORY[0x1E696AD98];
    v18 = [(MPCPlayPerfMetrics *)self sessionActivationWaitTime];
    [v18 doubleValue];
    v20 = v19;
    v21 = [(MPCPlayPerfMetrics *)self sessionActivationAVTime];
    [v21 doubleValue];
    v23 = v20 - v22;
    v24 = [(MPCPlayPerfMetrics *)self sessionActivationClientTime];
    [v24 doubleValue];
    v26 = [v17 numberWithDouble:v23 - v25];
    [(MPCPlayPerfMetrics *)self _addStepToSegment:v13 name:@"StackInit" duration:v26 options:0];

    v27 = [(MPCPlayPerfMetrics *)self sessionActivationAVTime];
    [(MPCPlayPerfMetrics *)self _addStepToSegment:v13 name:@"AVAudioSession" duration:v27 options:0];

    v28 = [(MPCPlayPerfMetrics *)self sessionActivationClientTime];
    [v28 doubleValue];
    v30 = v29;

    if (v30 > 0.0)
    {
      v31 = [(MPCPlayPerfMetrics *)self sessionActivationClientTime];
      [(MPCPlayPerfMetrics *)self _addStepToSegment:v13 name:@"Delegate" duration:v31 options:0];
    }

    [v7 addObject:v13];

    v32 = [(MPCPlayPerfMetrics *)self queueLoadWaitTime];
    v33 = [(MPCPlayPerfMetrics *)self _buildSegmentForComponent:@"QueueLoad" subcomponent:v32 duration:?];

    v34 = [(MPCPlayPerfMetrics *)self siriRefId];

    if (v34)
    {
      v35 = [(MPCPlayPerfMetrics *)self assetSource];
      if ([v35 integerValue] <= 2)
      {
        [(MPCPlayPerfMetrics *)self _addOptimizationToSegment:v33 optimization:@"SiriAssetInfo" when:0];
      }

      else
      {
        v36 = [(MPCPlayPerfMetrics *)self assetSource];
        -[MPCPlayPerfMetrics _addOptimizationToSegment:optimization:when:](self, v33, @"SiriAssetInfo", [v36 integerValue] < 6);
      }
    }

    v40 = [(MPCPlayPerfMetrics *)self lookupWaitTime];
    [(MPCPlayPerfMetrics *)self _addStepToSegment:v33 name:@"Queue" duration:v40 options:1];

    [v7 addObject:v33];
    v41 = [(MPCPlayPerfMetrics *)self assetLoadWaitTime];
    v42 = [(MPCPlayPerfMetrics *)self _buildSegmentForComponent:@"AssetLoad" subcomponent:v41 duration:?];

    v43 = [(MPCPlayPerfMetrics *)self bagWaitTime];
    [(MPCPlayPerfMetrics *)self _addStepToSegment:v42 name:@"Bag" duration:v43 options:1];

    v44 = [(MPCPlayPerfMetrics *)self leaseWaitTime];
    [(MPCPlayPerfMetrics *)self _addStepToSegment:v42 name:@"Lease" duration:v44 options:1];

    v45 = [(MPCPlayPerfMetrics *)self suzeLeaseWaitTime];
    [(MPCPlayPerfMetrics *)self _addStepToSegment:v42 name:@"SuzeLease" duration:v45 options:1];

    v46 = [(MPCPlayPerfMetrics *)self subscriptionAssetLoadWaitTime];
    [(MPCPlayPerfMetrics *)self _addStepToSegment:v42 name:@"MZPlay: SubPlaybackDispatch" duration:v46 options:1];

    v47 = [(MPCPlayPerfMetrics *)self mediaRedownloadWaitTime];
    [(MPCPlayPerfMetrics *)self _addStepToSegment:v42 name:@"MZPlay: PaidRedownload" duration:v47 options:1];

    v48 = [(MPCPlayPerfMetrics *)self hlsMetadataWaitTime];
    v49 = [(MPCPlayPerfMetrics *)self assetLocation];
    -[MPCPlayPerfMetrics _addStepToSegment:name:duration:options:](self, v42, @"HLS MVP", v48, [v49 integerValue] == 0);

    v50 = [(MPCPlayPerfMetrics *)self assetLocation];
    v51 = [v50 integerValue];

    if (v51)
    {
      if (v51 == 3)
      {
        v52 = @"Downloaded";
      }

      else
      {
        if (v51 != 1)
        {
          goto LABEL_21;
        }

        v52 = @"Cached";
      }

      v53 = self;
      v54 = v42;
      v55 = 1;
    }

    else
    {
      v52 = @"Cached";
      v53 = self;
      v54 = v42;
      v55 = 0;
    }

    [(MPCPlayPerfMetrics *)v53 _addOptimizationToSegment:v54 optimization:v52 when:v55];
LABEL_21:
    v56 = [(MPCPlayPerfMetrics *)self assetSource];
    v57 = [v56 integerValue];

    if ((v57 - 3) >= 3)
    {
      if (v57 != 6)
      {
        goto LABEL_29;
      }

      v61 = @"SOD";
      v62 = self;
      v63 = v42;
      v64 = 0;
    }

    else
    {
      [(MPCPlayPerfMetrics *)self _addOptimizationToSegment:v42 optimization:@"SOD" when:1];
      v58 = [(MPCPlayPerfMetrics *)self assetSource];
      if ([v58 integerValue] != 5)
      {

LABEL_29:
        [v7 addObject:v42];

        v65 = [(MPCPlayPerfMetrics *)self readyToPlayStatusWaitTime];
        v66 = [(MPCPlayPerfMetrics *)self _buildSegmentForComponent:@"ReadyToPlay" subcomponent:v65 duration:?];

        v67 = [(MPCPlayPerfMetrics *)self assetType];
        -[MPCPlayPerfMetrics _addComplexityToSegment:complexity:when:](self, v66, @"HLS", [v67 integerValue] > 1);

        [v7 addObject:v66];
        v68 = [(MPCPlayPerfMetrics *)self playCommandSendTime];
        v69 = [(MPCPlayPerfMetrics *)self _buildSegmentForComponent:@"SendPlay" subcomponent:v68 duration:?];

        v70 = [(MPCPlayPerfMetrics *)self isRemoteSetQueue];
        -[MPCPlayPerfMetrics _addComplexityToSegment:complexity:when:](self, v69, @"WHA", [v70 BOOLValue]);

        [v7 addObject:v69];
        v71 = [(MPCPlayPerfMetrics *)self rateChangeWaitTime];
        v72 = [(MPCPlayPerfMetrics *)self _buildSegmentForComponent:@"ChangeRate" subcomponent:v71 duration:?];

        v73 = [(MPCPlayPerfMetrics *)self assetLocation];
        v74 = [v73 integerValue];

        if (v74 == 3)
        {
          v75 = [(MPCPlayPerfMetrics *)self hasOfflinePlaybackKeys];
          -[MPCPlayPerfMetrics _addComplexityToSegment:complexity:when:](self, v72, @"No Offline Slot", [v75 BOOLValue] ^ 1);
        }

        [v7 addObject:v72];

        v76 = [(MPCPlayPerfMetrics *)self firstAudioFrameWaitTime];
        v77 = [(MPCPlayPerfMetrics *)self _buildSegmentForComponent:@"FirstAudioFrame" subcomponent:v76 duration:?];

        [v7 addObject:v77];
        v78 = [(MPCPlayPerfMetrics *)self endpointType];
        v79 = [v78 integerValue];

        if ((v79 - 1) <= 2)
        {
          [v8 addObject:off_1E8231E18[v79 - 1]];
        }

        v80 = [(MPCPlayPerfMetrics *)self assetType];
        v81 = [v80 integerValue] - 1;
        if (v81 > 4)
        {
          v82 = @"Unspecified";
        }

        else
        {
          v82 = off_1E8231E30[v81];
        }

        [v8 addObject:v82];

        v83 = [(MPCPlayPerfMetrics *)self formatInfo];
        v84 = [v83 objectForKeyedSubscript:@"sampleRate"];
        v85 = [v84 integerValue];

        if (v85 >= 1)
        {
          v86 = MEMORY[0x1E696AEC0];
          v87 = [(MPCPlayPerfMetrics *)self formatInfo];
          v88 = [v87 objectForKeyedSubscript:@"sampleRate"];
          v89 = [v86 stringWithFormat:@"%ldKHz", objc_msgSend(v88, "integerValue") / 1000];
          [v8 addObject:v89];
        }

        v90 = [(MPCPlayPerfMetrics *)self formatInfo];
        v91 = [v90 objectForKeyedSubscript:@"bitrate"];
        v92 = [v91 integerValue];

        if (v92 >= 1)
        {
          v93 = MEMORY[0x1E696AEC0];
          v94 = [(MPCPlayPerfMetrics *)self formatInfo];
          v95 = [v94 objectForKeyedSubscript:@"bitrate"];
          v96 = [v93 stringWithFormat:@"%ldKbps", objc_msgSend(v95, "integerValue") / 1000];
          [v8 addObject:v96];
        }

        v97 = [(MPCPlayPerfMetrics *)self formatInfo];
        v98 = [v97 objectForKeyedSubscript:@"channelLayout"];
        v99 = [v98 integerValue];

        if (v99)
        {
          v100 = [(MPCPlayPerfMetrics *)self formatInfo];
          v101 = [v100 objectForKeyedSubscript:@"channelLayout"];
          v102 = [v101 integerValue];

          v103 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ldch", v102];
          [v8 addObject:v103];
        }

        v104 = [(MPCPlayPerfMetrics *)self assetProtectionType];
        v105 = [v104 integerValue];

        if (v105)
        {
          if (v105 == 2)
          {
            v107 = [(MPCPlayPerfMetrics *)self assetType];
            v108 = [v107 integerValue];

            if (v108 == 1)
            {
              v109 = [(MPCPlayPerfMetrics *)self assetSource];
              v110 = [v109 integerValue];

              if (v110 == 5)
              {
                v106 = @"DRM:miniSINF";
              }

              else
              {
                v106 = @"DRM:SINF";
              }
            }

            else
            {
              v106 = @"DRM:FPS";
            }
          }

          else
          {
            if (v105 != 1)
            {
LABEL_53:
              v111 = objc_alloc_init(MEMORY[0x1E695DF90]);
              v112 = [(MPCPlayPerfMetrics *)self assetLoadWaitTime];
              [v111 setObject:v112 forKeyedSubscript:@"MPP_assetLoadWaitTime"];

              v113 = [(MPCPlayPerfMetrics *)self assetLocation];
              [v111 setObject:v113 forKeyedSubscript:@"MPP_assetLocation"];

              v114 = [(MPCPlayPerfMetrics *)self assetType];
              [v111 setObject:v114 forKeyedSubscript:@"MPP_assetType"];

              v115 = [(MPCPlayPerfMetrics *)self endpointType];
              [v111 setObject:v115 forKeyedSubscript:@"MPP_endpointType"];

              v116 = [(MPCPlayPerfMetrics *)self firstAudioFrameWaitTime];
              [v111 setObject:v116 forKeyedSubscript:@"MPP_firstAudioFrameWaitTime"];

              v117 = [(MPCPlayPerfMetrics *)self hasOnlinePlaybackKeys];
              [v111 setObject:v117 forKeyedSubscript:@"MPP_hasOnlinePlaybackKeys"];

              v118 = [(MPCPlayPerfMetrics *)self isFirstPlay];
              [v111 setObject:v118 forKeyedSubscript:@"MPP_isFirstPlay"];

              v119 = [(MPCPlayPerfMetrics *)self queueLoadWaitTime];
              [v111 setObject:v119 forKeyedSubscript:@"MPP_queueLoadWaitTime"];

              v120 = [(MPCPlayPerfMetrics *)self readyToPlayStatusWaitTime];
              [v111 setObject:v120 forKeyedSubscript:@"MPP_readyToPlayWaitTime"];

              v121 = MEMORY[0x1E696AD98];
              [(NSDate *)self->_firstAudioFrameDate timeIntervalSinceReferenceDate];
              v122 = [v121 numberWithDouble:?];
              [v111 setObject:v122 forKeyedSubscript:@"MPP_firstAudioFrameTimestamp"];

              v130[0] = @"name";
              v130[1] = @"segments";
              v131[0] = @"MPP";
              v131[1] = v7;
              v130[2] = @"tags";
              v130[3] = @"raw";
              v131[2] = v8;
              v131[3] = v111;
              v123 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v131 forKeys:v130 count:4];
              [v3 addObject:v123];

              goto LABEL_54;
            }

            v106 = @"DRM:Standard";
          }
        }

        else
        {
          v106 = @"DRM:None";
        }

        [v8 addObject:v106];
        goto LABEL_53;
      }

      v59 = [(MPCPlayPerfMetrics *)self assetType];
      v60 = [v59 integerValue];

      if (v60 != 1)
      {
        goto LABEL_29;
      }

      v61 = @"miniSINF";
      v62 = self;
      v63 = v42;
      v64 = 1;
    }

    [(MPCPlayPerfMetrics *)v62 _addOptimizationToSegment:v63 optimization:v61 when:v64];
    goto LABEL_29;
  }

  v37 = [(MPCPlayPerfMetrics *)self eventType];
  if (v37 == @"NextItem" || (v38 = v37, v39 = [(__CFString *)v37 isEqual:@"NextItem"], v38, v38, v39))
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v128[0] = @"name";
    v128[1] = @"segments";
    v129[0] = @"GAP";
    v129[1] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v129 forKeys:v128 count:2];
    [v3 addObject:v8];
LABEL_54:
  }

  v126 = @"metrics";
  v127 = v3;
  v124 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:1];

  return v124;
}

- (id)_buildSegmentForComponent:(void *)a3 subcomponent:(void *)a4 duration:
{
  v19[6] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = MEMORY[0x1E695DF90];
    v18[0] = @"component";
    v18[1] = @"subcomponent";
    v19[0] = a2;
    v19[1] = a3;
    v7 = &unk_1F4599AB0;
    if (a4)
    {
      v7 = a4;
    }

    v19[2] = v7;
    v18[2] = @"duration";
    v18[3] = @"complexities";
    v8 = MEMORY[0x1E695DF70];
    v9 = a4;
    v10 = a3;
    v11 = a2;
    v12 = [v8 array];
    v19[3] = v12;
    v18[4] = @"optimizations";
    v13 = [MEMORY[0x1E695DF90] dictionary];
    v19[4] = v13;
    v18[5] = @"steps";
    v14 = [MEMORY[0x1E695DF70] array];
    v19[5] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:6];
    v16 = [v6 dictionaryWithDictionary:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)_addComplexityToSegment:(void *)a3 complexity:(int)a4 when:
{
  if (a1 && a4)
  {
    v5 = a3;
    v6 = [a2 objectForKeyedSubscript:@"complexities"];
    [v6 addObject:v5];
  }
}

- (void)_addStepToSegment:(void *)a3 name:(void *)a4 duration:(char)a5 options:
{
  v14[3] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a4)
    {
      v8 = a4;
      v9 = a3;
      v10 = [a2 objectForKeyedSubscript:@"steps"];
      v13[0] = @"name";
      v13[1] = @"duration";
      v14[0] = v9;
      v14[1] = v8;
      v13[2] = @"isNetworkBound";
      v11 = [MEMORY[0x1E696AD98] numberWithBool:a5 & 1];
      v14[2] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

      [v10 addObject:v12];
    }
  }
}

- (void)_addOptimizationToSegment:(void *)a3 optimization:(uint64_t)a4 when:
{
  if (a1)
  {
    v6 = a3;
    v8 = [a2 objectForKeyedSubscript:@"optimizations"];
    v7 = [MEMORY[0x1E696AD98] numberWithBool:a4];
    [v8 setObject:v7 forKeyedSubscript:v6];
  }
}

- (id)description
{
  v3 = [(MPCPlayPerfMetrics *)self data];
  v4 = [v3 mutableCopy];

  v5 = [(MPCPlayPerfMetrics *)self musicTotalTime];
  [v4 setObject:v5 forKeyedSubscript:@"totalTime"];

  v6 = [(MPCPlayPerfMetrics *)self musicWaitTime];
  [v4 setObject:v6 forKeyedSubscript:@"musicWaitTime"];

  v7 = [(MPCPlayPerfMetrics *)self mediaPlayerTime];
  [v4 setObject:v7 forKeyedSubscript:@"mediaPlayerTime"];

  v8 = [(MPCPlayPerfMetrics *)self avTime];
  [v4 setObject:v8 forKeyedSubscript:@"avTime"];

  v9 = [(MPCPlayPerfMetrics *)self networkTime];
  [v4 setObject:v9 forKeyedSubscript:@"networkTime"];

  v10 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v4 options:0 error:0];
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v10 encoding:4];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p %@>", objc_opt_class(), self, v11];

  return v12;
}

- (id)dictionaryRepresentation
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 copy];

  return v3;
}

- (NSNumber)avTime
{
  v3 = [(MPCPlayPerfMetrics *)self eventType];
  v4 = [v3 isEqualToString:@"FirstItem"];

  if (v4)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = [(MPCPlayPerfMetrics *)self readyToPlayStatusWaitTime];
    [v6 doubleValue];
    v8 = v7;
    v9 = [(MPCPlayPerfMetrics *)self firstAudioFrameWaitTime];
    [v9 doubleValue];
    v11 = v8 + v10;
    v12 = [(MPCPlayPerfMetrics *)self sessionActivationAVTime];
    [v12 doubleValue];
    v14 = [v5 numberWithDouble:v11 + v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (NSNumber)networkTime
{
  v3 = [(MPCPlayPerfMetrics *)self eventType];
  v4 = [v3 isEqualToString:@"FirstItem"];

  if (v4)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = [(MPCPlayPerfMetrics *)self lookupWaitTime];
    [v6 doubleValue];
    v8 = v7;
    v9 = [(MPCPlayPerfMetrics *)self bagWaitTime];
    [v9 doubleValue];
    v11 = v8 + v10;
    v12 = [(MPCPlayPerfMetrics *)self leaseWaitTime];
    [v12 doubleValue];
    v14 = v11 + v13;
    v15 = [(MPCPlayPerfMetrics *)self suzeLeaseWaitTime];
    [v15 doubleValue];
    v17 = v14 + v16;
    v18 = [(MPCPlayPerfMetrics *)self subscriptionAssetLoadWaitTime];
    [v18 doubleValue];
    v20 = v17 + v19;
    v21 = [(MPCPlayPerfMetrics *)self mediaRedownloadWaitTime];
    [v21 doubleValue];
    v23 = v20 + v22;
    v24 = [(MPCPlayPerfMetrics *)self hlsMetadataWaitTime];
    [v24 doubleValue];
    v26 = [v5 numberWithDouble:v23 + v25];
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (NSNumber)mediaPlayerTime
{
  v3 = [(MPCPlayPerfMetrics *)self eventType];
  v4 = [v3 isEqualToString:@"FirstItem"];

  if (v4)
  {
    v41 = MEMORY[0x1E696AD98];
    v45 = [(MPCPlayPerfMetrics *)self sessionActivationWaitTime];
    [v45 doubleValue];
    v6 = v5;
    v44 = [(MPCPlayPerfMetrics *)self queueLoadWaitTime];
    [v44 doubleValue];
    v8 = v6 + v7;
    v43 = [(MPCPlayPerfMetrics *)self assetLoadWaitTime];
    [v43 doubleValue];
    v10 = v8 + v9;
    v42 = [(MPCPlayPerfMetrics *)self rateChangeWaitTime];
    [v42 doubleValue];
    v12 = v10 + v11;
    v13 = [(MPCPlayPerfMetrics *)self sessionActivationAVTime];
    [v13 doubleValue];
    v15 = v12 - v14;
    v16 = [(MPCPlayPerfMetrics *)self sessionActivationClientTime];
    [v16 doubleValue];
    v18 = v15 - v17;
    v19 = [(MPCPlayPerfMetrics *)self lookupWaitTime];
    [v19 doubleValue];
    v21 = v18 - v20;
    v22 = [(MPCPlayPerfMetrics *)self bagWaitTime];
    [v22 doubleValue];
    v24 = v21 - v23;
    v25 = [(MPCPlayPerfMetrics *)self leaseWaitTime];
    [v25 doubleValue];
    v27 = v24 - v26;
    v28 = [(MPCPlayPerfMetrics *)self suzeLeaseWaitTime];
    [v28 doubleValue];
    v30 = v27 - v29;
    v31 = [(MPCPlayPerfMetrics *)self subscriptionAssetLoadWaitTime];
    [v31 doubleValue];
    v33 = v30 - v32;
    v34 = [(MPCPlayPerfMetrics *)self mediaRedownloadWaitTime];
    [v34 doubleValue];
    v36 = v33 - v35;
    v37 = [(MPCPlayPerfMetrics *)self hlsMetadataWaitTime];
    [v37 doubleValue];
    v39 = [v41 numberWithDouble:v36 - v38];
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

- (NSNumber)musicWaitTime
{
  v3 = [(MPCPlayPerfMetrics *)self eventType];
  v4 = [v3 isEqualToString:@"FirstItem"];

  if (v4)
  {
    v5 = [(MPCPlayPerfMetrics *)self playCommandWaitTime];

    if (v5)
    {
      v6 = MEMORY[0x1E696AD98];
      v7 = [(MPCPlayPerfMetrics *)self playCommandSendTime];
      [v7 doubleValue];
      v9 = v8;

      v10 = [(MPCPlayPerfMetrics *)self playCommandWaitTime];
      [v10 doubleValue];
      v12 = -v11;

      if (v9 < v12)
      {
        v9 = v12;
      }

      v13 = [(MPCPlayPerfMetrics *)self rateChangeWaitTime];
      [v13 doubleValue];
      v15 = v9 + v14;
      v16 = [(MPCPlayPerfMetrics *)self firstAudioFrameWaitTime];
      [v16 doubleValue];
      v18 = [v6 numberWithDouble:v15 + v17];
    }

    else
    {
      v18 = [(MPCPlayPerfMetrics *)self musicTotalTime];
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (NSNumber)musicTotalTime
{
  v3 = [(MPCPlayPerfMetrics *)self eventType];
  v4 = [v3 isEqualToString:@"FirstItem"];

  if (v4)
  {
    v5 = [(MPCPlayPerfMetrics *)self setQueueCommandSendTime];
    [v5 doubleValue];
    v7 = v6;
    v8 = [(MPCPlayPerfMetrics *)self sessionActivationWaitTime];
    [v8 doubleValue];
    v10 = v7 + v9;
    v11 = [(MPCPlayPerfMetrics *)self queueLoadWaitTime];
    [v11 doubleValue];
    v13 = v10 + v12;
    v14 = [(MPCPlayPerfMetrics *)self assetLoadWaitTime];
    [v14 doubleValue];
    v16 = v13 + v15;
    v17 = [(MPCPlayPerfMetrics *)self readyToPlayStatusWaitTime];
    [v17 doubleValue];
    v19 = v16 + v18;
    v20 = [(MPCPlayPerfMetrics *)self rateChangeWaitTime];
    [v20 doubleValue];
    v22 = v19 + v21;
    v23 = [(MPCPlayPerfMetrics *)self firstAudioFrameWaitTime];
    [v23 doubleValue];
    v25 = v22 + v24;
    v26 = [(MPCPlayPerfMetrics *)self sessionActivationClientTime];
    [v26 doubleValue];
    v28 = v25 - v27;

    v29 = [(MPCPlayPerfMetrics *)self playCommandWaitTime];

    if (v29)
    {
      v30 = [(MPCPlayPerfMetrics *)self playCommandSendTime];
      [v30 doubleValue];
      v32 = v31;
      v33 = [(MPCPlayPerfMetrics *)self playCommandWaitTime];
      [v33 doubleValue];
      v35 = v34;

      if (v35 <= 0.0)
      {
        v36 = v35;
      }

      else
      {
        v36 = 0.0;
      }

      v37 = v32 + v36;

      v28 = v28 + fmax(v37, 0.0);
    }

    v38 = [MEMORY[0x1E696AD98] numberWithDouble:v28];
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

- (MPCPlayPerfMetrics)init
{
  v5.receiver = self;
  v5.super_class = MPCPlayPerfMetrics;
  v2 = [(MPCPlayPerfMetrics *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    [(MPCPlayPerfMetrics *)v2 setData:v3];
  }

  return v2;
}

- (void)set_checkpointFirstAudioFrame:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"checkpointFirstAudioFrame"];
}

- (NSNumber)checkpointFirstAudioFrame
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"checkpointFirstAudioFrame"];

  return v3;
}

- (void)set_checkpointRateOne:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"checkpointRateOne"];
}

- (NSNumber)checkpointRateOne
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"checkpointRateOne"];

  return v3;
}

- (void)set_checkpointReadyToPlay:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"checkpointReadyToPlay"];
}

- (NSNumber)checkpointReadyToPlay
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"checkpointReadyToPlay"];

  return v3;
}

- (void)set_checkpointLikelyToKeepUp:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"checkpointLikelyToKeepUp"];
}

- (NSNumber)checkpointLikelyToKeepUp
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"checkpointLikelyToKeepUp"];

  return v3;
}

- (void)set_checkpointAssetLoadEnd:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"checkpointAssetLoadEnd"];
}

- (NSNumber)checkpointAssetLoadEnd
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"checkpointAssetLoadEnd"];

  return v3;
}

- (void)set_checkpointAssetLoadBegin:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"checkpointAssetLoadBegin"];
}

- (NSNumber)checkpointAssetLoadBegin
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"checkpointAssetLoadBegin"];

  return v3;
}

- (void)set_checkpointPlay:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"checkpointPlay"];
}

- (NSNumber)checkpointPlay
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"checkpointPlay"];

  return v3;
}

- (void)set_checkpointMRPlay:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"checkpointMRPlay"];
}

- (NSNumber)checkpointMRPlay
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"checkpointMRPlay"];

  return v3;
}

- (void)set_checkpointSetQueueEnd:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"checkpointSetQueueEnd"];
}

- (NSNumber)checkpointSetQueueEnd
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"checkpointSetQueueEnd"];

  return v3;
}

- (void)set_checkpointRateZero:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"checkpointRateZero"];
}

- (NSNumber)checkpointRateZero
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"checkpointRateZero"];

  return v3;
}

- (void)set_checkpointSetQueueBegin:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"checkpointSetQueueBegin"];
}

- (NSNumber)checkpointSetQueueBegin
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"checkpointSetQueueBegin"];

  return v3;
}

- (void)set_checkpointMRSetQueueBegin:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"checkpointMRSetQueueBegin"];
}

- (NSNumber)checkpointMRSetQueueBegin
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"checkpointMRSetQueueBegin"];

  return v3;
}

- (void)set_sessionActivationClientTime:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"sessionActivationClientTime"];
}

- (NSNumber)sessionActivationClientTime
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"sessionActivationClientTime"];

  return v3;
}

- (void)set_sessionActivationAVTime:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"sessionActivationAVTime"];
}

- (NSNumber)sessionActivationAVTime
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"sessionActivationAVTime"];

  return v3;
}

- (void)set_sessionActivationWaitTime:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"sessionActivationWaitTime"];
}

- (NSNumber)sessionActivationWaitTime
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"sessionActivationWaitTime"];

  return v3;
}

- (void)set_hlsMetadataWaitTime:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"hlsMetadataWaitTime"];
}

- (NSNumber)hlsMetadataWaitTime
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"hlsMetadataWaitTime"];

  return v3;
}

- (void)set_mediaRedownloadWaitTime:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"mediaRedownloadWaitTime"];
}

- (NSNumber)mediaRedownloadWaitTime
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"mediaRedownloadWaitTime"];

  return v3;
}

- (void)set_subscriptionAssetLoadWaitTime:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"subscriptionAssetLoadWaitTime"];
}

- (NSNumber)subscriptionAssetLoadWaitTime
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"subscriptionAssetLoadWaitTime"];

  return v3;
}

- (void)set_suzeLeaseWaitTime:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"suzeLeaseWaitTime"];
}

- (NSNumber)suzeLeaseWaitTime
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"suzeLeaseWaitTime"];

  return v3;
}

- (void)set_leaseWaitTime:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"leaseWaitTime"];
}

- (NSNumber)leaseWaitTime
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"leaseWaitTime"];

  return v3;
}

- (void)set_bagWaitTime:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"bagWaitTime"];
}

- (NSNumber)bagWaitTime
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"bagWaitTime"];

  return v3;
}

- (void)set_lookupWaitTime:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"lookupWaitTime"];
}

- (NSNumber)lookupWaitTime
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"lookupWaitTime"];

  return v3;
}

- (void)set_nextItemWaitTime:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"nextItemWaitTime"];
}

- (NSNumber)nextItemWaitTime
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"nextItemWaitTime"];

  return v3;
}

- (void)set_firstAudioFrameWaitTime:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"firstAudioFrameWaitTime"];
}

- (NSNumber)firstAudioFrameWaitTime
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"firstAudioFrameWaitTime"];

  return v3;
}

- (void)set_rateChangeWaitTime:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"rateChangeWaitTime"];
}

- (NSNumber)rateChangeWaitTime
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"rateChangeWaitTime"];

  return v3;
}

- (void)set_playCommandWaitTime:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"playCommandWaitTime"];
}

- (NSNumber)playCommandWaitTime
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"playCommandWaitTime"];

  return v3;
}

- (void)set_readyToPlayStatusWaitTime:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"readyToPlayStatusWaitTime"];
}

- (NSNumber)readyToPlayStatusWaitTime
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"readyToPlayStatusWaitTime"];

  return v3;
}

- (void)set_assetLoadWaitTime:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"assetLoadWaitTime"];
}

- (NSNumber)assetLoadWaitTime
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"assetLoadWaitTime"];

  return v3;
}

- (void)set_queueLoadWaitTime:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"queueLoadWaitTime"];
}

- (NSNumber)queueLoadWaitTime
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"queueLoadWaitTime"];

  return v3;
}

- (void)set_playCommandSendTime:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"playCommandSendTime"];
}

- (NSNumber)playCommandSendTime
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"playCommandSendTime"];

  return v3;
}

- (void)set_setQueueCommandSendTime:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"setQueueCommandSendTime"];
}

- (NSNumber)setQueueCommandSendTime
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"setQueueCommandSendTime"];

  return v3;
}

- (void)set_timeSincePaused:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"timeSincePaused"];
}

- (NSNumber)timeSincePaused
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"timeSincePaused"];

  return v3;
}

- (void)set_timeSinceLaunch:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"timeSinceLaunch"];
}

- (NSNumber)timeSinceLaunch
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"timeSinceLaunch"];

  return v3;
}

- (void)set_timeSinceBoot:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"timeSinceBoot"];
}

- (NSNumber)timeSinceBoot
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"timeSinceBoot"];

  return v3;
}

- (void)set_AVPlayerItemPerformanceMetrics:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"AVPlayerItemPerformanceMetrics"];
}

- (NSDictionary)AVPlayerItemPerformanceMetrics
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"AVPlayerItemPerformanceMetrics"];

  return v3;
}

- (void)set_assetProtectionType:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"assetProtectionType"];
}

- (NSNumber)assetProtectionType
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"assetProtectionType"];

  return v3;
}

- (void)set_vocalsControlActive:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"vocalsControlActive"];
}

- (NSNumber)vocalsControlActive
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"vocalsControlActive"];

  return v3;
}

- (void)set_treatmentID:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"treatmentID"];
}

- (NSString)treatmentID
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"treatmentID"];

  return v3;
}

- (void)set_experimentID:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"experimentID"];
}

- (NSString)experimentID
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"experimentID"];

  return v3;
}

- (void)set_storefront:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"storefront"];
}

- (NSString)storefront
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"storefront"];

  return v3;
}

- (void)set_queueCommandType:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"queueCommandType"];
}

- (NSNumber)queueCommandType
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"queueCommandType"];

  return v3;
}

- (void)set_seekBeforePlaying:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"seekBeforePlaying"];
}

- (NSNumber)seekBeforePlaying
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"seekBeforePlaying"];

  return v3;
}

- (void)set_isActiveAccount:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"isActiveAccount"];
}

- (NSNumber)isActiveAccount
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"isActiveAccount"];

  return v3;
}

- (void)set_hasAccountInfo:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"hasAccountInfo"];
}

- (NSNumber)hasAccountInfo
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"hasAccountInfo"];

  return v3;
}

- (void)set_errorSignature:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"errorSignature"];
}

- (NSString)errorSignature
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"errorSignature"];

  return v3;
}

- (void)set_errorResolution:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"errorResolution"];
}

- (NSNumber)errorResolution
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"errorResolution"];

  return v3;
}

- (void)set_isReplacingPlayback:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"isReplacingPlayback"];
}

- (NSNumber)isReplacingPlayback
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"isReplacingPlayback"];

  return v3;
}

- (void)set_isFirstPlay:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"isFirstPlay"];
}

- (NSNumber)isFirstPlay
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"isFirstPlay"];

  return v3;
}

- (void)set_networkType:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"networkType"];
}

- (NSNumber)networkType
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"networkType"];

  return v3;
}

- (void)set_routeInfo:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"routeInfo"];
}

- (NSDictionary)routeInfo
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"routeInfo"];

  return v3;
}

- (void)set_formatInfo:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"formatInfo"];
}

- (NSDictionary)formatInfo
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"formatInfo"];

  return v3;
}

- (void)set_hasOfflinePlaybackKeys:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"hasOfflinePlaybackKeys"];
}

- (NSNumber)hasOfflinePlaybackKeys
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"hasOfflinePlaybackKeys"];

  return v3;
}

- (void)set_hasOnlinePlaybackKeys:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"hasOnlinePlaybackKeys"];
}

- (NSNumber)hasOnlinePlaybackKeys
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"hasOnlinePlaybackKeys"];

  return v3;
}

- (void)set_isDelegatedPlayback:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"isDelegatedPlayback"];
}

- (NSNumber)isDelegatedPlayback
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"isDelegatedPlayback"];

  return v3;
}

- (void)set_subscriptionType:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"subscriptionType"];
}

- (NSNumber)subscriptionType
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"subscriptionType"];

  return v3;
}

- (void)set_endpointType:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"endpointType"];
}

- (NSNumber)endpointType
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"endpointType"];

  return v3;
}

- (void)set_assetCacheAge:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"assetCacheAge"];
}

- (NSNumber)assetCacheAge
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"assetCacheAge"];

  return v3;
}

- (void)set_assetLocation:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"assetLocation"];
}

- (NSNumber)assetLocation
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"assetLocation"];

  return v3;
}

- (void)set_assetSource:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"assetSource"];
}

- (NSNumber)assetSource
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"assetSource"];

  return v3;
}

- (void)set_assetType:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"assetType"];
}

- (NSNumber)assetType
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"assetType"];

  return v3;
}

- (void)set_isSharePlay:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"isSharePlay"];
}

- (NSNumber)isSharePlay
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"isSharePlay"];

  return v3;
}

- (void)set_isAutoPlayEnabled:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"isAutoPlayEnabled"];
}

- (NSNumber)isAutoPlayEnabled
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"isAutoPlayEnabled"];

  return v3;
}

- (void)set_isShuffled:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"isShuffled"];
}

- (NSNumber)isShuffled
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"isShuffled"];

  return v3;
}

- (void)set_isRemoteSetQueue:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"isRemoteSetQueue"];
}

- (NSNumber)isRemoteSetQueue
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"isRemoteSetQueue"];

  return v3;
}

- (void)set_queueType:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"queueType"];
}

- (NSString)queueType
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"queueType"];

  return v3;
}

- (void)set_siriRefId:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"siriRefId"];
}

- (NSString)siriRefId
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"siriRefId"];

  return v3;
}

- (void)set_featureName:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"featureName"];
}

- (NSString)featureName
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"featureName"];

  return v3;
}

- (void)set_itemMetadata:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"itemMetadata"];
}

- (NSDictionary)itemMetadata
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"itemMetadata"];

  return v3;
}

- (void)set_itemIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"itemIdentifier"];
}

- (NSString)itemIdentifier
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"itemIdentifier"];

  return v3;
}

- (void)set_sectionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"sectionIdentifier"];
}

- (NSString)sectionIdentifier
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"sectionIdentifier"];

  return v3;
}

- (void)set_eventTime:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"eventTime"];
}

- (NSNumber)eventTime
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"eventTime"];

  return v3;
}

- (void)set_eventType:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlayPerfMetrics *)self data];
  [v5 setObject:v4 forKeyedSubscript:@"eventType"];
}

- (NSString)eventType
{
  v2 = [(MPCPlayPerfMetrics *)self data];
  v3 = [v2 objectForKeyedSubscript:@"eventType"];

  return v3;
}

+ (id)playMetricsWithErrorSignature:(id)a3 event:(id)a4 cursor:(id)a5
{
  v71[2] = *MEMORY[0x1E69E9840];
  v44 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v7 payload];
  v10 = [v9 objectForKeyedSubscript:@"queue-section-id"];

  v11 = [v7 payload];
  v47 = [v11 objectForKeyedSubscript:@"queue-item-id"];

  v45 = 0;
  if (v10 && v47)
  {
    v70[0] = @"queue-section-id";
    v70[1] = @"queue-item-id";
    v71[0] = v10;
    v71[1] = v47;
    v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:2];
  }

  v46 = [v8 findPreviousEventWithType:@"queue-add" matchingPayload:0];
  if (v46)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v68 = __Block_byref_object_copy__3197;
    *&v69 = __Block_byref_object_dispose__3198;
    *(&v69 + 1) = 0;
    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy__3197;
    v53 = __Block_byref_object_dispose__3198;
    v54 = 0;
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __65__MPCPlayPerfMetrics_playMetricsWithErrorSignature_event_cursor___block_invoke;
    v48[3] = &unk_1E8231DA8;
    v48[4] = buf;
    v48[5] = &v49;
    [v8 enumeratePreviousEventsWithType:@"remote-control-begin" usingBlock:v48];
    v12 = v50[5];
    if (!v12)
    {
      v32 = [v8 findPreviousEventWithType:@"session-begin" matchingPayload:0];
      v33 = [v32 payload];
      v34 = [v33 objectForKeyedSubscript:@"session-id"];

      if (!v34)
      {

        v12 = 0;
        goto LABEL_17;
      }

      v65 = @"session-id";
      v66 = v34;
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
      v12 = [v8 findPreviousEventWithType:@"session-restore-begin" matchingPayload:v35];

      if (!v12)
      {
        goto LABEL_17;
      }
    }

    if (*(*&buf[8] + 40))
    {
      v13 = [v8 cursorFromEvent:v7 untilEvent:v12];
      v14 = objc_alloc_init(MPCPlayPerfMetrics);
      [(MPCPlayPerfMetrics *)v14 set_eventType:@"PlayError"];
      v15 = MEMORY[0x1E696AD98];
      v16 = [v7 date];
      [v16 timeIntervalSince1970];
      v17 = [v15 numberWithDouble:?];
      [(MPCPlayPerfMetrics *)v14 set_eventTime:v17];

      [(MPCPlayPerfMetrics *)v14 set_sectionIdentifier:v10];
      [(MPCPlayPerfMetrics *)v14 set_itemIdentifier:v47];
      v18 = [v46 payload];
      v43 = [v18 objectForKeyedSubscript:@"queue-reporting-metadata"];

      [(MPCPlayPerfMetrics *)v14 addQueueMetadata:v43];
      [(MPCPlayPerfMetrics *)v14 addPlaybackBehaviorWithCursor:v13];
      [(MPCPlayPerfMetrics *)v14 addSharePlayWithCursor:v13];
      [(MPCPlayPerfMetrics *)v14 addEnvironmentInfoWithCursor:v8];
      if (v45)
      {
        [(MPCPlayPerfMetrics *)v14 addAssetSelectionWithCursor:v13 itemIDPayload:v45];
        v55 = @"queue-section-id";
        v56 = v10;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
        v41 = [v8 findPreviousEventWithType:@"container-begin" matchingPayload:v19];

        v42 = [v8 findPreviousEventWithType:@"item-begin" matchingPayload:v45];
        v20 = [v42 payload];
        v21 = [v20 objectForKeyedSubscript:@"item-metadata"];
        [(MPCPlayPerfMetrics *)v14 set_itemMetadata:v21];

        v22 = [v41 payload];
        v40 = [v22 objectForKeyedSubscript:@"container-kind"];

        v23 = [v42 payload];
        v39 = [v23 objectForKeyedSubscript:@"item-kind"];

        v24 = MEMORY[0x1E696AEC0];
        v25 = [v43 objectForKeyedSubscript:@"playback-context-class-name"];
        v26 = NSStringFromClass([v40 modelClass]);
        v27 = NSStringFromClass([v39 modelClass]);
        v28 = [v24 stringWithFormat:@"%@-%@-%@", v25, v26, v27];
        [(MPCPlayPerfMetrics *)v14 set_queueType:v28];
      }

      [(MPCPlayPerfMetrics *)v14 set_errorSignature:v44];

LABEL_20:
      _Block_object_dispose(&v49, 8);

      _Block_object_dispose(buf, 8);
      goto LABEL_21;
    }

LABEL_17:
    v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v36 = [v7 type];
      v37 = [v7 identifier];
      *v57 = 138413058;
      v58 = v36;
      v59 = 2114;
      v60 = v37;
      v61 = 2114;
      v62 = v10;
      v63 = 2114;
      v64 = v47;
      _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_ERROR, "%@ event doesn't have recognizable preceding SetPlaybackQueue and Play events (eventID:%{public}@ item:%{public}@ %{public}@)", v57, 0x2Au);
    }

    v14 = 0;
    goto LABEL_20;
  }

  v29 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = [v7 type];
    v31 = [v7 identifier];
    *buf = 138413058;
    *&buf[4] = v30;
    *&buf[12] = 2114;
    *&buf[14] = v31;
    *&buf[22] = 2114;
    v68 = v10;
    LOWORD(v69) = 2114;
    *(&v69 + 2) = v47;
    _os_log_impl(&dword_1C5C61000, v29, OS_LOG_TYPE_ERROR, "%@ event doesn't have preceding QueueAdd event (eventID:%{public}@ item:%{public}@ %{public}@)", buf, 0x2Au);
  }

  v14 = 0;
LABEL_21:

  return v14;
}

void __65__MPCPlayPerfMetrics_playMetricsWithErrorSignature_event_cursor___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v15 = a2;
  v6 = [v15 payload];
  v7 = [v6 objectForKeyedSubscript:@"remote-control-type"];
  v8 = [v7 intValue];

  v9 = v8 - 121;
  if ((v8 - 121 > 0xC || ((1 << (v8 - 121)) & 0x1003) == 0) && (v8 & 0xFFFFFFFD) != 0)
  {
    if (v8 <= 0x1A && ((1 << v8) & 0x7080000) != 0 || v8 == 132 || v8 == 135)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v12 = *(*(a1 + 32) + 8);
  v14 = *(v12 + 40);
  v13 = (v12 + 40);
  if (!v14)
  {
    objc_storeStrong(v13, a2);
  }

  if (v9 <= 0xC && ((1 << v9) & 0x1003) != 0)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
LABEL_14:
    *a3 = 1;
  }

LABEL_15:
}

+ (id)playMetricsWithItemReadyForMetricsEvent:(id)a3 cursor:(id)a4
{
  v335[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v271 = v7;
  v9 = [v7 payload];
  v10 = [v9 objectForKeyedSubscript:@"queue-section-id"];

  v11 = [v7 payload];
  v273 = [v11 objectForKeyedSubscript:@"queue-item-id"];

  if (!v10)
  {
    v249 = [MEMORY[0x1E696AAA8] currentHandler];
    [v249 handleFailureInMethod:a2 object:a1 file:@"MPCPlayPerfMetrics.m" lineNumber:319 description:@"Section identifier in first audio frame event can't be nil"];
  }

  v12 = v273;
  if (!v273)
  {
    v250 = [MEMORY[0x1E696AAA8] currentHandler];
    [v250 handleFailureInMethod:a2 object:a1 file:@"MPCPlayPerfMetrics.m" lineNumber:320 description:@"Item identifier in first audio frame event can't be nil"];

    v12 = 0;
  }

  v334[0] = @"queue-section-id";
  v334[1] = @"queue-item-id";
  v335[0] = v10;
  v335[1] = v12;
  v274 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v335 forKeys:v334 count:2];
  v13 = [v8 findPreviousEventWithType:@"item-first-audio-frame" matchingPayload:v274];
  if (v13)
  {
    v270 = [v8 cursorFromEvent:v13 untilEvent:0];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v331 = __Block_byref_object_copy__3197;
    v332 = __Block_byref_object_dispose__3198;
    v333 = 0;
    v301 = 0;
    v302 = &v301;
    v303 = 0x3032000000;
    v304 = __Block_byref_object_copy__3197;
    v305 = __Block_byref_object_dispose__3198;
    v306 = 0;
    v300[0] = MEMORY[0x1E69E9820];
    v300[1] = 3221225472;
    v300[2] = __69__MPCPlayPerfMetrics_playMetricsWithItemReadyForMetricsEvent_cursor___block_invoke;
    v300[3] = &unk_1E8231DA8;
    v300[4] = buf;
    v300[5] = &v301;
    [v270 enumeratePreviousEventsWithType:@"remote-control-begin" usingBlock:v300];
    v14 = v302[5];
    v269 = [v270 findPreviousEventWithType:@"asset-load-begin" matchingPayload:v274];
    if (!v14 && v269)
    {
      v15 = [v270 findPreviousEventWithType:@"session-begin" matchingPayload:0];
      v16 = [v15 payload];
      v17 = [v16 objectForKeyedSubscript:@"session-id"];

      if (v17)
      {
        v328 = @"session-id";
        v329 = v17;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v329 forKeys:&v328 count:1];
        v14 = [v270 findPreviousEventWithType:@"session-restore-begin" matchingPayload:v18];

        if ([v14 compare:v269] == -1)
        {
          v19 = [v270 cursorFromEvent:v269 untilEvent:v14];
          v326 = @"queue-section-id";
          v327 = v10;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v327 forKeys:&v326 count:1];
          v21 = [v19 findPreviousEventWithType:@"queue-load-end" matchingPayload:v20];

          if (v21)
          {
            v22 = v21;

            v269 = v22;
          }
        }
      }

      else
      {
        v14 = 0;
      }
    }

    v267 = v14;
    if (!v14 || !v269 || !*(*&buf[8] + 40))
    {
      log = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        v86 = [v7 identifier];
        *v322 = 138543874;
        *&v322[4] = v86;
        *&v322[12] = 2114;
        *&v322[14] = v10;
        *&v322[22] = 2114;
        v323 = v273;
        _os_log_impl(&dword_1C5C61000, log, OS_LOG_TYPE_ERROR, "ItemReadyForMetricsEvent event doesn't have recognizable preceding SetPlaybackQueue and Play events (eventID:%{public}@ item:%{public}@ %{public}@)", v322, 0x20u);
      }

      v25 = 0;
      goto LABEL_135;
    }

    v26 = [v270 cursorFromEvent:v13 untilEvent:v14];
    v27 = [v26 countOfPreviousEventsWithType:@"item-first-audio-frame" matchingPayload:0];
    *v322 = 0;
    *&v322[8] = v322;
    *&v322[16] = 0x3032000000;
    v323 = __Block_byref_object_copy__3197;
    v324 = __Block_byref_object_dispose__3198;
    v325 = 0;
    v299[0] = MEMORY[0x1E69E9820];
    v299[1] = 3221225472;
    v299[2] = __69__MPCPlayPerfMetrics_playMetricsWithItemReadyForMetricsEvent_cursor___block_invoke_265;
    v299[3] = &unk_1E82322F0;
    v299[4] = v322;
    log = v26;
    [v26 enumeratePreviousEventsWithType:@"queue-add" usingBlock:v299];
    if (!*(*&v322[8] + 40))
    {
      v87 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
      {
        v88 = [v13 identifier];
        *v312 = 138543874;
        *&v312[4] = v88;
        *&v312[12] = 2114;
        *&v312[14] = v10;
        *&v312[22] = 2114;
        v313 = v273;
        _os_log_impl(&dword_1C5C61000, v87, OS_LOG_TYPE_ERROR, "ItemReadyForMetricsEvent event doesn't have preceding QueueAdd event (eventID:%{public}@ item:%{public}@ %{public}@)", v312, 0x20u);
      }

      v25 = 0;
      goto LABEL_134;
    }

    v272 = objc_alloc_init(MPCPlayPerfMetrics);
    v28 = v27;
    if (v27)
    {
      v29 = @"NextItem";
    }

    else
    {
      v29 = @"FirstItem";
    }

    [(MPCPlayPerfMetrics *)v272 set_eventType:v29];
    v30 = MEMORY[0x1E696AD98];
    v31 = [v13 date];
    [v31 timeIntervalSince1970];
    v32 = [v30 numberWithDouble:?];
    [(MPCPlayPerfMetrics *)v272 set_eventTime:v32];

    [(MPCPlayPerfMetrics *)v272 set_sectionIdentifier:v10];
    [(MPCPlayPerfMetrics *)v272 set_itemIdentifier:v273];
    v33 = [v302[5] payload];
    v34 = [v33 objectForKeyedSubscript:@"remote-control-options"];
    v35 = [v34 objectForKeyedSubscript:*MEMORY[0x1E69B1158]];
    [(MPCPlayPerfMetrics *)v272 set_isRemoteSetQueue:v35];

    v36 = [v302[5] payload];
    v37 = [v36 objectForKeyedSubscript:@"remote-control-type"];
    [(MPCPlayPerfMetrics *)v272 set_queueCommandType:v37];

    v38 = [*(*&v322[8] + 40) payload];
    v265 = [v38 objectForKeyedSubscript:@"queue-reporting-metadata"];

    [(MPCPlayPerfMetrics *)v272 addQueueMetadata:v265];
    [(MPCPlayPerfMetrics *)v272 addPlaybackBehaviorWithCursor:log];
    [(MPCPlayPerfMetrics *)v272 addSharePlayWithCursor:log];
    [(MPCPlayPerfMetrics *)v272 addEnvironmentInfoWithCursor:v270];
    [(MPCPlayPerfMetrics *)v272 addAssetSelectionWithCursor:log itemIDPayload:v274];
    v320 = @"queue-section-id";
    v321 = v10;
    v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v321 forKeys:&v320 count:1];
    v263 = [v270 findPreviousEventWithType:@"container-begin" matchingPayload:v39];

    v40 = [v270 findPreviousEventWithType:@"item-begin" matchingPayload:v274];
    if (!v40)
    {
      v41 = MEMORY[0x1E69B13D8];
      v319[0] = v10;
      v319[1] = v273;
      v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v319 count:2];
      [v41 snapshotWithDomain:*MEMORY[0x1E69B1340] type:@"Bug" subType:@"FirstAudioFrameBug" context:@"FirstAudioFrameBeforeItemBegin" triggerThresholdValues:0 events:v42 completion:0];
    }

    v43 = [v40 payload];
    v44 = [v43 objectForKeyedSubscript:@"item-metadata"];
    [(MPCPlayPerfMetrics *)v272 set_itemMetadata:v44];
    v262 = v40;

    v45 = [v263 payload];
    v261 = [v45 objectForKeyedSubscript:@"container-kind"];

    v46 = [v40 payload];
    v260 = [v46 objectForKeyedSubscript:@"item-kind"];

    v47 = MEMORY[0x1E696AEC0];
    v48 = [v265 objectForKeyedSubscript:@"playback-context-class-name"];
    v49 = NSStringFromClass([v261 modelClass]);
    v50 = NSStringFromClass([v260 modelClass]);
    v51 = [v47 stringWithFormat:@"%@-%@-%@", v48, v49, v50];
    [(MPCPlayPerfMetrics *)v272 set_queueType:v51];

    v266 = [log findPreviousEventWithType:@"item-resume" matchingPayload:v274];
    v52 = MEMORY[0x1E696AD98];
    v53 = [v266 payload];
    v54 = [v53 objectForKeyedSubscript:@"item-start-position"];
    [v54 doubleValue];
    v56 = [v52 numberWithInt:v55 > 0.0];
    [(MPCPlayPerfMetrics *)v272 set_seekBeforePlaying:v56];

    v57 = [v266 payload];
    v58 = [v57 objectForKeyedSubscript:@"supports-vocal-attenuation"];
    LODWORD(v53) = [v58 BOOLValue];

    v59 = [v266 payload];
    v60 = [v59 objectForKeyedSubscript:@"vocal-attenuation-available"];
    LODWORD(v54) = [v60 BOOLValue];

    v61 = [v266 payload];
    v62 = [v61 objectForKeyedSubscript:@"vocal-attenuation-enabled"];
    v63 = [v62 BOOLValue];

    v64 = [v266 payload];
    v65 = [v64 objectForKeyedSubscript:@"vocal-attenuation-configured"];
    LODWORD(v62) = [v65 BOOLValue];

    v66 = [MEMORY[0x1E696AD98] numberWithInt:v53 & v62 & v54 & v63];
    [(MPCPlayPerfMetrics *)v272 set_vocalsControlActive:v66];

    v67 = [v271 payload];
    v264 = [v67 objectForKeyedSubscript:@"av-player-item-performance-metrics"];

    if (v264)
    {
      v68 = [v264 dataUsingEncoding:4];
      v69 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v68 options:0 error:0];
      [(MPCPlayPerfMetrics *)v272 set_AVPlayerItemPerformanceMetrics:v69];
    }

    v70 = [MEMORY[0x1E696AD98] numberWithDouble:{objc_msgSend(v13, "monotonicTimeNanoSeconds") / 1000000000.0}];
    [(MPCPlayPerfMetrics *)v272 set_timeSinceBoot:v70];

    v71 = MEMORY[0x1E696AD98];
    v72 = [v13 date];
    [v72 timeIntervalSince1970];
    v74 = v73;
    MSVGetProcessLaunchTime();
    v76 = [v71 numberWithDouble:v74 - v75];
    [(MPCPlayPerfMetrics *)v272 set_timeSinceLaunch:v76];

    if (v28)
    {
      v77 = [log findPreviousEventWithType:@"item-end" matchingPayload:0];
      v78 = v77;
      if (!v77)
      {
        v78 = *(*&buf[8] + 40);
      }

      v79 = v78;

      v80 = [v13 payload];
      v81 = [v80 objectForKeyedSubscript:@"event-time-offset"];
      [v81 doubleValue];
      v83 = v82;

      [v13 durationSinceEvent:v79];
      v85 = [MEMORY[0x1E696AD98] numberWithDouble:{fmax(v83 + v84, 0.0)}];
      [(MPCPlayPerfMetrics *)v272 set_nextItemWaitTime:v85];
LABEL_133:

      v87 = v272;
      v25 = v87;
LABEL_134:

      _Block_object_dispose(v322, 8);
LABEL_135:

      _Block_object_dispose(&v301, 8);
      _Block_object_dispose(buf, 8);

      v8 = v270;
      goto LABEL_136;
    }

    v89 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v270, "countOfPreviousEventsWithType:matchingPayload:", @"item-first-audio-frame", 0) == 0}];
    [(MPCPlayPerfMetrics *)v272 set_isFirstPlay:v89];

    v90 = [log findPreviousEventWithType:@"item-end" matchingPayload:0];
    v79 = v90;
    v91 = MEMORY[0x1E696AD98];
    if (v90)
    {
      v28 = [v90 payload];
      v72 = [v28 objectForKeyedSubscript:@"item-did-play-to-end"];
      if ([v72 BOOLValue])
      {
        v92 = 0;
        v93 = 0;
      }

      else
      {
        v71 = [v79 payload];
        v63 = [v71 objectForKeyedSubscript:@"item-end-position"];
        [v63 doubleValue];
        v93 = v94 > 0.0;
        v92 = 1;
      }
    }

    else
    {
      v92 = 0;
      v93 = 0;
    }

    v95 = [v91 numberWithInt:v93];
    [(MPCPlayPerfMetrics *)v272 set_isReplacingPlayback:v95];

    if (v92)
    {
    }

    if (v79)
    {
    }

    v257 = [log findPreviousEventWithType:@"error-resolution" matchingPayload:0];
    if (v257)
    {
      v96 = [v257 payload];
      v97 = [v96 objectForKeyedSubscript:@"resolution-type"];
      [(MPCPlayPerfMetrics *)v272 set_errorResolution:v97];

      v98 = [v257 payload];
      v99 = [v98 objectForKeyedSubscript:@"error-for-resolution"];

      if (v99)
      {
        v100 = [v99 msv_analyticSignature];
        [(MPCPlayPerfMetrics *)v272 set_errorSignature:v100];
      }
    }

    v101 = [*(*&v322[8] + 40) payload];
    v256 = [v101 objectForKeyedSubscript:@"account-id"];

    v318[0] = @"account-begin";
    v318[1] = @"account-update";
    v102 = [MEMORY[0x1E695DEC8] arrayWithObjects:v318 count:2];
    if (v256)
    {
      v316 = @"account-id";
      v317 = v256;
      v103 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v317 forKeys:&v316 count:1];
    }

    else
    {
      v103 = 0;
    }

    v259 = [v270 findPreviousEventWithTypes:v102 matchingPayload:v103];
    if (v256)
    {
    }

    v104 = [MEMORY[0x1E696AD98] numberWithInt:v259 != 0];
    [(MPCPlayPerfMetrics *)v272 set_hasAccountInfo:v104];

    if (v259)
    {
      v105 = [v259 payload];
      v106 = [v105 objectForKeyedSubscript:@"account-metadata"];
      v107 = [v106 objectForKeyedSubscript:@"active"];
      [(MPCPlayPerfMetrics *)v272 set_isActiveAccount:v107];

      v108 = [v259 payload];
      v109 = [v108 objectForKeyedSubscript:@"account-metadata"];
      v110 = [v109 objectForKeyedSubscript:@"subscription-status"];

      if (v110)
      {
        v111 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v110, "statusType")}];
        [(MPCPlayPerfMetrics *)v272 set_subscriptionType:v111];
      }

      v112 = [v259 payload];
      v113 = [v112 objectForKeyedSubscript:@"account-metadata"];
      v114 = [v113 objectForKeyedSubscript:@"store-front-id"];
      [(MPCPlayPerfMetrics *)v272 set_storefront:v114];
    }

    [(MPCPlayPerfMetrics *)v272 addNetworkTimesWithScopedCursor:log];
    [(MPCPlayPerfMetrics *)v272 addSessionActivationTimesWithScopedCursor:log];
    v115 = v302[5];
    v116 = [v115 payload];
    v117 = [v116 objectForKeyedSubscript:@"remote-control-options"];
    v252 = *MEMORY[0x1E69B1088];
    v118 = [v117 objectForKeyedSubscript:?];

    if (v118)
    {
      v119 = [v115 date];
      [v119 timeIntervalSinceReferenceDate];
      v121 = v120;
      [v118 doubleValue];
      v123 = v122;

      v124 = v121 - v123;
      if (v121 - v123 <= 0.0)
      {
LABEL_65:
        v125 = MEMORY[0x1E696AD98];
        [v269 durationSinceEvent:{v267, v124}];
        v127 = v126;
        v128 = [(MPCPlayPerfMetrics *)v272 sessionActivationWaitTime];
        [v128 doubleValue];
        v130 = [v125 numberWithDouble:v127 - v129];
        [(MPCPlayPerfMetrics *)v272 set_queueLoadWaitTime:v130];

        v131 = *(*&buf[8] + 40);
        v132 = [v131 payload];
        v133 = [v132 objectForKeyedSubscript:@"remote-control-options"];
        v134 = [v133 objectForKeyedSubscript:v252];

        if (v134)
        {
          v135 = [v131 date];
          [v135 timeIntervalSinceReferenceDate];
          v137 = v136;
          [v134 doubleValue];
          v139 = v138;

          v140 = v137 - v139;
        }

        else
        {
          v140 = 0.0;
        }

        if (v302[5] != *(*&buf[8] + 40))
        {
          v141 = [MEMORY[0x1E696AD98] numberWithDouble:v140];
          [(MPCPlayPerfMetrics *)v272 set_playCommandSendTime:v141];
        }

        v258 = [log findPreviousEventWithType:@"asset-load-begin" matchingPayload:v274];
        v254 = [log findPreviousEventWithType:@"asset-load-end" matchingPayload:v274];
        v142 = [log findPreviousEventWithType:@"item-ready-to-play" matchingPayload:v274];
        v143 = v142;
        if (v258 && v254 && v142)
        {
          v144 = MEMORY[0x1E696AD98];
          [v254 durationSinceEvent:v258];
          v145 = [v144 numberWithDouble:?];
          [(MPCPlayPerfMetrics *)v272 set_assetLoadWaitTime:v145];

          v146 = MEMORY[0x1E696AD98];
          [v143 durationSinceEvent:v254];
          v147 = [v146 numberWithDouble:?];
          [(MPCPlayPerfMetrics *)v272 set_readyToPlayStatusWaitTime:v147];

          v148 = *(*&buf[8] + 40);
          if (v148 != v302[5])
          {
            v149 = MEMORY[0x1E696AD98];
            [v148 durationSinceEvent:v143];
            v151 = [v149 numberWithDouble:v150 - v140];
            [(MPCPlayPerfMetrics *)v272 set_playCommandWaitTime:v151];

            v148 = v302[5];
          }

          v152 = MEMORY[0x1E696AD98];
          if (v148)
          {
            v153 = [(MPCPlayPerfMetrics *)v272 readyToPlayStatusWaitTime];
            [v153 doubleValue];
            v155 = v154;

            [v143 durationSinceEvent:v302[5]];
            if (v155 < v156)
            {
              v156 = v155;
            }
          }

          else
          {
            v157 = [(MPCPlayPerfMetrics *)v272 readyToPlayStatusWaitTime];
            [v157 doubleValue];
            v159 = v158;

            [v143 durationSinceEvent:*(*&buf[8] + 40)];
            if (v159 < v156)
            {
              v156 = v159;
            }
          }

          v160 = [v152 numberWithDouble:{fmax(v156, 0.0)}];
          [(MPCPlayPerfMetrics *)v272 set_readyToPlayStatusWaitTime:v160];
        }

        *v312 = 0;
        *&v312[8] = v312;
        *&v312[16] = 0x3032000000;
        v313 = __Block_byref_object_copy__3197;
        v314 = __Block_byref_object_dispose__3198;
        v315 = 0;
        v293 = 0;
        v294 = &v293;
        v295 = 0x3032000000;
        v296 = __Block_byref_object_copy__3197;
        v297 = __Block_byref_object_dispose__3198;
        v298 = 0;
        v288[0] = MEMORY[0x1E69E9820];
        v288[1] = 3221225472;
        v288[2] = __69__MPCPlayPerfMetrics_playMetricsWithItemReadyForMetricsEvent_cursor___block_invoke_284;
        v288[3] = &unk_1E8232000;
        v289 = v10;
        v291 = v312;
        v290 = v273;
        v292 = &v293;
        [log enumeratePreviousEventsWithType:@"item-rate-changed" usingBlock:v288];
        v161 = v294[5];
        v162 = v270;
        if (v161)
        {
          [v161 durationSinceEvent:*(*&buf[8] + 40)];
          v164 = v163;
          [v294[5] durationSinceEvent:v143];
          if (v164 < v165)
          {
            v165 = v164;
          }

          v166 = [MEMORY[0x1E696AD98] numberWithDouble:v165];
          [(MPCPlayPerfMetrics *)v272 set_rateChangeWaitTime:v166];

          v167 = [v13 payload];
          v168 = [v167 objectForKeyedSubscript:@"event-time-offset"];
          [v168 doubleValue];
          v170 = v169;

          v171 = MEMORY[0x1E696AD98];
          [v13 durationSinceEvent:v294[5]];
          v173 = [v171 numberWithDouble:{fmax(v170 + v172, 0.0)}];
          [(MPCPlayPerfMetrics *)v272 set_firstAudioFrameWaitTime:v173];

          v174 = [v13 date];
          v175 = [v174 dateByAddingTimeInterval:v170];
          [(MPCPlayPerfMetrics *)v272 setFirstAudioFrameDate:v175];

          v162 = v270;
        }

        v176 = [v162 cursorFromEvent:v267 untilEvent:0];
        v311[0] = @"item-resume";
        v311[1] = @"item-pause";
        v177 = [MEMORY[0x1E695DEC8] arrayWithObjects:v311 count:2];
        v255 = [v176 findPreviousEventWithTypes:v177 matchingPayload:0];

        if (v255)
        {
          v178 = [v255 type];
          v179 = [v178 isEqualToString:@"item-pause"];

          if (v179)
          {
            v180 = MEMORY[0x1E696AD98];
            [v13 durationSinceEvent:v255];
            v181 = [v180 numberWithDouble:?];
            [(MPCPlayPerfMetrics *)v272 set_timeSincePaused:v181];
          }

          else
          {
            [(MPCPlayPerfMetrics *)v272 set_timeSincePaused:&unk_1F4599058];
          }
        }

        v182 = v302[5];
        if (v182)
        {
          v183 = [v182 payload];
          v184 = [v183 objectForKeyedSubscript:@"remote-control-options"];
          v185 = [v184 objectForKeyedSubscript:v252];

          if (v185)
          {
            v287 = 0;
            v285 = 0u;
            v286 = 0u;
            v186 = MEMORY[0x1E695DF00];
            [v185 doubleValue];
            v187 = [v186 dateWithTimeIntervalSinceReferenceDate:?];
            MPCPlaybackEngineEventMonotonicTimeConvertNSDate(v187, &v285);

            v188 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&v285 + 1)];
            [(MPCPlayPerfMetrics *)v272 set_checkpointMRSetQueueBegin:v188];
          }

          v189 = MEMORY[0x1E696AD98];
          v190 = v302[5];
          if (v190)
          {
            [v190 monotonicTime];
            v191 = v284;
          }

          else
          {
            v191 = 0;
          }

          v192 = [v189 numberWithUnsignedLongLong:v191];
          [(MPCPlayPerfMetrics *)v272 set_checkpointSetQueueBegin:v192];

          v309 = @"remote-control-id";
          v193 = [v302[5] payload];
          v194 = [v193 objectForKeyedSubscript:@"remote-control-id"];
          v310 = v194;
          v195 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v310 forKeys:&v309 count:1];
          v196 = [log findPreviousEventWithType:@"remote-control-end" matchingPayload:v195];

          if (v196)
          {
            v197 = MEMORY[0x1E696AD98];
            [v196 monotonicTime];
            v198 = [v197 numberWithUnsignedLongLong:v283];
            [(MPCPlayPerfMetrics *)v272 set_checkpointSetQueueEnd:v198];
          }
        }

        v199 = *(*&v312[8] + 40);
        if (v199)
        {
          v200 = MEMORY[0x1E696AD98];
          [v199 monotonicTime];
          v201 = [v200 numberWithUnsignedLongLong:v282];
          [(MPCPlayPerfMetrics *)v272 set_checkpointRateZero:v201];
        }

        v202 = *(*&buf[8] + 40);
        if (v202)
        {
          v203 = [v202 payload];
          v204 = [v203 objectForKeyedSubscript:@"remote-control-options"];
          v205 = [v204 objectForKeyedSubscript:v252];

          if (v205)
          {
            v287 = 0;
            v285 = 0u;
            v286 = 0u;
            v206 = MEMORY[0x1E695DF00];
            [v205 doubleValue];
            v207 = [v206 dateWithTimeIntervalSinceReferenceDate:?];
            MPCPlaybackEngineEventMonotonicTimeConvertNSDate(v207, &v285);

            v208 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&v285 + 1)];
            [(MPCPlayPerfMetrics *)v272 set_checkpointMRPlay:v208];
          }

          v209 = MEMORY[0x1E696AD98];
          v210 = *(*&buf[8] + 40);
          if (v210)
          {
            [v210 monotonicTime];
            v211 = v281;
          }

          else
          {
            v211 = 0;
          }

          v212 = [v209 numberWithUnsignedLongLong:v211];
          [(MPCPlayPerfMetrics *)v272 set_checkpointPlay:v212];
        }

        if (v258)
        {
          v213 = MEMORY[0x1E696AD98];
          [v258 monotonicTime];
          v214 = [v213 numberWithUnsignedLongLong:v280];
          [(MPCPlayPerfMetrics *)v272 set_checkpointAssetLoadBegin:v214];
        }

        v253 = [log findPreviousEventWithType:@"asset-load-end" matchingPayload:v274];
        if (v253)
        {
          v215 = MEMORY[0x1E696AD98];
          [v253 monotonicTime];
          v216 = [v215 numberWithUnsignedLongLong:v279];
          [(MPCPlayPerfMetrics *)v272 set_checkpointAssetLoadEnd:v216];
        }

        v251 = [log findPreviousEventWithType:@"item-buffer-ready" matchingPayload:v274];
        if (v251)
        {
          v217 = MEMORY[0x1E696AD98];
          [v251 monotonicTime];
          v218 = [v217 numberWithUnsignedLongLong:v278];
          [(MPCPlayPerfMetrics *)v272 set_checkpointLikelyToKeepUp:v218];
        }

        if (v143)
        {
          v219 = MEMORY[0x1E696AD98];
          [v143 monotonicTime];
          v220 = [v219 numberWithUnsignedLongLong:v277];
          [(MPCPlayPerfMetrics *)v272 set_checkpointReadyToPlay:v220];
        }

        v221 = v294[5];
        if (v221)
        {
          v222 = MEMORY[0x1E696AD98];
          [v221 monotonicTime];
          v223 = [v222 numberWithUnsignedLongLong:v276];
          [(MPCPlayPerfMetrics *)v272 set_checkpointRateOne:v223];
        }

        v224 = [v13 payload];
        v225 = [v224 objectForKeyedSubscript:@"event-time-offset"];
        [v225 doubleValue];
        v227 = v226;

        [v13 monotonicTime];
        info = 0;
        mach_timebase_info(&info);
        v228 = *(&v285 + 1);
        denom = info.denom;
        numer = info.numer;
        v231 = MEMORY[0x1E696AD98];
        v232 = v294[5];
        if (v232)
        {
          [v232 monotonicTime];
          v233 = v275;
        }

        else
        {
          v233 = 0;
        }

        if (denom * (v227 * 1000000000.0) / numer + v228 <= v233)
        {
          v234 = v233;
        }

        else
        {
          v234 = denom * (v227 * 1000000000.0) / numer + v228;
        }

        v235 = [v231 numberWithUnsignedLongLong:v234];
        [(MPCPlayPerfMetrics *)v272 set_checkpointFirstAudioFrame:v235];

        v236 = [(MPCPlayPerfMetrics *)v272 setQueueCommandSendTime];
        [v236 doubleValue];
        v238 = v237;
        v239 = v237 > 120.0;

        if (v239)
        {
          v240 = @"LongSendQueue";
        }

        else
        {
          v240 = 0;
        }

        v241 = [(MPCPlayPerfMetrics *)v272 musicTotalTime];
        [v241 doubleValue];
        v243 = v242 > 300.0;

        if (v243)
        {
          v244 = @"LongMPP";
        }

        else
        {
          v244 = v240;
        }

        if (v243 || v238 > 120.0)
        {
          v245 = MEMORY[0x1E69B13D8];
          v246 = [(MPCPlayPerfMetrics *)v272 dictionaryRepresentation];
          v308 = v246;
          v247 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v308 count:1];
          [v245 snapshotWithDomain:*MEMORY[0x1E69B1340] type:@"Bug" subType:@"PlayPerf" context:v244 triggerThresholdValues:0 events:v247 completion:0];
        }

        _Block_object_dispose(&v293, 8);
        _Block_object_dispose(v312, 8);

        v85 = v257;
        goto LABEL_133;
      }

      v115 = [MEMORY[0x1E696AD98] numberWithDouble:v124];
      [(MPCPlayPerfMetrics *)v272 set_setQueueCommandSendTime:v115];
    }

    goto LABEL_65;
  }

  v23 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = [v7 identifier];
    *buf = 138543874;
    *&buf[4] = v24;
    *&buf[12] = 2114;
    *&buf[14] = v10;
    *&buf[22] = 2114;
    v331 = v273;
    _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_ERROR, "ItemReadyForMetricsEvent event doesn't have recognizable preceding ItemFirstAudioFrameRender event (eventID:%{public}@ item:%{public}@ %{public}@)", buf, 0x20u);
  }

  v25 = 0;
LABEL_136:

  return v25;
}

void __69__MPCPlayPerfMetrics_playMetricsWithItemReadyForMetricsEvent_cursor___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v15 = a2;
  v6 = [v15 payload];
  v7 = [v6 objectForKeyedSubscript:@"remote-control-type"];
  v8 = [v7 intValue];

  v9 = v8 - 121;
  if ((v8 - 121 > 0xC || ((1 << (v8 - 121)) & 0x1003) == 0) && (v8 & 0xFFFFFFFD) != 0)
  {
    if (v8 <= 0x1A && ((1 << v8) & 0x7080000) != 0 || v8 == 132 || v8 == 135)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v12 = *(*(a1 + 32) + 8);
  v14 = *(v12 + 40);
  v13 = (v12 + 40);
  if (!v14)
  {
    objc_storeStrong(v13, a2);
  }

  if (v9 <= 0xC && ((1 << v9) & 0x1003) != 0)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
LABEL_14:
    *a3 = 1;
  }

LABEL_15:
}

void __69__MPCPlayPerfMetrics_playMetricsWithItemReadyForMetricsEvent_cursor___block_invoke_284(void *a1, void *a2, _BYTE *a3)
{
  v28 = a2;
  v5 = a1[4];
  v6 = [v28 payload];
  v7 = [v6 objectForKeyedSubscript:@"queue-section-id"];
  if ([v5 isEqualToString:v7])
  {
  }

  else
  {
    v8 = [v28 payload];
    v9 = [v8 objectForKeyedSubscript:@"item-rate"];
    [v9 doubleValue];
    v11 = v10;

    v12 = v28;
    if (v11 != 0.0)
    {
      goto LABEL_6;
    }

    v13 = *(a1[6] + 8);
    v14 = v28;
    v6 = *(v13 + 40);
    *(v13 + 40) = v14;
  }

  v12 = v28;
LABEL_6:
  v15 = a1[4];
  v16 = [v12 payload];
  v17 = [v16 objectForKeyedSubscript:@"queue-section-id"];
  if (([v15 isEqualToString:v17] & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  v18 = a1[5];
  v19 = [v28 payload];
  v20 = [v19 objectForKeyedSubscript:@"queue-item-id"];
  if (![v18 isEqualToString:v20])
  {

    goto LABEL_11;
  }

  v21 = [v28 payload];
  v22 = [v21 objectForKeyedSubscript:@"item-rate"];
  [v22 doubleValue];
  v24 = v23;

  if (v24 <= 0.0)
  {
    goto LABEL_13;
  }

  v25 = *(a1[7] + 8);
  v26 = v28;
  v16 = *(v25 + 40);
  *(v25 + 40) = v26;
LABEL_12:

LABEL_13:
  v27 = *(*(a1[6] + 8) + 40);
  if (v27)
  {
    LOBYTE(v27) = *(*(a1[7] + 8) + 40) != 0;
  }

  *a3 = v27;
}

@end