@interface BMASRRequestMetricsRecord
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMASRRequestMetricsRecord)initWithAsrId:(id)id requestId:(id)requestId timestamp:(id)timestamp invocationType:(id)type triggerType:(id)triggerType asrTask:(id)task bundleId:(id)bundleId clientId:(id)self0 geoLMRegionId:(id)self1 locale:(id)self2 audioDurationMs:(id)self3 recognitionDurationMs:(id)self4 completionState:(int)self5 snrRatio:(id)self6 avgPitch:(id)self7 jitLmeUsed:(id)self8 aotLmeUsed:(id)self9 jitLmeRecognized:(id)recognized aotLmeRecognized:(id)lmeRecognized deviceClass:(id)class deviceType:(id)deviceType deviceBuild:(id)build isSiriOptIn:(id)in isAssistantEnabled:(id)enabled isDictationEnabled:(id)dictationEnabled isMultipleDictationKeyboardsInstalled:(id)installed enabledDictationLocales:(id)locales activeDictationLanguages:(id)id0;
- (BMASRRequestMetricsRecord)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_activeDictationLanguagesJSONArray;
- (id)_enabledDictationLocalesJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMASRRequestMetricsRecord

+ (id)columns
{
  v33[28] = *MEMORY[0x1E69E9840];
  v32 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"asrId" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"requestId" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timestamp" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"invocationType" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"triggerType" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"asrTask" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleId" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientId" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"geoLMRegionId" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"locale" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"audioDurationMs" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:4 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"recognitionDurationMs" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:4 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"completionState" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:4 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"snrRatio" dataType:1 requestOnly:0 fieldNumber:14 protoDataType:0 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"avgPitch" dataType:1 requestOnly:0 fieldNumber:15 protoDataType:0 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"jitLmeUsed" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:12 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"aotLmeUsed" dataType:0 requestOnly:0 fieldNumber:17 protoDataType:12 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"jitLmeRecognized" dataType:0 requestOnly:0 fieldNumber:18 protoDataType:12 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"aotLmeRecognized" dataType:0 requestOnly:0 fieldNumber:19 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceClass" dataType:2 requestOnly:0 fieldNumber:20 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceType" dataType:2 requestOnly:0 fieldNumber:21 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceBuild" dataType:2 requestOnly:0 fieldNumber:22 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isSiriOptIn" dataType:0 requestOnly:0 fieldNumber:23 protoDataType:12 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isAssistantEnabled" dataType:0 requestOnly:0 fieldNumber:24 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isDictationEnabled" dataType:0 requestOnly:0 fieldNumber:25 protoDataType:12 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isMultipleDictationKeyboardsInstalled" dataType:0 requestOnly:0 fieldNumber:26 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"enabledDictationLocales_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_141_97968];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"activeDictationLanguages_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_143_97969];
  v33[0] = v32;
  v33[1] = v31;
  v33[2] = v30;
  v33[3] = v29;
  v33[4] = v28;
  v33[5] = v27;
  v33[6] = v26;
  v33[7] = v25;
  v33[8] = v24;
  v33[9] = v23;
  v33[10] = v22;
  v33[11] = v21;
  v33[12] = v20;
  v33[13] = v19;
  v33[14] = v18;
  v33[15] = v17;
  v33[16] = v16;
  v33[17] = v15;
  v33[18] = v2;
  v33[19] = v3;
  v33[20] = v4;
  v33[21] = v14;
  v33[22] = v5;
  v33[23] = v13;
  v33[24] = v6;
  v33[25] = v12;
  v33[26] = v7;
  v33[27] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:28];

  v9 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    asrId = [(BMASRRequestMetricsRecord *)self asrId];
    asrId2 = [v5 asrId];
    v8 = asrId2;
    if (asrId == asrId2)
    {
    }

    else
    {
      asrId3 = [(BMASRRequestMetricsRecord *)self asrId];
      asrId4 = [v5 asrId];
      v11 = [asrId3 isEqual:asrId4];

      if (!v11)
      {
        goto LABEL_119;
      }
    }

    requestId = [(BMASRRequestMetricsRecord *)self requestId];
    requestId2 = [v5 requestId];
    v15 = requestId2;
    if (requestId == requestId2)
    {
    }

    else
    {
      requestId3 = [(BMASRRequestMetricsRecord *)self requestId];
      requestId4 = [v5 requestId];
      v18 = [requestId3 isEqual:requestId4];

      if (!v18)
      {
        goto LABEL_119;
      }
    }

    if (-[BMASRRequestMetricsRecord hasTimestamp](self, "hasTimestamp") || [v5 hasTimestamp])
    {
      if (![(BMASRRequestMetricsRecord *)self hasTimestamp])
      {
        goto LABEL_119;
      }

      if (![v5 hasTimestamp])
      {
        goto LABEL_119;
      }

      [(BMASRRequestMetricsRecord *)self timestamp];
      v20 = v19;
      [v5 timestamp];
      if (v20 != v21)
      {
        goto LABEL_119;
      }
    }

    invocationType = [(BMASRRequestMetricsRecord *)self invocationType];
    invocationType2 = [v5 invocationType];
    v24 = invocationType2;
    if (invocationType == invocationType2)
    {
    }

    else
    {
      invocationType3 = [(BMASRRequestMetricsRecord *)self invocationType];
      invocationType4 = [v5 invocationType];
      v27 = [invocationType3 isEqual:invocationType4];

      if (!v27)
      {
        goto LABEL_119;
      }
    }

    triggerType = [(BMASRRequestMetricsRecord *)self triggerType];
    triggerType2 = [v5 triggerType];
    v30 = triggerType2;
    if (triggerType == triggerType2)
    {
    }

    else
    {
      triggerType3 = [(BMASRRequestMetricsRecord *)self triggerType];
      triggerType4 = [v5 triggerType];
      v33 = [triggerType3 isEqual:triggerType4];

      if (!v33)
      {
        goto LABEL_119;
      }
    }

    asrTask = [(BMASRRequestMetricsRecord *)self asrTask];
    asrTask2 = [v5 asrTask];
    v36 = asrTask2;
    if (asrTask == asrTask2)
    {
    }

    else
    {
      asrTask3 = [(BMASRRequestMetricsRecord *)self asrTask];
      asrTask4 = [v5 asrTask];
      v39 = [asrTask3 isEqual:asrTask4];

      if (!v39)
      {
        goto LABEL_119;
      }
    }

    bundleId = [(BMASRRequestMetricsRecord *)self bundleId];
    bundleId2 = [v5 bundleId];
    v42 = bundleId2;
    if (bundleId == bundleId2)
    {
    }

    else
    {
      bundleId3 = [(BMASRRequestMetricsRecord *)self bundleId];
      bundleId4 = [v5 bundleId];
      v45 = [bundleId3 isEqual:bundleId4];

      if (!v45)
      {
        goto LABEL_119;
      }
    }

    clientId = [(BMASRRequestMetricsRecord *)self clientId];
    clientId2 = [v5 clientId];
    v48 = clientId2;
    if (clientId == clientId2)
    {
    }

    else
    {
      clientId3 = [(BMASRRequestMetricsRecord *)self clientId];
      clientId4 = [v5 clientId];
      v51 = [clientId3 isEqual:clientId4];

      if (!v51)
      {
        goto LABEL_119;
      }
    }

    geoLMRegionId = [(BMASRRequestMetricsRecord *)self geoLMRegionId];
    geoLMRegionId2 = [v5 geoLMRegionId];
    v54 = geoLMRegionId2;
    if (geoLMRegionId == geoLMRegionId2)
    {
    }

    else
    {
      geoLMRegionId3 = [(BMASRRequestMetricsRecord *)self geoLMRegionId];
      geoLMRegionId4 = [v5 geoLMRegionId];
      v57 = [geoLMRegionId3 isEqual:geoLMRegionId4];

      if (!v57)
      {
        goto LABEL_119;
      }
    }

    locale = [(BMASRRequestMetricsRecord *)self locale];
    locale2 = [v5 locale];
    v60 = locale2;
    if (locale == locale2)
    {
    }

    else
    {
      locale3 = [(BMASRRequestMetricsRecord *)self locale];
      locale4 = [v5 locale];
      v63 = [locale3 isEqual:locale4];

      if (!v63)
      {
        goto LABEL_119;
      }
    }

    if (-[BMASRRequestMetricsRecord hasAudioDurationMs](self, "hasAudioDurationMs") || [v5 hasAudioDurationMs])
    {
      if (![(BMASRRequestMetricsRecord *)self hasAudioDurationMs])
      {
        goto LABEL_119;
      }

      if (![v5 hasAudioDurationMs])
      {
        goto LABEL_119;
      }

      audioDurationMs = [(BMASRRequestMetricsRecord *)self audioDurationMs];
      if (audioDurationMs != [v5 audioDurationMs])
      {
        goto LABEL_119;
      }
    }

    if (-[BMASRRequestMetricsRecord hasRecognitionDurationMs](self, "hasRecognitionDurationMs") || [v5 hasRecognitionDurationMs])
    {
      if (![(BMASRRequestMetricsRecord *)self hasRecognitionDurationMs])
      {
        goto LABEL_119;
      }

      if (![v5 hasRecognitionDurationMs])
      {
        goto LABEL_119;
      }

      recognitionDurationMs = [(BMASRRequestMetricsRecord *)self recognitionDurationMs];
      if (recognitionDurationMs != [v5 recognitionDurationMs])
      {
        goto LABEL_119;
      }
    }

    completionState = [(BMASRRequestMetricsRecord *)self completionState];
    if (completionState != [v5 completionState])
    {
      goto LABEL_119;
    }

    if (-[BMASRRequestMetricsRecord hasSnrRatio](self, "hasSnrRatio") || [v5 hasSnrRatio])
    {
      if (![(BMASRRequestMetricsRecord *)self hasSnrRatio])
      {
        goto LABEL_119;
      }

      if (![v5 hasSnrRatio])
      {
        goto LABEL_119;
      }

      [(BMASRRequestMetricsRecord *)self snrRatio];
      v68 = v67;
      [v5 snrRatio];
      if (v68 != v69)
      {
        goto LABEL_119;
      }
    }

    if (-[BMASRRequestMetricsRecord hasAvgPitch](self, "hasAvgPitch") || [v5 hasAvgPitch])
    {
      if (![(BMASRRequestMetricsRecord *)self hasAvgPitch])
      {
        goto LABEL_119;
      }

      if (![v5 hasAvgPitch])
      {
        goto LABEL_119;
      }

      [(BMASRRequestMetricsRecord *)self avgPitch];
      v71 = v70;
      [v5 avgPitch];
      if (v71 != v72)
      {
        goto LABEL_119;
      }
    }

    if (-[BMASRRequestMetricsRecord hasJitLmeUsed](self, "hasJitLmeUsed") || [v5 hasJitLmeUsed])
    {
      if (![(BMASRRequestMetricsRecord *)self hasJitLmeUsed])
      {
        goto LABEL_119;
      }

      if (![v5 hasJitLmeUsed])
      {
        goto LABEL_119;
      }

      jitLmeUsed = [(BMASRRequestMetricsRecord *)self jitLmeUsed];
      if (jitLmeUsed != [v5 jitLmeUsed])
      {
        goto LABEL_119;
      }
    }

    if (-[BMASRRequestMetricsRecord hasAotLmeUsed](self, "hasAotLmeUsed") || [v5 hasAotLmeUsed])
    {
      if (![(BMASRRequestMetricsRecord *)self hasAotLmeUsed])
      {
        goto LABEL_119;
      }

      if (![v5 hasAotLmeUsed])
      {
        goto LABEL_119;
      }

      aotLmeUsed = [(BMASRRequestMetricsRecord *)self aotLmeUsed];
      if (aotLmeUsed != [v5 aotLmeUsed])
      {
        goto LABEL_119;
      }
    }

    if (-[BMASRRequestMetricsRecord hasJitLmeRecognized](self, "hasJitLmeRecognized") || [v5 hasJitLmeRecognized])
    {
      if (![(BMASRRequestMetricsRecord *)self hasJitLmeRecognized])
      {
        goto LABEL_119;
      }

      if (![v5 hasJitLmeRecognized])
      {
        goto LABEL_119;
      }

      jitLmeRecognized = [(BMASRRequestMetricsRecord *)self jitLmeRecognized];
      if (jitLmeRecognized != [v5 jitLmeRecognized])
      {
        goto LABEL_119;
      }
    }

    if (-[BMASRRequestMetricsRecord hasAotLmeRecognized](self, "hasAotLmeRecognized") || [v5 hasAotLmeRecognized])
    {
      if (![(BMASRRequestMetricsRecord *)self hasAotLmeRecognized])
      {
        goto LABEL_119;
      }

      if (![v5 hasAotLmeRecognized])
      {
        goto LABEL_119;
      }

      aotLmeRecognized = [(BMASRRequestMetricsRecord *)self aotLmeRecognized];
      if (aotLmeRecognized != [v5 aotLmeRecognized])
      {
        goto LABEL_119;
      }
    }

    deviceClass = [(BMASRRequestMetricsRecord *)self deviceClass];
    deviceClass2 = [v5 deviceClass];
    v79 = deviceClass2;
    if (deviceClass == deviceClass2)
    {
    }

    else
    {
      deviceClass3 = [(BMASRRequestMetricsRecord *)self deviceClass];
      deviceClass4 = [v5 deviceClass];
      v82 = [deviceClass3 isEqual:deviceClass4];

      if (!v82)
      {
        goto LABEL_119;
      }
    }

    deviceType = [(BMASRRequestMetricsRecord *)self deviceType];
    deviceType2 = [v5 deviceType];
    v85 = deviceType2;
    if (deviceType == deviceType2)
    {
    }

    else
    {
      deviceType3 = [(BMASRRequestMetricsRecord *)self deviceType];
      deviceType4 = [v5 deviceType];
      v88 = [deviceType3 isEqual:deviceType4];

      if (!v88)
      {
        goto LABEL_119;
      }
    }

    deviceBuild = [(BMASRRequestMetricsRecord *)self deviceBuild];
    deviceBuild2 = [v5 deviceBuild];
    v91 = deviceBuild2;
    if (deviceBuild == deviceBuild2)
    {
    }

    else
    {
      deviceBuild3 = [(BMASRRequestMetricsRecord *)self deviceBuild];
      deviceBuild4 = [v5 deviceBuild];
      v94 = [deviceBuild3 isEqual:deviceBuild4];

      if (!v94)
      {
        goto LABEL_119;
      }
    }

    if (-[BMASRRequestMetricsRecord hasIsSiriOptIn](self, "hasIsSiriOptIn") || [v5 hasIsSiriOptIn])
    {
      if (![(BMASRRequestMetricsRecord *)self hasIsSiriOptIn])
      {
        goto LABEL_119;
      }

      if (![v5 hasIsSiriOptIn])
      {
        goto LABEL_119;
      }

      isSiriOptIn = [(BMASRRequestMetricsRecord *)self isSiriOptIn];
      if (isSiriOptIn != [v5 isSiriOptIn])
      {
        goto LABEL_119;
      }
    }

    if (-[BMASRRequestMetricsRecord hasIsAssistantEnabled](self, "hasIsAssistantEnabled") || [v5 hasIsAssistantEnabled])
    {
      if (![(BMASRRequestMetricsRecord *)self hasIsAssistantEnabled])
      {
        goto LABEL_119;
      }

      if (![v5 hasIsAssistantEnabled])
      {
        goto LABEL_119;
      }

      isAssistantEnabled = [(BMASRRequestMetricsRecord *)self isAssistantEnabled];
      if (isAssistantEnabled != [v5 isAssistantEnabled])
      {
        goto LABEL_119;
      }
    }

    if (-[BMASRRequestMetricsRecord hasIsDictationEnabled](self, "hasIsDictationEnabled") || [v5 hasIsDictationEnabled])
    {
      if (![(BMASRRequestMetricsRecord *)self hasIsDictationEnabled])
      {
        goto LABEL_119;
      }

      if (![v5 hasIsDictationEnabled])
      {
        goto LABEL_119;
      }

      isDictationEnabled = [(BMASRRequestMetricsRecord *)self isDictationEnabled];
      if (isDictationEnabled != [v5 isDictationEnabled])
      {
        goto LABEL_119;
      }
    }

    if (-[BMASRRequestMetricsRecord hasIsMultipleDictationKeyboardsInstalled](self, "hasIsMultipleDictationKeyboardsInstalled") || [v5 hasIsMultipleDictationKeyboardsInstalled])
    {
      if (![(BMASRRequestMetricsRecord *)self hasIsMultipleDictationKeyboardsInstalled])
      {
        goto LABEL_119;
      }

      if (![v5 hasIsMultipleDictationKeyboardsInstalled])
      {
        goto LABEL_119;
      }

      isMultipleDictationKeyboardsInstalled = [(BMASRRequestMetricsRecord *)self isMultipleDictationKeyboardsInstalled];
      if (isMultipleDictationKeyboardsInstalled != [v5 isMultipleDictationKeyboardsInstalled])
      {
        goto LABEL_119;
      }
    }

    enabledDictationLocales = [(BMASRRequestMetricsRecord *)self enabledDictationLocales];
    enabledDictationLocales2 = [v5 enabledDictationLocales];
    v101 = enabledDictationLocales2;
    if (enabledDictationLocales == enabledDictationLocales2)
    {
    }

    else
    {
      enabledDictationLocales3 = [(BMASRRequestMetricsRecord *)self enabledDictationLocales];
      enabledDictationLocales4 = [v5 enabledDictationLocales];
      v104 = [enabledDictationLocales3 isEqual:enabledDictationLocales4];

      if (!v104)
      {
LABEL_119:
        v12 = 0;
LABEL_120:

        goto LABEL_121;
      }
    }

    activeDictationLanguages = [(BMASRRequestMetricsRecord *)self activeDictationLanguages];
    activeDictationLanguages2 = [v5 activeDictationLanguages];
    if (activeDictationLanguages == activeDictationLanguages2)
    {
      v12 = 1;
    }

    else
    {
      activeDictationLanguages3 = [(BMASRRequestMetricsRecord *)self activeDictationLanguages];
      activeDictationLanguages4 = [v5 activeDictationLanguages];
      v12 = [activeDictationLanguages3 isEqual:activeDictationLanguages4];
    }

    goto LABEL_120;
  }

  v12 = 0;
