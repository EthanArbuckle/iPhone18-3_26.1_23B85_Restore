@interface MPCSiriSelfLogger
+ (void)sendMetrics:(id)a3;
@end

@implementation MPCSiriSelfLogger

+ (void)sendMetrics:(id)a3
{
  v135 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 siriRefId];
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Assistant");
  v8 = os_signpost_id_make_with_pointer(v7, v6);

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
  v14 = [v13 getSiriRequestUUIDFor:v6];
  if (!v14)
  {
    v126 = [MEMORY[0x1E696AAA8] currentHandler];
    v127 = [v5 siriRefId];
    [v126 handleFailureInMethod:a2 object:a1 file:@"MPCSiriSelfLogger.m" lineNumber:233 description:{@"MPCSiriSelfLogger: siriReferenceIdentifier is not recognized by SASelfLogger: %@", v127}];
  }

  [v13 emitVMCPUStatsWithStage:5 requestId:v14];
  v15 = [v5 checkpointMRSetQueueBegin];
  v16 = v15 == 0;

  if (!v16)
  {
    v17 = [v5 checkpointMRSetQueueBegin];
    [v13 emitMWTCheckPointWithMwtCheckpoint:3 requestId:v14 timeStamp:{objc_msgSend(v17, "longLongValue")}];
  }

  v18 = [v5 checkpointRateZero];
  v19 = v18 == 0;

  if (!v19)
  {
    v20 = [v5 checkpointRateZero];
    [v13 emitMWTCheckPointWithMwtCheckpoint:4 requestId:v14 timeStamp:{objc_msgSend(v20, "longLongValue")}];
  }

  v21 = [v5 checkpointSetQueueBegin];
  v22 = v21 == 0;

  if (!v22)
  {
    v23 = [v5 checkpointSetQueueBegin];
    [v13 emitMWTCheckPointWithMwtCheckpoint:26 requestId:v14 timeStamp:{objc_msgSend(v23, "longLongValue")}];
  }

  v24 = [v5 checkpointSetQueueEnd];
  v25 = v24 == 0;

  if (!v25)
  {
    v26 = [v5 checkpointSetQueueEnd];
    [v13 emitMWTCheckPointWithMwtCheckpoint:6 requestId:v14 timeStamp:{objc_msgSend(v26, "longLongValue")}];
  }

  v27 = [v5 checkpointMRPlay];
  v28 = v27 == 0;

  if (!v28)
  {
    v29 = [v5 checkpointMRPlay];
    [v13 emitMWTCheckPointWithMwtCheckpoint:19 requestId:v14 timeStamp:{objc_msgSend(v29, "longLongValue")}];
  }

  v30 = [v5 checkpointAssetLoadBegin];
  v31 = v30 == 0;

  if (!v31)
  {
    v32 = [v5 checkpointAssetLoadBegin];
    [v13 emitMWTCheckPointWithMwtCheckpoint:7 requestId:v14 timeStamp:{objc_msgSend(v32, "longLongValue")}];
  }

  v33 = [v5 checkpointAssetLoadEnd];
  v34 = v33 == 0;

  if (!v34)
  {
    v35 = [v5 checkpointAssetLoadEnd];
    [v13 emitMWTCheckPointWithMwtCheckpoint:8 requestId:v14 timeStamp:{objc_msgSend(v35, "longLongValue")}];
  }

  v36 = [v5 checkpointLikelyToKeepUp];
  v37 = v36 == 0;

  if (!v37)
  {
    v38 = [v5 checkpointLikelyToKeepUp];
    [v13 emitMWTCheckPointWithMwtCheckpoint:14 requestId:v14 timeStamp:{objc_msgSend(v38, "longLongValue")}];
  }

  v39 = [v5 checkpointReadyToPlay];
  v40 = v39 == 0;

  if (!v40)
  {
    v41 = [v5 checkpointReadyToPlay];
    [v13 emitMWTCheckPointWithMwtCheckpoint:15 requestId:v14 timeStamp:{objc_msgSend(v41, "longLongValue")}];
  }

  v42 = [v5 checkpointPlay];
  v43 = v42 == 0;

  if (!v43)
  {
    v44 = [v5 checkpointPlay];
    [v13 emitMWTCheckPointWithMwtCheckpoint:27 requestId:v14 timeStamp:{objc_msgSend(v44, "longLongValue")}];
  }

  v45 = [v5 checkpointRateOne];
  v46 = v45 == 0;

  if (!v46)
  {
    v47 = [v5 checkpointRateOne];
    [v13 emitMWTCheckPointWithMwtCheckpoint:20 requestId:v14 timeStamp:{objc_msgSend(v47, "longLongValue")}];
  }

  v48 = [v5 checkpointFirstAudioFrame];
  v49 = v48 == 0;

  if (!v49)
  {
    v50 = [v5 checkpointFirstAudioFrame];
    [v13 emitMWTCheckPointWithMwtCheckpoint:28 requestId:v14 timeStamp:{objc_msgSend(v50, "longLongValue")}];

    v51 = [v5 checkpointFirstAudioFrame];
    [v13 emitMWTCheckPointWithMwtCheckpoint:25 requestId:v14 timeStamp:{objc_msgSend(v51, "longLongValue")}];
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
  v55 = [v5 isShuffled];
  [v54 setIsShuffled:{objc_msgSend(v55, "BOOLValue")}];

  v56 = v5;
  v57 = [v56 assetType];
  v58 = [v57 integerValue];

  if ((v58 - 1) > 4)
  {
    v59 = 0;
  }

  else
  {
    v59 = dword_1C6045268[v58 - 1];
  }

  [v54 setStreamingContentType:v59];
  v60 = v56;
  v61 = [v60 formatInfo];
  v62 = [v61 objectForKeyedSubscript:@"codec"];
  v63 = [v62 integerValue];

  if (v63 > 1634492790)
  {
    if (v63 > 1835623528)
    {
      if (v63 > 1935767393)
      {
        if (v63 <= 1953986160)
        {
          if (v63 == 1935767394)
          {
            v64 = 32;
            goto LABEL_132;
          }

          if (v63 == 1953066341)
          {
            v64 = 19;
            goto LABEL_132;
          }
        }

        else
        {
          switch(v63)
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

      else if (v63 <= 1836253232)
      {
        if (v63 == 1835623529)
        {
          v64 = 20;
          goto LABEL_132;
        }

        if (v63 == 1836253201)
        {
          v64 = 35;
          goto LABEL_132;
        }
      }

      else
      {
        switch(v63)
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

    else if (v63 > 1718378850)
    {
      if (v63 <= 1768710754)
      {
        if (v63 == 1718378851)
        {
          v64 = 39;
          goto LABEL_132;
        }

        if (v63 == 1752594531)
        {
          v64 = 7;
          goto LABEL_132;
        }
      }

      else
      {
        switch(v63)
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

    else if (v63 <= 1667326770)
    {
      if (v63 == 1634492791)
      {
        v64 = 12;
        goto LABEL_132;
      }

      if (v63 == 1634760307)
      {
        v64 = 21;
        goto LABEL_132;
      }
    }

    else
    {
      switch(v63)
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

  else if (v63 > 1633772388)
  {
    if (v63 > 1633772399)
    {
      if (v63 <= 1633889586)
      {
        if (v63 == 1633772400)
        {
          v64 = 28;
          goto LABEL_132;
        }

        if (v63 == 1633772403)
        {
          v64 = 29;
          goto LABEL_132;
        }
      }

      else
      {
        switch(v63)
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
      if (v63 <= 1633772390)
      {
        if (v63 == 1633772389)
        {
          v64 = 25;
        }

        else
        {
          v64 = 26;
        }

        goto LABEL_132;
      }

      switch(v63)
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

  else if (v63 > 1296122677)
  {
    if (v63 <= 1363430722)
    {
      if (v63 == 1296122678)
      {
        v64 = 10;
        goto LABEL_132;
      }

      if (v63 == 1363430706)
      {
        v64 = 14;
        goto LABEL_132;
      }
    }

    else
    {
      switch(v63)
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

  else if (v63 <= 778924082)
  {
    if (v63 == 778924081)
    {
      v64 = 16;
      goto LABEL_132;
    }

    if (v63 == 778924082)
    {
      v64 = 17;
      goto LABEL_132;
    }
  }

  else
  {
    switch(v63)
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
  v65 = [v60 formatInfo];
  v66 = [v65 objectForKeyedSubscript:@"bitrate"];
  [v54 setFormatBitrate:{objc_msgSend(v66, "integerValue")}];

  v67 = [v60 formatInfo];
  v68 = [v67 objectForKeyedSubscript:@"bitDepth"];
  [v54 setFormatBitDepth:{objc_msgSend(v68, "integerValue")}];

  v69 = [v60 formatInfo];
  v70 = [v69 objectForKeyedSubscript:@"channelLayout"];
  [v54 setFormatChannels:{objc_msgSend(v70, "integerValue")}];

  v71 = [v60 formatInfo];
  v72 = [v71 objectForKeyedSubscript:@"sampleRate"];
  [v54 setFormatSampleRate:{objc_msgSend(v72, "integerValue")}];

  v73 = v60;
  v74 = [v73 formatInfo];
  v75 = [v74 objectForKeyedSubscript:@"tier"];
  v76 = [v75 integerValue];

  if (v76 < 5)
  {
    v77 = (v76 + 1);
  }

  else
  {
    v77 = 0;
  }

  [v54 setFormatTier:v77];
  v78 = [v73 hasAccountInfo];
  [v54 setIsAccountDataReady:{objc_msgSend(v78, "BOOLValue")}];

  v79 = [v73 hasOnlinePlaybackKeys];
  [v54 setIsOnlineKeyReady:{objc_msgSend(v79, "BOOLValue")}];

  v80 = [v73 hasOfflinePlaybackKeys];
  [v54 setIsOfflineKeyReady:{objc_msgSend(v80, "BOOLValue")}];

  v81 = [v73 isReplacingPlayback];
  [v54 setIsInterruptingPlayback:{objc_msgSend(v81, "BOOLValue")}];

  v82 = [v73 isRemoteSetQueue];
  [v54 setIsRemoteSetQueue:{objc_msgSend(v82, "BOOLValue")}];

  v83 = [v73 isDelegatedPlayback];
  [v54 setIsDelegatedPlayback:{objc_msgSend(v83, "BOOLValue")}];

  v84 = [v73 isAutoPlayEnabled];
  [v54 setIsAutoPlay:{objc_msgSend(v84, "BOOLValue")}];

  v85 = [v73 isFirstPlay];
  [v54 setIsFirstPlayAfterAppLaunch:{objc_msgSend(v85, "BOOLValue")}];

  v86 = [v73 isSharePlay];
  [v54 setIsSharePlayPlayback:{objc_msgSend(v86, "BOOLValue")}];

  v87 = v73;
  v88 = [v87 networkType];
  v89 = [v88 integerValue];

  if (v89 > 6)
  {
    if (v89 > 999)
    {
      if (v89 > 1999)
      {
        if (v89 == 2000)
        {
          v90 = 14;
          goto LABEL_168;
        }
      }

      else
      {
        if (v89 == 1000)
        {
          v90 = 12;
          goto LABEL_168;
        }

        if (v89 == 1001)
        {
          v90 = 13;
          goto LABEL_168;
        }
      }
    }

    else if (v89 > 99)
    {
      if (v89 == 100)
      {
        v90 = 10;
        goto LABEL_168;
      }

      if (v89 == 500)
      {
        v90 = 11;
        goto LABEL_168;
      }
    }

    else
    {
      if (v89 == 7)
      {
        v90 = 8;
        goto LABEL_168;
      }

      if (v89 == 8)
      {
        v90 = 9;
        goto LABEL_168;
      }
    }

LABEL_159:
    v90 = 0;
    goto LABEL_168;
  }

  if (v89 <= 2)
  {
    switch(v89)
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

  if (v89 > 4)
  {
    if (v89 == 5)
    {
      v90 = 6;
    }

    else
    {
      v90 = 7;
    }
  }

  else if (v89 == 3)
  {
    v90 = 4;
  }

  else
  {
    v90 = 5;
  }

LABEL_168:

  [v54 setNetworkConnectionType:v90];
  v91 = [v87 isActiveAccount];
  [v54 setIsPrimaryUser:{objc_msgSend(v91, "BOOLValue")}];

  v92 = [v87 errorSignature];
  [v54 setErrorResolutionType:v92];

  v93 = v87;
  v94 = [v93 assetSource];
  v95 = [v94 integerValue];

  [v54 setAssetSource:v95];
  v96 = v93;
  v97 = [v96 assetLocation];
  v98 = [v97 integerValue];

  [v54 setAssetLocation:v98];
  v99 = [v96 queueType];
  [v54 setAudioQueueType:v99];

  v100 = v96;
  v101 = [v100 endpointType];
  v102 = [v101 integerValue];

  [v54 setEndPointType:v102];
  v103 = [v100 bagWaitTime];
  [v103 doubleValue];
  [v54 setHasBagWaitTime:v104 > 0.0];

  v105 = [v100 leaseWaitTime];
  [v105 doubleValue];
  [v54 setHasLeaseWaitTime:v106 > 0.0];

  v107 = [v100 lookupWaitTime];
  [v107 doubleValue];
  [v54 setHasLookupWaitTime:v108 > 0.0];

  v109 = [v100 mediaRedownloadWaitTime];
  [v109 doubleValue];
  [v54 setHasMediaRedownloadWaitTime:v110 > 0.0];

  v111 = [v100 subscriptionAssetLoadWaitTime];
  [v111 doubleValue];
  [v54 setHasSubscriptionAssetLoadWaitTime:v112 > 0.0];

  v113 = [v100 suzeLeaseWaitTime];
  [v113 doubleValue];
  [v54 setHasSuzeLeaseWaitTime:v114 > 0.0];

  v115 = v100;
  v116 = [v115 routeInfo];
  v117 = [v116 objectForKeyedSubscript:@"type"];
  v118 = [v117 integerValue];

  [v54 setRouteType:v118];
  v119 = v115;
  v120 = [v119 subscriptionType];
  v121 = [v120 integerValue];

  [v54 setSubscriptionType:v121];
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
    v125 = [v119 checkpointFirstAudioFrame];
    *buf = 138543618;
    *&buf[4] = v14;
    *&buf[12] = 2112;
    *&buf[14] = v125;
    _os_log_impl(&dword_1C5C61000, v124, OS_LOG_TYPE_DEFAULT, "Finished sending SELF checkpoints and metadata with siriReferenceIdentifier=%{public}@ firstAudioFrameTimeStamp=%@", buf, 0x16u);
  }
}

@end