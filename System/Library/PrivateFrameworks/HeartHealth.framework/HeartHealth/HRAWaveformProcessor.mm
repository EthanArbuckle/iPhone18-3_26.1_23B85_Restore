@interface HRAWaveformProcessor
- (HRAWaveformProcessor)initWithMinimumUsableDuration:(double)duration minimumContinuousUsableDuration:(double)usableDuration minimumSaveableDuration:(double)saveableDuration;
- (HRAWaveformProcessorLoggingDelegate)logDelegate;
- (id)processSamples:(const float *)samples flags:(const char *)flags count:(unint64_t)count samplingRate:(float)rate startDate:(id)date;
@end

@implementation HRAWaveformProcessor

- (HRAWaveformProcessor)initWithMinimumUsableDuration:(double)duration minimumContinuousUsableDuration:(double)usableDuration minimumSaveableDuration:(double)saveableDuration
{
  v6.receiver = self;
  v6.super_class = HRAWaveformProcessor;
  return [(HRAWaveformProcessor *)&v6 init:duration];
}

- (id)processSamples:(const float *)samples flags:(const char *)flags count:(unint64_t)count samplingRate:(float)rate startDate:(id)date
{
  dateCopy = date;
  v11 = [HRAWaveformResult alloc];
  [dateCopy timeIntervalSinceReferenceDate];
  v13 = v12;

  *&v14 = rate;
  v15 = [(HRAWaveformResult *)v11 initWithSamples:samples count:count samplingRate:&unk_283BE0E40 startDate:2 heartRate:v14 classification:v13];

  return v15;
}

- (HRAWaveformProcessorLoggingDelegate)logDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_logDelegate);

  return WeakRetained;
}

@end