@interface BMDeviceAdaptiveVolume
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMDeviceAdaptiveVolume)initWithControllerVersion:(id)version refMicdBA:(id)a refMicdBC:(id)c drumdBA:(id)bA drumdBK:(id)k drumdBAPredicted:(id)predicted downlinkdBA:(id)downlinkdBA currentVolumePrct:(id)self0 lastUserVolChangeType:(id)self1 headphoneMode:(id)self2 streamType:(id)self3 windSpeechAggressorFlag:(id)self4 volumeChangeFlag:(id)self5 speechPresenceProbability:(id)self6 personalizationParamSnr:(id)self7 personalizationParamMistakes:(id)self8 lastEMediadBA:(id)self9 lastVolMediaPrct:(id)mediaPrct lastETelephonydBA:(id)telephonydBA lastVolTelephonyPrct:(id)telephonyPrct lastESiridBA:(id)siridBA lastVolSiriPrct:(id)siriPrct smoothEae:(id)eae desiredDeltaE:(id)e predVolMediaPrct:(id)volMediaPrct predVolTelephonyPrct:(id)volTelephonyPrct predVolSiriPrct:(id)volSiriPrct onStartPredictionFlag:(id)version0 guardrailsAvoidFlag:(id)version1 minMaxCutFlag:(id)version2 manualVolumeChangeFlag:(id)version3 bigWindowSize:(id)version4 smallWindowSize:(id)version5 activeAppName:(id)version6 activeAirpodsSerialNumber:(id)version7;
- (BMDeviceAdaptiveVolume)initWithControllerVersion:(void *)version refMicdBA:(void *)a refMicdBC:(void *)c drumdBA:(void *)bA drumdBK:(void *)k drumdBAPredicted:(void *)predicted downlinkdBA:(id)downlinkdBA currentVolumePrct:(id)self0 lastUserVolChangeType:(id)self1 headphoneMode:(id)self2 streamType:(id)self3 windSpeechAggressorFlag:(id)self4 volumeChangeFlag:(id)self5 speechPresenceProbability:(id)self6 personalizationParamSnr:(id)self7 personalizationParamMistakes:(id)self8 lastEMediadBA:(id)self9 lastVolMediaPrct:(id)mediaPrct lastETelephonydBA:(id)telephonydBA lastVolTelephonyPrct:(id)telephonyPrct lastESiridBA:(id)siridBA lastVolSiriPrct:(id)siriPrct smoothEae:(id)eae desiredDeltaE:(id)e predVolMediaPrct:(id)volMediaPrct predVolTelephonyPrct:(id)volTelephonyPrct predVolSiriPrct:(id)volSiriPrct onStartPredictionFlag:(id)version0 guardrailsAvoidFlag:(id)version1 minMaxCutFlag:(id)version2 manualVolumeChangeFlag:(id)version3 bigWindowSize:(id)version4 smallWindowSize:(id)version5 activeAppName:(id)version6 activeAirpodsSerialNumber:(id)version7 anchorVol:(id)version8 anchorEnv:(id)version9 personalizationCoeff:(id)a0 unsignedPredVolMediaPrct:(id)a1 unsignedPredVolTelephonyPrct:(id)a2 unsignedPredVolSiriPrct:(id)a3 singleBudFlag:(id)a4 cdEngagementFlag:(id)c activeStreamFlag:(id)bA pvFeatureEnableFlag:(id)k envSpectralData32B:(id)predicted windStrength:(id)downlinkdBA windProb:(id)c0 mediaType:(id)c1 sourceActivity:(id)c2 budActivity:(id)c3 location:(id)c4 locationType:(id)c5 focusMode:(id)c6 streamingAppBundleId:(id)c7 noiseType4B:(id)c8 instdBA:(id)c9 instdBC:(id)bA0 nonCAListeningMode:(id)bA1 fit:(id)bA2 fixedAutoAncGain:(id)bA3 adjustedAutoAncGain:timestamp:DRCenablementBit:DRCwindFlag:DRCappSelfVoiceFlag:drumDRC:routedDRCGain:;
- (BMDeviceAdaptiveVolume)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_envSpectralData32BJSONArray;
- (id)_noiseType4BJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (uint64_t)initWithControllerVersion:(void *)version refMicdBA:refMicdBC:drumdBA:drumdBK:drumdBAPredicted:downlinkdBA:currentVolumePrct:lastUserVolChangeType:headphoneMode:streamType:windSpeechAggressorFlag:volumeChangeFlag:speechPresenceProbability:personalizationParamSnr:personalizationParamMistakes:lastEMediadBA:lastVolMediaPrct:lastETelephonydBA:lastVolTelephonyPrct:lastESiridBA:lastVolSiriPrct:smoothEae:desiredDeltaE:predVolMediaPrct:predVolTelephonyPrct:predVolSiriPrct:onStartPredictionFlag:guardrailsAvoidFlag:minMaxCutFlag:manualVolumeChangeFlag:bigWindowSize:smallWindowSize:activeAppName:activeAirpodsSerialNumber:anchorVol:anchorEnv:personalizationCoeff:unsignedPredVolMediaPrct:unsignedPredVolTelephonyPrct:unsignedPredVolSiriPrct:singleBudFlag:cdEngagementFlag:activeStreamFlag:pvFeatureEnableFlag:envSpectralData_32B:wind_strength:wind_prob:mediaType:sourceActivity:budActivity:location:locationType:focusMode:streamingAppBundleId:noiseType_4B:instdBA:instdBC:nonCAListeningMode:fit:fixedAutoAncGain:adjustedAutoAncGain:timestamp:DRCenablementBit:DRCwindFlag:DRCappSelfVoiceFlag:drumDRC:routedDRCGain:;
- (void)writeTo:(id)to;
@end

@implementation BMDeviceAdaptiveVolume

