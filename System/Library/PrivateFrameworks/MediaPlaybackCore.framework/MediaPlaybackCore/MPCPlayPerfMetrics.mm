@interface MPCPlayPerfMetrics
+ (id)playMetricsWithErrorSignature:(id)signature event:(id)event cursor:(id)cursor;
+ (id)playMetricsWithItemReadyForMetricsEvent:(id)event cursor:(id)cursor;
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
- (id)_buildSegmentForComponent:(void *)component subcomponent:(void *)subcomponent duration:;
- (id)description;
- (id)dictionaryRepresentation;
- (id)jsonObject;
- (void)_addComplexityToSegment:(void *)segment complexity:(int)complexity when:;
- (void)_addOptimizationToSegment:(void *)segment optimization:(uint64_t)optimization when:;
- (void)_addStepToSegment:(void *)segment name:(void *)name duration:(char)duration options:;
- (void)addAssetSelectionWithCursor:(id)cursor itemIDPayload:(id)payload;
- (void)addEnvironmentInfoWithCursor:(id)cursor;
- (void)addNetworkTimesWithScopedCursor:(id)cursor;
- (void)addPlaybackBehaviorWithCursor:(id)cursor;
- (void)addQueueMetadata:(id)metadata;
- (void)addSessionActivationTimesWithScopedCursor:(id)cursor;
- (void)addSharePlayWithCursor:(id)cursor;
- (void)set_AVPlayerItemPerformanceMetrics:(id)metrics;
- (void)set_assetCacheAge:(id)age;
- (void)set_assetLoadWaitTime:(id)time;
- (void)set_assetLocation:(id)location;
- (void)set_assetProtectionType:(id)type;
- (void)set_assetSource:(id)source;
- (void)set_assetType:(id)type;
- (void)set_bagWaitTime:(id)time;
- (void)set_checkpointAssetLoadBegin:(id)begin;
- (void)set_checkpointAssetLoadEnd:(id)end;
- (void)set_checkpointFirstAudioFrame:(id)frame;
- (void)set_checkpointLikelyToKeepUp:(id)up;
- (void)set_checkpointMRPlay:(id)play;
- (void)set_checkpointMRSetQueueBegin:(id)begin;
- (void)set_checkpointPlay:(id)play;
- (void)set_checkpointRateOne:(id)one;
- (void)set_checkpointRateZero:(id)zero;
- (void)set_checkpointReadyToPlay:(id)play;
- (void)set_checkpointSetQueueBegin:(id)begin;
- (void)set_checkpointSetQueueEnd:(id)end;
- (void)set_endpointType:(id)type;
- (void)set_errorResolution:(id)resolution;
- (void)set_errorSignature:(id)signature;
- (void)set_eventTime:(id)time;
- (void)set_eventType:(id)type;
- (void)set_experimentID:(id)d;
- (void)set_featureName:(id)name;
- (void)set_firstAudioFrameWaitTime:(id)time;
- (void)set_formatInfo:(id)info;
- (void)set_hasAccountInfo:(id)info;
- (void)set_hasOfflinePlaybackKeys:(id)keys;
- (void)set_hasOnlinePlaybackKeys:(id)keys;
- (void)set_hlsMetadataWaitTime:(id)time;
- (void)set_isActiveAccount:(id)account;
- (void)set_isAutoPlayEnabled:(id)enabled;
- (void)set_isDelegatedPlayback:(id)playback;
- (void)set_isFirstPlay:(id)play;
- (void)set_isRemoteSetQueue:(id)queue;
- (void)set_isReplacingPlayback:(id)playback;
- (void)set_isSharePlay:(id)play;
- (void)set_isShuffled:(id)shuffled;
- (void)set_itemIdentifier:(id)identifier;
- (void)set_itemMetadata:(id)metadata;
- (void)set_leaseWaitTime:(id)time;
- (void)set_lookupWaitTime:(id)time;
- (void)set_mediaRedownloadWaitTime:(id)time;
- (void)set_networkType:(id)type;
- (void)set_nextItemWaitTime:(id)time;
- (void)set_playCommandSendTime:(id)time;
- (void)set_playCommandWaitTime:(id)time;
- (void)set_queueCommandType:(id)type;
- (void)set_queueLoadWaitTime:(id)time;
- (void)set_queueType:(id)type;
- (void)set_rateChangeWaitTime:(id)time;
- (void)set_readyToPlayStatusWaitTime:(id)time;
- (void)set_routeInfo:(id)info;
- (void)set_sectionIdentifier:(id)identifier;
- (void)set_seekBeforePlaying:(id)playing;
- (void)set_sessionActivationAVTime:(id)time;
- (void)set_sessionActivationClientTime:(id)time;
- (void)set_sessionActivationWaitTime:(id)time;
- (void)set_setQueueCommandSendTime:(id)time;
- (void)set_siriRefId:(id)id;
- (void)set_storefront:(id)set_storefront;
- (void)set_subscriptionAssetLoadWaitTime:(id)time;
- (void)set_subscriptionType:(id)type;
- (void)set_suzeLeaseWaitTime:(id)time;
- (void)set_timeSinceBoot:(id)boot;
- (void)set_timeSinceLaunch:(id)launch;
- (void)set_timeSincePaused:(id)paused;
- (void)set_treatmentID:(id)d;
- (void)set_vocalsControlActive:(id)active;
@end

@implementation MPCPlayPerfMetrics

- (void)addEnvironmentInfoWithCursor:(id)cursor
{
  v6 = [cursor findPreviousEventWithType:@"network-type-changed" matchingPayload:0];
  payload = [v6 payload];
  v5 = [payload objectForKeyedSubscript:@"network-type"];
  [(MPCPlayPerfMetrics *)self set_networkType:v5];
}