LABEL_121:

  return v12;
}

- (id)jsonDictionary
{
  v101[28] = *MEMORY[0x1E69E9840];
  asrId = [(BMASRRequestMetricsRecord *)self asrId];
  requestId = [(BMASRRequestMetricsRecord *)self requestId];
  if (![(BMASRRequestMetricsRecord *)self hasTimestamp]|| ([(BMASRRequestMetricsRecord *)self timestamp], fabs(v5) == INFINITY))
  {
    v7 = 0;
  }

  else
  {
    [(BMASRRequestMetricsRecord *)self timestamp];
    v6 = MEMORY[0x1E696AD98];
    [(BMASRRequestMetricsRecord *)self timestamp];
    v7 = [v6 numberWithDouble:?];
  }

  invocationType = [(BMASRRequestMetricsRecord *)self invocationType];
  triggerType = [(BMASRRequestMetricsRecord *)self triggerType];
  asrTask = [(BMASRRequestMetricsRecord *)self asrTask];
  bundleId = [(BMASRRequestMetricsRecord *)self bundleId];
  clientId = [(BMASRRequestMetricsRecord *)self clientId];
  geoLMRegionId = [(BMASRRequestMetricsRecord *)self geoLMRegionId];
  locale = [(BMASRRequestMetricsRecord *)self locale];
  if ([(BMASRRequestMetricsRecord *)self hasAudioDurationMs])
  {
    v96 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMASRRequestMetricsRecord audioDurationMs](self, "audioDurationMs")}];
  }

  else
  {
    v96 = 0;
  }

  if ([(BMASRRequestMetricsRecord *)self hasRecognitionDurationMs])
  {
    v95 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMASRRequestMetricsRecord recognitionDurationMs](self, "recognitionDurationMs")}];
  }

  else
  {
    v95 = 0;
  }

  v94 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMASRRequestMetricsRecord completionState](self, "completionState")}];
  if (![(BMASRRequestMetricsRecord *)self hasSnrRatio]|| ([(BMASRRequestMetricsRecord *)self snrRatio], fabs(v12) == INFINITY))
  {
    v93 = 0;
  }

  else
  {
    [(BMASRRequestMetricsRecord *)self snrRatio];
    v13 = MEMORY[0x1E696AD98];
    [(BMASRRequestMetricsRecord *)self snrRatio];
    v93 = [v13 numberWithDouble:?];
  }

  if (![(BMASRRequestMetricsRecord *)self hasAvgPitch]|| ([(BMASRRequestMetricsRecord *)self avgPitch], fabs(v14) == INFINITY))
  {
    v92 = 0;
  }

  else
  {
    [(BMASRRequestMetricsRecord *)self avgPitch];
    v15 = MEMORY[0x1E696AD98];
    [(BMASRRequestMetricsRecord *)self avgPitch];
    v92 = [v15 numberWithDouble:?];
  }

  if ([(BMASRRequestMetricsRecord *)self hasJitLmeUsed])
  {
    v91 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMASRRequestMetricsRecord jitLmeUsed](self, "jitLmeUsed")}];
  }

  else
  {
    v91 = 0;
  }

  if ([(BMASRRequestMetricsRecord *)self hasAotLmeUsed])
  {
    v90 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMASRRequestMetricsRecord aotLmeUsed](self, "aotLmeUsed")}];
  }

  else
  {
    v90 = 0;
  }

  if ([(BMASRRequestMetricsRecord *)self hasJitLmeRecognized])
  {
    v89 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMASRRequestMetricsRecord jitLmeRecognized](self, "jitLmeRecognized")}];
  }

  else
  {
    v89 = 0;
  }

  if ([(BMASRRequestMetricsRecord *)self hasAotLmeRecognized])
  {
    v88 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMASRRequestMetricsRecord aotLmeRecognized](self, "aotLmeRecognized")}];
  }

  else
  {
    v88 = 0;
  }

  deviceClass = [(BMASRRequestMetricsRecord *)self deviceClass];
  deviceType = [(BMASRRequestMetricsRecord *)self deviceType];
  deviceBuild = [(BMASRRequestMetricsRecord *)self deviceBuild];
  if ([(BMASRRequestMetricsRecord *)self hasIsSiriOptIn])
  {
    v84 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMASRRequestMetricsRecord isSiriOptIn](self, "isSiriOptIn")}];
  }

  else
  {
    v84 = 0;
  }

  if ([(BMASRRequestMetricsRecord *)self hasIsAssistantEnabled])
  {
    v83 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMASRRequestMetricsRecord isAssistantEnabled](self, "isAssistantEnabled")}];
  }

  else
  {
    v83 = 0;
  }

  if ([(BMASRRequestMetricsRecord *)self hasIsDictationEnabled])
  {
    v82 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMASRRequestMetricsRecord isDictationEnabled](self, "isDictationEnabled")}];
  }

  else
  {
    v82 = 0;
  }

  if ([(BMASRRequestMetricsRecord *)self hasIsMultipleDictationKeyboardsInstalled])
  {
    v81 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMASRRequestMetricsRecord isMultipleDictationKeyboardsInstalled](self, "isMultipleDictationKeyboardsInstalled")}];
  }

  else
  {
    v81 = 0;
  }

  _enabledDictationLocalesJSONArray = [(BMASRRequestMetricsRecord *)self _enabledDictationLocalesJSONArray];
  _activeDictationLanguagesJSONArray = [(BMASRRequestMetricsRecord *)self _activeDictationLanguagesJSONArray];
  v100[0] = @"asrId";
  null = asrId;
  if (!asrId)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v71 = null;
  v101[0] = null;
  v100[1] = @"requestId";
  null2 = requestId;
  if (!requestId)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v70 = null2;
  v101[1] = null2;
  v100[2] = @"timestamp";
  null3 = v7;
  if (!v7)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v69 = null3;
  v101[2] = null3;
  v100[3] = @"invocationType";
  null4 = invocationType;
  if (!invocationType)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v68 = null4;
  v101[3] = null4;
  v100[4] = @"triggerType";
  null5 = triggerType;
  if (!triggerType)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v67 = null5;
  v101[4] = null5;
  v100[5] = @"asrTask";
  null6 = asrTask;
  if (!asrTask)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v66 = null6;
  v101[5] = null6;
  v100[6] = @"bundleId";
  null7 = bundleId;
  if (!bundleId)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v65 = null7;
  v101[6] = null7;
  v100[7] = @"clientId";
  null8 = clientId;
  if (!clientId)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v101[7] = null8;
  v100[8] = @"geoLMRegionId";
  null9 = geoLMRegionId;
  if (!geoLMRegionId)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = bundleId;
  v101[8] = null9;
  v100[9] = @"locale";
  null10 = locale;
  if (!locale)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = asrTask;
  v74 = null10;
  v101[9] = null10;
  v100[10] = @"audioDurationMs";
  null11 = v96;
  if (!v96)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = asrId;
  v73 = null11;
  v101[10] = null11;
  v100[11] = @"recognitionDurationMs";
  null12 = v95;
  if (!v95)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = null12;
  v101[11] = null12;
  v100[12] = @"completionState";
  null13 = v94;
  if (!v94)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v63 = null13;
  v101[12] = null13;
  v100[13] = @"snrRatio";
  null14 = v93;
  if (!v93)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v62 = null14;
  v101[13] = null14;
  v100[14] = @"avgPitch";
  null15 = v92;
  if (!v92)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v61 = null15;
  v101[14] = null15;
  v100[15] = @"jitLmeUsed";
  null16 = v91;
  if (!v91)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v60 = null16;
  v101[15] = null16;
  v100[16] = @"aotLmeUsed";
  null17 = v90;
  if (!v90)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v59 = null17;
  v101[16] = null17;
  v100[17] = @"jitLmeRecognized";
  null18 = v89;
  if (!v89)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v58 = null18;
  v101[17] = null18;
  v100[18] = @"aotLmeRecognized";
  null19 = v88;
  if (!v88)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v57 = null19;
  v101[18] = null19;
  v100[19] = @"deviceClass";
  null20 = deviceClass;
  if (!deviceClass)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v76 = invocationType;
  v56 = null20;
  v101[19] = null20;
  v100[20] = @"deviceType";
  null21 = deviceType;
  if (!deviceType)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v78 = requestId;
  v55 = null21;
  v101[20] = null21;
  v100[21] = @"deviceBuild";
  null22 = deviceBuild;
  if (!deviceBuild)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v75 = triggerType;
  v77 = v7;
  v54 = null22;
  v101[21] = null22;
  v100[22] = @"isSiriOptIn";
  null23 = v84;
  if (!v84)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v53 = null23;
  v101[22] = null23;
  v100[23] = @"isAssistantEnabled";
  null24 = v83;
  if (!v83)
  {
    null24 = [MEMORY[0x1E695DFB0] null];
  }

  v101[23] = null24;
  v100[24] = @"isDictationEnabled";
  null25 = v82;
  if (!v82)
  {
    null25 = [MEMORY[0x1E695DFB0] null];
  }

  v64 = null8;
  v45 = v25;
  v101[24] = null25;
  v100[25] = @"isMultipleDictationKeyboardsInstalled";
  null26 = v81;
  if (!v81)
  {
    null26 = [MEMORY[0x1E695DFB0] null];
  }

  v47 = null9;
  v101[25] = null26;
  v100[26] = @"enabledDictationLocales";
  null27 = _enabledDictationLocalesJSONArray;
  if (!_enabledDictationLocalesJSONArray)
  {
    null27 = [MEMORY[0x1E695DFB0] null];
  }

  v101[26] = null27;
  v100[27] = @"activeDictationLanguages";
  null28 = _activeDictationLanguagesJSONArray;
  if (!_activeDictationLanguagesJSONArray)
  {
    null28 = [MEMORY[0x1E695DFB0] null];
  }

  v101[27] = null28;
  v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v101 forKeys:v100 count:28];
  if (!_activeDictationLanguagesJSONArray)
  {
  }

  v50 = v31;
  if (!_enabledDictationLocalesJSONArray)
  {

    v50 = v31;
  }

  if (!v81)
  {

    v50 = v31;
  }

  if (!v82)
  {

    v50 = v31;
  }

  if (!v83)
  {

    v50 = v31;
  }

  if (!v84)
  {

    v50 = v31;
  }

  if (!deviceBuild)
  {

    v50 = v31;
  }

  if (!deviceType)
  {

    v50 = v31;
  }

  if (!deviceClass)
  {

    v50 = v31;
  }

  if (!v88)
  {

    v50 = v31;
  }

  if (!v89)
  {

    v50 = v31;
  }

  if (!v90)
  {

    v50 = v31;
  }

  if (!v91)
  {

    v50 = v31;
  }

  if (!v92)
  {

    v50 = v31;
  }

  if (!v93)
  {

    v50 = v31;
  }

  if (!v94)
  {

    v50 = v31;
  }

  if (!v95)
  {
  }

  if (!v96)
  {
  }

  if (!locale)
  {
  }

  if (!geoLMRegionId)
  {
  }

  if (clientId)
  {
    if (v45)
    {
      goto LABEL_141;
    }
  }

  else
  {

    if (v45)
    {
LABEL_141:
      if (v27)
      {
        goto LABEL_142;
      }

      goto LABEL_152;
    }
  }

  if (v27)
  {
LABEL_142:
    if (v75)
    {
      goto LABEL_143;
    }

    goto LABEL_153;
  }