+ (id)columns
{
  v77[72] = *MEMORY[0x1E69E9840];
  v76 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"controllerVersion" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v75 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"refMicdBA" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v74 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"refMicdBC" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v73 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"drumdBA" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v72 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"drumdBK" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v71 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"drumdBAPredicted" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v70 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"downlinkdBA" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:4 convertedType:0];
  v69 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"currentVolumePrct" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:4 convertedType:0];
  v68 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"lastUserVolChangeType" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:4 convertedType:0];
  v67 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"headphoneMode" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:4 convertedType:0];
  v66 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"streamType" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:4 convertedType:0];
  v65 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"windSpeechAggressorFlag" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:4 convertedType:0];
  v64 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"volumeChangeFlag" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:4 convertedType:0];
  v63 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"speechPresenceProbability" dataType:0 requestOnly:0 fieldNumber:14 protoDataType:4 convertedType:0];
  v62 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"personalizationParamSnr" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:2 convertedType:0];
  v61 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"personalizationParamMistakes" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:2 convertedType:0];
  v59 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"lastEMediadBA" dataType:0 requestOnly:0 fieldNumber:17 protoDataType:4 convertedType:0];
  v60 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"lastVolMediaPrct" dataType:0 requestOnly:0 fieldNumber:18 protoDataType:4 convertedType:0];
  v57 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"lastETelephonydBA" dataType:0 requestOnly:0 fieldNumber:19 protoDataType:4 convertedType:0];
  v58 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"lastVolTelephonyPrct" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:4 convertedType:0];
  v56 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"lastESiridBA" dataType:0 requestOnly:0 fieldNumber:21 protoDataType:4 convertedType:0];
  v55 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"lastVolSiriPrct" dataType:0 requestOnly:0 fieldNumber:22 protoDataType:4 convertedType:0];
  v54 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"smoothEae" dataType:0 requestOnly:0 fieldNumber:23 protoDataType:4 convertedType:0];
  v53 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"desiredDeltaE" dataType:0 requestOnly:0 fieldNumber:24 protoDataType:2 convertedType:0];
  v52 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"predVolMediaPrct" dataType:0 requestOnly:0 fieldNumber:25 protoDataType:2 convertedType:0];
  v51 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"predVolTelephonyPrct" dataType:0 requestOnly:0 fieldNumber:26 protoDataType:2 convertedType:0];
  v50 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"predVolSiriPrct" dataType:0 requestOnly:0 fieldNumber:27 protoDataType:2 convertedType:0];
  v49 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"onStartPredictionFlag" dataType:0 requestOnly:0 fieldNumber:28 protoDataType:4 convertedType:0];
  v48 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"guardrailsAvoidFlag" dataType:0 requestOnly:0 fieldNumber:29 protoDataType:4 convertedType:0];
  v47 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"minMaxCutFlag" dataType:0 requestOnly:0 fieldNumber:30 protoDataType:4 convertedType:0];
  v46 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"manualVolumeChangeFlag" dataType:0 requestOnly:0 fieldNumber:31 protoDataType:4 convertedType:0];
  v45 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bigWindowSize" dataType:0 requestOnly:0 fieldNumber:32 protoDataType:4 convertedType:0];
  v44 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"smallWindowSize" dataType:0 requestOnly:0 fieldNumber:33 protoDataType:4 convertedType:0];
  v43 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"activeAppName" dataType:2 requestOnly:0 fieldNumber:34 protoDataType:13 convertedType:0];
  v42 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"activeAirpodsSerialNumber" dataType:2 requestOnly:0 fieldNumber:35 protoDataType:13 convertedType:0];
  v41 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"anchorVol" dataType:0 requestOnly:0 fieldNumber:36 protoDataType:4 convertedType:0];
  v40 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"anchorEnv" dataType:0 requestOnly:0 fieldNumber:37 protoDataType:4 convertedType:0];
  v39 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"personalizationCoeff" dataType:0 requestOnly:0 fieldNumber:38 protoDataType:4 convertedType:0];
  v38 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"unsignedPredVolMediaPrct" dataType:0 requestOnly:0 fieldNumber:39 protoDataType:4 convertedType:0];
  v37 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"unsignedPredVolTelephonyPrct" dataType:0 requestOnly:0 fieldNumber:40 protoDataType:4 convertedType:0];
  v36 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"unsignedPredVolSiriPrct" dataType:0 requestOnly:0 fieldNumber:41 protoDataType:4 convertedType:0];
  v35 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"singleBudFlag" dataType:0 requestOnly:0 fieldNumber:42 protoDataType:4 convertedType:0];
  v34 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cdEngagementFlag" dataType:0 requestOnly:0 fieldNumber:43 protoDataType:4 convertedType:0];
  v33 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"activeStreamFlag" dataType:0 requestOnly:0 fieldNumber:44 protoDataType:4 convertedType:0];
  v32 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"pvFeatureEnableFlag" dataType:0 requestOnly:0 fieldNumber:45 protoDataType:4 convertedType:0];
  v31 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"envSpectralData32B_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_5721];
  v30 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"envSpectralData_32B_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_251];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"windStrength" dataType:0 requestOnly:0 fieldNumber:47 protoDataType:4 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"wind_strength" dataType:0 requestOnly:0 fieldNumber:47 protoDataType:4 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"windProb" dataType:0 requestOnly:0 fieldNumber:48 protoDataType:4 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"wind_prob" dataType:0 requestOnly:0 fieldNumber:48 protoDataType:4 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mediaType" dataType:0 requestOnly:0 fieldNumber:49 protoDataType:4 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceActivity" dataType:0 requestOnly:0 fieldNumber:50 protoDataType:4 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"budActivity" dataType:0 requestOnly:0 fieldNumber:51 protoDataType:4 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"location" dataType:0 requestOnly:0 fieldNumber:52 protoDataType:4 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"locationType" dataType:0 requestOnly:0 fieldNumber:53 protoDataType:4 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"focusMode" dataType:0 requestOnly:0 fieldNumber:54 protoDataType:4 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"streamingAppBundleId" dataType:0 requestOnly:0 fieldNumber:55 protoDataType:4 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"noiseType4B_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_253];
  v17 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"noiseType_4B_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_258];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"instdBA" dataType:0 requestOnly:0 fieldNumber:57 protoDataType:4 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"instdBC" dataType:0 requestOnly:0 fieldNumber:58 protoDataType:4 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nonCAListeningMode" dataType:0 requestOnly:0 fieldNumber:59 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fit" dataType:0 requestOnly:0 fieldNumber:60 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fixedAutoAncGain" dataType:0 requestOnly:0 fieldNumber:61 protoDataType:4 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"adjustedAutoAncGain" dataType:0 requestOnly:0 fieldNumber:62 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timestamp" dataType:0 requestOnly:0 fieldNumber:63 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"DRCenablementBit" dataType:0 requestOnly:0 fieldNumber:64 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"DRCwindFlag" dataType:0 requestOnly:0 fieldNumber:65 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"DRCappSelfVoiceFlag" dataType:0 requestOnly:0 fieldNumber:66 protoDataType:4 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"drumDRC" dataType:0 requestOnly:0 fieldNumber:67 protoDataType:4 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"routedDRCGain" dataType:0 requestOnly:0 fieldNumber:68 protoDataType:4 convertedType:0];
  v77[0] = v76;
  v77[1] = v75;
  v77[2] = v74;
  v77[3] = v73;
  v77[4] = v72;
  v77[5] = v71;
  v77[6] = v70;
  v77[7] = v69;
  v77[8] = v68;
  v77[9] = v67;
  v77[10] = v66;
  v77[11] = v65;
  v77[12] = v64;
  v77[13] = v63;
  v77[14] = v62;
  v77[15] = v61;
  v77[16] = v59;
  v77[17] = v60;
  v77[18] = v57;
  v77[19] = v58;
  v77[20] = v56;
  v77[21] = v55;
  v77[22] = v54;
  v77[23] = v53;
  v77[24] = v52;
  v77[25] = v51;
  v77[26] = v50;
  v77[27] = v49;
  v77[28] = v48;
  v77[29] = v47;
  v77[30] = v46;
  v77[31] = v45;
  v77[32] = v44;
  v77[33] = v43;
  v77[34] = v42;
  v77[35] = v41;
  v77[36] = v40;
  v77[37] = v39;
  v77[38] = v38;
  v77[39] = v37;
  v77[40] = v36;
  v77[41] = v35;
  v77[42] = v34;
  v77[43] = v33;
  v77[44] = v32;
  v77[45] = v31;
  v77[46] = v30;
  v77[47] = v29;
  v77[48] = v28;
  v77[49] = v27;
  v77[50] = v26;
  v77[51] = v25;
  v77[52] = v24;
  v77[53] = v23;
  v77[54] = v22;
  v77[55] = v21;
  v77[56] = v20;
  v77[57] = v19;
  v77[58] = v18;
  v77[59] = v17;
  v77[60] = v16;
  v77[61] = v15;
  v77[62] = v2;
  v77[63] = v3;
  v77[64] = v4;
  v77[65] = v14;
  v77[66] = v5;
  v77[67] = v6;
  v77[68] = v7;
  v77[69] = v8;
  v77[70] = v13;
  v77[71] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:72];

  v10 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMDeviceAdaptiveVolume hasControllerVersion](self, "hasControllerVersion") || [v5 hasControllerVersion])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasControllerVersion])
      {
        goto LABEL_339;
      }

      if (![v5 hasControllerVersion])
      {
        goto LABEL_339;
      }

      controllerVersion = [(BMDeviceAdaptiveVolume *)self controllerVersion];
      if (controllerVersion != [v5 controllerVersion])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasRefMicdBA](self, "hasRefMicdBA") || [v5 hasRefMicdBA])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasRefMicdBA])
      {
        goto LABEL_339;
      }

      if (![v5 hasRefMicdBA])
      {
        goto LABEL_339;
      }

      refMicdBA = [(BMDeviceAdaptiveVolume *)self refMicdBA];
      if (refMicdBA != [v5 refMicdBA])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasRefMicdBC](self, "hasRefMicdBC") || [v5 hasRefMicdBC])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasRefMicdBC])
      {
        goto LABEL_339;
      }

      if (![v5 hasRefMicdBC])
      {
        goto LABEL_339;
      }

      refMicdBC = [(BMDeviceAdaptiveVolume *)self refMicdBC];
      if (refMicdBC != [v5 refMicdBC])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasDrumdBA](self, "hasDrumdBA") || [v5 hasDrumdBA])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasDrumdBA])
      {
        goto LABEL_339;
      }

      if (![v5 hasDrumdBA])
      {
        goto LABEL_339;
      }

      drumdBA = [(BMDeviceAdaptiveVolume *)self drumdBA];
      if (drumdBA != [v5 drumdBA])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasDrumdBK](self, "hasDrumdBK") || [v5 hasDrumdBK])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasDrumdBK])
      {
        goto LABEL_339;
      }

      if (![v5 hasDrumdBK])
      {
        goto LABEL_339;
      }

      drumdBK = [(BMDeviceAdaptiveVolume *)self drumdBK];
      if (drumdBK != [v5 drumdBK])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasDrumdBAPredicted](self, "hasDrumdBAPredicted") || [v5 hasDrumdBAPredicted])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasDrumdBAPredicted])
      {
        goto LABEL_339;
      }

      if (![v5 hasDrumdBAPredicted])
      {
        goto LABEL_339;
      }

      drumdBAPredicted = [(BMDeviceAdaptiveVolume *)self drumdBAPredicted];
      if (drumdBAPredicted != [v5 drumdBAPredicted])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasDownlinkdBA](self, "hasDownlinkdBA") || [v5 hasDownlinkdBA])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasDownlinkdBA])
      {
        goto LABEL_339;
      }

      if (![v5 hasDownlinkdBA])
      {
        goto LABEL_339;
      }

      downlinkdBA = [(BMDeviceAdaptiveVolume *)self downlinkdBA];
      if (downlinkdBA != [v5 downlinkdBA])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasCurrentVolumePrct](self, "hasCurrentVolumePrct") || [v5 hasCurrentVolumePrct])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasCurrentVolumePrct])
      {
        goto LABEL_339;
      }

      if (![v5 hasCurrentVolumePrct])
      {
        goto LABEL_339;
      }

      currentVolumePrct = [(BMDeviceAdaptiveVolume *)self currentVolumePrct];
      if (currentVolumePrct != [v5 currentVolumePrct])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasLastUserVolChangeType](self, "hasLastUserVolChangeType") || [v5 hasLastUserVolChangeType])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasLastUserVolChangeType])
      {
        goto LABEL_339;
      }

      if (![v5 hasLastUserVolChangeType])
      {
        goto LABEL_339;
      }

      lastUserVolChangeType = [(BMDeviceAdaptiveVolume *)self lastUserVolChangeType];
      if (lastUserVolChangeType != [v5 lastUserVolChangeType])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasHeadphoneMode](self, "hasHeadphoneMode") || [v5 hasHeadphoneMode])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasHeadphoneMode])
      {
        goto LABEL_339;
      }

      if (![v5 hasHeadphoneMode])
      {
        goto LABEL_339;
      }

      headphoneMode = [(BMDeviceAdaptiveVolume *)self headphoneMode];
      if (headphoneMode != [v5 headphoneMode])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasStreamType](self, "hasStreamType") || [v5 hasStreamType])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasStreamType])
      {
        goto LABEL_339;
      }

      if (![v5 hasStreamType])
      {
        goto LABEL_339;
      }

      streamType = [(BMDeviceAdaptiveVolume *)self streamType];
      if (streamType != [v5 streamType])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasWindSpeechAggressorFlag](self, "hasWindSpeechAggressorFlag") || [v5 hasWindSpeechAggressorFlag])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasWindSpeechAggressorFlag])
      {
        goto LABEL_339;
      }

      if (![v5 hasWindSpeechAggressorFlag])
      {
        goto LABEL_339;
      }

      windSpeechAggressorFlag = [(BMDeviceAdaptiveVolume *)self windSpeechAggressorFlag];
      if (windSpeechAggressorFlag != [v5 windSpeechAggressorFlag])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasVolumeChangeFlag](self, "hasVolumeChangeFlag") || [v5 hasVolumeChangeFlag])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasVolumeChangeFlag])
      {
        goto LABEL_339;
      }

      if (![v5 hasVolumeChangeFlag])
      {
        goto LABEL_339;
      }

      volumeChangeFlag = [(BMDeviceAdaptiveVolume *)self volumeChangeFlag];
      if (volumeChangeFlag != [v5 volumeChangeFlag])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasSpeechPresenceProbability](self, "hasSpeechPresenceProbability") || [v5 hasSpeechPresenceProbability])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasSpeechPresenceProbability])
      {
        goto LABEL_339;
      }

      if (![v5 hasSpeechPresenceProbability])
      {
        goto LABEL_339;
      }

      speechPresenceProbability = [(BMDeviceAdaptiveVolume *)self speechPresenceProbability];
      if (speechPresenceProbability != [v5 speechPresenceProbability])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasPersonalizationParamSnr](self, "hasPersonalizationParamSnr") || [v5 hasPersonalizationParamSnr])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasPersonalizationParamSnr])
      {
        goto LABEL_339;
      }

      if (![v5 hasPersonalizationParamSnr])
      {
        goto LABEL_339;
      }

      personalizationParamSnr = [(BMDeviceAdaptiveVolume *)self personalizationParamSnr];
      if (personalizationParamSnr != [v5 personalizationParamSnr])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasPersonalizationParamMistakes](self, "hasPersonalizationParamMistakes") || [v5 hasPersonalizationParamMistakes])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasPersonalizationParamMistakes])
      {
        goto LABEL_339;
      }

      if (![v5 hasPersonalizationParamMistakes])
      {
        goto LABEL_339;
      }

      personalizationParamMistakes = [(BMDeviceAdaptiveVolume *)self personalizationParamMistakes];
      if (personalizationParamMistakes != [v5 personalizationParamMistakes])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasLastEMediadBA](self, "hasLastEMediadBA") || [v5 hasLastEMediadBA])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasLastEMediadBA])
      {
        goto LABEL_339;
      }

      if (![v5 hasLastEMediadBA])
      {
        goto LABEL_339;
      }

      lastEMediadBA = [(BMDeviceAdaptiveVolume *)self lastEMediadBA];
      if (lastEMediadBA != [v5 lastEMediadBA])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasLastVolMediaPrct](self, "hasLastVolMediaPrct") || [v5 hasLastVolMediaPrct])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasLastVolMediaPrct])
      {
        goto LABEL_339;
      }

      if (![v5 hasLastVolMediaPrct])
      {
        goto LABEL_339;
      }

      lastVolMediaPrct = [(BMDeviceAdaptiveVolume *)self lastVolMediaPrct];
      if (lastVolMediaPrct != [v5 lastVolMediaPrct])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasLastETelephonydBA](self, "hasLastETelephonydBA") || [v5 hasLastETelephonydBA])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasLastETelephonydBA])
      {
        goto LABEL_339;
      }

      if (![v5 hasLastETelephonydBA])
      {
        goto LABEL_339;
      }

      lastETelephonydBA = [(BMDeviceAdaptiveVolume *)self lastETelephonydBA];
      if (lastETelephonydBA != [v5 lastETelephonydBA])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasLastVolTelephonyPrct](self, "hasLastVolTelephonyPrct") || [v5 hasLastVolTelephonyPrct])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasLastVolTelephonyPrct])
      {
        goto LABEL_339;
      }

      if (![v5 hasLastVolTelephonyPrct])
      {
        goto LABEL_339;
      }

      lastVolTelephonyPrct = [(BMDeviceAdaptiveVolume *)self lastVolTelephonyPrct];
      if (lastVolTelephonyPrct != [v5 lastVolTelephonyPrct])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasLastESiridBA](self, "hasLastESiridBA") || [v5 hasLastESiridBA])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasLastESiridBA])
      {
        goto LABEL_339;
      }

      if (![v5 hasLastESiridBA])
      {
        goto LABEL_339;
      }

      lastESiridBA = [(BMDeviceAdaptiveVolume *)self lastESiridBA];
      if (lastESiridBA != [v5 lastESiridBA])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasLastVolSiriPrct](self, "hasLastVolSiriPrct") || [v5 hasLastVolSiriPrct])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasLastVolSiriPrct])
      {
        goto LABEL_339;
      }

      if (![v5 hasLastVolSiriPrct])
      {
        goto LABEL_339;
      }

      lastVolSiriPrct = [(BMDeviceAdaptiveVolume *)self lastVolSiriPrct];
      if (lastVolSiriPrct != [v5 lastVolSiriPrct])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasSmoothEae](self, "hasSmoothEae") || [v5 hasSmoothEae])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasSmoothEae])
      {
        goto LABEL_339;
      }

      if (![v5 hasSmoothEae])
      {
        goto LABEL_339;
      }

      smoothEae = [(BMDeviceAdaptiveVolume *)self smoothEae];
      if (smoothEae != [v5 smoothEae])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasDesiredDeltaE](self, "hasDesiredDeltaE") || [v5 hasDesiredDeltaE])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasDesiredDeltaE])
      {
        goto LABEL_339;
      }

      if (![v5 hasDesiredDeltaE])
      {
        goto LABEL_339;
      }

      desiredDeltaE = [(BMDeviceAdaptiveVolume *)self desiredDeltaE];
      if (desiredDeltaE != [v5 desiredDeltaE])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasPredVolMediaPrct](self, "hasPredVolMediaPrct") || [v5 hasPredVolMediaPrct])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasPredVolMediaPrct])
      {
        goto LABEL_339;
      }

      if (![v5 hasPredVolMediaPrct])
      {
        goto LABEL_339;
      }

      predVolMediaPrct = [(BMDeviceAdaptiveVolume *)self predVolMediaPrct];
      if (predVolMediaPrct != [v5 predVolMediaPrct])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasPredVolTelephonyPrct](self, "hasPredVolTelephonyPrct") || [v5 hasPredVolTelephonyPrct])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasPredVolTelephonyPrct])
      {
        goto LABEL_339;
      }

      if (![v5 hasPredVolTelephonyPrct])
      {
        goto LABEL_339;
      }

      predVolTelephonyPrct = [(BMDeviceAdaptiveVolume *)self predVolTelephonyPrct];
      if (predVolTelephonyPrct != [v5 predVolTelephonyPrct])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasPredVolSiriPrct](self, "hasPredVolSiriPrct") || [v5 hasPredVolSiriPrct])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasPredVolSiriPrct])
      {
        goto LABEL_339;
      }

      if (![v5 hasPredVolSiriPrct])
      {
        goto LABEL_339;
      }

      predVolSiriPrct = [(BMDeviceAdaptiveVolume *)self predVolSiriPrct];
      if (predVolSiriPrct != [v5 predVolSiriPrct])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasOnStartPredictionFlag](self, "hasOnStartPredictionFlag") || [v5 hasOnStartPredictionFlag])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasOnStartPredictionFlag])
      {
        goto LABEL_339;
      }

      if (![v5 hasOnStartPredictionFlag])
      {
        goto LABEL_339;
      }

      onStartPredictionFlag = [(BMDeviceAdaptiveVolume *)self onStartPredictionFlag];
      if (onStartPredictionFlag != [v5 onStartPredictionFlag])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasGuardrailsAvoidFlag](self, "hasGuardrailsAvoidFlag") || [v5 hasGuardrailsAvoidFlag])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasGuardrailsAvoidFlag])
      {
        goto LABEL_339;
      }

      if (![v5 hasGuardrailsAvoidFlag])
      {
        goto LABEL_339;
      }

      guardrailsAvoidFlag = [(BMDeviceAdaptiveVolume *)self guardrailsAvoidFlag];
      if (guardrailsAvoidFlag != [v5 guardrailsAvoidFlag])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasMinMaxCutFlag](self, "hasMinMaxCutFlag") || [v5 hasMinMaxCutFlag])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasMinMaxCutFlag])
      {
        goto LABEL_339;
      }

      if (![v5 hasMinMaxCutFlag])
      {
        goto LABEL_339;
      }

      minMaxCutFlag = [(BMDeviceAdaptiveVolume *)self minMaxCutFlag];
      if (minMaxCutFlag != [v5 minMaxCutFlag])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasManualVolumeChangeFlag](self, "hasManualVolumeChangeFlag") || [v5 hasManualVolumeChangeFlag])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasManualVolumeChangeFlag])
      {
        goto LABEL_339;
      }

      if (![v5 hasManualVolumeChangeFlag])
      {
        goto LABEL_339;
      }

      manualVolumeChangeFlag = [(BMDeviceAdaptiveVolume *)self manualVolumeChangeFlag];
      if (manualVolumeChangeFlag != [v5 manualVolumeChangeFlag])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasBigWindowSize](self, "hasBigWindowSize") || [v5 hasBigWindowSize])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasBigWindowSize])
      {
        goto LABEL_339;
      }

      if (![v5 hasBigWindowSize])
      {
        goto LABEL_339;
      }

      bigWindowSize = [(BMDeviceAdaptiveVolume *)self bigWindowSize];
      if (bigWindowSize != [v5 bigWindowSize])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasSmallWindowSize](self, "hasSmallWindowSize") || [v5 hasSmallWindowSize])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasSmallWindowSize])
      {
        goto LABEL_339;
      }

      if (![v5 hasSmallWindowSize])
      {
        goto LABEL_339;
      }

      smallWindowSize = [(BMDeviceAdaptiveVolume *)self smallWindowSize];
      if (smallWindowSize != [v5 smallWindowSize])
      {
        goto LABEL_339;
      }
    }

    activeAppName = [(BMDeviceAdaptiveVolume *)self activeAppName];
    activeAppName2 = [v5 activeAppName];
    v41 = activeAppName2;
    if (activeAppName == activeAppName2)
    {
    }

    else
    {
      activeAppName3 = [(BMDeviceAdaptiveVolume *)self activeAppName];
      activeAppName4 = [v5 activeAppName];
      v44 = [activeAppName3 isEqual:activeAppName4];

      if (!v44)
      {
        goto LABEL_339;
      }
    }

    activeAirpodsSerialNumber = [(BMDeviceAdaptiveVolume *)self activeAirpodsSerialNumber];
    activeAirpodsSerialNumber2 = [v5 activeAirpodsSerialNumber];
    v48 = activeAirpodsSerialNumber2;
    if (activeAirpodsSerialNumber == activeAirpodsSerialNumber2)
    {
    }

    else
    {
      activeAirpodsSerialNumber3 = [(BMDeviceAdaptiveVolume *)self activeAirpodsSerialNumber];
      activeAirpodsSerialNumber4 = [v5 activeAirpodsSerialNumber];
      v51 = [activeAirpodsSerialNumber3 isEqual:activeAirpodsSerialNumber4];

      if (!v51)
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasAnchorVol](self, "hasAnchorVol") || [v5 hasAnchorVol])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasAnchorVol])
      {
        goto LABEL_339;
      }

      if (![v5 hasAnchorVol])
      {
        goto LABEL_339;
      }

      anchorVol = [(BMDeviceAdaptiveVolume *)self anchorVol];
      if (anchorVol != [v5 anchorVol])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasAnchorEnv](self, "hasAnchorEnv") || [v5 hasAnchorEnv])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasAnchorEnv])
      {
        goto LABEL_339;
      }

      if (![v5 hasAnchorEnv])
      {
        goto LABEL_339;
      }

      anchorEnv = [(BMDeviceAdaptiveVolume *)self anchorEnv];
      if (anchorEnv != [v5 anchorEnv])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasPersonalizationCoeff](self, "hasPersonalizationCoeff") || [v5 hasPersonalizationCoeff])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasPersonalizationCoeff])
      {
        goto LABEL_339;
      }

      if (![v5 hasPersonalizationCoeff])
      {
        goto LABEL_339;
      }

      personalizationCoeff = [(BMDeviceAdaptiveVolume *)self personalizationCoeff];
      if (personalizationCoeff != [v5 personalizationCoeff])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasUnsignedPredVolMediaPrct](self, "hasUnsignedPredVolMediaPrct") || [v5 hasUnsignedPredVolMediaPrct])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasUnsignedPredVolMediaPrct])
      {
        goto LABEL_339;
      }

      if (![v5 hasUnsignedPredVolMediaPrct])
      {
        goto LABEL_339;
      }

      unsignedPredVolMediaPrct = [(BMDeviceAdaptiveVolume *)self unsignedPredVolMediaPrct];
      if (unsignedPredVolMediaPrct != [v5 unsignedPredVolMediaPrct])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasUnsignedPredVolTelephonyPrct](self, "hasUnsignedPredVolTelephonyPrct") || [v5 hasUnsignedPredVolTelephonyPrct])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasUnsignedPredVolTelephonyPrct])
      {
        goto LABEL_339;
      }

      if (![v5 hasUnsignedPredVolTelephonyPrct])
      {
        goto LABEL_339;
      }

      unsignedPredVolTelephonyPrct = [(BMDeviceAdaptiveVolume *)self unsignedPredVolTelephonyPrct];
      if (unsignedPredVolTelephonyPrct != [v5 unsignedPredVolTelephonyPrct])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasUnsignedPredVolSiriPrct](self, "hasUnsignedPredVolSiriPrct") || [v5 hasUnsignedPredVolSiriPrct])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasUnsignedPredVolSiriPrct])
      {
        goto LABEL_339;
      }

      if (![v5 hasUnsignedPredVolSiriPrct])
      {
        goto LABEL_339;
      }

      unsignedPredVolSiriPrct = [(BMDeviceAdaptiveVolume *)self unsignedPredVolSiriPrct];
      if (unsignedPredVolSiriPrct != [v5 unsignedPredVolSiriPrct])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasSingleBudFlag](self, "hasSingleBudFlag") || [v5 hasSingleBudFlag])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasSingleBudFlag])
      {
        goto LABEL_339;
      }

      if (![v5 hasSingleBudFlag])
      {
        goto LABEL_339;
      }

      singleBudFlag = [(BMDeviceAdaptiveVolume *)self singleBudFlag];
      if (singleBudFlag != [v5 singleBudFlag])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasCdEngagementFlag](self, "hasCdEngagementFlag") || [v5 hasCdEngagementFlag])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasCdEngagementFlag])
      {
        goto LABEL_339;
      }

      if (![v5 hasCdEngagementFlag])
      {
        goto LABEL_339;
      }

      cdEngagementFlag = [(BMDeviceAdaptiveVolume *)self cdEngagementFlag];
      if (cdEngagementFlag != [v5 cdEngagementFlag])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasActiveStreamFlag](self, "hasActiveStreamFlag") || [v5 hasActiveStreamFlag])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasActiveStreamFlag])
      {
        goto LABEL_339;
      }

      if (![v5 hasActiveStreamFlag])
      {
        goto LABEL_339;
      }

      activeStreamFlag = [(BMDeviceAdaptiveVolume *)self activeStreamFlag];
      if (activeStreamFlag != [v5 activeStreamFlag])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasPvFeatureEnableFlag](self, "hasPvFeatureEnableFlag") || [v5 hasPvFeatureEnableFlag])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasPvFeatureEnableFlag])
      {
        goto LABEL_339;
      }

      if (![v5 hasPvFeatureEnableFlag])
      {
        goto LABEL_339;
      }

      pvFeatureEnableFlag = [(BMDeviceAdaptiveVolume *)self pvFeatureEnableFlag];
      if (pvFeatureEnableFlag != [v5 pvFeatureEnableFlag])
      {
        goto LABEL_339;
      }
    }

    envSpectralData32B = [(BMDeviceAdaptiveVolume *)self envSpectralData32B];
    envSpectralData32B2 = [v5 envSpectralData32B];
    v64 = envSpectralData32B2;
    if (envSpectralData32B == envSpectralData32B2)
    {
    }

    else
    {
      envSpectralData32B3 = [(BMDeviceAdaptiveVolume *)self envSpectralData32B];
      envSpectralData32B4 = [v5 envSpectralData32B];
      v67 = [envSpectralData32B3 isEqual:envSpectralData32B4];

      if (!v67)
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasWindStrength](self, "hasWindStrength") || [v5 hasWindStrength])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasWindStrength])
      {
        goto LABEL_339;
      }

      if (![v5 hasWindStrength])
      {
        goto LABEL_339;
      }

      windStrength = [(BMDeviceAdaptiveVolume *)self windStrength];
      if (windStrength != [v5 windStrength])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasWindProb](self, "hasWindProb") || [v5 hasWindProb])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasWindProb])
      {
        goto LABEL_339;
      }

      if (![v5 hasWindProb])
      {
        goto LABEL_339;
      }

      windProb = [(BMDeviceAdaptiveVolume *)self windProb];
      if (windProb != [v5 windProb])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasMediaType](self, "hasMediaType") || [v5 hasMediaType])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasMediaType])
      {
        goto LABEL_339;
      }

      if (![v5 hasMediaType])
      {
        goto LABEL_339;
      }

      mediaType = [(BMDeviceAdaptiveVolume *)self mediaType];
      if (mediaType != [v5 mediaType])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasSourceActivity](self, "hasSourceActivity") || [v5 hasSourceActivity])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasSourceActivity])
      {
        goto LABEL_339;
      }

      if (![v5 hasSourceActivity])
      {
        goto LABEL_339;
      }

      sourceActivity = [(BMDeviceAdaptiveVolume *)self sourceActivity];
      if (sourceActivity != [v5 sourceActivity])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasBudActivity](self, "hasBudActivity") || [v5 hasBudActivity])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasBudActivity])
      {
        goto LABEL_339;
      }

      if (![v5 hasBudActivity])
      {
        goto LABEL_339;
      }

      budActivity = [(BMDeviceAdaptiveVolume *)self budActivity];
      if (budActivity != [v5 budActivity])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasLocation](self, "hasLocation") || [v5 hasLocation])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasLocation])
      {
        goto LABEL_339;
      }

      if (![v5 hasLocation])
      {
        goto LABEL_339;
      }

      location = [(BMDeviceAdaptiveVolume *)self location];
      if (location != [v5 location])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasLocationType](self, "hasLocationType") || [v5 hasLocationType])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasLocationType])
      {
        goto LABEL_339;
      }

      if (![v5 hasLocationType])
      {
        goto LABEL_339;
      }

      locationType = [(BMDeviceAdaptiveVolume *)self locationType];
      if (locationType != [v5 locationType])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasFocusMode](self, "hasFocusMode") || [v5 hasFocusMode])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasFocusMode])
      {
        goto LABEL_339;
      }

      if (![v5 hasFocusMode])
      {
        goto LABEL_339;
      }

      focusMode = [(BMDeviceAdaptiveVolume *)self focusMode];
      if (focusMode != [v5 focusMode])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasStreamingAppBundleId](self, "hasStreamingAppBundleId") || [v5 hasStreamingAppBundleId])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasStreamingAppBundleId])
      {
        goto LABEL_339;
      }

      if (![v5 hasStreamingAppBundleId])
      {
        goto LABEL_339;
      }

      streamingAppBundleId = [(BMDeviceAdaptiveVolume *)self streamingAppBundleId];
      if (streamingAppBundleId != [v5 streamingAppBundleId])
      {
        goto LABEL_339;
      }
    }

    noiseType4B = [(BMDeviceAdaptiveVolume *)self noiseType4B];
    noiseType4B2 = [v5 noiseType4B];
    v79 = noiseType4B2;
    if (noiseType4B == noiseType4B2)
    {
    }

    else
    {
      noiseType4B3 = [(BMDeviceAdaptiveVolume *)self noiseType4B];
      noiseType4B4 = [v5 noiseType4B];
      v82 = [noiseType4B3 isEqual:noiseType4B4];

      if (!v82)
      {
        goto LABEL_339;
      }
    }

    if (!-[BMDeviceAdaptiveVolume hasInstdBA](self, "hasInstdBA") && ![v5 hasInstdBA] || -[BMDeviceAdaptiveVolume hasInstdBA](self, "hasInstdBA") && objc_msgSend(v5, "hasInstdBA") && (v83 = -[BMDeviceAdaptiveVolume instdBA](self, "instdBA"), v83 == objc_msgSend(v5, "instdBA")))
    {
      if (!-[BMDeviceAdaptiveVolume hasInstdBC](self, "hasInstdBC") && ![v5 hasInstdBC] || -[BMDeviceAdaptiveVolume hasInstdBC](self, "hasInstdBC") && objc_msgSend(v5, "hasInstdBC") && (v84 = -[BMDeviceAdaptiveVolume instdBC](self, "instdBC"), v84 == objc_msgSend(v5, "instdBC")))
      {
        if (!-[BMDeviceAdaptiveVolume hasNonCAListeningMode](self, "hasNonCAListeningMode") && ![v5 hasNonCAListeningMode] || -[BMDeviceAdaptiveVolume hasNonCAListeningMode](self, "hasNonCAListeningMode") && objc_msgSend(v5, "hasNonCAListeningMode") && (v85 = -[BMDeviceAdaptiveVolume nonCAListeningMode](self, "nonCAListeningMode"), v85 == objc_msgSend(v5, "nonCAListeningMode")))
        {
          if (!-[BMDeviceAdaptiveVolume hasFit](self, "hasFit") && ![v5 hasFit] || -[BMDeviceAdaptiveVolume hasFit](self, "hasFit") && objc_msgSend(v5, "hasFit") && (v86 = -[BMDeviceAdaptiveVolume fit](self, "fit"), v86 == objc_msgSend(v5, "fit")))
          {
            if (!-[BMDeviceAdaptiveVolume hasFixedAutoAncGain](self, "hasFixedAutoAncGain") && ![v5 hasFixedAutoAncGain] || -[BMDeviceAdaptiveVolume hasFixedAutoAncGain](self, "hasFixedAutoAncGain") && objc_msgSend(v5, "hasFixedAutoAncGain") && (v87 = -[BMDeviceAdaptiveVolume fixedAutoAncGain](self, "fixedAutoAncGain"), v87 == objc_msgSend(v5, "fixedAutoAncGain")))
            {
              if (!-[BMDeviceAdaptiveVolume hasAdjustedAutoAncGain](self, "hasAdjustedAutoAncGain") && ![v5 hasAdjustedAutoAncGain] || -[BMDeviceAdaptiveVolume hasAdjustedAutoAncGain](self, "hasAdjustedAutoAncGain") && objc_msgSend(v5, "hasAdjustedAutoAncGain") && (v88 = -[BMDeviceAdaptiveVolume adjustedAutoAncGain](self, "adjustedAutoAncGain"), v88 == objc_msgSend(v5, "adjustedAutoAncGain")))
              {
                if (!-[BMDeviceAdaptiveVolume hasTimestamp](self, "hasTimestamp") && ![v5 hasTimestamp] || -[BMDeviceAdaptiveVolume hasTimestamp](self, "hasTimestamp") && objc_msgSend(v5, "hasTimestamp") && (v89 = -[BMDeviceAdaptiveVolume timestamp](self, "timestamp"), v89 == objc_msgSend(v5, "timestamp")))
                {
                  if (!-[BMDeviceAdaptiveVolume hasDRCenablementBit](self, "hasDRCenablementBit") && ![v5 hasDRCenablementBit] || -[BMDeviceAdaptiveVolume hasDRCenablementBit](self, "hasDRCenablementBit") && objc_msgSend(v5, "hasDRCenablementBit") && (v90 = -[BMDeviceAdaptiveVolume DRCenablementBit](self, "DRCenablementBit"), v90 == objc_msgSend(v5, "DRCenablementBit")))
                  {
                    if (!-[BMDeviceAdaptiveVolume hasDRCwindFlag](self, "hasDRCwindFlag") && ![v5 hasDRCwindFlag] || -[BMDeviceAdaptiveVolume hasDRCwindFlag](self, "hasDRCwindFlag") && objc_msgSend(v5, "hasDRCwindFlag") && (v91 = -[BMDeviceAdaptiveVolume DRCwindFlag](self, "DRCwindFlag"), v91 == objc_msgSend(v5, "DRCwindFlag")))
                    {
                      if (!-[BMDeviceAdaptiveVolume hasDRCappSelfVoiceFlag](self, "hasDRCappSelfVoiceFlag") && ![v5 hasDRCappSelfVoiceFlag] || -[BMDeviceAdaptiveVolume hasDRCappSelfVoiceFlag](self, "hasDRCappSelfVoiceFlag") && objc_msgSend(v5, "hasDRCappSelfVoiceFlag") && (v92 = -[BMDeviceAdaptiveVolume DRCappSelfVoiceFlag](self, "DRCappSelfVoiceFlag"), v92 == objc_msgSend(v5, "DRCappSelfVoiceFlag")))
                      {
                        if (!-[BMDeviceAdaptiveVolume hasDrumDRC](self, "hasDrumDRC") && ![v5 hasDrumDRC] || -[BMDeviceAdaptiveVolume hasDrumDRC](self, "hasDrumDRC") && objc_msgSend(v5, "hasDrumDRC") && (v93 = -[BMDeviceAdaptiveVolume drumDRC](self, "drumDRC"), v93 == objc_msgSend(v5, "drumDRC")))
                        {
                          if (!-[BMDeviceAdaptiveVolume hasRoutedDRCGain](self, "hasRoutedDRCGain") && ![v5 hasRoutedDRCGain])
                          {
                            v45 = 1;
                            goto LABEL_340;
                          }

                          if (-[BMDeviceAdaptiveVolume hasRoutedDRCGain](self, "hasRoutedDRCGain") && [v5 hasRoutedDRCGain])
                          {
                            routedDRCGain = [(BMDeviceAdaptiveVolume *)self routedDRCGain];
                            v45 = routedDRCGain == [v5 routedDRCGain];
LABEL_340:

                            goto LABEL_341;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_339:
    v45 = 0;
    goto LABEL_340;
  }

  v45 = 0;
LABEL_341:

  return v45;
}

- (id)jsonDictionary
{
  v270 = *MEMORY[0x1E69E9840];
  if ([(BMDeviceAdaptiveVolume *)self hasControllerVersion])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume controllerVersion](self, "controllerVersion")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasRefMicdBA])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume refMicdBA](self, "refMicdBA")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasRefMicdBC])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume refMicdBC](self, "refMicdBC")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasDrumdBA])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume drumdBA](self, "drumdBA")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasDrumdBK])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume drumdBK](self, "drumdBK")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasDrumdBAPredicted])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume drumdBAPredicted](self, "drumdBAPredicted")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasDownlinkdBA])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume downlinkdBA](self, "downlinkdBA")}];
  }

  else
  {
    v9 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasCurrentVolumePrct])
  {
    v213 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume currentVolumePrct](self, "currentVolumePrct")}];
  }

  else
  {
    v213 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasLastUserVolChangeType])
  {
    v212 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume lastUserVolChangeType](self, "lastUserVolChangeType")}];
  }

  else
  {
    v212 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasHeadphoneMode])
  {
    v211 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume headphoneMode](self, "headphoneMode")}];
  }

  else
  {
    v211 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasStreamType])
  {
    v210 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume streamType](self, "streamType")}];
  }

  else
  {
    v210 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasWindSpeechAggressorFlag])
  {
    v209 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume windSpeechAggressorFlag](self, "windSpeechAggressorFlag")}];
  }

  else
  {
    v209 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasVolumeChangeFlag])
  {
    v208 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume volumeChangeFlag](self, "volumeChangeFlag")}];
  }

  else
  {
    v208 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasSpeechPresenceProbability])
  {
    v207 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume speechPresenceProbability](self, "speechPresenceProbability")}];
  }

  else
  {
    v207 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasPersonalizationParamSnr])
  {
    v206 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceAdaptiveVolume personalizationParamSnr](self, "personalizationParamSnr")}];
  }

  else
  {
    v206 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasPersonalizationParamMistakes])
  {
    v205 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceAdaptiveVolume personalizationParamMistakes](self, "personalizationParamMistakes")}];
  }

  else
  {
    v205 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasLastEMediadBA])
  {
    v204 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume lastEMediadBA](self, "lastEMediadBA")}];
  }

  else
  {
    v204 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasLastVolMediaPrct])
  {
    v203 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume lastVolMediaPrct](self, "lastVolMediaPrct")}];
  }

  else
  {
    v203 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasLastETelephonydBA])
  {
    v202 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume lastETelephonydBA](self, "lastETelephonydBA")}];
  }

  else
  {
    v202 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasLastVolTelephonyPrct])
  {
    v201 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume lastVolTelephonyPrct](self, "lastVolTelephonyPrct")}];
  }

  else
  {
    v201 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasLastESiridBA])
  {
    v200 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume lastESiridBA](self, "lastESiridBA")}];
  }

  else
  {
    v200 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasLastVolSiriPrct])
  {
    v199 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume lastVolSiriPrct](self, "lastVolSiriPrct")}];
  }

  else
  {
    v199 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasSmoothEae])
  {
    v198 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume smoothEae](self, "smoothEae")}];
  }

  else
  {
    v198 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasDesiredDeltaE])
  {
    v197 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceAdaptiveVolume desiredDeltaE](self, "desiredDeltaE")}];
  }

  else
  {
    v197 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasPredVolMediaPrct])
  {
    v196 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceAdaptiveVolume predVolMediaPrct](self, "predVolMediaPrct")}];
  }

  else
  {
    v196 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasPredVolTelephonyPrct])
  {
    v195 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceAdaptiveVolume predVolTelephonyPrct](self, "predVolTelephonyPrct")}];
  }

  else
  {
    v195 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasPredVolSiriPrct])
  {
    v194 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceAdaptiveVolume predVolSiriPrct](self, "predVolSiriPrct")}];
  }

  else
  {
    v194 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasOnStartPredictionFlag])
  {
    v193 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume onStartPredictionFlag](self, "onStartPredictionFlag")}];
  }

  else
  {
    v193 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasGuardrailsAvoidFlag])
  {
    v192 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume guardrailsAvoidFlag](self, "guardrailsAvoidFlag")}];
  }

  else
  {
    v192 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasMinMaxCutFlag])
  {
    v191 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume minMaxCutFlag](self, "minMaxCutFlag")}];
  }

  else
  {
    v191 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasManualVolumeChangeFlag])
  {
    v190 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume manualVolumeChangeFlag](self, "manualVolumeChangeFlag")}];
  }

  else
  {
    v190 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasBigWindowSize])
  {
    v189 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume bigWindowSize](self, "bigWindowSize")}];
  }

  else
  {
    v189 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasSmallWindowSize])
  {
    v188 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume smallWindowSize](self, "smallWindowSize")}];
  }

  else
  {
    v188 = 0;
  }

  activeAppName = [(BMDeviceAdaptiveVolume *)self activeAppName];
  activeAirpodsSerialNumber = [(BMDeviceAdaptiveVolume *)self activeAirpodsSerialNumber];
  if ([(BMDeviceAdaptiveVolume *)self hasAnchorVol])
  {
    v185 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume anchorVol](self, "anchorVol")}];
  }

  else
  {
    v185 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasAnchorEnv])
  {
    v184 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume anchorEnv](self, "anchorEnv")}];
  }

  else
  {
    v184 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasPersonalizationCoeff])
  {
    v183 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume personalizationCoeff](self, "personalizationCoeff")}];
  }

  else
  {
    v183 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasUnsignedPredVolMediaPrct])
  {
    v182 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume unsignedPredVolMediaPrct](self, "unsignedPredVolMediaPrct")}];
  }

  else
  {
    v182 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasUnsignedPredVolTelephonyPrct])
  {
    v181 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume unsignedPredVolTelephonyPrct](self, "unsignedPredVolTelephonyPrct")}];
  }

  else
  {
    v181 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasUnsignedPredVolSiriPrct])
  {
    v180 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume unsignedPredVolSiriPrct](self, "unsignedPredVolSiriPrct")}];
  }

  else
  {
    v180 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasSingleBudFlag])
  {
    v179 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume singleBudFlag](self, "singleBudFlag")}];
  }

  else
  {
    v179 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasCdEngagementFlag])
  {
    v178 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume cdEngagementFlag](self, "cdEngagementFlag")}];
  }

  else
  {
    v178 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasActiveStreamFlag])
  {
    v177 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume activeStreamFlag](self, "activeStreamFlag")}];
  }

  else
  {
    v177 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasPvFeatureEnableFlag])
  {
    v176 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume pvFeatureEnableFlag](self, "pvFeatureEnableFlag")}];
  }

  else
  {
    v176 = 0;
  }

  _envSpectralData32BJSONArray = [(BMDeviceAdaptiveVolume *)self _envSpectralData32BJSONArray];
  if ([(BMDeviceAdaptiveVolume *)self hasWindStrength])
  {
    v155 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume windStrength](self, "windStrength")}];
  }

  else
  {
    v155 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasWindProb])
  {
    v154 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume windProb](self, "windProb")}];
  }

  else
  {
    v154 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasMediaType])
  {
    v175 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume mediaType](self, "mediaType")}];
  }

  else
  {
    v175 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasSourceActivity])
  {
    v174 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume sourceActivity](self, "sourceActivity")}];
  }

  else
  {
    v174 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasBudActivity])
  {
    v173 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume budActivity](self, "budActivity")}];
  }

  else
  {
    v173 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasLocation])
  {
    v172 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume location](self, "location")}];
  }

  else
  {
    v172 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasLocationType])
  {
    v171 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume locationType](self, "locationType")}];
  }

  else
  {
    v171 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasFocusMode])
  {
    v170 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume focusMode](self, "focusMode")}];
  }

  else
  {
    v170 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasStreamingAppBundleId])
  {
    v169 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume streamingAppBundleId](self, "streamingAppBundleId")}];
  }

  else
  {
    v169 = 0;
  }

  _noiseType4BJSONArray = [(BMDeviceAdaptiveVolume *)self _noiseType4BJSONArray];
  if ([(BMDeviceAdaptiveVolume *)self hasInstdBA])
  {
    v167 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume instdBA](self, "instdBA")}];
  }

  else
  {
    v167 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasInstdBC])
  {
    v166 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume instdBC](self, "instdBC")}];
  }

  else
  {
    v166 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasNonCAListeningMode])
  {
    v165 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume nonCAListeningMode](self, "nonCAListeningMode")}];
  }

  else
  {
    v165 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasFit])
  {
    v164 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume fit](self, "fit")}];
  }

  else
  {
    v164 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasFixedAutoAncGain])
  {
    v163 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume fixedAutoAncGain](self, "fixedAutoAncGain")}];
  }

  else
  {
    v163 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasAdjustedAutoAncGain])
  {
    v162 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume adjustedAutoAncGain](self, "adjustedAutoAncGain")}];
  }

  else
  {
    v162 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasTimestamp])
  {
    v161 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume timestamp](self, "timestamp")}];
  }

  else
  {
    v161 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasDRCenablementBit])
  {
    v160 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume DRCenablementBit](self, "DRCenablementBit")}];
  }

  else
  {
    v160 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasDRCwindFlag])
  {
    v159 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume DRCwindFlag](self, "DRCwindFlag")}];
  }

  else
  {
    v159 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasDRCappSelfVoiceFlag])
  {
    v158 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume DRCappSelfVoiceFlag](self, "DRCappSelfVoiceFlag")}];
  }

  else
  {
    v158 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasDrumDRC])
  {
    v157 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume drumDRC](self, "drumDRC")}];
  }

  else
  {
    v157 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasRoutedDRCGain])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume routedDRCGain](self, "routedDRCGain")}];
  }

  else
  {
    v10 = 0;
  }

  v215[0] = @"controllerVersion";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v147 = null;
  v242[0] = null;
  v215[1] = @"refMicdBA";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v146 = null2;
  v242[1] = null2;
  v215[2] = @"refMicdBC";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v145 = null3;
  v242[2] = null3;
  v215[3] = @"drumdBA";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v144 = null4;
  v242[3] = null4;
  v215[4] = @"drumdBK";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v143 = null5;
  v242[4] = null5;
  v215[5] = @"drumdBAPredicted";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v142 = null6;
  v242[5] = null6;
  v215[6] = @"downlinkdBA";
  null7 = v9;
  if (!v9)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v141 = null7;
  v242[6] = null7;
  v215[7] = @"currentVolumePrct";
  null8 = v213;
  if (!v213)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v140 = null8;
  v242[7] = null8;
  v215[8] = @"lastUserVolChangeType";
  null9 = v212;
  if (!v212)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v139 = null9;
  v242[8] = null9;
  v215[9] = @"headphoneMode";
  null10 = v211;
  if (!v211)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v138 = null10;
  v242[9] = null10;
  v215[10] = @"streamType";
  null11 = v210;
  if (!v210)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v137 = null11;
  v242[10] = null11;
  v215[11] = @"windSpeechAggressorFlag";
  null12 = v209;
  if (!v209)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v136 = null12;
  v242[11] = null12;
  v215[12] = @"volumeChangeFlag";
  null13 = v208;
  if (!v208)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v135 = null13;
  v242[12] = null13;
  v215[13] = @"speechPresenceProbability";
  null14 = v207;
  if (!v207)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v134 = null14;
  v242[13] = null14;
  v215[14] = @"personalizationParamSnr";
  null15 = v206;
  if (!v206)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v133 = null15;
  v242[14] = null15;
  v215[15] = @"personalizationParamMistakes";
  null16 = v205;
  if (!v205)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v132 = null16;
  v242[15] = null16;
  v215[16] = @"lastEMediadBA";
  null17 = v204;
  if (!v204)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v131 = null17;
  v242[16] = null17;
  v215[17] = @"lastVolMediaPrct";
  null18 = v203;
  if (!v203)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v130 = null18;
  v242[17] = null18;
  v215[18] = @"lastETelephonydBA";
  null19 = v202;
  if (!v202)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v129 = null19;
  v242[18] = null19;
  v215[19] = @"lastVolTelephonyPrct";
  null20 = v201;
  if (!v201)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v128 = null20;
  v242[19] = null20;
  v215[20] = @"lastESiridBA";
  null21 = v200;
  if (!v200)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v127 = null21;
  v242[20] = null21;
  v215[21] = @"lastVolSiriPrct";
  null22 = v199;
  if (!v199)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v126 = null22;
  v242[21] = null22;
  v215[22] = @"smoothEae";
  null23 = v198;
  if (!v198)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v125 = null23;
  v242[22] = null23;
  v215[23] = @"desiredDeltaE";
  null24 = v197;
  if (!v197)
  {
    null24 = [MEMORY[0x1E695DFB0] null];
  }

  v124 = null24;
  v242[23] = null24;
  v215[24] = @"predVolMediaPrct";
  null25 = v196;
  if (!v196)
  {
    null25 = [MEMORY[0x1E695DFB0] null];
  }

  v123 = null25;
  v242[24] = null25;
  v215[25] = @"predVolTelephonyPrct";
  null26 = v195;
  if (!v195)
  {
    null26 = [MEMORY[0x1E695DFB0] null];
  }

  v122 = null26;
  v242[25] = null26;
  v215[26] = @"predVolSiriPrct";
  null27 = v194;
  if (!v194)
  {
    null27 = [MEMORY[0x1E695DFB0] null];
  }

  v121 = null27;
  v242[26] = null27;
  v215[27] = @"onStartPredictionFlag";
  null28 = v193;
  if (!v193)
  {
    null28 = [MEMORY[0x1E695DFB0] null];
  }

  v120 = null28;
  v242[27] = null28;
  v215[28] = @"guardrailsAvoidFlag";
  null29 = v192;
  if (!v192)
  {
    null29 = [MEMORY[0x1E695DFB0] null];
  }

  v119 = null29;
  v242[28] = null29;
  v215[29] = @"minMaxCutFlag";
  null30 = v191;
  if (!v191)
  {
    null30 = [MEMORY[0x1E695DFB0] null];
  }

  v118 = null30;
  v242[29] = null30;
  v215[30] = @"manualVolumeChangeFlag";
  null31 = v190;
  if (!v190)
  {
    null31 = [MEMORY[0x1E695DFB0] null];
  }

  v117 = null31;
  v242[30] = null31;
  v215[31] = @"bigWindowSize";
  null32 = v189;
  if (!v189)
  {
    null32 = [MEMORY[0x1E695DFB0] null];
  }

  v116 = null32;
  v242[31] = null32;
  v215[32] = @"smallWindowSize";
  null33 = v188;
  if (!v188)
  {
    null33 = [MEMORY[0x1E695DFB0] null];
  }

  v115 = null33;
  v242[32] = null33;
  v215[33] = @"activeAppName";
  null34 = activeAppName;
  if (!activeAppName)
  {
    null34 = [MEMORY[0x1E695DFB0] null];
  }

  v114 = null34;
  v242[33] = null34;
  v215[34] = @"activeAirpodsSerialNumber";
  null35 = activeAirpodsSerialNumber;
  if (!activeAirpodsSerialNumber)
  {
    null35 = [MEMORY[0x1E695DFB0] null];
  }

  v113 = null35;
  v242[34] = null35;
  v215[35] = @"anchorVol";
  null36 = v185;
  if (!v185)
  {
    null36 = [MEMORY[0x1E695DFB0] null];
  }

  v112 = null36;
  v242[35] = null36;
  v215[36] = @"anchorEnv";
  null37 = v184;
  if (!v184)
  {
    null37 = [MEMORY[0x1E695DFB0] null];
  }

  v111 = null37;
  v242[36] = null37;
  v215[37] = @"personalizationCoeff";
  null38 = v183;
  if (!v183)
  {
    null38 = [MEMORY[0x1E695DFB0] null];
  }

  v110 = null38;
  v242[37] = null38;
  v215[38] = @"unsignedPredVolMediaPrct";
  null39 = v182;
  if (!v182)
  {
    null39 = [MEMORY[0x1E695DFB0] null];
  }

  v109 = null39;
  v242[38] = null39;
  v215[39] = @"unsignedPredVolTelephonyPrct";
  null40 = v181;
  if (!v181)
  {
    null40 = [MEMORY[0x1E695DFB0] null];
  }

  v108 = null40;
  v242[39] = null40;
  v215[40] = @"unsignedPredVolSiriPrct";
  null41 = v180;
  if (!v180)
  {
    null41 = [MEMORY[0x1E695DFB0] null];
  }

  v107 = null41;
  v242[40] = null41;
  v215[41] = @"singleBudFlag";
  null42 = v179;
  if (!v179)
  {
    null42 = [MEMORY[0x1E695DFB0] null];
  }

  v106 = null42;
  v242[41] = null42;
  v215[42] = @"cdEngagementFlag";
  null43 = v178;
  if (!v178)
  {
    null43 = [MEMORY[0x1E695DFB0] null];
  }

  v105 = null43;
  v242[42] = null43;
  v215[43] = @"activeStreamFlag";
  null44 = v177;
  if (!v177)
  {
    null44 = [MEMORY[0x1E695DFB0] null];
  }

  v104 = null44;
  v153 = v10;
  v242[43] = null44;
  v215[44] = @"pvFeatureEnableFlag";
  null45 = v176;
  if (!v176)
  {
    null45 = [MEMORY[0x1E695DFB0] null];
  }

  v103 = null45;
  v242[44] = null45;
  v215[45] = @"envSpectralData32B";
  if (_envSpectralData32BJSONArray)
  {
    v243 = _envSpectralData32BJSONArray;
    v216 = @"envSpectralData_32B";
    null47 = _envSpectralData32BJSONArray;
  }

  else
  {
    null46 = [MEMORY[0x1E695DFB0] null];
    v243 = null46;
    v216 = @"envSpectralData_32B";
    null47 = [MEMORY[0x1E695DFB0] null];
  }

  v102 = null47;
  v244 = null47;
  v217 = @"windStrength";
  if (v155)
  {
    v245 = v155;
    v218 = @"wind_strength";
    null49 = v155;
  }

  else
  {
    null48 = [MEMORY[0x1E695DFB0] null];
    v245 = null48;
    v218 = @"wind_strength";
    null49 = [MEMORY[0x1E695DFB0] null];
  }

  v101 = null49;
  v246 = null49;
  v219 = @"windProb";
  if (v154)
  {
    v247 = v154;
    v220 = @"wind_prob";
    null51 = v154;
  }

  else
  {
    null50 = [MEMORY[0x1E695DFB0] null];
    v247 = null50;
    v220 = @"wind_prob";
    null51 = [MEMORY[0x1E695DFB0] null];
  }

  v100 = null51;
  v248 = null51;
  v221 = @"mediaType";
  null52 = v175;
  if (!v175)
  {
    null52 = [MEMORY[0x1E695DFB0] null];
  }

  v249 = null52;
  v222 = @"sourceActivity";
  null53 = v174;
  if (!v174)
  {
    null53 = [MEMORY[0x1E695DFB0] null];
  }

  v250 = null53;
  v223 = @"budActivity";
  null54 = v173;
  if (!v173)
  {
    null54 = [MEMORY[0x1E695DFB0] null];
  }

  v251 = null54;
  v224 = @"location";
  null55 = v172;
  if (!v172)
  {
    null55 = [MEMORY[0x1E695DFB0] null];
  }

  v96 = null55;
  v252 = null55;
  v225 = @"locationType";
  null56 = v171;
  if (!v171)
  {
    null56 = [MEMORY[0x1E695DFB0] null];
  }

  v95 = null56;
  v253 = null56;
  v226 = @"focusMode";
  null57 = v170;
  if (!v170)
  {
    null57 = [MEMORY[0x1E695DFB0] null];
  }

  v94 = null57;
  v99 = null52;
  v254 = null57;
  v227 = @"streamingAppBundleId";
  null58 = v169;
  if (!v169)
  {
    null58 = [MEMORY[0x1E695DFB0] null];
  }

  v93 = null58;
  v255 = null58;
  v228 = @"noiseType4B";
  v97 = null54;
  if (_noiseType4BJSONArray)
  {
    v256 = _noiseType4BJSONArray;
    v229 = @"noiseType_4B";
    null60 = _noiseType4BJSONArray;
  }

  else
  {
    null59 = [MEMORY[0x1E695DFB0] null];
    v256 = null59;
    v229 = @"noiseType_4B";
    null60 = [MEMORY[0x1E695DFB0] null];
  }

  v92 = null60;
  v257 = null60;
  v230 = @"instdBA";
  null61 = v167;
  if (!v167)
  {
    null61 = [MEMORY[0x1E695DFB0] null];
  }

  v258 = null61;
  v231 = @"instdBC";
  null62 = v166;
  if (!v166)
  {
    null62 = [MEMORY[0x1E695DFB0] null];
  }

  v259 = null62;
  v232 = @"nonCAListeningMode";
  null63 = v165;
  if (!v165)
  {
    null63 = [MEMORY[0x1E695DFB0] null];
  }

  v214 = null63;
  v260 = null63;
  v233 = @"fit";
  null64 = v164;
  if (!v164)
  {
    null64 = [MEMORY[0x1E695DFB0] null];
  }

  v149 = v9;
  v90 = null64;
  v261 = null64;
  v234 = @"fixedAutoAncGain";
  null65 = v163;
  if (!v163)
  {
    null65 = [MEMORY[0x1E695DFB0] null];
  }

  v98 = null53;
  v89 = null65;
  v262 = null65;
  v235 = @"adjustedAutoAncGain";
  null66 = v162;
  if (!v162)
  {
    null66 = [MEMORY[0x1E695DFB0] null];
  }

  v151 = v7;
  v152 = v6;
  v88 = null66;
  v263 = null66;
  v236 = @"timestamp";
  null67 = v161;
  if (!v161)
  {
    null67 = [MEMORY[0x1E695DFB0] null];
  }

  v150 = v4;
  v264 = null67;
  v237 = @"DRCenablementBit";
  null68 = v160;
  if (!v160)
  {
    null68 = [MEMORY[0x1E695DFB0] null];
  }

  v91 = null61;
  v75 = v8;
  v265 = null68;
  v238 = @"DRCwindFlag";
  null69 = v159;
  if (!v159)
  {
    null69 = [MEMORY[0x1E695DFB0] null];
  }

  v77 = v3;
  v266 = null69;
  v239 = @"DRCappSelfVoiceFlag";
  null70 = v158;
  if (!v158)
  {
    null70 = [MEMORY[0x1E695DFB0] null];
  }

  v267 = null70;
  v240 = @"drumDRC";
  null71 = v157;
  if (!v157)
  {
    null71 = [MEMORY[0x1E695DFB0] null];
  }

  v268 = null71;
  v241 = @"routedDRCGain";
  null72 = v153;
  if (!v153)
  {
    null72 = [MEMORY[0x1E695DFB0] null];
  }

  v269 = null72;
  v148 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v242 forKeys:v215 count:72];
  if (!v153)
  {
  }

  v81 = v214;
  if (!v157)
  {

    v81 = v214;
  }

  if (!v158)
  {

    v81 = v214;
  }

  if (!v159)
  {

    v81 = v214;
  }

  if (!v160)
  {

    v81 = v214;
  }

  if (!v161)
  {

    v81 = v214;
  }

  if (!v162)
  {

    v81 = v214;
  }

  if (!v163)
  {

    v81 = v214;
  }

  if (!v164)
  {

    v81 = v214;
  }

  if (!v165)
  {
  }

  if (!v166)
  {
  }

  if (!v167)
  {
  }

  if (!_noiseType4BJSONArray)
  {
  }

  if (!v169)
  {
  }

  if (!v170)
  {
  }

  if (!v171)
  {
  }

  if (!v172)
  {
  }

  if (!v173)
  {
  }

  if (!v174)
  {
  }

  if (v175)
  {
    if (v154)
    {
      goto LABEL_373;
    }
  }

  else
  {

    if (v154)
    {
LABEL_373:
      if (v155)
      {
        goto LABEL_374;
      }

LABEL_462:

      if (_envSpectralData32BJSONArray)
      {
        goto LABEL_375;
      }

      goto LABEL_463;
    }
  }

  if (!v155)
  {
    goto LABEL_462;
  }