- (void)addAssetSelectionWithCursor:(id)cursor itemIDPayload:(id)payload
{
  v68 = *MEMORY[0x1E69E9840];
  cursorCopy = cursor;
  payloadCopy = payload;
  v42 = [cursorCopy findPreviousEventWithType:@"asset-selection" matchingPayload:?];
  if (v42)
  {
    payload = [v42 payload];
    v7 = [payload objectForKeyedSubscript:@"asset-load-info"];

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
  [cursorCopy enumeratePreviousEventsWithType:@"audio-format-changed" matchingPayload:payloadCopy usingBlock:v45];
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

  v29 = [cursorCopy findPreviousEventWithType:@"item-configuration-end" matchingPayload:payloadCopy];
  v30 = v29;
  if (v29)
  {
    payload2 = [v29 payload];
    v32 = [payload2 objectForKeyedSubscript:@"hls-metadata-wait-time"];
    [(MPCPlayPerfMetrics *)self set_hlsMetadataWaitTime:v32];

    payload3 = [v30 payload];
    v34 = [payload3 objectForKeyedSubscript:@"audio-route"];

    if (v34)
    {
      v35 = v34;
      v52 = @"name";
      name = [v35 name];
      v37 = name;
      v38 = &stru_1F454A698;
      if (name)
      {
        v38 = name;
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

- (void)addSessionActivationTimesWithScopedCursor:(id)cursor
{
  v24[2] = *MEMORY[0x1E69E9840];
  cursorCopy = cursor;
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
  [cursorCopy enumeratePreviousEventsWithTypes:v5 usingBlock:v9];

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

- (void)addNetworkTimesWithScopedCursor:(id)cursor
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF90];
  cursorCopy = cursor;
  dictionary = [v4 dictionary];
  v17 = @"blocks-playback";
  v18[0] = MEMORY[0x1E695E118];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__MPCPlayPerfMetrics_addNetworkTimesWithScopedCursor___block_invoke;
  v15[3] = &unk_1E8231DD0;
  v15[4] = self;
  v16 = dictionary;
  v8 = dictionary;
  [cursorCopy enumeratePreviousEventsWithType:@"network-operation" matchingPayload:v7 usingBlock:v15];

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

- (void)addSharePlayWithCursor:(id)cursor
{
  v8 = [cursor findPreviousEventWithType:@"session-begin" matchingPayload:0];
  payload = [v8 payload];
  v5 = [payload objectForKeyedSubscript:@"behavior-type"];
  integerValue = [v5 integerValue];

  v7 = [MEMORY[0x1E696AD98] numberWithInt:integerValue == 3];
  [(MPCPlayPerfMetrics *)self set_isSharePlay:v7];
}

- (void)addPlaybackBehaviorWithCursor:(id)cursor
{
  v4 = [cursor findPreviousEventWithType:@"playback-behavior-changed" matchingPayload:0];
  if (v4)
  {
    v14 = v4;
    payload = [v4 payload];
    v6 = [payload objectForKeyedSubscript:@"playback-behavior-metadata"];
    v7 = [v6 objectForKeyedSubscript:@"shuffle-type"];
    intValue = [v7 intValue];

    v9 = [MEMORY[0x1E696AD98] numberWithInt:intValue != 0];
    [(MPCPlayPerfMetrics *)self set_isShuffled:v9];

    payload2 = [v14 payload];
    v11 = [payload2 objectForKeyedSubscript:@"playback-behavior-metadata"];
    v12 = [v11 objectForKeyedSubscript:@"autoplay-mode"];
    LODWORD(v7) = [v12 intValue];

    v13 = [MEMORY[0x1E696AD98] numberWithInt:v7 == 2];
    [(MPCPlayPerfMetrics *)self set_isAutoPlayEnabled:v13];

    v4 = v14;
  }
}

- (void)addQueueMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = [metadataCopy objectForKeyedSubscript:@"feature-name"];
  [(MPCPlayPerfMetrics *)self set_featureName:v5];

  v6 = [metadataCopy objectForKeyedSubscript:@"siri-ref-id"];

  [(MPCPlayPerfMetrics *)self set_siriRefId:v6];
}

- (id)jsonObject
{
  v131[4] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
  eventType = [(MPCPlayPerfMetrics *)self eventType];
  if (eventType == @"FirstItem" || (v5 = eventType, v6 = [(__CFString *)eventType isEqual:@"FirstItem"], v5, v5, v6))
  {
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    setQueueCommandSendTime = [(MPCPlayPerfMetrics *)self setQueueCommandSendTime];
    v10 = [(MPCPlayPerfMetrics *)self _buildSegmentForComponent:@"SendQueue" subcomponent:setQueueCommandSendTime duration:?];

    isRemoteSetQueue = [(MPCPlayPerfMetrics *)self isRemoteSetQueue];
    -[MPCPlayPerfMetrics _addComplexityToSegment:complexity:when:](self, v10, @"WHA", [isRemoteSetQueue BOOLValue]);

    [array addObject:v10];
    sessionActivationWaitTime = [(MPCPlayPerfMetrics *)self sessionActivationWaitTime];
    v13 = [(MPCPlayPerfMetrics *)self _buildSegmentForComponent:@"SessionActivation" subcomponent:sessionActivationWaitTime duration:?];

    routeInfo = [(MPCPlayPerfMetrics *)self routeInfo];
    v15 = [routeInfo objectForKeyedSubscript:@"type"];
    integerValue = [v15 integerValue];

    [(MPCPlayPerfMetrics *)self _addComplexityToSegment:v13 complexity:@"Bluetooth" when:(integerValue & 0xFFFFFFFFFFFFFFFELL) == 4];
    [(MPCPlayPerfMetrics *)self _addComplexityToSegment:v13 complexity:@"AirPlay" when:integerValue == 9];
    v17 = MEMORY[0x1E696AD98];
    sessionActivationWaitTime2 = [(MPCPlayPerfMetrics *)self sessionActivationWaitTime];
    [sessionActivationWaitTime2 doubleValue];
    v20 = v19;
    sessionActivationAVTime = [(MPCPlayPerfMetrics *)self sessionActivationAVTime];
    [sessionActivationAVTime doubleValue];
    v23 = v20 - v22;
    sessionActivationClientTime = [(MPCPlayPerfMetrics *)self sessionActivationClientTime];
    [sessionActivationClientTime doubleValue];
    v26 = [v17 numberWithDouble:v23 - v25];
    [(MPCPlayPerfMetrics *)self _addStepToSegment:v13 name:@"StackInit" duration:v26 options:0];

    sessionActivationAVTime2 = [(MPCPlayPerfMetrics *)self sessionActivationAVTime];
    [(MPCPlayPerfMetrics *)self _addStepToSegment:v13 name:@"AVAudioSession" duration:sessionActivationAVTime2 options:0];

    sessionActivationClientTime2 = [(MPCPlayPerfMetrics *)self sessionActivationClientTime];
    [sessionActivationClientTime2 doubleValue];
    v30 = v29;

    if (v30 > 0.0)
    {
      sessionActivationClientTime3 = [(MPCPlayPerfMetrics *)self sessionActivationClientTime];
      [(MPCPlayPerfMetrics *)self _addStepToSegment:v13 name:@"Delegate" duration:sessionActivationClientTime3 options:0];
    }

    [array addObject:v13];

    queueLoadWaitTime = [(MPCPlayPerfMetrics *)self queueLoadWaitTime];
    v33 = [(MPCPlayPerfMetrics *)self _buildSegmentForComponent:@"QueueLoad" subcomponent:queueLoadWaitTime duration:?];

    siriRefId = [(MPCPlayPerfMetrics *)self siriRefId];

    if (siriRefId)
    {
      assetSource = [(MPCPlayPerfMetrics *)self assetSource];
      if ([assetSource integerValue] <= 2)
      {
        [(MPCPlayPerfMetrics *)self _addOptimizationToSegment:v33 optimization:@"SiriAssetInfo" when:0];
      }

      else
      {
        assetSource2 = [(MPCPlayPerfMetrics *)self assetSource];
        -[MPCPlayPerfMetrics _addOptimizationToSegment:optimization:when:](self, v33, @"SiriAssetInfo", [assetSource2 integerValue] < 6);
      }
    }

    lookupWaitTime = [(MPCPlayPerfMetrics *)self lookupWaitTime];
    [(MPCPlayPerfMetrics *)self _addStepToSegment:v33 name:@"Queue" duration:lookupWaitTime options:1];

    [array addObject:v33];
    assetLoadWaitTime = [(MPCPlayPerfMetrics *)self assetLoadWaitTime];
    v42 = [(MPCPlayPerfMetrics *)self _buildSegmentForComponent:@"AssetLoad" subcomponent:assetLoadWaitTime duration:?];

    bagWaitTime = [(MPCPlayPerfMetrics *)self bagWaitTime];
    [(MPCPlayPerfMetrics *)self _addStepToSegment:v42 name:@"Bag" duration:bagWaitTime options:1];

    leaseWaitTime = [(MPCPlayPerfMetrics *)self leaseWaitTime];
    [(MPCPlayPerfMetrics *)self _addStepToSegment:v42 name:@"Lease" duration:leaseWaitTime options:1];

    suzeLeaseWaitTime = [(MPCPlayPerfMetrics *)self suzeLeaseWaitTime];
    [(MPCPlayPerfMetrics *)self _addStepToSegment:v42 name:@"SuzeLease" duration:suzeLeaseWaitTime options:1];

    subscriptionAssetLoadWaitTime = [(MPCPlayPerfMetrics *)self subscriptionAssetLoadWaitTime];
    [(MPCPlayPerfMetrics *)self _addStepToSegment:v42 name:@"MZPlay: SubPlaybackDispatch" duration:subscriptionAssetLoadWaitTime options:1];

    mediaRedownloadWaitTime = [(MPCPlayPerfMetrics *)self mediaRedownloadWaitTime];
    [(MPCPlayPerfMetrics *)self _addStepToSegment:v42 name:@"MZPlay: PaidRedownload" duration:mediaRedownloadWaitTime options:1];

    hlsMetadataWaitTime = [(MPCPlayPerfMetrics *)self hlsMetadataWaitTime];
    assetLocation = [(MPCPlayPerfMetrics *)self assetLocation];
    -[MPCPlayPerfMetrics _addStepToSegment:name:duration:options:](self, v42, @"HLS MVP", hlsMetadataWaitTime, [assetLocation integerValue] == 0);

    assetLocation2 = [(MPCPlayPerfMetrics *)self assetLocation];
    integerValue2 = [assetLocation2 integerValue];

    if (integerValue2)
    {
      if (integerValue2 == 3)
      {
        v52 = @"Downloaded";
      }

      else
      {
        if (integerValue2 != 1)
        {
          goto LABEL_21;
        }

        v52 = @"Cached";
      }

      selfCopy2 = self;
      v54 = v42;
      v55 = 1;
    }

    else
    {
      v52 = @"Cached";
      selfCopy2 = self;
      v54 = v42;
      v55 = 0;
    }

    [(MPCPlayPerfMetrics *)selfCopy2 _addOptimizationToSegment:v54 optimization:v52 when:v55];
LABEL_21:
    assetSource3 = [(MPCPlayPerfMetrics *)self assetSource];
    integerValue3 = [assetSource3 integerValue];

    if ((integerValue3 - 3) >= 3)
    {
      if (integerValue3 != 6)
      {
        goto LABEL_29;
      }

      v61 = @"SOD";
      selfCopy4 = self;
      v63 = v42;
      v64 = 0;
    }

    else
    {
      [(MPCPlayPerfMetrics *)self _addOptimizationToSegment:v42 optimization:@"SOD" when:1];
      assetSource4 = [(MPCPlayPerfMetrics *)self assetSource];
      if ([assetSource4 integerValue] != 5)
      {

LABEL_29:
        [array addObject:v42];

        readyToPlayStatusWaitTime = [(MPCPlayPerfMetrics *)self readyToPlayStatusWaitTime];
        v66 = [(MPCPlayPerfMetrics *)self _buildSegmentForComponent:@"ReadyToPlay" subcomponent:readyToPlayStatusWaitTime duration:?];

        assetType = [(MPCPlayPerfMetrics *)self assetType];
        -[MPCPlayPerfMetrics _addComplexityToSegment:complexity:when:](self, v66, @"HLS", [assetType integerValue] > 1);

        [array addObject:v66];
        playCommandSendTime = [(MPCPlayPerfMetrics *)self playCommandSendTime];
        v69 = [(MPCPlayPerfMetrics *)self _buildSegmentForComponent:@"SendPlay" subcomponent:playCommandSendTime duration:?];

        isRemoteSetQueue2 = [(MPCPlayPerfMetrics *)self isRemoteSetQueue];
        -[MPCPlayPerfMetrics _addComplexityToSegment:complexity:when:](self, v69, @"WHA", [isRemoteSetQueue2 BOOLValue]);

        [array addObject:v69];
        rateChangeWaitTime = [(MPCPlayPerfMetrics *)self rateChangeWaitTime];
        v72 = [(MPCPlayPerfMetrics *)self _buildSegmentForComponent:@"ChangeRate" subcomponent:rateChangeWaitTime duration:?];

        assetLocation3 = [(MPCPlayPerfMetrics *)self assetLocation];
        integerValue4 = [assetLocation3 integerValue];

        if (integerValue4 == 3)
        {
          hasOfflinePlaybackKeys = [(MPCPlayPerfMetrics *)self hasOfflinePlaybackKeys];
          -[MPCPlayPerfMetrics _addComplexityToSegment:complexity:when:](self, v72, @"No Offline Slot", [hasOfflinePlaybackKeys BOOLValue] ^ 1);
        }

        [array addObject:v72];

        firstAudioFrameWaitTime = [(MPCPlayPerfMetrics *)self firstAudioFrameWaitTime];
        v77 = [(MPCPlayPerfMetrics *)self _buildSegmentForComponent:@"FirstAudioFrame" subcomponent:firstAudioFrameWaitTime duration:?];

        [array addObject:v77];
        endpointType = [(MPCPlayPerfMetrics *)self endpointType];
        integerValue5 = [endpointType integerValue];

        if ((integerValue5 - 1) <= 2)
        {
          [array2 addObject:off_1E8231E18[integerValue5 - 1]];
        }

        assetType2 = [(MPCPlayPerfMetrics *)self assetType];
        v81 = [assetType2 integerValue] - 1;
        if (v81 > 4)
        {
          v82 = @"Unspecified";
        }

        else
        {
          v82 = off_1E8231E30[v81];
        }

        [array2 addObject:v82];

        formatInfo = [(MPCPlayPerfMetrics *)self formatInfo];
        v84 = [formatInfo objectForKeyedSubscript:@"sampleRate"];
        integerValue6 = [v84 integerValue];

        if (integerValue6 >= 1)
        {
          v86 = MEMORY[0x1E696AEC0];
          formatInfo2 = [(MPCPlayPerfMetrics *)self formatInfo];
          v88 = [formatInfo2 objectForKeyedSubscript:@"sampleRate"];
          1000 = [v86 stringWithFormat:@"%ldKHz", objc_msgSend(v88, "integerValue") / 1000];
          [array2 addObject:1000];
        }

        formatInfo3 = [(MPCPlayPerfMetrics *)self formatInfo];
        v91 = [formatInfo3 objectForKeyedSubscript:@"bitrate"];
        integerValue7 = [v91 integerValue];

        if (integerValue7 >= 1)
        {
          v93 = MEMORY[0x1E696AEC0];
          formatInfo4 = [(MPCPlayPerfMetrics *)self formatInfo];
          v95 = [formatInfo4 objectForKeyedSubscript:@"bitrate"];
          10002 = [v93 stringWithFormat:@"%ldKbps", objc_msgSend(v95, "integerValue") / 1000];
          [array2 addObject:10002];
        }

        formatInfo5 = [(MPCPlayPerfMetrics *)self formatInfo];
        v98 = [formatInfo5 objectForKeyedSubscript:@"channelLayout"];
        integerValue8 = [v98 integerValue];

        if (integerValue8)
        {
          formatInfo6 = [(MPCPlayPerfMetrics *)self formatInfo];
          v101 = [formatInfo6 objectForKeyedSubscript:@"channelLayout"];
          integerValue9 = [v101 integerValue];

          v102 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ldch", integerValue9];
          [array2 addObject:v102];
        }

        assetProtectionType = [(MPCPlayPerfMetrics *)self assetProtectionType];
        integerValue10 = [assetProtectionType integerValue];

        if (integerValue10)
        {
          if (integerValue10 == 2)
          {
            assetType3 = [(MPCPlayPerfMetrics *)self assetType];
            integerValue11 = [assetType3 integerValue];

            if (integerValue11 == 1)
            {
              assetSource5 = [(MPCPlayPerfMetrics *)self assetSource];
              integerValue12 = [assetSource5 integerValue];

              if (integerValue12 == 5)
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
            if (integerValue10 != 1)
            {
LABEL_53:
              v111 = objc_alloc_init(MEMORY[0x1E695DF90]);
              assetLoadWaitTime2 = [(MPCPlayPerfMetrics *)self assetLoadWaitTime];
              [v111 setObject:assetLoadWaitTime2 forKeyedSubscript:@"MPP_assetLoadWaitTime"];

              assetLocation4 = [(MPCPlayPerfMetrics *)self assetLocation];
              [v111 setObject:assetLocation4 forKeyedSubscript:@"MPP_assetLocation"];

              assetType4 = [(MPCPlayPerfMetrics *)self assetType];
              [v111 setObject:assetType4 forKeyedSubscript:@"MPP_assetType"];

              endpointType2 = [(MPCPlayPerfMetrics *)self endpointType];
              [v111 setObject:endpointType2 forKeyedSubscript:@"MPP_endpointType"];

              firstAudioFrameWaitTime2 = [(MPCPlayPerfMetrics *)self firstAudioFrameWaitTime];
              [v111 setObject:firstAudioFrameWaitTime2 forKeyedSubscript:@"MPP_firstAudioFrameWaitTime"];

              hasOnlinePlaybackKeys = [(MPCPlayPerfMetrics *)self hasOnlinePlaybackKeys];
              [v111 setObject:hasOnlinePlaybackKeys forKeyedSubscript:@"MPP_hasOnlinePlaybackKeys"];

              isFirstPlay = [(MPCPlayPerfMetrics *)self isFirstPlay];
              [v111 setObject:isFirstPlay forKeyedSubscript:@"MPP_isFirstPlay"];

              queueLoadWaitTime2 = [(MPCPlayPerfMetrics *)self queueLoadWaitTime];
              [v111 setObject:queueLoadWaitTime2 forKeyedSubscript:@"MPP_queueLoadWaitTime"];

              readyToPlayStatusWaitTime2 = [(MPCPlayPerfMetrics *)self readyToPlayStatusWaitTime];
              [v111 setObject:readyToPlayStatusWaitTime2 forKeyedSubscript:@"MPP_readyToPlayWaitTime"];

              v121 = MEMORY[0x1E696AD98];
              [(NSDate *)self->_firstAudioFrameDate timeIntervalSinceReferenceDate];
              v122 = [v121 numberWithDouble:?];
              [v111 setObject:v122 forKeyedSubscript:@"MPP_firstAudioFrameTimestamp"];

              v130[0] = @"name";
              v130[1] = @"segments";
              v131[0] = @"MPP";
              v131[1] = array;
              v130[2] = @"tags";
              v130[3] = @"raw";
              v131[2] = array2;
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

        [array2 addObject:v106];
        goto LABEL_53;
      }

      assetType5 = [(MPCPlayPerfMetrics *)self assetType];
      integerValue13 = [assetType5 integerValue];

      if (integerValue13 != 1)
      {
        goto LABEL_29;
      }

      v61 = @"miniSINF";
      selfCopy4 = self;
      v63 = v42;
      v64 = 1;
    }

    [(MPCPlayPerfMetrics *)selfCopy4 _addOptimizationToSegment:v63 optimization:v61 when:v64];
    goto LABEL_29;
  }

  eventType2 = [(MPCPlayPerfMetrics *)self eventType];
  if (eventType2 == @"NextItem" || (v38 = eventType2, v39 = [(__CFString *)eventType2 isEqual:@"NextItem"], v38, v38, v39))
  {
    array = [MEMORY[0x1E695DF70] array];
    v128[0] = @"name";
    v128[1] = @"segments";
    v129[0] = @"GAP";
    v129[1] = array;
    array2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v129 forKeys:v128 count:2];
    [v3 addObject:array2];
LABEL_54:
  }

  v126 = @"metrics";
  v127 = v3;
  v124 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:1];

  return v124;
}

- (id)_buildSegmentForComponent:(void *)component subcomponent:(void *)subcomponent duration:
{
  v19[6] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v6 = MEMORY[0x1E695DF90];
    v18[0] = @"component";
    v18[1] = @"subcomponent";
    v19[0] = a2;
    v19[1] = component;
    subcomponentCopy = &unk_1F4599AB0;
    if (subcomponent)
    {
      subcomponentCopy = subcomponent;
    }

    v19[2] = subcomponentCopy;
    v18[2] = @"duration";
    v18[3] = @"complexities";
    v8 = MEMORY[0x1E695DF70];
    subcomponentCopy2 = subcomponent;
    componentCopy = component;
    v11 = a2;
    array = [v8 array];
    v19[3] = array;
    v18[4] = @"optimizations";
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v19[4] = dictionary;
    v18[5] = @"steps";
    array2 = [MEMORY[0x1E695DF70] array];
    v19[5] = array2;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:6];
    v16 = [v6 dictionaryWithDictionary:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)_addComplexityToSegment:(void *)segment complexity:(int)complexity when:
{
  if (self && complexity)
  {
    segmentCopy = segment;
    v6 = [a2 objectForKeyedSubscript:@"complexities"];
    [v6 addObject:segmentCopy];
  }
}

- (void)_addStepToSegment:(void *)segment name:(void *)name duration:(char)duration options:
{
  v14[3] = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (name)
    {
      nameCopy = name;
      segmentCopy = segment;
      v10 = [a2 objectForKeyedSubscript:@"steps"];
      v13[0] = @"name";
      v13[1] = @"duration";
      v14[0] = segmentCopy;
      v14[1] = nameCopy;
      v13[2] = @"isNetworkBound";
      v11 = [MEMORY[0x1E696AD98] numberWithBool:duration & 1];
      v14[2] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

      [v10 addObject:v12];
    }
  }
}

- (void)_addOptimizationToSegment:(void *)segment optimization:(uint64_t)optimization when:
{
  if (self)
  {
    segmentCopy = segment;
    v8 = [a2 objectForKeyedSubscript:@"optimizations"];
    v7 = [MEMORY[0x1E696AD98] numberWithBool:optimization];
    [v8 setObject:v7 forKeyedSubscript:segmentCopy];
  }
}

- (id)description
{
  data = [(MPCPlayPerfMetrics *)self data];
  v4 = [data mutableCopy];

  musicTotalTime = [(MPCPlayPerfMetrics *)self musicTotalTime];
  [v4 setObject:musicTotalTime forKeyedSubscript:@"totalTime"];

  musicWaitTime = [(MPCPlayPerfMetrics *)self musicWaitTime];
  [v4 setObject:musicWaitTime forKeyedSubscript:@"musicWaitTime"];

  mediaPlayerTime = [(MPCPlayPerfMetrics *)self mediaPlayerTime];
  [v4 setObject:mediaPlayerTime forKeyedSubscript:@"mediaPlayerTime"];

  avTime = [(MPCPlayPerfMetrics *)self avTime];
  [v4 setObject:avTime forKeyedSubscript:@"avTime"];

  networkTime = [(MPCPlayPerfMetrics *)self networkTime];
  [v4 setObject:networkTime forKeyedSubscript:@"networkTime"];

  v10 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v4 options:0 error:0];
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v10 encoding:4];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p %@>", objc_opt_class(), self, v11];

  return v12;
}

- (id)dictionaryRepresentation
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data copy];

  return v3;
}

- (NSNumber)avTime
{
  eventType = [(MPCPlayPerfMetrics *)self eventType];
  v4 = [eventType isEqualToString:@"FirstItem"];

  if (v4)
  {
    v5 = MEMORY[0x1E696AD98];
    readyToPlayStatusWaitTime = [(MPCPlayPerfMetrics *)self readyToPlayStatusWaitTime];
    [readyToPlayStatusWaitTime doubleValue];
    v8 = v7;
    firstAudioFrameWaitTime = [(MPCPlayPerfMetrics *)self firstAudioFrameWaitTime];
    [firstAudioFrameWaitTime doubleValue];
    v11 = v8 + v10;
    sessionActivationAVTime = [(MPCPlayPerfMetrics *)self sessionActivationAVTime];
    [sessionActivationAVTime doubleValue];
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
  eventType = [(MPCPlayPerfMetrics *)self eventType];
  v4 = [eventType isEqualToString:@"FirstItem"];

  if (v4)
  {
    v5 = MEMORY[0x1E696AD98];
    lookupWaitTime = [(MPCPlayPerfMetrics *)self lookupWaitTime];
    [lookupWaitTime doubleValue];
    v8 = v7;
    bagWaitTime = [(MPCPlayPerfMetrics *)self bagWaitTime];
    [bagWaitTime doubleValue];
    v11 = v8 + v10;
    leaseWaitTime = [(MPCPlayPerfMetrics *)self leaseWaitTime];
    [leaseWaitTime doubleValue];
    v14 = v11 + v13;
    suzeLeaseWaitTime = [(MPCPlayPerfMetrics *)self suzeLeaseWaitTime];
    [suzeLeaseWaitTime doubleValue];
    v17 = v14 + v16;
    subscriptionAssetLoadWaitTime = [(MPCPlayPerfMetrics *)self subscriptionAssetLoadWaitTime];
    [subscriptionAssetLoadWaitTime doubleValue];
    v20 = v17 + v19;
    mediaRedownloadWaitTime = [(MPCPlayPerfMetrics *)self mediaRedownloadWaitTime];
    [mediaRedownloadWaitTime doubleValue];
    v23 = v20 + v22;
    hlsMetadataWaitTime = [(MPCPlayPerfMetrics *)self hlsMetadataWaitTime];
    [hlsMetadataWaitTime doubleValue];
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
  eventType = [(MPCPlayPerfMetrics *)self eventType];
  v4 = [eventType isEqualToString:@"FirstItem"];

  if (v4)
  {
    v41 = MEMORY[0x1E696AD98];
    sessionActivationWaitTime = [(MPCPlayPerfMetrics *)self sessionActivationWaitTime];
    [sessionActivationWaitTime doubleValue];
    v6 = v5;
    queueLoadWaitTime = [(MPCPlayPerfMetrics *)self queueLoadWaitTime];
    [queueLoadWaitTime doubleValue];
    v8 = v6 + v7;
    assetLoadWaitTime = [(MPCPlayPerfMetrics *)self assetLoadWaitTime];
    [assetLoadWaitTime doubleValue];
    v10 = v8 + v9;
    rateChangeWaitTime = [(MPCPlayPerfMetrics *)self rateChangeWaitTime];
    [rateChangeWaitTime doubleValue];
    v12 = v10 + v11;
    sessionActivationAVTime = [(MPCPlayPerfMetrics *)self sessionActivationAVTime];
    [sessionActivationAVTime doubleValue];
    v15 = v12 - v14;
    sessionActivationClientTime = [(MPCPlayPerfMetrics *)self sessionActivationClientTime];
    [sessionActivationClientTime doubleValue];
    v18 = v15 - v17;
    lookupWaitTime = [(MPCPlayPerfMetrics *)self lookupWaitTime];
    [lookupWaitTime doubleValue];
    v21 = v18 - v20;
    bagWaitTime = [(MPCPlayPerfMetrics *)self bagWaitTime];
    [bagWaitTime doubleValue];
    v24 = v21 - v23;
    leaseWaitTime = [(MPCPlayPerfMetrics *)self leaseWaitTime];
    [leaseWaitTime doubleValue];
    v27 = v24 - v26;
    suzeLeaseWaitTime = [(MPCPlayPerfMetrics *)self suzeLeaseWaitTime];
    [suzeLeaseWaitTime doubleValue];
    v30 = v27 - v29;
    subscriptionAssetLoadWaitTime = [(MPCPlayPerfMetrics *)self subscriptionAssetLoadWaitTime];
    [subscriptionAssetLoadWaitTime doubleValue];
    v33 = v30 - v32;
    mediaRedownloadWaitTime = [(MPCPlayPerfMetrics *)self mediaRedownloadWaitTime];
    [mediaRedownloadWaitTime doubleValue];
    v36 = v33 - v35;
    hlsMetadataWaitTime = [(MPCPlayPerfMetrics *)self hlsMetadataWaitTime];
    [hlsMetadataWaitTime doubleValue];
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
  eventType = [(MPCPlayPerfMetrics *)self eventType];
  v4 = [eventType isEqualToString:@"FirstItem"];

  if (v4)
  {
    playCommandWaitTime = [(MPCPlayPerfMetrics *)self playCommandWaitTime];

    if (playCommandWaitTime)
    {
      v6 = MEMORY[0x1E696AD98];
      playCommandSendTime = [(MPCPlayPerfMetrics *)self playCommandSendTime];
      [playCommandSendTime doubleValue];
      v9 = v8;

      playCommandWaitTime2 = [(MPCPlayPerfMetrics *)self playCommandWaitTime];
      [playCommandWaitTime2 doubleValue];
      v12 = -v11;

      if (v9 < v12)
      {
        v9 = v12;
      }

      rateChangeWaitTime = [(MPCPlayPerfMetrics *)self rateChangeWaitTime];
      [rateChangeWaitTime doubleValue];
      v15 = v9 + v14;
      firstAudioFrameWaitTime = [(MPCPlayPerfMetrics *)self firstAudioFrameWaitTime];
      [firstAudioFrameWaitTime doubleValue];
      musicTotalTime = [v6 numberWithDouble:v15 + v17];
    }

    else
    {
      musicTotalTime = [(MPCPlayPerfMetrics *)self musicTotalTime];
    }
  }

  else
  {
    musicTotalTime = 0;
  }

  return musicTotalTime;
}

- (NSNumber)musicTotalTime
{
  eventType = [(MPCPlayPerfMetrics *)self eventType];
  v4 = [eventType isEqualToString:@"FirstItem"];

  if (v4)
  {
    setQueueCommandSendTime = [(MPCPlayPerfMetrics *)self setQueueCommandSendTime];
    [setQueueCommandSendTime doubleValue];
    v7 = v6;
    sessionActivationWaitTime = [(MPCPlayPerfMetrics *)self sessionActivationWaitTime];
    [sessionActivationWaitTime doubleValue];
    v10 = v7 + v9;
    queueLoadWaitTime = [(MPCPlayPerfMetrics *)self queueLoadWaitTime];
    [queueLoadWaitTime doubleValue];
    v13 = v10 + v12;
    assetLoadWaitTime = [(MPCPlayPerfMetrics *)self assetLoadWaitTime];
    [assetLoadWaitTime doubleValue];
    v16 = v13 + v15;
    readyToPlayStatusWaitTime = [(MPCPlayPerfMetrics *)self readyToPlayStatusWaitTime];
    [readyToPlayStatusWaitTime doubleValue];
    v19 = v16 + v18;
    rateChangeWaitTime = [(MPCPlayPerfMetrics *)self rateChangeWaitTime];
    [rateChangeWaitTime doubleValue];
    v22 = v19 + v21;
    firstAudioFrameWaitTime = [(MPCPlayPerfMetrics *)self firstAudioFrameWaitTime];
    [firstAudioFrameWaitTime doubleValue];
    v25 = v22 + v24;
    sessionActivationClientTime = [(MPCPlayPerfMetrics *)self sessionActivationClientTime];
    [sessionActivationClientTime doubleValue];
    v28 = v25 - v27;

    playCommandWaitTime = [(MPCPlayPerfMetrics *)self playCommandWaitTime];

    if (playCommandWaitTime)
    {
      playCommandSendTime = [(MPCPlayPerfMetrics *)self playCommandSendTime];
      [playCommandSendTime doubleValue];
      v32 = v31;
      playCommandWaitTime2 = [(MPCPlayPerfMetrics *)self playCommandWaitTime];
      [playCommandWaitTime2 doubleValue];
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
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(MPCPlayPerfMetrics *)v2 setData:dictionary];
  }

  return v2;
}

- (void)set_checkpointFirstAudioFrame:(id)frame
{
  frameCopy = frame;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:frameCopy forKeyedSubscript:@"checkpointFirstAudioFrame"];
}

- (NSNumber)checkpointFirstAudioFrame
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"checkpointFirstAudioFrame"];

  return v3;
}

- (void)set_checkpointRateOne:(id)one
{
  oneCopy = one;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:oneCopy forKeyedSubscript:@"checkpointRateOne"];
}

