@interface HKAudioExposureUtilities(HeadphoneSevenDayDose)
+ (id)_sevenDayDoseWithExposureAverageQuantity:()HeadphoneSevenDayDose duration:error:;
+ (id)hk_sevenDayDoseWithExposureLevel:()HeadphoneSevenDayDose exposureDuration:error:;
@end

@implementation HKAudioExposureUtilities(HeadphoneSevenDayDose)

+ (id)hk_sevenDayDoseWithExposureLevel:()HeadphoneSevenDayDose exposureDuration:error:
{
  [MEMORY[0x277CCD028] maximumDurationInSecondsForLEQ:7 days:?];
  if (v7 <= 2.22044605e-16)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:3 description:@"compute 7-day headphone dose failed"];
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2C8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_FAULT))
    {
      [HKAudioExposureUtilities(HeadphoneSevenDayDose) hk_sevenDayDoseWithExposureLevel:v9 exposureDuration:? error:?];
    }

    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:a2 / v7];
  }

  return v8;
}

+ (id)_sevenDayDoseWithExposureAverageQuantity:()HeadphoneSevenDayDose duration:error:
{
  v8 = a3;
  v9 = a4;
  decibelAWeightedSoundPressureLevelUnit = [MEMORY[0x277CCDAB0] decibelAWeightedSoundPressureLevelUnit];
  if ([v8 isCompatibleWithUnit:decibelAWeightedSoundPressureLevelUnit])
  {
    secondUnit = [MEMORY[0x277CCDAB0] secondUnit];
    if ([v9 isCompatibleWithUnit:secondUnit])
    {
      [v8 doubleValueForUnit:decibelAWeightedSoundPressureLevelUnit];
      v13 = v12;
      [v9 doubleValueForUnit:secondUnit];
      v15 = [self hk_sevenDayDoseWithExposureLevel:a5 exposureDuration:v13 error:v14];
      goto LABEL_7;
    }

    v17 = MEMORY[0x277CCA9B8];
    _unit = [v9 _unit];
    [v17 hk_assignError:a5 code:3 format:{@"duration (%@) incompatible with second unit", _unit}];
  }

  else
  {
    v16 = MEMORY[0x277CCA9B8];
    secondUnit = [v8 _unit];
    [v16 hk_assignError:a5 code:3 format:{@"averageQuantity (%@) incompatable with dBASPL unit", secondUnit}];
  }

  v15 = 0;
LABEL_7:

  return v15;
}

@end