LABEL_374:
  if (_envSpectralData32BJSONArray)
  {
    goto LABEL_375;
  }

LABEL_463:

LABEL_375:
  if (!v176)
  {
  }

  if (!v177)
  {
  }

  if (!v178)
  {
  }

  if (!v179)
  {
  }

  if (!v180)
  {
  }

  if (!v181)
  {
  }

  if (!v182)
  {
  }

  if (!v183)
  {
  }

  if (!v184)
  {
  }

  if (!v185)
  {
  }

  if (!activeAirpodsSerialNumber)
  {
  }

  if (!activeAppName)
  {
  }

  if (!v188)
  {
  }

  if (!v189)
  {
  }

  if (!v190)
  {
  }

  if (!v191)
  {
  }

  if (!v192)
  {
  }

  if (!v193)
  {
  }

  if (!v194)
  {
  }

  if (!v195)
  {
  }

  if (!v196)
  {
  }

  if (!v197)
  {
  }

  if (!v198)
  {
  }

  if (!v199)
  {
  }

  if (!v200)
  {
  }

  if (!v201)
  {
  }

  if (!v202)
  {
  }

  if (!v203)
  {
  }

  if (!v204)
  {
  }

  if (!v205)
  {
  }

  if (!v206)
  {
  }

  if (!v207)
  {
  }

  if (!v208)
  {
  }

  if (!v209)
  {
  }

  if (!v210)
  {
  }

  if (!v211)
  {
  }

  if (!v212)
  {
  }

  if (v213)
  {
    if (v149)
    {
      goto LABEL_451;
    }
  }

  else
  {

    if (v149)
    {
LABEL_451:
      if (v75)
      {
        goto LABEL_452;
      }

      goto LABEL_466;
    }
  }

  if (v75)
  {
LABEL_452:
    if (v151)
    {
      goto LABEL_453;
    }

    goto LABEL_467;
  }

LABEL_466:

  if (v151)
  {
LABEL_453:
    if (v152)
    {
      goto LABEL_454;
    }

    goto LABEL_468;
  }

LABEL_467:

  if (v152)
  {
LABEL_454:
    if (v5)
    {
      goto LABEL_455;
    }

    goto LABEL_469;
  }

LABEL_468:

  if (v5)
  {
LABEL_455:
    if (v150)
    {
      goto LABEL_456;
    }

LABEL_470:

    if (v77)
    {
      goto LABEL_457;
    }

    goto LABEL_471;
  }

LABEL_469:

  if (!v150)
  {
    goto LABEL_470;
  }

LABEL_456:
  if (v77)
  {
    goto LABEL_457;
  }

LABEL_471:

LABEL_457:
  v82 = *MEMORY[0x1E69E9840];

  return v148;
}