LABEL_152:

  if (v75)
  {
LABEL_143:
    if (v76)
    {
      goto LABEL_144;
    }

    goto LABEL_154;
  }

LABEL_153:

  if (v76)
  {
LABEL_144:
    if (v77)
    {
      goto LABEL_145;
    }

    goto LABEL_155;
  }

LABEL_154:

  if (v77)
  {
LABEL_145:
    if (v78)
    {
      goto LABEL_146;
    }

LABEL_156:

    if (v29)
    {
      goto LABEL_147;
    }

    goto LABEL_157;
  }

LABEL_155:

  if (!v78)
  {
    goto LABEL_156;
  }

LABEL_146:
  if (v29)
  {
    goto LABEL_147;
  }

LABEL_157:

LABEL_147:
  v51 = *MEMORY[0x1E69E9840];

  return v72;
}

- (id)_activeDictationLanguagesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  activeDictationLanguages = [(BMASRRequestMetricsRecord *)self activeDictationLanguages];
  v5 = [activeDictationLanguages countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(activeDictationLanguages);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [activeDictationLanguages countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_enabledDictationLocalesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  enabledDictationLocales = [(BMASRRequestMetricsRecord *)self enabledDictationLocales];
  v5 = [enabledDictationLocales countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(enabledDictationLocales);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [enabledDictationLocales countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMASRRequestMetricsRecord)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v421[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"asrId"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
LABEL_4:
    v347 = [dictionaryCopy objectForKeyedSubscript:@"requestId"];
    if (!v347 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v344 = 0;
      goto LABEL_7;
    }

    errorCopy = error;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v344 = v347;
LABEL_7:
      v346 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
      if (!v346 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v8 = 0;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v346;
LABEL_10:
        v9 = [dictionaryCopy objectForKeyedSubscript:@"invocationType"];
        v343 = v9;
        if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          errorCopy3 = error;
          error = 0;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          errorCopy3 = error;
          error = v9;
LABEL_13:
          v11 = [dictionaryCopy objectForKeyedSubscript:@"triggerType"];
          if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v339 = v11;
            v342 = 0;
            goto LABEL_16;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v339 = v11;
            v342 = v11;
LABEL_16:
            v12 = [dictionaryCopy objectForKeyedSubscript:@"asrTask"];
            v341 = v12;
            if (!v12 || (v13 = v12, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v340 = 0;
              goto LABEL_19;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v340 = v13;
LABEL_19:
              v14 = [dictionaryCopy objectForKeyedSubscript:@"bundleId"];
              errorCopy4 = error;
              v338 = v14;
              if (!v14 || (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v335 = 0;
LABEL_22:
                v16 = [dictionaryCopy objectForKeyedSubscript:@"clientId"];
                if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (errorCopy3)
                    {
                      v319 = v6;
                      v79 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v80 = *MEMORY[0x1E698F240];
                      v406 = *MEMORY[0x1E696A578];
                      v78 = v16;
                      v17 = v8;
                      v334 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientId"];
                      v407 = v334;
                      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v407 forKeys:&v406 count:1];
                      v81 = v79;
                      v6 = v319;
                      v336 = 0;
                      v32 = 0;
                      *errorCopy3 = [v81 initWithDomain:v80 code:2 userInfo:v18];
                      v53 = v339;
                      goto LABEL_291;
                    }

                    v336 = 0;
                    v32 = 0;
                    v53 = v339;
                    v78 = v16;
                    v17 = v8;
                    goto LABEL_292;
                  }

                  v316 = v16;
                  v336 = v16;
                }

                else
                {
                  v316 = v16;
                  v336 = 0;
                }

                [dictionaryCopy objectForKeyedSubscript:@"geoLMRegionId"];
                v18 = v17 = v8;
                if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (!errorCopy3)
                    {
                      v334 = 0;
                      v32 = 0;
                      v53 = v339;
                      v78 = v316;
                      goto LABEL_291;
                    }

                    v82 = v7;
                    v83 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v84 = *MEMORY[0x1E698F240];
                    v404 = *MEMORY[0x1E696A578];
                    v314 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"geoLMRegionId"];
                    v405 = v314;
                    v85 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v405 forKeys:&v404 count:1];
                    v86 = v83;
                    v7 = v82;
                    v315 = v85;
                    v334 = 0;
                    v32 = 0;
                    *errorCopy3 = [v86 initWithDomain:v84 code:2 userInfo:?];
                    goto LABEL_164;
                  }

                  v334 = v18;
                }

                else
                {
                  v334 = 0;
                }

                v19 = [dictionaryCopy objectForKeyedSubscript:@"locale"];
                v315 = v19;
                if (!v19 || (v20 = v19, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v314 = 0;
                  goto LABEL_31;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v314 = v20;
LABEL_31:
                  v21 = [dictionaryCopy objectForKeyedSubscript:@"audioDurationMs"];
                  v303 = v21;
                  if (!v21 || (v22 = v21, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v302 = 0;
                    goto LABEL_34;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v302 = v22;
LABEL_34:
                    v23 = [dictionaryCopy objectForKeyedSubscript:@"recognitionDurationMs"];
                    v301 = v23;
                    if (!v23 || (v24 = v23, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v300 = 0;
                      goto LABEL_37;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v300 = v24;
LABEL_37:
                      v25 = [dictionaryCopy objectForKeyedSubscript:@"completionState"];
                      v297 = v25;
                      if (!v25 || (v26 = v25, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v296 = 0;
                        goto LABEL_100;
                      }

                      v305 = v7;
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v296 = v26;
LABEL_99:

LABEL_100:
                        v103 = [dictionaryCopy objectForKeyedSubscript:@"snrRatio"];
                        v294 = v103;
                        if (!v103 || (v104 = v103, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v295 = 0;
                          goto LABEL_103;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v295 = v104;
LABEL_103:
                          v105 = [dictionaryCopy objectForKeyedSubscript:@"avgPitch"];
                          v293 = v105;
                          if (!v105 || (v106 = v105, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v298 = 0;
                            goto LABEL_106;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v298 = v106;
LABEL_106:
                            v107 = [dictionaryCopy objectForKeyedSubscript:@"jitLmeUsed"];
                            if (!v107 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v289 = v107;
                              v292 = 0;
LABEL_109:
                              v108 = [dictionaryCopy objectForKeyedSubscript:@"aotLmeUsed"];
                              v290 = v108;
                              if (v108 && (v109 = v108, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                              {
                                objc_opt_class();
                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                {
                                  if (!errorCopy3)
                                  {
                                    v291 = 0;
                                    v32 = 0;
                                    v53 = v339;
                                    v78 = v316;
                                    v140 = v289;
                                    goto LABEL_283;
                                  }

                                  v311 = v7;
                                  v145 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  objd = *MEMORY[0x1E698F240];
                                  v388 = *MEMORY[0x1E696A578];
                                  v146 = v17;
                                  v147 = objc_alloc(MEMORY[0x1E696AEC0]);
                                  v254 = objc_opt_class();
                                  v148 = v147;
                                  v17 = v146;
                                  v287 = [v148 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v254, @"aotLmeUsed"];
                                  v389 = v287;
                                  [MEMORY[0x1E695DF20] dictionaryWithObjects:&v389 forKeys:&v388 count:1];
                                  v288 = v7 = v311;
                                  v291 = 0;
                                  v32 = 0;
                                  *errorCopy3 = [v145 initWithDomain:objd code:2 userInfo:?];
                                  goto LABEL_210;
                                }

                                v299 = errorCopy3;
                                v291 = v109;
                              }

                              else
                              {
                                v299 = errorCopy3;
                                v291 = 0;
                              }

                              v110 = [dictionaryCopy objectForKeyedSubscript:@"jitLmeRecognized"];
                              v288 = v110;
                              if (!v110 || (v111 = v110, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v287 = 0;
                                goto LABEL_115;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v287 = v111;
LABEL_115:
                                v112 = [dictionaryCopy objectForKeyedSubscript:@"aotLmeRecognized"];
                                v286 = v112;
                                if (!v112 || (v113 = v112, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v285 = 0;
                                  goto LABEL_118;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v285 = v113;
LABEL_118:
                                  v114 = [dictionaryCopy objectForKeyedSubscript:@"deviceClass"];
                                  v284 = v114;
                                  if (!v114 || (v115 = v114, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v283 = 0;
                                    goto LABEL_121;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v283 = v115;
LABEL_121:
                                    v116 = [dictionaryCopy objectForKeyedSubscript:@"deviceType"];
                                    v282 = v116;
                                    if (!v116 || (v117 = v116, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v281 = 0;
                                      goto LABEL_124;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v281 = v117;
LABEL_124:
                                      v118 = [dictionaryCopy objectForKeyedSubscript:@"deviceBuild"];
                                      v280 = v118;
                                      if (!v118 || (v119 = v118, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v279 = 0;
                                        goto LABEL_127;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v279 = v119;
LABEL_127:
                                        v120 = [dictionaryCopy objectForKeyedSubscript:@"isSiriOptIn"];
                                        v307 = v7;
                                        v278 = v120;
                                        if (!v120 || (v121 = v120, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v277 = 0;
                                          goto LABEL_130;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v277 = v121;
LABEL_130:
                                          v122 = [dictionaryCopy objectForKeyedSubscript:@"isAssistantEnabled"];
                                          v276 = v122;
                                          if (!v122 || (v123 = v122, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v275 = 0;
                                            goto LABEL_133;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v275 = v123;
LABEL_133:
                                            v124 = [dictionaryCopy objectForKeyedSubscript:@"isDictationEnabled"];
                                            v274 = v124;
                                            if (!v124 || (v125 = v124, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v273 = 0;
                                              goto LABEL_136;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v273 = v125;
LABEL_136:
                                              v126 = [dictionaryCopy objectForKeyedSubscript:@"isMultipleDictationKeyboardsInstalled"];
                                              v272 = v126;
                                              if (!v126 || (v127 = v126, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                              {
                                                v271 = 0;
                                                goto LABEL_139;
                                              }

                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v271 = v127;
LABEL_139:
                                                v128 = [dictionaryCopy objectForKeyedSubscript:@"enabledDictationLocales"];
                                                null = [MEMORY[0x1E695DFB0] null];
                                                v130 = [v128 isEqual:null];

                                                if (v130)
                                                {
                                                  v267 = v17;

                                                  v128 = 0;
                                                }

                                                else if (v128)
                                                {
                                                  objc_opt_class();
                                                  obj = v128;
                                                  if ((objc_opt_isKindOfClass() & 1) == 0)
                                                  {
                                                    if (!v299)
                                                    {
                                                      v32 = 0;
                                                      v7 = v307;
                                                      v53 = v339;
                                                      v78 = v316;
                                                      v140 = v289;
                                                      goto LABEL_273;
                                                    }

                                                    v232 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v233 = *MEMORY[0x1E698F240];
                                                    v368 = *MEMORY[0x1E696A578];
                                                    v268 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"enabledDictationLocales"];
                                                    v369 = v268;
                                                    v270 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v369 forKeys:&v368 count:1];
                                                    v234 = [v232 initWithDomain:v233 code:2 userInfo:?];
                                                    v32 = 0;
                                                    *v299 = v234;
                                                    v7 = v307;
                                                    goto LABEL_257;
                                                  }

                                                  v267 = v17;
                                                }

                                                else
                                                {
                                                  v267 = v17;
                                                }

                                                v203 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v128, "count")}];
                                                v352 = 0u;
                                                v353 = 0u;
                                                v354 = 0u;
                                                v355 = 0u;
                                                v204 = v128;
                                                v205 = v203;
                                                obj = v204;
                                                v206 = [v204 countByEnumeratingWithState:&v352 objects:v367 count:16];
                                                v268 = v203;
                                                if (!v206)
                                                {
                                                  goto LABEL_229;
                                                }

                                                v207 = v206;
                                                v208 = *v353;
LABEL_222:
                                                v209 = 0;
                                                while (1)
                                                {
                                                  if (*v353 != v208)
                                                  {
                                                    objc_enumerationMutation(obj);
                                                  }

                                                  v210 = *(*(&v352 + 1) + 8 * v209);
                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    break;
                                                  }

                                                  objc_opt_class();
                                                  if ((objc_opt_isKindOfClass() & 1) == 0)
                                                  {
                                                    v215 = v299;
                                                    if (v299)
                                                    {
                                                      v220 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                      v217 = *MEMORY[0x1E698F240];
                                                      v363 = *MEMORY[0x1E696A578];
                                                      v325 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"enabledDictationLocales"];
                                                      v364 = v325;
                                                      v218 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v364 forKeys:&v363 count:1];
                                                      v219 = v220;
LABEL_235:
                                                      v17 = v267;
                                                      v9 = v343;
                                                      *v215 = [v219 initWithDomain:v217 code:2 userInfo:v218];

                                                      v32 = 0;
                                                      v270 = obj;
LABEL_270:
                                                      v7 = v307;
                                                      goto LABEL_271;
                                                    }

                                                    goto LABEL_236;
                                                  }

                                                  v211 = v210;
                                                  [v205 addObject:v211];

                                                  if (v207 == ++v209)
                                                  {
                                                    v207 = [obj countByEnumeratingWithState:&v352 objects:v367 count:16];
                                                    v9 = v343;
                                                    if (!v207)
                                                    {
LABEL_229:

                                                      v212 = [dictionaryCopy objectForKeyedSubscript:@"activeDictationLanguages"];
                                                      null2 = [MEMORY[0x1E695DFB0] null];
                                                      v214 = [v212 isEqual:null2];

                                                      if (v214)
                                                      {

                                                        v212 = 0;
                                                        goto LABEL_244;
                                                      }

                                                      if (!v212)
                                                      {
LABEL_244:
                                                        v7 = v307;
LABEL_245:
                                                        v325 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v212, "count")}];
                                                        v348 = 0u;
                                                        v349 = 0u;
                                                        v350 = 0u;
                                                        v351 = 0u;
                                                        v270 = v212;
                                                        v226 = [v270 countByEnumeratingWithState:&v348 objects:v360 count:16];
                                                        if (!v226)
                                                        {
                                                          goto LABEL_254;
                                                        }

                                                        v227 = v226;
                                                        v228 = *v349;
LABEL_247:
                                                        v229 = 0;
                                                        while (1)
                                                        {
                                                          if (*v349 != v228)
                                                          {
                                                            objc_enumerationMutation(v270);
                                                          }

                                                          v230 = *(*(&v348 + 1) + 8 * v229);
                                                          objc_opt_class();
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            break;
                                                          }

                                                          objc_opt_class();
                                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                                          {
                                                            v17 = v267;
                                                            v9 = v343;
                                                            if (v299)
                                                            {
                                                              v266 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                              v235 = *MEMORY[0x1E698F240];
                                                              v356 = *MEMORY[0x1E696A578];
                                                              v236 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"activeDictationLanguages"];
                                                              v357 = v236;
                                                              v237 = MEMORY[0x1E695DF20];
                                                              v238 = &v357;
                                                              v239 = &v356;
LABEL_268:
                                                              v240 = [v237 dictionaryWithObjects:v238 forKeys:v239 count:1];
                                                              *v299 = [v266 initWithDomain:v235 code:2 userInfo:v240];
                                                            }

                                                            goto LABEL_269;
                                                          }

                                                          v231 = v230;
                                                          [v325 addObject:v231];

                                                          if (v227 == ++v229)
                                                          {
                                                            v227 = [v270 countByEnumeratingWithState:&v348 objects:v360 count:16];
                                                            v7 = v307;
                                                            v9 = v343;
                                                            v205 = v268;
                                                            if (v227)
                                                            {
                                                              goto LABEL_247;
                                                            }

LABEL_254:

                                                            LODWORD(v265) = [v296 intValue];
                                                            v17 = v267;
                                                            v32 = [(BMASRRequestMetricsRecord *)self initWithAsrId:v7 requestId:v344 timestamp:v267 invocationType:errorCopy4 triggerType:v342 asrTask:v340 bundleId:v335 clientId:v336 geoLMRegionId:v334 locale:v314 audioDurationMs:v302 recognitionDurationMs:v300 completionState:v265 snrRatio:v295 avgPitch:v298 jitLmeUsed:v292 aotLmeUsed:v291 jitLmeRecognized:v287 aotLmeRecognized:v285 deviceClass:v283 deviceType:v281 deviceBuild:v279 isSiriOptIn:v277 isAssistantEnabled:v275 isDictationEnabled:v273 isMultipleDictationKeyboardsInstalled:v271 enabledDictationLocales:v205 activeDictationLanguages:v325];
                                                            self = v32;
LABEL_271:
                                                            v53 = v339;

LABEL_272:
                                                            v78 = v316;
                                                            v140 = v289;

LABEL_273:
LABEL_274:

LABEL_275:
LABEL_276:

LABEL_277:
LABEL_278:

LABEL_279:
LABEL_280:

LABEL_281:
LABEL_282:

LABEL_283:
LABEL_284:

                                                            errorCopy3 = v298;
LABEL_285:

LABEL_286:
LABEL_287:

LABEL_288:
LABEL_289:

LABEL_290:
LABEL_291:

LABEL_292:
                                                            v72 = v335;
LABEL_293:

                                                            error = errorCopy4;
                                                            goto LABEL_294;
                                                          }
                                                        }

                                                        v17 = v267;
                                                        v9 = v343;
                                                        if (v299)
                                                        {
                                                          v266 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                          v235 = *MEMORY[0x1E698F240];
                                                          v358 = *MEMORY[0x1E696A578];
                                                          v236 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"activeDictationLanguages"];
                                                          v359 = v236;
                                                          v237 = MEMORY[0x1E695DF20];
                                                          v238 = &v359;
                                                          v239 = &v358;
                                                          goto LABEL_268;
                                                        }

LABEL_269:

                                                        v32 = 0;
                                                        goto LABEL_270;
                                                      }

                                                      objc_opt_class();
                                                      v270 = v212;
                                                      v7 = v307;
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        goto LABEL_245;
                                                      }

                                                      v17 = v267;
                                                      if (v299)
                                                      {
                                                        v243 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v244 = *MEMORY[0x1E698F240];
                                                        v361 = *MEMORY[0x1E696A578];
                                                        v325 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"activeDictationLanguages"];
                                                        v362 = v325;
                                                        v245 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v362 forKeys:&v361 count:1];
                                                        v246 = v244;
                                                        v7 = v307;
                                                        v9 = v343;
                                                        *v299 = [v243 initWithDomain:v246 code:2 userInfo:v245];

                                                        v32 = 0;
                                                        goto LABEL_271;
                                                      }

                                                      v32 = 0;
LABEL_257:
                                                      v53 = v339;
                                                      goto LABEL_272;
                                                    }

                                                    goto LABEL_222;
                                                  }
                                                }

                                                v215 = v299;
                                                if (v299)
                                                {
                                                  v216 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v217 = *MEMORY[0x1E698F240];
                                                  v365 = *MEMORY[0x1E696A578];
                                                  v325 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"enabledDictationLocales"];
                                                  v366 = v325;
                                                  v218 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v366 forKeys:&v365 count:1];
                                                  v219 = v216;
                                                  goto LABEL_235;
                                                }

LABEL_236:
                                                v32 = 0;
                                                v270 = obj;
                                                v7 = v307;
                                                v17 = v267;
                                                v9 = v343;
                                                goto LABEL_257;
                                              }

                                              if (v299)
                                              {
                                                v221 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v222 = *MEMORY[0x1E698F240];
                                                v370 = *MEMORY[0x1E696A578];
                                                v223 = v17;
                                                v224 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                v264 = objc_opt_class();
                                                v225 = v224;
                                                v17 = v223;
                                                obj = [v225 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v264, @"isMultipleDictationKeyboardsInstalled"];
                                                v371 = obj;
                                                [MEMORY[0x1E695DF20] dictionaryWithObjects:&v371 forKeys:&v370 count:1];
                                                v269 = v7 = v307;
                                                v271 = 0;
                                                v32 = 0;
                                                *v299 = [v221 initWithDomain:v222 code:2 userInfo:?];
                                                v53 = v339;
                                                v78 = v316;
                                                v140 = v289;

                                                goto LABEL_273;
                                              }

                                              v271 = 0;
                                              v32 = 0;
LABEL_304:
                                              v53 = v339;
                                              v78 = v316;
                                              v140 = v289;
                                              goto LABEL_274;
                                            }

                                            if (v299)
                                            {
                                              v198 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v199 = *MEMORY[0x1E698F240];
                                              v372 = *MEMORY[0x1E696A578];
                                              v200 = v17;
                                              v201 = objc_alloc(MEMORY[0x1E696AEC0]);
                                              v263 = objc_opt_class();
                                              v202 = v201;
                                              v17 = v200;
                                              v271 = [v202 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v263, @"isDictationEnabled"];
                                              v373 = v271;
                                              [MEMORY[0x1E695DF20] dictionaryWithObjects:&v373 forKeys:&v372 count:1];
                                              v272 = v7 = v307;
                                              v273 = 0;
                                              v32 = 0;
                                              *v299 = [v198 initWithDomain:v199 code:2 userInfo:?];
                                              goto LABEL_304;
                                            }

                                            v273 = 0;
                                            v32 = 0;
LABEL_302:
                                            v53 = v339;
                                            v78 = v316;
                                            v140 = v289;
                                            goto LABEL_275;
                                          }

                                          if (v299)
                                          {
                                            v193 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v194 = *MEMORY[0x1E698F240];
                                            v374 = *MEMORY[0x1E696A578];
                                            v195 = v17;
                                            v196 = objc_alloc(MEMORY[0x1E696AEC0]);
                                            v262 = objc_opt_class();
                                            v197 = v196;
                                            v17 = v195;
                                            v273 = [v197 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v262, @"isAssistantEnabled"];
                                            v375 = v273;
                                            [MEMORY[0x1E695DF20] dictionaryWithObjects:&v375 forKeys:&v374 count:1];
                                            v274 = v7 = v307;
                                            v275 = 0;
                                            v32 = 0;
                                            *v299 = [v193 initWithDomain:v194 code:2 userInfo:?];
                                            goto LABEL_302;
                                          }

                                          v275 = 0;
                                          v32 = 0;
LABEL_263:
                                          v53 = v339;
                                          v78 = v316;
                                          v140 = v289;
                                          goto LABEL_276;
                                        }

                                        if (v299)
                                        {
                                          v188 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v189 = *MEMORY[0x1E698F240];
                                          v376 = *MEMORY[0x1E696A578];
                                          v190 = v17;
                                          v191 = objc_alloc(MEMORY[0x1E696AEC0]);
                                          v261 = objc_opt_class();
                                          v192 = v191;
                                          v17 = v190;
                                          v275 = [v192 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v261, @"isSiriOptIn"];
                                          v377 = v275;
                                          [MEMORY[0x1E695DF20] dictionaryWithObjects:&v377 forKeys:&v376 count:1];
                                          v276 = v7 = v307;
                                          v277 = 0;
                                          v32 = 0;
                                          *v299 = [v188 initWithDomain:v189 code:2 userInfo:?];
                                          goto LABEL_263;
                                        }

                                        v277 = 0;
                                        v32 = 0;
LABEL_261:
                                        v53 = v339;
                                        v78 = v316;
                                        v140 = v289;
                                        goto LABEL_277;
                                      }

                                      if (v299)
                                      {
                                        objg = dictionaryCopy;
                                        v324 = v6;
                                        v180 = v7;
                                        v181 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v182 = *MEMORY[0x1E698F240];
                                        v378 = *MEMORY[0x1E696A578];
                                        v183 = v17;
                                        v184 = objc_alloc(MEMORY[0x1E696AEC0]);
                                        v260 = objc_opt_class();
                                        v185 = v184;
                                        v17 = v183;
                                        v277 = [v185 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v260, @"deviceBuild"];
                                        v379 = v277;
                                        v186 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v379 forKeys:&v378 count:1];
                                        v187 = v181;
                                        v7 = v180;
                                        v6 = v324;
                                        dictionaryCopy = objg;
                                        v278 = v186;
                                        v279 = 0;
                                        v32 = 0;
                                        *v299 = [v187 initWithDomain:v182 code:2 userInfo:?];
                                        goto LABEL_261;
                                      }

                                      v279 = 0;
                                      v32 = 0;
LABEL_259:
                                      v53 = v339;
                                      v78 = v316;
                                      v140 = v289;
                                      goto LABEL_278;
                                    }

                                    if (v299)
                                    {
                                      objf = dictionaryCopy;
                                      v323 = v6;
                                      v172 = v7;
                                      v173 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v174 = *MEMORY[0x1E698F240];
                                      v380 = *MEMORY[0x1E696A578];
                                      v175 = v17;
                                      v176 = objc_alloc(MEMORY[0x1E696AEC0]);
                                      v259 = objc_opt_class();
                                      v177 = v176;
                                      v17 = v175;
                                      v279 = [v177 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v259, @"deviceType"];
                                      v381 = v279;
                                      v178 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v381 forKeys:&v380 count:1];
                                      v179 = v173;
                                      v7 = v172;
                                      v6 = v323;
                                      dictionaryCopy = objf;
                                      v280 = v178;
                                      v281 = 0;
                                      v32 = 0;
                                      *v299 = [v179 initWithDomain:v174 code:2 userInfo:?];
                                      goto LABEL_259;
                                    }

                                    v281 = 0;
                                    v32 = 0;
LABEL_240:
                                    v53 = v339;
                                    v78 = v316;
                                    v140 = v289;
                                    goto LABEL_279;
                                  }

                                  if (v299)
                                  {
                                    obje = dictionaryCopy;
                                    v322 = v6;
                                    v164 = v7;
                                    v165 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v166 = *MEMORY[0x1E698F240];
                                    v382 = *MEMORY[0x1E696A578];
                                    v167 = v17;
                                    v168 = objc_alloc(MEMORY[0x1E696AEC0]);
                                    v258 = objc_opt_class();
                                    v169 = v168;
                                    v17 = v167;
                                    v281 = [v169 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v258, @"deviceClass"];
                                    v383 = v281;
                                    v170 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v383 forKeys:&v382 count:1];
                                    v171 = v165;
                                    v7 = v164;
                                    v6 = v322;
                                    dictionaryCopy = obje;
                                    v282 = v170;
                                    v283 = 0;
                                    v32 = 0;
                                    *v299 = [v171 initWithDomain:v166 code:2 userInfo:?];
                                    goto LABEL_240;
                                  }

                                  v283 = 0;
                                  v32 = 0;
LABEL_218:
                                  v53 = v339;
                                  v78 = v316;
                                  v140 = v289;
                                  goto LABEL_280;
                                }

                                if (v299)
                                {
                                  v313 = v7;
                                  v159 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v160 = *MEMORY[0x1E698F240];
                                  v384 = *MEMORY[0x1E696A578];
                                  v161 = v17;
                                  v162 = objc_alloc(MEMORY[0x1E696AEC0]);
                                  v257 = objc_opt_class();
                                  v163 = v162;
                                  v17 = v161;
                                  v283 = [v163 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v257, @"aotLmeRecognized"];
                                  v385 = v283;
                                  [MEMORY[0x1E695DF20] dictionaryWithObjects:&v385 forKeys:&v384 count:1];
                                  v284 = v7 = v313;
                                  v285 = 0;
                                  v32 = 0;
                                  *v299 = [v159 initWithDomain:v160 code:2 userInfo:?];
                                  goto LABEL_218;
                                }

                                v285 = 0;
                                v32 = 0;
LABEL_214:
                                v53 = v339;
                                v78 = v316;
                                v140 = v289;
                                goto LABEL_281;
                              }

                              if (v299)
                              {
                                v312 = v7;
                                v154 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v155 = *MEMORY[0x1E698F240];
                                v386 = *MEMORY[0x1E696A578];
                                v156 = v17;
                                v157 = objc_alloc(MEMORY[0x1E696AEC0]);
                                v256 = objc_opt_class();
                                v158 = v157;
                                v17 = v156;
                                v285 = [v158 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v256, @"jitLmeRecognized"];
                                v387 = v285;
                                [MEMORY[0x1E695DF20] dictionaryWithObjects:&v387 forKeys:&v386 count:1];
                                v286 = v7 = v312;
                                v287 = 0;
                                v32 = 0;
                                *v299 = [v154 initWithDomain:v155 code:2 userInfo:?];
                                goto LABEL_214;
                              }

                              v287 = 0;
                              v32 = 0;
LABEL_210:
                              v53 = v339;
                              v78 = v316;
                              v140 = v289;
                              goto LABEL_282;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v289 = v107;
                              v292 = v107;
                              goto LABEL_109;
                            }

                            v141 = errorCopy3;
                            v140 = v107;
                            if (v141)
                            {
                              v310 = v7;
                              objc = objc_alloc(MEMORY[0x1E696ABC0]);
                              v321 = *MEMORY[0x1E698F240];
                              v390 = *MEMORY[0x1E696A578];
                              v142 = v17;
                              v143 = objc_alloc(MEMORY[0x1E696AEC0]);
                              v253 = objc_opt_class();
                              v144 = v143;
                              v17 = v142;
                              v291 = [v144 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v253, @"jitLmeUsed"];
                              v391 = v291;
                              [MEMORY[0x1E695DF20] dictionaryWithObjects:&v391 forKeys:&v390 count:1];
                              v290 = v7 = v310;
                              v292 = 0;
                              v32 = 0;
                              *v141 = [objc initWithDomain:v321 code:2 userInfo:?];
                              v53 = v339;
                              v78 = v316;
                              goto LABEL_283;
                            }

                            v292 = 0;
                            v32 = 0;
LABEL_199:
                            v53 = v339;
                            v78 = v316;
                            goto LABEL_284;
                          }

                          if (errorCopy3)
                          {
                            v309 = v7;
                            v135 = objc_alloc(MEMORY[0x1E696ABC0]);
                            objb = *MEMORY[0x1E698F240];
                            v392 = *MEMORY[0x1E696A578];
                            v136 = v17;
                            v137 = errorCopy3;
                            v138 = objc_alloc(MEMORY[0x1E696AEC0]);
                            v252 = objc_opt_class();
                            v139 = v138;
                            v17 = v136;
                            v292 = [v139 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v252, @"avgPitch"];
                            v393 = v292;
                            v140 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v393 forKeys:&v392 count:1];
                            v7 = v309;
                            v298 = 0;
                            v32 = 0;
                            *v137 = [v135 initWithDomain:objb code:2 userInfo:v140];
                            goto LABEL_199;
                          }

                          v32 = 0;
