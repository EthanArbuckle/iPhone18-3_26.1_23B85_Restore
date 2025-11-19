@interface HKMCProjectionAccuracyMetric
- (HKMCProjectionAccuracyMetric)initWithOverlapMostLikelyDays:(BOOL)a3 overlapProjectedDays:(BOOL)a4 overlapNone:(BOOL)a5 predictionPrimarySource:(id)a6 totalDayRange:(int64_t)a7 partiallyLogged:(BOOL)a8 periodPredictionEnabled:(BOOL)a9 heartRateBasedPredictionEnabled:(BOOL)a10 isLoggingMultipleDays:(BOOL)a11 daysAgoLogged:(int64_t)a12 isOngoingPeriod:(id)a13 activePairedWatchProductType:(id)a14 daysFromMostLikelyStart:(id)a15 daysFromMostLikelyEnd:(id)a16 daysFromProjectedStart:(id)a17 daysFromProjectedEnd:(id)a18 wristTemperatureBasedPredictionEnabled:(BOOL)a19 isWristTemperatureInputDelivered:(BOOL)a20 isSleepConfiguredForWristTemperatureMeasurements:(BOOL)a21 internalLiveOnCycleFactorOverrideEnabled:(BOOL)a22;
- (NSDictionary)eventPayload;
- (id)description;
@end

@implementation HKMCProjectionAccuracyMetric

