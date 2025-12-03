@interface HKMCProjectionAccuracyMetric
- (HKMCProjectionAccuracyMetric)initWithOverlapMostLikelyDays:(BOOL)days overlapProjectedDays:(BOOL)projectedDays overlapNone:(BOOL)none predictionPrimarySource:(id)source totalDayRange:(int64_t)range partiallyLogged:(BOOL)logged periodPredictionEnabled:(BOOL)enabled heartRateBasedPredictionEnabled:(BOOL)self0 isLoggingMultipleDays:(BOOL)self1 daysAgoLogged:(int64_t)self2 isOngoingPeriod:(id)self3 activePairedWatchProductType:(id)self4 daysFromMostLikelyStart:(id)self5 daysFromMostLikelyEnd:(id)self6 daysFromProjectedStart:(id)self7 daysFromProjectedEnd:(id)self8 wristTemperatureBasedPredictionEnabled:(BOOL)self9 isWristTemperatureInputDelivered:(BOOL)delivered isSleepConfiguredForWristTemperatureMeasurements:(BOOL)measurements internalLiveOnCycleFactorOverrideEnabled:(BOOL)overrideEnabled;
- (NSDictionary)eventPayload;
- (id)description;
@end

@implementation HKMCProjectionAccuracyMetric

- (HKMCProjectionAccuracyMetric)initWithOverlapMostLikelyDays:(BOOL)days overlapProjectedDays:(BOOL)projectedDays overlapNone:(BOOL)none predictionPrimarySource:(id)source totalDayRange:(int64_t)range partiallyLogged:(BOOL)logged periodPredictionEnabled:(BOOL)enabled heartRateBasedPredictionEnabled:(BOOL)self0 isLoggingMultipleDays:(BOOL)self1 daysAgoLogged:(int64_t)self2 isOngoingPeriod:(id)self3 activePairedWatchProductType:(id)self4 daysFromMostLikelyStart:(id)self5 daysFromMostLikelyEnd:(id)self6 daysFromProjectedStart:(id)self7 daysFromProjectedEnd:(id)self8 wristTemperatureBasedPredictionEnabled:(BOOL)self9 isWristTemperatureInputDelivered:(BOOL)delivered isSleepConfiguredForWristTemperatureMeasurements:(BOOL)measurements internalLiveOnCycleFactorOverrideEnabled:(BOOL)overrideEnabled
{
  sourceCopy = source;
  periodCopy = period;
  typeCopy = type;
  startCopy = start;
  endCopy = end;
  projectedStartCopy = projectedStart;
  projectedEndCopy = projectedEnd;
  v39.receiver = self;
  v39.super_class = HKMCProjectionAccuracyMetric;
  v28 = [(HKMCProjectionAccuracyMetric *)&v39 init];
  v29 = v28;
  if (v28)
  {
    v28->_overlapMostLikelyDays = days;
    v28->_overlapProjectedDays = projectedDays;
    v28->_overlapNone = none;
    objc_storeStrong(&v28->_predictionPrimarySource, source);
    v29->_partiallyLogged = logged;
    v29->_periodPredictionEnabled = enabled;
    v29->_heartRateBasedPredictionEnabled = predictionEnabled;
    v29->_isLoggingMultipleDays = multipleDays;
    v29->_totalDayRange = range;
    v29->_daysAgoLogged = agoLogged;
    objc_storeStrong(&v29->_isOngoingPeriod, period);
    objc_storeStrong(&v29->_activePairedWatchProductType, type);
    objc_storeStrong(&v29->_daysFromMostLikelyStart, start);
    objc_storeStrong(&v29->_daysFromMostLikelyEnd, end);
    objc_storeStrong(&v29->_daysFromProjectedStart, projectedStart);
    objc_storeStrong(&v29->_daysFromProjectedEnd, projectedEnd);
    v29->_wristTemperatureBasedPredictionEnabled = basedPredictionEnabled;
    v29->_isWristTemperatureInputDelivered = delivered;
    v29->_isSleepConfiguredForWristTemperatureMeasurements = measurements;
    v29->_internalLiveOnCycleFactorOverrideEnabled = overrideEnabled;
  }

  return v29;
}