LABEL_193:
                          v53 = v339;
                          v78 = v316;
                          goto LABEL_285;
                        }

                        if (errorCopy3)
                        {
                          v308 = v7;
                          obja = objc_alloc(MEMORY[0x1E696ABC0]);
                          v320 = *MEMORY[0x1E698F240];
                          v394 = *MEMORY[0x1E696A578];
                          v131 = v17;
                          v132 = errorCopy3;
                          v133 = objc_alloc(MEMORY[0x1E696AEC0]);
                          v251 = objc_opt_class();
                          v134 = v133;
                          v17 = v131;
                          errorCopy3 = [v134 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v251, @"snrRatio"];
                          v395 = errorCopy3;
                          [MEMORY[0x1E695DF20] dictionaryWithObjects:&v395 forKeys:&v394 count:1];
                          v293 = v7 = v308;
                          v295 = 0;
                          v32 = 0;
                          *v132 = [obja initWithDomain:v320 code:2 userInfo:?];
                          goto LABEL_193;
                        }

                        v295 = 0;
                        v32 = 0;
LABEL_184:
                        v53 = v339;
                        v78 = v316;
                        goto LABEL_286;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v102 = v26;
                        v296 = [MEMORY[0x1E696AD98] numberWithInt:BMASRRequestMetricsRecordCompletionStateFromString(v102)];

                        goto LABEL_99;
                      }

                      if (errorCopy3)
                      {
                        v149 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v150 = *MEMORY[0x1E698F240];
                        v396 = *MEMORY[0x1E696A578];
                        v151 = v17;
                        v152 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v255 = objc_opt_class();
                        v153 = v152;
                        v17 = v151;
                        v295 = [v153 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", v255, @"completionState"];
                        v397 = v295;
                        v294 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v397 forKeys:&v396 count:1];
                        v296 = 0;
                        v32 = 0;
                        *errorCopy3 = [v149 initWithDomain:v150 code:2 userInfo:?];
                        v7 = v305;
                        goto LABEL_184;
                      }

                      v296 = 0;
                      v32 = 0;
