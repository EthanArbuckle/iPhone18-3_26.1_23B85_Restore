@interface HAPPGAccelSample
- (HAPPGAccelSample)initWithSamplingFrequency:(unsigned __int16)frequency timestamp:(int64_t)timestamp x:(float)x y:(float)y z:(float)z;
@end

@implementation HAPPGAccelSample

- (HAPPGAccelSample)initWithSamplingFrequency:(unsigned __int16)frequency timestamp:(int64_t)timestamp x:(float)x y:(float)y z:(float)z
{
  v13.receiver = self;
  v13.super_class = HAPPGAccelSample;
  result = [(HAPPGAccelSample *)&v13 init];
  result->_samplingFrequency = frequency;
  result->_timestamp = timestamp;
  result->_x = x;
  result->_y = y;
  result->_z = z;
  return result;
}

@end