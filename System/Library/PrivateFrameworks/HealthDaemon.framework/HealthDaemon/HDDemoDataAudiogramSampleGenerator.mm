@interface HDDemoDataAudiogramSampleGenerator
- (uint64_t)_hearingLevelClassificationForEar:(uint64_t)ear;
- (void)generateFirstRunObjectsForDemoPerson:(id)person firstDate:(id)date objectCollection:(id)collection;
@end

@implementation HDDemoDataAudiogramSampleGenerator

- (void)generateFirstRunObjectsForDemoPerson:(id)person firstDate:(id)date objectCollection:(id)collection
{
  dateCopy = date;
  collectionCopy = collection;
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

  if ((isAppleWatch & 1) == 0)
  {
    if (self)
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v10 = [standardUserDefaults objectForKey:@"HealthDemoDataAudiogramSampleInterval"];

      if (v10 && [v10 integerValue] >= 1)
      {
        integerValue = [v10 integerValue];
      }

      else
      {
        integerValue = 60;
      }
    }

    else
    {
      integerValue = 0;
    }

    date = [MEMORY[0x277CBEAA8] date];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v20 = date;
    v14 = [currentCalendar components:30 fromDate:date];
    [v14 setHour:10];
    [v14 setMinute:30];
    v15 = [currentCalendar dateFromComponents:v14];
    v16 = 0;
    while (1)
    {
      v17 = [currentCalendar hk_dateBySubtractingDays:v16 fromDate:v15];
      if ([v17 hk_isBeforeDate:dateCopy])
      {
        break;
      }

      v18 = [(HDDemoDataAudiogramSampleGenerator *)self _hearingLevelClassificationForEar:?];
      v19 = [MEMORY[0x277CCD030] randomAudiogramSampleWithLeftEarClassification:v18 rightEarClassification:-[HDDemoDataAudiogramSampleGenerator _hearingLevelClassificationForEar:](self startDate:@"HealthDemoDataAudiogramRightEarHearingLevelClassificationOverride" endDate:v17 device:v17 metadata:{0, 0}];
      [collectionCopy addObjectFromPhone:v19];
      v16 += integerValue;

      if (v16 >= 3650)
      {
        goto LABEL_13;
      }
    }

LABEL_13:
  }
}

- (uint64_t)_hearingLevelClassificationForEar:(uint64_t)ear
{
  if (!ear)
  {
    return 0;
  }

  v2 = MEMORY[0x277CBEBD0];
  v3 = a2;
  standardUserDefaults = [v2 standardUserDefaults];
  v5 = [standardUserDefaults objectForKey:v3];

  if (v5)
  {
    integerValue = [v5 integerValue];
    v7 = 5;
    if (integerValue < 5)
    {
      v7 = integerValue;
    }

    if (integerValue)
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