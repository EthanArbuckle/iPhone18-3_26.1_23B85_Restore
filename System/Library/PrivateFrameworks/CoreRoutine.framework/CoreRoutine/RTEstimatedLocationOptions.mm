@interface RTEstimatedLocationOptions
- (RTEstimatedLocationOptions)initWithAverageSpeed:(double)a3 enableFallbackModel:(BOOL)a4 timeInterval:(double)a5;
- (RTEstimatedLocationOptions)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTEstimatedLocationOptions

- (RTEstimatedLocationOptions)initWithAverageSpeed:(double)a3 enableFallbackModel:(BOOL)a4 timeInterval:(double)a5
{
  v9.receiver = self;
  v9.super_class = RTEstimatedLocationOptions;
  result = [(RTEstimatedLocationOptions *)&v9 init];
  if (result)
  {
    result->_enableFallbackModel = a4;
    result->_averageSpeed = a3;
    result->_timeInterval = a5;
  }

  return result;
}

- (RTEstimatedLocationOptions)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"averageSpeed"];
  v6 = v5;
  v7 = [v4 decodeBoolForKey:@"enableFallbackModel"];
  [v4 decodeDoubleForKey:@"timeInterval"];
  v9 = v8;

  return [(RTEstimatedLocationOptions *)self initWithAverageSpeed:v7 enableFallbackModel:v6 timeInterval:v9];
}

- (void)encodeWithCoder:(id)a3
{
  averageSpeed = self->_averageSpeed;
  v5 = a3;
  [v5 encodeDouble:@"averageSpeed" forKey:averageSpeed];
  [v5 encodeBool:self->_enableFallbackModel forKey:@"enableFallbackModel"];
  [v5 encodeDouble:@"timeInterval" forKey:self->_timeInterval];
}

@end