- (id)_noiseType4BJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  noiseType4B = [(BMDeviceAdaptiveVolume *)self noiseType4B];
  v5 = [noiseType4B countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(noiseType4B);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [noiseType4B countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_envSpectralData32BJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  envSpectralData32B = [(BMDeviceAdaptiveVolume *)self envSpectralData32B];
  v5 = [envSpectralData32B countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(envSpectralData32B);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [envSpectralData32B countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMDeviceAdaptiveVolume)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v791[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"controllerVersion"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"refMicdBA"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
LABEL_7:
      v637 = [dictionaryCopy objectForKeyedSubscript:@"refMicdBC"];
      v633 = v8;
      if (!v637 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v11 = v10;
        selfCopy2 = self;
        errorCopy2 = error;
        v636 = 0;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
        selfCopy2 = self;
        errorCopy2 = error;
        v636 = v637;
LABEL_10:
        v14 = [dictionaryCopy objectForKeyedSubscript:@"drumdBA"];
        if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v629 = v14;
          v630 = 0;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v629 = v14;
          v630 = v14;
LABEL_13:
          v15 = [dictionaryCopy objectForKeyedSubscript:@"drumdBK"];
          v634 = v15;
          if (!v15 || (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v631 = 0;
            goto LABEL_16;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v631 = v16;
LABEL_16:
            v17 = [dictionaryCopy objectForKeyedSubscript:@"drumdBAPredicted"];
            v628 = v17;
            if (!v17 || (v18 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v626 = 0;
              goto LABEL_19;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v626 = v18;
LABEL_19:
              v19 = [dictionaryCopy objectForKeyedSubscript:@"downlinkdBA"];
              v625 = v19;
              if (!v19 || (v20 = v19, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v623 = 0;
                goto LABEL_22;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v623 = v20;
LABEL_22:
                v21 = [dictionaryCopy objectForKeyedSubscript:@"currentVolumePrct"];
                v611 = v21;
                if (!v21 || (v22 = v21, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v609 = 0;
                  goto LABEL_25;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v609 = v22;
LABEL_25:
                  v23 = [dictionaryCopy objectForKeyedSubscript:@"lastUserVolChangeType"];
                  v608 = v23;
                  if (!v23 || (v24 = v23, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v606 = 0;
                    goto LABEL_28;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v606 = v24;
LABEL_28:
                    v25 = [dictionaryCopy objectForKeyedSubscript:@"headphoneMode"];
                    v605 = v25;
                    if (!v25 || (v26 = v25, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v603 = 0;
                      goto LABEL_31;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v603 = v26;
LABEL_31:
                      v27 = [dictionaryCopy objectForKeyedSubscript:@"streamType"];
                      v602 = v27;
                      if (!v27 || (v28 = v27, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v600 = 0;
                        goto LABEL_34;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v600 = v28;
LABEL_34:
                        v29 = [dictionaryCopy objectForKeyedSubscript:@"windSpeechAggressorFlag"];
                        v587 = v29;
                        if (!v29 || (v30 = v29, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v586 = 0;
                          goto LABEL_37;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v586 = v30;
LABEL_37:
                          v31 = [dictionaryCopy objectForKeyedSubscript:@"volumeChangeFlag"];
                          v585 = v31;
                          if (!v31 || (v32 = v31, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v584 = 0;
                            goto LABEL_40;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v584 = v32;
LABEL_40:
                            v33 = [dictionaryCopy objectForKeyedSubscript:@"speechPresenceProbability"];
                            v583 = v33;
                            if (!v33 || (v34 = v33, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v582 = 0;
                              goto LABEL_43;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v582 = v34;
LABEL_43:
                              v35 = [dictionaryCopy objectForKeyedSubscript:@"personalizationParamSnr"];
                              v581 = v35;
                              if (!v35 || (v36 = v35, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v580 = 0;
                                goto LABEL_46;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v580 = v36;
LABEL_46:
                                v37 = [dictionaryCopy objectForKeyedSubscript:@"personalizationParamMistakes"];
                                v579 = v37;
                                if (!v37 || (v38 = v37, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v578 = 0;
                                  goto LABEL_49;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v578 = v38;
LABEL_49:
                                  v39 = [dictionaryCopy objectForKeyedSubscript:@"lastEMediadBA"];
                                  v577 = v39;
                                  if (!v39 || (v40 = v39, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v573 = 0;
LABEL_52:
                                    v41 = [dictionaryCopy objectForKeyedSubscript:@"lastVolMediaPrct"];
                                    v612 = errorCopy2;
                                    v574 = v41;
                                    if (!v41)
                                    {
                                      v575 = 0;
                                      self = selfCopy2;
                                      goto LABEL_119;
                                    }

                                    v42 = v41;
                                    objc_opt_class();
                                    self = selfCopy2;
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v575 = 0;
LABEL_119:
                                      v10 = v11;
                                      goto LABEL_120;
                                    }

                                    objc_opt_class();
                                    v10 = v11;
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v575 = v42;
LABEL_120:
                                      v62 = v630;
                                      v125 = [dictionaryCopy objectForKeyedSubscript:@"lastETelephonydBA"];
                                      v572 = v125;
                                      if (!v125 || (v126 = v125, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v570 = 0;
                                        goto LABEL_123;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v570 = v126;
LABEL_123:
                                        v127 = [dictionaryCopy objectForKeyedSubscript:@"lastVolTelephonyPrct"];
                                        v569 = v127;
                                        if (!v127 || (v128 = v127, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v129 = v10;
                                          selfCopy4 = self;
                                          v567 = 0;
                                          goto LABEL_126;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v129 = v10;
                                          selfCopy4 = self;
                                          v567 = v128;
LABEL_126:
                                          v131 = [dictionaryCopy objectForKeyedSubscript:@"lastESiridBA"];
                                          v566 = v131;
                                          if (!v131 || (v132 = v131, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v564 = 0;
                                            goto LABEL_129;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v564 = v132;
LABEL_129:
                                            v133 = [dictionaryCopy objectForKeyedSubscript:@"lastVolSiriPrct"];
                                            v563 = v133;
                                            if (!v133 || (v134 = v133, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v561 = 0;
                                              goto LABEL_132;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v561 = v134;
LABEL_132:
                                              v135 = [dictionaryCopy objectForKeyedSubscript:@"smoothEae"];
                                              v560 = v135;
                                              if (!v135 || (v136 = v135, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                              {
                                                v558 = 0;
                                                goto LABEL_135;
                                              }

                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v558 = v136;
LABEL_135:
                                                v137 = [dictionaryCopy objectForKeyedSubscript:@"desiredDeltaE"];
                                                v557 = v137;
                                                if (!v137 || (v138 = v137, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                {
                                                  v555 = 0;
                                                  goto LABEL_138;
                                                }

                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v555 = v138;
LABEL_138:
                                                  v139 = [dictionaryCopy objectForKeyedSubscript:@"predVolMediaPrct"];
                                                  v554 = v139;
                                                  if (!v139 || (v140 = v139, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                  {
                                                    v552 = 0;
                                                    goto LABEL_141;
                                                  }

                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v552 = v140;
LABEL_141:
                                                    v141 = [dictionaryCopy objectForKeyedSubscript:@"predVolTelephonyPrct"];
                                                    v551 = v141;
                                                    if (!v141 || (v142 = v141, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                    {
                                                      v548 = 0;
                                                      goto LABEL_144;
                                                    }

                                                    objc_opt_class();
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      v548 = v142;
LABEL_144:
                                                      v143 = [dictionaryCopy objectForKeyedSubscript:@"predVolSiriPrct"];
                                                      v540 = v129;
                                                      v547 = v143;
                                                      if (!v143 || (v144 = v143, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                      {
                                                        v545 = 0;
                                                        goto LABEL_147;
                                                      }

                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        v545 = v144;
LABEL_147:
                                                        v145 = [dictionaryCopy objectForKeyedSubscript:@"onStartPredictionFlag"];
                                                        v544 = v145;
                                                        if (!v145 || (v146 = v145, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                        {
                                                          v542 = 0;
                                                          goto LABEL_150;
                                                        }

                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          v542 = v146;
LABEL_150:
                                                          v147 = [dictionaryCopy objectForKeyedSubscript:@"guardrailsAvoidFlag"];
                                                          v539 = v147;
                                                          if (!v147 || (v148 = v147, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                          {
                                                            v538 = 0;
                                                            goto LABEL_153;
                                                          }

                                                          objc_opt_class();
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            v538 = v148;
LABEL_153:
                                                            v149 = [dictionaryCopy objectForKeyedSubscript:@"minMaxCutFlag"];
                                                            v536 = v149;
                                                            if (!v149 || (v150 = v149, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                            {
                                                              v537 = 0;
                                                              goto LABEL_156;
                                                            }

                                                            objc_opt_class();
                                                            if (objc_opt_isKindOfClass())
                                                            {
                                                              v537 = v150;
LABEL_156:
                                                              v151 = [dictionaryCopy objectForKeyedSubscript:@"manualVolumeChangeFlag"];
                                                              v534 = v151;
                                                              if (!v151 || (v152 = v151, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                              {
                                                                v535 = 0;
                                                                goto LABEL_159;
                                                              }

                                                              objc_opt_class();
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                v535 = v152;
LABEL_159:
                                                                v153 = [dictionaryCopy objectForKeyedSubscript:@"bigWindowSize"];
                                                                v533 = v153;
                                                                if (!v153 || (v154 = v153, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                {
                                                                  v532 = 0;
                                                                  goto LABEL_162;
                                                                }

                                                                objc_opt_class();
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  v532 = v154;
LABEL_162:
                                                                  v155 = [dictionaryCopy objectForKeyedSubscript:@"smallWindowSize"];
                                                                  self = selfCopy4;
                                                                  v527 = v155;
                                                                  if (!v155 || (v156 = v155, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                  {
                                                                    v526 = 0;
                                                                    goto LABEL_165;
                                                                  }

                                                                  objc_opt_class();
                                                                  if (objc_opt_isKindOfClass())
                                                                  {
                                                                    v526 = v156;
LABEL_165:
                                                                    v157 = [dictionaryCopy objectForKeyedSubscript:@"activeAppName"];
                                                                    v525 = v157;
                                                                    if (!v157 || (v158 = v157, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                    {
                                                                      v524 = 0;
LABEL_168:
                                                                      v159 = [dictionaryCopy objectForKeyedSubscript:@"activeAirpodsSerialNumber"];
                                                                      v522 = v159;
                                                                      if (v159 && (v160 = v159, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                      {
                                                                        objc_opt_class();
                                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                        {
                                                                          if (!v612)
                                                                          {
                                                                            v523 = 0;
                                                                            v47 = 0;
                                                                            v10 = v129;
                                                                            v65 = v629;
                                                                            v62 = v630;
                                                                            v199 = v573;
LABEL_564:
                                                                            v287 = v522;
                                                                            goto LABEL_565;
                                                                          }

                                                                          v288 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                          v289 = *MEMORY[0x1E698F240];
                                                                          v722 = *MEMORY[0x1E696A578];
                                                                          v521 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"activeAirpodsSerialNumber"];
                                                                          v723 = v521;
                                                                          v290 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v723 forKeys:&v722 count:1];
                                                                          v523 = 0;
                                                                          v47 = 0;
                                                                          v612->super.super.isa = [v288 initWithDomain:v289 code:2 userInfo:v290];
                                                                          v291 = v290;
                                                                          v10 = v540;
                                                                          v65 = v629;
                                                                          v62 = v630;
                                                                          v199 = v573;
LABEL_563:

                                                                          goto LABEL_564;
                                                                        }

                                                                        v523 = v160;
                                                                        v10 = v129;
                                                                      }

                                                                      else
                                                                      {
                                                                        v523 = 0;
                                                                        v10 = v129;
                                                                      }

                                                                      v62 = v630;
                                                                      v161 = [dictionaryCopy objectForKeyedSubscript:@"anchorVol"];
                                                                      v520 = v161;
                                                                      if (!v161 || (v162 = v161, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                      {
                                                                        v521 = 0;
LABEL_174:
                                                                        v163 = [dictionaryCopy objectForKeyedSubscript:@"anchorEnv"];
                                                                        v515 = v163;
                                                                        if (v163 && (v164 = v163, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                        {
                                                                          objc_opt_class();
                                                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                          {
                                                                            if (!v612)
                                                                            {
                                                                              v519 = 0;
                                                                              v47 = 0;
                                                                              v65 = v629;
                                                                              v199 = v573;
                                                                              goto LABEL_560;
                                                                            }

                                                                            v298 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                            v299 = *MEMORY[0x1E698F240];
                                                                            v718 = *MEMORY[0x1E696A578];
                                                                            v594 = dictionaryCopy;
                                                                            v300 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                            v454 = objc_opt_class();
                                                                            v301 = v300;
                                                                            v10 = v540;
                                                                            dictionaryCopy = v594;
                                                                            v512 = [v301 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v454, @"anchorEnv"];
                                                                            v719 = v512;
                                                                            v165 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v719 forKeys:&v718 count:1];
                                                                            v302 = v298;
                                                                            v8 = v633;
                                                                            v519 = 0;
                                                                            v47 = 0;
                                                                            v612->super.super.isa = [v302 initWithDomain:v299 code:2 userInfo:v165];
                                                                            goto LABEL_375;
                                                                          }

                                                                          v519 = v164;
                                                                        }

                                                                        else
                                                                        {
                                                                          v519 = 0;
                                                                        }

                                                                        v165 = [dictionaryCopy objectForKeyedSubscript:@"personalizationCoeff"];
                                                                        if (!v165 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                        {
                                                                          v509 = v165;
                                                                          v512 = 0;
LABEL_180:
                                                                          v166 = [dictionaryCopy objectForKeyedSubscript:@"unsignedPredVolMediaPrct"];
                                                                          v511 = v166;
                                                                          if (v166 && (v167 = v166, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                          {
                                                                            objc_opt_class();
                                                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                            {
                                                                              if (v612)
                                                                              {
                                                                                v309 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                v310 = *MEMORY[0x1E698F240];
                                                                                v714 = *MEMORY[0x1E696A578];
                                                                                v596 = dictionaryCopy;
                                                                                v311 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                                v456 = objc_opt_class();
                                                                                v312 = v311;
                                                                                v165 = v509;
                                                                                v10 = v540;
                                                                                dictionaryCopy = v596;
                                                                                v507 = [v312 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v456, @"unsignedPredVolMediaPrct"];
                                                                                v715 = v507;
                                                                                v313 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v715 forKeys:&v714 count:1];
                                                                                v314 = v309;
                                                                                v8 = v633;
                                                                                v508 = v313;
                                                                                v510 = 0;
                                                                                v47 = 0;
                                                                                v612->super.super.isa = [v314 initWithDomain:v310 code:2 userInfo:?];
                                                                                v65 = v629;
                                                                                v199 = v573;
                                                                                goto LABEL_557;
                                                                              }

                                                                              v510 = 0;
                                                                              v47 = 0;
                                                                              v65 = v629;
                                                                              v199 = v573;
                                                                              v165 = v509;
                                                                              goto LABEL_558;
                                                                            }

                                                                            v510 = v167;
                                                                          }

                                                                          else
                                                                          {
                                                                            v510 = 0;
                                                                          }

                                                                          v168 = [dictionaryCopy objectForKeyedSubscript:@"unsignedPredVolTelephonyPrct"];
                                                                          v508 = v168;
                                                                          if (v168 && (v169 = v168, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                          {
                                                                            objc_opt_class();
                                                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                            {
                                                                              if (v612)
                                                                              {
                                                                                v328 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                v329 = *MEMORY[0x1E698F240];
                                                                                v712 = *MEMORY[0x1E696A578];
                                                                                v597 = dictionaryCopy;
                                                                                v330 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                                v457 = objc_opt_class();
                                                                                v331 = v330;
                                                                                v165 = v509;
                                                                                v10 = v540;
                                                                                dictionaryCopy = v597;
                                                                                v505 = [v331 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v457, @"unsignedPredVolTelephonyPrct"];
                                                                                v713 = v505;
                                                                                v332 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v713 forKeys:&v712 count:1];
                                                                                v333 = v328;
                                                                                v8 = v633;
                                                                                v506 = v332;
                                                                                v507 = 0;
                                                                                v47 = 0;
                                                                                v612->super.super.isa = [v333 initWithDomain:v329 code:2 userInfo:?];
                                                                                v65 = v629;
                                                                                v199 = v573;
                                                                                goto LABEL_556;
                                                                              }

                                                                              v507 = 0;
                                                                              v47 = 0;
                                                                              v65 = v629;
                                                                              v199 = v573;
                                                                              v165 = v509;
                                                                              goto LABEL_557;
                                                                            }

                                                                            v507 = v169;
                                                                          }

                                                                          else
                                                                          {
                                                                            v507 = 0;
                                                                          }

                                                                          v170 = [dictionaryCopy objectForKeyedSubscript:@"unsignedPredVolSiriPrct"];
                                                                          v506 = v170;
                                                                          if (v170 && (v171 = v170, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                          {
                                                                            objc_opt_class();
                                                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                            {
                                                                              if (v612)
                                                                              {
                                                                                v334 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                v335 = *MEMORY[0x1E698F240];
                                                                                v710 = *MEMORY[0x1E696A578];
                                                                                v598 = dictionaryCopy;
                                                                                v336 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                                v458 = objc_opt_class();
                                                                                v337 = v336;
                                                                                v165 = v509;
                                                                                v10 = v540;
                                                                                dictionaryCopy = v598;
                                                                                v503 = [v337 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v458, @"unsignedPredVolSiriPrct"];
                                                                                v711 = v503;
                                                                                v338 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v711 forKeys:&v710 count:1];
                                                                                v339 = v334;
                                                                                v8 = v633;
                                                                                v504 = v338;
                                                                                v505 = 0;
                                                                                v47 = 0;
                                                                                v612->super.super.isa = [v339 initWithDomain:v335 code:2 userInfo:?];
                                                                                v65 = v629;
                                                                                v199 = v573;
                                                                                goto LABEL_555;
                                                                              }

                                                                              v505 = 0;
                                                                              v47 = 0;
                                                                              v65 = v629;
                                                                              v199 = v573;
                                                                              v165 = v509;
                                                                              goto LABEL_556;
                                                                            }

                                                                            v505 = v171;
                                                                          }

                                                                          else
                                                                          {
                                                                            v505 = 0;
                                                                          }

                                                                          v172 = [dictionaryCopy objectForKeyedSubscript:@"singleBudFlag"];
                                                                          v504 = v172;
                                                                          if (v172 && (v173 = v172, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                          {
                                                                            objc_opt_class();
                                                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                            {
                                                                              v340 = v10;
                                                                              v341 = v8;
                                                                              selfCopy8 = self;
                                                                              if (!v612)
                                                                              {
                                                                                v503 = 0;
                                                                                v47 = 0;
                                                                                v8 = v341;
                                                                                v10 = v340;
                                                                                v65 = v629;
                                                                                v199 = v573;
                                                                                v165 = v509;
                                                                                goto LABEL_555;
                                                                              }

                                                                              v343 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                              v529 = *MEMORY[0x1E698F240];
                                                                              v708 = *MEMORY[0x1E696A578];
                                                                              v501 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"singleBudFlag"];
                                                                              v709 = v501;
                                                                              v502 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v709 forKeys:&v708 count:1];
                                                                              v503 = 0;
                                                                              v47 = 0;
                                                                              v612->super.super.isa = [v343 initWithDomain:v529 code:2 userInfo:?];
                                                                              goto LABEL_392;
                                                                            }

                                                                            v503 = v173;
                                                                          }

                                                                          else
                                                                          {
                                                                            v503 = 0;
                                                                          }

                                                                          v174 = [dictionaryCopy objectForKeyedSubscript:@"cdEngagementFlag"];
                                                                          v502 = v174;
                                                                          if (!v174 || (v175 = v174, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                          {
                                                                            v501 = 0;
LABEL_195:
                                                                            v176 = [dictionaryCopy objectForKeyedSubscript:@"activeStreamFlag"];
                                                                            v500 = v176;
                                                                            if (!v176)
                                                                            {
                                                                              goto LABEL_338;
                                                                            }

                                                                            objc_opt_class();
                                                                            if (objc_opt_isKindOfClass())
                                                                            {
                                                                              v176 = 0;
                                                                              goto LABEL_338;
                                                                            }

                                                                            objc_opt_class();
                                                                            if (objc_opt_isKindOfClass())
                                                                            {
                                                                              v176 = v176;
LABEL_338:
                                                                              v315 = [dictionaryCopy objectForKeyedSubscript:@"pvFeatureEnableFlag"];
                                                                              v499 = v315;
                                                                              if (!v315 || (v316 = v315, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                              {
                                                                                v498 = 0;
                                                                                goto LABEL_341;
                                                                              }

                                                                              objc_opt_class();
                                                                              if (objc_opt_isKindOfClass())
                                                                              {
                                                                                v498 = v316;
LABEL_341:
                                                                                v317 = [dictionaryCopy objectForKeyedSubscript:@"envSpectralData32B"];
                                                                                null = [MEMORY[0x1E695DFB0] null];
                                                                                v319 = [v317 isEqual:null];

                                                                                v496 = v176;
                                                                                if (v319)
                                                                                {

                                                                                  v317 = 0;
                                                                                }

                                                                                else if (v317)
                                                                                {
                                                                                  objc_opt_class();
                                                                                  if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                  {
                                                                                    v497 = v317;
                                                                                    if (v612)
                                                                                    {
                                                                                      v356 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                      v357 = *MEMORY[0x1E698F240];
                                                                                      v700 = *MEMORY[0x1E696A578];
                                                                                      v516 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"envSpectralData32B"];
                                                                                      v701 = v516;
                                                                                      v358 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v701 forKeys:&v700 count:1];
                                                                                      v359 = [v356 initWithDomain:v357 code:2 userInfo:v358];
                                                                                      v47 = 0;
                                                                                      v612->super.super.isa = v359;
                                                                                      v353 = v358;
                                                                                      v8 = v633;
                                                                                      v10 = v540;
                                                                                      v65 = v629;
                                                                                      v199 = v573;
                                                                                      goto LABEL_549;
                                                                                    }

                                                                                    v47 = 0;
                                                                                    v8 = v633;
                                                                                    v10 = v540;
                                                                                    v65 = v629;
                                                                                    v199 = v573;
                                                                                    goto LABEL_551;
                                                                                  }
                                                                                }

                                                                                selfCopy6 = self;
                                                                                v516 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v317, "count")}];
                                                                                v642 = 0u;
                                                                                v643 = 0u;
                                                                                v644 = 0u;
                                                                                v645 = 0u;
                                                                                v320 = v317;
                                                                                v321 = [v320 countByEnumeratingWithState:&v642 objects:v699 count:16];
                                                                                v497 = v320;
                                                                                if (v321)
                                                                                {
                                                                                  v322 = v321;
                                                                                  v513 = *v643;
                                                                                  do
                                                                                  {
                                                                                    for (i = 0; i != v322; ++i)
                                                                                    {
                                                                                      if (*v643 != v513)
                                                                                      {
                                                                                        objc_enumerationMutation(v320);
                                                                                      }

                                                                                      v324 = *(*(&v642 + 1) + 8 * i);
                                                                                      objc_opt_class();
                                                                                      if (objc_opt_isKindOfClass())
                                                                                      {
                                                                                        if (v612)
                                                                                        {
                                                                                          v344 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                          v345 = *MEMORY[0x1E698F240];
                                                                                          v697 = *MEMORY[0x1E696A578];
                                                                                          v514 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"envSpectralData32B"];
                                                                                          v698 = v514;
                                                                                          v346 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v698 forKeys:&v697 count:1];
                                                                                          v347 = v344;
                                                                                          v348 = v345;
LABEL_373:
                                                                                          v494 = v346;
                                                                                          v176 = v496;
                                                                                          v47 = 0;
                                                                                          v612->super.super.isa = [v347 initWithDomain:v348 code:2 userInfo:?];
                                                                                          v495 = v320;
                                                                                          self = selfCopy6;
                                                                                          v8 = v633;
                                                                                          v65 = v629;
                                                                                          v199 = v573;
                                                                                          goto LABEL_547;
                                                                                        }

LABEL_378:
                                                                                        v47 = 0;
                                                                                        v353 = v320;
                                                                                        self = selfCopy6;
                                                                                        v8 = v633;
                                                                                        v10 = v540;
                                                                                        v65 = v629;
                                                                                        v199 = v573;
                                                                                        v176 = v496;
                                                                                        goto LABEL_549;
                                                                                      }

                                                                                      objc_opt_class();
                                                                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                      {
                                                                                        if (v612)
                                                                                        {
                                                                                          v349 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                          v350 = *MEMORY[0x1E698F240];
                                                                                          v695 = *MEMORY[0x1E696A578];
                                                                                          v514 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"envSpectralData32B"];
                                                                                          v696 = v514;
                                                                                          v346 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v696 forKeys:&v695 count:1];
                                                                                          v347 = v349;
                                                                                          v348 = v350;
                                                                                          goto LABEL_373;
                                                                                        }

                                                                                        goto LABEL_378;
                                                                                      }

                                                                                      v325 = v324;
                                                                                      [v516 addObject:v325];
                                                                                    }

                                                                                    v322 = [v320 countByEnumeratingWithState:&v642 objects:v699 count:16];
                                                                                  }

                                                                                  while (v322);
                                                                                }

                                                                                v326 = [dictionaryCopy objectForKeyedSubscript:@"windStrength"];
                                                                                v550 = v7;
                                                                                v541 = v9;
                                                                                if (v326)
                                                                                {
                                                                                  v327 = v326;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v327 = [dictionaryCopy objectForKeyedSubscript:@"wind_strength"];

                                                                                  if (!v327)
                                                                                  {
                                                                                    v514 = 0;
                                                                                    goto LABEL_401;
                                                                                  }
                                                                                }

                                                                                objc_opt_class();
                                                                                v514 = v327;
                                                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                {
                                                                                  objc_opt_class();
                                                                                  if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                  {
                                                                                    if (v612)
                                                                                    {
                                                                                      v360 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                      v361 = *MEMORY[0x1E698F240];
                                                                                      v693 = *MEMORY[0x1E696A578];
                                                                                      v494 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"windStrength"];
                                                                                      v694 = v494;
                                                                                      v362 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v694 forKeys:&v693 count:1];
                                                                                      v495 = 0;
                                                                                      v47 = 0;
                                                                                      v612->super.super.isa = [v360 initWithDomain:v361 code:2 userInfo:v362];
                                                                                      goto LABEL_546;
                                                                                    }

                                                                                    v495 = 0;
                                                                                    v47 = 0;
                                                                                    self = selfCopy6;
                                                                                    v8 = v633;
                                                                                    v10 = v540;
                                                                                    v65 = v629;
                                                                                    v199 = v573;
                                                                                    v176 = v496;
                                                                                    goto LABEL_548;
                                                                                  }

                                                                                  v514 = v327;
                                                                                  v495 = v514;
LABEL_402:
                                                                                  v363 = [dictionaryCopy objectForKeyedSubscript:@"windProb"];
                                                                                  v599 = dictionaryCopy;
                                                                                  if (v363)
                                                                                  {
                                                                                    v362 = v363;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v362 = [dictionaryCopy objectForKeyedSubscript:@"wind_prob"];

                                                                                    if (!v362)
                                                                                    {
                                                                                      goto LABEL_406;
                                                                                    }
                                                                                  }

                                                                                  objc_opt_class();
                                                                                  if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                  {
                                                                                    objc_opt_class();
                                                                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                    {
                                                                                      if (v612)
                                                                                      {
                                                                                        v368 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                        v369 = *MEMORY[0x1E698F240];
                                                                                        v691 = *MEMORY[0x1E696A578];
                                                                                        v370 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"windProb"];
                                                                                        v692 = v370;
                                                                                        v364 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v692 forKeys:&v691 count:1];
                                                                                        v494 = 0;
                                                                                        v47 = 0;
                                                                                        v612->super.super.isa = [v368 initWithDomain:v369 code:2 userInfo:v364];
                                                                                        goto LABEL_544;
                                                                                      }

                                                                                      v494 = 0;
                                                                                      v47 = 0;
                                                                                      goto LABEL_545;
                                                                                    }

                                                                                    v362 = v362;
                                                                                    v494 = v362;
                                                                                    goto LABEL_409;
                                                                                  }

LABEL_406:
                                                                                  v494 = 0;
LABEL_409:
                                                                                  v364 = [dictionaryCopy objectForKeyedSubscript:@"mediaType"];
                                                                                  if (v364 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                  {
                                                                                    objc_opt_class();
                                                                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                    {
                                                                                      if (v612)
                                                                                      {
                                                                                        v371 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                        v372 = *MEMORY[0x1E698F240];
                                                                                        v689 = *MEMORY[0x1E696A578];
                                                                                        v487 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"mediaType"];
                                                                                        v690 = v487;
                                                                                        v490 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v690 forKeys:&v689 count:1];
                                                                                        v488 = 0;
                                                                                        v47 = 0;
                                                                                        v612->super.super.isa = [v371 initWithDomain:v372 code:2 userInfo:?];
                                                                                        goto LABEL_543;
                                                                                      }

                                                                                      v370 = 0;
                                                                                      v47 = 0;
                                                                                      goto LABEL_544;
                                                                                    }

                                                                                    v488 = v364;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v488 = 0;
                                                                                  }

                                                                                  v490 = [v599 objectForKeyedSubscript:@"sourceActivity"];
                                                                                  if (v490 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                  {
                                                                                    objc_opt_class();
                                                                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                    {
                                                                                      if (v612)
                                                                                      {
                                                                                        v383 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                        v384 = *MEMORY[0x1E698F240];
                                                                                        v687 = *MEMORY[0x1E696A578];
                                                                                        v485 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"sourceActivity"];
                                                                                        v688 = v485;
                                                                                        v491 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v688 forKeys:&v687 count:1];
                                                                                        v487 = 0;
                                                                                        v47 = 0;
                                                                                        v612->super.super.isa = [v383 initWithDomain:v384 code:2 userInfo:?];
                                                                                        goto LABEL_542;
                                                                                      }

                                                                                      v487 = 0;
                                                                                      v47 = 0;
                                                                                      goto LABEL_543;
                                                                                    }

                                                                                    v487 = v490;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v487 = 0;
                                                                                  }

                                                                                  v491 = [v599 objectForKeyedSubscript:@"budActivity"];
                                                                                  if (v491 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                  {
                                                                                    objc_opt_class();
                                                                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                    {
                                                                                      if (v612)
                                                                                      {
                                                                                        v385 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                        v386 = *MEMORY[0x1E698F240];
                                                                                        v685 = *MEMORY[0x1E696A578];
                                                                                        v483 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"budActivity"];
                                                                                        v686 = v483;
                                                                                        v489 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v686 forKeys:&v685 count:1];
                                                                                        v485 = 0;
                                                                                        v47 = 0;
                                                                                        v612->super.super.isa = [v385 initWithDomain:v386 code:2 userInfo:?];
                                                                                        goto LABEL_541;
                                                                                      }

                                                                                      v485 = 0;
                                                                                      v47 = 0;
                                                                                      goto LABEL_542;
                                                                                    }

                                                                                    v485 = v491;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v485 = 0;
                                                                                  }

                                                                                  v489 = [v599 objectForKeyedSubscript:@"location"];
                                                                                  if (v489 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                  {
                                                                                    objc_opt_class();
                                                                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                    {
                                                                                      if (v612)
                                                                                      {
                                                                                        v387 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                        v388 = *MEMORY[0x1E698F240];
                                                                                        v683 = *MEMORY[0x1E696A578];
                                                                                        v481 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"location"];
                                                                                        v684 = v481;
                                                                                        v486 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v684 forKeys:&v683 count:1];
                                                                                        v483 = 0;
                                                                                        v47 = 0;
                                                                                        v612->super.super.isa = [v387 initWithDomain:v388 code:2 userInfo:?];
                                                                                        goto LABEL_540;
                                                                                      }

                                                                                      v483 = 0;
                                                                                      v47 = 0;
                                                                                      goto LABEL_541;
                                                                                    }

                                                                                    v483 = v489;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v483 = 0;
                                                                                  }

                                                                                  v486 = [v599 objectForKeyedSubscript:@"locationType"];
                                                                                  if (v486 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                  {
                                                                                    objc_opt_class();
                                                                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                    {
                                                                                      if (v612)
                                                                                      {
                                                                                        v394 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                        v395 = *MEMORY[0x1E698F240];
                                                                                        v681 = *MEMORY[0x1E696A578];
                                                                                        v480 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"locationType"];
                                                                                        v682 = v480;
                                                                                        v484 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v682 forKeys:&v681 count:1];
                                                                                        v481 = 0;
                                                                                        v47 = 0;
                                                                                        v612->super.super.isa = [v394 initWithDomain:v395 code:2 userInfo:?];
                                                                                        goto LABEL_539;
                                                                                      }

                                                                                      v481 = 0;
                                                                                      v47 = 0;
                                                                                      goto LABEL_540;
                                                                                    }

                                                                                    v481 = v486;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v481 = 0;
                                                                                  }

                                                                                  v484 = [v599 objectForKeyedSubscript:@"focusMode"];
                                                                                  if (v484 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                  {
                                                                                    objc_opt_class();
                                                                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                    {
                                                                                      if (v612)
                                                                                      {
                                                                                        v398 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                        v399 = *MEMORY[0x1E698F240];
                                                                                        v679 = *MEMORY[0x1E696A578];
                                                                                        v479 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"focusMode"];
                                                                                        v680 = v479;
                                                                                        v482 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v680 forKeys:&v679 count:1];
                                                                                        v480 = 0;
                                                                                        v47 = 0;
                                                                                        v612->super.super.isa = [v398 initWithDomain:v399 code:2 userInfo:?];
                                                                                        goto LABEL_538;
                                                                                      }

                                                                                      v480 = 0;
                                                                                      v47 = 0;
                                                                                      goto LABEL_539;
                                                                                    }

                                                                                    v480 = v484;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v480 = 0;
                                                                                  }

                                                                                  v482 = [v599 objectForKeyedSubscript:@"streamingAppBundleId"];
                                                                                  if (v482 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                  {
                                                                                    objc_opt_class();
                                                                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                    {
                                                                                      if (v612)
                                                                                      {
                                                                                        v400 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                        v401 = *MEMORY[0x1E698F240];
                                                                                        v677 = *MEMORY[0x1E696A578];
                                                                                        v367 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"streamingAppBundleId"];
                                                                                        v678 = v367;
                                                                                        v373 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v678 forKeys:&v677 count:1];
                                                                                        v479 = 0;
                                                                                        v47 = 0;
                                                                                        v612->super.super.isa = [v400 initWithDomain:v401 code:2 userInfo:?];
                                                                                        goto LABEL_536;
                                                                                      }

                                                                                      v479 = 0;
                                                                                      v47 = 0;
                                                                                      goto LABEL_538;
                                                                                    }

                                                                                    v479 = v482;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v479 = 0;
                                                                                  }

                                                                                  v365 = [v599 objectForKeyedSubscript:@"noiseType4B"];
                                                                                  null2 = [MEMORY[0x1E695DFB0] null];
                                                                                  v367 = v365;
                                                                                  LODWORD(v365) = [v365 isEqual:null2];

                                                                                  if (v365)
                                                                                  {

                                                                                    v367 = 0;
                                                                                  }

                                                                                  else if (v367)
                                                                                  {
                                                                                    objc_opt_class();
                                                                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                    {
                                                                                      if (v612)
                                                                                      {
                                                                                        v402 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                        v403 = *MEMORY[0x1E698F240];
                                                                                        v675 = *MEMORY[0x1E696A578];
                                                                                        v373 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"noiseType4B"];
                                                                                        v676 = v373;
                                                                                        v493 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v676 forKeys:&v675 count:1];
                                                                                        v404 = [v402 initWithDomain:v403 code:2 userInfo:?];
                                                                                        v47 = 0;
                                                                                        v612->super.super.isa = v404;
                                                                                        goto LABEL_535;
                                                                                      }

                                                                                      v47 = 0;
                                                                                      goto LABEL_537;
                                                                                    }
                                                                                  }

                                                                                  v373 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v367, "count")}];
                                                                                  v638 = 0u;
                                                                                  v639 = 0u;
                                                                                  v640 = 0u;
                                                                                  v641 = 0u;
                                                                                  v367 = v367;
                                                                                  v374 = [v367 countByEnumeratingWithState:&v638 objects:v674 count:16];
                                                                                  if (!v374)
                                                                                  {
                                                                                    goto LABEL_457;
                                                                                  }

                                                                                  v375 = v374;
                                                                                  v492 = *v639;
LABEL_450:
                                                                                  v376 = 0;
                                                                                  while (1)
                                                                                  {
                                                                                    if (*v639 != v492)
                                                                                    {
                                                                                      objc_enumerationMutation(v367);
                                                                                    }

                                                                                    v377 = *(*(&v638 + 1) + 8 * v376);
                                                                                    objc_opt_class();
                                                                                    if (objc_opt_isKindOfClass())
                                                                                    {
                                                                                      break;
                                                                                    }

                                                                                    objc_opt_class();
                                                                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                    {
                                                                                      if (v612)
                                                                                      {
                                                                                        v396 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                        v397 = *MEMORY[0x1E698F240];
                                                                                        v670 = *MEMORY[0x1E696A578];
                                                                                        v478 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"noiseType4B"];
                                                                                        v671 = v478;
                                                                                        v391 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v671 forKeys:&v670 count:1];
                                                                                        v392 = v396;
                                                                                        v393 = v397;
                                                                                        goto LABEL_523;
                                                                                      }

                                                                                      goto LABEL_528;
                                                                                    }

                                                                                    v378 = v377;
                                                                                    [v373 addObject:v378];

                                                                                    if (v375 == ++v376)
                                                                                    {
                                                                                      v375 = [v367 countByEnumeratingWithState:&v638 objects:v674 count:16];
                                                                                      if (v375)
                                                                                      {
                                                                                        goto LABEL_450;
                                                                                      }

LABEL_457:

                                                                                      v478 = [v599 objectForKeyedSubscript:@"instdBA"];
                                                                                      if (v478 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                      {
                                                                                        objc_opt_class();
                                                                                        if (objc_opt_isKindOfClass())
                                                                                        {
                                                                                          v493 = v478;
                                                                                          goto LABEL_460;
                                                                                        }

                                                                                        if (v612)
                                                                                        {
                                                                                          v407 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                          v408 = *MEMORY[0x1E698F240];
                                                                                          v668 = *MEMORY[0x1E696A578];
                                                                                          v477 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"instdBA"];
                                                                                          v669 = v477;
                                                                                          v476 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v669 forKeys:&v668 count:1];
                                                                                          v493 = 0;
                                                                                          v47 = 0;
                                                                                          v612->super.super.isa = [v407 initWithDomain:v408 code:2 userInfo:?];
                                                                                          goto LABEL_504;
                                                                                        }

                                                                                        v493 = 0;
                                                                                        v47 = 0;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v493 = 0;
LABEL_460:
                                                                                        v476 = [v599 objectForKeyedSubscript:@"instdBC"];
                                                                                        if (v476 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                        {
                                                                                          objc_opt_class();
                                                                                          if (objc_opt_isKindOfClass())
                                                                                          {
                                                                                            v477 = v476;
                                                                                            goto LABEL_463;
                                                                                          }

                                                                                          if (v612)
                                                                                          {
                                                                                            v409 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                            v410 = *MEMORY[0x1E698F240];
                                                                                            v666 = *MEMORY[0x1E696A578];
                                                                                            v472 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"instdBC"];
                                                                                            v667 = v472;
                                                                                            v475 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v667 forKeys:&v666 count:1];
                                                                                            v477 = 0;
                                                                                            v47 = 0;
                                                                                            v612->super.super.isa = [v409 initWithDomain:v410 code:2 userInfo:?];
                                                                                            goto LABEL_503;
                                                                                          }

                                                                                          v477 = 0;
                                                                                          v47 = 0;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v477 = 0;
LABEL_463:
                                                                                          v475 = [v599 objectForKeyedSubscript:@"nonCAListeningMode"];
                                                                                          if (v475 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                          {
                                                                                            objc_opt_class();
                                                                                            if (objc_opt_isKindOfClass())
                                                                                            {
                                                                                              v472 = v475;
                                                                                              goto LABEL_466;
                                                                                            }

                                                                                            if (v612)
                                                                                            {
                                                                                              v411 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                              v412 = *MEMORY[0x1E698F240];
                                                                                              v664 = *MEMORY[0x1E696A578];
                                                                                              v471 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"nonCAListeningMode"];
                                                                                              v665 = v471;
                                                                                              v474 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v665 forKeys:&v664 count:1];
                                                                                              v472 = 0;
                                                                                              v47 = 0;
                                                                                              v612->super.super.isa = [v411 initWithDomain:v412 code:2 userInfo:?];
                                                                                              goto LABEL_502;
                                                                                            }

                                                                                            v472 = 0;
                                                                                            v47 = 0;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v472 = 0;
LABEL_466:
                                                                                            v474 = [v599 objectForKeyedSubscript:@"fit"];
                                                                                            if (v474 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                            {
                                                                                              objc_opt_class();
                                                                                              if (objc_opt_isKindOfClass())
                                                                                              {
                                                                                                v471 = v474;
                                                                                                goto LABEL_469;
                                                                                              }

                                                                                              if (v612)
                                                                                              {
                                                                                                v413 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                v414 = *MEMORY[0x1E698F240];
                                                                                                v662 = *MEMORY[0x1E696A578];
                                                                                                v469 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"fit"];
                                                                                                v663 = v469;
                                                                                                v473 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v663 forKeys:&v662 count:1];
                                                                                                v471 = 0;
                                                                                                v47 = 0;
                                                                                                v612->super.super.isa = [v413 initWithDomain:v414 code:2 userInfo:?];
                                                                                                goto LABEL_501;
                                                                                              }

                                                                                              v471 = 0;
                                                                                              v47 = 0;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v471 = 0;
LABEL_469:
                                                                                              v473 = [v599 objectForKeyedSubscript:@"fixedAutoAncGain"];
                                                                                              if (v473 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                              {
                                                                                                objc_opt_class();
                                                                                                if (objc_opt_isKindOfClass())
                                                                                                {
                                                                                                  v469 = v473;
                                                                                                  goto LABEL_472;
                                                                                                }

                                                                                                if (v612)
                                                                                                {
                                                                                                  v415 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                  v416 = *MEMORY[0x1E698F240];
                                                                                                  v660 = *MEMORY[0x1E696A578];
                                                                                                  v467 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"fixedAutoAncGain"];
                                                                                                  v661 = v467;
                                                                                                  v470 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v661 forKeys:&v660 count:1];
                                                                                                  v469 = 0;
                                                                                                  v47 = 0;
                                                                                                  v612->super.super.isa = [v415 initWithDomain:v416 code:2 userInfo:?];
                                                                                                  goto LABEL_500;
                                                                                                }

                                                                                                v469 = 0;
                                                                                                v47 = 0;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v469 = 0;
LABEL_472:
                                                                                                v470 = [v599 objectForKeyedSubscript:@"adjustedAutoAncGain"];
                                                                                                if (v470 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                {
                                                                                                  objc_opt_class();
                                                                                                  if (objc_opt_isKindOfClass())
                                                                                                  {
                                                                                                    v467 = v470;
                                                                                                    goto LABEL_475;
                                                                                                  }

                                                                                                  if (v612)
                                                                                                  {
                                                                                                    v417 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                    v418 = *MEMORY[0x1E698F240];
                                                                                                    v658 = *MEMORY[0x1E696A578];
                                                                                                    v465 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"adjustedAutoAncGain"];
                                                                                                    v659 = v465;
                                                                                                    v468 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v659 forKeys:&v658 count:1];
                                                                                                    v467 = 0;
                                                                                                    v47 = 0;
                                                                                                    v612->super.super.isa = [v417 initWithDomain:v418 code:2 userInfo:?];
                                                                                                    goto LABEL_499;
                                                                                                  }

                                                                                                  v467 = 0;
                                                                                                  v47 = 0;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v467 = 0;
LABEL_475:
                                                                                                  v468 = [v599 objectForKeyedSubscript:@"timestamp"];
                                                                                                  if (v468 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                  {
                                                                                                    objc_opt_class();
                                                                                                    if (objc_opt_isKindOfClass())
                                                                                                    {
                                                                                                      v465 = v468;
                                                                                                      goto LABEL_478;
                                                                                                    }

                                                                                                    if (v612)
                                                                                                    {
                                                                                                      v419 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                      v420 = *MEMORY[0x1E698F240];
                                                                                                      v656 = *MEMORY[0x1E696A578];
                                                                                                      v464 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"timestamp"];
                                                                                                      v657 = v464;
                                                                                                      v466 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v657 forKeys:&v656 count:1];
                                                                                                      v465 = 0;
                                                                                                      v47 = 0;
                                                                                                      v612->super.super.isa = [v419 initWithDomain:v420 code:2 userInfo:?];
                                                                                                      goto LABEL_498;
                                                                                                    }

                                                                                                    v465 = 0;
                                                                                                    v47 = 0;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v465 = 0;
LABEL_478:
                                                                                                    v466 = [v599 objectForKeyedSubscript:@"DRCenablementBit"];
                                                                                                    if (v466 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                    {
                                                                                                      objc_opt_class();
                                                                                                      if (objc_opt_isKindOfClass())
                                                                                                      {
                                                                                                        v464 = v466;
                                                                                                        goto LABEL_481;
                                                                                                      }

                                                                                                      if (v612)
                                                                                                      {
                                                                                                        v421 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                        v422 = *MEMORY[0x1E698F240];
                                                                                                        v654 = *MEMORY[0x1E696A578];
                                                                                                        v462 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"DRCenablementBit"];
                                                                                                        v655 = v462;
                                                                                                        v379 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v655 forKeys:&v654 count:1];
                                                                                                        v464 = 0;
                                                                                                        v47 = 0;
                                                                                                        v612->super.super.isa = [v421 initWithDomain:v422 code:2 userInfo:v379];
                                                                                                        goto LABEL_497;
                                                                                                      }

                                                                                                      v464 = 0;
                                                                                                      v47 = 0;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v464 = 0;
LABEL_481:
                                                                                                      v379 = [v599 objectForKeyedSubscript:@"DRCwindFlag"];
                                                                                                      if (v379 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                      {
                                                                                                        objc_opt_class();
                                                                                                        if (objc_opt_isKindOfClass())
                                                                                                        {
                                                                                                          v462 = v379;
                                                                                                          goto LABEL_484;
                                                                                                        }

                                                                                                        if (v612)
                                                                                                        {
                                                                                                          v423 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                          v424 = *MEMORY[0x1E698F240];
                                                                                                          v652 = *MEMORY[0x1E696A578];
                                                                                                          v460 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"DRCwindFlag"];
                                                                                                          v653 = v460;
                                                                                                          v463 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v653 forKeys:&v652 count:1];
                                                                                                          v462 = 0;
                                                                                                          v47 = 0;
                                                                                                          v612->super.super.isa = [v423 initWithDomain:v424 code:2 userInfo:?];
                                                                                                          goto LABEL_496;
                                                                                                        }

                                                                                                        v462 = 0;
                                                                                                        v47 = 0;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v462 = 0;
LABEL_484:
                                                                                                        v463 = [v599 objectForKeyedSubscript:@"DRCappSelfVoiceFlag"];
                                                                                                        if (v463 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                        {
                                                                                                          objc_opt_class();
                                                                                                          if (objc_opt_isKindOfClass())
                                                                                                          {
                                                                                                            v460 = v463;
                                                                                                            goto LABEL_487;
                                                                                                          }

                                                                                                          if (v612)
                                                                                                          {
                                                                                                            v425 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v426 = *MEMORY[0x1E698F240];
                                                                                                            v650 = *MEMORY[0x1E696A578];
                                                                                                            v380 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"DRCappSelfVoiceFlag"];
                                                                                                            v651 = v380;
                                                                                                            v461 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v651 forKeys:&v650 count:1];
                                                                                                            v460 = 0;
                                                                                                            v47 = 0;
                                                                                                            v612->super.super.isa = [v425 initWithDomain:v426 code:2 userInfo:?];
                                                                                                            goto LABEL_495;
                                                                                                          }

                                                                                                          v460 = 0;
                                                                                                          v47 = 0;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          v460 = 0;
LABEL_487:
                                                                                                          v461 = [v599 objectForKeyedSubscript:@"drumDRC"];
                                                                                                          if (v461 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                          {
                                                                                                            objc_opt_class();
                                                                                                            if (objc_opt_isKindOfClass())
                                                                                                            {
                                                                                                              v380 = v461;
                                                                                                              goto LABEL_490;
                                                                                                            }

                                                                                                            if (v612)
                                                                                                            {
                                                                                                              v427 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                              v428 = *MEMORY[0x1E698F240];
                                                                                                              v648 = *MEMORY[0x1E696A578];
                                                                                                              v382 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"drumDRC"];
                                                                                                              v649 = v382;
                                                                                                              v381 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v649 forKeys:&v648 count:1];
                                                                                                              v429 = [v427 initWithDomain:v428 code:2 userInfo:?];
                                                                                                              v380 = 0;
                                                                                                              v47 = 0;
                                                                                                              v612->super.super.isa = v429;
                                                                                                              goto LABEL_494;
                                                                                                            }

                                                                                                            v380 = 0;
                                                                                                            v47 = 0;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v380 = 0;
LABEL_490:
                                                                                                            v381 = [v599 objectForKeyedSubscript:@"routedDRCGain"];
                                                                                                            if (!v381 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                                            {
                                                                                                              v382 = 0;
                                                                                                              goto LABEL_493;
                                                                                                            }

                                                                                                            objc_opt_class();
                                                                                                            if (objc_opt_isKindOfClass())
                                                                                                            {
                                                                                                              v382 = v381;
LABEL_493:
                                                                                                              v47 = [BMDeviceAdaptiveVolume initWithControllerVersion:selfCopy6 refMicdBA:"initWithControllerVersion:refMicdBA:refMicdBC:drumdBA:drumdBK:drumdBAPredicted:downlinkdBA:currentVolumePrct:lastUserVolChangeType:headphoneMode:streamType:windSpeechAggressorFlag:volumeChangeFlag:speechPresenceProbability:personalizationParamSnr:personalizationParamMistakes:lastEMediadBA:lastVolMediaPrct:lastETelephonydBA:lastVolTelephonyPrct:lastESiridBA:lastVolSiriPrct:smoothEae:desiredDeltaE:predVolMediaPrct:predVolTelephonyPrct:predVolSiriPrct:onStartPredictionFlag:guardrailsAvoidFlag:minMaxCutFlag:manualVolumeChangeFlag:bigWindowSize:smallWindowSize:activeAppName:activeAirpodsSerialNumber:anchorVol:anchorEnv:personalizationCoeff:unsignedPredVolMediaPrct:unsignedPredVolTelephonyPrct:unsignedPredVolSiriPrct:singleBudFlag:cdEngagementFlag:activeStreamFlag:pvFeatureEnableFlag:envSpectralData32B:windStrength:windProb:mediaType:sourceActivity:budActivity:location:locationType:focusMode:streamingAppBundleId:noiseType4B:instdBA:instdBC:nonCAListeningMode:fit:fixedAutoAncGain:adjustedAutoAncGain:timestamp:DRCenablementBit:DRCwindFlag:DRCappSelfVoiceFlag:drumDRC:routedDRCGain:" refMicdBC:v633 drumdBA:v540 drumdBK:v636 drumdBAPredicted:v630 downlinkdBA:v631 currentVolumePrct:v626 lastUserVolChangeType:v623 headphoneMode:v609 streamType:v606 windSpeechAggressorFlag:v603 volumeChangeFlag:v600 speechPresenceProbability:v586 personalizationParamSnr:v584 personalizationParamMistakes:v582 lastEMediadBA:v580 lastVolMediaPrct:v578 lastETelephonydBA:v573 lastVolTelephonyPrct:v575 lastESiridBA:v570 lastVolSiriPrct:v567 smoothEae:v564 desiredDeltaE:v561 predVolMediaPrct:v558 predVolTelephonyPrct:v555 predVolSiriPrct:v552 onStartPredictionFlag:v548 guardrailsAvoidFlag:v545 minMaxCutFlag:v542 manualVolumeChangeFlag:v538 bigWindowSize:v537 smallWindowSize:v535 activeAppName:v532 activeAirpodsSerialNumber:v526 anchorVol:v524 anchorEnv:v523 personalizationCoeff:v521 unsignedPredVolMediaPrct:v519 unsignedPredVolTelephonyPrct:v512 unsignedPredVolSiriPrct:v510 singleBudFlag:v507 cdEngagementFlag:v505 activeStreamFlag:v503 pvFeatureEnableFlag:v501 envSpectralData32B:v496 windStrength:v498 windProb:v516 mediaType:v495 sourceActivity:v494 budActivity:v488 location:v487 locationType:v485 focusMode:v483 streamingAppBundleId:v481 noiseType4B:v480 instdBA:v479 instdBC:v373 nonCAListeningMode:v493 fit:v477 fixedAutoAncGain:v472 adjustedAutoAncGain:v471 timestamp:v469 DRCenablementBit:? DRCwindFlag:? DRCappSelfVoiceFlag:? drumDRC:? routedDRCGain:?];
                                                                                                              selfCopy6 = v47;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              if (v612)
                                                                                                              {
                                                                                                                v430 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                                v459 = *MEMORY[0x1E698F240];
                                                                                                                v646 = *MEMORY[0x1E696A578];
                                                                                                                v431 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"routedDRCGain"];
                                                                                                                v647 = v431;
                                                                                                                v432 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v647 forKeys:&v646 count:1];
                                                                                                                v612->super.super.isa = [v430 initWithDomain:v459 code:2 userInfo:v432];
                                                                                                              }

                                                                                                              v382 = 0;
                                                                                                              v47 = 0;
                                                                                                            }

LABEL_494:
                                                                                                          }

LABEL_495:
                                                                                                        }

LABEL_496:
                                                                                                      }

LABEL_497:
                                                                                                    }

LABEL_498:
                                                                                                  }

LABEL_499:
                                                                                                }

LABEL_500:
                                                                                              }

LABEL_501:
                                                                                            }

LABEL_502:
                                                                                          }

LABEL_503:
                                                                                        }

LABEL_504:

LABEL_524:
                                                                                      }

LABEL_535:
LABEL_536:

LABEL_537:
LABEL_538:

LABEL_539:
LABEL_540:

LABEL_541:
LABEL_542:

LABEL_543:
                                                                                      v370 = v488;
LABEL_544:

LABEL_545:
                                                                                      v9 = v541;
                                                                                      v7 = v550;
                                                                                      dictionaryCopy = v599;
LABEL_546:

                                                                                      self = selfCopy6;
                                                                                      v8 = v633;
                                                                                      v65 = v629;
                                                                                      v199 = v573;
                                                                                      v176 = v496;
LABEL_547:

                                                                                      v10 = v540;
LABEL_548:

                                                                                      v353 = v495;
LABEL_549:

LABEL_551:
LABEL_552:

LABEL_553:
LABEL_554:
                                                                                      v165 = v509;

LABEL_555:
LABEL_556:

LABEL_557:
LABEL_558:

LABEL_559:
LABEL_560:
                                                                                      v296 = v515;
LABEL_561:

                                                                                      v62 = v630;
                                                                                      goto LABEL_562;
                                                                                    }
                                                                                  }

                                                                                  if (v612)
                                                                                  {
                                                                                    v389 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                    v390 = *MEMORY[0x1E698F240];
                                                                                    v672 = *MEMORY[0x1E696A578];
                                                                                    v478 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"noiseType4B"];
                                                                                    v673 = v478;
                                                                                    v391 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v673 forKeys:&v672 count:1];
                                                                                    v392 = v389;
                                                                                    v393 = v390;
LABEL_523:
                                                                                    v477 = v391;
                                                                                    v47 = 0;
                                                                                    v612->super.super.isa = [v392 initWithDomain:v393 code:2 userInfo:?];
                                                                                    v493 = v367;
                                                                                    goto LABEL_524;
                                                                                  }

LABEL_528:
                                                                                  v47 = 0;

                                                                                  goto LABEL_536;
                                                                                }

LABEL_401:
                                                                                v495 = 0;
                                                                                goto LABEL_402;
                                                                              }

                                                                              if (v612)
                                                                              {
                                                                                v354 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                v355 = *MEMORY[0x1E698F240];
                                                                                v702 = *MEMORY[0x1E696A578];
                                                                                v497 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"pvFeatureEnableFlag"];
                                                                                v703 = v497;
                                                                                v518 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v703 forKeys:&v702 count:1];
                                                                                v498 = 0;
                                                                                v47 = 0;
                                                                                v612->super.super.isa = [v354 initWithDomain:v355 code:2 userInfo:?];
                                                                                v10 = v540;
                                                                                v65 = v629;
                                                                                v199 = v573;

                                                                                goto LABEL_551;
                                                                              }

                                                                              v498 = 0;
                                                                              v47 = 0;
                                                                              v10 = v540;
LABEL_398:
                                                                              v65 = v629;
                                                                              v199 = v573;
                                                                              goto LABEL_552;
                                                                            }

                                                                            v340 = v10;
                                                                            v341 = v8;
                                                                            selfCopy8 = self;
                                                                            if (v612)
                                                                            {
                                                                              v351 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                              v531 = *MEMORY[0x1E698F240];
                                                                              v704 = *MEMORY[0x1E696A578];
                                                                              v498 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"activeStreamFlag"];
                                                                              v705 = v498;
                                                                              v499 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v705 forKeys:&v704 count:1];
                                                                              v352 = [v351 initWithDomain:v531 code:2 userInfo:?];
                                                                              v176 = 0;
                                                                              v47 = 0;
                                                                              v612->super.super.isa = v352;
                                                                              v8 = v341;
                                                                              v10 = v340;
                                                                              goto LABEL_398;
                                                                            }

                                                                            v176 = 0;
                                                                            v47 = 0;
LABEL_394:
                                                                            self = selfCopy8;
                                                                            v8 = v341;
                                                                            v10 = v340;
                                                                            v65 = v629;
                                                                            v199 = v573;
                                                                            goto LABEL_553;
                                                                          }

                                                                          objc_opt_class();
                                                                          if (objc_opt_isKindOfClass())
                                                                          {
                                                                            v501 = v175;
                                                                            goto LABEL_195;
                                                                          }

                                                                          v340 = v10;
                                                                          v341 = v8;
                                                                          selfCopy8 = self;
                                                                          if (v612)
                                                                          {
                                                                            v530 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                            v517 = *MEMORY[0x1E698F240];
                                                                            v706 = *MEMORY[0x1E696A578];
                                                                            v176 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cdEngagementFlag"];
                                                                            v707 = v176;
                                                                            v500 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v707 forKeys:&v706 count:1];
                                                                            v501 = 0;
                                                                            v47 = 0;
                                                                            v612->super.super.isa = [v530 initWithDomain:v517 code:2 userInfo:?];
                                                                            goto LABEL_394;
                                                                          }

                                                                          v501 = 0;
                                                                          v47 = 0;
LABEL_392:
                                                                          self = selfCopy8;
                                                                          v8 = v341;
                                                                          v10 = v340;
                                                                          v65 = v629;
                                                                          v199 = v573;
                                                                          goto LABEL_554;
                                                                        }

                                                                        objc_opt_class();
                                                                        if (objc_opt_isKindOfClass())
                                                                        {
                                                                          v509 = v165;
                                                                          v512 = v165;
                                                                          goto LABEL_180;
                                                                        }

                                                                        if (v612)
                                                                        {
                                                                          v303 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                          v304 = *MEMORY[0x1E698F240];
                                                                          v716 = *MEMORY[0x1E696A578];
                                                                          v595 = dictionaryCopy;
                                                                          v305 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                          v455 = objc_opt_class();
                                                                          v306 = v305;
                                                                          v10 = v540;
                                                                          dictionaryCopy = v595;
                                                                          v510 = [v306 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v455, @"personalizationCoeff"];
                                                                          v717 = v510;
                                                                          v307 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v717 forKeys:&v716 count:1];
                                                                          v308 = v303;
                                                                          v8 = v633;
                                                                          v511 = v307;
                                                                          v512 = 0;
                                                                          v47 = 0;
                                                                          v612->super.super.isa = [v308 initWithDomain:v304 code:2 userInfo:?];
                                                                          v65 = v629;
                                                                          v199 = v573;
                                                                          goto LABEL_558;
                                                                        }

                                                                        v512 = 0;
                                                                        v47 = 0;
LABEL_375:
                                                                        v65 = v629;
                                                                        v199 = v573;
                                                                        goto LABEL_559;
                                                                      }

                                                                      objc_opt_class();
                                                                      if (objc_opt_isKindOfClass())
                                                                      {
                                                                        v521 = v162;
                                                                        goto LABEL_174;
                                                                      }

                                                                      v47 = v612;
                                                                      if (v612)
                                                                      {
                                                                        v292 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                        v293 = *MEMORY[0x1E698F240];
                                                                        v720 = *MEMORY[0x1E696A578];
                                                                        v593 = dictionaryCopy;
                                                                        v294 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                        v453 = objc_opt_class();
                                                                        v295 = v294;
                                                                        v10 = v540;
                                                                        dictionaryCopy = v593;
                                                                        v519 = [v295 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v453, @"anchorVol"];
                                                                        v721 = v519;
                                                                        v296 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v721 forKeys:&v720 count:1];
                                                                        v297 = v292;
                                                                        v8 = v633;
                                                                        v521 = 0;
                                                                        v47 = 0;
                                                                        v612->super.super.isa = [v297 initWithDomain:v293 code:2 userInfo:v296];
                                                                        v65 = v629;
                                                                        v199 = v573;
                                                                        goto LABEL_561;
                                                                      }

                                                                      v521 = 0;
                                                                      v65 = v629;
                                                                      v199 = v573;
LABEL_562:
                                                                      v291 = v520;
                                                                      goto LABEL_563;
                                                                    }

                                                                    objc_opt_class();
                                                                    if (objc_opt_isKindOfClass())
                                                                    {
                                                                      v524 = v158;
                                                                      goto LABEL_168;
                                                                    }

                                                                    if (v612)
                                                                    {
                                                                      v284 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                      v285 = *MEMORY[0x1E698F240];
                                                                      v724 = *MEMORY[0x1E696A578];
                                                                      v523 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"activeAppName"];
                                                                      v725 = v523;
                                                                      v286 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v725 forKeys:&v724 count:1];
                                                                      v524 = 0;
                                                                      v47 = 0;
                                                                      v612->super.super.isa = [v284 initWithDomain:v285 code:2 userInfo:v286];
                                                                      v287 = v286;
                                                                      v10 = v540;
                                                                      v65 = v629;
                                                                      v62 = v630;
                                                                      v199 = v573;
LABEL_565:

                                                                      goto LABEL_566;
                                                                    }

                                                                    v524 = 0;
                                                                    v47 = 0;
                                                                    v10 = v129;
                                                                    v65 = v629;
                                                                    v62 = v630;
LABEL_335:
                                                                    v199 = v573;
LABEL_566:

                                                                    goto LABEL_567;
                                                                  }

                                                                  v10 = v129;
                                                                  if (v612)
                                                                  {
                                                                    v278 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                    v279 = *MEMORY[0x1E698F240];
                                                                    v726 = *MEMORY[0x1E696A578];
                                                                    v592 = dictionaryCopy;
                                                                    v280 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                    v452 = objc_opt_class();
                                                                    v281 = v280;
                                                                    v10 = v129;
                                                                    dictionaryCopy = v592;
                                                                    v62 = v630;
                                                                    v524 = [v281 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v452, @"smallWindowSize"];
                                                                    v727 = v524;
                                                                    v282 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v727 forKeys:&v726 count:1];
                                                                    v283 = v278;
                                                                    v8 = v633;
                                                                    v525 = v282;
                                                                    v526 = 0;
                                                                    v47 = 0;
                                                                    v612->super.super.isa = [v283 initWithDomain:v279 code:2 userInfo:?];
                                                                    v65 = v629;
                                                                    goto LABEL_335;
                                                                  }

                                                                  v526 = 0;
                                                                  v47 = 0;
                                                                  v65 = v629;
                                                                  v199 = v573;
                                                                  v62 = v630;
LABEL_567:

                                                                  goto LABEL_568;
                                                                }

                                                                if (v612)
                                                                {
                                                                  v272 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v273 = *MEMORY[0x1E698F240];
                                                                  v728 = *MEMORY[0x1E696A578];
                                                                  v591 = dictionaryCopy;
                                                                  v274 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                  v451 = objc_opt_class();
                                                                  v275 = v274;
                                                                  self = selfCopy4;
                                                                  v10 = v129;
                                                                  dictionaryCopy = v591;
                                                                  v62 = v630;
                                                                  v526 = [v275 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v451, @"bigWindowSize"];
                                                                  v729 = v526;
                                                                  v276 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v729 forKeys:&v728 count:1];
                                                                  v277 = v272;
                                                                  v8 = v633;
                                                                  v527 = v276;
                                                                  v532 = 0;
                                                                  v47 = 0;
                                                                  v612->super.super.isa = [v277 initWithDomain:v273 code:2 userInfo:?];
                                                                  v65 = v629;
                                                                  v199 = v573;
                                                                  goto LABEL_567;
                                                                }

                                                                v532 = 0;
                                                                v47 = 0;
                                                                v65 = v629;
                                                                v199 = v573;
                                                                self = selfCopy4;
                                                                v10 = v129;
                                                                v62 = v630;
LABEL_568:

                                                                goto LABEL_569;
                                                              }

                                                              if (v612)
                                                              {
                                                                v266 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                v267 = *MEMORY[0x1E698F240];
                                                                v730 = *MEMORY[0x1E696A578];
                                                                v590 = dictionaryCopy;
                                                                v268 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                v450 = objc_opt_class();
                                                                v269 = v268;
                                                                self = selfCopy4;
                                                                v10 = v129;
                                                                dictionaryCopy = v590;
                                                                v62 = v630;
                                                                v532 = [v269 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v450, @"manualVolumeChangeFlag"];
                                                                v731 = v532;
                                                                v270 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v731 forKeys:&v730 count:1];
                                                                v271 = v266;
                                                                v8 = v633;
                                                                v533 = v270;
                                                                v535 = 0;
                                                                v47 = 0;
                                                                v612->super.super.isa = [v271 initWithDomain:v267 code:2 userInfo:?];
                                                                v65 = v629;
                                                                v199 = v573;
                                                                goto LABEL_568;
                                                              }

                                                              v535 = 0;
                                                              v47 = 0;
                                                              v65 = v629;
                                                              v199 = v573;
                                                              self = selfCopy4;
                                                              v10 = v129;
                                                              v62 = v630;
LABEL_569:

                                                              goto LABEL_570;
                                                            }

                                                            if (v612)
                                                            {
                                                              v260 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                              v261 = *MEMORY[0x1E698F240];
                                                              v732 = *MEMORY[0x1E696A578];
                                                              v589 = dictionaryCopy;
                                                              v262 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                              v449 = objc_opt_class();
                                                              v263 = v262;
                                                              self = selfCopy4;
                                                              v10 = v129;
                                                              dictionaryCopy = v589;
                                                              v62 = v630;
                                                              v535 = [v263 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v449, @"minMaxCutFlag"];
                                                              v733 = v535;
                                                              v264 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v733 forKeys:&v732 count:1];
                                                              v265 = v260;
                                                              v8 = v633;
                                                              v534 = v264;
                                                              v537 = 0;
                                                              v47 = 0;
                                                              v612->super.super.isa = [v265 initWithDomain:v261 code:2 userInfo:?];
                                                              v65 = v629;
                                                              v199 = v573;
                                                              goto LABEL_569;
                                                            }

                                                            v537 = 0;
                                                            v47 = 0;
                                                            v65 = v629;
                                                            v199 = v573;
                                                            self = selfCopy4;
                                                            v10 = v129;
                                                            v62 = v630;
LABEL_570:

                                                            goto LABEL_571;
                                                          }

                                                          if (v612)
                                                          {
                                                            v254 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v255 = *MEMORY[0x1E698F240];
                                                            v734 = *MEMORY[0x1E696A578];
                                                            v588 = dictionaryCopy;
                                                            v256 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                            v448 = objc_opt_class();
                                                            v257 = v256;
                                                            self = selfCopy4;
                                                            v10 = v129;
                                                            dictionaryCopy = v588;
                                                            v62 = v630;
                                                            v537 = [v257 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v448, @"guardrailsAvoidFlag"];
                                                            v735 = v537;
                                                            v258 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v735 forKeys:&v734 count:1];
                                                            v259 = v254;
                                                            v8 = v633;
                                                            v536 = v258;
                                                            v538 = 0;
                                                            v47 = 0;
                                                            v612->super.super.isa = [v259 initWithDomain:v255 code:2 userInfo:?];
                                                            v65 = v629;
                                                            v199 = v573;
                                                            goto LABEL_570;
                                                          }

                                                          v538 = 0;
                                                          v47 = 0;
                                                          v65 = v629;
                                                          v199 = v573;
                                                          self = selfCopy4;
                                                          v10 = v129;
                                                          v62 = v630;
LABEL_571:

                                                          goto LABEL_572;
                                                        }

                                                        if (v612)
                                                        {
                                                          v250 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                          v543 = *MEMORY[0x1E698F240];
                                                          v736 = *MEMORY[0x1E696A578];
                                                          self = selfCopy4;
                                                          v10 = v129;
                                                          v62 = v630;
                                                          v538 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"onStartPredictionFlag"];
                                                          v737 = v538;
                                                          v251 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v737 forKeys:&v736 count:1];
                                                          v252 = v250;
                                                          v8 = v633;
                                                          v539 = v251;
                                                          v253 = [v252 initWithDomain:v543 code:2 userInfo:?];
                                                          v542 = 0;
                                                          v47 = 0;
                                                          v612->super.super.isa = v253;
                                                          v65 = v629;
                                                          v199 = v573;
                                                          goto LABEL_571;
                                                        }

                                                        v542 = 0;
                                                        v47 = 0;
                                                        v65 = v629;
                                                        v199 = v573;
                                                        self = selfCopy4;
                                                        v10 = v129;
                                                        v62 = v630;
LABEL_572:

                                                        goto LABEL_573;
                                                      }

                                                      if (v612)
                                                      {
                                                        v246 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v546 = *MEMORY[0x1E698F240];
                                                        v738 = *MEMORY[0x1E696A578];
                                                        self = selfCopy4;
                                                        v10 = v129;
                                                        v62 = v630;
                                                        v542 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"predVolSiriPrct"];
                                                        v739 = v542;
                                                        v247 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v739 forKeys:&v738 count:1];
                                                        v248 = v246;
                                                        v8 = v633;
                                                        v544 = v247;
                                                        v249 = [v248 initWithDomain:v546 code:2 userInfo:?];
                                                        v545 = 0;
                                                        v47 = 0;
                                                        v612->super.super.isa = v249;
                                                        v65 = v629;
                                                        v199 = v573;
                                                        goto LABEL_572;
                                                      }

                                                      v545 = 0;
                                                      v47 = 0;
                                                      v65 = v629;
                                                      v199 = v573;
                                                      self = selfCopy4;
                                                      v10 = v129;
                                                      v62 = v630;
LABEL_573:

                                                      goto LABEL_574;
                                                    }

                                                    if (v612)
                                                    {
                                                      v242 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                      v549 = *MEMORY[0x1E698F240];
                                                      v740 = *MEMORY[0x1E696A578];
                                                      self = selfCopy4;
                                                      v10 = v129;
                                                      v62 = v630;
                                                      v545 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"predVolTelephonyPrct"];
                                                      v741 = v545;
                                                      v243 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v741 forKeys:&v740 count:1];
                                                      v244 = v242;
                                                      v8 = v633;
                                                      v547 = v243;
                                                      v245 = [v244 initWithDomain:v549 code:2 userInfo:?];
                                                      v548 = 0;
                                                      v47 = 0;
                                                      v612->super.super.isa = v245;
                                                      v65 = v629;
                                                      v199 = v573;
                                                      goto LABEL_573;
                                                    }

                                                    v548 = 0;
                                                    v47 = 0;
                                                    v65 = v629;
                                                    v199 = v573;
                                                    self = selfCopy4;
                                                    v10 = v129;
                                                    v62 = v630;
LABEL_574:

                                                    goto LABEL_575;
                                                  }

                                                  if (v612)
                                                  {
                                                    v238 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v553 = *MEMORY[0x1E698F240];
                                                    v742 = *MEMORY[0x1E696A578];
                                                    self = selfCopy4;
                                                    v10 = v129;
                                                    v62 = v630;
                                                    v548 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"predVolMediaPrct"];
                                                    v743 = v548;
                                                    v239 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v743 forKeys:&v742 count:1];
                                                    v240 = v238;
                                                    v8 = v633;
                                                    v551 = v239;
                                                    v241 = [v240 initWithDomain:v553 code:2 userInfo:?];
                                                    v552 = 0;
                                                    v47 = 0;
                                                    v612->super.super.isa = v241;
                                                    v65 = v629;
                                                    v199 = v573;
                                                    goto LABEL_574;
                                                  }

                                                  v552 = 0;
                                                  v47 = 0;
                                                  v65 = v629;
                                                  v199 = v573;
                                                  self = selfCopy4;
                                                  v10 = v129;
                                                  v62 = v630;
LABEL_575:

                                                  goto LABEL_576;
                                                }

                                                if (v612)
                                                {
                                                  v234 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v556 = *MEMORY[0x1E698F240];
                                                  v744 = *MEMORY[0x1E696A578];
                                                  self = selfCopy4;
                                                  v10 = v129;
                                                  v62 = v630;
                                                  v552 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"desiredDeltaE"];
                                                  v745 = v552;
                                                  v235 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v745 forKeys:&v744 count:1];
                                                  v236 = v234;
                                                  v8 = v633;
                                                  v554 = v235;
                                                  v237 = [v236 initWithDomain:v556 code:2 userInfo:?];
                                                  v555 = 0;
                                                  v47 = 0;
                                                  v612->super.super.isa = v237;
                                                  v65 = v629;
                                                  v199 = v573;
                                                  goto LABEL_575;
                                                }

                                                v555 = 0;
                                                v47 = 0;
                                                v65 = v629;
                                                v199 = v573;
                                                self = selfCopy4;
                                                v10 = v129;
                                                v62 = v630;