LABEL_208:
                      v53 = v339;
                      v78 = v316;
                      goto LABEL_287;
                    }

                    if (errorCopy3)
                    {
                      v306 = v7;
                      v97 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v98 = *MEMORY[0x1E698F240];
                      v398 = *MEMORY[0x1E696A578];
                      v99 = v17;
                      v100 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v250 = objc_opt_class();
                      v101 = v100;
                      v17 = v99;
                      v296 = [v101 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v250, @"recognitionDurationMs"];
                      v399 = v296;
                      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v399 forKeys:&v398 count:1];
                      v297 = v7 = v306;
                      v300 = 0;
                      v32 = 0;
                      *errorCopy3 = [v97 initWithDomain:v98 code:2 userInfo:?];
                      goto LABEL_208;
                    }

                    v300 = 0;
                    v32 = 0;
LABEL_178:
                    v53 = v339;
                    v78 = v316;
                    goto LABEL_288;
                  }

                  if (errorCopy3)
                  {
                    v92 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v93 = *MEMORY[0x1E698F240];
                    v400 = *MEMORY[0x1E696A578];
                    v94 = v18;
                    v95 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v249 = objc_opt_class();
                    v96 = v95;
                    v18 = v94;
                    v9 = v343;
                    v300 = [v96 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v249, @"audioDurationMs"];
                    v401 = v300;
                    v301 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v401 forKeys:&v400 count:1];
                    v302 = 0;
                    v32 = 0;
                    *errorCopy3 = [v92 initWithDomain:v93 code:2 userInfo:?];
                    goto LABEL_178;
                  }

                  v302 = 0;
                  v32 = 0;