- (NSNumber)checkpointRateOne
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"checkpointRateOne"];

  return v3;
}

- (void)set_checkpointReadyToPlay:(id)play
{
  playCopy = play;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:playCopy forKeyedSubscript:@"checkpointReadyToPlay"];
}

- (NSNumber)checkpointReadyToPlay
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"checkpointReadyToPlay"];

  return v3;
}

- (void)set_checkpointLikelyToKeepUp:(id)up
{
  upCopy = up;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:upCopy forKeyedSubscript:@"checkpointLikelyToKeepUp"];
}

- (NSNumber)checkpointLikelyToKeepUp
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"checkpointLikelyToKeepUp"];

  return v3;
}

- (void)set_checkpointAssetLoadEnd:(id)end
{
  endCopy = end;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:endCopy forKeyedSubscript:@"checkpointAssetLoadEnd"];
}

- (NSNumber)checkpointAssetLoadEnd
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"checkpointAssetLoadEnd"];

  return v3;
}

- (void)set_checkpointAssetLoadBegin:(id)begin
{
  beginCopy = begin;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:beginCopy forKeyedSubscript:@"checkpointAssetLoadBegin"];
}

- (NSNumber)checkpointAssetLoadBegin
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"checkpointAssetLoadBegin"];

  return v3;
}

