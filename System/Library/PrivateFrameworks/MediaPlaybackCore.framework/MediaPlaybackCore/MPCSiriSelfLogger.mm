@interface MPCSiriSelfLogger
+ (void)sendMetrics:(id)metrics;
@end

@implementation MPCSiriSelfLogger

+ (void)sendMetrics:(id)metrics
{
  v135 = *MEMORY[0x1E69E9840];
  metricsCopy = metrics;
  siriRefId = [metricsCopy siriRefId];
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  v8 = os_signpost_id_make_with_pointer(v7, siriRefId);

  v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "SELFLoggerSendMetrics", "", buf, 2u);
  }

  v128 = 0;
  v129 = &v128;
  v130 = 0x2050000000;
  v11 = getSASelfLoggerClass_softClass;
  v131 = getSASelfLoggerClass_softClass;
  if (!getSASelfLoggerClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getSASelfLoggerClass_block_invoke;
    v133 = &unk_1E8238488;
    v134 = &v128;
    __getSASelfLoggerClass_block_invoke(buf);
    v11 = v129[3];
  }

  v12 = v11;
  _Block_object_dispose(&v128, 8);
  v13 = objc_alloc_init(v11);
  v14 = [v13 getSiriRequestUUIDFor:siriRefId];
  if (!v14)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    siriRefId2 = [metricsCopy siriRefId];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCSiriSelfLogger.m" lineNumber:233 description:{@"MPCSiriSelfLogger: siriReferenceIdentifier is not recognized by SASelfLogger: %@", siriRefId2}];
  }

  [v13 emitVMCPUStatsWithStage:5 requestId:v14];
  checkpointMRSetQueueBegin = [metricsCopy checkpointMRSetQueueBegin];
  v16 = checkpointMRSetQueueBegin == 0;

  if (!v16)
  {
    checkpointMRSetQueueBegin2 = [metricsCopy checkpointMRSetQueueBegin];
    [v13 emitMWTCheckPointWithMwtCheckpoint:3 requestId:v14 timeStamp:{objc_msgSend(checkpointMRSetQueueBegin2, "longLongValue")}];
  }

  checkpointRateZero = [metricsCopy checkpointRateZero];
  v19 = checkpointRateZero == 0;

  if (!v19)
  {
    checkpointRateZero2 = [metricsCopy checkpointRateZero];
    [v13 emitMWTCheckPointWithMwtCheckpoint:4 requestId:v14 timeStamp:{objc_msgSend(checkpointRateZero2, "longLongValue")}];
  }

  checkpointSetQueueBegin = [metricsCopy checkpointSetQueueBegin];
  v22 = checkpointSetQueueBegin == 0;

  if (!v22)
  {
    checkpointSetQueueBegin2 = [metricsCopy checkpointSetQueueBegin];
    [v13 emitMWTCheckPointWithMwtCheckpoint:26 requestId:v14 timeStamp:{objc_msgSend(checkpointSetQueueBegin2, "longLongValue")}];
  }

  checkpointSetQueueEnd = [metricsCopy checkpointSetQueueEnd];
  v25 = checkpointSetQueueEnd == 0;

  if (!v25)
  {
    checkpointSetQueueEnd2 = [metricsCopy checkpointSetQueueEnd];
    [v13 emitMWTCheckPointWithMwtCheckpoint:6 requestId:v14 timeStamp:{objc_msgSend(checkpointSetQueueEnd2, "longLongValue")}];
  }

  checkpointMRPlay = [metricsCopy checkpointMRPlay];
  v28 = checkpointMRPlay == 0;

  if (!v28)
  {
    checkpointMRPlay2 = [metricsCopy checkpointMRPlay];
    [v13 emitMWTCheckPointWithMwtCheckpoint:19 requestId:v14 timeStamp:{objc_msgSend(checkpointMRPlay2, "longLongValue")}];
  }

  checkpointAssetLoadBegin = [metricsCopy checkpointAssetLoadBegin];
  v31 = checkpointAssetLoadBegin == 0;

  if (!v31)
  {
    checkpointAssetLoadBegin2 = [metricsCopy checkpointAssetLoadBegin];
    [v13 emitMWTCheckPointWithMwtCheckpoint:7 requestId:v14 timeStamp:{objc_msgSend(checkpointAssetLoadBegin2, "longLongValue")}];
  }

  checkpointAssetLoadEnd = [metricsCopy checkpointAssetLoadEnd];
  v34 = checkpointAssetLoadEnd == 0;

  if (!v34)
  {
    checkpointAssetLoadEnd2 = [metricsCopy checkpointAssetLoadEnd];
    [v13 emitMWTCheckPointWithMwtCheckpoint:8 requestId:v14 timeStamp:{objc_msgSend(checkpointAssetLoadEnd2, "longLongValue")}];
  }

  checkpointLikelyToKeepUp = [metricsCopy checkpointLikelyToKeepUp];
  v37 = checkpointLikelyToKeepUp == 0;

  if (!v37)
  {
    checkpointLikelyToKeepUp2 = [metricsCopy checkpointLikelyToKeepUp];
    [v13 emitMWTCheckPointWithMwtCheckpoint:14 requestId:v14 timeStamp:{objc_msgSend(checkpointLikelyToKeepUp2, "longLongValue")}];
  }

  checkpointReadyToPlay = [metricsCopy checkpointReadyToPlay];
  v40 = checkpointReadyToPlay == 0;

  if (!v40)
  {
    checkpointReadyToPlay2 = [metricsCopy checkpointReadyToPlay];
    [v13 emitMWTCheckPointWithMwtCheckpoint:15 requestId:v14 timeStamp:{objc_msgSend(checkpointReadyToPlay2, "longLongValue")}];
  }

  checkpointPlay = [metricsCopy checkpointPlay];
  v43 = checkpointPlay == 0;

  if (!v43)
  {
    checkpointPlay2 = [metricsCopy checkpointPlay];
    [v13 emitMWTCheckPointWithMwtCheckpoint:27 requestId:v14 timeStamp:{objc_msgSend(checkpointPlay2, "longLongValue")}];
  }

  checkpointRateOne = [metricsCopy checkpointRateOne];
  v46 = checkpointRateOne == 0;

  if (!v46)
  {
    checkpointRateOne2 = [metricsCopy checkpointRateOne];
    [v13 emitMWTCheckPointWithMwtCheckpoint:20 requestId:v14 timeStamp:{objc_msgSend(checkpointRateOne2, "longLongValue")}];
  }

  checkpointFirstAudioFrame = [metricsCopy checkpointFirstAudioFrame];
  v49 = checkpointFirstAudioFrame == 0;

  if (!v49)
  {
    checkpointFirstAudioFrame2 = [metricsCopy checkpointFirstAudioFrame];
    [v13 emitMWTCheckPointWithMwtCheckpoint:28 requestId:v14 timeStamp:{objc_msgSend(checkpointFirstAudioFrame2, "longLongValue")}];

    checkpointFirstAudioFrame3 = [metricsCopy checkpointFirstAudioFrame];
    [v13 emitMWTCheckPointWithMwtCheckpoint:25 requestId:v14 timeStamp:{objc_msgSend(checkpointFirstAudioFrame3, "longLongValue")}];
  }

  v128 = 0;
  v129 = &v128;
  v130 = 0x2050000000;
  v52 = getSASelfLoggerMWTMusicMetadataClass_softClass;
  v131 = getSASelfLoggerMWTMusicMetadataClass_softClass;
  if (!getSASelfLoggerMWTMusicMetadataClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getSASelfLoggerMWTMusicMetadataClass_block_invoke;
    v133 = &unk_1E8238488;
    v134 = &v128;
    __getSASelfLoggerMWTMusicMetadataClass_block_invoke(buf);
    v52 = v129[3];
  }

  v53 = v52;
  _Block_object_dispose(&v128, 8);
  v54 = objc_alloc_init(v52);
  isShuffled = [metricsCopy isShuffled];
  [v54 setIsShuffled:{objc_msgSend(isShuffled, "BOOLValue")}];

  v56 = metricsCopy;
  assetType = [v56 assetType];
  integerValue = [assetType integerValue];

  if ((integerValue - 1) > 4)
  {
    v59 = 0;
  }

  else
  {
    v59 = dword_1C6045268[integerValue - 1];
  }

  [v54 setStreamingContentType:v59];
  v60 = v56;
  formatInfo = [v60 formatInfo];
  v62 = [formatInfo objectForKeyedSubscript:@"codec"];
  integerValue2 = [v62 integerValue];

  if (integerValue2 > 1634492790)
  {
    if (integerValue2 > 1835623528)
    {
      if (integerValue2 > 1935767393)
      {
        if (integerValue2 <= 1953986160)
        {
          if (integerValue2 == 1935767394)
          {
            v64 = 32;
            goto LABEL_132;
          }

          if (integerValue2 == 1953066341)
          {
            v64 = 19;
            goto LABEL_132;
          }
        }

        else
        {
          switch(integerValue2)
          {
            case 1953986161:
              v64 = 8;
              goto LABEL_132;
            case 1970037111:
              v64 = 11;
              goto LABEL_132;
            case 1970495843:
              v64 = 30;
              goto LABEL_132;
          }
        }
      }

      else if (integerValue2 <= 1836253232)
      {
        if (integerValue2 == 1835623529)
        {
          v64 = 20;
          goto LABEL_132;
        }

        if (integerValue2 == 1836253201)
        {
          v64 = 35;
          goto LABEL_132;
        }
      }

      else
      {
        switch(integerValue2)
        {
          case 1836253233:
            v64 = 36;
            goto LABEL_132;
          case 1869641075:
            v64 = 40;
            goto LABEL_132;
          case 1935764850:
            v64 = 31;
            goto LABEL_132;
        }
      }
    }

    else if (integerValue2 > 1718378850)
    {
      if (integerValue2 <= 1768710754)
      {
        if (integerValue2 == 1718378851)
        {
          v64 = 39;
          goto LABEL_132;
        }

        if (integerValue2 == 1752594531)
        {
          v64 = 7;
          goto LABEL_132;
        }
      }

      else
      {
        switch(integerValue2)
        {
          case 1768710755:
            v64 = 34;
            goto LABEL_132;
          case 1768775988:
            v64 = 4;
            goto LABEL_132;
          case 1819304813:
            v64 = 1;
            goto LABEL_132;
        }
      }
    }

    else if (integerValue2 <= 1667326770)
    {
      if (integerValue2 == 1634492791)
      {
        v64 = 12;
        goto LABEL_132;
      }

      if (integerValue2 == 1634760307)
      {
        v64 = 21;
        goto LABEL_132;
      }
    }

    else
    {
      switch(integerValue2)
      {
        case 1667326771:
          v64 = 3;
          goto LABEL_132;
        case 1667591280:
          v64 = 6;
          goto LABEL_132;
        case 1700998451:
          v64 = 38;
          goto LABEL_132;
      }
    }
  }

  else if (integerValue2 > 1633772388)
  {
    if (integerValue2 > 1633772399)
    {
      if (integerValue2 <= 1633889586)
      {
        if (integerValue2 == 1633772400)
        {
          v64 = 28;
          goto LABEL_132;
        }

        if (integerValue2 == 1633772403)
        {
          v64 = 29;
          goto LABEL_132;
        }
      }

      else
      {
        switch(integerValue2)
        {
          case 1633889587:
            v64 = 2;
            goto LABEL_132;
          case 1634038579:
            v64 = 37;
            goto LABEL_132;
          case 1634492771:
            v64 = 22;
            goto LABEL_132;
        }
      }
    }

    else
    {
      if (integerValue2 <= 1633772390)
      {
        if (integerValue2 == 1633772389)
        {
          v64 = 25;
        }

        else
        {
          v64 = 26;
        }

        goto LABEL_132;
      }

      switch(integerValue2)
      {
        case 1633772391:
          v64 = 27;
          goto LABEL_132;
        case 1633772392:
          v64 = 23;
          goto LABEL_132;
        case 1633772396:
          v64 = 24;
          goto LABEL_132;
      }
    }
  }

  else if (integerValue2 > 1296122677)
  {
    if (integerValue2 <= 1363430722)
    {
      if (integerValue2 == 1296122678)
      {
        v64 = 10;
        goto LABEL_132;
      }

      if (integerValue2 == 1363430706)
      {
        v64 = 14;
        goto LABEL_132;
      }
    }

    else
    {
      switch(integerValue2)
      {
        case 1363430723:
          v64 = 13;
          goto LABEL_132;
        case 1365470320:
          v64 = 15;
          goto LABEL_132;
        case 1633772320:
          v64 = 5;
          goto LABEL_132;
      }
    }
  }

  else if (integerValue2 <= 778924082)
  {
    if (integerValue2 == 778924081)
    {
      v64 = 16;
      goto LABEL_132;
    }

    if (integerValue2 == 778924082)
    {
      v64 = 17;
      goto LABEL_132;
    }
  }

  else
  {
    switch(integerValue2)
    {
      case 778924083:
        v64 = 18;
        goto LABEL_132;
      case 1096107074:
        v64 = 33;
        goto LABEL_132;
      case 1296122675:
        v64 = 9;
        goto LABEL_132;
    }
  }

  v64 = 0;
