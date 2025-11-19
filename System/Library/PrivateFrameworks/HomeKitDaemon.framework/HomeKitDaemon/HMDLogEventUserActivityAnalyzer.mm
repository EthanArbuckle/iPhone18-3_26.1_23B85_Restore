@interface HMDLogEventUserActivityAnalyzer
+ (id)logCategory;
+ (id)managedEventCounterRequestGroups;
- (HMDLogEventUserActivityAnalyzer)initWithEventCountersManager:(id)a3 flagsManager:(id)a4 dateProvider:(id)a5;
- (void)_handleAccessoryPairingLogEvent:(id)a3;
- (void)_handleActionSetRunLogEvent:(id)a3;
- (void)_handleAddActionSetLogEvent:(id)a3;
- (void)_handleAddTriggerLogEvent:(id)a3;
- (void)_handleCameraClipRequestLogEvent:(id)a3;
- (void)_handleCameraStreamLogEvent:(id)a3;
- (void)_handleReadWriteLogEvent:(id)a3;
- (void)coalesceLogEvent:(id)a3 fromSourceEvent:(id)a4;
- (void)contributeLogEvent:(id)a3 toCoreAnalyticsEvent:(id)a4;
- (void)contributeLogEvent:(id)a3 toSerializedMetric:(id)a4;
- (void)deserializeLogEvent:(id)a3 fromSerializedMetric:(id)a4;
- (void)finishCoalescingLogEvent:(id)a3;
- (void)markActiveForEventName:(id)a3 logEvent:(id)a4;
- (void)observeEvent:(id)a3;
- (void)populateAggregationAnalysisLogEvent:(id)a3 forDate:(id)a4;
- (void)populateLogEvent:(id)a3 forHomeWithUUID:(id)a4 associatedToDate:(id)a5;
- (void)resetAggregationAnalysisContext;
- (void)updateLinkTypeActivityCountsForReadWriteLogEvent:(id)a3;
@end

@implementation HMDLogEventUserActivityAnalyzer

- (void)finishCoalescingLogEvent:(id)a3
{
  v6 = a3;
  v3 = [v6 activeDaysBitField];
  [v6 setActiveDay:v3.i8[0] & 1];
  if (v3)
  {
    v4 = log2((*&v3 & -*&v3));
  }

  else
  {
    v4 = -1;
  }

  [v6 setCountOfDaysSinceLastActive:v4];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  [v6 setActiveDaysPerMonthCount:v5.u32[0]];
}

- (void)coalesceLogEvent:(id)a3 fromSourceEvent:(id)a4
{
  v5 = a4;
  v7 = a3;
  [v7 setNumReadSiri:{objc_msgSend(v7, "numReadSiri") + objc_msgSend(v5, "numReadSiri")}];
  [v7 setNumWriteSiri:{objc_msgSend(v7, "numWriteSiri") + objc_msgSend(v5, "numWriteSiri")}];
  [v7 setNumReadFirstPartyApp:{objc_msgSend(v7, "numReadFirstPartyApp") + objc_msgSend(v5, "numReadFirstPartyApp")}];
  [v7 setNumWriteFirstPartyApp:{objc_msgSend(v7, "numWriteFirstPartyApp") + objc_msgSend(v5, "numWriteFirstPartyApp")}];
  [v7 setNumReadThirdPartyApp:{objc_msgSend(v7, "numReadThirdPartyApp") + objc_msgSend(v5, "numReadThirdPartyApp")}];
  [v7 setNumWriteThirdPartyApp:{objc_msgSend(v7, "numWriteThirdPartyApp") + objc_msgSend(v5, "numWriteThirdPartyApp")}];
  [v7 setNumAccessoriesAdded:{objc_msgSend(v7, "numAccessoriesAdded") + objc_msgSend(v5, "numAccessoriesAdded")}];
  [v7 setNumScenesAdded:{objc_msgSend(v7, "numScenesAdded") + objc_msgSend(v5, "numScenesAdded")}];
  [v7 setNumTriggersAdded:{objc_msgSend(v7, "numTriggersAdded") + objc_msgSend(v5, "numTriggersAdded")}];
  [v7 setNumShortcutsAdded:{objc_msgSend(v7, "numShortcutsAdded") + objc_msgSend(v5, "numShortcutsAdded")}];
  [v7 setNumScenesUserRun:{objc_msgSend(v7, "numScenesUserRun") + objc_msgSend(v5, "numScenesUserRun")}];
  [v7 setNumShortcutsRun:{objc_msgSend(v7, "numShortcutsRun") + objc_msgSend(v5, "numShortcutsRun")}];
  [v7 setNumTriggersFired:{objc_msgSend(v7, "numTriggersFired") + objc_msgSend(v5, "numTriggersFired")}];
  [v7 setCameraStreamStartSuccessCount:{objc_msgSend(v7, "cameraStreamStartSuccessCount") + objc_msgSend(v5, "cameraStreamStartSuccessCount")}];
  [v7 setCameraStreamStartFailureCount:{objc_msgSend(v7, "cameraStreamStartFailureCount") + objc_msgSend(v5, "cameraStreamStartFailureCount")}];
  [v7 setFetchCameraClipVideoSegmentAssetCount:{objc_msgSend(v7, "fetchCameraClipVideoSegmentAssetCount") + objc_msgSend(v5, "fetchCameraClipVideoSegmentAssetCount")}];
  v6 = [v5 activeDaysBitField];

  [v7 setActiveDaysBitField:{objc_msgSend(v7, "activeDaysBitField") | v6}];
}

