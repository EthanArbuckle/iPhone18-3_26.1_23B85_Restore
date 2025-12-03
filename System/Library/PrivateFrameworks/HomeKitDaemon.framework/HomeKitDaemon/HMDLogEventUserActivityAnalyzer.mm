@interface HMDLogEventUserActivityAnalyzer
+ (id)logCategory;
+ (id)managedEventCounterRequestGroups;
- (HMDLogEventUserActivityAnalyzer)initWithEventCountersManager:(id)manager flagsManager:(id)flagsManager dateProvider:(id)provider;
- (void)_handleAccessoryPairingLogEvent:(id)event;
- (void)_handleActionSetRunLogEvent:(id)event;
- (void)_handleAddActionSetLogEvent:(id)event;
- (void)_handleAddTriggerLogEvent:(id)event;
- (void)_handleCameraClipRequestLogEvent:(id)event;
- (void)_handleCameraStreamLogEvent:(id)event;
- (void)_handleReadWriteLogEvent:(id)event;
- (void)coalesceLogEvent:(id)event fromSourceEvent:(id)sourceEvent;
- (void)contributeLogEvent:(id)event toCoreAnalyticsEvent:(id)analyticsEvent;
- (void)contributeLogEvent:(id)event toSerializedMetric:(id)metric;
- (void)deserializeLogEvent:(id)event fromSerializedMetric:(id)metric;
- (void)finishCoalescingLogEvent:(id)event;
- (void)markActiveForEventName:(id)name logEvent:(id)event;
- (void)observeEvent:(id)event;
- (void)populateAggregationAnalysisLogEvent:(id)event forDate:(id)date;
- (void)populateLogEvent:(id)event forHomeWithUUID:(id)d associatedToDate:(id)date;
- (void)resetAggregationAnalysisContext;
- (void)updateLinkTypeActivityCountsForReadWriteLogEvent:(id)event;
@end

@implementation HMDLogEventUserActivityAnalyzer

- (void)finishCoalescingLogEvent:(id)event
{
  eventCopy = event;
  activeDaysBitField = [eventCopy activeDaysBitField];
  [eventCopy setActiveDay:activeDaysBitField.i8[0] & 1];
  if (activeDaysBitField)
  {
    v4 = log2((*&activeDaysBitField & -*&activeDaysBitField));
  }

  else
  {
    v4 = -1;
  }

  [eventCopy setCountOfDaysSinceLastActive:v4];
  v5 = vcnt_s8(activeDaysBitField);
  v5.i16[0] = vaddlv_u8(v5);
  [eventCopy setActiveDaysPerMonthCount:v5.u32[0]];
}

- (void)coalesceLogEvent:(id)event fromSourceEvent:(id)sourceEvent
{
  sourceEventCopy = sourceEvent;
  eventCopy = event;
  [eventCopy setNumReadSiri:{objc_msgSend(eventCopy, "numReadSiri") + objc_msgSend(sourceEventCopy, "numReadSiri")}];
  [eventCopy setNumWriteSiri:{objc_msgSend(eventCopy, "numWriteSiri") + objc_msgSend(sourceEventCopy, "numWriteSiri")}];
  [eventCopy setNumReadFirstPartyApp:{objc_msgSend(eventCopy, "numReadFirstPartyApp") + objc_msgSend(sourceEventCopy, "numReadFirstPartyApp")}];
  [eventCopy setNumWriteFirstPartyApp:{objc_msgSend(eventCopy, "numWriteFirstPartyApp") + objc_msgSend(sourceEventCopy, "numWriteFirstPartyApp")}];
  [eventCopy setNumReadThirdPartyApp:{objc_msgSend(eventCopy, "numReadThirdPartyApp") + objc_msgSend(sourceEventCopy, "numReadThirdPartyApp")}];
  [eventCopy setNumWriteThirdPartyApp:{objc_msgSend(eventCopy, "numWriteThirdPartyApp") + objc_msgSend(sourceEventCopy, "numWriteThirdPartyApp")}];
  [eventCopy setNumAccessoriesAdded:{objc_msgSend(eventCopy, "numAccessoriesAdded") + objc_msgSend(sourceEventCopy, "numAccessoriesAdded")}];
  [eventCopy setNumScenesAdded:{objc_msgSend(eventCopy, "numScenesAdded") + objc_msgSend(sourceEventCopy, "numScenesAdded")}];
  [eventCopy setNumTriggersAdded:{objc_msgSend(eventCopy, "numTriggersAdded") + objc_msgSend(sourceEventCopy, "numTriggersAdded")}];
  [eventCopy setNumShortcutsAdded:{objc_msgSend(eventCopy, "numShortcutsAdded") + objc_msgSend(sourceEventCopy, "numShortcutsAdded")}];
  [eventCopy setNumScenesUserRun:{objc_msgSend(eventCopy, "numScenesUserRun") + objc_msgSend(sourceEventCopy, "numScenesUserRun")}];
  [eventCopy setNumShortcutsRun:{objc_msgSend(eventCopy, "numShortcutsRun") + objc_msgSend(sourceEventCopy, "numShortcutsRun")}];
  [eventCopy setNumTriggersFired:{objc_msgSend(eventCopy, "numTriggersFired") + objc_msgSend(sourceEventCopy, "numTriggersFired")}];
  [eventCopy setCameraStreamStartSuccessCount:{objc_msgSend(eventCopy, "cameraStreamStartSuccessCount") + objc_msgSend(sourceEventCopy, "cameraStreamStartSuccessCount")}];
  [eventCopy setCameraStreamStartFailureCount:{objc_msgSend(eventCopy, "cameraStreamStartFailureCount") + objc_msgSend(sourceEventCopy, "cameraStreamStartFailureCount")}];
  [eventCopy setFetchCameraClipVideoSegmentAssetCount:{objc_msgSend(eventCopy, "fetchCameraClipVideoSegmentAssetCount") + objc_msgSend(sourceEventCopy, "fetchCameraClipVideoSegmentAssetCount")}];
  activeDaysBitField = [sourceEventCopy activeDaysBitField];

  [eventCopy setActiveDaysBitField:{objc_msgSend(eventCopy, "activeDaysBitField") | activeDaysBitField}];
}

