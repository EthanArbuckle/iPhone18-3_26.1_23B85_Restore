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
  v16 = +[HKMCCycleSegment _menstruationSegmentWithDays:](HKMCCycleSegment, "_menstruationSegmentWithDays:", [self julianDayOfMenstruationStart], objc_msgSend(self, "julianDayOfMenstruationEnd") - objc_msgSend(self, "julianDayOfMenstruationStart") + 1);
  if (a4 && ([self fertilityStartJulianDay], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v18 = v17;
    fertilityEndJulianDay = [self fertilityEndJulianDay];

    if (fertilityEndJulianDay)
    {
      fertilityStartJulianDay = [self fertilityStartJulianDay];
      integerValue = [fertilityStartJulianDay integerValue];

      fertilityEndJulianDay2 = [self fertilityEndJulianDay];
      integerValue2 = [fertilityEndJulianDay2 integerValue];

      fertilityEndJulianDay = [HKMCCycleSegment _fertileWindowSegmentWithDays:integerValue, integerValue2 - integerValue + 1];
    }
  }

  else
  {
    fertilityEndJulianDay = 0;
  }

  phases = [self phases];
  v25 = [phases hk_map:&__block_literal_global_337];

  predictionPrimarySource = [self predictionPrimarySource];
  if (predictionPrimarySource == 2)
  {
    v27 = a8;
  }

  else
  {
    v27 = 0;
  }

  if (predictionPrimarySource == 3)
  {
    v28 = 2;
  }

  else
  {
    v28 = v27;
  }

  ovulationConfirmationFailure = [self ovulationConfirmationFailure];
  if (a8 && (ovulationConfirmationFailure - 1) <= 3u)
  {
    v30 = qword_25192B388[(ovulationConfirmationFailure - 1)];
  }

  else
  {
    v30 = 0;
  }

  dailyEligibleWristTemperatureCount = [self dailyEligibleWristTemperatureCount];
  if (v14)
  {
    v32 = v38;
    if (v15 && v38)
    {
      integerValue3 = [v14 integerValue];
      if (integerValue3 == 2)
      {
        v34 = a8;
      }

      else
      {
        v34 = 0;
      }

      if (integerValue3 == 3)
      {
        v28 = 2;
      }

      else
      {
        v28 = v34;
      }

      integerValue4 = [v15 integerValue];
      if (a8 && (integerValue4 - 1) <= 3u)
      {
        v30 = qword_25192B388[(integerValue4 - 1)];
      }

      else
      {
        v30 = 0;
      }

      dailyEligibleWristTemperatureCount = [v38 integerValue];
    }
  }

  else
  {
    v32 = v38;
  }

  v36 = [HKMCCycle _cycleWithMenstruationSegment:v16 fertileWindowSegment:fertilityEndJulianDay lastDayIndex:v39 ovulationConfirmationType:v28 ovulationConfirmationFailure:v30 dailyEligibleWristTemperatureCount:dailyEligibleWristTemperatureCount cycleFactors:v25];

  return v36;
}

- (id)hkmc_description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(self, "julianDayOfMenstruationStart")}];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(self, "julianDayOfMenstruationEnd")}];
  fertilityStartJulianDay = [self fertilityStartJulianDay];
  fertilityEndJulianDay = [self fertilityEndJulianDay];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "isDeterminant")}];
  v8 = [v2 stringWithFormat:@"<menstruation: %@ - %@, fertile window: %@ - %@, determinant: %@>", v3, v4, fertilityStartJulianDay, fertilityEndJulianDay, v7];

  return v8;
}

@end