@interface RTEstimatedLocationOptions
- (RTEstimatedLocationOptions)initWithAverageSpeed:(double)speed enableFallbackModel:(BOOL)model timeInterval:(double)interval;
- (RTEstimatedLocationOptions)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTEstimatedLocationOptions

- (RTEstimatedLocationOptions)initWithAverageSpeed:(double)speed enableFallbackModel:(BOOL)model timeInterval:(double)interval
{
  v9.receiver = self;
  v9.super_class = RTEstimatedLocationOptions;
  result = [(RTEstimatedLocationOptions *)&v9 init];
  if (result)
  {
    result->_enableFallbackModel = model;
    result->_averageSpeed = speed;
    result->_timeInterval = interval;
  }

  return result;
}

- (RTEstimatedLocationOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"averageSpeed"];
  v6 = v5;
  v7 = [coderCopy decodeBoolForKey:@"enableFallbackModel"];
  [coderCopy decodeDoubleForKey:@"timeInterval"];
  v9 = v8;

  return [(RTEstimatedLocationOptions *)self initWithAverageSpeed:v7 enableFallbackModel:v6 timeInterval:v9];
}

- (void)encodeWithCoder:(id)coder
{
  averageSpeed = self->_averageSpeed;
  coderCopy = coder;
  [coderCopy encodeDouble:@"averageSpeed" forKey:averageSpeed];
  [coderCopy encodeBool:self->_enableFallbackModel forKey:@"enableFallbackModel"];
  [coderCopy encodeDouble:@"timeInterval" forKey:self->_timeInterval];
}

@end