- (void)contributeLogEvent:(id)event toCoreAnalyticsEvent:(id)analyticsEvent
{
  analyticsEventCopy = analyticsEvent;
  eventCopy = event;
  v7 = +[HMDLogEventHistograms lowVolumeHistogram];
  v8 = [v7 intervalIndexForValue:{objc_msgSend(eventCopy, "numReadSiri")}];
  [analyticsEventCopy setObject:v8 forKeyedSubscript:@"siriReadCount"];

  v9 = +[HMDLogEventHistograms lowVolumeHistogram];
  v10 = [v9 intervalIndexForValue:{objc_msgSend(eventCopy, "numWriteSiri")}];
  [analyticsEventCopy setObject:v10 forKeyedSubscript:@"siriWriteCount"];

  v11 = +[HMDLogEventHistograms highVolumeHistogram];
  v12 = [v11 intervalIndexForValue:{objc_msgSend(eventCopy, "numReadFirstPartyApp")}];
  [analyticsEventCopy setObject:v12 forKeyedSubscript:@"firstPartyReadCount"];

  v13 = +[HMDLogEventHistograms highVolumeHistogram];
  v14 = [v13 intervalIndexForValue:{objc_msgSend(eventCopy, "numWriteFirstPartyApp")}];
  [analyticsEventCopy setObject:v14 forKeyedSubscript:@"firstPartyWriteCount"];

  v15 = +[HMDLogEventHistograms highVolumeHistogram];
  v16 = [v15 intervalIndexForValue:{objc_msgSend(eventCopy, "numReadThirdPartyApp")}];
  [analyticsEventCopy setObject:v16 forKeyedSubscript:@"thirdPartyReadCount"];

  v17 = +[HMDLogEventHistograms highVolumeHistogram];
  v18 = [v17 intervalIndexForValue:{objc_msgSend(eventCopy, "numWriteThirdPartyApp")}];
  [analyticsEventCopy setObject:v18 forKeyedSubscript:@"thirdPartyWriteCount"];

  v19 = +[HMDLogEventHistograms lowVolumeHistogram];
  v20 = [v19 intervalIndexForValue:{objc_msgSend(eventCopy, "numAccessoriesAdded")}];
  [analyticsEventCopy setObject:v20 forKeyedSubscript:@"accessoriesAddedCount"];

  v21 = +[HMDLogEventHistograms lowVolumeHistogram];
  v22 = [v21 intervalIndexForValue:{objc_msgSend(eventCopy, "numScenesAdded")}];
  [analyticsEventCopy setObject:v22 forKeyedSubscript:@"scenesAddedCount"];

  v23 = +[HMDLogEventHistograms lowVolumeHistogram];
  v24 = [v23 intervalIndexForValue:{objc_msgSend(eventCopy, "numTriggersAdded")}];
  [analyticsEventCopy setObject:v24 forKeyedSubscript:@"triggersAddedCount"];

  v25 = +[HMDLogEventHistograms lowVolumeHistogram];
  v26 = [v25 intervalIndexForValue:{objc_msgSend(eventCopy, "numShortcutsAdded")}];
  [analyticsEventCopy setObject:v26 forKeyedSubscript:@"shortcutsAddedCount"];

  v27 = +[HMDLogEventHistograms lowVolumeHistogram];
  v28 = [v27 intervalIndexForValue:{objc_msgSend(eventCopy, "numScenesUserRun")}];
  [analyticsEventCopy setObject:v28 forKeyedSubscript:@"scenesRunCount"];

  v29 = +[HMDLogEventHistograms lowVolumeHistogram];
  v30 = [v29 intervalIndexForValue:{objc_msgSend(eventCopy, "numTriggersFired")}];
  [analyticsEventCopy setObject:v30 forKeyedSubscript:@"triggersRunCount"];

  v31 = +[HMDLogEventHistograms lowVolumeHistogram];
  v32 = [v31 intervalIndexForValue:{objc_msgSend(eventCopy, "numShortcutsRun")}];
  [analyticsEventCopy setObject:v32 forKeyedSubscript:@"shortcutsRunCount"];

  v33 = +[HMDLogEventHistograms lowVolumeHistogram];
  v34 = [v33 intervalIndexForValue:{objc_msgSend(eventCopy, "cameraStreamStartSuccessCount")}];
  [analyticsEventCopy setObject:v34 forKeyedSubscript:@"cameraStreamStartSuccessCount"];

  v35 = +[HMDLogEventHistograms lowVolumeHistogram];
  v36 = [v35 intervalIndexForValue:{objc_msgSend(eventCopy, "cameraStreamStartFailureCount")}];
  [analyticsEventCopy setObject:v36 forKeyedSubscript:@"cameraStreamStartFailureCount"];

  v37 = +[HMDLogEventHistograms lowVolumeHistogram];
  v38 = [v37 intervalIndexForValue:{objc_msgSend(eventCopy, "fetchCameraClipVideoSegmentAssetCount")}];
  [analyticsEventCopy setObject:v38 forKeyedSubscript:@"fetchVideoSegmentsAssetCount"];

  v39 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(eventCopy, "isActiveDay")}];
  [analyticsEventCopy setObject:v39 forKeyedSubscript:@"activeDay"];

  v40 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(eventCopy, "countOfDaysSinceLastActive")}];
  [analyticsEventCopy setObject:v40 forKeyedSubscript:@"daysSinceLastActiveCount"];

  v41 = MEMORY[0x277CCABB0];
  activeDaysPerMonthCount = [eventCopy activeDaysPerMonthCount];

  v43 = [v41 numberWithInteger:activeDaysPerMonthCount];
  [analyticsEventCopy setObject:v43 forKeyedSubscript:@"activeDaysPerMonthCount"];
}

