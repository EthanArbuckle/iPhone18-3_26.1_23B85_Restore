@interface HKStatistics(HeadphoneSevenDayDose)
- (id)hk_hearingSevenDayDoseDateIntervalEndingBeforeDate:()HeadphoneSevenDayDose error:;
- (id)hk_hearingSevenDayDosePercentageWithError:()HeadphoneSevenDayDose;
- (id)unitTesting_hearingSevenDayDoseCategorySampleWithNow:()HeadphoneSevenDayDose includesPrunableData:error:;
@end

@implementation HKStatistics(HeadphoneSevenDayDose)

- (id)hk_hearingSevenDayDosePercentageWithError:()HeadphoneSevenDayDose
{
  v5 = MEMORY[0x277CCD028];
  averageQuantity = [self averageQuantity];
  duration = [self duration];
  v8 = [v5 _sevenDayDoseWithExposureAverageQuantity:averageQuantity duration:duration error:a3];

  return v8;
}

- (id)hk_hearingSevenDayDoseDateIntervalEndingBeforeDate:()HeadphoneSevenDayDose error:
{
  v6 = a3;
  startDate = [self startDate];
  v8 = [startDate compare:v6];

  if (v8 == 1)
  {
    goto LABEL_3;
  }

  v9 = objc_alloc(MEMORY[0x277CCA970]);
  startDate2 = [self startDate];
  v11 = [v9 initWithStartDate:startDate2 endDate:v6];

  v12 = objc_alloc(MEMORY[0x277CCA970]);
  startDate3 = [self startDate];
  endDate = [self endDate];
  v15 = [v12 initWithStartDate:startDate3 endDate:endDate];

  v16 = [v15 intersectionWithDateInterval:v11];
  hk_hearingSevenDayDoseDateIntervalClampedToMaxDuration = [v16 hk_hearingSevenDayDoseDateIntervalClampedToMaxDuration];

  if (!hk_hearingSevenDayDoseDateIntervalClampedToMaxDuration)
  {
LABEL_3:
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:{@"Unable to truncate date interval %@ to maxEndDate %@", self, v6}];
    hk_hearingSevenDayDoseDateIntervalClampedToMaxDuration = 0;
  }

  return hk_hearingSevenDayDoseDateIntervalClampedToMaxDuration;
}

- (id)unitTesting_hearingSevenDayDoseCategorySampleWithNow:()HeadphoneSevenDayDose includesPrunableData:error:
{
  v34[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  decibelAWeightedSoundPressureLevelUnit = [MEMORY[0x277CCDAB0] decibelAWeightedSoundPressureLevelUnit];
  averageQuantity = [self averageQuantity];
  v11 = [averageQuantity isCompatibleWithUnit:decibelAWeightedSoundPressureLevelUnit];

  if (v11)
  {
    secondUnit = [MEMORY[0x277CCDAB0] secondUnit];
    duration = [self duration];
    v14 = [duration isCompatibleWithUnit:secondUnit];

    if (v14)
    {
      v15 = [self hk_hearingSevenDayDoseDateIntervalEndingBeforeDate:v8 error:a5];
      if (v15)
      {
        v16 = MEMORY[0x277CCD0B0];
        v17 = HKHeadphoneAudioExposureEventType();
        startDate = [v15 startDate];
        endDate = [v15 endDate];
        v33[0] = *MEMORY[0x277CCC458];
        averageQuantity2 = [self averageQuantity];
        v34[0] = averageQuantity2;
        v33[1] = *MEMORY[0x277CCC450];
        duration2 = [self duration];
        v34[1] = duration2;
        v33[2] = *MEMORY[0x277CCE068];
        v18 = [MEMORY[0x277CCABB0] numberWithBool:a4];
        v34[2] = v18;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:3];
        v20 = [v16 categorySampleWithType:v17 value:1 startDate:startDate endDate:endDate device:0 metadata:v19];
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v24 = MEMORY[0x277CCA9B8];
      duration3 = [self duration];
      _unit = [duration3 _unit];
      [v24 hk_assignError:a5 code:3 format:{@"duration (%@) incompatible with second unit", _unit}];

      v20 = 0;
    }
  }

  else
  {
    v21 = MEMORY[0x277CCA9B8];
    averageQuantity3 = [self averageQuantity];
    _unit2 = [averageQuantity3 _unit];
    [v21 hk_assignError:a5 code:3 format:{@"averageQuantity (%@) incompatable with dBASPL unit", _unit2}];

    v20 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v20;
}

@end