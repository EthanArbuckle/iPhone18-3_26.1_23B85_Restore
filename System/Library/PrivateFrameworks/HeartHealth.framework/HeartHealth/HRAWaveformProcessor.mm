@interface HRAWaveformProcessor
- (HRAWaveformProcessor)initWithMinimumUsableDuration:(double)a3 minimumContinuousUsableDuration:(double)a4 minimumSaveableDuration:(double)a5;
- (HRAWaveformProcessorLoggingDelegate)logDelegate;
- (id)processSamples:(const float *)a3 flags:(const char *)a4 count:(unint64_t)a5 samplingRate:(float)a6 startDate:(id)a7;
@end

@implementation HRAWaveformProcessor

- (HRAWaveformProcessor)initWithMinimumUsableDuration:(double)a3 minimumContinuousUsableDuration:(double)a4 minimumSaveableDuration:(double)a5
{
  v6.receiver = self;
  v6.super_class = HRAWaveformProcessor;
  return [(HRAWaveformProcessor *)&v6 init:a3];
}

- (id)processSamples:(const float *)a3 flags:(const char *)a4 count:(unint64_t)a5 samplingRate:(float)a6 startDate:(id)a7
{
  v10 = a7;
  v11 = [HRAWaveformResult alloc];
  [v10 timeIntervalSinceReferenceDate];
  v13 = v12;

  *&v14 = a6;
  v15 = [(HRAWaveformResult *)v11 initWithSamples:a3 count:a5 samplingRate:&unk_283BE0E40 startDate:2 heartRate:v14 classification:v13];

  return v15;
}

- (HRAWaveformProcessorLoggingDelegate)logDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_logDelegate);

  return WeakRetained;
}

@end