LABEL_170:
                  v53 = v339;
                  v78 = v316;
                  goto LABEL_289;
                }

                if (errorCopy3)
                {
                  v87 = v7;
                  v88 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v89 = *MEMORY[0x1E698F240];
                  v402 = *MEMORY[0x1E696A578];
                  v302 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"locale"];
                  v403 = v302;
                  v90 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v403 forKeys:&v402 count:1];
                  v91 = v88;
                  v7 = v87;
                  v303 = v90;
                  v314 = 0;
                  v32 = 0;
                  *errorCopy3 = [v91 initWithDomain:v89 code:2 userInfo:?];
                  goto LABEL_170;
                }

                v314 = 0;
                v32 = 0;
LABEL_164:
                v53 = v339;
                v78 = v316;
                goto LABEL_290;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v335 = v15;
                goto LABEL_22;
              }

              if (errorCopy3)
              {
                v73 = v7;
                v74 = objc_alloc(MEMORY[0x1E696ABC0]);
                v75 = *MEMORY[0x1E698F240];
                v408 = *MEMORY[0x1E696A578];
                v17 = v8;
                v336 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleId"];
                v409 = v336;
                v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v409 forKeys:&v408 count:1];
                v77 = v74;
                v7 = v73;
                v78 = v76;
                v72 = 0;
                v32 = 0;
                *errorCopy3 = [v77 initWithDomain:v75 code:2 userInfo:v76];
                v53 = v339;
                goto LABEL_293;
              }

              v32 = 0;
              v53 = v339;
              v17 = v8;
              v72 = 0;
LABEL_294:

              goto LABEL_295;
            }

            v17 = v8;
            if (errorCopy3)
            {
              v318 = v6;
              errorCopy5 = error;
              v66 = v7;
              v67 = objc_alloc(MEMORY[0x1E696ABC0]);
              v68 = *MEMORY[0x1E698F240];
              v410 = *MEMORY[0x1E696A578];
              v69 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"asrTask"];
              v411 = v69;
              v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v411 forKeys:&v410 count:1];
              v71 = v67;
              v7 = v66;
              error = errorCopy5;
              v6 = v318;
              v338 = v70;
              v340 = 0;
              v32 = 0;
              *errorCopy3 = [v71 initWithDomain:v68 code:2 userInfo:?];
              v72 = v69;
              v9 = v343;
              v53 = v339;
              goto LABEL_294;
            }

            v340 = 0;
            v32 = 0;
            v53 = v339;
LABEL_295:

            goto LABEL_296;
          }

          v53 = v11;
          if (errorCopy3)
          {
            v317 = v6;
            v304 = v7;
            v56 = objc_alloc(MEMORY[0x1E696ABC0]);
            errorCopy6 = error;
            v58 = *MEMORY[0x1E698F240];
            v412 = *MEMORY[0x1E696A578];
            v59 = objc_alloc(MEMORY[0x1E696AEC0]);
            v248 = objc_opt_class();
            v60 = v59;
            v61 = errorCopy6;
            v17 = v8;
            v340 = [v60 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v248, @"triggerType"];
            v413 = v340;
            v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v413 forKeys:&v412 count:1];
            v63 = v56;
            v7 = v304;
            v6 = v317;
            v64 = v58;
            error = v61;
            v341 = v62;
            v342 = 0;
            v32 = 0;
            *errorCopy3 = [v63 initWithDomain:v64 code:2 userInfo:?];
            goto LABEL_295;
          }

          v342 = 0;
          v32 = 0;
          v17 = v8;
LABEL_296:

          goto LABEL_297;
        }

        if (error)
        {
          v45 = v7;
          v46 = objc_alloc(MEMORY[0x1E696ABC0]);
          v47 = *MEMORY[0x1E698F240];
          v414 = *MEMORY[0x1E696A578];
          v48 = objc_alloc(MEMORY[0x1E696AEC0]);
          v247 = objc_opt_class();
          v49 = v48;
          v17 = v8;
          v342 = [v49 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v247, @"invocationType"];
          v415 = v342;
          v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v415 forKeys:&v414 count:1];
          v51 = v46;
          v7 = v45;
          v52 = v47;
          v53 = v50;
          v54 = [v51 initWithDomain:v52 code:2 userInfo:v50];
          errorCopy7 = error;
          error = 0;
          v32 = 0;
          *errorCopy7 = v54;
          goto LABEL_296;
        }

        v32 = 0;
        v17 = v8;
LABEL_297:

        goto LABEL_298;
      }

      if (error)
      {
        v39 = v7;
        v40 = objc_alloc(MEMORY[0x1E696ABC0]);
        v41 = *MEMORY[0x1E698F240];
        v416 = *MEMORY[0x1E696A578];
        v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"timestamp"];
        v417 = v42;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v417 forKeys:&v416 count:1];
        v43 = v40;
        v7 = v39;
        errorCopy8 = error;
        error = v42;
        v17 = 0;
        v32 = 0;
        *errorCopy8 = [v43 initWithDomain:v41 code:2 userInfo:v9];
        goto LABEL_297;
      }

      v17 = 0;
      v32 = 0;
LABEL_298:

      goto LABEL_299;
    }

    if (error)
    {
      v33 = v7;
      v34 = objc_alloc(MEMORY[0x1E696ABC0]);
      v35 = *MEMORY[0x1E698F240];
      v418 = *MEMORY[0x1E696A578];
      v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"requestId"];
      v419 = v36;
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v419 forKeys:&v418 count:1];
      v38 = v34;
      v7 = v33;
      v346 = v37;
      v344 = 0;
      v32 = 0;
      *errorCopy = [v38 initWithDomain:v35 code:2 userInfo:?];
      v17 = v36;
      goto LABEL_298;
    }

    v344 = 0;
    v32 = 0;
LABEL_299:

    goto LABEL_300;
  }

  if (error)
  {
    v28 = objc_alloc(MEMORY[0x1E696ABC0]);
    errorCopy9 = error;
    v30 = *MEMORY[0x1E698F240];
    v420 = *MEMORY[0x1E696A578];
    v344 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"asrId"];
    v421[0] = v344;
    v347 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v421 forKeys:&v420 count:1];
    v31 = [v28 initWithDomain:v30 code:2 userInfo:?];
    v7 = 0;
    v32 = 0;
    *errorCopy9 = v31;
    goto LABEL_299;
  }

  v7 = 0;
  v32 = 0;
