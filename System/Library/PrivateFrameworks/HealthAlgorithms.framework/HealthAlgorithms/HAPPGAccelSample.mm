@interface HAPPGAccelSample
- (HAPPGAccelSample)initWithSamplingFrequency:(unsigned __int16)a3 timestamp:(int64_t)a4 x:(float)a5 y:(float)a6 z:(float)a7;
@end

@implementation HAPPGAccelSample

- (HAPPGAccelSample)initWithSamplingFrequency:(unsigned __int16)a3 timestamp:(int64_t)a4 x:(float)a5 y:(float)a6 z:(float)a7
{
  v13.receiver = self;
  v13.super_class = HAPPGAccelSample;
  result = [(HAPPGAccelSample *)&v13 init];
  result->_samplingFrequency = a3;
  result->_timestamp = a4;
  result->_x = a5;
  result->_y = a6;
  result->_z = a7;
  return result;
}

@end