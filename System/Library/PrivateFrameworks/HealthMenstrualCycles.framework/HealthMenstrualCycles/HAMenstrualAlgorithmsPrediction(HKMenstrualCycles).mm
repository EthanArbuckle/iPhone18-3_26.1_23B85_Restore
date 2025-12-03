@interface HAMenstrualAlgorithmsPrediction(HKMenstrualCycles)
- (HKMCProjection)hkmc_projectionConstrainingToMostLikelyDays:()HKMenstrualCycles overridePredictionPrimarySource:currentDayIndex:;
- (id)hkmc_description;
@end

@implementation HAMenstrualAlgorithmsPrediction(HKMenstrualCycles)

- (HKMCProjection)hkmc_projectionConstrainingToMostLikelyDays:()HKMenstrualCycles overridePredictionPrimarySource:currentDayIndex:
{
  v8 = a4;
  julianDayOfWindowStart = [self julianDayOfWindowStart];
  [self startProbabilityMean];
  v11 = v10 + julianDayOfWindowStart;
  [self startProbabilityStdDev];
  v13 = v12;
  julianDayOfWindowStart2 = [self julianDayOfWindowStart];
  [self endProbabilityMean];
  v16 = v15 + julianDayOfWindowStart2;
  [self endProbabilityStdDev];
  v18 = v17;
  julianDayOfWindowStart3 = [self julianDayOfWindowStart];
  lowRange = [self lowRange];
  [self lowRange];
  if (a3)
  {
    v22 = llround(v11);
    v23 = llround(v16 - v11) + 1;
  }

  else
  {
    v23 = v21;
    v22 = lowRange + julianDayOfWindowStart3;
  }

  v24 = HKMCPredictionPrimarySourceFromHAMenstrualAlgorithmsPredictionPrimarySource([self predictionPrimarySource]);
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

  v30 = -[HKMCProjection initWithStartMean:startStandardDeviation:endMean:endStandardDeviation:allDays:partiallyLogged:daysOffsetFromCalendarMethod:predictionPrimarySource:]([HKMCProjection alloc], "initWithStartMean:startStandardDeviation:endMean:endStandardDeviation:allDays:partiallyLogged:daysOffsetFromCalendarMethod:predictionPrimarySource:", v22, v23, [self isOngoingMenstruation], objc_msgSend(self, "daysOffsetFromCalendarMethod"), v29, v11, v13, v16, v18);

  return v30;
}

- (id)hkmc_description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(self, "julianDayOfWindowStart")}];
  [self startProbabilityMean];
  v5 = v4;
  [self startProbabilityStdDev];
  v7 = v6;
  [self endProbabilityMean];
  v9 = v8;
  [self endProbabilityStdDev];
  v11 = v10;
  v16.location = [self lowRange];
  v12 = NSStringFromRange(v16);
  v13 = [v2 stringWithFormat:@"<startDay:%@ start:%.2f±%.2f end:%.2f±%.2f lowRange:%@ isOngoing:%d>", v3, v5, v7, v9, v11, v12, objc_msgSend(self, "isOngoingMenstruation")];

  return v13;
}

@end