- (void)deserializeLogEvent:(id)event fromSerializedMetric:(id)metric
{
  metricCopy = metric;
  eventCopy = event;
  v7 = [metricCopy objectForKeyedSubscript:@"siriReadCount"];
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

  unsignedIntegerValue = [v9 unsignedIntegerValue];
  [eventCopy setNumReadSiri:unsignedIntegerValue];
  v11 = [metricCopy objectForKeyedSubscript:@"siriWriteCount"];
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

  unsignedIntegerValue2 = [v13 unsignedIntegerValue];
  [eventCopy setNumWriteSiri:unsignedIntegerValue2];
  v15 = [metricCopy objectForKeyedSubscript:@"firstPartyReadCount"];
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

  unsignedIntegerValue3 = [v17 unsignedIntegerValue];
  [eventCopy setNumReadFirstPartyApp:unsignedIntegerValue3];
  v19 = [metricCopy objectForKeyedSubscript:@"firstPartyWriteCount"];
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

  unsignedIntegerValue4 = [v21 unsignedIntegerValue];
  [eventCopy setNumWriteFirstPartyApp:unsignedIntegerValue4];
  v23 = [metricCopy objectForKeyedSubscript:@"thirdPartyReadCount"];
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

  unsignedIntegerValue5 = [v25 unsignedIntegerValue];
  [eventCopy setNumReadThirdPartyApp:unsignedIntegerValue5];
  v27 = [metricCopy objectForKeyedSubscript:@"thirdPartyWriteCount"];
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

  unsignedIntegerValue6 = [v29 unsignedIntegerValue];
  [eventCopy setNumWriteThirdPartyApp:unsignedIntegerValue6];
  v31 = [metricCopy objectForKeyedSubscript:@"accessoriesAddedCount"];
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

  unsignedIntegerValue7 = [v33 unsignedIntegerValue];
  [eventCopy setNumAccessoriesAdded:unsignedIntegerValue7];
  v35 = [metricCopy objectForKeyedSubscript:@"scenesAddedCount"];
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

  unsignedIntegerValue8 = [v37 unsignedIntegerValue];
  [eventCopy setNumScenesAdded:unsignedIntegerValue8];
  v39 = [metricCopy objectForKeyedSubscript:@"triggersAddedCount"];
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

  unsignedIntegerValue9 = [v41 unsignedIntegerValue];
  [eventCopy setNumTriggersAdded:unsignedIntegerValue9];
  v43 = [metricCopy objectForKeyedSubscript:@"shortcutsAddedCount"];
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

  unsignedIntegerValue10 = [v45 unsignedIntegerValue];
  [eventCopy setNumShortcutsAdded:unsignedIntegerValue10];
  v47 = [metricCopy objectForKeyedSubscript:@"scenesRunCount"];
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

  unsignedIntegerValue11 = [v49 unsignedIntegerValue];
  [eventCopy setNumScenesUserRun:unsignedIntegerValue11];
  v51 = [metricCopy objectForKeyedSubscript:@"shortcutsRunCount"];
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

  unsignedIntegerValue12 = [v53 unsignedIntegerValue];
  [eventCopy setNumShortcutsRun:unsignedIntegerValue12];
  v55 = [metricCopy objectForKeyedSubscript:@"triggersRunCount"];
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

  unsignedIntegerValue13 = [v57 unsignedIntegerValue];
  [eventCopy setNumTriggersFired:unsignedIntegerValue13];
  v59 = [metricCopy objectForKeyedSubscript:@"cameraStreamStartSuccessCount"];
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

  unsignedIntegerValue14 = [v61 unsignedIntegerValue];
  [eventCopy setCameraStreamStartSuccessCount:unsignedIntegerValue14];
  v63 = [metricCopy objectForKeyedSubscript:@"cameraStreamStartFailureCount"];
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

  unsignedIntegerValue15 = [v65 unsignedIntegerValue];
  [eventCopy setCameraStreamStartFailureCount:unsignedIntegerValue15];
  v67 = [metricCopy objectForKeyedSubscript:@"fetchVideoSegmentsAssetCount"];
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

  unsignedIntegerValue16 = [v69 unsignedIntegerValue];
  [eventCopy setFetchCameraClipVideoSegmentAssetCount:unsignedIntegerValue16];
  v71 = [metricCopy objectForKeyedSubscript:@"activeDay"];

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

  unsignedLongLongValue = [v73 unsignedLongLongValue];
  [eventCopy setActiveDaysBitField:unsignedLongLongValue];
  [(HMDLogEventUserActivityAnalyzer *)self finishCoalescingLogEvent:eventCopy];
}

