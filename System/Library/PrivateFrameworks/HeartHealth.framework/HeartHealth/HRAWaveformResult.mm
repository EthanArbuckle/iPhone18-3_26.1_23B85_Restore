@interface HRAWaveformResult
- (HRAWaveformResult)initWithSamples:(const float *)samples count:(unint64_t)count samplingRate:(float)rate startDate:(double)date heartRate:(id)heartRate classification:(unint64_t)classification;
@end

@implementation HRAWaveformResult

- (HRAWaveformResult)initWithSamples:(const float *)samples count:(unint64_t)count samplingRate:(float)rate startDate:(double)date heartRate:(id)heartRate classification:(unint64_t)classification
{
  v14.receiver = self;
  v14.super_class = HRAWaveformResult;
  v10 = [(HRAWaveformResult *)&v14 init:samples];
  if (v10)
  {
    v11 = [MEMORY[0x277CBEA90] dataWithBytes:samples length:count];
    sampleData = v10->_sampleData;
    v10->_sampleData = v11;
  }

  return v10;
}

@end