@interface HAMenstrualAlgorithmsHistoricalCycle(HKMenstrualCycles)
- (id)hkmc_cycleWithLastDayIndex:()HKMenstrualCycles includeFertileWindow:overridePredictionPrimarySource:overrideOvulationConfirmationFailure:overrideDailyEligibleWristTemperatureCount:useWristTemperatureInput:;
- (id)hkmc_description;
@end

@implementation HAMenstrualAlgorithmsHistoricalCycle(HKMenstrualCycles)

- (id)hkmc_cycleWithLastDayIndex:()HKMenstrualCycles includeFertileWindow:overridePredictionPrimarySource:overrideOvulationConfirmationFailure:overrideDailyEligibleWristTemperatureCount:useWristTemperatureInput:
{
  v39 = a3;
  v14 = a5;
  v15 = a6;
  v38 = a7;
  v16 = +[HKMCCycleSegment _menstruationSegmentWithDays:](HKMCCycleSegment, "_menstruationSegmentWithDays:", [a1 julianDayOfMenstruationStart], objc_msgSend(a1, "julianDayOfMenstruationEnd") - objc_msgSend(a1, "julianDayOfMenstruationStart") + 1);
  if (a4 && ([a1 fertilityStartJulianDay], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v18 = v17;
    v19 = [a1 fertilityEndJulianDay];

    if (v19)
    {
      v20 = [a1 fertilityStartJulianDay];
      v21 = [v20 integerValue];

      v22 = [a1 fertilityEndJulianDay];
      v23 = [v22 integerValue];

      v19 = [HKMCCycleSegment _fertileWindowSegmentWithDays:v21, v23 - v21 + 1];
    }
  }

  else
  {
    v19 = 0;
  }

  v24 = [a1 phases];
  v25 = [v24 hk_map:&__block_literal_global_337];

  v26 = [a1 predictionPrimarySource];
  if (v26 == 2)
  {
    v27 = a8;
  }

  else
  {
    v27 = 0;
  }

  if (v26 == 3)
  {
    v28 = 2;
  }

  else
  {
    v28 = v27;
  }

  v29 = [a1 ovulationConfirmationFailure];
  if (a8 && (v29 - 1) <= 3u)
  {
    v30 = qword_25192B388[(v29 - 1)];
  }

  else
  {
    v30 = 0;
  }

  v31 = [a1 dailyEligibleWristTemperatureCount];
  if (v14)
  {
    v32 = v38;
    if (v15 && v38)
    {
      v33 = [v14 integerValue];
      if (v33 == 2)
      {
        v34 = a8;
      }

      else
      {
        v34 = 0;
      }

      if (v33 == 3)
      {
        v28 = 2;
      }

      else
      {
        v28 = v34;
      }

      v35 = [v15 integerValue];
      if (a8 && (v35 - 1) <= 3u)
      {
        v30 = qword_25192B388[(v35 - 1)];
      }

      else
      {
        v30 = 0;
      }

      v31 = [v38 integerValue];
    }
  }

  else
  {
    v32 = v38;
  }

  v36 = [HKMCCycle _cycleWithMenstruationSegment:v16 fertileWindowSegment:v19 lastDayIndex:v39 ovulationConfirmationType:v28 ovulationConfirmationFailure:v30 dailyEligibleWristTemperatureCount:v31 cycleFactors:v25];

  return v36;
}

- (id)hkmc_description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a1, "julianDayOfMenstruationStart")}];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a1, "julianDayOfMenstruationEnd")}];
  v5 = [a1 fertilityStartJulianDay];
  v6 = [a1 fertilityEndJulianDay];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "isDeterminant")}];
  v8 = [v2 stringWithFormat:@"<menstruation: %@ - %@, fertile window: %@ - %@, determinant: %@>", v3, v4, v5, v6, v7];

  return v8;
}

@end