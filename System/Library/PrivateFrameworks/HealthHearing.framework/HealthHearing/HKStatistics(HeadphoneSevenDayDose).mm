@interface HKStatistics(HeadphoneSevenDayDose)
- (id)hk_hearingSevenDayDoseDateIntervalEndingBeforeDate:()HeadphoneSevenDayDose error:;
- (id)hk_hearingSevenDayDosePercentageWithError:()HeadphoneSevenDayDose;
- (id)unitTesting_hearingSevenDayDoseCategorySampleWithNow:()HeadphoneSevenDayDose includesPrunableData:error:;
@end

@implementation HKStatistics(HeadphoneSevenDayDose)

- (id)hk_hearingSevenDayDosePercentageWithError:()HeadphoneSevenDayDose
{
  v5 = MEMORY[0x277CCD028];
  v6 = [a1 averageQuantity];
  v7 = [a1 duration];
  v8 = [v5 _sevenDayDoseWithExposureAverageQuantity:v6 duration:v7 error:a3];

  return v8;
}

- (id)hk_hearingSevenDayDoseDateIntervalEndingBeforeDate:()HeadphoneSevenDayDose error:
{
  v6 = a3;
  v7 = [a1 startDate];
  v8 = [v7 compare:v6];

  if (v8 == 1)
  {
    goto LABEL_3;
  }

  v9 = objc_alloc(MEMORY[0x277CCA970]);
  v10 = [a1 startDate];
  v11 = [v9 initWithStartDate:v10 endDate:v6];

  v12 = objc_alloc(MEMORY[0x277CCA970]);
  v13 = [a1 startDate];
  v14 = [a1 endDate];
  v15 = [v12 initWithStartDate:v13 endDate:v14];

  v16 = [v15 intersectionWithDateInterval:v11];
  v17 = [v16 hk_hearingSevenDayDoseDateIntervalClampedToMaxDuration];

  if (!v17)
  {
LABEL_3:
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:{@"Unable to truncate date interval %@ to maxEndDate %@", a1, v6}];
    v17 = 0;
  }

  return v17;
}

- (id)unitTesting_hearingSevenDayDoseCategorySampleWithNow:()HeadphoneSevenDayDose includesPrunableData:error:
{
  v34[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [MEMORY[0x277CCDAB0] decibelAWeightedSoundPressureLevelUnit];
  v10 = [a1 averageQuantity];
  v11 = [v10 isCompatibleWithUnit:v9];

  if (v11)
  {
    v12 = [MEMORY[0x277CCDAB0] secondUnit];
    v13 = [a1 duration];
    v14 = [v13 isCompatibleWithUnit:v12];

    if (v14)
    {
      v15 = [a1 hk_hearingSevenDayDoseDateIntervalEndingBeforeDate:v8 error:a5];
      if (v15)
      {
        v16 = MEMORY[0x277CCD0B0];
        v17 = HKHeadphoneAudioExposureEventType();
        v31 = [v15 startDate];
        v30 = [v15 endDate];
        v33[0] = *MEMORY[0x277CCC458];
        v32 = [a1 averageQuantity];
        v34[0] = v32;
        v33[1] = *MEMORY[0x277CCC450];
        v29 = [a1 duration];
        v34[1] = v29;
        v33[2] = *MEMORY[0x277CCE068];
        v18 = [MEMORY[0x277CCABB0] numberWithBool:a4];
        v34[2] = v18;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:3];
        v20 = [v16 categorySampleWithType:v17 value:1 startDate:v31 endDate:v30 device:0 metadata:v19];
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v24 = MEMORY[0x277CCA9B8];
      v25 = [a1 duration];
      v26 = [v25 _unit];
      [v24 hk_assignError:a5 code:3 format:{@"duration (%@) incompatible with second unit", v26}];

      v20 = 0;
    }
  }

  else
  {
    v21 = MEMORY[0x277CCA9B8];
    v22 = [a1 averageQuantity];
    v23 = [v22 _unit];
    [v21 hk_assignError:a5 code:3 format:{@"averageQuantity (%@) incompatable with dBASPL unit", v23}];

    v20 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v20;
}

@end