- (void)contributeLogEvent:(id)a3 toCoreAnalyticsEvent:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[HMDLogEventHistograms lowVolumeHistogram];
  v8 = [v7 intervalIndexForValue:{objc_msgSend(v6, "numReadSiri")}];
  [v5 setObject:v8 forKeyedSubscript:@"siriReadCount"];

  v9 = +[HMDLogEventHistograms lowVolumeHistogram];
  v10 = [v9 intervalIndexForValue:{objc_msgSend(v6, "numWriteSiri")}];
  [v5 setObject:v10 forKeyedSubscript:@"siriWriteCount"];

  v11 = +[HMDLogEventHistograms highVolumeHistogram];
  v12 = [v11 intervalIndexForValue:{objc_msgSend(v6, "numReadFirstPartyApp")}];
  [v5 setObject:v12 forKeyedSubscript:@"firstPartyReadCount"];

  v13 = +[HMDLogEventHistograms highVolumeHistogram];
  v14 = [v13 intervalIndexForValue:{objc_msgSend(v6, "numWriteFirstPartyApp")}];
  [v5 setObject:v14 forKeyedSubscript:@"firstPartyWriteCount"];

  v15 = +[HMDLogEventHistograms highVolumeHistogram];
  v16 = [v15 intervalIndexForValue:{objc_msgSend(v6, "numReadThirdPartyApp")}];
  [v5 setObject:v16 forKeyedSubscript:@"thirdPartyReadCount"];

  v17 = +[HMDLogEventHistograms highVolumeHistogram];
  v18 = [v17 intervalIndexForValue:{objc_msgSend(v6, "numWriteThirdPartyApp")}];
  [v5 setObject:v18 forKeyedSubscript:@"thirdPartyWriteCount"];

  v19 = +[HMDLogEventHistograms lowVolumeHistogram];
  v20 = [v19 intervalIndexForValue:{objc_msgSend(v6, "numAccessoriesAdded")}];
  [v5 setObject:v20 forKeyedSubscript:@"accessoriesAddedCount"];

  v21 = +[HMDLogEventHistograms lowVolumeHistogram];
  v22 = [v21 intervalIndexForValue:{objc_msgSend(v6, "numScenesAdded")}];
  [v5 setObject:v22 forKeyedSubscript:@"scenesAddedCount"];

  v23 = +[HMDLogEventHistograms lowVolumeHistogram];
  v24 = [v23 intervalIndexForValue:{objc_msgSend(v6, "numTriggersAdded")}];
  [v5 setObject:v24 forKeyedSubscript:@"triggersAddedCount"];

  v25 = +[HMDLogEventHistograms lowVolumeHistogram];
  v26 = [v25 intervalIndexForValue:{objc_msgSend(v6, "numShortcutsAdded")}];
  [v5 setObject:v26 forKeyedSubscript:@"shortcutsAddedCount"];

  v27 = +[HMDLogEventHistograms lowVolumeHistogram];
  v28 = [v27 intervalIndexForValue:{objc_msgSend(v6, "numScenesUserRun")}];
  [v5 setObject:v28 forKeyedSubscript:@"scenesRunCount"];

  v29 = +[HMDLogEventHistograms lowVolumeHistogram];
  v30 = [v29 intervalIndexForValue:{objc_msgSend(v6, "numTriggersFired")}];
  [v5 setObject:v30 forKeyedSubscript:@"triggersRunCount"];

  v31 = +[HMDLogEventHistograms lowVolumeHistogram];
  v32 = [v31 intervalIndexForValue:{objc_msgSend(v6, "numShortcutsRun")}];
  [v5 setObject:v32 forKeyedSubscript:@"shortcutsRunCount"];

  v33 = +[HMDLogEventHistograms lowVolumeHistogram];
  v34 = [v33 intervalIndexForValue:{objc_msgSend(v6, "cameraStreamStartSuccessCount")}];
  [v5 setObject:v34 forKeyedSubscript:@"cameraStreamStartSuccessCount"];

  v35 = +[HMDLogEventHistograms lowVolumeHistogram];
  v36 = [v35 intervalIndexForValue:{objc_msgSend(v6, "cameraStreamStartFailureCount")}];
  [v5 setObject:v36 forKeyedSubscript:@"cameraStreamStartFailureCount"];

  v37 = +[HMDLogEventHistograms lowVolumeHistogram];
  v38 = [v37 intervalIndexForValue:{objc_msgSend(v6, "fetchCameraClipVideoSegmentAssetCount")}];
  [v5 setObject:v38 forKeyedSubscript:@"fetchVideoSegmentsAssetCount"];

  v39 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "isActiveDay")}];
  [v5 setObject:v39 forKeyedSubscript:@"activeDay"];

  v40 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "countOfDaysSinceLastActive")}];
  [v5 setObject:v40 forKeyedSubscript:@"daysSinceLastActiveCount"];

  v41 = MEMORY[0x277CCABB0];
  v42 = [v6 activeDaysPerMonthCount];

  v43 = [v41 numberWithInteger:v42];
  [v5 setObject:v43 forKeyedSubscript:@"activeDaysPerMonthCount"];
}