- (void)set_checkpointPlay:(id)play
{
  playCopy = play;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:playCopy forKeyedSubscript:@"checkpointPlay"];
}

- (NSNumber)checkpointPlay
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"checkpointPlay"];

  return v3;
}

- (void)set_checkpointMRPlay:(id)play
{
  playCopy = play;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:playCopy forKeyedSubscript:@"checkpointMRPlay"];
}

- (NSNumber)checkpointMRPlay
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"checkpointMRPlay"];

  return v3;
}

- (void)set_checkpointSetQueueEnd:(id)end
{
  endCopy = end;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:endCopy forKeyedSubscript:@"checkpointSetQueueEnd"];
}

- (NSNumber)checkpointSetQueueEnd
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"checkpointSetQueueEnd"];

  return v3;
}

- (void)set_checkpointRateZero:(id)zero
{
  zeroCopy = zero;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:zeroCopy forKeyedSubscript:@"checkpointRateZero"];
}

- (NSNumber)checkpointRateZero
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"checkpointRateZero"];

  return v3;
}

- (void)set_checkpointSetQueueBegin:(id)begin
{
  beginCopy = begin;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:beginCopy forKeyedSubscript:@"checkpointSetQueueBegin"];
}

- (NSNumber)checkpointSetQueueBegin
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"checkpointSetQueueBegin"];

  return v3;
}