- (void)contributeLogEvent:(id)event toSerializedMetric:(id)metric
{
  v5 = MEMORY[0x277CCABB0];
  metricCopy = metric;
  eventCopy = event;
  v8 = [v5 numberWithUnsignedInteger:{objc_msgSend(eventCopy, "numReadSiri")}];
  [metricCopy setObject:v8 forKeyedSubscript:@"siriReadCount"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(eventCopy, "numWriteSiri")}];
  [metricCopy setObject:v9 forKeyedSubscript:@"siriWriteCount"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(eventCopy, "numReadFirstPartyApp")}];
  [metricCopy setObject:v10 forKeyedSubscript:@"firstPartyReadCount"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(eventCopy, "numWriteFirstPartyApp")}];
  [metricCopy setObject:v11 forKeyedSubscript:@"firstPartyWriteCount"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(eventCopy, "numReadThirdPartyApp")}];
  [metricCopy setObject:v12 forKeyedSubscript:@"thirdPartyReadCount"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(eventCopy, "numWriteThirdPartyApp")}];
  [metricCopy setObject:v13 forKeyedSubscript:@"thirdPartyWriteCount"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(eventCopy, "numAccessoriesAdded")}];
  [metricCopy setObject:v14 forKeyedSubscript:@"accessoriesAddedCount"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(eventCopy, "numScenesAdded")}];
  [metricCopy setObject:v15 forKeyedSubscript:@"scenesAddedCount"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(eventCopy, "numTriggersAdded")}];
  [metricCopy setObject:v16 forKeyedSubscript:@"triggersAddedCount"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(eventCopy, "numShortcutsAdded")}];
  [metricCopy setObject:v17 forKeyedSubscript:@"shortcutsAddedCount"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(eventCopy, "numScenesUserRun")}];
  [metricCopy setObject:v18 forKeyedSubscript:@"scenesRunCount"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(eventCopy, "numShortcutsRun")}];
  [metricCopy setObject:v19 forKeyedSubscript:@"shortcutsRunCount"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(eventCopy, "numTriggersFired")}];
  [metricCopy setObject:v20 forKeyedSubscript:@"triggersRunCount"];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(eventCopy, "cameraStreamStartSuccessCount")}];
  [metricCopy setObject:v21 forKeyedSubscript:@"cameraStreamStartSuccessCount"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(eventCopy, "cameraStreamStartFailureCount")}];
  [metricCopy setObject:v22 forKeyedSubscript:@"cameraStreamStartFailureCount"];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(eventCopy, "fetchCameraClipVideoSegmentAssetCount")}];
  [metricCopy setObject:v23 forKeyedSubscript:@"fetchVideoSegmentsAssetCount"];

  v24 = MEMORY[0x277CCABB0];
  activeDaysBitField = [eventCopy activeDaysBitField];

  v26 = [v24 numberWithUnsignedLongLong:activeDaysBitField];
  [metricCopy setObject:v26 forKeyedSubscript:@"activeDay"];
}