LABEL_300:

  v241 = *MEMORY[0x1E69E9840];
  return v32;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMASRRequestMetricsRecord *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v42 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_asrId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_requestId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasTimestamp)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_invocationType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_triggerType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_asrTask)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_clientId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_geoLMRegionId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_locale)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasAudioDurationMs)
  {
    audioDurationMs = self->_audioDurationMs;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasRecognitionDurationMs)
  {
    recognitionDurationMs = self->_recognitionDurationMs;
    PBDataWriterWriteUint32Field();
  }

  completionState = self->_completionState;
  PBDataWriterWriteUint32Field();
  if (self->_hasSnrRatio)
  {
    snrRatio = self->_snrRatio;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasAvgPitch)
  {
    avgPitch = self->_avgPitch;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasJitLmeUsed)
  {
    jitLmeUsed = self->_jitLmeUsed;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasAotLmeUsed)
  {
    aotLmeUsed = self->_aotLmeUsed;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasJitLmeRecognized)
  {
    jitLmeRecognized = self->_jitLmeRecognized;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasAotLmeRecognized)
  {
    aotLmeRecognized = self->_aotLmeRecognized;
    PBDataWriterWriteBOOLField();
  }

  if (self->_deviceClass)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceBuild)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasIsSiriOptIn)
  {
    isSiriOptIn = self->_isSiriOptIn;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsAssistantEnabled)
  {
    isAssistantEnabled = self->_isAssistantEnabled;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsDictationEnabled)
  {
    isDictationEnabled = self->_isDictationEnabled;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsMultipleDictationKeyboardsInstalled)
  {
    isMultipleDictationKeyboardsInstalled = self->_isMultipleDictationKeyboardsInstalled;
    PBDataWriterWriteBOOLField();
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v19 = self->_enabledDictationLocales;
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v37;
    do
    {
      v23 = 0;
      do
      {
        if (*v37 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v36 + 1) + 8 * v23);
        PBDataWriterWriteStringField();
        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSArray *)v19 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v21);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v25 = self->_activeDictationLanguages;
  v26 = [(NSArray *)v25 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v33;
    do
    {
      v29 = 0;
      do
      {
        if (*v33 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v32 + 1) + 8 * v29);
        PBDataWriterWriteStringField();
        ++v29;
      }

      while (v27 != v29);
      v27 = [(NSArray *)v25 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v27);
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v117.receiver = self;
  v117.super_class = BMASRRequestMetricsRecord;
  v5 = [(BMEventBase *)&v117 init];
  if (!v5)
  {
    goto LABEL_184;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  while (1)
  {
    position = [fromCopy position];
    if (position >= [fromCopy length] || (objc_msgSend(fromCopy, "hasError") & 1) != 0)
    {
      break;
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      LOBYTE(v118) = 0;
      v12 = [fromCopy position] + 1;
      if (v12 >= [fromCopy position] && (v13 = objc_msgSend(fromCopy, "position") + 1, v13 <= objc_msgSend(fromCopy, "length")))
      {
        data = [fromCopy data];
        [data getBytes:&v118 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v11 |= (LOBYTE(v118) & 0x7F) << v9;
      if ((LOBYTE(v118) & 0x80) == 0)
      {
        break;
      }

      v9 += 7;
      v15 = v10++ >= 9;
      if (v15)
      {
        v16 = 0;
        goto LABEL_17;
      }
    }

    v16 = [fromCopy hasError] ? 0 : v11;
LABEL_17:
    if (([fromCopy hasError] & 1) != 0 || (v16 & 7) == 4)
    {
      break;
    }

    switch((v16 >> 3))
    {
      case 1u:
        v17 = PBReaderReadString();
        v18 = 56;
        goto LABEL_133;
      case 2u:
        v17 = PBReaderReadString();
        v18 = 64;
        goto LABEL_133;
      case 3u:
        v5->_hasTimestamp = 1;
        v118 = 0.0;
        v59 = [fromCopy position] + 8;
        if (v59 >= [fromCopy position] && (v60 = objc_msgSend(fromCopy, "position") + 8, v60 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:&v118 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_timestamp = v118;
        continue;
      case 4u:
        v17 = PBReaderReadString();
        v18 = 80;
        goto LABEL_133;
      case 5u:
        v17 = PBReaderReadString();
        v18 = 88;
        goto LABEL_133;
      case 6u:
        v17 = PBReaderReadString();
        v18 = 96;
        goto LABEL_133;
      case 7u:
        v17 = PBReaderReadString();
        v18 = 104;
        goto LABEL_133;
      case 8u:
        v17 = PBReaderReadString();
        v18 = 112;
        goto LABEL_133;
      case 9u:
        v17 = PBReaderReadString();
        v18 = 120;
        goto LABEL_133;
      case 0xAu:
        v17 = PBReaderReadString();
        v18 = 128;
        goto LABEL_133;
      case 0xBu:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        v5->_hasAudioDurationMs = 1;
        while (1)
        {
          LOBYTE(v118) = 0;
          v87 = [fromCopy position] + 1;
          if (v87 >= [fromCopy position] && (v88 = objc_msgSend(fromCopy, "position") + 1, v88 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v118 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v86 |= (LOBYTE(v118) & 0x7F) << v84;
          if ((LOBYTE(v118) & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v15 = v85++ >= 9;
          if (v15)
          {
            v90 = 0;
            goto LABEL_171;
          }
        }

        if ([fromCopy hasError])
        {
          v90 = 0;
        }

        else
        {
          v90 = v86;
        }

LABEL_171:
        v5->_audioDurationMs = v90;
        continue;
      case 0xCu:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v5->_hasRecognitionDurationMs = 1;
        while (1)
        {
          LOBYTE(v118) = 0;
          v34 = [fromCopy position] + 1;
          if (v34 >= [fromCopy position] && (v35 = objc_msgSend(fromCopy, "position") + 1, v35 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v118 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v33 |= (LOBYTE(v118) & 0x7F) << v31;
          if ((LOBYTE(v118) & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v15 = v32++ >= 9;
          if (v15)
          {
            v37 = 0;
            goto LABEL_153;
          }
        }

        if ([fromCopy hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v33;
        }

LABEL_153:
        v5->_recognitionDurationMs = v37;
        continue;
      case 0xDu:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        while (1)
        {
          LOBYTE(v118) = 0;
          v41 = [fromCopy position] + 1;
          if (v41 >= [fromCopy position] && (v42 = objc_msgSend(fromCopy, "position") + 1, v42 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v118 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v40 |= (LOBYTE(v118) & 0x7F) << v38;
          if ((LOBYTE(v118) & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          if (v39++ > 8)
          {
            goto LABEL_156;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v40 > 5)
        {
LABEL_156:
          LODWORD(v40) = 0;
        }

        v5->_completionState = v40;
        continue;
      case 0xEu:
        v5->_hasSnrRatio = 1;
        v118 = 0.0;
        v75 = [fromCopy position] + 8;
        if (v75 >= [fromCopy position] && (v76 = objc_msgSend(fromCopy, "position") + 8, v76 <= objc_msgSend(fromCopy, "length")))
        {
          data6 = [fromCopy data];
          [data6 getBytes:&v118 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_snrRatio = v118;
        continue;
      case 0xFu:
        v5->_hasAvgPitch = 1;
        v118 = 0.0;
        v29 = [fromCopy position] + 8;
        if (v29 >= [fromCopy position] && (v30 = objc_msgSend(fromCopy, "position") + 8, v30 <= objc_msgSend(fromCopy, "length")))
        {
          data7 = [fromCopy data];
          [data7 getBytes:&v118 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_avgPitch = v118;
        continue;
      case 0x10u:
        v61 = 0;
        v62 = 0;
        v63 = 0;
        v5->_hasJitLmeUsed = 1;
        while (1)
        {
          LOBYTE(v118) = 0;
          v64 = [fromCopy position] + 1;
          if (v64 >= [fromCopy position] && (v65 = objc_msgSend(fromCopy, "position") + 1, v65 <= objc_msgSend(fromCopy, "length")))
          {
            data8 = [fromCopy data];
            [data8 getBytes:&v118 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v63 |= (LOBYTE(v118) & 0x7F) << v61;
          if ((LOBYTE(v118) & 0x80) == 0)
          {
            break;
          }

          v61 += 7;
          v15 = v62++ >= 9;
          if (v15)
          {
            LOBYTE(v67) = 0;
            goto LABEL_163;
          }
        }

        v67 = (v63 != 0) & ~[fromCopy hasError];
LABEL_163:
        v5->_jitLmeUsed = v67;
        continue;
      case 0x11u:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v5->_hasAotLmeUsed = 1;
        while (1)
        {
          LOBYTE(v118) = 0;
          v25 = [fromCopy position] + 1;
          if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 1, v26 <= objc_msgSend(fromCopy, "length")))
          {
            data9 = [fromCopy data];
            [data9 getBytes:&v118 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v24 |= (LOBYTE(v118) & 0x7F) << v22;
          if ((LOBYTE(v118) & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v15 = v23++ >= 9;
          if (v15)
          {
            LOBYTE(v28) = 0;
            goto LABEL_149;
          }
        }

        v28 = (v24 != 0) & ~[fromCopy hasError];
LABEL_149:
        v5->_aotLmeUsed = v28;
        continue;
      case 0x12u:
        v68 = 0;
        v69 = 0;
        v70 = 0;
        v5->_hasJitLmeRecognized = 1;
        while (1)
        {
          LOBYTE(v118) = 0;
          v71 = [fromCopy position] + 1;
          if (v71 >= [fromCopy position] && (v72 = objc_msgSend(fromCopy, "position") + 1, v72 <= objc_msgSend(fromCopy, "length")))
          {
            data10 = [fromCopy data];
            [data10 getBytes:&v118 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v70 |= (LOBYTE(v118) & 0x7F) << v68;
          if ((LOBYTE(v118) & 0x80) == 0)
          {
            break;
          }

          v68 += 7;
          v15 = v69++ >= 9;
          if (v15)
          {
            LOBYTE(v74) = 0;
            goto LABEL_165;
          }
        }

        v74 = (v70 != 0) & ~[fromCopy hasError];
LABEL_165:
        v5->_jitLmeRecognized = v74;
        continue;
      case 0x13u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        v5->_hasAotLmeRecognized = 1;
        while (1)
        {
          LOBYTE(v118) = 0;
          v80 = [fromCopy position] + 1;
          if (v80 >= [fromCopy position] && (v81 = objc_msgSend(fromCopy, "position") + 1, v81 <= objc_msgSend(fromCopy, "length")))
          {
            data11 = [fromCopy data];
            [data11 getBytes:&v118 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v79 |= (LOBYTE(v118) & 0x7F) << v77;
          if ((LOBYTE(v118) & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v15 = v78++ >= 9;
          if (v15)
          {
            LOBYTE(v83) = 0;
            goto LABEL_167;
          }
        }

        v83 = (v79 != 0) & ~[fromCopy hasError];
LABEL_167:
        v5->_aotLmeRecognized = v83;
        continue;
      case 0x14u:
        v17 = PBReaderReadString();
        v18 = 152;
        goto LABEL_133;
      case 0x15u:
        v17 = PBReaderReadString();
        v18 = 160;
        goto LABEL_133;
      case 0x16u:
        v17 = PBReaderReadString();
        v18 = 168;
LABEL_133:
        v98 = *(&v5->super.super.isa + v18);
        *(&v5->super.super.isa + v18) = v17;

        continue;
      case 0x17u:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        v5->_hasIsSiriOptIn = 1;
        while (1)
        {
          LOBYTE(v118) = 0;
          v94 = [fromCopy position] + 1;
          if (v94 >= [fromCopy position] && (v95 = objc_msgSend(fromCopy, "position") + 1, v95 <= objc_msgSend(fromCopy, "length")))
          {
            data12 = [fromCopy data];
            [data12 getBytes:&v118 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v93 |= (LOBYTE(v118) & 0x7F) << v91;
          if ((LOBYTE(v118) & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v15 = v92++ >= 9;
          if (v15)
          {
            LOBYTE(v97) = 0;
            goto LABEL_173;
          }
        }

        v97 = (v93 != 0) & ~[fromCopy hasError];
LABEL_173:
        v5->_isSiriOptIn = v97;
        continue;
      case 0x18u:
        v99 = 0;
        v100 = 0;
        v101 = 0;
        v5->_hasIsAssistantEnabled = 1;
        while (1)
        {
          LOBYTE(v118) = 0;
          v102 = [fromCopy position] + 1;
          if (v102 >= [fromCopy position] && (v103 = objc_msgSend(fromCopy, "position") + 1, v103 <= objc_msgSend(fromCopy, "length")))
          {
            data13 = [fromCopy data];
            [data13 getBytes:&v118 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v101 |= (LOBYTE(v118) & 0x7F) << v99;
          if ((LOBYTE(v118) & 0x80) == 0)
          {
            break;
          }

          v99 += 7;
          v15 = v100++ >= 9;
          if (v15)
          {
            LOBYTE(v105) = 0;
            goto LABEL_175;
          }
        }

        v105 = (v101 != 0) & ~[fromCopy hasError];
LABEL_175:
        v5->_isAssistantEnabled = v105;
        continue;
      case 0x19u:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v5->_hasIsDictationEnabled = 1;
        while (1)
        {
          LOBYTE(v118) = 0;
          v55 = [fromCopy position] + 1;
          if (v55 >= [fromCopy position] && (v56 = objc_msgSend(fromCopy, "position") + 1, v56 <= objc_msgSend(fromCopy, "length")))
          {
            data14 = [fromCopy data];
            [data14 getBytes:&v118 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v54 |= (LOBYTE(v118) & 0x7F) << v52;
          if ((LOBYTE(v118) & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v15 = v53++ >= 9;
          if (v15)
          {
            LOBYTE(v58) = 0;
            goto LABEL_161;
          }
        }

        v58 = (v54 != 0) & ~[fromCopy hasError];
LABEL_161:
        v5->_isDictationEnabled = v58;
        continue;
      case 0x1Au:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        v5->_hasIsMultipleDictationKeyboardsInstalled = 1;
        break;
      case 0x1Bu:
        v106 = PBReaderReadString();
        if (!v106)
        {
          goto LABEL_186;
        }

        v20 = v106;
        v21 = v6;
        goto LABEL_147;
      case 0x1Cu:
        v19 = PBReaderReadString();
        if (!v19)
        {
          goto LABEL_186;
        }

        v20 = v19;
        v21 = v7;
LABEL_147:
        [v21 addObject:v20];

        continue;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

LABEL_186:

        goto LABEL_183;
    }

    while (1)
    {
      LOBYTE(v118) = 0;
      v48 = [fromCopy position] + 1;
      if (v48 >= [fromCopy position] && (v49 = objc_msgSend(fromCopy, "position") + 1, v49 <= objc_msgSend(fromCopy, "length")))
      {
        data15 = [fromCopy data];
        [data15 getBytes:&v118 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v47 |= (LOBYTE(v118) & 0x7F) << v45;
      if ((LOBYTE(v118) & 0x80) == 0)
      {
        break;
      }

      v45 += 7;
      v15 = v46++ >= 9;
      if (v15)
      {
        LOBYTE(v51) = 0;
        goto LABEL_159;
      }
    }

    v51 = (v47 != 0) & ~[fromCopy hasError];
LABEL_159:
    v5->_isMultipleDictationKeyboardsInstalled = v51;
  }

  v110 = [v6 copy];
  enabledDictationLocales = v5->_enabledDictationLocales;
  v5->_enabledDictationLocales = v110;

  v112 = [v7 copy];
  activeDictationLanguages = v5->_activeDictationLanguages;
  v5->_activeDictationLanguages = v112;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_183:
    v115 = 0;
  }

  else
  {
LABEL_184:
    v115 = v5;
  }

  return v115;
}

- (NSString)description
{
  v23 = objc_alloc(MEMORY[0x1E696AEC0]);
  asrId = [(BMASRRequestMetricsRecord *)self asrId];
  requestId = [(BMASRRequestMetricsRecord *)self requestId];
  v3 = MEMORY[0x1E696AD98];
  [(BMASRRequestMetricsRecord *)self timestamp];
  v34 = [v3 numberWithDouble:?];
  invocationType = [(BMASRRequestMetricsRecord *)self invocationType];
  triggerType = [(BMASRRequestMetricsRecord *)self triggerType];
  asrTask = [(BMASRRequestMetricsRecord *)self asrTask];
  bundleId = [(BMASRRequestMetricsRecord *)self bundleId];
  clientId = [(BMASRRequestMetricsRecord *)self clientId];
  geoLMRegionId = [(BMASRRequestMetricsRecord *)self geoLMRegionId];
  locale = [(BMASRRequestMetricsRecord *)self locale];
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMASRRequestMetricsRecord audioDurationMs](self, "audioDurationMs")}];
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMASRRequestMetricsRecord recognitionDurationMs](self, "recognitionDurationMs")}];
  v19 = BMASRRequestMetricsRecordCompletionStateAsString([(BMASRRequestMetricsRecord *)self completionState]);
  v4 = MEMORY[0x1E696AD98];
  [(BMASRRequestMetricsRecord *)self snrRatio];
  v27 = [v4 numberWithDouble:?];
  v5 = MEMORY[0x1E696AD98];
  [(BMASRRequestMetricsRecord *)self avgPitch];
  v26 = [v5 numberWithDouble:?];
  v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMASRRequestMetricsRecord jitLmeUsed](self, "jitLmeUsed")}];
  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMASRRequestMetricsRecord aotLmeUsed](self, "aotLmeUsed")}];
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMASRRequestMetricsRecord jitLmeRecognized](self, "jitLmeRecognized")}];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMASRRequestMetricsRecord aotLmeRecognized](self, "aotLmeRecognized")}];
  deviceClass = [(BMASRRequestMetricsRecord *)self deviceClass];
  deviceType = [(BMASRRequestMetricsRecord *)self deviceType];
  deviceBuild = [(BMASRRequestMetricsRecord *)self deviceBuild];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMASRRequestMetricsRecord isSiriOptIn](self, "isSiriOptIn")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMASRRequestMetricsRecord isAssistantEnabled](self, "isAssistantEnabled")}];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMASRRequestMetricsRecord isDictationEnabled](self, "isDictationEnabled")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMASRRequestMetricsRecord isMultipleDictationKeyboardsInstalled](self, "isMultipleDictationKeyboardsInstalled")}];
  enabledDictationLocales = [(BMASRRequestMetricsRecord *)self enabledDictationLocales];
  activeDictationLanguages = [(BMASRRequestMetricsRecord *)self activeDictationLanguages];
  v24 = [v23 initWithFormat:@"BMASRRequestMetricsRecord with asrId: %@, requestId: %@, timestamp: %@, invocationType: %@, triggerType: %@, asrTask: %@, bundleId: %@, clientId: %@, geoLMRegionId: %@, locale: %@, audioDurationMs: %@, recognitionDurationMs: %@, completionState: %@, snrRatio: %@, avgPitch: %@, jitLmeUsed: %@, aotLmeUsed: %@, jitLmeRecognized: %@, aotLmeRecognized: %@, deviceClass: %@, deviceType: %@, deviceBuild: %@, isSiriOptIn: %@, isAssistantEnabled: %@, isDictationEnabled: %@, isMultipleDictationKeyboardsInstalled: %@, enabledDictationLocales: %@, activeDictationLanguages: %@", asrId, requestId, v34, invocationType, triggerType, asrTask, bundleId, clientId, geoLMRegionId, locale, v20, v28, v19, v27, v26, v25, v18, v17, v15, deviceClass, deviceType, deviceBuild, v12, v11, v6, v7, enabledDictationLocales, activeDictationLanguages];

  return v24;
}

- (BMASRRequestMetricsRecord)initWithAsrId:(id)id requestId:(id)requestId timestamp:(id)timestamp invocationType:(id)type triggerType:(id)triggerType asrTask:(id)task bundleId:(id)bundleId clientId:(id)self0 geoLMRegionId:(id)self1 locale:(id)self2 audioDurationMs:(id)self3 recognitionDurationMs:(id)self4 completionState:(int)self5 snrRatio:(id)self6 avgPitch:(id)self7 jitLmeUsed:(id)self8 aotLmeUsed:(id)self9 jitLmeRecognized:(id)recognized aotLmeRecognized:(id)lmeRecognized deviceClass:(id)class deviceType:(id)deviceType deviceBuild:(id)build isSiriOptIn:(id)in isAssistantEnabled:(id)enabled isDictationEnabled:(id)dictationEnabled isMultipleDictationKeyboardsInstalled:(id)installed enabledDictationLocales:(id)locales activeDictationLanguages:(id)id0
{
  idCopy = id;
  requestIdCopy = requestId;
  requestIdCopy2 = requestId;
  timestampCopy = timestamp;
  typeCopy = type;
  typeCopy2 = type;
  triggerTypeCopy = triggerType;
  triggerTypeCopy2 = triggerType;
  taskCopy = task;
  taskCopy2 = task;
  bundleIdCopy = bundleId;
  clientIdCopy = clientId;
  regionIdCopy = regionId;
  localeCopy = locale;
  msCopy = ms;
  durationMsCopy = durationMs;
  ratioCopy = ratio;
  pitchCopy = pitch;
  usedCopy = used;
  lmeUsedCopy = lmeUsed;
  recognizedCopy = recognized;
  lmeRecognizedCopy = lmeRecognized;
  classCopy = class;
  deviceTypeCopy = deviceType;
  buildCopy = build;
  inCopy = in;
  enabledCopy = enabled;
  dictationEnabledCopy = dictationEnabled;
  installedCopy = installed;
  localesCopy = locales;
  languagesCopy = languages;
  v75.receiver = self;
  v75.super_class = BMASRRequestMetricsRecord;
  v42 = [(BMEventBase *)&v75 init];
  if (v42)
  {
    v42->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v42->_asrId, id);
    objc_storeStrong(&v42->_requestId, requestIdCopy);
    if (timestampCopy)
    {
      v42->_hasTimestamp = 1;
      [timestampCopy doubleValue];
    }

    else
    {
      v42->_hasTimestamp = 0;
      v43 = -1.0;
    }

    v42->_timestamp = v43;
    objc_storeStrong(&v42->_invocationType, typeCopy);
    objc_storeStrong(&v42->_triggerType, triggerTypeCopy);
    objc_storeStrong(&v42->_asrTask, taskCopy);
    objc_storeStrong(&v42->_bundleId, bundleId);
    objc_storeStrong(&v42->_clientId, clientId);
    objc_storeStrong(&v42->_geoLMRegionId, regionId);
    objc_storeStrong(&v42->_locale, locale);
    unsignedIntValue = msCopy;
    if (msCopy)
    {
      v42->_hasAudioDurationMs = 1;
      unsignedIntValue = [msCopy unsignedIntValue];
    }

    else
    {
      v42->_hasAudioDurationMs = 0;
    }

    v42->_audioDurationMs = unsignedIntValue;
    if (durationMsCopy)
    {
      v42->_hasRecognitionDurationMs = 1;
      unsignedIntValue2 = [durationMsCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue2 = 0;
      v42->_hasRecognitionDurationMs = 0;
    }

    v42->_recognitionDurationMs = unsignedIntValue2;
    v42->_completionState = state;
    if (ratioCopy)
    {
      v42->_hasSnrRatio = 1;
      [ratioCopy doubleValue];
    }

    else
    {
      v42->_hasSnrRatio = 0;
      v46 = -1.0;
    }

    v42->_snrRatio = v46;
    if (pitchCopy)
    {
      v42->_hasAvgPitch = 1;
      [pitchCopy doubleValue];
    }

    else
    {
      v42->_hasAvgPitch = 0;
      v47 = -1.0;
    }

    v42->_avgPitch = v47;
    if (usedCopy)
    {
      v42->_hasJitLmeUsed = 1;
      v42->_jitLmeUsed = [usedCopy BOOLValue];
    }

    else
    {
      v42->_hasJitLmeUsed = 0;
      v42->_jitLmeUsed = 0;
    }

    if (lmeUsedCopy)
    {
      v42->_hasAotLmeUsed = 1;
      v42->_aotLmeUsed = [lmeUsedCopy BOOLValue];
    }

    else
    {
      v42->_hasAotLmeUsed = 0;
      v42->_aotLmeUsed = 0;
    }

    if (recognizedCopy)
    {
      v42->_hasJitLmeRecognized = 1;
      v42->_jitLmeRecognized = [recognizedCopy BOOLValue];
    }

    else
    {
      v42->_hasJitLmeRecognized = 0;
      v42->_jitLmeRecognized = 0;
    }

    if (lmeRecognizedCopy)
    {
      v42->_hasAotLmeRecognized = 1;
      v42->_aotLmeRecognized = [lmeRecognizedCopy BOOLValue];
    }

    else
    {
      v42->_hasAotLmeRecognized = 0;
      v42->_aotLmeRecognized = 0;
    }

    objc_storeStrong(&v42->_deviceClass, class);
    objc_storeStrong(&v42->_deviceType, deviceType);
    objc_storeStrong(&v42->_deviceBuild, build);
    if (inCopy)
    {
      v42->_hasIsSiriOptIn = 1;
      v42->_isSiriOptIn = [inCopy BOOLValue];
    }

    else
    {
      v42->_hasIsSiriOptIn = 0;
      v42->_isSiriOptIn = 0;
    }

    if (enabledCopy)
    {
      v42->_hasIsAssistantEnabled = 1;
      v42->_isAssistantEnabled = [enabledCopy BOOLValue];
    }

    else
    {
      v42->_hasIsAssistantEnabled = 0;
      v42->_isAssistantEnabled = 0;
    }

    if (dictationEnabledCopy)
    {
      v42->_hasIsDictationEnabled = 1;
      v42->_isDictationEnabled = [dictationEnabledCopy BOOLValue];
    }

    else
    {
      v42->_hasIsDictationEnabled = 0;
      v42->_isDictationEnabled = 0;
    }

    if (installedCopy)
    {
      v42->_hasIsMultipleDictationKeyboardsInstalled = 1;
      v42->_isMultipleDictationKeyboardsInstalled = [installedCopy BOOLValue];
    }

    else
    {
      v42->_hasIsMultipleDictationKeyboardsInstalled = 0;
      v42->_isMultipleDictationKeyboardsInstalled = 0;
    }

    objc_storeStrong(&v42->_enabledDictationLocales, locales);
    objc_storeStrong(&v42->_activeDictationLanguages, languages);
  }

  return v42;
}

+ (id)protoFields
{
  v33[28] = *MEMORY[0x1E69E9840];
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"asrId" number:1 type:13 subMessageClass:0];
  v33[0] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"requestId" number:2 type:13 subMessageClass:0];
  v33[1] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timestamp" number:3 type:0 subMessageClass:0];
  v33[2] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"invocationType" number:4 type:13 subMessageClass:0];
  v33[3] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"triggerType" number:5 type:13 subMessageClass:0];
  v33[4] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"asrTask" number:6 type:13 subMessageClass:0];
  v33[5] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleId" number:7 type:13 subMessageClass:0];
  v33[6] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientId" number:8 type:13 subMessageClass:0];
  v33[7] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"geoLMRegionId" number:9 type:13 subMessageClass:0];
  v33[8] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"locale" number:10 type:13 subMessageClass:0];
  v33[9] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"audioDurationMs" number:11 type:4 subMessageClass:0];
  v33[10] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"recognitionDurationMs" number:12 type:4 subMessageClass:0];
  v33[11] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"completionState" number:13 type:4 subMessageClass:0];
  v33[12] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"snrRatio" number:14 type:0 subMessageClass:0];
  v33[13] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"avgPitch" number:15 type:0 subMessageClass:0];
  v33[14] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"jitLmeUsed" number:16 type:12 subMessageClass:0];
  v33[15] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"aotLmeUsed" number:17 type:12 subMessageClass:0];
  v33[16] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"jitLmeRecognized" number:18 type:12 subMessageClass:0];
  v33[17] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"aotLmeRecognized" number:19 type:12 subMessageClass:0];
  v33[18] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceClass" number:20 type:13 subMessageClass:0];
  v33[19] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceType" number:21 type:13 subMessageClass:0];
  v33[20] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceBuild" number:22 type:13 subMessageClass:0];
  v33[21] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isSiriOptIn" number:23 type:12 subMessageClass:0];
  v33[22] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isAssistantEnabled" number:24 type:12 subMessageClass:0];
  v33[23] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isDictationEnabled" number:25 type:12 subMessageClass:0];
  v33[24] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isMultipleDictationKeyboardsInstalled" number:26 type:12 subMessageClass:0];
  v33[25] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"enabledDictationLocales" number:27 type:13 subMessageClass:0];
  v33[26] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"activeDictationLanguages" number:28 type:13 subMessageClass:0];
  v33[27] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:28];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id __36__BMASRRequestMetricsRecord_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _activeDictationLanguagesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __36__BMASRRequestMetricsRecord_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _enabledDictationLocalesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMASRRequestMetricsRecord alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[10] = 0;
    }
  }

  return v4;
}

@end