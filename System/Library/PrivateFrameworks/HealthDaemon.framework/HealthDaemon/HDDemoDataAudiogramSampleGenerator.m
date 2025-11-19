@interface HDDemoDataAudiogramSampleGenerator
- (uint64_t)_hearingLevelClassificationForEar:(uint64_t)a1;
- (void)generateFirstRunObjectsForDemoPerson:(id)a3 firstDate:(id)a4 objectCollection:(id)a5;
@end

@implementation HDDemoDataAudiogramSampleGenerator

- (void)generateFirstRunObjectsForDemoPerson:(id)a3 firstDate:(id)a4 objectCollection:(id)a5
{
  v22 = a4;
  v21 = a5;
  v7 = [MEMORY[0x277CCDD30] sharedBehavior];
  v8 = [v7 isAppleWatch];

  if ((v8 & 1) == 0)
  {
    if (self)
    {
      v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v10 = [v9 objectForKey:@"HealthDemoDataAudiogramSampleInterval"];

      if (v10 && [v10 integerValue] >= 1)
      {
        v11 = [v10 integerValue];
      }

      else
      {
        v11 = 60;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = [MEMORY[0x277CBEAA8] date];
    v13 = [MEMORY[0x277CBEA80] currentCalendar];
    v20 = v12;
    v14 = [v13 components:30 fromDate:v12];
    [v14 setHour:10];
    [v14 setMinute:30];
    v15 = [v13 dateFromComponents:v14];
    v16 = 0;
    while (1)
    {
      v17 = [v13 hk_dateBySubtractingDays:v16 fromDate:v15];
      if ([v17 hk_isBeforeDate:v22])
      {
        break;
      }

      v18 = [(HDDemoDataAudiogramSampleGenerator *)self _hearingLevelClassificationForEar:?];
      v19 = [MEMORY[0x277CCD030] randomAudiogramSampleWithLeftEarClassification:v18 rightEarClassification:-[HDDemoDataAudiogramSampleGenerator _hearingLevelClassificationForEar:](self startDate:@"HealthDemoDataAudiogramRightEarHearingLevelClassificationOverride" endDate:v17 device:v17 metadata:{0, 0}];
      [v21 addObjectFromPhone:v19];
      v16 += v11;

      if (v16 >= 3650)
      {
        goto LABEL_13;
      }
    }

LABEL_13:
  }
}

- (uint64_t)_hearingLevelClassificationForEar:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v2 = MEMORY[0x277CBEBD0];
  v3 = a2;
  v4 = [v2 standardUserDefaults];
  v5 = [v4 objectForKey:v3];

  if (v5)
  {
    v6 = [v5 integerValue];
    v7 = 5;
    if (v6 < 5)
    {
      v7 = v6;
    }

    if (v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

@end