- (void)populateLogEvent:(id)event forHomeWithUUID:(id)d associatedToDate:(id)date
{
  dateCopy = date;
  dCopy = d;
  eventCopy = event;
  v14 = [(HMDHouseholdActivityLogEventContributor *)self householdGroupForHomeWithUUID:dCopy associatedWithDate:dateCopy];
  [eventCopy setNumReadSiri:{objc_msgSend(v14, "fetchEventCounterForEventName:", @"HMDLogEventUserActivityAnalyzerSiriReadEventCounter"}];
  [eventCopy setNumWriteSiri:{objc_msgSend(v14, "fetchEventCounterForEventName:", @"HMDLogEventUserActivityAnalyzerSiriWriteEventCounter"}];
  [eventCopy setNumReadFirstPartyApp:{objc_msgSend(v14, "fetchEventCounterForEventName:", @"HMDLogEventUserActivityAnalyzerFirstPartyReadEventCounter"}];
  [eventCopy setNumWriteFirstPartyApp:{objc_msgSend(v14, "fetchEventCounterForEventName:", @"HMDLogEventUserActivityAnalyzerFirstPartyWriteEventCounter"}];
  [eventCopy setNumReadThirdPartyApp:{objc_msgSend(v14, "fetchEventCounterForEventName:", @"HMDLogEventUserActivityAnalyzerThirdPartyReadEventCounter"}];
  [eventCopy setNumWriteThirdPartyApp:{objc_msgSend(v14, "fetchEventCounterForEventName:", @"HMDLogEventUserActivityAnalyzerThirdPartyWriteEventCounter"}];
  [eventCopy setNumAccessoriesAdded:{objc_msgSend(v14, "fetchEventCounterForEventName:", @"HMDLogEventUserActivityAnalyzerAddAccessoryEventCounter"}];
  [eventCopy setNumScenesAdded:{objc_msgSend(v14, "fetchEventCounterForEventName:", @"HMDLogEventUserActivityAnalyzerAddSceneEventCounter"}];
  [eventCopy setNumTriggersAdded:{objc_msgSend(v14, "fetchEventCounterForEventName:", @"HMDLogEventUserActivityAnalyzerAddTriggerEventCounter"}];
  [eventCopy setNumShortcutsAdded:{objc_msgSend(v14, "fetchEventCounterForEventName:", @"HMDLogEventUserActivityAnalyzerAddShortcutEventCounter"}];
  [eventCopy setNumScenesUserRun:{objc_msgSend(v14, "fetchEventCounterForEventName:", @"HMDLogEventUserActivityAnalyzerRunSceneEventCounter"}];
  [eventCopy setNumShortcutsRun:{objc_msgSend(v14, "fetchEventCounterForEventName:", @"HMDLogEventUserActivityAnalyzerRunShortcutEventCounter"}];
  [eventCopy setNumTriggersFired:{objc_msgSend(v14, "fetchEventCounterForEventName:", @"HMDLogEventUserActivityAnalyzerTriggerFiredEventCounter"}];
  [eventCopy setCameraStreamStartSuccessCount:{objc_msgSend(v14, "fetchEventCounterForEventName:", @"HMDLogEventUserActivityAnalyzerCameraStreamStartSuccessEventCounter"}];
  [eventCopy setCameraStreamStartFailureCount:{objc_msgSend(v14, "fetchEventCounterForEventName:", @"HMDLogEventUserActivityAnalyzerCameraStreamStartFailureEventCounter"}];
  [eventCopy setFetchCameraClipVideoSegmentAssetCount:{objc_msgSend(v14, "fetchEventCounterForEventName:", @"HMDLogEventUserActivityAnalyzerFetchCameraClipVideoSegmentsAssetEventCounter"}];
  flagsManager = [(HMDLogEventUserActivityAnalyzer *)self flagsManager];
  v12 = [flagsManager flagForName:@"HMDLogEventUserActivityAnalyzerIsActiveFlag" homeUUID:dCopy periodicity:1];

  v13 = [v12 bitsForDate:dateCopy bitCount:30 outValidBitCount:0];
  [eventCopy setActiveDaysBitField:v13];
  [(HMDLogEventUserActivityAnalyzer *)self finishCoalescingLogEvent:eventCopy];
}

- (void)resetAggregationAnalysisContext
{
  counterGroup = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [counterGroup resetEventCounters];
}

- (void)populateAggregationAnalysisLogEvent:(id)event forDate:(id)date
{
  eventCopy = event;
  dateCopy = date;
  counterGroup = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [eventCopy setNumReadSiri:{objc_msgSend(counterGroup, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerSiriReadEventCounter", dateCopy)}];

  counterGroup2 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [eventCopy setNumWriteSiri:{objc_msgSend(counterGroup2, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerSiriWriteEventCounter", dateCopy)}];

  counterGroup3 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [eventCopy setNumReadFirstPartyApp:{objc_msgSend(counterGroup3, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerFirstPartyReadEventCounter", dateCopy)}];

  counterGroup4 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [eventCopy setNumWriteFirstPartyApp:{objc_msgSend(counterGroup4, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerFirstPartyWriteEventCounter", dateCopy)}];

  counterGroup5 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [eventCopy setNumReadThirdPartyApp:{objc_msgSend(counterGroup5, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerThirdPartyReadEventCounter", dateCopy)}];

  counterGroup6 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [eventCopy setNumWriteThirdPartyApp:{objc_msgSend(counterGroup6, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerThirdPartyWriteEventCounter", dateCopy)}];

  counterGroup7 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [eventCopy setNumReadInternalRequested:{objc_msgSend(counterGroup7, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerInternalRequestedReadEventCounter", dateCopy)}];

  counterGroup8 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [eventCopy setNumWriteInternalRequested:{objc_msgSend(counterGroup8, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerInternalRequestedWriteEventCounter", dateCopy)}];

  counterGroup9 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [eventCopy setNumReadUnknownSource:{objc_msgSend(counterGroup9, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerUnknownSourceReadEventCounter", dateCopy)}];

  counterGroup10 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [eventCopy setNumWriteUnknownSource:{objc_msgSend(counterGroup10, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerUnknownSourceWriteEventCounter", dateCopy)}];

  counterGroup11 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [eventCopy setNumReadWriteSuccessIP:{objc_msgSend(counterGroup11, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerReadWriteIPSuccessEventCounter", dateCopy)}];

  counterGroup12 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [eventCopy setNumReadWriteFailureIP:{objc_msgSend(counterGroup12, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerReadWriteIPFailureEventCounter", dateCopy)}];

  if ([eventCopy numReadWriteSuccessIP] || objc_msgSend(eventCopy, "numReadWriteFailureIP"))
  {
    counterGroup13 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
    v20 = [counterGroup13 fetchEventCounterForEventName:@"HMDLogEventUserActivityAnalyzerIPDurationAggregate" forDate:dateCopy];

    [eventCopy setAverageLatencyIP:{v20 / (objc_msgSend(eventCopy, "numReadWriteFailureIP") + objc_msgSend(eventCopy, "numReadWriteSuccessIP"))}];
  }

  counterGroup14 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [eventCopy setNumReadWriteSuccessBT:{objc_msgSend(counterGroup14, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerReadWriteBTSuccessEventCounter", dateCopy)}];

  counterGroup15 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [eventCopy setNumReadWriteFailureBT:{objc_msgSend(counterGroup15, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerReadWriteBTFailureEventCounter", dateCopy)}];

  if ([eventCopy numReadWriteSuccessBT] || objc_msgSend(eventCopy, "numReadWriteFailureBT"))
  {
    counterGroup16 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
    v24 = [counterGroup16 fetchEventCounterForEventName:@"HMDLogEventUserActivityAnalyzerBTDurationAggregate" forDate:dateCopy];

    [eventCopy setAverageLatencyBT:{v24 / (objc_msgSend(eventCopy, "numReadWriteFailureBT") + objc_msgSend(eventCopy, "numReadWriteSuccessBT"))}];
  }

  counterGroup17 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [eventCopy setNumReadWriteSuccessIDS:{objc_msgSend(counterGroup17, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerReadWriteIDSSuccessEventCounter", dateCopy)}];

  counterGroup18 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [eventCopy setNumReadWriteFailureIDS:{objc_msgSend(counterGroup18, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerReadWriteIDSFailureEventCounter", dateCopy)}];

  if ([eventCopy numReadWriteSuccessIDS] || objc_msgSend(eventCopy, "numReadWriteFailureIDS"))
  {
    counterGroup19 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
    v28 = [counterGroup19 fetchEventCounterForEventName:@"HMDLogEventUserActivityAnalyzerIDSDurationAggregate" forDate:dateCopy];

    [eventCopy setAverageLatencyIDS:{v28 / (objc_msgSend(eventCopy, "numReadWriteFailureIDS") + objc_msgSend(eventCopy, "numReadWriteSuccessIDS"))}];
  }

  counterGroup20 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [eventCopy setNumAccessoriesAdded:{objc_msgSend(counterGroup20, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerAddAccessoryEventCounter", dateCopy)}];

  counterGroup21 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [eventCopy setNumScenesAdded:{objc_msgSend(counterGroup21, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerAddSceneEventCounter", dateCopy)}];

  counterGroup22 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [eventCopy setNumTriggersAdded:{objc_msgSend(counterGroup22, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerAddTriggerEventCounter", dateCopy)}];

  counterGroup23 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [eventCopy setNumShortcutsAdded:{objc_msgSend(counterGroup23, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerAddShortcutEventCounter", dateCopy)}];

  counterGroup24 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [eventCopy setNumScenesUserRun:{objc_msgSend(counterGroup24, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerRunSceneEventCounter", dateCopy)}];

  counterGroup25 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [eventCopy setNumShortcutsRun:{objc_msgSend(counterGroup25, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerRunShortcutEventCounter", dateCopy)}];

  counterGroup26 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [eventCopy setNumTriggersFired:{objc_msgSend(counterGroup26, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerTriggerFiredEventCounter", dateCopy)}];

  counterGroup27 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [eventCopy setCameraStreamStartSuccessCount:{objc_msgSend(counterGroup27, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerCameraStreamStartSuccessEventCounter", dateCopy)}];

  counterGroup28 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [eventCopy setCameraStreamStartFailureCount:{objc_msgSend(counterGroup28, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerCameraStreamStartFailureEventCounter", dateCopy)}];

  counterGroup29 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [eventCopy setFetchCameraClipVideoSegmentAssetCount:{objc_msgSend(counterGroup29, "fetchEventCounterForEventName:forDate:", @"HMDLogEventUserActivityAnalyzerFetchCameraClipVideoSegmentsAssetEventCounter", dateCopy)}];

  flagsManager = [(HMDLogEventUserActivityAnalyzer *)self flagsManager];
  v40 = [flagsManager flagForName:@"HMDLogEventUserActivityAnalyzerIsActiveFlag" periodicity:1];

  v41 = [v40 bitsForDate:dateCopy bitCount:30 outValidBitCount:0];
  [eventCopy setActiveDay:v41.i8[0] & 1];
  if (v41)
  {
    v42 = log2((*&v41 & -*&v41));
  }

  else
  {
    v42 = -1;
  }

  [eventCopy setCountOfDaysSinceLastActive:v42];
  v43 = vcnt_s8(v41);
  v43.i16[0] = vaddlv_u8(v43);
  [eventCopy setActiveDaysPerMonthCount:v43.u32[0]];
}

- (void)markActiveForEventName:(id)name logEvent:(id)event
{
  nameCopy = name;
  eventCopy = event;
  counterGroup = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
  [counterGroup incrementEventCounterForEventName:nameCopy];

  v8 = HMMSafeHomeUUIDFromLogEvent();
  if (v8)
  {
    flagsManager = [(HMDLogEventUserActivityAnalyzer *)self flagsManager];
    v10 = [flagsManager flagForName:@"HMDLogEventUserActivityAnalyzerIsActiveFlag" homeUUID:v8 periodicity:1];

    [v10 setCurrentBit];
  }

  flagsManager2 = [(HMDLogEventUserActivityAnalyzer *)self flagsManager];
  v12 = [flagsManager2 flagForName:@"HMDLogEventUserActivityAnalyzerIsActiveFlag" periodicity:1];

  [v12 setCurrentBit];
  v13 = [(HMDHouseholdActivityLogEventContributor *)self householdGroupForLogEvent:eventCopy];
  v14 = v13;
  if (v13)
  {
    [v13 incrementEventCounterForEventName:nameCopy];
  }
}

- (void)_handleCameraClipRequestLogEvent:(id)event
{
  eventCopy = event;
  requestName = [eventCopy requestName];
  v5 = [requestName isEqualToString:@"HMDCameraClipManagerRequestLogEventFetchVideoSegmentsAssetRequestName"];

  if (v5)
  {
    [(HMDLogEventUserActivityAnalyzer *)self markActiveForEventName:@"HMDLogEventUserActivityAnalyzerFetchCameraClipVideoSegmentsAssetEventCounter" logEvent:eventCopy];
  }
}

- (void)_handleCameraStreamLogEvent:(id)event
{
  eventCopy = event;
  error = [eventCopy error];
  code = [error code];
  v6 = @"HMDLogEventUserActivityAnalyzerCameraStreamStartFailureEventCounter";
  if (!code)
  {
    v6 = @"HMDLogEventUserActivityAnalyzerCameraStreamStartSuccessEventCounter";
  }

  v7 = v6;

  [(HMDLogEventUserActivityAnalyzer *)self markActiveForEventName:v7 logEvent:eventCopy];
}

- (void)_handleActionSetRunLogEvent:(id)event
{
  eventCopy = event;
  actionSetType = [eventCopy actionSetType];
  v5 = [actionSetType isEqualToString:*MEMORY[0x277CCF190]];

  if (v5)
  {
    v6 = eventCopy;
    v7 = @"HMDLogEventUserActivityAnalyzerRunShortcutEventCounter";
  }

  else if (-[HMDLogEventUserActivityAnalyzer _isUserSource:](self, "_isUserSource:", [eventCopy triggerSource]))
  {
    v6 = eventCopy;
    v7 = @"HMDLogEventUserActivityAnalyzerRunSceneEventCounter";
  }

  else
  {
    if (!-[HMDLogEventUserActivityAnalyzer _isTriggerSource:](self, "_isTriggerSource:", [eventCopy triggerSource]))
    {
      goto LABEL_8;
    }

    v6 = eventCopy;
    v7 = @"HMDLogEventUserActivityAnalyzerTriggerFiredEventCounter";
  }

  [(HMDLogEventUserActivityAnalyzer *)self markActiveForEventName:v7 logEvent:v6];
LABEL_8:
}

- (void)_handleAddTriggerLogEvent:(id)event
{
  eventCopy = event;
  [(HMDLogEventUserActivityAnalyzer *)self markActiveForEventName:@"HMDLogEventUserActivityAnalyzerAddSceneEventCounter" logEvent:eventCopy];
  [(HMDLogEventUserActivityAnalyzer *)self markActiveForEventName:@"HMDLogEventUserActivityAnalyzerAddTriggerEventCounter" logEvent:eventCopy];
}

- (void)_handleAddActionSetLogEvent:(id)event
{
  eventCopy = event;
  [(HMDLogEventUserActivityAnalyzer *)self markActiveForEventName:@"HMDLogEventUserActivityAnalyzerAddSceneEventCounter" logEvent:eventCopy];
  actionSetType = [eventCopy actionSetType];
  v5 = [actionSetType isEqualToString:*MEMORY[0x277CCF190]];

  if (v5)
  {
    [(HMDLogEventUserActivityAnalyzer *)self markActiveForEventName:@"HMDLogEventUserActivityAnalyzerAddShortcutEventCounter" logEvent:eventCopy];
  }
}

- (void)_handleAccessoryPairingLogEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy isAddOperation])
  {
    error = [eventCopy error];
    code = [error code];

    if (!code)
    {
      [(HMDLogEventUserActivityAnalyzer *)self markActiveForEventName:@"HMDLogEventUserActivityAnalyzerAddAccessoryEventCounter" logEvent:eventCopy];
    }
  }
}

- (void)updateLinkTypeActivityCountsForReadWriteLogEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy linkType] == 1 && objc_msgSend(eventCopy, "isLocal"))
  {
    counterGroup = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
    [counterGroup incrementEventCounterForEventName:@"HMDLogEventUserActivityAnalyzerIPDurationAggregate" withValue:{objc_msgSend(eventCopy, "durationMilliseconds")}];

    error = [eventCopy error];
    code = [error code];

    counterGroup2 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
    if (code)
    {
      v8 = @"HMDLogEventUserActivityAnalyzerReadWriteIPFailureEventCounter";
    }

    else
    {
      v8 = @"HMDLogEventUserActivityAnalyzerReadWriteIPSuccessEventCounter";
    }
  }

  else if ([eventCopy linkType] == 2 && objc_msgSend(eventCopy, "isLocal"))
  {
    counterGroup3 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
    [counterGroup3 incrementEventCounterForEventName:@"HMDLogEventUserActivityAnalyzerBTDurationAggregate" withValue:{objc_msgSend(eventCopy, "durationMilliseconds")}];

    error2 = [eventCopy error];
    code2 = [error2 code];

    counterGroup2 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
    if (code2)
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
    if ([eventCopy isLocal])
    {
      goto LABEL_16;
    }

    counterGroup4 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
    [counterGroup4 incrementEventCounterForEventName:@"HMDLogEventUserActivityAnalyzerIDSDurationAggregate" withValue:{objc_msgSend(eventCopy, "durationMilliseconds")}];

    error3 = [eventCopy error];
    code3 = [error3 code];

    counterGroup2 = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
    if (code3)
    {
      v8 = @"HMDLogEventUserActivityAnalyzerReadWriteIDSFailureEventCounter";
    }

    else
    {
      v8 = @"HMDLogEventUserActivityAnalyzerReadWriteIDSSuccessEventCounter";
    }
  }

  [counterGroup2 incrementEventCounterForEventName:v8];

LABEL_16:
}

- (void)_handleReadWriteLogEvent:(id)event
{
  eventCopy = event;
  triggerSource = [eventCopy triggerSource];
  if (triggerSource <= 1139)
  {
    v5 = (triggerSource - 1000) > 0x3C || ((1 << (triggerSource + 24)) & 0x1004010040100401) == 0;
    if (v5 && ((triggerSource - 1070) > 0x3C || ((1 << (triggerSource - 46)) & 0x1004010040100401) == 0) && triggerSource != 7)
    {
      goto LABEL_26;
    }

LABEL_15:
    isWriteOperation = [eventCopy isWriteOperation];
    v8 = @"HMDLogEventUserActivityAnalyzerInternalRequestedReadEventCounter";
    v9 = @"HMDLogEventUserActivityAnalyzerInternalRequestedWriteEventCounter";
LABEL_16:
    if (isWriteOperation)
    {
      v8 = v9;
    }

    bundleId = v8;
    counterGroup = [(HMDLogEventUserActivityAnalyzer *)self counterGroup];
    [counterGroup incrementEventCounterForEventName:bundleId];
    goto LABEL_19;
  }

  v6 = (triggerSource - 1140) > 0x3C || ((1 << (triggerSource - 116)) & 0x1004010040100401) == 0;
  if (!v6 || triggerSource == 1220 || triggerSource == 1210)
  {
    goto LABEL_15;
  }

LABEL_26:
  triggerSource2 = [eventCopy triggerSource];
  if (triggerSource2 <= 4)
  {
    if (triggerSource2)
    {
      v12 = eventCopy;
      if (triggerSource2 == 1)
      {
        isWriteOperation2 = [eventCopy isWriteOperation];
        v15 = @"HMDLogEventUserActivityAnalyzerSiriReadEventCounter";
        v16 = @"HMDLogEventUserActivityAnalyzerSiriWriteEventCounter";
LABEL_33:
        if (isWriteOperation2)
        {
          v15 = v16;
        }

        bundleId = v15;
        goto LABEL_36;
      }

      goto LABEL_21;
    }

    isWriteOperation = [eventCopy isWriteOperation];
    v8 = @"HMDLogEventUserActivityAnalyzerUnknownSourceReadEventCounter";
    v9 = @"HMDLogEventUserActivityAnalyzerUnknownSourceWriteEventCounter";
    goto LABEL_16;
  }

  if (triggerSource2 == 5)
  {
    if ([eventCopy isWriteOperation])
    {
      bundleId = @"HMDLogEventUserActivityAnalyzerFirstPartyWriteEventCounter";
LABEL_36:
      v12 = eventCopy;
LABEL_37:
      [(HMDLogEventUserActivityAnalyzer *)self markActiveForEventName:bundleId logEvent:v12];
      goto LABEL_20;
    }

    bundleId = [eventCopy bundleId];
    counterGroup = [(__CFString *)bundleId lowercaseString];
    if (![counterGroup isEqualToString:@"com.apple.springboard"])
    {
      bundleId2 = [eventCopy bundleId];
      lowercaseString = [bundleId2 lowercaseString];
      v19 = [lowercaseString isEqualToString:@"com.apple.home.homewidget"];

      v12 = eventCopy;
      if ((v19 & 1) == 0)
      {
        bundleId = @"HMDLogEventUserActivityAnalyzerFirstPartyReadEventCounter";
        goto LABEL_37;
      }

      goto LABEL_21;
    }

LABEL_19:

LABEL_20:
    v12 = eventCopy;
    goto LABEL_21;
  }

  v12 = eventCopy;
  if (triggerSource2 == 6)
  {
    isWriteOperation2 = [eventCopy isWriteOperation];
    v15 = @"HMDLogEventUserActivityAnalyzerThirdPartyReadEventCounter";
    v16 = @"HMDLogEventUserActivityAnalyzerThirdPartyWriteEventCounter";
    goto LABEL_33;
  }

LABEL_21:
  [(HMDLogEventUserActivityAnalyzer *)self updateLinkTypeActivityCountsForReadWriteLogEvent:v12];
}

- (void)observeEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = eventCopy;
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
    v6 = eventCopy;
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

- (HMDLogEventUserActivityAnalyzer)initWithEventCountersManager:(id)manager flagsManager:(id)flagsManager dateProvider:(id)provider
{
  managerCopy = manager;
  flagsManagerCopy = flagsManager;
  v14.receiver = self;
  v14.super_class = HMDLogEventUserActivityAnalyzer;
  v10 = [(HMDHouseholdActivityLogEventContributor *)&v14 initWithHouseholdGroupName:@"HMDLogEventUserActivityAnalyzerRequestGroup" countersManager:managerCopy dateProvider:provider];
  if (v10)
  {
    v11 = [managerCopy counterGroupForName:@"HMDLogEventUserActivityAnalyzerRequestGroup"];
    counterGroup = v10->_counterGroup;
    v10->_counterGroup = v11;

    objc_storeStrong(&v10->_flagsManager, flagsManager);
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