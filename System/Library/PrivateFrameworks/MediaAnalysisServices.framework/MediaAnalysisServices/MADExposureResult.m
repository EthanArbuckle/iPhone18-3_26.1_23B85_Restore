@interface MADExposureResult
+ (id)resultWithExposureScore:(double)a3;
- (MADExposureResult)initWithCoder:(id)a3;
- (MADExposureResult)initWithExposureScore:(double)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADExposureResult

- (MADExposureResult)initWithExposureScore:(double)a3
{
  v5.receiver = self;
  v5.super_class = MADExposureResult;
  result = [(MADResult *)&v5 init];
  if (result)
  {
    result->_exposureScore = a3;
  }

  return result;
}

+ (id)resultWithExposureScore:(double)a3
{
  v3 = [[a1 alloc] initWithExposureScore:a3];

  return v3;
}

- (MADExposureResult)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MADExposureResult;
  v5 = [(MADResult *)&v8 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"ExposureScore"];
    v5->_exposureScore = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MADExposureResult;
  [(MADResult *)&v5 encodeWithCoder:v4];
  [v4 encodeDouble:@"ExposureScore" forKey:self->_exposureScore];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"%@: %.3f>", @"ExposureScore", *&self->_exposureScore];

  return v3;
}

@end