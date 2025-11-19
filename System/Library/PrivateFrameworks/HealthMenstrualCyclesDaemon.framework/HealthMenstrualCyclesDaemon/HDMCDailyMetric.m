@interface HDMCDailyMetric
- (HDMCDailyMetric)initWithImproveHealthAndActivityAllowed:(BOOL)a3;
- (NSDictionary)eventPayload;
- (id)_biologicalSexString;
@end

@implementation HDMCDailyMetric

- (HDMCDailyMetric)initWithImproveHealthAndActivityAllowed:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HDMCDailyMetric;
  result = [(HDMCDailyMetric *)&v5 init];
  if (result)
  {
    result->_improveHealthAndActivityAllowed = a3;
  }

  return result;
}

- (NSDictionary)eventPayload
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(HDMCDailyMetric *)self age];
  [v3 setObject:v4 forKeyedSubscript:@"age"];

  v5 = [(HDMCDailyMetric *)self _biologicalSexString];
  [v3 setObject:v5 forKeyedSubscript:@"biologicalSex"];

  v6 = [(HDMCDailyMetric *)self countPairediPhone];
  [v3 setObject:v6 forKeyedSubscript:*MEMORY[0x277CCB7D8]];

  v7 = [(HDMCDailyMetric *)self countPairedWatch];
  [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x277CCB7E8]];

  v8 = [(HDMCDailyMetric *)self countPairediPad];
  [v3 setObject:v8 forKeyedSubscript:*MEMORY[0x277CCB7F0]];

  v9 = [(HDMCDailyMetric *)self countPairedVisionPro];
  [v3 setObject:v9 forKeyedSubscript:*MEMORY[0x277CCB7E0]];

  v10 = [(HDMCDailyMetric *)self isSleepScheduleEnabled];
  [v3 setObject:v10 forKeyedSubscript:@"isSleepScheduleEnabled"];

  v11 = [(HDMCDailyMetric *)self isSleepScreenEnabled];
  [v3 setObject:v11 forKeyedSubscript:@"isSleepScreenEnabled"];

  v12 = [(HDMCDailyMetric *)self cycleLengthVariationLowerPercentile];
  [v3 setObject:v12 forKeyedSubscript:@"cycleLengthVariation15thPercentile"];

  v13 = [(HDMCDailyMetric *)self cycleLengthVariationUpperPercentile];
  [v3 setObject:v13 forKeyedSubscript:@"cycleLengthVariation85thPercentile"];

  v14 = [(HDMCDailyMetric *)self hasCompatiblePairedAppleWatch];
  [v3 setObject:v14 forKeyedSubscript:@"hasCompatiblePairedAppleWatch"];

  v15 = [(HDMCDailyMetric *)self hasWristTemperatureCompatiblePairedWatch];
  [v3 setObject:v15 forKeyedSubscript:@"hasWristTemperatureCompatiblePairedWatch"];

  v16 = [(HDMCDailyMetric *)self hasFirstPartySleepSamplesPast48Hours];
  [v3 setObject:v16 forKeyedSubscript:@"hasFirstPartySleepSamplesPast48Hours"];

  v17 = [(HDMCDailyMetric *)self hasSameAlgorithmVersionOnPairedWatch];
  [v3 setObject:v17 forKeyedSubscript:@"hasSameAlgorithmVersionOnPairedWatch"];

  v18 = [(HDMCDailyMetric *)self hasSleepSamplesPast48Hours];
  [v3 setObject:v18 forKeyedSubscript:@"hasSleepSamplesPast48Hours"];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[HDMCDailyMetric isImproveHealthAndActivityAllowed](self, "isImproveHealthAndActivityAllowed")}];
  [v3 setObject:v19 forKeyedSubscript:@"isImproveHealthAndActivityAllowed"];

  v20 = [(HDMCDailyMetric *)self areHealthNotificationsAuthorized];
  [v3 setObject:v20 forKeyedSubscript:@"areHealthNotificationsAuthorized"];

  v21 = [(HDMCDailyMetric *)self isOnboardingCompleted];
  [v3 setObject:v21 forKeyedSubscript:@"isOnboarded"];

  v22 = [(HDMCDailyMetric *)self numberOfCyclesSinceLastDayOfLogging];
  [v3 setObject:v22 forKeyedSubscript:@"numberOfCyclesSinceLastDayOfLogging"];

  v23 = [(HDMCDailyMetric *)self numberOfCyclesSinceLastDayOfLoggingInCycleTracking];
  [v3 setObject:v23 forKeyedSubscript:@"numberOfCyclesSinceLastDayOfLoggingInCycleTracking"];

  v24 = [(HDMCDailyMetric *)self numberOfDailyAwakeHeartRateStatisticsForPast100Days];
  [v3 setObject:v24 forKeyedSubscript:@"numberOfDailyAwakeHeartRateStatisticsForPast100Days"];

  v25 = [(HDMCDailyMetric *)self numberOfDailySleepHeartRateStatisticsForPast100Days];
  [v3 setObject:v25 forKeyedSubscript:@"numberOfDailySleepHeartRateStatisticsForPast100Days"];

  v26 = [(HDMCDailyMetric *)self numberOfDaysSinceLastFiredUpdateFertileWindowNotification];
  [v3 setObject:v26 forKeyedSubscript:@"numberOfDaysSinceLastFiredUpdateFertileWindowNotification"];

  v27 = [(HDMCDailyMetric *)self onboardedVersion];
  [v3 setObject:v27 forKeyedSubscript:@"onboardedVersion"];

  v28 = [(HDMCDailyMetric *)self isOngoingContraception];
  [v3 setObject:v28 forKeyedSubscript:@"ongoingContraception"];

  v29 = [(HDMCDailyMetric *)self isOngoingLactation];
  [v3 setObject:v29 forKeyedSubscript:@"ongoingLactation"];

  v30 = [(HDMCDailyMetric *)self isOngoingPregnancy];
  [v3 setObject:v30 forKeyedSubscript:@"ongoingPregnancy"];

  v31 = [(HDMCDailyMetric *)self fertilityNotificationEnabled];
  [v3 setObject:v31 forKeyedSubscript:@"settings_fertilityNotificationEnabled"];

  v32 = [(HDMCDailyMetric *)self fertilityPredictionEnabled];
  [v3 setObject:v32 forKeyedSubscript:@"settings_fertilityPredictionEnabled"];

  v33 = [(HDMCDailyMetric *)self logBasalBodyTemperatureEnabled];
  [v3 setObject:v33 forKeyedSubscript:@"settings_logBasalBodyTemperatureEnabled"];

  v34 = [(HDMCDailyMetric *)self logCervicalMucusQualityEnabled];
  [v3 setObject:v34 forKeyedSubscript:@"settings_logCervicalMucusQualityEnabled"];

  v35 = [(HDMCDailyMetric *)self logFactorsEnabled];
  [v3 setObject:v35 forKeyedSubscript:@"settings_logFactorsEnabled"];

  v36 = [(HDMCDailyMetric *)self logOvulationTestResultEnabled];
  [v3 setObject:v36 forKeyedSubscript:@"settings_logOvulationTestResultEnabled"];

  v37 = [(HDMCDailyMetric *)self logPregnancyTestResultEnabled];
  [v3 setObject:v37 forKeyedSubscript:@"settings_logPregnancyTestResultEnabled"];

  v38 = [(HDMCDailyMetric *)self logProgesteroneTestResultEnabled];
  [v3 setObject:v38 forKeyedSubscript:@"settings_logProgesteroneTestResultEnabled"];

  v39 = [(HDMCDailyMetric *)self logSexualActivityEnabled];
  [v3 setObject:v39 forKeyedSubscript:@"settings_logSexualActivityEnabled"];

  v40 = [(HDMCDailyMetric *)self logSpottingEnabled];
  [v3 setObject:v40 forKeyedSubscript:@"settings_logSpottingEnabled"];

  v41 = [(HDMCDailyMetric *)self logSymptomsEnabled];
  [v3 setObject:v41 forKeyedSubscript:@"settings_logSymptomsEnabled"];

  v42 = [(HDMCDailyMetric *)self periodNotificationEnabled];
  [v3 setObject:v42 forKeyedSubscript:@"settings_periodNotificationEnabled"];

  v43 = [(HDMCDailyMetric *)self periodPredictionEnabled];
  [v3 setObject:v43 forKeyedSubscript:@"settings_periodPredictionEnabled"];

  v44 = [(HDMCDailyMetric *)self sensorBasedPredictionEnabled];
  [v3 setObject:v44 forKeyedSubscript:@"settings_sensorBasedPredictionEnabled"];

  v45 = [(HDMCDailyMetric *)self wristTemperatureBasedPredictionEnabled];
  [v3 setObject:v45 forKeyedSubscript:@"settings_wristTemperatureBasedPredictionEnabled"];

  v46 = [(HDMCDailyMetric *)self wasHeartRateInputDelivered];
  [v3 setObject:v46 forKeyedSubscript:@"wasHeartRateInputDelivered"];

  v47 = [(HDMCDailyMetric *)self heartRateInputDeliveryCountryCode];
  [v3 setObject:v47 forKeyedSubscript:@"heartRateInputDeliveryCountryCode"];

  v48 = [(HDMCDailyMetric *)self wasWristTemperatureInputDelivered];
  [v3 setObject:v48 forKeyedSubscript:@"wasWristTemperatureInputDelivered"];

  v49 = [(HDMCDailyMetric *)self wristTemperatureInputDeliveryCountryCode];
  [v3 setObject:v49 forKeyedSubscript:@"wristTemperatureInputDeliveryCountryCode"];

  v50 = [(HDMCDailyMetric *)self weeksSinceOnboarded];
  [v3 setObject:v50 forKeyedSubscript:@"weeksSinceOnboarded"];

  v51 = [(HDMCDailyMetric *)self weeksSinceOnboarded];
  [v3 setObject:v51 forKeyedSubscript:@"weeksSinceOnboardedV2"];

  v52 = [(HDMCDailyMetric *)self weeksSinceOnboardedWristTemperatureOvulationPrediction];
  [v3 setObject:v52 forKeyedSubscript:@"weeksSinceOnboardedWristTempOvulationPrediction"];

  v53 = [(HDMCDailyMetric *)self countWatchesWithWristTempMeasurementDataInLast45Days];
  [v3 setObject:v53 forKeyedSubscript:@"countWatchesWithWristTempMeasurementDataInLast45Days"];

  v54 = [(HDMCDailyMetric *)self countWristTempEligibleHistoricalCycles];
  [v3 setObject:v54 forKeyedSubscript:@"countWristTempEligibleHistoricalCycles"];

  v55 = [(HDMCDailyMetric *)self countWristTempEligibleHistoricalCycles_ConfirmedOPK];
  [v3 setObject:v55 forKeyedSubscript:@"countWristTempEligibleHistoricalCycles_ConfirmedOPK"];

  v56 = [(HDMCDailyMetric *)self countWristTempEligibleHistoricalCycles_ConfirmedWristTemp];
  [v3 setObject:v56 forKeyedSubscript:@"countWristTempEligibleHistoricalCycles_ConfirmedWristTemp"];

  v57 = [(HDMCDailyMetric *)self countWristTempEligibleHistoricalCycles_FailedAvailability];
  [v3 setObject:v57 forKeyedSubscript:@"countWristTempEligibleHistoricalCycles_FailedAvailability"];

  v58 = [(HDMCDailyMetric *)self countWristTempEligibleHistoricalCycles_FailedNoise];
  [v3 setObject:v58 forKeyedSubscript:@"countWristTempEligibleHistoricalCycles_FailedNoise"];

  v59 = [(HDMCDailyMetric *)self countWristTempEligibleHistoricalCycles_FailedOther];
  [v3 setObject:v59 forKeyedSubscript:@"countWristTempEligibleHistoricalCycles_FailedOther"];

  v60 = [(HDMCDailyMetric *)self daysBeforeFertileWindowEnd];
  [v3 setObject:v60 forKeyedSubscript:@"daysBeforeFertileWindowEnd"];

  v61 = [(HDMCDailyMetric *)self daysBeforeMostLikelyPeriodPredictionStart];
  [v3 setObject:v61 forKeyedSubscript:@"daysBeforeMostLikelyPeriodPredictionStart"];

  v62 = [(HDMCDailyMetric *)self daysFertileWindowShifted];
  [v3 setObject:v62 forKeyedSubscript:@"daysFertileWindowShifted"];

  v63 = [(HDMCDailyMetric *)self daysFirstPeriodPredictionShifted];
  [v3 setObject:v63 forKeyedSubscript:@"daysFirstPeriodPredictionShifted"];

  v64 = [(HDMCDailyMetric *)self daysSinceCycleStart];
  [v3 setObject:v64 forKeyedSubscript:@"daysSinceCycleStart"];

  v65 = [(HDMCDailyMetric *)self didFirstPeriodPredictionShift];
  [v3 setObject:v65 forKeyedSubscript:@"didFirstPeriodPredictionShift"];

  v66 = [(HDMCDailyMetric *)self predictionPrimarySourceTypeFertileWindow];
  [v3 setObject:v66 forKeyedSubscript:@"predictionPrimarySourceTypeFertileWindow"];

  v67 = [(HDMCDailyMetric *)self predictionPrimarySourceTypeFirstPeriodPrediction];
  [v3 setObject:v67 forKeyedSubscript:@"predictionPrimarySourceTypeFirstPeriodPrediction"];

  v68 = [(HDMCDailyMetric *)self daysWithWristTempIn10DaysBeforeCalendarOvulation];
  [v3 setObject:v68 forKeyedSubscript:@"daysWithWristTempIn10DaysBeforeCalendarOvulation"];

  v69 = [(HDMCDailyMetric *)self daysWithWristTempIn6DaysBeforeCalendarOvulation];
  [v3 setObject:v69 forKeyedSubscript:@"daysWithWristTempIn6DaysBeforeCalendarOvulation"];

  v70 = [(HDMCDailyMetric *)self daysWithWristTempIn3DaysAfterCalendarOvulation];
  [v3 setObject:v70 forKeyedSubscript:@"daysWithWristTempIn3DaysAfterCalendarOvulation"];

  v71 = [(HDMCDailyMetric *)self daysWithWristTempIn6DaysAfterCalendarOvulation];
  [v3 setObject:v71 forKeyedSubscript:@"daysWithWristTempIn6DaysAfterCalendarOvulation"];

  v72 = [(HDMCDailyMetric *)self daysWithWristTempIn10DaysAfterOvulation];
  [v3 setObject:v72 forKeyedSubscript:@"daysWithWristTempIn10DaysAfterOvulation"];

  v73 = [(HDMCDailyMetric *)self daysWithWristTempIn45DaysBeforeFertileWindowEnd];
  [v3 setObject:v73 forKeyedSubscript:@"daysWithWristTempIn45DaysBeforeFertileWindowEnd"];

  v74 = [(HDMCDailyMetric *)self daysWithWristTempInPast45Days];
  [v3 setObject:v74 forKeyedSubscript:@"daysWithWristTempInPast45Days"];

  v75 = [(HDMCDailyMetric *)self daysWornWatchToSleepInLast45Days];
  [v3 setObject:v75 forKeyedSubscript:@"daysWornWatchToSleepInLast45Days"];

  v76 = [(HDMCDailyMetric *)self internalLiveOnCycleFactorOverrideEnabled];
  [v3 setObject:v76 forKeyedSubscript:@"internalLiveOnCycleFactorOverride"];

  v77 = [(HDMCDailyMetric *)self isSleepConfiguredToAllowWristTemperatureMeasurements];
  [v3 setObject:v77 forKeyedSubscript:@"isSleepConfiguredToAllowWristTemperatureMeasurements"];

  v78 = [(HDMCDailyMetric *)self wasDeviationDetectionDelivered];
  [v3 setObject:v78 forKeyedSubscript:@"wasCycleDeviationsDelivered"];

  v79 = [(HDMCDailyMetric *)self countConfirmedInfrequentDeviationPastYear];
  [v3 setObject:v79 forKeyedSubscript:@"countConfirmedInfrequentDeviationsPastYear"];

  v80 = [(HDMCDailyMetric *)self countConfirmedIrregularDeviationPastYear];
  [v3 setObject:v80 forKeyedSubscript:@"countConfirmedIrregularDeviationsInPastYear"];

  v81 = [(HDMCDailyMetric *)self countConfirmedProlongedDeviationPastYear];
  [v3 setObject:v81 forKeyedSubscript:@"countConfirmedProlongedDeviationsPastYear"];

  v82 = [(HDMCDailyMetric *)self countConfirmedSpottingDeviationPastYear];
  [v3 setObject:v82 forKeyedSubscript:@"countConfirmedSpottingDeviationsPastYear"];

  v83 = [(HDMCDailyMetric *)self countTotalConfirmedDeviationsPastYear];
  [v3 setObject:v83 forKeyedSubscript:@"countTotalConfirmedDeviationsPastYear"];

  v84 = [(HDMCDailyMetric *)self hasConfirmedInfrequentDeviationPastMonth];
  [v3 setObject:v84 forKeyedSubscript:@"hasConfirmedInfrequentDeviationPastMonth"];

  v85 = [(HDMCDailyMetric *)self hasConfirmedIrregularDeviationPastMonth];
  [v3 setObject:v85 forKeyedSubscript:@"hasConfirmedIrregularDeviationPastMonth"];

  v86 = [(HDMCDailyMetric *)self hasConfirmedProlongedDeviationPastMonth];
  [v3 setObject:v86 forKeyedSubscript:@"hasConfirmedProlongedDeviationPastMonth"];

  v87 = [(HDMCDailyMetric *)self hasConfirmedSpottingDeviationPastMonth];
  [v3 setObject:v87 forKeyedSubscript:@"hasConfirmedSpottingDeviationPastMonth"];

  v88 = [(HDMCDailyMetric *)self countTotalConfirmedDeviationsPastMonth];
  [v3 setObject:v88 forKeyedSubscript:@"countTotalConfirmedDeviationsPastMonth"];

  v89 = [(HDMCDailyMetric *)self countDetectedSpottingDeviationsPastYear];
  [v3 setObject:v89 forKeyedSubscript:@"countDetectedSpottingDeviationsPastYear"];

  v90 = [(HDMCDailyMetric *)self countDetectedProlongedDeviationsPastYear];
  [v3 setObject:v90 forKeyedSubscript:@"countDetectedProlongedDeviationsPastYear"];

  v91 = [(HDMCDailyMetric *)self countDetectedIrregularDeviationsInPastYear];
  [v3 setObject:v91 forKeyedSubscript:@"countDetectedIrregularDeviationsInPastYear"];

  v92 = [(HDMCDailyMetric *)self countDetectedInfrequentDeviationsPastYear];
  [v3 setObject:v92 forKeyedSubscript:@"countDetectedInfrequentDeviationsPastYear"];

  v93 = [(HDMCDailyMetric *)self countTotalDetectedDeviationsPastMonth];
  [v3 setObject:v93 forKeyedSubscript:@"countTotalDetectedDeviationsPastMonth"];

  v94 = [(HDMCDailyMetric *)self countTotalDetectedDeviationsPastYear];
  [v3 setObject:v94 forKeyedSubscript:@"countTotalDetectedDeviationsPastYear"];

  v95 = [(HDMCDailyMetric *)self daysSinceDeviationTilePosted];
  [v3 setObject:v95 forKeyedSubscript:@"daysSinceDeviationTilePosted"];

  v96 = [(HDMCDailyMetric *)self deviationDetectionProlongedEnabled];
  [v3 setObject:v96 forKeyedSubscript:@"settings_prolongedDeviationEnabled"];

  v97 = [(HDMCDailyMetric *)self deviationDetectionSpottingEnabled];
  [v3 setObject:v97 forKeyedSubscript:@"settings_spottingDeviationEnabled"];

  v98 = [(HDMCDailyMetric *)self deviationDetectionInfrequentEnabled];
  [v3 setObject:v98 forKeyedSubscript:@"settings_infrequentDeviationEnabled"];

  v99 = [(HDMCDailyMetric *)self deviationDetectionIrregularEnabled];
  [v3 setObject:v99 forKeyedSubscript:@"settings_irregularDeviationEnabled"];

  v100 = [(HDMCDailyMetric *)self isEligibleForCycleFactorsReminder];
  [v3 setObject:v100 forKeyedSubscript:@"isEligibleForCycleFactorsReminder"];

  v101 = [(HDMCDailyMetric *)self activeWatchProductType];
  [v3 setObject:v101 forKeyedSubscript:@"activeWatchProductType"];

  v102 = [(HDMCDailyMetric *)self gestationalAge];
  [v3 setObject:v102 forKeyedSubscript:@"gestationalAge"];

  v103 = [(HDMCDailyMetric *)self pregnancyModeState];
  [v3 setObject:v103 forKeyedSubscript:@"pregnancyModeState"];

  v104 = [(HDMCDailyMetric *)self hasOnboardedPregnancyMode];
  [v3 setObject:v104 forKeyedSubscript:@"hasOnboardedPregnancyMode"];

  v105 = [(HDMCDailyMetric *)self hasPregnancyInMedicalID];
  [v3 setObject:v105 forKeyedSubscript:@"hasPregnancyInMedicalID"];

  v106 = [(HDMCDailyMetric *)self weeksSinceOnboardedPregnancyMode];
  [v3 setObject:v106 forKeyedSubscript:@"weeksSinceOnboardedPregnancyMode"];

  v107 = [v3 copy];

  return v107;
}

- (id)_biologicalSexString
{
  v3 = [(HDMCDailyMetric *)self biologicalSex];

  if (v3 && (-[HDMCDailyMetric biologicalSex](self, "biologicalSex"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 integerValue], v4, v5 <= 3))
  {
    return off_27865B020[v5];
  }

  else
  {
    return 0;
  }
}

@end