- (void)set_checkpointMRSetQueueBegin:(id)begin
{
  beginCopy = begin;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:beginCopy forKeyedSubscript:@"checkpointMRSetQueueBegin"];
}

- (NSNumber)checkpointMRSetQueueBegin
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"checkpointMRSetQueueBegin"];

  return v3;
}

- (void)set_sessionActivationClientTime:(id)time
{
  timeCopy = time;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:timeCopy forKeyedSubscript:@"sessionActivationClientTime"];
}

- (NSNumber)sessionActivationClientTime
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"sessionActivationClientTime"];

  return v3;
}

- (void)set_sessionActivationAVTime:(id)time
{
  timeCopy = time;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:timeCopy forKeyedSubscript:@"sessionActivationAVTime"];
}

- (NSNumber)sessionActivationAVTime
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"sessionActivationAVTime"];

  return v3;
}

- (void)set_sessionActivationWaitTime:(id)time
{
  timeCopy = time;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:timeCopy forKeyedSubscript:@"sessionActivationWaitTime"];
}

- (NSNumber)sessionActivationWaitTime
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"sessionActivationWaitTime"];

  return v3;
}

- (void)set_hlsMetadataWaitTime:(id)time
{
  timeCopy = time;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:timeCopy forKeyedSubscript:@"hlsMetadataWaitTime"];
}

- (NSNumber)hlsMetadataWaitTime
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"hlsMetadataWaitTime"];

  return v3;
}

- (void)set_mediaRedownloadWaitTime:(id)time
{
  timeCopy = time;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:timeCopy forKeyedSubscript:@"mediaRedownloadWaitTime"];
}

- (NSNumber)mediaRedownloadWaitTime
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"mediaRedownloadWaitTime"];

  return v3;
}

- (void)set_subscriptionAssetLoadWaitTime:(id)time
{
  timeCopy = time;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:timeCopy forKeyedSubscript:@"subscriptionAssetLoadWaitTime"];
}

- (NSNumber)subscriptionAssetLoadWaitTime
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"subscriptionAssetLoadWaitTime"];

  return v3;
}

- (void)set_suzeLeaseWaitTime:(id)time
{
  timeCopy = time;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:timeCopy forKeyedSubscript:@"suzeLeaseWaitTime"];
}

- (NSNumber)suzeLeaseWaitTime
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"suzeLeaseWaitTime"];

  return v3;
}

- (void)set_leaseWaitTime:(id)time
{
  timeCopy = time;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:timeCopy forKeyedSubscript:@"leaseWaitTime"];
}

- (NSNumber)leaseWaitTime
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"leaseWaitTime"];

  return v3;
}

- (void)set_bagWaitTime:(id)time
{
  timeCopy = time;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:timeCopy forKeyedSubscript:@"bagWaitTime"];
}

- (NSNumber)bagWaitTime
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"bagWaitTime"];

  return v3;
}

- (void)set_lookupWaitTime:(id)time
{
  timeCopy = time;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:timeCopy forKeyedSubscript:@"lookupWaitTime"];
}

- (NSNumber)lookupWaitTime
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"lookupWaitTime"];

  return v3;
}

- (void)set_nextItemWaitTime:(id)time
{
  timeCopy = time;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:timeCopy forKeyedSubscript:@"nextItemWaitTime"];
}

- (NSNumber)nextItemWaitTime
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"nextItemWaitTime"];

  return v3;
}

- (void)set_firstAudioFrameWaitTime:(id)time
{
  timeCopy = time;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:timeCopy forKeyedSubscript:@"firstAudioFrameWaitTime"];
}

- (NSNumber)firstAudioFrameWaitTime
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"firstAudioFrameWaitTime"];

  return v3;
}

- (void)set_rateChangeWaitTime:(id)time
{
  timeCopy = time;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:timeCopy forKeyedSubscript:@"rateChangeWaitTime"];
}

- (NSNumber)rateChangeWaitTime
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"rateChangeWaitTime"];

  return v3;
}

- (void)set_playCommandWaitTime:(id)time
{
  timeCopy = time;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:timeCopy forKeyedSubscript:@"playCommandWaitTime"];
}

- (NSNumber)playCommandWaitTime
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"playCommandWaitTime"];

  return v3;
}

- (void)set_readyToPlayStatusWaitTime:(id)time
{
  timeCopy = time;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:timeCopy forKeyedSubscript:@"readyToPlayStatusWaitTime"];
}

- (NSNumber)readyToPlayStatusWaitTime
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"readyToPlayStatusWaitTime"];

  return v3;
}

- (void)set_assetLoadWaitTime:(id)time
{
  timeCopy = time;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:timeCopy forKeyedSubscript:@"assetLoadWaitTime"];
}

- (NSNumber)assetLoadWaitTime
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"assetLoadWaitTime"];

  return v3;
}