- (void)deserializeLogEvent:(id)a3 fromSerializedMetric:(id)a4
{
  v6 = a4;
  v75 = a3;
  v7 = [v6 objectForKeyedSubscript:@"siriReadCount"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v9 unsignedIntegerValue];
  [v75 setNumReadSiri:v10];
  v11 = [v6 objectForKeyedSubscript:@"siriWriteCount"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = [v13 unsignedIntegerValue];
  [v75 setNumWriteSiri:v14];
  v15 = [v6 objectForKeyedSubscript:@"firstPartyReadCount"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  v18 = [v17 unsignedIntegerValue];
  [v75 setNumReadFirstPartyApp:v18];
  v19 = [v6 objectForKeyedSubscript:@"firstPartyWriteCount"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  v22 = [v21 unsignedIntegerValue];
  [v75 setNumWriteFirstPartyApp:v22];
  v23 = [v6 objectForKeyedSubscript:@"thirdPartyReadCount"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  v26 = [v25 unsignedIntegerValue];
  [v75 setNumReadThirdPartyApp:v26];
  v27 = [v6 objectForKeyedSubscript:@"thirdPartyWriteCount"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;

  v30 = [v29 unsignedIntegerValue];
  [v75 setNumWriteThirdPartyApp:v30];
  v31 = [v6 objectForKeyedSubscript:@"accessoriesAddedCount"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  v33 = v32;

  v34 = [v33 unsignedIntegerValue];
  [v75 setNumAccessoriesAdded:v34];
  v35 = [v6 objectForKeyedSubscript:@"scenesAddedCount"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  v37 = v36;

  v38 = [v37 unsignedIntegerValue];
  [v75 setNumScenesAdded:v38];
  v39 = [v6 objectForKeyedSubscript:@"triggersAddedCount"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v40 = v39;
  }

  else
  {
    v40 = 0;
  }

  v41 = v40;

  v42 = [v41 unsignedIntegerValue];
  [v75 setNumTriggersAdded:v42];
  v43 = [v6 objectForKeyedSubscript:@"shortcutsAddedCount"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v44 = v43;
  }

  else
  {
    v44 = 0;
  }

  v45 = v44;

  v46 = [v45 unsignedIntegerValue];
  [v75 setNumShortcutsAdded:v46];
  v47 = [v6 objectForKeyedSubscript:@"scenesRunCount"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v48 = v47;
  }

  else
  {
    v48 = 0;
  }

  v49 = v48;

  v50 = [v49 unsignedIntegerValue];
  [v75 setNumScenesUserRun:v50];
  v51 = [v6 objectForKeyedSubscript:@"shortcutsRunCount"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v52 = v51;
  }

  else
  {
    v52 = 0;
  }

  v53 = v52;

  v54 = [v53 unsignedIntegerValue];
  [v75 setNumShortcutsRun:v54];
  v55 = [v6 objectForKeyedSubscript:@"triggersRunCount"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v56 = v55;
  }

  else
  {
    v56 = 0;
  }

  v57 = v56;

  v58 = [v57 unsignedIntegerValue];
  [v75 setNumTriggersFired:v58];
  v59 = [v6 objectForKeyedSubscript:@"cameraStreamStartSuccessCount"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v60 = v59;
  }

  else
  {
    v60 = 0;
  }

  v61 = v60;

  v62 = [v61 unsignedIntegerValue];
  [v75 setCameraStreamStartSuccessCount:v62];
  v63 = [v6 objectForKeyedSubscript:@"cameraStreamStartFailureCount"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v64 = v63;
  }

  else
  {
    v64 = 0;
  }

  v65 = v64;

  v66 = [v65 unsignedIntegerValue];
  [v75 setCameraStreamStartFailureCount:v66];
  v67 = [v6 objectForKeyedSubscript:@"fetchVideoSegmentsAssetCount"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v68 = v67;
  }

  else
  {
    v68 = 0;
  }

  v69 = v68;

  v70 = [v69 unsignedIntegerValue];
  [v75 setFetchCameraClipVideoSegmentAssetCount:v70];
  v71 = [v6 objectForKeyedSubscript:@"activeDay"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v72 = v71;
  }

  else
  {
    v72 = 0;
  }

  v73 = v72;

  v74 = [v73 unsignedLongLongValue];
  [v75 setActiveDaysBitField:v74];
  [(HMDLogEventUserActivityAnalyzer *)self finishCoalescingLogEvent:v75];
}

- (void)contributeLogEvent:(id)a3 toSerializedMetric:(id)a4
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 numberWithUnsignedInteger:{objc_msgSend(v7, "numReadSiri")}];
  [v6 setObject:v8 forKeyedSubscript:@"siriReadCount"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "numWriteSiri")}];
  [v6 setObject:v9 forKeyedSubscript:@"siriWriteCount"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "numReadFirstPartyApp")}];
  [v6 setObject:v10 forKeyedSubscript:@"firstPartyReadCount"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "numWriteFirstPartyApp")}];
  [v6 setObject:v11 forKeyedSubscript:@"firstPartyWriteCount"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "numReadThirdPartyApp")}];
  [v6 setObject:v12 forKeyedSubscript:@"thirdPartyReadCount"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "numWriteThirdPartyApp")}];
  [v6 setObject:v13 forKeyedSubscript:@"thirdPartyWriteCount"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "numAccessoriesAdded")}];
  [v6 setObject:v14 forKeyedSubscript:@"accessoriesAddedCount"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "numScenesAdded")}];
  [v6 setObject:v15 forKeyedSubscript:@"scenesAddedCount"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "numTriggersAdded")}];
  [v6 setObject:v16 forKeyedSubscript:@"triggersAddedCount"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "numShortcutsAdded")}];
  [v6 setObject:v17 forKeyedSubscript:@"shortcutsAddedCount"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "numScenesUserRun")}];
  [v6 setObject:v18 forKeyedSubscript:@"scenesRunCount"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "numShortcutsRun")}];
  [v6 setObject:v19 forKeyedSubscript:@"shortcutsRunCount"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "numTriggersFired")}];
  [v6 setObject:v20 forKeyedSubscript:@"triggersRunCount"];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "cameraStreamStartSuccessCount")}];
  [v6 setObject:v21 forKeyedSubscript:@"cameraStreamStartSuccessCount"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "cameraStreamStartFailureCount")}];
  [v6 setObject:v22 forKeyedSubscript:@"cameraStreamStartFailureCount"];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "fetchCameraClipVideoSegmentAssetCount")}];
  [v6 setObject:v23 forKeyedSubscript:@"fetchVideoSegmentsAssetCount"];

  v24 = MEMORY[0x277CCABB0];
  v25 = [v7 activeDaysBitField];

  v26 = [v24 numberWithUnsignedLongLong:v25];
  [v6 setObject:v26 forKeyedSubscript:@"activeDay"];
}