LABEL_576:

                                                goto LABEL_577;
                                              }

                                              if (v612)
                                              {
                                                v230 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v559 = *MEMORY[0x1E698F240];
                                                v746 = *MEMORY[0x1E696A578];
                                                self = selfCopy4;
                                                v10 = v129;
                                                v62 = v630;
                                                v555 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"smoothEae"];
                                                v747 = v555;
                                                v231 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v747 forKeys:&v746 count:1];
                                                v232 = v230;
                                                v8 = v633;
                                                v557 = v231;
                                                v233 = [v232 initWithDomain:v559 code:2 userInfo:?];
                                                v558 = 0;
                                                v47 = 0;
                                                v612->super.super.isa = v233;
                                                v65 = v629;
                                                v199 = v573;
                                                goto LABEL_576;
                                              }

                                              v558 = 0;
                                              v47 = 0;
                                              v65 = v629;
                                              v199 = v573;
                                              self = selfCopy4;
                                              v10 = v129;
                                              v62 = v630;
LABEL_577:

                                              goto LABEL_578;
                                            }

                                            if (v612)
                                            {
                                              v226 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v562 = *MEMORY[0x1E698F240];
                                              v748 = *MEMORY[0x1E696A578];
                                              self = selfCopy4;
                                              v10 = v129;
                                              v62 = v630;
                                              v558 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"lastVolSiriPrct"];
                                              v749 = v558;
                                              v227 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v749 forKeys:&v748 count:1];
                                              v228 = v226;
                                              v8 = v633;
                                              v560 = v227;
                                              v229 = [v228 initWithDomain:v562 code:2 userInfo:?];
                                              v561 = 0;
                                              v47 = 0;
                                              v612->super.super.isa = v229;
                                              v65 = v629;
                                              v199 = v573;
                                              goto LABEL_577;
                                            }

                                            v561 = 0;
                                            v47 = 0;
                                            v65 = v629;
                                            v199 = v573;
                                            self = selfCopy4;
                                            v10 = v129;
                                            v62 = v630;