- (void)set_queueLoadWaitTime:(id)time
{
  timeCopy = time;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:timeCopy forKeyedSubscript:@"queueLoadWaitTime"];
}

- (NSNumber)queueLoadWaitTime
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"queueLoadWaitTime"];

  return v3;
}

- (void)set_playCommandSendTime:(id)time
{
  timeCopy = time;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:timeCopy forKeyedSubscript:@"playCommandSendTime"];
}

- (NSNumber)playCommandSendTime
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"playCommandSendTime"];

  return v3;
}

- (void)set_setQueueCommandSendTime:(id)time
{
  timeCopy = time;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:timeCopy forKeyedSubscript:@"setQueueCommandSendTime"];
}

- (NSNumber)setQueueCommandSendTime
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"setQueueCommandSendTime"];

  return v3;
}

- (void)set_timeSincePaused:(id)paused
{
  pausedCopy = paused;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:pausedCopy forKeyedSubscript:@"timeSincePaused"];
}

- (NSNumber)timeSincePaused
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"timeSincePaused"];

  return v3;
}

- (void)set_timeSinceLaunch:(id)launch
{
  launchCopy = launch;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:launchCopy forKeyedSubscript:@"timeSinceLaunch"];
}

- (NSNumber)timeSinceLaunch
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"timeSinceLaunch"];

  return v3;
}

- (void)set_timeSinceBoot:(id)boot
{
  bootCopy = boot;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:bootCopy forKeyedSubscript:@"timeSinceBoot"];
}

- (NSNumber)timeSinceBoot
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"timeSinceBoot"];

  return v3;
}

- (void)set_AVPlayerItemPerformanceMetrics:(id)metrics
{
  metricsCopy = metrics;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:metricsCopy forKeyedSubscript:@"AVPlayerItemPerformanceMetrics"];
}

- (NSDictionary)AVPlayerItemPerformanceMetrics
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"AVPlayerItemPerformanceMetrics"];

  return v3;
}

- (void)set_assetProtectionType:(id)type
{
  typeCopy = type;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:typeCopy forKeyedSubscript:@"assetProtectionType"];
}

- (NSNumber)assetProtectionType
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"assetProtectionType"];

  return v3;
}

- (void)set_vocalsControlActive:(id)active
{
  activeCopy = active;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:activeCopy forKeyedSubscript:@"vocalsControlActive"];
}

- (NSNumber)vocalsControlActive
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"vocalsControlActive"];

  return v3;
}

- (void)set_treatmentID:(id)d
{
  dCopy = d;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:dCopy forKeyedSubscript:@"treatmentID"];
}

- (NSString)treatmentID
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"treatmentID"];

  return v3;
}

- (void)set_experimentID:(id)d
{
  dCopy = d;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:dCopy forKeyedSubscript:@"experimentID"];
}

- (NSString)experimentID
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"experimentID"];

  return v3;
}

- (void)set_storefront:(id)set_storefront
{
  set_storefrontCopy = set_storefront;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:set_storefrontCopy forKeyedSubscript:@"storefront"];
}

- (NSString)storefront
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"storefront"];

  return v3;
}

- (void)set_queueCommandType:(id)type
{
  typeCopy = type;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:typeCopy forKeyedSubscript:@"queueCommandType"];
}

- (NSNumber)queueCommandType
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"queueCommandType"];

  return v3;
}

- (void)set_seekBeforePlaying:(id)playing
{
  playingCopy = playing;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:playingCopy forKeyedSubscript:@"seekBeforePlaying"];
}

- (NSNumber)seekBeforePlaying
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"seekBeforePlaying"];

  return v3;
}

- (void)set_isActiveAccount:(id)account
{
  accountCopy = account;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:accountCopy forKeyedSubscript:@"isActiveAccount"];
}

- (NSNumber)isActiveAccount
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"isActiveAccount"];

  return v3;
}

- (void)set_hasAccountInfo:(id)info
{
  infoCopy = info;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:infoCopy forKeyedSubscript:@"hasAccountInfo"];
}

- (NSNumber)hasAccountInfo
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"hasAccountInfo"];

  return v3;
}

- (void)set_errorSignature:(id)signature
{
  signatureCopy = signature;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:signatureCopy forKeyedSubscript:@"errorSignature"];
}

- (NSString)errorSignature
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"errorSignature"];

  return v3;
}

- (void)set_errorResolution:(id)resolution
{
  resolutionCopy = resolution;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:resolutionCopy forKeyedSubscript:@"errorResolution"];
}

- (NSNumber)errorResolution
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"errorResolution"];

  return v3;
}

- (void)set_isReplacingPlayback:(id)playback
{
  playbackCopy = playback;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:playbackCopy forKeyedSubscript:@"isReplacingPlayback"];
}

- (NSNumber)isReplacingPlayback
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"isReplacingPlayback"];

  return v3;
}

- (void)set_isFirstPlay:(id)play
{
  playCopy = play;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:playCopy forKeyedSubscript:@"isFirstPlay"];
}

- (NSNumber)isFirstPlay
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"isFirstPlay"];

  return v3;
}

- (void)set_networkType:(id)type
{
  typeCopy = type;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:typeCopy forKeyedSubscript:@"networkType"];
}

- (NSNumber)networkType
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"networkType"];

  return v3;
}

- (void)set_routeInfo:(id)info
{
  infoCopy = info;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:infoCopy forKeyedSubscript:@"routeInfo"];
}

- (NSDictionary)routeInfo
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"routeInfo"];

  return v3;
}

- (void)set_formatInfo:(id)info
{
  infoCopy = info;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:infoCopy forKeyedSubscript:@"formatInfo"];
}

- (NSDictionary)formatInfo
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"formatInfo"];

  return v3;
}

- (void)set_hasOfflinePlaybackKeys:(id)keys
{
  keysCopy = keys;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:keysCopy forKeyedSubscript:@"hasOfflinePlaybackKeys"];
}

- (NSNumber)hasOfflinePlaybackKeys
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"hasOfflinePlaybackKeys"];

  return v3;
}

- (void)set_hasOnlinePlaybackKeys:(id)keys
{
  keysCopy = keys;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:keysCopy forKeyedSubscript:@"hasOnlinePlaybackKeys"];
}

- (NSNumber)hasOnlinePlaybackKeys
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"hasOnlinePlaybackKeys"];

  return v3;
}

- (void)set_isDelegatedPlayback:(id)playback
{
  playbackCopy = playback;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:playbackCopy forKeyedSubscript:@"isDelegatedPlayback"];
}

- (NSNumber)isDelegatedPlayback
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"isDelegatedPlayback"];

  return v3;
}

- (void)set_subscriptionType:(id)type
{
  typeCopy = type;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:typeCopy forKeyedSubscript:@"subscriptionType"];
}

- (NSNumber)subscriptionType
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"subscriptionType"];

  return v3;
}

- (void)set_endpointType:(id)type
{
  typeCopy = type;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:typeCopy forKeyedSubscript:@"endpointType"];
}

- (NSNumber)endpointType
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"endpointType"];

  return v3;
}

- (void)set_assetCacheAge:(id)age
{
  ageCopy = age;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:ageCopy forKeyedSubscript:@"assetCacheAge"];
}

- (NSNumber)assetCacheAge
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"assetCacheAge"];

  return v3;
}

- (void)set_assetLocation:(id)location
{
  locationCopy = location;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:locationCopy forKeyedSubscript:@"assetLocation"];
}

- (NSNumber)assetLocation
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"assetLocation"];

  return v3;
}

- (void)set_assetSource:(id)source
{
  sourceCopy = source;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:sourceCopy forKeyedSubscript:@"assetSource"];
}

- (NSNumber)assetSource
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"assetSource"];

  return v3;
}

- (void)set_assetType:(id)type
{
  typeCopy = type;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:typeCopy forKeyedSubscript:@"assetType"];
}

- (NSNumber)assetType
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"assetType"];

  return v3;
}

- (void)set_isSharePlay:(id)play
{
  playCopy = play;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:playCopy forKeyedSubscript:@"isSharePlay"];
}

- (NSNumber)isSharePlay
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"isSharePlay"];

  return v3;
}

- (void)set_isAutoPlayEnabled:(id)enabled
{
  enabledCopy = enabled;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:enabledCopy forKeyedSubscript:@"isAutoPlayEnabled"];
}

- (NSNumber)isAutoPlayEnabled
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"isAutoPlayEnabled"];

  return v3;
}

- (void)set_isShuffled:(id)shuffled
{
  shuffledCopy = shuffled;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:shuffledCopy forKeyedSubscript:@"isShuffled"];
}

- (NSNumber)isShuffled
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"isShuffled"];

  return v3;
}

- (void)set_isRemoteSetQueue:(id)queue
{
  queueCopy = queue;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:queueCopy forKeyedSubscript:@"isRemoteSetQueue"];
}

- (NSNumber)isRemoteSetQueue
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"isRemoteSetQueue"];

  return v3;
}

- (void)set_queueType:(id)type
{
  typeCopy = type;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:typeCopy forKeyedSubscript:@"queueType"];
}

- (NSString)queueType
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"queueType"];

  return v3;
}

- (void)set_siriRefId:(id)id
{
  idCopy = id;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:idCopy forKeyedSubscript:@"siriRefId"];
}