LABEL_132:

  [v54 setFormatCodec:v64];
  formatInfo2 = [v60 formatInfo];
  v66 = [formatInfo2 objectForKeyedSubscript:@"bitrate"];
  [v54 setFormatBitrate:{objc_msgSend(v66, "integerValue")}];

  formatInfo3 = [v60 formatInfo];
  v68 = [formatInfo3 objectForKeyedSubscript:@"bitDepth"];
  [v54 setFormatBitDepth:{objc_msgSend(v68, "integerValue")}];

  formatInfo4 = [v60 formatInfo];
  v70 = [formatInfo4 objectForKeyedSubscript:@"channelLayout"];
  [v54 setFormatChannels:{objc_msgSend(v70, "integerValue")}];

  formatInfo5 = [v60 formatInfo];
  v72 = [formatInfo5 objectForKeyedSubscript:@"sampleRate"];
  [v54 setFormatSampleRate:{objc_msgSend(v72, "integerValue")}];

  v73 = v60;
  formatInfo6 = [v73 formatInfo];
  v75 = [formatInfo6 objectForKeyedSubscript:@"tier"];
  integerValue3 = [v75 integerValue];

  if (integerValue3 < 5)
  {
    v77 = (integerValue3 + 1);
  }

  else
  {
    v77 = 0;
  }

  [v54 setFormatTier:v77];
  hasAccountInfo = [v73 hasAccountInfo];
  [v54 setIsAccountDataReady:{objc_msgSend(hasAccountInfo, "BOOLValue")}];

  hasOnlinePlaybackKeys = [v73 hasOnlinePlaybackKeys];
  [v54 setIsOnlineKeyReady:{objc_msgSend(hasOnlinePlaybackKeys, "BOOLValue")}];

  hasOfflinePlaybackKeys = [v73 hasOfflinePlaybackKeys];
  [v54 setIsOfflineKeyReady:{objc_msgSend(hasOfflinePlaybackKeys, "BOOLValue")}];

  isReplacingPlayback = [v73 isReplacingPlayback];
  [v54 setIsInterruptingPlayback:{objc_msgSend(isReplacingPlayback, "BOOLValue")}];

  isRemoteSetQueue = [v73 isRemoteSetQueue];
  [v54 setIsRemoteSetQueue:{objc_msgSend(isRemoteSetQueue, "BOOLValue")}];

  isDelegatedPlayback = [v73 isDelegatedPlayback];
  [v54 setIsDelegatedPlayback:{objc_msgSend(isDelegatedPlayback, "BOOLValue")}];

  isAutoPlayEnabled = [v73 isAutoPlayEnabled];
  [v54 setIsAutoPlay:{objc_msgSend(isAutoPlayEnabled, "BOOLValue")}];

  isFirstPlay = [v73 isFirstPlay];
  [v54 setIsFirstPlayAfterAppLaunch:{objc_msgSend(isFirstPlay, "BOOLValue")}];

  isSharePlay = [v73 isSharePlay];
  [v54 setIsSharePlayPlayback:{objc_msgSend(isSharePlay, "BOOLValue")}];

  v87 = v73;
  networkType = [v87 networkType];
  integerValue4 = [networkType integerValue];

  if (integerValue4 > 6)
  {
    if (integerValue4 > 999)
    {
      if (integerValue4 > 1999)
      {
        if (integerValue4 == 2000)
        {
          v90 = 14;
          goto LABEL_168;
        }
      }

      else
      {
        if (integerValue4 == 1000)
        {
          v90 = 12;
          goto LABEL_168;
        }

        if (integerValue4 == 1001)
        {
          v90 = 13;
          goto LABEL_168;
        }
      }
    }

    else if (integerValue4 > 99)
    {
      if (integerValue4 == 100)
      {
        v90 = 10;
        goto LABEL_168;
      }

      if (integerValue4 == 500)
      {
        v90 = 11;
        goto LABEL_168;
      }
    }

    else
    {
      if (integerValue4 == 7)
      {
        v90 = 8;
        goto LABEL_168;
      }

      if (integerValue4 == 8)
      {
        v90 = 9;
        goto LABEL_168;
      }
    }

LABEL_159:
    v90 = 0;
    goto LABEL_168;
  }

  if (integerValue4 <= 2)
  {
    switch(integerValue4)
    {
      case 0:
        v90 = 1;
        goto LABEL_168;
      case 1:
        v90 = 2;
        goto LABEL_168;
      case 2:
        v90 = 3;
        goto LABEL_168;
    }

    goto LABEL_159;
  }

  if (integerValue4 > 4)
  {
    if (integerValue4 == 5)
    {
      v90 = 6;
    }

    else
    {
      v90 = 7;
    }
  }

  else if (integerValue4 == 3)
  {
    v90 = 4;
  }

  else
  {
    v90 = 5;
  }