LABEL_578:

                                            goto LABEL_579;
                                          }

                                          if (v612)
                                          {
                                            v222 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v565 = *MEMORY[0x1E698F240];
                                            v750 = *MEMORY[0x1E696A578];
                                            self = selfCopy4;
                                            v10 = v129;
                                            v62 = v630;
                                            v561 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"lastESiridBA"];
                                            v751 = v561;
                                            v223 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v751 forKeys:&v750 count:1];
                                            v224 = v222;
                                            v8 = v633;
                                            v563 = v223;
                                            v225 = [v224 initWithDomain:v565 code:2 userInfo:?];
                                            v564 = 0;
                                            v47 = 0;
                                            v612->super.super.isa = v225;
                                            v65 = v629;
                                            v199 = v573;
                                            goto LABEL_578;
                                          }

                                          v564 = 0;
                                          v47 = 0;
                                          v65 = v629;
                                          v199 = v573;
                                          self = selfCopy4;
                                          v10 = v129;
                                          v62 = v630;
LABEL_579:

                                          goto LABEL_580;
                                        }

                                        if (v612)
                                        {
                                          v218 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v568 = *MEMORY[0x1E698F240];
                                          v752 = *MEMORY[0x1E696A578];
                                          v564 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"lastVolTelephonyPrct"];
                                          v753 = v564;
                                          v219 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v753 forKeys:&v752 count:1];
                                          v220 = v218;
                                          v8 = v633;
                                          v566 = v219;
                                          v221 = [v220 initWithDomain:v568 code:2 userInfo:?];
                                          v567 = 0;
                                          v47 = 0;
                                          v612->super.super.isa = v221;
                                          v65 = v629;
                                          v199 = v573;
                                          goto LABEL_579;
                                        }

                                        v567 = 0;
                                        v47 = 0;
LABEL_264:
                                        v65 = v629;
                                        v199 = v573;
LABEL_580:

                                        goto LABEL_581;
                                      }

                                      if (v612)
                                      {
                                        v214 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v571 = *MEMORY[0x1E698F240];
                                        v754 = *MEMORY[0x1E696A578];
                                        v567 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"lastETelephonydBA"];
                                        v755 = v567;
                                        v215 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v755 forKeys:&v754 count:1];
                                        v216 = v214;
                                        v8 = v633;
                                        v569 = v215;
                                        v217 = [v216 initWithDomain:v571 code:2 userInfo:?];
                                        v570 = 0;
                                        v47 = 0;
                                        v612->super.super.isa = v217;
                                        goto LABEL_264;
                                      }

                                      v570 = 0;
                                      v47 = 0;
LABEL_258:
                                      v65 = v629;
                                      v199 = v573;
LABEL_581:

                                      goto LABEL_582;
                                    }

                                    v62 = v630;
                                    if (v612)
                                    {
                                      v210 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v576 = *MEMORY[0x1E698F240];
                                      v756 = *MEMORY[0x1E696A578];
                                      v62 = v630;
                                      v570 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"lastVolMediaPrct"];
                                      v757 = v570;
                                      v211 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v757 forKeys:&v756 count:1];
                                      v212 = v210;
                                      v8 = v633;
                                      v572 = v211;
                                      v213 = [v212 initWithDomain:v576 code:2 userInfo:?];
                                      v575 = 0;
                                      v47 = 0;
                                      v612->super.super.isa = v213;
                                      goto LABEL_258;
                                    }

                                    v575 = 0;
                                    v47 = 0;
                                    v65 = v629;
                                    v199 = v573;
LABEL_582:

                                    goto LABEL_583;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v573 = v40;
                                    goto LABEL_52;
                                  }

                                  if (errorCopy2)
                                  {
                                    v202 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v203 = *MEMORY[0x1E698F240];
                                    v758 = *MEMORY[0x1E696A578];
                                    v204 = errorCopy2;
                                    v205 = objc_alloc(MEMORY[0x1E696AEC0]);
                                    v447 = objc_opt_class();
                                    v206 = v205;
                                    self = selfCopy2;
                                    v10 = v11;
                                    v62 = v630;
                                    v575 = [v206 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v447, @"lastEMediadBA"];
                                    v759 = v575;
                                    v207 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v759 forKeys:&v758 count:1];
                                    v208 = v202;
                                    v8 = v633;
                                    v574 = v207;
                                    v209 = [v208 initWithDomain:v203 code:2 userInfo:?];
                                    v199 = 0;
                                    v47 = 0;
                                    *v204 = v209;
                                    v65 = v629;
                                    goto LABEL_582;
                                  }

                                  v199 = 0;
                                  v47 = 0;
                                  v65 = v629;
                                  self = selfCopy2;
                                  v10 = v11;
                                  v62 = v630;
LABEL_583:

                                  error = v636;
                                  goto LABEL_584;
                                }

                                if (errorCopy2)
                                {
                                  v195 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v196 = *MEMORY[0x1E698F240];
                                  v760 = *MEMORY[0x1E696A578];
                                  v622 = errorCopy2;
                                  v197 = objc_alloc(MEMORY[0x1E696AEC0]);
                                  v446 = objc_opt_class();
                                  v198 = v197;
                                  self = selfCopy2;
                                  v10 = v11;
                                  v62 = v630;
                                  v199 = [v198 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v446, @"personalizationParamMistakes"];
                                  v761 = v199;
                                  v200 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v761 forKeys:&v760 count:1];
                                  v201 = v195;
                                  v8 = v633;
                                  v577 = v200;
                                  v578 = 0;
                                  v47 = 0;
                                  *v622 = [v201 initWithDomain:v196 code:2 userInfo:?];
                                  v65 = v629;
                                  goto LABEL_583;
                                }

                                v578 = 0;
                                v47 = 0;
                                v65 = v629;
                                self = selfCopy2;
                                v10 = v11;
                                error = v636;
                                v62 = v630;
LABEL_584:

                                goto LABEL_585;
                              }

                              if (errorCopy2)
                              {
                                v189 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v190 = *MEMORY[0x1E698F240];
                                v762 = *MEMORY[0x1E696A578];
                                v621 = errorCopy2;
                                v191 = objc_alloc(MEMORY[0x1E696AEC0]);
                                v445 = objc_opt_class();
                                v192 = v191;
                                self = selfCopy2;
                                v10 = v11;
                                v62 = v630;
                                error = v636;
                                v578 = [v192 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v445, @"personalizationParamSnr"];
                                v763 = v578;
                                v193 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v763 forKeys:&v762 count:1];
                                v194 = v189;
                                v8 = v633;
                                v579 = v193;
                                v580 = 0;
                                v47 = 0;
                                *v621 = [v194 initWithDomain:v190 code:2 userInfo:?];
                                v65 = v629;
                                goto LABEL_584;
                              }

                              v580 = 0;
                              v47 = 0;
                              v65 = v629;
                              self = selfCopy2;
                              v10 = v11;
                              error = v636;
                              v62 = v630;
LABEL_585:

                              goto LABEL_586;
                            }

                            if (errorCopy2)
                            {
                              v183 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v184 = *MEMORY[0x1E698F240];
                              v764 = *MEMORY[0x1E696A578];
                              v620 = errorCopy2;
                              v185 = objc_alloc(MEMORY[0x1E696AEC0]);
                              v444 = objc_opt_class();
                              v186 = v185;
                              self = selfCopy2;
                              v10 = v11;
                              v62 = v630;
                              error = v636;
                              v580 = [v186 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v444, @"speechPresenceProbability"];
                              v765 = v580;
                              v187 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v765 forKeys:&v764 count:1];
                              v188 = v183;
                              v8 = v633;
                              v581 = v187;
                              v582 = 0;
                              v47 = 0;
                              *v620 = [v188 initWithDomain:v184 code:2 userInfo:?];
                              v65 = v629;
                              goto LABEL_585;
                            }

                            v582 = 0;
                            v47 = 0;
                            v65 = v629;
                            self = selfCopy2;
                            v10 = v11;
                            error = v636;
                            v62 = v630;
LABEL_586:

                            goto LABEL_587;
                          }

                          if (errorCopy2)
                          {
                            v177 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v178 = *MEMORY[0x1E698F240];
                            v766 = *MEMORY[0x1E696A578];
                            v619 = errorCopy2;
                            v179 = objc_alloc(MEMORY[0x1E696AEC0]);
                            v443 = objc_opt_class();
                            v180 = v179;
                            self = selfCopy2;
                            v10 = v11;
                            v62 = v630;
                            error = v636;
                            v582 = [v180 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v443, @"volumeChangeFlag"];
                            v767 = v582;
                            v181 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v767 forKeys:&v766 count:1];
                            v182 = v177;
                            v8 = v633;
                            v583 = v181;
                            v584 = 0;
                            v47 = 0;
                            *v619 = [v182 initWithDomain:v178 code:2 userInfo:?];
                            v65 = v629;
                            goto LABEL_586;
                          }

                          v584 = 0;
                          v47 = 0;
                          v65 = v629;
                          self = selfCopy2;
                          v10 = v11;
                          error = v636;
                          v62 = v630;
LABEL_587:

                          goto LABEL_588;
                        }

                        if (errorCopy2)
                        {
                          v119 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v120 = *MEMORY[0x1E698F240];
                          v768 = *MEMORY[0x1E696A578];
                          v618 = errorCopy2;
                          v121 = objc_alloc(MEMORY[0x1E696AEC0]);
                          v442 = objc_opt_class();
                          v122 = v121;
                          self = selfCopy2;
                          v10 = v11;
                          v62 = v630;
                          error = v636;
                          v584 = [v122 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v442, @"windSpeechAggressorFlag"];
                          v769 = v584;
                          v123 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v769 forKeys:&v768 count:1];
                          v124 = v119;
                          v8 = v633;
                          v585 = v123;
                          v586 = 0;
                          v47 = 0;
                          *v618 = [v124 initWithDomain:v120 code:2 userInfo:?];
                          v65 = v629;
                          goto LABEL_587;
                        }

                        v586 = 0;
                        v47 = 0;
                        v65 = v629;
                        self = selfCopy2;
                        v10 = v11;
                        error = v636;
                        v62 = v630;
LABEL_588:

                        goto LABEL_589;
                      }

                      if (errorCopy2)
                      {
                        v112 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v601 = *MEMORY[0x1E698F240];
                        v770 = *MEMORY[0x1E696A578];
                        v113 = errorCopy2;
                        v114 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v441 = objc_opt_class();
                        v115 = v114;
                        self = selfCopy2;
                        v10 = v11;
                        v62 = v630;
                        error = v636;
                        v586 = [v115 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v441, @"streamType"];
                        v771 = v586;
                        v116 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v771 forKeys:&v770 count:1];
                        v117 = v112;
                        v8 = v633;
                        v587 = v116;
                        v118 = [v117 initWithDomain:v601 code:2 userInfo:?];
                        v600 = 0;
                        v47 = 0;
                        *v113 = v118;
                        v65 = v629;
                        goto LABEL_588;
                      }

                      v600 = 0;
                      v47 = 0;
                      v65 = v629;
                      self = selfCopy2;
                      v10 = v11;
                      error = v636;
                      v62 = v630;
LABEL_589:

                      goto LABEL_590;
                    }

                    if (errorCopy2)
                    {
                      v105 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v604 = *MEMORY[0x1E698F240];
                      v772 = *MEMORY[0x1E696A578];
                      v106 = errorCopy2;
                      v107 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v440 = objc_opt_class();
                      v108 = v107;
                      self = selfCopy2;
                      v10 = v11;
                      v62 = v630;
                      error = v636;
                      v600 = [v108 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v440, @"headphoneMode"];
                      v773 = v600;
                      v109 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v773 forKeys:&v772 count:1];
                      v110 = v105;
                      v8 = v633;
                      v602 = v109;
                      v111 = [v110 initWithDomain:v604 code:2 userInfo:?];
                      v603 = 0;
                      v47 = 0;
                      *v106 = v111;
                      v65 = v629;
                      goto LABEL_589;
                    }

                    v603 = 0;
                    v47 = 0;
                    v65 = v629;
                    self = selfCopy2;
                    v10 = v11;
                    error = v636;
                    v62 = v630;
LABEL_590:

                    goto LABEL_591;
                  }

                  if (errorCopy2)
                  {
                    v98 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v607 = *MEMORY[0x1E698F240];
                    v774 = *MEMORY[0x1E696A578];
                    v99 = errorCopy2;
                    v100 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v439 = objc_opt_class();
                    v101 = v100;
                    self = selfCopy2;
                    v10 = v11;
                    v62 = v630;
                    error = v636;
                    v603 = [v101 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v439, @"lastUserVolChangeType"];
                    v775 = v603;
                    v102 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v775 forKeys:&v774 count:1];
                    v103 = v98;
                    v8 = v633;
                    v605 = v102;
                    v104 = [v103 initWithDomain:v607 code:2 userInfo:?];
                    v606 = 0;
                    v47 = 0;
                    *v99 = v104;
                    v65 = v629;
                    goto LABEL_590;
                  }

                  v606 = 0;
                  v47 = 0;
                  v65 = v629;
                  self = selfCopy2;
                  v10 = v11;
                  error = v636;
                  v62 = v630;
LABEL_591:

                  goto LABEL_592;
                }

                if (errorCopy2)
                {
                  v91 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v610 = *MEMORY[0x1E698F240];
                  v776 = *MEMORY[0x1E696A578];
                  v92 = errorCopy2;
                  v93 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v438 = objc_opt_class();
                  v94 = v93;
                  self = selfCopy2;
                  v10 = v11;
                  v62 = v630;
                  error = v636;
                  v606 = [v94 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v438, @"currentVolumePrct"];
                  v777 = v606;
                  v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v777 forKeys:&v776 count:1];
                  v96 = v91;
                  v8 = v633;
                  v608 = v95;
                  v97 = [v96 initWithDomain:v610 code:2 userInfo:?];
                  v609 = 0;
                  v47 = 0;
                  *v92 = v97;
                  v65 = v629;
                  goto LABEL_591;
                }

                v609 = 0;
                v47 = 0;
                v65 = v629;
                self = selfCopy2;
                v10 = v11;
                error = v636;
                v62 = v630;
LABEL_592:

                goto LABEL_593;
              }

              if (errorCopy2)
              {
                v85 = objc_alloc(MEMORY[0x1E696ABC0]);
                v624 = *MEMORY[0x1E698F240];
                v778 = *MEMORY[0x1E696A578];
                v617 = errorCopy2;
                v86 = objc_alloc(MEMORY[0x1E696AEC0]);
                v437 = objc_opt_class();
                v87 = v86;
                self = selfCopy2;
                v10 = v11;
                v62 = v630;
                error = v636;
                v609 = [v87 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v437, @"downlinkdBA"];
                v779 = v609;
                v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v779 forKeys:&v778 count:1];
                v89 = v85;
                v8 = v633;
                v611 = v88;
                v90 = [v89 initWithDomain:v624 code:2 userInfo:?];
                v623 = 0;
                v47 = 0;
                *v617 = v90;
                v65 = v629;
                goto LABEL_592;
              }

              v623 = 0;
              v47 = 0;
              v65 = v629;
              self = selfCopy2;
              v10 = v11;
              error = v636;
              v62 = v630;
LABEL_593:

              goto LABEL_594;
            }

            if (errorCopy2)
            {
              v79 = objc_alloc(MEMORY[0x1E696ABC0]);
              v627 = *MEMORY[0x1E698F240];
              v780 = *MEMORY[0x1E696A578];
              v616 = errorCopy2;
              v80 = objc_alloc(MEMORY[0x1E696AEC0]);
              v436 = objc_opt_class();
              v81 = v80;
              self = selfCopy2;
              v10 = v11;
              v62 = v630;
              error = v636;
              v623 = [v81 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v436, @"drumdBAPredicted"];
              v781 = v623;
              v82 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v781 forKeys:&v780 count:1];
              v83 = v79;
              v8 = v633;
              v625 = v82;
              v84 = [v83 initWithDomain:v627 code:2 userInfo:?];
              v626 = 0;
              v47 = 0;
              *v616 = v84;
              v65 = v629;
              goto LABEL_593;
            }

            v626 = 0;
            v47 = 0;
            v65 = v629;
            self = selfCopy2;
            v10 = v11;
            error = v636;
            v62 = v630;
LABEL_594:

            goto LABEL_595;
          }

          if (errorCopy2)
          {
            v73 = objc_alloc(MEMORY[0x1E696ABC0]);
            v632 = *MEMORY[0x1E698F240];
            v782 = *MEMORY[0x1E696A578];
            v615 = errorCopy2;
            v74 = objc_alloc(MEMORY[0x1E696AEC0]);
            v435 = objc_opt_class();
            v75 = v74;
            self = selfCopy2;
            v10 = v11;
            v62 = v630;
            error = v636;
            v626 = [v75 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v435, @"drumdBK"];
            v783 = v626;
            v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v783 forKeys:&v782 count:1];
            v77 = v73;
            v8 = v633;
            v628 = v76;
            v78 = [v77 initWithDomain:v632 code:2 userInfo:?];
            v631 = 0;
            v47 = 0;
            *v615 = v78;
            v65 = v629;
            goto LABEL_594;
          }

          v631 = 0;
          v47 = 0;
          v65 = v629;
          self = selfCopy2;
          v10 = v11;
          error = v636;
          v62 = v630;
LABEL_595:

          goto LABEL_596;
        }

        v65 = v14;
        if (errorCopy2)
        {
          v635 = objc_alloc(MEMORY[0x1E696ABC0]);
          v67 = *MEMORY[0x1E698F240];
          v784 = *MEMORY[0x1E696A578];
          v614 = errorCopy2;
          v68 = objc_alloc(MEMORY[0x1E696AEC0]);
          v434 = objc_opt_class();
          v69 = v68;
          self = selfCopy2;
          v10 = v11;
          error = v636;
          v631 = [v69 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v434, @"drumdBA"];
          v785 = v631;
          v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v785 forKeys:&v784 count:1];
          v71 = v635;
          v72 = v67;
          v8 = v633;
          v634 = v70;
          v62 = 0;
          v47 = 0;
          *v614 = [v71 initWithDomain:v72 code:2 userInfo:?];
          goto LABEL_595;
        }

        v47 = 0;
        self = selfCopy2;
        v10 = v11;
        v62 = 0;
        error = v636;
LABEL_596:

        goto LABEL_597;
      }

      if (error)
      {
        v53 = objc_alloc(MEMORY[0x1E696ABC0]);
        selfCopy9 = self;
        v55 = *MEMORY[0x1E698F240];
        v786 = *MEMORY[0x1E696A578];
        errorCopy3 = error;
        v56 = dictionaryCopy;
        v57 = v7;
        v58 = v9;
        v59 = v10;
        v60 = objc_alloc(MEMORY[0x1E696AEC0]);
        v433 = objc_opt_class();
        v61 = v60;
        v10 = v59;
        v9 = v58;
        v7 = v57;
        dictionaryCopy = v56;
        v62 = [v61 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v433, @"refMicdBC"];
        v787 = v62;
        v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v787 forKeys:&v786 count:1];
        v64 = v53;
        v65 = v63;
        v66 = v55;
        self = selfCopy9;
        v8 = v633;
        error = 0;
        v47 = 0;
        *errorCopy3 = [v64 initWithDomain:v66 code:2 userInfo:v63];
        goto LABEL_596;
      }

      v47 = 0;
LABEL_597:

      goto LABEL_598;
    }

    if (error)
    {
      v48 = objc_alloc(MEMORY[0x1E696ABC0]);
      v49 = *MEMORY[0x1E698F240];
      v788 = *MEMORY[0x1E696A578];
      selfCopy10 = self;
      errorCopy4 = error;
      error = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"refMicdBA"];
      errorCopy5 = error;
      v637 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&errorCopy5 forKeys:&v788 count:1];
      v52 = [v48 initWithDomain:v49 code:2 userInfo:v637];
      v10 = 0;
      v47 = 0;
      *errorCopy4 = v52;
      self = selfCopy10;
      goto LABEL_597;
    }

    v10 = 0;
    v47 = 0;
LABEL_598:

    goto LABEL_599;
  }

  if (error)
  {
    v43 = objc_alloc(MEMORY[0x1E696ABC0]);
    errorCopy6 = error;
    v45 = *MEMORY[0x1E698F240];
    v790 = *MEMORY[0x1E696A578];
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"controllerVersion"];
    v791[0] = v10;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v791 forKeys:&v790 count:1];
    v46 = [v43 initWithDomain:v45 code:2 userInfo:v9];
    v8 = 0;
    v47 = 0;
    *errorCopy6 = v46;
    goto LABEL_598;
  }

  v8 = 0;
  v47 = 0;