- (NSString)siriRefId
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"siriRefId"];

  return v3;
}

- (void)set_featureName:(id)name
{
  nameCopy = name;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:nameCopy forKeyedSubscript:@"featureName"];
}

- (NSString)featureName
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"featureName"];

  return v3;
}

- (void)set_itemMetadata:(id)metadata
{
  metadataCopy = metadata;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:metadataCopy forKeyedSubscript:@"itemMetadata"];
}

- (NSDictionary)itemMetadata
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"itemMetadata"];

  return v3;
}

- (void)set_itemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:identifierCopy forKeyedSubscript:@"itemIdentifier"];
}

- (NSString)itemIdentifier
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"itemIdentifier"];

  return v3;
}

- (void)set_sectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:identifierCopy forKeyedSubscript:@"sectionIdentifier"];
}

- (NSString)sectionIdentifier
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"sectionIdentifier"];

  return v3;
}

- (void)set_eventTime:(id)time
{
  timeCopy = time;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:timeCopy forKeyedSubscript:@"eventTime"];
}

- (NSNumber)eventTime
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"eventTime"];

  return v3;
}

- (void)set_eventType:(id)type
{
  typeCopy = type;
  data = [(MPCPlayPerfMetrics *)self data];
  [data setObject:typeCopy forKeyedSubscript:@"eventType"];
}

- (NSString)eventType
{
  data = [(MPCPlayPerfMetrics *)self data];
  v3 = [data objectForKeyedSubscript:@"eventType"];

  return v3;
}

+ (id)playMetricsWithErrorSignature:(id)signature event:(id)event cursor:(id)cursor
{
  v71[2] = *MEMORY[0x1E69E9840];
  signatureCopy = signature;
  eventCopy = event;
  cursorCopy = cursor;
  payload = [eventCopy payload];
  v10 = [payload objectForKeyedSubscript:@"queue-section-id"];

  payload2 = [eventCopy payload];
  v47 = [payload2 objectForKeyedSubscript:@"queue-item-id"];

  v45 = 0;
  if (v10 && v47)
  {
    v70[0] = @"queue-section-id";
    v70[1] = @"queue-item-id";
    v71[0] = v10;
    v71[1] = v47;
    v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:2];
  }

  v46 = [cursorCopy findPreviousEventWithType:@"queue-add" matchingPayload:0];
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
    [cursorCopy enumeratePreviousEventsWithType:@"remote-control-begin" usingBlock:v48];
    v12 = v50[5];
    if (!v12)
    {
      v32 = [cursorCopy findPreviousEventWithType:@"session-begin" matchingPayload:0];
      payload3 = [v32 payload];
      v34 = [payload3 objectForKeyedSubscript:@"session-id"];

      if (!v34)
      {

        v12 = 0;
        goto LABEL_17;
      }

      v65 = @"session-id";
      v66 = v34;
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
      v12 = [cursorCopy findPreviousEventWithType:@"session-restore-begin" matchingPayload:v35];

      if (!v12)
      {
        goto LABEL_17;
      }
    }

    if (*(*&buf[8] + 40))
    {
      v13 = [cursorCopy cursorFromEvent:eventCopy untilEvent:v12];
      v14 = objc_alloc_init(MPCPlayPerfMetrics);
      [(MPCPlayPerfMetrics *)v14 set_eventType:@"PlayError"];
      v15 = MEMORY[0x1E696AD98];
      date = [eventCopy date];
      [date timeIntervalSince1970];
      v17 = [v15 numberWithDouble:?];
      [(MPCPlayPerfMetrics *)v14 set_eventTime:v17];

      [(MPCPlayPerfMetrics *)v14 set_sectionIdentifier:v10];
      [(MPCPlayPerfMetrics *)v14 set_itemIdentifier:v47];
      payload4 = [v46 payload];
      v43 = [payload4 objectForKeyedSubscript:@"queue-reporting-metadata"];

      [(MPCPlayPerfMetrics *)v14 addQueueMetadata:v43];
      [(MPCPlayPerfMetrics *)v14 addPlaybackBehaviorWithCursor:v13];
      [(MPCPlayPerfMetrics *)v14 addSharePlayWithCursor:v13];
      [(MPCPlayPerfMetrics *)v14 addEnvironmentInfoWithCursor:cursorCopy];
      if (v45)
      {
        [(MPCPlayPerfMetrics *)v14 addAssetSelectionWithCursor:v13 itemIDPayload:v45];
        v55 = @"queue-section-id";
        v56 = v10;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
        v41 = [cursorCopy findPreviousEventWithType:@"container-begin" matchingPayload:v19];

        v42 = [cursorCopy findPreviousEventWithType:@"item-begin" matchingPayload:v45];
        payload5 = [v42 payload];
        v21 = [payload5 objectForKeyedSubscript:@"item-metadata"];
        [(MPCPlayPerfMetrics *)v14 set_itemMetadata:v21];

        payload6 = [v41 payload];
        v40 = [payload6 objectForKeyedSubscript:@"container-kind"];

        payload7 = [v42 payload];
        v39 = [payload7 objectForKeyedSubscript:@"item-kind"];

        v24 = MEMORY[0x1E696AEC0];
        v25 = [v43 objectForKeyedSubscript:@"playback-context-class-name"];
        v26 = NSStringFromClass([v40 modelClass]);
        v27 = NSStringFromClass([v39 modelClass]);
        v28 = [v24 stringWithFormat:@"%@-%@-%@", v25, v26, v27];
        [(MPCPlayPerfMetrics *)v14 set_queueType:v28];
      }

      [(MPCPlayPerfMetrics *)v14 set_errorSignature:signatureCopy];

LABEL_20:
      _Block_object_dispose(&v49, 8);

      _Block_object_dispose(buf, 8);
      goto LABEL_21;
    }

LABEL_17:
    v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      type = [eventCopy type];
      identifier = [eventCopy identifier];
      *v57 = 138413058;
      v58 = type;
      v59 = 2114;
      v60 = identifier;
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
    type2 = [eventCopy type];
    identifier2 = [eventCopy identifier];
    *buf = 138413058;
    *&buf[4] = type2;
    *&buf[12] = 2114;
    *&buf[14] = identifier2;
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