- (HKMCProjectionAccuracyMetric)initWithOverlapMostLikelyDays:(BOOL)a3 overlapProjectedDays:(BOOL)a4 overlapNone:(BOOL)a5 predictionPrimarySource:(id)a6 totalDayRange:(int64_t)a7 partiallyLogged:(BOOL)a8 periodPredictionEnabled:(BOOL)a9 heartRateBasedPredictionEnabled:(BOOL)a10 isLoggingMultipleDays:(BOOL)a11 daysAgoLogged:(int64_t)a12 isOngoingPeriod:(id)a13 activePairedWatchProductType:(id)a14 daysFromMostLikelyStart:(id)a15 daysFromMostLikelyEnd:(id)a16 daysFromProjectedStart:(id)a17 daysFromProjectedEnd:(id)a18 wristTemperatureBasedPredictionEnabled:(BOOL)a19 isWristTemperatureInputDelivered:(BOOL)a20 isSleepConfiguredForWristTemperatureMeasurements:(BOOL)a21 internalLiveOnCycleFactorOverrideEnabled:(BOOL)a22
{
  v23 = a6;
  v24 = a13;
  v25 = a14;
  v26 = a15;
  v27 = a16;
  v38 = a17;
  v37 = a18;
  v39.receiver = self;
  v39.super_class = HKMCProjectionAccuracyMetric;
  v28 = [(HKMCProjectionAccuracyMetric *)&v39 init];
  v29 = v28;
  if (v28)
  {
    v28->_overlapMostLikelyDays = a3;
    v28->_overlapProjectedDays = a4;
    v28->_overlapNone = a5;
    objc_storeStrong(&v28->_predictionPrimarySource, a6);
    v29->_partiallyLogged = a8;
    v29->_periodPredictionEnabled = a9;
    v29->_heartRateBasedPredictionEnabled = a10;
    v29->_isLoggingMultipleDays = a11;
    v29->_totalDayRange = a7;
    v29->_daysAgoLogged = a12;
    objc_storeStrong(&v29->_isOngoingPeriod, a13);
    objc_storeStrong(&v29->_activePairedWatchProductType, a14);
    objc_storeStrong(&v29->_daysFromMostLikelyStart, a15);
    objc_storeStrong(&v29->_daysFromMostLikelyEnd, a16);
    objc_storeStrong(&v29->_daysFromProjectedStart, a17);
    objc_storeStrong(&v29->_daysFromProjectedEnd, a18);
    v29->_wristTemperatureBasedPredictionEnabled = a19;
    v29->_isWristTemperatureInputDelivered = a20;
    v29->_isSleepConfiguredForWristTemperatureMeasurements = a21;
    v29->_internalLiveOnCycleFactorOverrideEnabled = a22;
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

  v7 = [(HKMCProjectionAccuracyMetric *)self predictionPrimarySource];
  [v3 setObject:v7 forKeyedSubscript:@"predictionPrimarySource"];

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

  v14 = [(HKMCProjectionAccuracyMetric *)self isOngoingPeriod];
  [v3 setObject:v14 forKeyedSubscript:@"isOngoingPeriod"];

  v15 = [(HKMCProjectionAccuracyMetric *)self activePairedWatchProductType];
  [v3 setObject:v15 forKeyedSubscript:@"activePairedWatchProductType"];

  v16 = [(HKMCProjectionAccuracyMetric *)self daysFromMostLikelyStart];
  [v3 setObject:v16 forKeyedSubscript:@"daysFromMostLikelyStart"];

  v17 = [(HKMCProjectionAccuracyMetric *)self daysFromMostLikelyEnd];
  [v3 setObject:v17 forKeyedSubscript:@"daysFromMostLikelyEnd"];

  v18 = [(HKMCProjectionAccuracyMetric *)self daysFromProjectedStart];
  [v3 setObject:v18 forKeyedSubscript:@"daysFromProjectedStart"];

  v19 = [(HKMCProjectionAccuracyMetric *)self daysFromProjectedEnd];
  [v3 setObject:v19 forKeyedSubscript:@"daysFromProjectedEnd"];

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
  v23 = [(HKMCProjectionAccuracyMetric *)self predictionPrimarySource];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HKMCProjectionAccuracyMetric totalDayRange](self, "totalDayRange")}];
  v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMCProjectionAccuracyMetric partiallyLogged](self, "partiallyLogged")}];
  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMCProjectionAccuracyMetric periodPredictionEnabled](self, "periodPredictionEnabled")}];
  v21 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMCProjectionAccuracyMetric heartRateBasedPredictionEnabled](self, "heartRateBasedPredictionEnabled")}];
  v20 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMCProjectionAccuracyMetric isLoggingMultipleDays](self, "isLoggingMultipleDays")}];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HKMCProjectionAccuracyMetric daysAgoLogged](self, "daysAgoLogged")}];
  v12 = [(HKMCProjectionAccuracyMetric *)self isOngoingPeriod];
  v15 = [(HKMCProjectionAccuracyMetric *)self activePairedWatchProductType];
  v11 = [(HKMCProjectionAccuracyMetric *)self daysFromMostLikelyStart];
  v14 = [(HKMCProjectionAccuracyMetric *)self daysFromMostLikelyEnd];
  v3 = [(HKMCProjectionAccuracyMetric *)self daysFromProjectedStart];
  v10 = [(HKMCProjectionAccuracyMetric *)self daysFromProjectedEnd];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMCProjectionAccuracyMetric wristTemperatureBasedPredictionEnabled](self, "wristTemperatureBasedPredictionEnabled")}];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMCProjectionAccuracyMetric isWristTemperatureInputDelivered](self, "isWristTemperatureInputDelivered")}];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMCProjectionAccuracyMetric isSleepConfiguredForWristTemperatureMeasurements](self, "isSleepConfiguredForWristTemperatureMeasurements")}];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMCProjectionAccuracyMetric internalLiveOnCycleFactorOverrideEnabled](self, "internalLiveOnCycleFactorOverrideEnabled")}];
  v8 = [v19 stringWithFormat:@"<%@:%p overlapMostLikelyDays:%@ overlapProjectedDays:%@ overlapNone:%@ predictionPrimarySource:%@ totalDayRange:%@ partiallyLogged:%@ periodPredictionEnabled:%@ sensorBasedPredictionEnabled:%@ isLoggingMultipleDays:%@ daysAgoLogged:%@ isOngoingPeriod:%@ activePairedWatchProductType:%@ daysFromMostLikelyStart:%@ daysFromMostLikelyEnd:%@ daysFromProjectedStart:%@ daysFromProjectedEnd:%@ wristTemperatureBasedPredictionEnabled:%@ isWristTemperatureInputDelivered:%@ isSleepConfiguredForWristTemperatureMeasurements:%@ internalLiveOnCycleFactorOverride:%@>", v18, self, v26, v24, v25, v23, v17, v22, v16, v21, v20, v13, v12, v15, v11, v14, v3, v10, v4, v5, v6, v7];

  return v8;
}

@end