- (void)populateLogEvent:(id)a3 forHomeWithUUID:(id)a4 associatedToDate:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v14 = [(HMDHouseholdActivityLogEventContributor *)self householdGroupForHomeWithUUID:v9 associatedWithDate:v8];
  [v10 setNumReadSiri:{objc_msgSend(v14, "fetchEventCounterForEventName:", @"HMDLogEventUserActivityAnalyzerSiriReadEventCounter"}];
  [v10 setNumWriteSiri:{objc_msgSend(v14, "fetchEventCounterForEventName:", @"HMDLogEventUserActivityAnalyzerSiriWriteEventCounter"}];
  [v10 setNumReadFirstPartyApp:{objc_msgSend(v14, "fetchEventCounterForEventName:", @"HMDLogEventUserActivityAnalyzerFirstPartyReadEventCounter"}];
  [v10 setNumWriteFirstPartyApp:{objc_msgSend(v14, "fetchEventCounterForEventName:", @"HMDLogEventUserActivityAnalyzerFirstPartyWriteEventCounter"}];
  [v10 setNumReadThirdPartyApp:{objc_msgSend(v14, "fetchEventCounterForEventName:", @"HMDLogEventUserActivityAnalyzerThirdPartyReadEventCounter"}];
  [v10 setNumWriteThirdPartyApp:{objc_msgSend(v14, "fetchEventCounterForEventName:", @"HMDLogEventUserActivityAnalyzerThirdPartyWriteEventCounter"}];
  [v10 setNumAccessoriesAdded:{objc_msgSend(v14, "fetchEventCounterForEventName:", @"HMDLogEventUserActivityAnalyzerAddAccessoryEventCounter"}];
  [v10 setNumScenesAdded:{objc_msgSend(v14, "fetchEventCounterForEventName:", @"HMDLogEventUserActivityAnalyzerAddSceneEventCounter"}];
  [v10 setNumTriggersAdded:{objc_msgSend(v14, "fetchEventCounterForEventName:", @"HMDLogEventUserActivityAnalyzerAddTriggerEventCounter"}];
  [v10 setNumShortcutsAdded:{objc_msgSend(v14, "fetchEventCounterForEventName:", @"HMDLogEventUserActivityAnalyzerAddShortcutEventCounter"}];
  [v10 setNumScenesUserRun:{objc_msgSend(v14, "fetchEventCounterForEventName:", @"HMDLogEventUserActivityAnalyzerRunSceneEventCounter"}];
  [v10 setNumShortcutsRun:{objc_msgSend(v14, "fetchEventCounterForEventName:", @"HMDLogEventUserActivityAnalyzerRunShortcutEventCounter"}];
  [v10 setNumTriggersFired:{objc_msgSend(v14, "fetchEventCounterForEventName:", @"HMDLogEventUserActivityAnalyzerTriggerFiredEventCounter"}];
  [v10 setCameraStreamStartSuccessCount:{objc_msgSend(v14, "fetchEventCounterForEventName:", @"HMDLogEventUserActivityAnalyzerCameraStreamStartSuccessEventCounter"}];
  [v10 setCameraStreamStartFailureCount:{objc_msgSend(v14, "fetchEventCounterForEventName:", @"HMDLogEventUserActivityAnalyzerCameraStreamStartFailureEventCounter"}];
  [v10 setFetchCameraClipVideoSegmentAssetCount:{objc_msgSend(v14, "fetchEventCounterForEventName:", @"HMDLogEventUserActivityAnalyzerFetchCameraClipVideoSegmentsAssetEventCounter"}];
  v11 = [(HMDLogEventUserActivityAnalyzer *)self flagsManager];
  v12 = [v11 flagForName:@"HMDLogEventUserActivityAnalyzerIsActiveFlag" homeUUID:v9 periodicity:1];

  v13 = [v12 bitsForDate:v8 bitCount:30 outValidBitCount:0];
  [v10 setActiveDaysBitField:v13];
  [(HMDLogEventUserActivityAnalyzer *)self finishCoalescingLogEvent:v10];
}

- (void)resetAggregationAnalysisContext
{
  v2 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [v2 resetEventCounters];
}

- (void)populateAggregationAnalysisLogEvent:(id)a3 forDate:(id)a4
{
  v44 = a3;
  v6 = a4;
  v7 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [v44 setNumReadSiri:{objc_msgSend(v7, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerSiriReadEventCounter", v6)}];

  v8 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [v44 setNumWriteSiri:{objc_msgSend(v8, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerSiriWriteEventCounter", v6)}];

  v9 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [v44 setNumReadFirstPartyApp:{objc_msgSend(v9, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerFirstPartyReadEventCounter", v6)}];

  v10 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [v44 setNumWriteFirstPartyApp:{objc_msgSend(v10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerFirstPartyWriteEventCounter", v6)}];

  v11 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [v44 setNumReadThirdPartyApp:{objc_msgSend(v11, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerThirdPartyReadEventCounter", v6)}];

  v12 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [v44 setNumWriteThirdPartyApp:{objc_msgSend(v12, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerThirdPartyWriteEventCounter", v6)}];

  v13 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [v44 setNumReadInternalRequested:{objc_msgSend(v13, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerInternalRequestedReadEventCounter", v6)}];

  v14 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [v44 setNumWriteInternalRequested:{objc_msgSend(v14, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerInternalRequestedWriteEventCounter", v6)}];

  v15 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [v44 setNumReadUnknownSource:{objc_msgSend(v15, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerUnknownSourceReadEventCounter", v6)}];

  v16 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [v44 setNumWriteUnknownSource:{objc_msgSend(v16, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerUnknownSourceWriteEventCounter", v6)}];

  v17 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [v44 setNumReadWriteSuccessIP:{objc_msgSend(v17, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerReadWriteIPSuccessEventCounter", v6)}];

  v18 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [v44 setNumReadWriteFailureIP:{objc_msgSend(v18, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerReadWriteIPFailureEventCounter", v6)}];

  if ([v44 numReadWriteSuccessIP] || objc_msgSend(v44, "numReadWriteFailureIP"))
  {
    v19 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
    v20 = [v19 fetchEventCounterForEventName:@"HMDLogEventUserActivityAnalyzerIPDurationAggregate" forDate:v6];

    [v44 setAverageLatencyIP:{v20 / (objc_msgSend(v44, "numReadWriteFailureIP") + objc_msgSend(v44, "numReadWriteSuccessIP"))}];
  }

  v21 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [v44 setNumReadWriteSuccessBT:{objc_msgSend(v21, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerReadWriteBTSuccessEventCounter", v6)}];

  v22 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [v44 setNumReadWriteFailureBT:{objc_msgSend(v22, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerReadWriteBTFailureEventCounter", v6)}];

  if ([v44 numReadWriteSuccessBT] || objc_msgSend(v44, "numReadWriteFailureBT"))
  {
    v23 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
    v24 = [v23 fetchEventCounterForEventName:@"HMDLogEventUserActivityAnalyzerBTDurationAggregate" forDate:v6];

    [v44 setAverageLatencyBT:{v24 / (objc_msgSend(v44, "numReadWriteFailureBT") + objc_msgSend(v44, "numReadWriteSuccessBT"))}];
  }

  v25 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [v44 setNumReadWriteSuccessIDS:{objc_msgSend(v25, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerReadWriteIDSSuccessEventCounter", v6)}];

  v26 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [v44 setNumReadWriteFailureIDS:{objc_msgSend(v26, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerReadWriteIDSFailureEventCounter", v6)}];

  if ([v44 numReadWriteSuccessIDS] || objc_msgSend(v44, "numReadWriteFailureIDS"))
  {
    v27 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
    v28 = [v27 fetchEventCounterForEventName:@"HMDLogEventUserActivityAnalyzerIDSDurationAggregate" forDate:v6];

    [v44 setAverageLatencyIDS:{v28 / (objc_msgSend(v44, "numReadWriteFailureIDS") + objc_msgSend(v44, "numReadWriteSuccessIDS"))}];
  }

  v29 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [v44 setNumAccessoriesAdded:{objc_msgSend(v29, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerAddAccessoryEventCounter", v6)}];

  v30 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [v44 setNumScenesAdded:{objc_msgSend(v30, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerAddSceneEventCounter", v6)}];

  v31 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [v44 setNumTriggersAdded:{objc_msgSend(v31, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerAddTriggerEventCounter", v6)}];

  v32 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [v44 setNumShortcutsAdded:{objc_msgSend(v32, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerAddShortcutEventCounter", v6)}];

  v33 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [v44 setNumScenesUserRun:{objc_msgSend(v33, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerRunSceneEventCounter", v6)}];

  v34 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [v44 setNumShortcutsRun:{objc_msgSend(v34, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerRunShortcutEventCounter", v6)}];

  v35 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [v44 setNumTriggersFired:{objc_msgSend(v35, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerTriggerFiredEventCounter", v6)}];

  v36 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [v44 setCameraStreamStartSuccessCount:{objc_msgSend(v36, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerCameraStreamStartSuccessEventCounter", v6)}];

  v37 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [v44 setCameraStreamStartFailureCount:{objc_msgSend(v37, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerCameraStreamStartFailureEventCounter", v6)}];

  v38 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [v44 setFetchCameraClipVideoSegmentAssetCount:{objc_msgSend(v38, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerFetchCameraClipVideoSegmentsAssetEventCounter", v6)}];

  v39 = [(HMDLogEventUserActivityAnalyzer *)self flagsManager];
  v40 = [v39 flagForName:@"HMDLogEventUserActivityAnalyzerIsActiveFlag" periodicity:1];

  v41 = [v40 bitsForDate:v6 bitCount:30 outValidBitCount:0];
  [v44 setActiveDay:v41.i8[0] & 1];
  if (v41)
  {
    v42 = log2((*&v41 & -*&v41));
  }

  else
  {
    v42 = -1;
  }

  [v44 setCountOfDaysSinceLastActive:v42];
  v43 = vcnt_s8(v41);
  v43.i16[0] = vaddlv_u8(v43);
  [v44 setActiveDaysPerMonthCount:v43.u32[0]];
}

- (void)markActiveForEventName:(id)a3 logEvent:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [v7 incrementEventCounterForEventName:v15];

  v8 = HMMSafeHomeUUIDFromLogEvent();
  if (v8)
  {
    v9 = [(HMDLogEventUserActivityAnalyzer *)self flagsManager];
    v10 = [v9 flagForName:@"HMDLogEventUserActivityAnalyzerIsActiveFlag" homeUUID:v8 periodicity:1];

    [v10 setCurrentBit];
  }

  v11 = [(HMDLogEventUserActivityAnalyzer *)self flagsManager];
  v12 = [v11 flagForName:@"HMDLogEventUserActivityAnalyzerIsActiveFlag" periodicity:1];

  [v12 setCurrentBit];
  v13 = [(HMDHouseholdActivityLogEventContributor *)self householdGroupForLogEvent:v6];
  v14 = v13;
  if (v13)
  {
    [v13 incrementEventCounterForEventName:v15];
  }
}

- (void)_handleCameraClipRequestLogEvent:(id)a3
{
  v6 = a3;
  v4 = [v6 requestName];
  v5 = [v4 isEqualToString:@"HMDCameraClipManagerRequestLogEventFetchVideoSegmentsAssetRequestName"];

  if (v5)
  {
    [(HMDLogEventUserActivityAnalyzer *)self markActiveForEventName:@"HMDLogEventUserActivityAnalyzerFetchCameraClipVideoSegmentsAssetEventCounter" logEvent:v6];
  }
}

- (void)_handleCameraStreamLogEvent:(id)a3
{
  v8 = a3;
  v4 = [v8 error];
  v5 = [v4 code];
  v6 = @"HMDLogEventUserActivityAnalyzerCameraStreamStartFailureEventCounter";
  if (!v5)
  {
    v6 = @"HMDLogEventUserActivityAnalyzerCameraStreamStartSuccessEventCounter";
  }

  v7 = v6;

  [(HMDLogEventUserActivityAnalyzer *)self markActiveForEventName:v7 logEvent:v8];
}

- (void)_handleActionSetRunLogEvent:(id)a3
{
  v8 = a3;
  v4 = [v8 actionSetType];
  v5 = [v4 isEqualToString:*MEMORY[0x277CCF190]];

  if (v5)
  {
    v6 = v8;
    v7 = @"HMDLogEventUserActivityAnalyzerRunShortcutEventCounter";
  }

  else if (-[HMDLogEventUserActivityAnalyzer _isUserSource:](self, "_isUserSource:", [v8 triggerSource]))
  {
    v6 = v8;
    v7 = @"HMDLogEventUserActivityAnalyzerRunSceneEventCounter";
  }

  else
  {
    if (!-[HMDLogEventUserActivityAnalyzer _isTriggerSource:](self, "_isTriggerSource:", [v8 triggerSource]))
    {
      goto LABEL_8;
    }

    v6 = v8;
    v7 = @"HMDLogEventUserActivityAnalyzerTriggerFiredEventCounter";
  }

  [(HMDLogEventUserActivityAnalyzer *)self markActiveForEventName:v7 logEvent:v6];
LABEL_8:
}

- (void)_handleAddTriggerLogEvent:(id)a3
{
  v4 = a3;
  [(HMDLogEventUserActivityAnalyzer *)self markActiveForEventName:@"HMDLogEventUserActivityAnalyzerAddSceneEventCounter" logEvent:v4];
  [(HMDLogEventUserActivityAnalyzer *)self markActiveForEventName:@"HMDLogEventUserActivityAnalyzerAddTriggerEventCounter" logEvent:v4];
}

- (void)_handleAddActionSetLogEvent:(id)a3
{
  v6 = a3;
  [(HMDLogEventUserActivityAnalyzer *)self markActiveForEventName:@"HMDLogEventUserActivityAnalyzerAddSceneEventCounter" logEvent:v6];
  v4 = [v6 actionSetType];
  v5 = [v4 isEqualToString:*MEMORY[0x277CCF190]];

  if (v5)
  {
    [(HMDLogEventUserActivityAnalyzer *)self markActiveForEventName:@"HMDLogEventUserActivityAnalyzerAddShortcutEventCounter" logEvent:v6];
  }
}

- (void)_handleAccessoryPairingLogEvent:(id)a3
{
  v6 = a3;
  if ([v6 isAddOperation])
  {
    v4 = [v6 error];
    v5 = [v4 code];

    if (!v5)
    {
      [(HMDLogEventUserActivityAnalyzer *)self markActiveForEventName:@"HMDLogEventUserActivityAnalyzerAddAccessoryEventCounter" logEvent:v6];
    }
  }
}

- (void)updateLinkTypeActivityCountsForReadWriteLogEvent:(id)a3
{
  v15 = a3;
  if ([v15 linkType] == 1 && objc_msgSend(v15, "isLocal"))
  {
    v4 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
    [v4 incrementEventCounterForEventName:@"HMDLogEventUserActivityAnalyzerIPDurationAggregate" withValue:{objc_msgSend(v15, "durationMilliseconds")}];

    v5 = [v15 error];
    v6 = [v5 code];

    v7 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
    if (v6)
    {
      v8 = @"HMDLogEventUserActivityAnalyzerReadWriteIPFailureEventCounter";
    }

    else
    {
      v8 = @"HMDLogEventUserActivityAnalyzerReadWriteIPSuccessEventCounter";
    }
  }

  else if ([v15 linkType] == 2 && objc_msgSend(v15, "isLocal"))
  {
    v9 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
    [v9 incrementEventCounterForEventName:@"HMDLogEventUserActivityAnalyzerBTDurationAggregate" withValue:{objc_msgSend(v15, "durationMilliseconds")}];

    v10 = [v15 error];
    v11 = [v10 code];

    v7 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
    if (v11)
    {
      v8 = @"HMDLogEventUserActivityAnalyzerReadWriteBTFailureEventCounter";
    }

    else
    {
      v8 = @"HMDLogEventUserActivityAnalyzerReadWriteBTSuccessEventCounter";
    }
  }

  else
  {
    if ([v15 isLocal])
    {
      goto LABEL_16;
    }

    v12 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
    [v12 incrementEventCounterForEventName:@"HMDLogEventUserActivityAnalyzerIDSDurationAggregate" withValue:{objc_msgSend(v15, "durationMilliseconds")}];

    v13 = [v15 error];
    v14 = [v13 code];

    v7 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
    if (v14)
    {
      v8 = @"HMDLogEventUserActivityAnalyzerReadWriteIDSFailureEventCounter";
    }

    else
    {
      v8 = @"HMDLogEventUserActivityAnalyzerReadWriteIDSSuccessEventCounter";
    }
  }

  [v7 incrementEventCounterForEventName:v8];

LABEL_16:
}

- (void)_handleReadWriteLogEvent:(id)a3
{
  v20 = a3;
  v4 = [v20 triggerSource];
  if (v4 <= 1139)
  {
    v5 = (v4 - 1000) > 0x3C || ((1 << (v4 + 24)) & 0x1004010040100401) == 0;
    if (v5 && ((v4 - 1070) > 0x3C || ((1 << (v4 - 46)) & 0x1004010040100401) == 0) && v4 != 7)
    {
      goto LABEL_26;
    }

LABEL_15:
    v7 = [v20 isWriteOperation];
    v8 = @"HMDLogEventUserActivityAnalyzerInternalRequestedReadEventCounter";
    v9 = @"HMDLogEventUserActivityAnalyzerInternalRequestedWriteEventCounter";
LABEL_16:
    if (v7)
    {
      v8 = v9;
    }

    v10 = v8;
    v11 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
    [v11 incrementEventCounterForEventName:v10];
    goto LABEL_19;
  }

  v6 = (v4 - 1140) > 0x3C || ((1 << (v4 - 116)) & 0x1004010040100401) == 0;
  if (!v6 || v4 == 1220 || v4 == 1210)
  {
    goto LABEL_15;
  }

LABEL_26:
  v13 = [v20 triggerSource];
  if (v13 <= 4)
  {
    if (v13)
    {
      v12 = v20;
      if (v13 == 1)
      {
        v14 = [v20 isWriteOperation];
        v15 = @"HMDLogEventUserActivityAnalyzerSiriReadEventCounter";
        v16 = @"HMDLogEventUserActivityAnalyzerSiriWriteEventCounter";
LABEL_33:
        if (v14)
        {
          v15 = v16;
        }

        v10 = v15;
        goto LABEL_36;
      }

      goto LABEL_21;
    }

    v7 = [v20 isWriteOperation];
    v8 = @"HMDLogEventUserActivityAnalyzerUnknownSourceReadEventCounter";
    v9 = @"HMDLogEventUserActivityAnalyzerUnknownSourceWriteEventCounter";
    goto LABEL_16;
  }

  if (v13 == 5)
  {
    if ([v20 isWriteOperation])
    {
      v10 = @"HMDLogEventUserActivityAnalyzerFirstPartyWriteEventCounter";
LABEL_36:
      v12 = v20;
LABEL_37:
      [(HMDLogEventUserActivityAnalyzer *)self markActiveForEventName:v10 logEvent:v12];
      goto LABEL_20;
    }

    v10 = [v20 bundleId];
    v11 = [(__CFString *)v10 lowercaseString];
    if (![v11 isEqualToString:@"com.apple.springboard"])
    {
      v17 = [v20 bundleId];
      v18 = [v17 lowercaseString];
      v19 = [v18 isEqualToString:@"com.apple.home.homewidget"];

      v12 = v20;
      if ((v19 & 1) == 0)
      {
        v10 = @"HMDLogEventUserActivityAnalyzerFirstPartyReadEventCounter";
        goto LABEL_37;
      }

      goto LABEL_21;
    }

LABEL_19:

LABEL_20:
    v12 = v20;
    goto LABEL_21;
  }

  v12 = v20;
  if (v13 == 6)
  {
    v14 = [v20 isWriteOperation];
    v15 = @"HMDLogEventUserActivityAnalyzerThirdPartyReadEventCounter";
    v16 = @"HMDLogEventUserActivityAnalyzerThirdPartyWriteEventCounter";
    goto LABEL_33;
  }

LABEL_21:
  [(HMDLogEventUserActivityAnalyzer *)self updateLinkTypeActivityCountsForReadWriteLogEvent:v12];
}

- (void)observeEvent:(id)a3
{
  v24 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v24;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v5)
  {
    [(HMDLogEventUserActivityAnalyzer *)self _handleReadWriteLogEvent:v5];
  }

  else
  {
    v6 = v24;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8)
    {
      [(HMDLogEventUserActivityAnalyzer *)self _handleAccessoryPairingLogEvent:v8];
    }

    else
    {
      v9 = v6;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;

      if (v11)
      {
        [(HMDLogEventUserActivityAnalyzer *)self _handleAddActionSetLogEvent:v11];
      }

      else
      {
        v12 = v9;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;

        if (v14)
        {
          [(HMDLogEventUserActivityAnalyzer *)self _handleAddTriggerLogEvent:v14];
        }

        else
        {
          v15 = v12;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v15;
          }

          else
          {
            v16 = 0;
          }

          v17 = v16;

          if (v17)
          {
            [(HMDLogEventUserActivityAnalyzer *)self _handleActionSetRunLogEvent:v17];
          }

          else
          {
            v18 = v15;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = v18;
            }

            else
            {
              v19 = 0;
            }

            v20 = v19;

            if (v20)
            {
              [(HMDLogEventUserActivityAnalyzer *)self _handleCameraStreamLogEvent:v20];
            }

            else
            {
              v21 = v18;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v22 = v21;
              }

              else
              {
                v22 = 0;
              }

              v23 = v22;

              if (v23)
              {
                [(HMDLogEventUserActivityAnalyzer *)self _handleCameraClipRequestLogEvent:v23];
              }
            }
          }
        }
      }
    }
  }
}

- (HMDLogEventUserActivityAnalyzer)initWithEventCountersManager:(id)a3 flagsManager:(id)a4 dateProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = HMDLogEventUserActivityAnalyzer;
  v10 = [(HMDHouseholdActivityLogEventContributor *)&v14 initWithHouseholdGroupName:@"HMDLogEventUserActivityAnalyzerRequestGroup" countersManager:v8 dateProvider:a5];
  if (v10)
  {
    v11 = [v8 counterGroupForName:@"HMDLogEventUserActivityAnalyzerRequestGroup"];
    counterGroup = v10->_counterGroup;
    v10->_counterGroup = v11;

    objc_storeStrong(&v10->_flagsManager, a4);
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t24_76753 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t24_76753, &__block_literal_global_76754);
  }

  v3 = logCategory__hmf_once_v25_76755;

  return v3;
}

void __46__HMDLogEventUserActivityAnalyzer_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v25_76755;
  logCategory__hmf_once_v25_76755 = v1;
}

+ (id)managedEventCounterRequestGroups
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"HMDLogEventUserActivityAnalyzerRequestGroup";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end