LABEL_168:

  [v54 setNetworkConnectionType:v90];
  isActiveAccount = [v87 isActiveAccount];
  [v54 setIsPrimaryUser:{objc_msgSend(isActiveAccount, "BOOLValue")}];

  errorSignature = [v87 errorSignature];
  [v54 setErrorResolutionType:errorSignature];

  v93 = v87;
  assetSource = [v93 assetSource];
  integerValue5 = [assetSource integerValue];

  [v54 setAssetSource:integerValue5];
  v96 = v93;
  assetLocation = [v96 assetLocation];
  integerValue6 = [assetLocation integerValue];

  [v54 setAssetLocation:integerValue6];
  queueType = [v96 queueType];
  [v54 setAudioQueueType:queueType];

  v100 = v96;
  endpointType = [v100 endpointType];
  integerValue7 = [endpointType integerValue];

  [v54 setEndPointType:integerValue7];
  bagWaitTime = [v100 bagWaitTime];
  [bagWaitTime doubleValue];
  [v54 setHasBagWaitTime:v104 > 0.0];

  leaseWaitTime = [v100 leaseWaitTime];
  [leaseWaitTime doubleValue];
  [v54 setHasLeaseWaitTime:v106 > 0.0];

  lookupWaitTime = [v100 lookupWaitTime];
  [lookupWaitTime doubleValue];
  [v54 setHasLookupWaitTime:v108 > 0.0];

  mediaRedownloadWaitTime = [v100 mediaRedownloadWaitTime];
  [mediaRedownloadWaitTime doubleValue];
  [v54 setHasMediaRedownloadWaitTime:v110 > 0.0];

  subscriptionAssetLoadWaitTime = [v100 subscriptionAssetLoadWaitTime];
  [subscriptionAssetLoadWaitTime doubleValue];
  [v54 setHasSubscriptionAssetLoadWaitTime:v112 > 0.0];

  suzeLeaseWaitTime = [v100 suzeLeaseWaitTime];
  [suzeLeaseWaitTime doubleValue];
  [v54 setHasSuzeLeaseWaitTime:v114 > 0.0];

  v115 = v100;
  routeInfo = [v115 routeInfo];
  v117 = [routeInfo objectForKeyedSubscript:@"type"];
  integerValue8 = [v117 integerValue];

  [v54 setRouteType:integerValue8];
  v119 = v115;
  subscriptionType = [v119 subscriptionType];
  integerValue9 = [subscriptionType integerValue];

  [v54 setSubscriptionType:integerValue9];
  [v13 emitMWTMusicMetadata:v54 requestId:v14];
  v122 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  v123 = v122;
  if (v8 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v122))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v123, OS_SIGNPOST_INTERVAL_END, v8, "SELFLoggerSendMetrics", "", buf, 2u);
  }

  v124 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
  if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
  {
    checkpointFirstAudioFrame4 = [v119 checkpointFirstAudioFrame];
    *buf = 138543618;
    *&buf[4] = v14;
    *&buf[12] = 2112;
    *&buf[14] = checkpointFirstAudioFrame4;
    _os_log_impl(&dword_1C5C61000, v124, OS_LOG_TYPE_DEFAULT, "Finished sending SELF checkpoints and metadata with siriReferenceIdentifier=%{public}@ firstAudioFrameTimeStamp=%@", buf, 0x16u);
  }
}

@end