- (NSDictionary)eventPayload
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMCProjectionAccuracyMetric overlapMostLikelyDays](self, "overlapMostLikelyDays")}];
  [v3 setObject:v4 forKeyedSubscript:@"overlapMostLikelyDays"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMCProjectionAccuracyMetric overlapProjectedDays](self, "overlapProjectedDays")}];
  [v3 setObject:v5 forKeyedSubscript:@"overlapProjectedDays"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMCProjectionAccuracyMetric overlapNone](self, "overlapNone")}];
  [v3 setObject:v6 forKeyedSubscript:@"overlapNone"];

  predictionPrimarySource = [(HKMCProjectionAccuracyMetric *)self predictionPrimarySource];
  [v3 setObject:predictionPrimarySource forKeyedSubscript:@"predictionPrimarySource"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HKMCProjectionAccuracyMetric totalDayRange](self, "totalDayRange")}];
  [v3 setObject:v8 forKeyedSubscript:@"totalDayRange"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMCProjectionAccuracyMetric partiallyLogged](self, "partiallyLogged")}];
  [v3 setObject:v9 forKeyedSubscript:@"partiallyLogged"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMCProjectionAccuracyMetric periodPredictionEnabled](self, "periodPredictionEnabled")}];
  [v3 setObject:v10 forKeyedSubscript:@"settings_periodPredictionEnabled"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMCProjectionAccuracyMetric heartRateBasedPredictionEnabled](self, "heartRateBasedPredictionEnabled")}];
  [v3 setObject:v11 forKeyedSubscript:@"settings_heartRateBasedPredictionEnabled"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMCProjectionAccuracyMetric isLoggingMultipleDays](self, "isLoggingMultipleDays")}];
  [v3 setObject:v12 forKeyedSubscript:@"isLoggingMultipleDays"];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HKMCProjectionAccuracyMetric daysAgoLogged](self, "daysAgoLogged")}];
  [v3 setObject:v13 forKeyedSubscript:@"daysAgoLogged"];

  isOngoingPeriod = [(HKMCProjectionAccuracyMetric *)self isOngoingPeriod];
  [v3 setObject:isOngoingPeriod forKeyedSubscript:@"isOngoingPeriod"];

  activePairedWatchProductType = [(HKMCProjectionAccuracyMetric *)self activePairedWatchProductType];
  [v3 setObject:activePairedWatchProductType forKeyedSubscript:@"activePairedWatchProductType"];

  daysFromMostLikelyStart = [(HKMCProjectionAccuracyMetric *)self daysFromMostLikelyStart];
  [v3 setObject:daysFromMostLikelyStart forKeyedSubscript:@"daysFromMostLikelyStart"];

  daysFromMostLikelyEnd = [(HKMCProjectionAccuracyMetric *)self daysFromMostLikelyEnd];
  [v3 setObject:daysFromMostLikelyEnd forKeyedSubscript:@"daysFromMostLikelyEnd"];

  daysFromProjectedStart = [(HKMCProjectionAccuracyMetric *)self daysFromProjectedStart];
  [v3 setObject:daysFromProjectedStart forKeyedSubscript:@"daysFromProjectedStart"];

  daysFromProjectedEnd = [(HKMCProjectionAccuracyMetric *)self daysFromProjectedEnd];
  [v3 setObject:daysFromProjectedEnd forKeyedSubscript:@"daysFromProjectedEnd"];

  v20 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMCProjectionAccuracyMetric wristTemperatureBasedPredictionEnabled](self, "wristTemperatureBasedPredictionEnabled")}];
  [v3 setObject:v20 forKeyedSubscript:@"settings_wristTemperatureBasedPredictionEnabled"];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMCProjectionAccuracyMetric isWristTemperatureInputDelivered](self, "isWristTemperatureInputDelivered")}];
  [v3 setObject:v21 forKeyedSubscript:@"isWristTemperatureInputDelivered"];

  v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMCProjectionAccuracyMetric isSleepConfiguredForWristTemperatureMeasurements](self, "isSleepConfiguredForWristTemperatureMeasurements")}];
  [v3 setObject:v22 forKeyedSubscript:@"isSleepConfiguredForWristTemperatureMeasurements"];

  v23 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMCProjectionAccuracyMetric internalLiveOnCycleFactorOverrideEnabled](self, "internalLiveOnCycleFactorOverrideEnabled")}];
  [v3 setObject:v23 forKeyedSubscript:@"internalLiveOnCycleFactorOverride"];

  v24 = [v3 copy];

  return v24;
}