LABEL_599:

  v405 = *MEMORY[0x1E69E9840];
  return v47;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDeviceAdaptiveVolume *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v90 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_hasControllerVersion)
  {
    controllerVersion = self->_controllerVersion;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasRefMicdBA)
  {
    refMicdBA = self->_refMicdBA;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasRefMicdBC)
  {
    refMicdBC = self->_refMicdBC;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasDrumdBA)
  {
    drumdBA = self->_drumdBA;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasDrumdBK)
  {
    drumdBK = self->_drumdBK;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasDrumdBAPredicted)
  {
    drumdBAPredicted = self->_drumdBAPredicted;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasDownlinkdBA)
  {
    downlinkdBA = self->_downlinkdBA;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasCurrentVolumePrct)
  {
    currentVolumePrct = self->_currentVolumePrct;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasLastUserVolChangeType)
  {
    lastUserVolChangeType = self->_lastUserVolChangeType;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasHeadphoneMode)
  {
    headphoneMode = self->_headphoneMode;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasStreamType)
  {
    streamType = self->_streamType;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasWindSpeechAggressorFlag)
  {
    windSpeechAggressorFlag = self->_windSpeechAggressorFlag;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasVolumeChangeFlag)
  {
    volumeChangeFlag = self->_volumeChangeFlag;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasSpeechPresenceProbability)
  {
    speechPresenceProbability = self->_speechPresenceProbability;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasPersonalizationParamSnr)
  {
    personalizationParamSnr = self->_personalizationParamSnr;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasPersonalizationParamMistakes)
  {
    personalizationParamMistakes = self->_personalizationParamMistakes;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasLastEMediadBA)
  {
    lastEMediadBA = self->_lastEMediadBA;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasLastVolMediaPrct)
  {
    lastVolMediaPrct = self->_lastVolMediaPrct;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasLastETelephonydBA)
  {
    lastETelephonydBA = self->_lastETelephonydBA;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasLastVolTelephonyPrct)
  {
    lastVolTelephonyPrct = self->_lastVolTelephonyPrct;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasLastESiridBA)
  {
    lastESiridBA = self->_lastESiridBA;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasLastVolSiriPrct)
  {
    lastVolSiriPrct = self->_lastVolSiriPrct;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasSmoothEae)
  {
    smoothEae = self->_smoothEae;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasDesiredDeltaE)
  {
    desiredDeltaE = self->_desiredDeltaE;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasPredVolMediaPrct)
  {
    predVolMediaPrct = self->_predVolMediaPrct;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasPredVolTelephonyPrct)
  {
    predVolTelephonyPrct = self->_predVolTelephonyPrct;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasPredVolSiriPrct)
  {
    predVolSiriPrct = self->_predVolSiriPrct;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasOnStartPredictionFlag)
  {
    onStartPredictionFlag = self->_onStartPredictionFlag;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasGuardrailsAvoidFlag)
  {
    guardrailsAvoidFlag = self->_guardrailsAvoidFlag;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasMinMaxCutFlag)
  {
    minMaxCutFlag = self->_minMaxCutFlag;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasManualVolumeChangeFlag)
  {
    manualVolumeChangeFlag = self->_manualVolumeChangeFlag;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasBigWindowSize)
  {
    bigWindowSize = self->_bigWindowSize;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasSmallWindowSize)
  {
    smallWindowSize = self->_smallWindowSize;
    PBDataWriterWriteUint32Field();
  }

  if (self->_activeAppName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_activeAirpodsSerialNumber)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasAnchorVol)
  {
    anchorVol = self->_anchorVol;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasAnchorEnv)
  {
    anchorEnv = self->_anchorEnv;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasPersonalizationCoeff)
  {
    personalizationCoeff = self->_personalizationCoeff;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasUnsignedPredVolMediaPrct)
  {
    unsignedPredVolMediaPrct = self->_unsignedPredVolMediaPrct;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasUnsignedPredVolTelephonyPrct)
  {
    unsignedPredVolTelephonyPrct = self->_unsignedPredVolTelephonyPrct;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasUnsignedPredVolSiriPrct)
  {
    unsignedPredVolSiriPrct = self->_unsignedPredVolSiriPrct;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasSingleBudFlag)
  {
    singleBudFlag = self->_singleBudFlag;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasCdEngagementFlag)
  {
    cdEngagementFlag = self->_cdEngagementFlag;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasActiveStreamFlag)
  {
    activeStreamFlag = self->_activeStreamFlag;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasPvFeatureEnableFlag)
  {
    pvFeatureEnableFlag = self->_pvFeatureEnableFlag;
    PBDataWriterWriteUint32Field();
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v48 = self->_envSpectralData32B;
  v49 = [(NSArray *)v48 countByEnumeratingWithState:&v84 objects:v89 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v85;
    do
    {
      v52 = 0;
      do
      {
        if (*v85 != v51)
        {
          objc_enumerationMutation(v48);
        }

        [*(*(&v84 + 1) + 8 * v52) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v52;
      }

      while (v50 != v52);
      v50 = [(NSArray *)v48 countByEnumeratingWithState:&v84 objects:v89 count:16];
    }

    while (v50);
  }

  if (self->_hasWindStrength)
  {
    windStrength = self->_windStrength;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasWindProb)
  {
    windProb = self->_windProb;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasMediaType)
  {
    mediaType = self->_mediaType;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasSourceActivity)
  {
    sourceActivity = self->_sourceActivity;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasBudActivity)
  {
    budActivity = self->_budActivity;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasLocation)
  {
    location = self->_location;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasLocationType)
  {
    locationType = self->_locationType;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasFocusMode)
  {
    focusMode = self->_focusMode;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasStreamingAppBundleId)
  {
    streamingAppBundleId = self->_streamingAppBundleId;
    PBDataWriterWriteUint32Field();
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v62 = self->_noiseType4B;
  v63 = [(NSArray *)v62 countByEnumeratingWithState:&v80 objects:v88 count:16];
  if (v63)
  {
    v64 = v63;
    v65 = *v81;
    do
    {
      v66 = 0;
      do
      {
        if (*v81 != v65)
        {
          objc_enumerationMutation(v62);
        }

        [*(*(&v80 + 1) + 8 * v66) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v66;
      }

      while (v64 != v66);
      v64 = [(NSArray *)v62 countByEnumeratingWithState:&v80 objects:v88 count:16];
    }

    while (v64);
  }

  if (self->_hasInstdBA)
  {
    instdBA = self->_instdBA;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasInstdBC)
  {
    instdBC = self->_instdBC;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasNonCAListeningMode)
  {
    nonCAListeningMode = self->_nonCAListeningMode;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasFit)
  {
    fit = self->_fit;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasFixedAutoAncGain)
  {
    fixedAutoAncGain = self->_fixedAutoAncGain;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasAdjustedAutoAncGain)
  {
    adjustedAutoAncGain = self->_adjustedAutoAncGain;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasTimestamp)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasDRCenablementBit)
  {
    DRCenablementBit = self->_DRCenablementBit;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasDRCwindFlag)
  {
    DRCwindFlag = self->_DRCwindFlag;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasDRCappSelfVoiceFlag)
  {
    DRCappSelfVoiceFlag = self->_DRCappSelfVoiceFlag;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasDrumDRC)
  {
    drumDRC = self->_drumDRC;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasRoutedDRCGain)
  {
    routedDRCGain = self->_routedDRCGain;
    PBDataWriterWriteUint32Field();
  }

  v79 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v9.receiver = self;
  v9.super_class = BMDeviceAdaptiveVolume;
  v5 = [(BMEventBase *)&v9 init];
  v6 = v5;
  if (v5 && !BMDeviceAdaptiveVolumeReadFrom(v5, fromCopy))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (NSString)description
{
  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  v69 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume controllerVersion](self, "controllerVersion")}];
  v73 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume refMicdBA](self, "refMicdBA")}];
  v72 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume refMicdBC](self, "refMicdBC")}];
  v71 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume drumdBA](self, "drumdBA")}];
  v70 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume drumdBK](self, "drumdBK")}];
  v65 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume drumdBAPredicted](self, "drumdBAPredicted")}];
  v68 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume downlinkdBA](self, "downlinkdBA")}];
  v67 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume currentVolumePrct](self, "currentVolumePrct")}];
  v66 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume lastUserVolChangeType](self, "lastUserVolChangeType")}];
  v62 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume headphoneMode](self, "headphoneMode")}];
  v64 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume streamType](self, "streamType")}];
  v63 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume windSpeechAggressorFlag](self, "windSpeechAggressorFlag")}];
  v59 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume volumeChangeFlag](self, "volumeChangeFlag")}];
  v61 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume speechPresenceProbability](self, "speechPresenceProbability")}];
  v60 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceAdaptiveVolume personalizationParamSnr](self, "personalizationParamSnr")}];
  v56 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceAdaptiveVolume personalizationParamMistakes](self, "personalizationParamMistakes")}];
  v58 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume lastEMediadBA](self, "lastEMediadBA")}];
  v57 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume lastVolMediaPrct](self, "lastVolMediaPrct")}];
  v53 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume lastETelephonydBA](self, "lastETelephonydBA")}];
  v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume lastVolTelephonyPrct](self, "lastVolTelephonyPrct")}];
  v54 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume lastESiridBA](self, "lastESiridBA")}];
  v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume lastVolSiriPrct](self, "lastVolSiriPrct")}];
  v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume smoothEae](self, "smoothEae")}];
  v51 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceAdaptiveVolume desiredDeltaE](self, "desiredDeltaE")}];
  v48 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceAdaptiveVolume predVolMediaPrct](self, "predVolMediaPrct")}];
  v49 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceAdaptiveVolume predVolTelephonyPrct](self, "predVolTelephonyPrct")}];
  v45 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceAdaptiveVolume predVolSiriPrct](self, "predVolSiriPrct")}];
  v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume onStartPredictionFlag](self, "onStartPredictionFlag")}];
  v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume guardrailsAvoidFlag](self, "guardrailsAvoidFlag")}];
  v46 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume minMaxCutFlag](self, "minMaxCutFlag")}];
  v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume manualVolumeChangeFlag](self, "manualVolumeChangeFlag")}];
  v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume bigWindowSize](self, "bigWindowSize")}];
  v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume smallWindowSize](self, "smallWindowSize")}];
  activeAppName = [(BMDeviceAdaptiveVolume *)self activeAppName];
  activeAirpodsSerialNumber = [(BMDeviceAdaptiveVolume *)self activeAirpodsSerialNumber];
  v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume anchorVol](self, "anchorVol")}];
  v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume anchorEnv](self, "anchorEnv")}];
  v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume personalizationCoeff](self, "personalizationCoeff")}];
  v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume unsignedPredVolMediaPrct](self, "unsignedPredVolMediaPrct")}];
  v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume unsignedPredVolTelephonyPrct](self, "unsignedPredVolTelephonyPrct")}];
  v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume unsignedPredVolSiriPrct](self, "unsignedPredVolSiriPrct")}];
  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume singleBudFlag](self, "singleBudFlag")}];
  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume cdEngagementFlag](self, "cdEngagementFlag")}];
  v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume activeStreamFlag](self, "activeStreamFlag")}];
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume pvFeatureEnableFlag](self, "pvFeatureEnableFlag")}];
  envSpectralData32B = [(BMDeviceAdaptiveVolume *)self envSpectralData32B];
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume windStrength](self, "windStrength")}];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume windProb](self, "windProb")}];
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume mediaType](self, "mediaType")}];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume sourceActivity](self, "sourceActivity")}];
  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume budActivity](self, "budActivity")}];
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume location](self, "location")}];
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume locationType](self, "locationType")}];
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume focusMode](self, "focusMode")}];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume streamingAppBundleId](self, "streamingAppBundleId")}];
  noiseType4B = [(BMDeviceAdaptiveVolume *)self noiseType4B];
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume instdBA](self, "instdBA")}];
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume instdBC](self, "instdBC")}];
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume nonCAListeningMode](self, "nonCAListeningMode")}];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume fit](self, "fit")}];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume fixedAutoAncGain](self, "fixedAutoAncGain")}];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume adjustedAutoAncGain](self, "adjustedAutoAncGain")}];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume timestamp](self, "timestamp")}];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume DRCenablementBit](self, "DRCenablementBit")}];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume DRCwindFlag](self, "DRCwindFlag")}];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume DRCappSelfVoiceFlag](self, "DRCappSelfVoiceFlag")}];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume drumDRC](self, "drumDRC")}];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume routedDRCGain](self, "routedDRCGain")}];
  v19 = [v18 initWithFormat:@"BMDeviceAdaptiveVolume with controllerVersion: %@, refMicdBA: %@, refMicdBC: %@, drumdBA: %@, drumdBK: %@, drumdBAPredicted: %@, downlinkdBA: %@, currentVolumePrct: %@, lastUserVolChangeType: %@, headphoneMode: %@, streamType: %@, windSpeechAggressorFlag: %@, volumeChangeFlag: %@, speechPresenceProbability: %@, personalizationParamSnr: %@, personalizationParamMistakes: %@, lastEMediadBA: %@, lastVolMediaPrct: %@, lastETelephonydBA: %@, lastVolTelephonyPrct: %@, lastESiridBA: %@, lastVolSiriPrct: %@, smoothEae: %@, desiredDeltaE: %@, predVolMediaPrct: %@, predVolTelephonyPrct: %@, predVolSiriPrct: %@, onStartPredictionFlag: %@, guardrailsAvoidFlag: %@, minMaxCutFlag: %@, manualVolumeChangeFlag: %@, bigWindowSize: %@, smallWindowSize: %@, activeAppName: %@, activeAirpodsSerialNumber: %@, anchorVol: %@, anchorEnv: %@, personalizationCoeff: %@, unsignedPredVolMediaPrct: %@, unsignedPredVolTelephonyPrct: %@, unsignedPredVolSiriPrct: %@, singleBudFlag: %@, cdEngagementFlag: %@, activeStreamFlag: %@, pvFeatureEnableFlag: %@, envSpectralData32B: %@, windStrength: %@, windProb: %@, mediaType: %@, sourceActivity: %@, budActivity: %@, location: %@, locationType: %@, focusMode: %@, streamingAppBundleId: %@, noiseType4B: %@, instdBA: %@, instdBC: %@, nonCAListeningMode: %@, fit: %@, fixedAutoAncGain: %@, adjustedAutoAncGain: %@, timestamp: %@, DRCenablementBit: %@, DRCwindFlag: %@, DRCappSelfVoiceFlag: %@, drumDRC: %@, routedDRCGain: %@", v69, v73, v72, v71, v70, v65, v68, v67, v66, v62, v64, v63, v59, v61, v60, v56, v58, v57, v53, v55, v54, v50, v52, v51, v48, v49, v45, v47, v44, v46, v41, v43, v40, activeAppName, activeAirpodsSerialNumber, v39, v35, v37, v34, v32, v36, v30, v33, v31, v17, envSpectralData32B, v16, v15, v28, v14, v27, v26, v25, v24, v13, noiseType4B, v22, v21, v20, v12];

  return v19;
}

