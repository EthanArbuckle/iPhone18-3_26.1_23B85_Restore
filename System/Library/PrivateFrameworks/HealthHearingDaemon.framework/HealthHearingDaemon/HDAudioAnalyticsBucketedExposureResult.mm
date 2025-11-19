@interface HDAudioAnalyticsBucketedExposureResult
- (HDAudioAnalyticsBucketedExposureResult)initWithLEQ:(id)a3 duration:(id)a4 dose:(id)a5;
@end

@implementation HDAudioAnalyticsBucketedExposureResult

- (HDAudioAnalyticsBucketedExposureResult)initWithLEQ:(id)a3 duration:(id)a4 dose:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = HDAudioAnalyticsBucketedExposureResult;
  v11 = [(HDAudioAnalyticsBucketedExposureResult *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(HDAudioAnalyticsBucketedExposureResult *)v11 setAudioExposureLEQ:v8];
    [(HDAudioAnalyticsBucketedExposureResult *)v12 setAudioExposureDuration:v9];
    [(HDAudioAnalyticsBucketedExposureResult *)v12 setAudioExposureDose:v10];
    v13 = v12;
  }

  return v12;
}

@end