+ (id)playMetricsWithItemReadyForMetricsEvent:(id)event cursor:(id)cursor
{
  v335[2] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  cursorCopy = cursor;
  v271 = eventCopy;
  payload = [eventCopy payload];
  v10 = [payload objectForKeyedSubscript:@"queue-section-id"];

  payload2 = [eventCopy payload];
  v273 = [payload2 objectForKeyedSubscript:@"queue-item-id"];

  if (!v10)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCPlayPerfMetrics.m" lineNumber:319 description:@"Section identifier in first audio frame event can't be nil"];
  }

  v12 = v273;
  if (!v273)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MPCPlayPerfMetrics.m" lineNumber:320 description:@"Item identifier in first audio frame event can't be nil"];

    v12 = 0;
  }

  v334[0] = @"queue-section-id";
  v334[1] = @"queue-item-id";
  v335[0] = v10;
  v335[1] = v12;
  v274 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v335 forKeys:v334 count:2];
  v13 = [cursorCopy findPreviousEventWithType:@"item-first-audio-frame" matchingPayload:v274];
  if (v13)
  {
    v270 = [cursorCopy cursorFromEvent:v13 untilEvent:0];

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
      payload3 = [v15 payload];
      v17 = [payload3 objectForKeyedSubscript:@"session-id"];

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
        identifier = [eventCopy identifier];
        *v322 = 138543874;
        *&v322[4] = identifier;
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
        identifier2 = [v13 identifier];
        *v312 = 138543874;
        *&v312[4] = identifier2;
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
    payload17 = v27;
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
    date = [v13 date];
    [date timeIntervalSince1970];
    v32 = [v30 numberWithDouble:?];
    [(MPCPlayPerfMetrics *)v272 set_eventTime:v32];

    [(MPCPlayPerfMetrics *)v272 set_sectionIdentifier:v10];
    [(MPCPlayPerfMetrics *)v272 set_itemIdentifier:v273];
    payload4 = [v302[5] payload];
    v34 = [payload4 objectForKeyedSubscript:@"remote-control-options"];
    v35 = [v34 objectForKeyedSubscript:*MEMORY[0x1E69B1158]];
    [(MPCPlayPerfMetrics *)v272 set_isRemoteSetQueue:v35];

    payload5 = [v302[5] payload];
    v37 = [payload5 objectForKeyedSubscript:@"remote-control-type"];
    [(MPCPlayPerfMetrics *)v272 set_queueCommandType:v37];

    payload6 = [*(*&v322[8] + 40) payload];
    v265 = [payload6 objectForKeyedSubscript:@"queue-reporting-metadata"];

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

    payload7 = [v40 payload];
    v44 = [payload7 objectForKeyedSubscript:@"item-metadata"];
    [(MPCPlayPerfMetrics *)v272 set_itemMetadata:v44];
    v262 = v40;

    payload8 = [v263 payload];
    v261 = [payload8 objectForKeyedSubscript:@"container-kind"];

    payload9 = [v40 payload];
    v260 = [payload9 objectForKeyedSubscript:@"item-kind"];

    v47 = MEMORY[0x1E696AEC0];
    v48 = [v265 objectForKeyedSubscript:@"playback-context-class-name"];
    v49 = NSStringFromClass([v261 modelClass]);
    v50 = NSStringFromClass([v260 modelClass]);
    v51 = [v47 stringWithFormat:@"%@-%@-%@", v48, v49, v50];
    [(MPCPlayPerfMetrics *)v272 set_queueType:v51];

    v266 = [log findPreviousEventWithType:@"item-resume" matchingPayload:v274];
    v52 = MEMORY[0x1E696AD98];
    payload10 = [v266 payload];
    v54 = [payload10 objectForKeyedSubscript:@"item-start-position"];
    [v54 doubleValue];
    v56 = [v52 numberWithInt:v55 > 0.0];
    [(MPCPlayPerfMetrics *)v272 set_seekBeforePlaying:v56];

    payload11 = [v266 payload];
    v58 = [payload11 objectForKeyedSubscript:@"supports-vocal-attenuation"];
    LODWORD(payload10) = [v58 BOOLValue];

    payload12 = [v266 payload];
    v60 = [payload12 objectForKeyedSubscript:@"vocal-attenuation-available"];
    LODWORD(v54) = [v60 BOOLValue];

    payload13 = [v266 payload];
    v62 = [payload13 objectForKeyedSubscript:@"vocal-attenuation-enabled"];
    bOOLValue = [v62 BOOLValue];

    payload14 = [v266 payload];
    v65 = [payload14 objectForKeyedSubscript:@"vocal-attenuation-configured"];
    LODWORD(v62) = [v65 BOOLValue];

    v66 = [MEMORY[0x1E696AD98] numberWithInt:payload10 & v62 & v54 & bOOLValue];
    [(MPCPlayPerfMetrics *)v272 set_vocalsControlActive:v66];

    payload15 = [v271 payload];
    v264 = [payload15 objectForKeyedSubscript:@"av-player-item-performance-metrics"];

    if (v264)
    {
      v68 = [v264 dataUsingEncoding:4];
      v69 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v68 options:0 error:0];
      [(MPCPlayPerfMetrics *)v272 set_AVPlayerItemPerformanceMetrics:v69];
    }

    v70 = [MEMORY[0x1E696AD98] numberWithDouble:{objc_msgSend(v13, "monotonicTimeNanoSeconds") / 1000000000.0}];
    [(MPCPlayPerfMetrics *)v272 set_timeSinceBoot:v70];

    payload18 = MEMORY[0x1E696AD98];
    date2 = [v13 date];
    [date2 timeIntervalSince1970];
    v74 = v73;
    MSVGetProcessLaunchTime();
    v76 = [payload18 numberWithDouble:v74 - v75];
    [(MPCPlayPerfMetrics *)v272 set_timeSinceLaunch:v76];

    if (payload17)
    {
      v77 = [log findPreviousEventWithType:@"item-end" matchingPayload:0];
      v78 = v77;
      if (!v77)
      {
        v78 = *(*&buf[8] + 40);
      }

      v79 = v78;

      payload16 = [v13 payload];
      v81 = [payload16 objectForKeyedSubscript:@"event-time-offset"];
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

      cursorCopy = v270;
      goto LABEL_136;
    }

    v89 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v270, "countOfPreviousEventsWithType:matchingPayload:", @"item-first-audio-frame", 0) == 0}];
    [(MPCPlayPerfMetrics *)v272 set_isFirstPlay:v89];

    v90 = [log findPreviousEventWithType:@"item-end" matchingPayload:0];
    v79 = v90;
    v91 = MEMORY[0x1E696AD98];
    if (v90)
    {
      payload17 = [v90 payload];
      date2 = [payload17 objectForKeyedSubscript:@"item-did-play-to-end"];
      if ([date2 BOOLValue])
      {
        v92 = 0;
        v93 = 0;
      }

      else
      {
        payload18 = [v79 payload];
        bOOLValue = [payload18 objectForKeyedSubscript:@"item-end-position"];
        [bOOLValue doubleValue];
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
      payload19 = [v257 payload];
      v97 = [payload19 objectForKeyedSubscript:@"resolution-type"];
      [(MPCPlayPerfMetrics *)v272 set_errorResolution:v97];

      payload20 = [v257 payload];
      v99 = [payload20 objectForKeyedSubscript:@"error-for-resolution"];

      if (v99)
      {
        msv_analyticSignature = [v99 msv_analyticSignature];
        [(MPCPlayPerfMetrics *)v272 set_errorSignature:msv_analyticSignature];
      }
    }

    payload21 = [*(*&v322[8] + 40) payload];
    v256 = [payload21 objectForKeyedSubscript:@"account-id"];

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
      payload22 = [v259 payload];
      v106 = [payload22 objectForKeyedSubscript:@"account-metadata"];
      v107 = [v106 objectForKeyedSubscript:@"active"];
      [(MPCPlayPerfMetrics *)v272 set_isActiveAccount:v107];

      payload23 = [v259 payload];
      v109 = [payload23 objectForKeyedSubscript:@"account-metadata"];
      v110 = [v109 objectForKeyedSubscript:@"subscription-status"];

      if (v110)
      {
        v111 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v110, "statusType")}];
        [(MPCPlayPerfMetrics *)v272 set_subscriptionType:v111];
      }

      payload24 = [v259 payload];
      v113 = [payload24 objectForKeyedSubscript:@"account-metadata"];
      v114 = [v113 objectForKeyedSubscript:@"store-front-id"];
      [(MPCPlayPerfMetrics *)v272 set_storefront:v114];
    }

    [(MPCPlayPerfMetrics *)v272 addNetworkTimesWithScopedCursor:log];
    [(MPCPlayPerfMetrics *)v272 addSessionActivationTimesWithScopedCursor:log];
    v115 = v302[5];
    payload25 = [v115 payload];
    v117 = [payload25 objectForKeyedSubscript:@"remote-control-options"];
    v252 = *MEMORY[0x1E69B1088];
    v118 = [v117 objectForKeyedSubscript:?];

    if (v118)
    {
      date3 = [v115 date];
      [date3 timeIntervalSinceReferenceDate];
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
        sessionActivationWaitTime = [(MPCPlayPerfMetrics *)v272 sessionActivationWaitTime];
        [sessionActivationWaitTime doubleValue];
        v129 = [v125 numberWithDouble:v127 - v129];
        [(MPCPlayPerfMetrics *)v272 set_queueLoadWaitTime:v129];

        v131 = *(*&buf[8] + 40);
        payload26 = [v131 payload];
        v133 = [payload26 objectForKeyedSubscript:@"remote-control-options"];
        v134 = [v133 objectForKeyedSubscript:v252];

        if (v134)
        {
          date4 = [v131 date];
          [date4 timeIntervalSinceReferenceDate];
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
            v140 = [v149 numberWithDouble:v150 - v140];
            [(MPCPlayPerfMetrics *)v272 set_playCommandWaitTime:v140];

            v148 = v302[5];
          }

          v152 = MEMORY[0x1E696AD98];
          if (v148)
          {
            readyToPlayStatusWaitTime = [(MPCPlayPerfMetrics *)v272 readyToPlayStatusWaitTime];
            [readyToPlayStatusWaitTime doubleValue];
            v155 = v154;

            [v143 durationSinceEvent:v302[5]];
            if (v155 < v156)
            {
              v156 = v155;
            }
          }

          else
          {
            readyToPlayStatusWaitTime2 = [(MPCPlayPerfMetrics *)v272 readyToPlayStatusWaitTime];
            [readyToPlayStatusWaitTime2 doubleValue];
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

          payload27 = [v13 payload];
          v168 = [payload27 objectForKeyedSubscript:@"event-time-offset"];
          [v168 doubleValue];
          v170 = v169;

          v171 = MEMORY[0x1E696AD98];
          [v13 durationSinceEvent:v294[5]];
          v173 = [v171 numberWithDouble:{fmax(v170 + v172, 0.0)}];
          [(MPCPlayPerfMetrics *)v272 set_firstAudioFrameWaitTime:v173];

          date5 = [v13 date];
          v175 = [date5 dateByAddingTimeInterval:v170];
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
          type = [v255 type];
          v179 = [type isEqualToString:@"item-pause"];

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
          payload28 = [v182 payload];
          v184 = [payload28 objectForKeyedSubscript:@"remote-control-options"];
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
          payload29 = [v302[5] payload];
          v194 = [payload29 objectForKeyedSubscript:@"remote-control-id"];
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
          payload30 = [v202 payload];
          v204 = [payload30 objectForKeyedSubscript:@"remote-control-options"];
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

        payload31 = [v13 payload];
        v225 = [payload31 objectForKeyedSubscript:@"event-time-offset"];
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

        setQueueCommandSendTime = [(MPCPlayPerfMetrics *)v272 setQueueCommandSendTime];
        [setQueueCommandSendTime doubleValue];
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

        musicTotalTime = [(MPCPlayPerfMetrics *)v272 musicTotalTime];
        [musicTotalTime doubleValue];
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
          dictionaryRepresentation = [(MPCPlayPerfMetrics *)v272 dictionaryRepresentation];
          v308 = dictionaryRepresentation;
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
    identifier3 = [eventCopy identifier];
    *buf = 138543874;
    *&buf[4] = identifier3;
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