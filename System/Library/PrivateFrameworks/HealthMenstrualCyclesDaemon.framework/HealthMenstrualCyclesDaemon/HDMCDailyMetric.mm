@interface HDMCDailyMetric
- (HDMCDailyMetric)initWithImproveHealthAndActivityAllowed:(BOOL)allowed;
- (NSDictionary)eventPayload;
- (id)_biologicalSexString;
@end

@implementation HDMCDailyMetric

- (HDMCDailyMetric)initWithImproveHealthAndActivityAllowed:(BOOL)allowed
{
  v5.receiver = self;
  v5.super_class = HDMCDailyMetric;
  result = [(HDMCDailyMetric *)&v5 init];
  if (result)
  {
    result->_improveHealthAndActivityAllowed = allowed;
  }

  return result;
}

- (NSDictionary)eventPayload
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(HDMCDailyMetric *)self age];
  [v3 setObject:v4 forKeyedSubscript:@"age"];

  _biologicalSexString = [(HDMCDailyMetric *)self _biologicalSexString];
  [v3 setObject:_biologicalSexString forKeyedSubscript:@"biologicalSex"];

  countPairediPhone = [(HDMCDailyMetric *)self countPairediPhone];
  [v3 setObject:countPairediPhone forKeyedSubscript:*MEMORY[0x277CCB7D8]];

  countPairedWatch = [(HDMCDailyMetric *)self countPairedWatch];
  [v3 setObject:countPairedWatch forKeyedSubscript:*MEMORY[0x277CCB7E8]];

  countPairediPad = [(HDMCDailyMetric *)self countPairediPad];
  [v3 setObject:countPairediPad forKeyedSubscript:*MEMORY[0x277CCB7F0]];

  countPairedVisionPro = [(HDMCDailyMetric *)self countPairedVisionPro];
  [v3 setObject:countPairedVisionPro forKeyedSubscript:*MEMORY[0x277CCB7E0]];

  isSleepScheduleEnabled = [(HDMCDailyMetric *)self isSleepScheduleEnabled];
  [v3 setObject:isSleepScheduleEnabled forKeyedSubscript:@"isSleepScheduleEnabled"];

  isSleepScreenEnabled = [(HDMCDailyMetric *)self isSleepScreenEnabled];
  [v3 setObject:isSleepScreenEnabled forKeyedSubscript:@"isSleepScreenEnabled"];

  cycleLengthVariationLowerPercentile = [(HDMCDailyMetric *)self cycleLengthVariationLowerPercentile];
  [v3 setObject:cycleLengthVariationLowerPercentile forKeyedSubscript:@"cycleLengthVariation15thPercentile"];

  cycleLengthVariationUpperPercentile = [(HDMCDailyMetric *)self cycleLengthVariationUpperPercentile];
  [v3 setObject:cycleLengthVariationUpperPercentile forKeyedSubscript:@"cycleLengthVariation85thPercentile"];

  hasCompatiblePairedAppleWatch = [(HDMCDailyMetric *)self hasCompatiblePairedAppleWatch];
  [v3 setObject:hasCompatiblePairedAppleWatch forKeyedSubscript:@"hasCompatiblePairedAppleWatch"];

  hasWristTemperatureCompatiblePairedWatch = [(HDMCDailyMetric *)self hasWristTemperatureCompatiblePairedWatch];
  [v3 setObject:hasWristTemperatureCompatiblePairedWatch forKeyedSubscript:@"hasWristTemperatureCompatiblePairedWatch"];

  hasFirstPartySleepSamplesPast48Hours = [(HDMCDailyMetric *)self hasFirstPartySleepSamplesPast48Hours];
  [v3 setObject:hasFirstPartySleepSamplesPast48Hours forKeyedSubscript:@"hasFirstPartySleepSamplesPast48Hours"];

  hasSameAlgorithmVersionOnPairedWatch = [(HDMCDailyMetric *)self hasSameAlgorithmVersionOnPairedWatch];
  [v3 setObject:hasSameAlgorithmVersionOnPairedWatch forKeyedSubscript:@"hasSameAlgorithmVersionOnPairedWatch"];

  hasSleepSamplesPast48Hours = [(HDMCDailyMetric *)self hasSleepSamplesPast48Hours];
  [v3 setObject:hasSleepSamplesPast48Hours forKeyedSubscript:@"hasSleepSamplesPast48Hours"];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[HDMCDailyMetric isImproveHealthAndActivityAllowed](self, "isImproveHealthAndActivityAllowed")}];
  [v3 setObject:v19 forKeyedSubscript:@"isImproveHealthAndActivityAllowed"];

  areHealthNotificationsAuthorized = [(HDMCDailyMetric *)self areHealthNotificationsAuthorized];
  [v3 setObject:areHealthNotificationsAuthorized forKeyedSubscript:@"areHealthNotificationsAuthorized"];

  isOnboardingCompleted = [(HDMCDailyMetric *)self isOnboardingCompleted];
  [v3 setObject:isOnboardingCompleted forKeyedSubscript:@"isOnboarded"];

  numberOfCyclesSinceLastDayOfLogging = [(HDMCDailyMetric *)self numberOfCyclesSinceLastDayOfLogging];
  [v3 setObject:numberOfCyclesSinceLastDayOfLogging forKeyedSubscript:@"numberOfCyclesSinceLastDayOfLogging"];

  numberOfCyclesSinceLastDayOfLoggingInCycleTracking = [(HDMCDailyMetric *)self numberOfCyclesSinceLastDayOfLoggingInCycleTracking];
  [v3 setObject:numberOfCyclesSinceLastDayOfLoggingInCycleTracking forKeyedSubscript:@"numberOfCyclesSinceLastDayOfLoggingInCycleTracking"];

  numberOfDailyAwakeHeartRateStatisticsForPast100Days = [(HDMCDailyMetric *)self numberOfDailyAwakeHeartRateStatisticsForPast100Days];
  [v3 setObject:numberOfDailyAwakeHeartRateStatisticsForPast100Days forKeyedSubscript:@"numberOfDailyAwakeHeartRateStatisticsForPast100Days"];

  numberOfDailySleepHeartRateStatisticsForPast100Days = [(HDMCDailyMetric *)self numberOfDailySleepHeartRateStatisticsForPast100Days];
  [v3 setObject:numberOfDailySleepHeartRateStatisticsForPast100Days forKeyedSubscript:@"numberOfDailySleepHeartRateStatisticsForPast100Days"];

  numberOfDaysSinceLastFiredUpdateFertileWindowNotification = [(HDMCDailyMetric *)self numberOfDaysSinceLastFiredUpdateFertileWindowNotification];
  [v3 setObject:numberOfDaysSinceLastFiredUpdateFertileWindowNotification forKeyedSubscript:@"numberOfDaysSinceLastFiredUpdateFertileWindowNotification"];

  onboardedVersion = [(HDMCDailyMetric *)self onboardedVersion];
  [v3 setObject:onboardedVersion forKeyedSubscript:@"onboardedVersion"];

  isOngoingContraception = [(HDMCDailyMetric *)self isOngoingContraception];
  [v3 setObject:isOngoingContraception forKeyedSubscript:@"ongoingContraception"];

  isOngoingLactation = [(HDMCDailyMetric *)self isOngoingLactation];
  [v3 setObject:isOngoingLactation forKeyedSubscript:@"ongoingLactation"];

  isOngoingPregnancy = [(HDMCDailyMetric *)self isOngoingPregnancy];
  [v3 setObject:isOngoingPregnancy forKeyedSubscript:@"ongoingPregnancy"];

  fertilityNotificationEnabled = [(HDMCDailyMetric *)self fertilityNotificationEnabled];
  [v3 setObject:fertilityNotificationEnabled forKeyedSubscript:@"settings_fertilityNotificationEnabled"];

  fertilityPredictionEnabled = [(HDMCDailyMetric *)self fertilityPredictionEnabled];
  [v3 setObject:fertilityPredictionEnabled forKeyedSubscript:@"settings_fertilityPredictionEnabled"];

  logBasalBodyTemperatureEnabled = [(HDMCDailyMetric *)self logBasalBodyTemperatureEnabled];
  [v3 setObject:logBasalBodyTemperatureEnabled forKeyedSubscript:@"settings_logBasalBodyTemperatureEnabled"];

  logCervicalMucusQualityEnabled = [(HDMCDailyMetric *)self logCervicalMucusQualityEnabled];
  [v3 setObject:logCervicalMucusQualityEnabled forKeyedSubscript:@"settings_logCervicalMucusQualityEnabled"];

  logFactorsEnabled = [(HDMCDailyMetric *)self logFactorsEnabled];
  [v3 setObject:logFactorsEnabled forKeyedSubscript:@"settings_logFactorsEnabled"];

  logOvulationTestResultEnabled = [(HDMCDailyMetric *)self logOvulationTestResultEnabled];
  [v3 setObject:logOvulationTestResultEnabled forKeyedSubscript:@"settings_logOvulationTestResultEnabled"];

  logPregnancyTestResultEnabled = [(HDMCDailyMetric *)self logPregnancyTestResultEnabled];
  [v3 setObject:logPregnancyTestResultEnabled forKeyedSubscript:@"settings_logPregnancyTestResultEnabled"];

  logProgesteroneTestResultEnabled = [(HDMCDailyMetric *)self logProgesteroneTestResultEnabled];
  [v3 setObject:logProgesteroneTestResultEnabled forKeyedSubscript:@"settings_logProgesteroneTestResultEnabled"];

  logSexualActivityEnabled = [(HDMCDailyMetric *)self logSexualActivityEnabled];
  [v3 setObject:logSexualActivityEnabled forKeyedSubscript:@"settings_logSexualActivityEnabled"];

  logSpottingEnabled = [(HDMCDailyMetric *)self logSpottingEnabled];
  [v3 setObject:logSpottingEnabled forKeyedSubscript:@"settings_logSpottingEnabled"];

  logSymptomsEnabled = [(HDMCDailyMetric *)self logSymptomsEnabled];
  [v3 setObject:logSymptomsEnabled forKeyedSubscript:@"settings_logSymptomsEnabled"];

  periodNotificationEnabled = [(HDMCDailyMetric *)self periodNotificationEnabled];
  [v3 setObject:periodNotificationEnabled forKeyedSubscript:@"settings_periodNotificationEnabled"];

  periodPredictionEnabled = [(HDMCDailyMetric *)self periodPredictionEnabled];
  [v3 setObject:periodPredictionEnabled forKeyedSubscript:@"settings_periodPredictionEnabled"];

  sensorBasedPredictionEnabled = [(HDMCDailyMetric *)self sensorBasedPredictionEnabled];
  [v3 setObject:sensorBasedPredictionEnabled forKeyedSubscript:@"settings_sensorBasedPredictionEnabled"];

  wristTemperatureBasedPredictionEnabled = [(HDMCDailyMetric *)self wristTemperatureBasedPredictionEnabled];
  [v3 setObject:wristTemperatureBasedPredictionEnabled forKeyedSubscript:@"settings_wristTemperatureBasedPredictionEnabled"];

  wasHeartRateInputDelivered = [(HDMCDailyMetric *)self wasHeartRateInputDelivered];
  [v3 setObject:wasHeartRateInputDelivered forKeyedSubscript:@"wasHeartRateInputDelivered"];

  heartRateInputDeliveryCountryCode = [(HDMCDailyMetric *)self heartRateInputDeliveryCountryCode];
  [v3 setObject:heartRateInputDeliveryCountryCode forKeyedSubscript:@"heartRateInputDeliveryCountryCode"];

  wasWristTemperatureInputDelivered = [(HDMCDailyMetric *)self wasWristTemperatureInputDelivered];
  [v3 setObject:wasWristTemperatureInputDelivered forKeyedSubscript:@"wasWristTemperatureInputDelivered"];

  wristTemperatureInputDeliveryCountryCode = [(HDMCDailyMetric *)self wristTemperatureInputDeliveryCountryCode];
  [v3 setObject:wristTemperatureInputDeliveryCountryCode forKeyedSubscript:@"wristTemperatureInputDeliveryCountryCode"];

  weeksSinceOnboarded = [(HDMCDailyMetric *)self weeksSinceOnboarded];
  [v3 setObject:weeksSinceOnboarded forKeyedSubscript:@"weeksSinceOnboarded"];

  weeksSinceOnboarded2 = [(HDMCDailyMetric *)self weeksSinceOnboarded];
  [v3 setObject:weeksSinceOnboarded2 forKeyedSubscript:@"weeksSinceOnboardedV2"];

  weeksSinceOnboardedWristTemperatureOvulationPrediction = [(HDMCDailyMetric *)self weeksSinceOnboardedWristTemperatureOvulationPrediction];
  [v3 setObject:weeksSinceOnboardedWristTemperatureOvulationPrediction forKeyedSubscript:@"weeksSinceOnboardedWristTempOvulationPrediction"];

  countWatchesWithWristTempMeasurementDataInLast45Days = [(HDMCDailyMetric *)self countWatchesWithWristTempMeasurementDataInLast45Days];
  [v3 setObject:countWatchesWithWristTempMeasurementDataInLast45Days forKeyedSubscript:@"countWatchesWithWristTempMeasurementDataInLast45Days"];

  countWristTempEligibleHistoricalCycles = [(HDMCDailyMetric *)self countWristTempEligibleHistoricalCycles];
  [v3 setObject:countWristTempEligibleHistoricalCycles forKeyedSubscript:@"countWristTempEligibleHistoricalCycles"];

  countWristTempEligibleHistoricalCycles_ConfirmedOPK = [(HDMCDailyMetric *)self countWristTempEligibleHistoricalCycles_ConfirmedOPK];
  [v3 setObject:countWristTempEligibleHistoricalCycles_ConfirmedOPK forKeyedSubscript:@"countWristTempEligibleHistoricalCycles_ConfirmedOPK"];

  countWristTempEligibleHistoricalCycles_ConfirmedWristTemp = [(HDMCDailyMetric *)self countWristTempEligibleHistoricalCycles_ConfirmedWristTemp];
  [v3 setObject:countWristTempEligibleHistoricalCycles_ConfirmedWristTemp forKeyedSubscript:@"countWristTempEligibleHistoricalCycles_ConfirmedWristTemp"];

  countWristTempEligibleHistoricalCycles_FailedAvailability = [(HDMCDailyMetric *)self countWristTempEligibleHistoricalCycles_FailedAvailability];
  [v3 setObject:countWristTempEligibleHistoricalCycles_FailedAvailability forKeyedSubscript:@"countWristTempEligibleHistoricalCycles_FailedAvailability"];

  countWristTempEligibleHistoricalCycles_FailedNoise = [(HDMCDailyMetric *)self countWristTempEligibleHistoricalCycles_FailedNoise];
  [v3 setObject:countWristTempEligibleHistoricalCycles_FailedNoise forKeyedSubscript:@"countWristTempEligibleHistoricalCycles_FailedNoise"];

  countWristTempEligibleHistoricalCycles_FailedOther = [(HDMCDailyMetric *)self countWristTempEligibleHistoricalCycles_FailedOther];
  [v3 setObject:countWristTempEligibleHistoricalCycles_FailedOther forKeyedSubscript:@"countWristTempEligibleHistoricalCycles_FailedOther"];

  daysBeforeFertileWindowEnd = [(HDMCDailyMetric *)self daysBeforeFertileWindowEnd];
  [v3 setObject:daysBeforeFertileWindowEnd forKeyedSubscript:@"daysBeforeFertileWindowEnd"];

  daysBeforeMostLikelyPeriodPredictionStart = [(HDMCDailyMetric *)self daysBeforeMostLikelyPeriodPredictionStart];
  [v3 setObject:daysBeforeMostLikelyPeriodPredictionStart forKeyedSubscript:@"daysBeforeMostLikelyPeriodPredictionStart"];

  daysFertileWindowShifted = [(HDMCDailyMetric *)self daysFertileWindowShifted];
  [v3 setObject:daysFertileWindowShifted forKeyedSubscript:@"daysFertileWindowShifted"];

  daysFirstPeriodPredictionShifted = [(HDMCDailyMetric *)self daysFirstPeriodPredictionShifted];
  [v3 setObject:daysFirstPeriodPredictionShifted forKeyedSubscript:@"daysFirstPeriodPredictionShifted"];

  daysSinceCycleStart = [(HDMCDailyMetric *)self daysSinceCycleStart];
  [v3 setObject:daysSinceCycleStart forKeyedSubscript:@"daysSinceCycleStart"];

  didFirstPeriodPredictionShift = [(HDMCDailyMetric *)self didFirstPeriodPredictionShift];
  [v3 setObject:didFirstPeriodPredictionShift forKeyedSubscript:@"didFirstPeriodPredictionShift"];

  predictionPrimarySourceTypeFertileWindow = [(HDMCDailyMetric *)self predictionPrimarySourceTypeFertileWindow];
  [v3 setObject:predictionPrimarySourceTypeFertileWindow forKeyedSubscript:@"predictionPrimarySourceTypeFertileWindow"];

  predictionPrimarySourceTypeFirstPeriodPrediction = [(HDMCDailyMetric *)self predictionPrimarySourceTypeFirstPeriodPrediction];
  [v3 setObject:predictionPrimarySourceTypeFirstPeriodPrediction forKeyedSubscript:@"predictionPrimarySourceTypeFirstPeriodPrediction"];

  daysWithWristTempIn10DaysBeforeCalendarOvulation = [(HDMCDailyMetric *)self daysWithWristTempIn10DaysBeforeCalendarOvulation];
  [v3 setObject:daysWithWristTempIn10DaysBeforeCalendarOvulation forKeyedSubscript:@"daysWithWristTempIn10DaysBeforeCalendarOvulation"];

  daysWithWristTempIn6DaysBeforeCalendarOvulation = [(HDMCDailyMetric *)self daysWithWristTempIn6DaysBeforeCalendarOvulation];
  [v3 setObject:daysWithWristTempIn6DaysBeforeCalendarOvulation forKeyedSubscript:@"daysWithWristTempIn6DaysBeforeCalendarOvulation"];

  daysWithWristTempIn3DaysAfterCalendarOvulation = [(HDMCDailyMetric *)self daysWithWristTempIn3DaysAfterCalendarOvulation];
  [v3 setObject:daysWithWristTempIn3DaysAfterCalendarOvulation forKeyedSubscript:@"daysWithWristTempIn3DaysAfterCalendarOvulation"];

  daysWithWristTempIn6DaysAfterCalendarOvulation = [(HDMCDailyMetric *)self daysWithWristTempIn6DaysAfterCalendarOvulation];
  [v3 setObject:daysWithWristTempIn6DaysAfterCalendarOvulation forKeyedSubscript:@"daysWithWristTempIn6DaysAfterCalendarOvulation"];

  daysWithWristTempIn10DaysAfterOvulation = [(HDMCDailyMetric *)self daysWithWristTempIn10DaysAfterOvulation];
  [v3 setObject:daysWithWristTempIn10DaysAfterOvulation forKeyedSubscript:@"daysWithWristTempIn10DaysAfterOvulation"];

  daysWithWristTempIn45DaysBeforeFertileWindowEnd = [(HDMCDailyMetric *)self daysWithWristTempIn45DaysBeforeFertileWindowEnd];
  [v3 setObject:daysWithWristTempIn45DaysBeforeFertileWindowEnd forKeyedSubscript:@"daysWithWristTempIn45DaysBeforeFertileWindowEnd"];

  daysWithWristTempInPast45Days = [(HDMCDailyMetric *)self daysWithWristTempInPast45Days];
  [v3 setObject:daysWithWristTempInPast45Days forKeyedSubscript:@"daysWithWristTempInPast45Days"];

  daysWornWatchToSleepInLast45Days = [(HDMCDailyMetric *)self daysWornWatchToSleepInLast45Days];
  [v3 setObject:daysWornWatchToSleepInLast45Days forKeyedSubscript:@"daysWornWatchToSleepInLast45Days"];

  internalLiveOnCycleFactorOverrideEnabled = [(HDMCDailyMetric *)self internalLiveOnCycleFactorOverrideEnabled];
  [v3 setObject:internalLiveOnCycleFactorOverrideEnabled forKeyedSubscript:@"internalLiveOnCycleFactorOverride"];

  isSleepConfiguredToAllowWristTemperatureMeasurements = [(HDMCDailyMetric *)self isSleepConfiguredToAllowWristTemperatureMeasurements];
  [v3 setObject:isSleepConfiguredToAllowWristTemperatureMeasurements forKeyedSubscript:@"isSleepConfiguredToAllowWristTemperatureMeasurements"];

  wasDeviationDetectionDelivered = [(HDMCDailyMetric *)self wasDeviationDetectionDelivered];
  [v3 setObject:wasDeviationDetectionDelivered forKeyedSubscript:@"wasCycleDeviationsDelivered"];

  countConfirmedInfrequentDeviationPastYear = [(HDMCDailyMetric *)self countConfirmedInfrequentDeviationPastYear];
  [v3 setObject:countConfirmedInfrequentDeviationPastYear forKeyedSubscript:@"countConfirmedInfrequentDeviationsPastYear"];

  countConfirmedIrregularDeviationPastYear = [(HDMCDailyMetric *)self countConfirmedIrregularDeviationPastYear];
  [v3 setObject:countConfirmedIrregularDeviationPastYear forKeyedSubscript:@"countConfirmedIrregularDeviationsInPastYear"];

  countConfirmedProlongedDeviationPastYear = [(HDMCDailyMetric *)self countConfirmedProlongedDeviationPastYear];
  [v3 setObject:countConfirmedProlongedDeviationPastYear forKeyedSubscript:@"countConfirmedProlongedDeviationsPastYear"];

  countConfirmedSpottingDeviationPastYear = [(HDMCDailyMetric *)self countConfirmedSpottingDeviationPastYear];
  [v3 setObject:countConfirmedSpottingDeviationPastYear forKeyedSubscript:@"countConfirmedSpottingDeviationsPastYear"];

  countTotalConfirmedDeviationsPastYear = [(HDMCDailyMetric *)self countTotalConfirmedDeviationsPastYear];
  [v3 setObject:countTotalConfirmedDeviationsPastYear forKeyedSubscript:@"countTotalConfirmedDeviationsPastYear"];

  hasConfirmedInfrequentDeviationPastMonth = [(HDMCDailyMetric *)self hasConfirmedInfrequentDeviationPastMonth];
  [v3 setObject:hasConfirmedInfrequentDeviationPastMonth forKeyedSubscript:@"hasConfirmedInfrequentDeviationPastMonth"];

  hasConfirmedIrregularDeviationPastMonth = [(HDMCDailyMetric *)self hasConfirmedIrregularDeviationPastMonth];
  [v3 setObject:hasConfirmedIrregularDeviationPastMonth forKeyedSubscript:@"hasConfirmedIrregularDeviationPastMonth"];

  hasConfirmedProlongedDeviationPastMonth = [(HDMCDailyMetric *)self hasConfirmedProlongedDeviationPastMonth];
  [v3 setObject:hasConfirmedProlongedDeviationPastMonth forKeyedSubscript:@"hasConfirmedProlongedDeviationPastMonth"];

  hasConfirmedSpottingDeviationPastMonth = [(HDMCDailyMetric *)self hasConfirmedSpottingDeviationPastMonth];
  [v3 setObject:hasConfirmedSpottingDeviationPastMonth forKeyedSubscript:@"hasConfirmedSpottingDeviationPastMonth"];

  countTotalConfirmedDeviationsPastMonth = [(HDMCDailyMetric *)self countTotalConfirmedDeviationsPastMonth];
  [v3 setObject:countTotalConfirmedDeviationsPastMonth forKeyedSubscript:@"countTotalConfirmedDeviationsPastMonth"];

  countDetectedSpottingDeviationsPastYear = [(HDMCDailyMetric *)self countDetectedSpottingDeviationsPastYear];
  [v3 setObject:countDetectedSpottingDeviationsPastYear forKeyedSubscript:@"countDetectedSpottingDeviationsPastYear"];

  countDetectedProlongedDeviationsPastYear = [(HDMCDailyMetric *)self countDetectedProlongedDeviationsPastYear];
  [v3 setObject:countDetectedProlongedDeviationsPastYear forKeyedSubscript:@"countDetectedProlongedDeviationsPastYear"];

  countDetectedIrregularDeviationsInPastYear = [(HDMCDailyMetric *)self countDetectedIrregularDeviationsInPastYear];
  [v3 setObject:countDetectedIrregularDeviationsInPastYear forKeyedSubscript:@"countDetectedIrregularDeviationsInPastYear"];

  countDetectedInfrequentDeviationsPastYear = [(HDMCDailyMetric *)self countDetectedInfrequentDeviationsPastYear];
  [v3 setObject:countDetectedInfrequentDeviationsPastYear forKeyedSubscript:@"countDetectedInfrequentDeviationsPastYear"];

  countTotalDetectedDeviationsPastMonth = [(HDMCDailyMetric *)self countTotalDetectedDeviationsPastMonth];
  [v3 setObject:countTotalDetectedDeviationsPastMonth forKeyedSubscript:@"countTotalDetectedDeviationsPastMonth"];

  countTotalDetectedDeviationsPastYear = [(HDMCDailyMetric *)self countTotalDetectedDeviationsPastYear];
  [v3 setObject:countTotalDetectedDeviationsPastYear forKeyedSubscript:@"countTotalDetectedDeviationsPastYear"];

  daysSinceDeviationTilePosted = [(HDMCDailyMetric *)self daysSinceDeviationTilePosted];
  [v3 setObject:daysSinceDeviationTilePosted forKeyedSubscript:@"daysSinceDeviationTilePosted"];

  deviationDetectionProlongedEnabled = [(HDMCDailyMetric *)self deviationDetectionProlongedEnabled];
  [v3 setObject:deviationDetectionProlongedEnabled forKeyedSubscript:@"settings_prolongedDeviationEnabled"];

  deviationDetectionSpottingEnabled = [(HDMCDailyMetric *)self deviationDetectionSpottingEnabled];
  [v3 setObject:deviationDetectionSpottingEnabled forKeyedSubscript:@"settings_spottingDeviationEnabled"];

  deviationDetectionInfrequentEnabled = [(HDMCDailyMetric *)self deviationDetectionInfrequentEnabled];
  [v3 setObject:deviationDetectionInfrequentEnabled forKeyedSubscript:@"settings_infrequentDeviationEnabled"];

  deviationDetectionIrregularEnabled = [(HDMCDailyMetric *)self deviationDetectionIrregularEnabled];
  [v3 setObject:deviationDetectionIrregularEnabled forKeyedSubscript:@"settings_irregularDeviationEnabled"];

  isEligibleForCycleFactorsReminder = [(HDMCDailyMetric *)self isEligibleForCycleFactorsReminder];
  [v3 setObject:isEligibleForCycleFactorsReminder forKeyedSubscript:@"isEligibleForCycleFactorsReminder"];

  activeWatchProductType = [(HDMCDailyMetric *)self activeWatchProductType];
  [v3 setObject:activeWatchProductType forKeyedSubscript:@"activeWatchProductType"];

  gestationalAge = [(HDMCDailyMetric *)self gestationalAge];
  [v3 setObject:gestationalAge forKeyedSubscript:@"gestationalAge"];

  pregnancyModeState = [(HDMCDailyMetric *)self pregnancyModeState];
  [v3 setObject:pregnancyModeState forKeyedSubscript:@"pregnancyModeState"];

  hasOnboardedPregnancyMode = [(HDMCDailyMetric *)self hasOnboardedPregnancyMode];
  [v3 setObject:hasOnboardedPregnancyMode forKeyedSubscript:@"hasOnboardedPregnancyMode"];

  hasPregnancyInMedicalID = [(HDMCDailyMetric *)self hasPregnancyInMedicalID];
  [v3 setObject:hasPregnancyInMedicalID forKeyedSubscript:@"hasPregnancyInMedicalID"];

  weeksSinceOnboardedPregnancyMode = [(HDMCDailyMetric *)self weeksSinceOnboardedPregnancyMode];
  [v3 setObject:weeksSinceOnboardedPregnancyMode forKeyedSubscript:@"weeksSinceOnboardedPregnancyMode"];

  v107 = [v3 copy];

  return v107;
}

- (id)_biologicalSexString
{
  biologicalSex = [(HDMCDailyMetric *)self biologicalSex];

  if (biologicalSex && (-[HDMCDailyMetric biologicalSex](self, "biologicalSex"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 integerValue], v4, v5 <= 3))
  {
    return off_27865B020[v5];
  }

  else
  {
    return 0;
  }
}

@end