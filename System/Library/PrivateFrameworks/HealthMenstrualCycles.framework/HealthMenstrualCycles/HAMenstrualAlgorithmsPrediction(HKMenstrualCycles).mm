@interface HAMenstrualAlgorithmsPrediction(HKMenstrualCycles)
- (HKMCProjection)hkmc_projectionConstrainingToMostLikelyDays:()HKMenstrualCycles overridePredictionPrimarySource:currentDayIndex:;
- (id)hkmc_description;
@end

@implementation HAMenstrualAlgorithmsPrediction(HKMenstrualCycles)

- (HKMCProjection)hkmc_projectionConstrainingToMostLikelyDays:()HKMenstrualCycles overridePredictionPrimarySource:currentDayIndex:
{
  v8 = a4;
  v9 = [a1 julianDayOfWindowStart];
  [a1 startProbabilityMean];
  v11 = v10 + v9;
  [a1 startProbabilityStdDev];
  v13 = v12;
  v14 = [a1 julianDayOfWindowStart];
  [a1 endProbabilityMean];
  v16 = v15 + v14;
  [a1 endProbabilityStdDev];
  v18 = v17;
  v19 = [a1 julianDayOfWindowStart];
  v20 = [a1 lowRange];
  [a1 lowRange];
  if (a3)
  {
    v22 = llround(v11);
    v23 = llround(v16 - v11) + 1;
  }

  else
  {
    v23 = v21;
    v22 = v20 + v19;
  }

  v24 = HKMCPredictionPrimarySourceFromHAMenstrualAlgorithmsPredictionPrimarySource([a1 predictionPrimarySource]);
  if (v8)
  {
    v25 = HKMCPredictionPrimarySourceFromHAMenstrualAlgorithmsPredictionPrimarySource([v8 integerValue]);
    v26 = v22 + v23 + 2;
    if (v23 <= 0)
    {
      v26 = 0x8000000000000002;
    }

    v27 = v26 <= a5;
    v28 = 3;
    if (!v27)
    {
      v28 = 1;
    }

    if (v25 == 3)
    {
      v29 = v28;
    }

    else
    {
      v29 = v25;
    }
  }

  else
  {
    v29 = v24;
  }

  v30 = -[HKMCProjection initWithStartMean:startStandardDeviation:endMean:endStandardDeviation:allDays:partiallyLogged:daysOffsetFromCalendarMethod:predictionPrimarySource:]([HKMCProjection alloc], "initWithStartMean:startStandardDeviation:endMean:endStandardDeviation:allDays:partiallyLogged:daysOffsetFromCalendarMethod:predictionPrimarySource:", v22, v23, [a1 isOngoingMenstruation], objc_msgSend(a1, "daysOffsetFromCalendarMethod"), v29, v11, v13, v16, v18);

  return v30;
}

- (id)hkmc_description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a1, "julianDayOfWindowStart")}];
  [a1 startProbabilityMean];
  v5 = v4;
  [a1 startProbabilityStdDev];
  v7 = v6;
  [a1 endProbabilityMean];
  v9 = v8;
  [a1 endProbabilityStdDev];
  v11 = v10;
  v16.location = [a1 lowRange];
  v12 = NSStringFromRange(v16);
  v13 = [v2 stringWithFormat:@"<startDay:%@ start:%.2f±%.2f end:%.2f±%.2f lowRange:%@ isOngoing:%d>", v3, v5, v7, v9, v11, v12, objc_msgSend(a1, "isOngoingMenstruation")];

  return v13;
}

@end