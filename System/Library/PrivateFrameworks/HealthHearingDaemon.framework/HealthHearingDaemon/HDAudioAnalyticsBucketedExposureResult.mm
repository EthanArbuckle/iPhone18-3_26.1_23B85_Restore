@interface HDAudioAnalyticsBucketedExposureResult
- (HDAudioAnalyticsBucketedExposureResult)initWithLEQ:(id)q duration:(id)duration dose:(id)dose;
@end

@implementation HDAudioAnalyticsBucketedExposureResult

- (HDAudioAnalyticsBucketedExposureResult)initWithLEQ:(id)q duration:(id)duration dose:(id)dose
{
  qCopy = q;
  durationCopy = duration;
  doseCopy = dose;
  v15.receiver = self;
  v15.super_class = HDAudioAnalyticsBucketedExposureResult;
  v11 = [(HDAudioAnalyticsBucketedExposureResult *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(HDAudioAnalyticsBucketedExposureResult *)v11 setAudioExposureLEQ:qCopy];
    [(HDAudioAnalyticsBucketedExposureResult *)v12 setAudioExposureDuration:durationCopy];
    [(HDAudioAnalyticsBucketedExposureResult *)v12 setAudioExposureDose:doseCopy];
    v13 = v12;
  }

  return v12;
}

@end