- (BMDeviceAdaptiveVolume)initWithControllerVersion:(void *)version refMicdBA:(void *)a refMicdBC:(void *)c drumdBA:(void *)bA drumdBK:(void *)k drumdBAPredicted:(void *)predicted downlinkdBA:(id)downlinkdBA currentVolumePrct:(id)self0 lastUserVolChangeType:(id)self1 headphoneMode:(id)self2 streamType:(id)self3 windSpeechAggressorFlag:(id)self4 volumeChangeFlag:(id)self5 speechPresenceProbability:(id)self6 personalizationParamSnr:(id)self7 personalizationParamMistakes:(id)self8 lastEMediadBA:(id)self9 lastVolMediaPrct:(id)mediaPrct lastETelephonydBA:(id)telephonydBA lastVolTelephonyPrct:(id)telephonyPrct lastESiridBA:(id)siridBA lastVolSiriPrct:(id)siriPrct smoothEae:(id)eae desiredDeltaE:(id)e predVolMediaPrct:(id)volMediaPrct predVolTelephonyPrct:(id)volTelephonyPrct predVolSiriPrct:(id)volSiriPrct onStartPredictionFlag:(id)version0 guardrailsAvoidFlag:(id)version1 minMaxCutFlag:(id)version2 manualVolumeChangeFlag:(id)version3 bigWindowSize:(id)version4 smallWindowSize:(id)version5 activeAppName:(id)version6 activeAirpodsSerialNumber:(id)version7 anchorVol:(id)version8 anchorEnv:(id)version9 personalizationCoeff:(id)a0 unsignedPredVolMediaPrct:(id)a1 unsignedPredVolTelephonyPrct:(id)a2 unsignedPredVolSiriPrct:(id)a3 singleBudFlag:(id)a4 cdEngagementFlag:(id)c activeStreamFlag:(id)bA pvFeatureEnableFlag:(id)k envSpectralData32B:(id)predicted windStrength:(id)downlinkdBA windProb:(id)c0 mediaType:(id)c1 sourceActivity:(id)c2 budActivity:(id)c3 location:(id)c4 locationType:(id)c5 focusMode:(id)c6 streamingAppBundleId:(id)c7 noiseType4B:(id)c8 instdBA:(id)c9 instdBC:(id)bA0 nonCAListeningMode:(id)bA1 fit:(id)bA2 fixedAutoAncGain:(id)bA3 adjustedAutoAncGain:timestamp:DRCenablementBit:DRCwindFlag:DRCappSelfVoiceFlag:drumDRC:routedDRCGain:
{
  versionCopy = version;
  aCopy = a;
  cCopy = c;
  bACopy = bA;
  kCopy = k;
  predictedCopy = predicted;
  downlinkdBACopy = downlinkdBA;
  prctCopy = prct;
  typeCopy = type;
  modeCopy = mode;
  streamTypeCopy = streamType;
  flagCopy = flag;
  changeFlagCopy = changeFlag;
  probabilityCopy = probability;
  snrCopy = snr;
  mistakesCopy = mistakes;
  mediadBACopy = mediadBA;
  mediaPrctCopy = mediaPrct;
  telephonydBACopy = telephonydBA;
  telephonyPrctCopy = telephonyPrct;
  siridBACopy = siridBA;
  siriPrctCopy = siriPrct;
  eaeCopy = eae;
  eCopy = e;
  volMediaPrctCopy = volMediaPrct;
  volTelephonyPrctCopy = volTelephonyPrct;
  volSiriPrctCopy = volSiriPrct;
  predictionFlagCopy = predictionFlag;
  avoidFlagCopy = avoidFlag;
  cutFlagCopy = cutFlag;
  volumeChangeFlagCopy = volumeChangeFlag;
  sizeCopy = size;
  windowSizeCopy = windowSize;
  nameCopy = name;
  numberCopy = number;
  volCopy = vol;
  envCopy = env;
  coeffCopy = coeff;
  predVolMediaPrctCopy = predVolMediaPrct;
  predVolTelephonyPrctCopy = predVolTelephonyPrct;
  predVolSiriPrctCopy = predVolSiriPrct;
  budFlagCopy = budFlag;
  engagementFlagCopy = engagementFlag;
  streamFlagCopy = streamFlag;
  enableFlagCopy = enableFlag;
  bCopy = b;
  strengthCopy = strength;
  probCopy = prob;
  mediaTypeCopy = mediaType;
  activityCopy = activity;
  budActivityCopy = budActivity;
  locationCopy = location;
  locationTypeCopy = locationType;
  focusModeCopy = focusMode;
  idCopy = id;
  type4BCopy = type4B;
  instdBACopy = instdBA;
  bCCopy = bC;
  listeningModeCopy = listeningMode;
  fitCopy = fit;
  gainCopy = gain;
  v74 = a64;
  v75 = a65;
  v76 = a66;
  v77 = a67;
  v78 = a68;
  v79 = a69;
  v80 = a70;
  v211.receiver = self;
  v211.super_class = BMDeviceAdaptiveVolume;
  v81 = [(BMEventBase *)&v211 init];

  if (v81)
  {
    v81->_dataVersion = [objc_opt_class() latestDataVersion];
    if (versionCopy)
    {
      v81->_hasControllerVersion = 1;
      unsignedIntValue = [versionCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v81->_hasControllerVersion = 0;
    }

    v81->_controllerVersion = unsignedIntValue;
    if (aCopy)
    {
      v81->_hasRefMicdBA = 1;
      unsignedIntValue2 = [aCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue2 = 0;
      v81->_hasRefMicdBA = 0;
    }

    v81->_refMicdBA = unsignedIntValue2;
    if (cCopy)
    {
      v81->_hasRefMicdBC = 1;
      unsignedIntValue3 = [cCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue3 = 0;
      v81->_hasRefMicdBC = 0;
    }

    v81->_refMicdBC = unsignedIntValue3;
    if (bACopy)
    {
      v81->_hasDrumdBA = 1;
      unsignedIntValue4 = [bACopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue4 = 0;
      v81->_hasDrumdBA = 0;
    }

    v81->_drumdBA = unsignedIntValue4;
    unsignedIntValue5 = kCopy;
    if (kCopy)
    {
      v81->_hasDrumdBK = 1;
      unsignedIntValue5 = [kCopy unsignedIntValue];
    }

    else
    {
      v81->_hasDrumdBK = 0;
    }

    v81->_drumdBK = unsignedIntValue5;
    unsignedIntValue6 = predictedCopy;
    if (predictedCopy)
    {
      v81->_hasDrumdBAPredicted = 1;
      unsignedIntValue6 = [predictedCopy unsignedIntValue];
    }

    else
    {
      v81->_hasDrumdBAPredicted = 0;
    }

    v81->_drumdBAPredicted = unsignedIntValue6;
    unsignedIntValue7 = downlinkdBACopy;
    if (downlinkdBACopy)
    {
      v81->_hasDownlinkdBA = 1;
      unsignedIntValue7 = [downlinkdBACopy unsignedIntValue];
    }

    else
    {
      v81->_hasDownlinkdBA = 0;
    }

    v81->_downlinkdBA = unsignedIntValue7;
    unsignedIntValue8 = prctCopy;
    if (prctCopy)
    {
      v81->_hasCurrentVolumePrct = 1;
      unsignedIntValue8 = [prctCopy unsignedIntValue];
    }

    else
    {
      v81->_hasCurrentVolumePrct = 0;
    }

    v81->_currentVolumePrct = unsignedIntValue8;
    unsignedIntValue9 = typeCopy;
    if (typeCopy)
    {
      v81->_hasLastUserVolChangeType = 1;
      unsignedIntValue9 = [typeCopy unsignedIntValue];
    }

    else
    {
      v81->_hasLastUserVolChangeType = 0;
    }

    v81->_lastUserVolChangeType = unsignedIntValue9;
    unsignedIntValue10 = modeCopy;
    if (modeCopy)
    {
      v81->_hasHeadphoneMode = 1;
      unsignedIntValue10 = [modeCopy unsignedIntValue];
    }

    else
    {
      v81->_hasHeadphoneMode = 0;
    }

    v81->_headphoneMode = unsignedIntValue10;
    unsignedIntValue11 = streamTypeCopy;
    if (streamTypeCopy)
    {
      v81->_hasStreamType = 1;
      unsignedIntValue11 = [streamTypeCopy unsignedIntValue];
    }

    else
    {
      v81->_hasStreamType = 0;
    }

    v81->_streamType = unsignedIntValue11;
    unsignedIntValue12 = flagCopy;
    if (flagCopy)
    {
      v81->_hasWindSpeechAggressorFlag = 1;
      unsignedIntValue12 = [flagCopy unsignedIntValue];
    }

    else
    {
      v81->_hasWindSpeechAggressorFlag = 0;
    }

    v81->_windSpeechAggressorFlag = unsignedIntValue12;
    unsignedIntValue13 = changeFlagCopy;
    if (changeFlagCopy)
    {
      v81->_hasVolumeChangeFlag = 1;
      unsignedIntValue13 = [changeFlagCopy unsignedIntValue];
    }

    else
    {
      v81->_hasVolumeChangeFlag = 0;
    }

    v81->_volumeChangeFlag = unsignedIntValue13;
    unsignedIntValue14 = probabilityCopy;
    if (probabilityCopy)
    {
      v81->_hasSpeechPresenceProbability = 1;
      unsignedIntValue14 = [probabilityCopy unsignedIntValue];
    }

    else
    {
      v81->_hasSpeechPresenceProbability = 0;
    }

    v81->_speechPresenceProbability = unsignedIntValue14;
    if (snrCopy)
    {
      v81->_hasPersonalizationParamSnr = 1;
      intValue = [snrCopy intValue];
    }

    else
    {
      v81->_hasPersonalizationParamSnr = 0;
      intValue = -1;
    }

    v81->_personalizationParamSnr = intValue;
    if (mistakesCopy)
    {
      v81->_hasPersonalizationParamMistakes = 1;
      intValue2 = [mistakesCopy intValue];
    }

    else
    {
      v81->_hasPersonalizationParamMistakes = 0;
      intValue2 = -1;
    }

    v81->_personalizationParamMistakes = intValue2;
    unsignedIntValue15 = mediadBACopy;
    if (mediadBACopy)
    {
      v81->_hasLastEMediadBA = 1;
      unsignedIntValue15 = [mediadBACopy unsignedIntValue];
    }

    else
    {
      v81->_hasLastEMediadBA = 0;
    }

    v81->_lastEMediadBA = unsignedIntValue15;
    unsignedIntValue16 = mediaPrctCopy;
    if (mediaPrctCopy)
    {
      v81->_hasLastVolMediaPrct = 1;
      unsignedIntValue16 = [mediaPrctCopy unsignedIntValue];
    }

    else
    {
      v81->_hasLastVolMediaPrct = 0;
    }

    v81->_lastVolMediaPrct = unsignedIntValue16;
    unsignedIntValue17 = telephonydBACopy;
    if (telephonydBACopy)
    {
      v81->_hasLastETelephonydBA = 1;
      unsignedIntValue17 = [telephonydBACopy unsignedIntValue];
    }

    else
    {
      v81->_hasLastETelephonydBA = 0;
    }

    v81->_lastETelephonydBA = unsignedIntValue17;
    unsignedIntValue18 = telephonyPrctCopy;
    if (telephonyPrctCopy)
    {
      v81->_hasLastVolTelephonyPrct = 1;
      unsignedIntValue18 = [telephonyPrctCopy unsignedIntValue];
    }

    else
    {
      v81->_hasLastVolTelephonyPrct = 0;
    }

    v81->_lastVolTelephonyPrct = unsignedIntValue18;
    unsignedIntValue19 = siridBACopy;
    if (siridBACopy)
    {
      v81->_hasLastESiridBA = 1;
      unsignedIntValue19 = [siridBACopy unsignedIntValue];
    }

    else
    {
      v81->_hasLastESiridBA = 0;
    }

    v81->_lastESiridBA = unsignedIntValue19;
    unsignedIntValue20 = siriPrctCopy;
    if (siriPrctCopy)
    {
      v81->_hasLastVolSiriPrct = 1;
      unsignedIntValue20 = [siriPrctCopy unsignedIntValue];
    }

    else
    {
      v81->_hasLastVolSiriPrct = 0;
    }

    v81->_lastVolSiriPrct = unsignedIntValue20;
    unsignedIntValue21 = eaeCopy;
    if (eaeCopy)
    {
      v81->_hasSmoothEae = 1;
      unsignedIntValue21 = [eaeCopy unsignedIntValue];
    }

    else
    {
      v81->_hasSmoothEae = 0;
    }

    v81->_smoothEae = unsignedIntValue21;
    if (eCopy)
    {
      v81->_hasDesiredDeltaE = 1;
      intValue3 = [eCopy intValue];
    }

    else
    {
      v81->_hasDesiredDeltaE = 0;
      intValue3 = -1;
    }

    v81->_desiredDeltaE = intValue3;
    if (volMediaPrctCopy)
    {
      v81->_hasPredVolMediaPrct = 1;
      intValue4 = [volMediaPrctCopy intValue];
    }

    else
    {
      v81->_hasPredVolMediaPrct = 0;
      intValue4 = -1;
    }

    v81->_predVolMediaPrct = intValue4;
    if (volTelephonyPrctCopy)
    {
      v81->_hasPredVolTelephonyPrct = 1;
      intValue5 = [volTelephonyPrctCopy intValue];
    }

    else
    {
      v81->_hasPredVolTelephonyPrct = 0;
      intValue5 = -1;
    }

    v81->_predVolTelephonyPrct = intValue5;
    if (volSiriPrctCopy)
    {
      v81->_hasPredVolSiriPrct = 1;
      intValue6 = [volSiriPrctCopy intValue];
    }

    else
    {
      v81->_hasPredVolSiriPrct = 0;
      intValue6 = -1;
    }

    v81->_predVolSiriPrct = intValue6;
    unsignedIntValue22 = predictionFlagCopy;
    if (predictionFlagCopy)
    {
      v81->_hasOnStartPredictionFlag = 1;
      unsignedIntValue22 = [predictionFlagCopy unsignedIntValue];
    }

    else
    {
      v81->_hasOnStartPredictionFlag = 0;
    }

    v81->_onStartPredictionFlag = unsignedIntValue22;
    unsignedIntValue23 = avoidFlagCopy;
    if (avoidFlagCopy)
    {
      v81->_hasGuardrailsAvoidFlag = 1;
      unsignedIntValue23 = [avoidFlagCopy unsignedIntValue];
    }

    else
    {
      v81->_hasGuardrailsAvoidFlag = 0;
    }

    v81->_guardrailsAvoidFlag = unsignedIntValue23;
    unsignedIntValue24 = cutFlagCopy;
    if (cutFlagCopy)
    {
      v81->_hasMinMaxCutFlag = 1;
      unsignedIntValue24 = [cutFlagCopy unsignedIntValue];
    }

    else
    {
      v81->_hasMinMaxCutFlag = 0;
    }

    v81->_minMaxCutFlag = unsignedIntValue24;
    unsignedIntValue25 = volumeChangeFlagCopy;
    if (volumeChangeFlagCopy)
    {
      v81->_hasManualVolumeChangeFlag = 1;
      unsignedIntValue25 = [volumeChangeFlagCopy unsignedIntValue];
    }

    else
    {
      v81->_hasManualVolumeChangeFlag = 0;
    }

    v81->_manualVolumeChangeFlag = unsignedIntValue25;
    unsignedIntValue26 = sizeCopy;
    if (sizeCopy)
    {
      v81->_hasBigWindowSize = 1;
      unsignedIntValue26 = [sizeCopy unsignedIntValue];
    }

    else
    {
      v81->_hasBigWindowSize = 0;
    }

    v81->_bigWindowSize = unsignedIntValue26;
    unsignedIntValue27 = windowSizeCopy;
    if (windowSizeCopy)
    {
      v81->_hasSmallWindowSize = 1;
      unsignedIntValue27 = [windowSizeCopy unsignedIntValue];
    }

    else
    {
      v81->_hasSmallWindowSize = 0;
    }

    v81->_smallWindowSize = unsignedIntValue27;
    objc_storeStrong(&v81->_activeAppName, name);
    objc_storeStrong(&v81->_activeAirpodsSerialNumber, number);
    unsignedIntValue28 = volCopy;
    if (volCopy)
    {
      v81->_hasAnchorVol = 1;
      unsignedIntValue28 = [volCopy unsignedIntValue];
    }

    else
    {
      v81->_hasAnchorVol = 0;
    }

    v81->_anchorVol = unsignedIntValue28;
    unsignedIntValue29 = envCopy;
    if (envCopy)
    {
      v81->_hasAnchorEnv = 1;
      unsignedIntValue29 = [envCopy unsignedIntValue];
    }

    else
    {
      v81->_hasAnchorEnv = 0;
    }

    v81->_anchorEnv = unsignedIntValue29;
    unsignedIntValue30 = coeffCopy;
    if (coeffCopy)
    {
      v81->_hasPersonalizationCoeff = 1;
      unsignedIntValue30 = [coeffCopy unsignedIntValue];
    }

    else
    {
      v81->_hasPersonalizationCoeff = 0;
    }

    v81->_personalizationCoeff = unsignedIntValue30;
    unsignedIntValue31 = predVolMediaPrctCopy;
    if (predVolMediaPrctCopy)
    {
      v81->_hasUnsignedPredVolMediaPrct = 1;
      unsignedIntValue31 = [predVolMediaPrctCopy unsignedIntValue];
    }

    else
    {
      v81->_hasUnsignedPredVolMediaPrct = 0;
    }

    v81->_unsignedPredVolMediaPrct = unsignedIntValue31;
    unsignedIntValue32 = predVolTelephonyPrctCopy;
    if (predVolTelephonyPrctCopy)
    {
      v81->_hasUnsignedPredVolTelephonyPrct = 1;
      unsignedIntValue32 = [predVolTelephonyPrctCopy unsignedIntValue];
    }

    else
    {
      v81->_hasUnsignedPredVolTelephonyPrct = 0;
    }

    v81->_unsignedPredVolTelephonyPrct = unsignedIntValue32;
    unsignedIntValue33 = predVolSiriPrctCopy;
    if (predVolSiriPrctCopy)
    {
      v81->_hasUnsignedPredVolSiriPrct = 1;
      unsignedIntValue33 = [predVolSiriPrctCopy unsignedIntValue];
    }

    else
    {
      v81->_hasUnsignedPredVolSiriPrct = 0;
    }

    v81->_unsignedPredVolSiriPrct = unsignedIntValue33;
    unsignedIntValue34 = budFlagCopy;
    if (budFlagCopy)
    {
      v81->_hasSingleBudFlag = 1;
      unsignedIntValue34 = [budFlagCopy unsignedIntValue];
    }

    else
    {
      v81->_hasSingleBudFlag = 0;
    }

    v81->_singleBudFlag = unsignedIntValue34;
    unsignedIntValue35 = engagementFlagCopy;
    if (engagementFlagCopy)
    {
      v81->_hasCdEngagementFlag = 1;
      unsignedIntValue35 = [engagementFlagCopy unsignedIntValue];
    }

    else
    {
      v81->_hasCdEngagementFlag = 0;
    }

    v81->_cdEngagementFlag = unsignedIntValue35;
    unsignedIntValue36 = streamFlagCopy;
    if (streamFlagCopy)
    {
      v81->_hasActiveStreamFlag = 1;
      unsignedIntValue36 = [streamFlagCopy unsignedIntValue];
    }

    else
    {
      v81->_hasActiveStreamFlag = 0;
    }

    v81->_activeStreamFlag = unsignedIntValue36;
    unsignedIntValue37 = enableFlagCopy;
    if (enableFlagCopy)
    {
      v81->_hasPvFeatureEnableFlag = 1;
      unsignedIntValue37 = [enableFlagCopy unsignedIntValue];
    }

    else
    {
      v81->_hasPvFeatureEnableFlag = 0;
    }

    v81->_pvFeatureEnableFlag = unsignedIntValue37;
    objc_storeStrong(&v81->_envSpectralData32B, b);
    unsignedIntValue38 = strengthCopy;
    if (strengthCopy)
    {
      v81->_hasWindStrength = 1;
      unsignedIntValue38 = [strengthCopy unsignedIntValue];
    }

    else
    {
      v81->_hasWindStrength = 0;
    }

    v81->_windStrength = unsignedIntValue38;
    unsignedIntValue39 = probCopy;
    if (probCopy)
    {
      v81->_hasWindProb = 1;
      unsignedIntValue39 = [probCopy unsignedIntValue];
    }

    else
    {
      v81->_hasWindProb = 0;
    }

    v81->_windProb = unsignedIntValue39;
    unsignedIntValue40 = mediaTypeCopy;
    if (mediaTypeCopy)
    {
      v81->_hasMediaType = 1;
      unsignedIntValue40 = [mediaTypeCopy unsignedIntValue];
    }

    else
    {
      v81->_hasMediaType = 0;
    }

    v81->_mediaType = unsignedIntValue40;
    unsignedIntValue41 = activityCopy;
    if (activityCopy)
    {
      v81->_hasSourceActivity = 1;
      unsignedIntValue41 = [activityCopy unsignedIntValue];
    }

    else
    {
      v81->_hasSourceActivity = 0;
    }

    v81->_sourceActivity = unsignedIntValue41;
    unsignedIntValue42 = budActivityCopy;
    if (budActivityCopy)
    {
      v81->_hasBudActivity = 1;
      unsignedIntValue42 = [budActivityCopy unsignedIntValue];
    }

    else
    {
      v81->_hasBudActivity = 0;
    }

    v81->_budActivity = unsignedIntValue42;
    unsignedIntValue43 = locationCopy;
    if (locationCopy)
    {
      v81->_hasLocation = 1;
      unsignedIntValue43 = [locationCopy unsignedIntValue];
    }

    else
    {
      v81->_hasLocation = 0;
    }

    v81->_location = unsignedIntValue43;
    unsignedIntValue44 = locationTypeCopy;
    if (locationTypeCopy)
    {
      v81->_hasLocationType = 1;
      unsignedIntValue44 = [locationTypeCopy unsignedIntValue];
    }

    else
    {
      v81->_hasLocationType = 0;
    }

    v81->_locationType = unsignedIntValue44;
    unsignedIntValue45 = focusModeCopy;
    if (focusModeCopy)
    {
      v81->_hasFocusMode = 1;
      unsignedIntValue45 = [focusModeCopy unsignedIntValue];
    }

    else
    {
      v81->_hasFocusMode = 0;
    }

    v81->_focusMode = unsignedIntValue45;
    if (idCopy)
    {
      v81->_hasStreamingAppBundleId = 1;
      unsignedIntValue46 = [idCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue46 = 0;
      v81->_hasStreamingAppBundleId = 0;
    }

    v81->_streamingAppBundleId = unsignedIntValue46;
    objc_storeStrong(&v81->_noiseType4B, type4B);
    unsignedIntValue47 = instdBACopy;
    if (instdBACopy)
    {
      v81->_hasInstdBA = 1;
      unsignedIntValue47 = [instdBACopy unsignedIntValue];
    }

    else
    {
      v81->_hasInstdBA = 0;
    }

    v81->_instdBA = unsignedIntValue47;
    unsignedIntValue48 = bCCopy;
    if (bCCopy)
    {
      v81->_hasInstdBC = 1;
      unsignedIntValue48 = [bCCopy unsignedIntValue];
    }

    else
    {
      v81->_hasInstdBC = 0;
    }

    v81->_instdBC = unsignedIntValue48;
    unsignedIntValue49 = listeningModeCopy;
    if (listeningModeCopy)
    {
      v81->_hasNonCAListeningMode = 1;
      unsignedIntValue49 = [listeningModeCopy unsignedIntValue];
    }

    else
    {
      v81->_hasNonCAListeningMode = 0;
    }

    v81->_nonCAListeningMode = unsignedIntValue49;
    unsignedIntValue50 = fitCopy;
    if (fitCopy)
    {
      v81->_hasFit = 1;
      unsignedIntValue50 = [fitCopy unsignedIntValue];
    }

    else
    {
      v81->_hasFit = 0;
    }

    v81->_fit = unsignedIntValue50;
    unsignedIntValue51 = gainCopy;
    if (gainCopy)
    {
      v81->_hasFixedAutoAncGain = 1;
      unsignedIntValue51 = [gainCopy unsignedIntValue];
    }

    else
    {
      v81->_hasFixedAutoAncGain = 0;
    }

    v81->_fixedAutoAncGain = unsignedIntValue51;
    unsignedIntValue52 = v74;
    if (v74)
    {
      v81->_hasAdjustedAutoAncGain = 1;
      unsignedIntValue52 = [v74 unsignedIntValue];
    }

    else
    {
      v81->_hasAdjustedAutoAncGain = 0;
    }

    v81->_adjustedAutoAncGain = unsignedIntValue52;
    unsignedIntValue53 = v75;
    if (v75)
    {
      v81->_hasTimestamp = 1;
      unsignedIntValue53 = [v75 unsignedIntValue];
    }

    else
    {
      v81->_hasTimestamp = 0;
    }

    v81->_timestamp = unsignedIntValue53;
    if (v76)
    {
      v81->_hasDRCenablementBit = 1;
      unsignedIntValue54 = [v76 unsignedIntValue];
    }

    else
    {
      unsignedIntValue54 = 0;
      v81->_hasDRCenablementBit = 0;
    }

    v81->_DRCenablementBit = unsignedIntValue54;
    if (v77)
    {
      v81->_hasDRCwindFlag = 1;
      unsignedIntValue55 = [v77 unsignedIntValue];
    }

    else
    {
      unsignedIntValue55 = 0;
      v81->_hasDRCwindFlag = 0;
    }

    v81->_DRCwindFlag = unsignedIntValue55;
    if (v78)
    {
      v81->_hasDRCappSelfVoiceFlag = 1;
      unsignedIntValue56 = [v78 unsignedIntValue];
    }

    else
    {
      unsignedIntValue56 = 0;
      v81->_hasDRCappSelfVoiceFlag = 0;
    }

    v81->_DRCappSelfVoiceFlag = unsignedIntValue56;
    if (v79)
    {
      v81->_hasDrumDRC = 1;
      unsignedIntValue57 = [v79 unsignedIntValue];
    }

    else
    {
      unsignedIntValue57 = 0;
      v81->_hasDrumDRC = 0;
    }

    v81->_drumDRC = unsignedIntValue57;
    if (v80)
    {
      v81->_hasRoutedDRCGain = 1;
      unsignedIntValue58 = [v80 unsignedIntValue];
    }

    else
    {
      unsignedIntValue58 = 0;
      v81->_hasRoutedDRCGain = 0;
    }

    v81->_routedDRCGain = unsignedIntValue58;
  }

  v146 = v81;

  return v146;
}

+ (id)protoFields
{
  v73[68] = *MEMORY[0x1E69E9840];
  v72 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"controllerVersion" number:1 type:4 subMessageClass:0];
  v73[0] = v72;
  v71 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"refMicdBA" number:2 type:4 subMessageClass:0];
  v73[1] = v71;
  v70 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"refMicdBC" number:3 type:4 subMessageClass:0];
  v73[2] = v70;
  v69 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"drumdBA" number:4 type:4 subMessageClass:0];
  v73[3] = v69;
  v68 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"drumdBK" number:5 type:4 subMessageClass:0];
  v73[4] = v68;
  v67 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"drumdBAPredicted" number:6 type:4 subMessageClass:0];
  v73[5] = v67;
  v66 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"downlinkdBA" number:7 type:4 subMessageClass:0];
  v73[6] = v66;
  v65 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"currentVolumePrct" number:8 type:4 subMessageClass:0];
  v73[7] = v65;
  v64 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"lastUserVolChangeType" number:9 type:4 subMessageClass:0];
  v73[8] = v64;
  v63 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"headphoneMode" number:10 type:4 subMessageClass:0];
  v73[9] = v63;
  v62 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"streamType" number:11 type:4 subMessageClass:0];
  v73[10] = v62;
  v61 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"windSpeechAggressorFlag" number:12 type:4 subMessageClass:0];
  v73[11] = v61;
  v60 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"volumeChangeFlag" number:13 type:4 subMessageClass:0];
  v73[12] = v60;
  v59 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"speechPresenceProbability" number:14 type:4 subMessageClass:0];
  v73[13] = v59;
  v58 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"personalizationParamSnr" number:15 type:2 subMessageClass:0];
  v73[14] = v58;
  v57 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"personalizationParamMistakes" number:16 type:2 subMessageClass:0];
  v73[15] = v57;
  v56 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"lastEMediadBA" number:17 type:4 subMessageClass:0];
  v73[16] = v56;
  v55 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"lastVolMediaPrct" number:18 type:4 subMessageClass:0];
  v73[17] = v55;
  v54 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"lastETelephonydBA" number:19 type:4 subMessageClass:0];
  v73[18] = v54;
  v53 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"lastVolTelephonyPrct" number:20 type:4 subMessageClass:0];
  v73[19] = v53;
  v52 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"lastESiridBA" number:21 type:4 subMessageClass:0];
  v73[20] = v52;
  v51 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"lastVolSiriPrct" number:22 type:4 subMessageClass:0];
  v73[21] = v51;
  v50 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"smoothEae" number:23 type:4 subMessageClass:0];
  v73[22] = v50;
  v49 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"desiredDeltaE" number:24 type:2 subMessageClass:0];
  v73[23] = v49;
  v48 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"predVolMediaPrct" number:25 type:2 subMessageClass:0];
  v73[24] = v48;
  v47 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"predVolTelephonyPrct" number:26 type:2 subMessageClass:0];
  v73[25] = v47;
  v46 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"predVolSiriPrct" number:27 type:2 subMessageClass:0];
  v73[26] = v46;
  v45 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"onStartPredictionFlag" number:28 type:4 subMessageClass:0];
  v73[27] = v45;
  v44 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"guardrailsAvoidFlag" number:29 type:4 subMessageClass:0];
  v73[28] = v44;
  v43 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"minMaxCutFlag" number:30 type:4 subMessageClass:0];
  v73[29] = v43;
  v42 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"manualVolumeChangeFlag" number:31 type:4 subMessageClass:0];
  v73[30] = v42;
  v41 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bigWindowSize" number:32 type:4 subMessageClass:0];
  v73[31] = v41;
  v40 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"smallWindowSize" number:33 type:4 subMessageClass:0];
  v73[32] = v40;
  v39 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"activeAppName" number:34 type:13 subMessageClass:0];
  v73[33] = v39;
  v38 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"activeAirpodsSerialNumber" number:35 type:13 subMessageClass:0];
  v73[34] = v38;
  v37 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"anchorVol" number:36 type:4 subMessageClass:0];
  v73[35] = v37;
  v36 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"anchorEnv" number:37 type:4 subMessageClass:0];
  v73[36] = v36;
  v35 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"personalizationCoeff" number:38 type:4 subMessageClass:0];
  v73[37] = v35;
  v34 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"unsignedPredVolMediaPrct" number:39 type:4 subMessageClass:0];
  v73[38] = v34;
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"unsignedPredVolTelephonyPrct" number:40 type:4 subMessageClass:0];
  v73[39] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"unsignedPredVolSiriPrct" number:41 type:4 subMessageClass:0];
  v73[40] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"singleBudFlag" number:42 type:4 subMessageClass:0];
  v73[41] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cdEngagementFlag" number:43 type:4 subMessageClass:0];
  v73[42] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"activeStreamFlag" number:44 type:4 subMessageClass:0];
  v73[43] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"pvFeatureEnableFlag" number:45 type:4 subMessageClass:0];
  v73[44] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"envSpectralData32B" number:46 type:4 subMessageClass:0];
  v73[45] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"windStrength" number:47 type:4 subMessageClass:0];
  v73[46] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"windProb" number:48 type:4 subMessageClass:0];
  v73[47] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mediaType" number:49 type:4 subMessageClass:0];
  v73[48] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceActivity" number:50 type:4 subMessageClass:0];
  v73[49] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"budActivity" number:51 type:4 subMessageClass:0];
  v73[50] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"location" number:52 type:4 subMessageClass:0];
  v73[51] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"locationType" number:53 type:4 subMessageClass:0];
  v73[52] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"focusMode" number:54 type:4 subMessageClass:0];
  v73[53] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"streamingAppBundleId" number:55 type:4 subMessageClass:0];
  v73[54] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"noiseType4B" number:56 type:4 subMessageClass:0];
  v73[55] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"instdBA" number:57 type:4 subMessageClass:0];
  v73[56] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"instdBC" number:58 type:4 subMessageClass:0];
  v73[57] = v15;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nonCAListeningMode" number:59 type:4 subMessageClass:0];
  v73[58] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fit" number:60 type:4 subMessageClass:0];
  v73[59] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fixedAutoAncGain" number:61 type:4 subMessageClass:0];
  v73[60] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"adjustedAutoAncGain" number:62 type:4 subMessageClass:0];
  v73[61] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timestamp" number:63 type:4 subMessageClass:0];
  v73[62] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"DRCenablementBit" number:64 type:4 subMessageClass:0];
  v73[63] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"DRCwindFlag" number:65 type:4 subMessageClass:0];
  v73[64] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"DRCappSelfVoiceFlag" number:66 type:4 subMessageClass:0];
  v73[65] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"drumDRC" number:67 type:4 subMessageClass:0];
  v73[66] = v10;
  v11 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"routedDRCGain" number:68 type:4 subMessageClass:0];
  v73[67] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:68];

  v12 = *MEMORY[0x1E69E9840];

  return v14;
}

id __33__BMDeviceAdaptiveVolume_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _noiseType_4BJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __33__BMDeviceAdaptiveVolume_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _noiseType4BJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __33__BMDeviceAdaptiveVolume_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _envSpectralData_32BJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __33__BMDeviceAdaptiveVolume_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _envSpectralData32BJSONArray];
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

    v8 = [[BMDeviceAdaptiveVolume alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[21] = 0;
    }
  }

  return v4;
}

- (uint64_t)initWithControllerVersion:(void *)version refMicdBA:refMicdBC:drumdBA:drumdBK:drumdBAPredicted:downlinkdBA:currentVolumePrct:lastUserVolChangeType:headphoneMode:streamType:windSpeechAggressorFlag:volumeChangeFlag:speechPresenceProbability:personalizationParamSnr:personalizationParamMistakes:lastEMediadBA:lastVolMediaPrct:lastETelephonydBA:lastVolTelephonyPrct:lastESiridBA:lastVolSiriPrct:smoothEae:desiredDeltaE:predVolMediaPrct:predVolTelephonyPrct:predVolSiriPrct:onStartPredictionFlag:guardrailsAvoidFlag:minMaxCutFlag:manualVolumeChangeFlag:bigWindowSize:smallWindowSize:activeAppName:activeAirpodsSerialNumber:anchorVol:anchorEnv:personalizationCoeff:unsignedPredVolMediaPrct:unsignedPredVolTelephonyPrct:unsignedPredVolSiriPrct:singleBudFlag:cdEngagementFlag:activeStreamFlag:pvFeatureEnableFlag:envSpectralData_32B:wind_strength:wind_prob:mediaType:sourceActivity:budActivity:location:locationType:focusMode:streamingAppBundleId:noiseType_4B:instdBA:instdBC:nonCAListeningMode:fit:fixedAutoAncGain:adjustedAutoAncGain:timestamp:DRCenablementBit:DRCwindFlag:DRCappSelfVoiceFlag:drumDRC:routedDRCGain:
{

  return [version initWithControllerVersion:? refMicdBA:? refMicdBC:? drumdBA:? drumdBK:? drumdBAPredicted:? downlinkdBA:? currentVolumePrct:? lastUserVolChangeType:? headphoneMode:? streamType:? windSpeechAggressorFlag:? volumeChangeFlag:? speechPresenceProbability:? personalizationParamSnr:? personalizationParamMistakes:? lastEMediadBA:? lastVolMediaPrct:? lastETelephonydBA:? lastVolTelephonyPrct:? lastESiridBA:? lastVolSiriPrct:? smoothEae:? desiredDeltaE:? predVolMediaPrct:? predVolTelephonyPrct:? predVolSiriPrct:? onStartPredictionFlag:? guardrailsAvoidFlag:? minMaxCutFlag:? manualVolumeChangeFlag:? bigWindowSize:? smallWindowSize:? activeAppName:? activeAirpodsSerialNumber:? anchorVol:? anchorEnv:? personalizationCoeff:? unsignedPredVolMediaPrct:? unsignedPredVolTelephonyPrct:? unsignedPredVolSiriPrct:? singleBudFlag:? cdEngagementFlag:? activeStreamFlag:? pvFeatureEnableFlag:? envSpectralData32B:? windStrength:? windProb:? mediaType:? sourceActivity:? budActivity:? location:? locationType:? focusMode:? streamingAppBundleId:? noiseType4B:? instdBA:? instdBC:? nonCAListeningMode:? fit:? fixedAutoAncGain:? adjustedAutoAncGain:? timestamp:? DRCenablementBit:? DRCwindFlag:? DRCappSelfVoiceFlag:? drumDRC:? routedDRCGain:?];
}

- (BMDeviceAdaptiveVolume)initWithControllerVersion:(id)version refMicdBA:(id)a refMicdBC:(id)c drumdBA:(id)bA drumdBK:(id)k drumdBAPredicted:(id)predicted downlinkdBA:(id)downlinkdBA currentVolumePrct:(id)self0 lastUserVolChangeType:(id)self1 headphoneMode:(id)self2 streamType:(id)self3 windSpeechAggressorFlag:(id)self4 volumeChangeFlag:(id)self5 speechPresenceProbability:(id)self6 personalizationParamSnr:(id)self7 personalizationParamMistakes:(id)self8 lastEMediadBA:(id)self9 lastVolMediaPrct:(id)mediaPrct lastETelephonydBA:(id)telephonydBA lastVolTelephonyPrct:(id)telephonyPrct lastESiridBA:(id)siridBA lastVolSiriPrct:(id)siriPrct smoothEae:(id)eae desiredDeltaE:(id)e predVolMediaPrct:(id)volMediaPrct predVolTelephonyPrct:(id)volTelephonyPrct predVolSiriPrct:(id)volSiriPrct onStartPredictionFlag:(id)version0 guardrailsAvoidFlag:(id)version1 minMaxCutFlag:(id)version2 manualVolumeChangeFlag:(id)version3 bigWindowSize:(id)version4 smallWindowSize:(id)version5 activeAppName:(id)version6 activeAirpodsSerialNumber:(id)version7
{
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  return [BMDeviceAdaptiveVolume initWithControllerVersion:"initWithControllerVersion:refMicdBA:refMicdBC:drumdBA:drumdBK:drumdBAPredicted:downlinkdBA:currentVolumePrct:lastUserVolChangeType:headphoneMode:streamType:windSpeechAggressorFlag:volumeChangeFlag:speechPresenceProbability:personalizationParamSnr:personalizationParamMistakes:lastEMediadBA:lastVolMediaPrct:lastETelephonydBA:lastVolTelephonyPrct:lastESiridBA:lastVolSiriPrct:smoothEae:desiredDeltaE:predVolMediaPrct:predVolTelephonyPrct:predVolSiriPrct:onStartPredictionFlag:guardrailsAvoidFlag:minMaxCutFlag:manualVolumeChangeFlag:bigWindowSize:smallWindowSize:activeAppName:activeAirpodsSerialNumber:anchorVol:anchorEnv:personalizationCoeff:unsignedPredVolMediaPrct:unsignedPredVolTelephonyPrct:unsignedPredVolSiriPrct:singleBudFlag:cdEngagementFlag:activeStreamFlag:pvFeatureEnableFlag:envSpectralData_32B:wind_strength:wind_prob:mediaType:sourceActivity:budActivity:location:locationType:focusMode:streamingAppBundleId:noiseType_4B:instdBA:instdBC:nonCAListeningMode:fit:fixedAutoAncGain:adjustedAutoAncGain:timestamp:DRCenablementBit:DRCwindFlag:DRCappSelfVoiceFlag:" refMicdBA:version refMicdBC:a drumdBA:c drumdBK:bA drumdBAPredicted:k downlinkdBA:predicted currentVolumePrct:downlinkdBA lastUserVolChangeType:prct headphoneMode:type streamType:mode windSpeechAggressorFlag:streamType volumeChangeFlag:flag speechPresenceProbability:changeFlag personalizationParamSnr:probability personalizationParamMistakes:snr lastEMediadBA:mistakes lastVolMediaPrct:mediadBA lastETelephonydBA:mediaPrct lastVolTelephonyPrct:telephonydBA lastESiridBA:telephonyPrct lastVolSiriPrct:siridBA smoothEae:siriPrct desiredDeltaE:eae predVolMediaPrct:e predVolTelephonyPrct:volMediaPrct predVolSiriPrct:volTelephonyPrct onStartPredictionFlag:volSiriPrct guardrailsAvoidFlag:predictionFlag minMaxCutFlag:avoidFlag manualVolumeChangeFlag:cutFlag bigWindowSize:volumeChangeFlag smallWindowSize:size activeAppName:windowSize activeAirpodsSerialNumber:name anchorVol:number anchorEnv:0 personalizationCoeff:0 unsignedPredVolMediaPrct:0 unsignedPredVolTelephonyPrct:0 unsignedPredVolSiriPrct:0 singleBudFlag:0 cdEngagementFlag:0 activeStreamFlag:0 pvFeatureEnableFlag:0 envSpectralData_32B:0 wind_strength:MEMORY[0x1E695E0F0] wind_prob:0 mediaType:0 sourceActivity:0 budActivity:0 location:0 locationType:0 focusMode:0 streamingAppBundleId:0 noiseType_4B:0 instdBA:MEMORY[0x1E695E0F0] instdBC:0 nonCAListeningMode:0 fit:0 fixedAutoAncGain:0 adjustedAutoAncGain:0 timestamp:? DRCenablementBit:? DRCwindFlag:? DRCappSelfVoiceFlag:?];
}

@end