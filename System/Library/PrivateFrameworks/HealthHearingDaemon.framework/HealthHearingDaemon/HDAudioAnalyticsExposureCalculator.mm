@interface HDAudioAnalyticsExposureCalculator
- (HDAudioAnalyticsExposureCalculator)initWithTargetDate:(id)date exposureType:(int64_t)type profile:(id)profile;
- (HDProfile)profile;
- (id)audioExposureResultWithError:(id *)error;
- (id)notificationCountForRollingDays:(int64_t)days error:(id *)error;
- (id)sevenDayDoseForMostRecentNotificationWithError:(id *)error;
@end

@implementation HDAudioAnalyticsExposureCalculator

- (HDAudioAnalyticsExposureCalculator)initWithTargetDate:(id)date exposureType:(int64_t)type profile:(id)profile
{
  dateCopy = date;
  profileCopy = profile;
  v14.receiver = self;
  v14.super_class = HDAudioAnalyticsExposureCalculator;
  v10 = [(HDAudioAnalyticsExposureCalculator *)&v14 init];
  v11 = v10;
  if (v10)
  {
    [(HDAudioAnalyticsExposureCalculator *)v10 setTargetDate:dateCopy];
    [(HDAudioAnalyticsExposureCalculator *)v11 setAudioExposureType:type];
    [(HDAudioAnalyticsExposureCalculator *)v11 setProfile:profileCopy];
    v12 = v11;
  }

  return v11;
}

- (id)audioExposureResultWithError:(id *)error
{
  targetDate = [(HDAudioAnalyticsExposureCalculator *)self targetDate];
  v6 = [HDAudioAnalyticsUtilities rollingDays:7 beforeDate:targetDate];

  audioExposureType = [(HDAudioAnalyticsExposureCalculator *)self audioExposureType];
  profile = [(HDAudioAnalyticsExposureCalculator *)self profile];
  startDate = [v6 startDate];
  endDate = [v6 endDate];
  v20 = 0;
  v11 = [HDAudioAnalyticsUtilities audioAverageAndDurationForExposureType:audioExposureType profile:profile startDate:startDate endDate:endDate error:&v20];
  v12 = v20;

  if (v11)
  {
    audioExposureType2 = [(HDAudioAnalyticsExposureCalculator *)self audioExposureType];
    [HDAudioAnalyticsUtilities leqFromStatistics:v11];
    if (audioExposureType2 == 3)
    {
      [HDAudioAnalyticsUtilities boundedIntegerForSoundReductionLEQ:?];
    }

    else
    {
      [HDAudioAnalyticsUtilities boundedIntegerForLEQ:?];
    }
    v14 = ;
    [HDAudioAnalyticsUtilities durationFromStatistics:v11];
    v17 = [HDAudioAnalyticsUtilities boundedIntegerForExposureDuration:?];
    [HDAudioAnalyticsUtilities doseFromStatistics:v11 days:7];
    v18 = [HDAudioAnalyticsUtilities boundedIntegerForDose:?];
    v16 = [[HDAudioAnalyticsBucketedExposureResult alloc] initWithLEQ:v14 duration:v17 dose:v18];

    goto LABEL_11;
  }

  v14 = v12;
  if (v14)
  {
    if (error)
    {
      v15 = v14;
      v16 = 0;
      *error = v14;
      goto LABEL_11;
    }

    _HKLogDroppedError();
  }

  v16 = 0;
LABEL_11:

  return v16;
}

- (id)notificationCountForRollingDays:(int64_t)days error:(id *)error
{
  targetDate = [(HDAudioAnalyticsExposureCalculator *)self targetDate];
  v8 = [HDAudioAnalyticsUtilities rollingDays:days beforeDate:targetDate];

  audioExposureType = [(HDAudioAnalyticsExposureCalculator *)self audioExposureType];
  profile = [(HDAudioAnalyticsExposureCalculator *)self profile];
  startDate = [v8 startDate];
  endDate = [v8 endDate];
  v19 = 0;
  v13 = [HDAudioAnalyticsUtilities audioExposureEventsForExposureType:audioExposureType profile:profile startDate:startDate endDate:endDate error:&v19];
  v14 = v19;

  if (v13)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v13, "count")}];
  }

  else
  {
    v16 = v14;
    if (v16)
    {
      if (error)
      {
        v17 = v16;
        *error = v16;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v15 = 0;
  }

  return v15;
}

- (id)sevenDayDoseForMostRecentNotificationWithError:(id *)error
{
  audioExposureType = [(HDAudioAnalyticsExposureCalculator *)self audioExposureType];
  profile = [(HDAudioAnalyticsExposureCalculator *)self profile];
  v23 = 0;
  v7 = [HDAudioAnalyticsUtilities latestAudioExposureEventForExposureType:audioExposureType profile:profile error:&v23];
  v8 = v23;

  if (v7)
  {
    audioExposureType2 = [(HDAudioAnalyticsExposureCalculator *)self audioExposureType];
    profile2 = [(HDAudioAnalyticsExposureCalculator *)self profile];
    startDate = [v7 startDate];
    endDate = [v7 endDate];
    v22 = v8;
    v13 = [HDAudioAnalyticsUtilities audioAverageAndDurationForExposureType:audioExposureType2 profile:profile2 startDate:startDate endDate:endDate error:&v22];
    v14 = v22;

    if (v13)
    {
      v15 = MEMORY[0x277CCABB0];
      [HDAudioAnalyticsUtilities doseFromStatistics:v13 days:7];
      v17 = [v15 numberWithInteger:v16];
    }

    else
    {
      v19 = v14;
      if (v19)
      {
        if (error)
        {
          v20 = v19;
          *error = v19;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v17 = 0;
    }
  }

  else
  {
    if (!v8)
    {
      v17 = &unk_2863A9920;
      goto LABEL_17;
    }

    if (error)
    {
      v18 = v8;
      v17 = 0;
      *error = v8;
    }

    else
    {
      _HKLogDroppedError();
      v17 = 0;
    }

    v14 = v8;
  }

LABEL_17:

  return v17;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end