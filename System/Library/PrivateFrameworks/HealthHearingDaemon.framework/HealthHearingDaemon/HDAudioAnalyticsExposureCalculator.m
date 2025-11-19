@interface HDAudioAnalyticsExposureCalculator
- (HDAudioAnalyticsExposureCalculator)initWithTargetDate:(id)a3 exposureType:(int64_t)a4 profile:(id)a5;
- (HDProfile)profile;
- (id)audioExposureResultWithError:(id *)a3;
- (id)notificationCountForRollingDays:(int64_t)a3 error:(id *)a4;
- (id)sevenDayDoseForMostRecentNotificationWithError:(id *)a3;
@end

@implementation HDAudioAnalyticsExposureCalculator

- (HDAudioAnalyticsExposureCalculator)initWithTargetDate:(id)a3 exposureType:(int64_t)a4 profile:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = HDAudioAnalyticsExposureCalculator;
  v10 = [(HDAudioAnalyticsExposureCalculator *)&v14 init];
  v11 = v10;
  if (v10)
  {
    [(HDAudioAnalyticsExposureCalculator *)v10 setTargetDate:v8];
    [(HDAudioAnalyticsExposureCalculator *)v11 setAudioExposureType:a4];
    [(HDAudioAnalyticsExposureCalculator *)v11 setProfile:v9];
    v12 = v11;
  }

  return v11;
}

- (id)audioExposureResultWithError:(id *)a3
{
  v5 = [(HDAudioAnalyticsExposureCalculator *)self targetDate];
  v6 = [HDAudioAnalyticsUtilities rollingDays:7 beforeDate:v5];

  v7 = [(HDAudioAnalyticsExposureCalculator *)self audioExposureType];
  v8 = [(HDAudioAnalyticsExposureCalculator *)self profile];
  v9 = [v6 startDate];
  v10 = [v6 endDate];
  v20 = 0;
  v11 = [HDAudioAnalyticsUtilities audioAverageAndDurationForExposureType:v7 profile:v8 startDate:v9 endDate:v10 error:&v20];
  v12 = v20;

  if (v11)
  {
    v13 = [(HDAudioAnalyticsExposureCalculator *)self audioExposureType];
    [HDAudioAnalyticsUtilities leqFromStatistics:v11];
    if (v13 == 3)
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
    if (a3)
    {
      v15 = v14;
      v16 = 0;
      *a3 = v14;
      goto LABEL_11;
    }

    _HKLogDroppedError();
  }

  v16 = 0;
LABEL_11:

  return v16;
}

- (id)notificationCountForRollingDays:(int64_t)a3 error:(id *)a4
{
  v7 = [(HDAudioAnalyticsExposureCalculator *)self targetDate];
  v8 = [HDAudioAnalyticsUtilities rollingDays:a3 beforeDate:v7];

  v9 = [(HDAudioAnalyticsExposureCalculator *)self audioExposureType];
  v10 = [(HDAudioAnalyticsExposureCalculator *)self profile];
  v11 = [v8 startDate];
  v12 = [v8 endDate];
  v19 = 0;
  v13 = [HDAudioAnalyticsUtilities audioExposureEventsForExposureType:v9 profile:v10 startDate:v11 endDate:v12 error:&v19];
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
      if (a4)
      {
        v17 = v16;
        *a4 = v16;
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

- (id)sevenDayDoseForMostRecentNotificationWithError:(id *)a3
{
  v5 = [(HDAudioAnalyticsExposureCalculator *)self audioExposureType];
  v6 = [(HDAudioAnalyticsExposureCalculator *)self profile];
  v23 = 0;
  v7 = [HDAudioAnalyticsUtilities latestAudioExposureEventForExposureType:v5 profile:v6 error:&v23];
  v8 = v23;

  if (v7)
  {
    v9 = [(HDAudioAnalyticsExposureCalculator *)self audioExposureType];
    v10 = [(HDAudioAnalyticsExposureCalculator *)self profile];
    v11 = [v7 startDate];
    v12 = [v7 endDate];
    v22 = v8;
    v13 = [HDAudioAnalyticsUtilities audioAverageAndDurationForExposureType:v9 profile:v10 startDate:v11 endDate:v12 error:&v22];
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
        if (a3)
        {
          v20 = v19;
          *a3 = v19;
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

    if (a3)
    {
      v18 = v8;
      v17 = 0;
      *a3 = v8;
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