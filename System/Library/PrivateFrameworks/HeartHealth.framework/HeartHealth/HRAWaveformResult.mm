@interface HRAWaveformResult
- (HRAWaveformResult)initWithSamples:(const float *)a3 count:(unint64_t)a4 samplingRate:(float)a5 startDate:(double)a6 heartRate:(id)a7 classification:(unint64_t)a8;
@end

@implementation HRAWaveformResult

- (HRAWaveformResult)initWithSamples:(const float *)a3 count:(unint64_t)a4 samplingRate:(float)a5 startDate:(double)a6 heartRate:(id)a7 classification:(unint64_t)a8
{
  v14.receiver = self;
  v14.super_class = HRAWaveformResult;
  v10 = [(HRAWaveformResult *)&v14 init:a3];
  if (v10)
  {
    v11 = [MEMORY[0x277CBEA90] dataWithBytes:a3 length:a4];
    sampleData = v10->_sampleData;
    v10->_sampleData = v11;
  }

  return v10;
}

@end