- (id)description
{
  v19 = MEMORY[0x277CCACA8];
  v18 = objc_opt_class();
  v26 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMCProjectionAccuracyMetric overlapMostLikelyDays](self, "overlapMostLikelyDays")}];
  v24 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMCProjectionAccuracyMetric overlapProjectedDays](self, "overlapProjectedDays")}];
  v25 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMCProjectionAccuracyMetric overlapNone](self, "overlapNone")}];
  predictionPrimarySource = [(HKMCProjectionAccuracyMetric *)self predictionPrimarySource];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HKMCProjectionAccuracyMetric totalDayRange](self, "totalDayRange")}];
  v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMCProjectionAccuracyMetric partiallyLogged](self, "partiallyLogged")}];
  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMCProjectionAccuracyMetric periodPredictionEnabled](self, "periodPredictionEnabled")}];
  v21 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMCProjectionAccuracyMetric heartRateBasedPredictionEnabled](self, "heartRateBasedPredictionEnabled")}];
  v20 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMCProjectionAccuracyMetric isLoggingMultipleDays](self, "isLoggingMultipleDays")}];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HKMCProjectionAccuracyMetric daysAgoLogged](self, "daysAgoLogged")}];
  isOngoingPeriod = [(HKMCProjectionAccuracyMetric *)self isOngoingPeriod];
  activePairedWatchProductType = [(HKMCProjectionAccuracyMetric *)self activePairedWatchProductType];
  daysFromMostLikelyStart = [(HKMCProjectionAccuracyMetric *)self daysFromMostLikelyStart];
  daysFromMostLikelyEnd = [(HKMCProjectionAccuracyMetric *)self daysFromMostLikelyEnd];
  daysFromProjectedStart = [(HKMCProjectionAccuracyMetric *)self daysFromProjectedStart];
  daysFromProjectedEnd = [(HKMCProjectionAccuracyMetric *)self daysFromProjectedEnd];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMCProjectionAccuracyMetric wristTemperatureBasedPredictionEnabled](self, "wristTemperatureBasedPredictionEnabled")}];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMCProjectionAccuracyMetric isWristTemperatureInputDelivered](self, "isWristTemperatureInputDelivered")}];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMCProjectionAccuracyMetric isSleepConfiguredForWristTemperatureMeasurements](self, "isSleepConfiguredForWristTemperatureMeasurements")}];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMCProjectionAccuracyMetric internalLiveOnCycleFactorOverrideEnabled](self, "internalLiveOnCycleFactorOverrideEnabled")}];
  v8 = [v19 stringWithFormat:@"<%@:%p overlapMostLikelyDays:%@ overlapProjectedDays:%@ overlapNone:%@ predictionPrimarySource:%@ totalDayRange:%@ partiallyLogged:%@ periodPredictionEnabled:%@ sensorBasedPredictionEnabled:%@ isLoggingMultipleDays:%@ daysAgoLogged:%@ isOngoingPeriod:%@ activePairedWatchProductType:%@ daysFromMostLikelyStart:%@ daysFromMostLikelyEnd:%@ daysFromProjectedStart:%@ daysFromProjectedEnd:%@ wristTemperatureBasedPredictionEnabled:%@ isWristTemperatureInputDelivered:%@ isSleepConfiguredForWristTemperatureMeasurements:%@ internalLiveOnCycleFactorOverride:%@>", v18, self, v26, v24, v25, predictionPrimarySource, v17, v22, v16, v21, v20, v13, isOngoingPeriod, activePairedWatchProductType, daysFromMostLikelyStart, daysFromMostLikelyEnd, daysFromProjectedStart, daysFromProjectedEnd, v4, v5, v6, v7];

  return v8;
}

@end