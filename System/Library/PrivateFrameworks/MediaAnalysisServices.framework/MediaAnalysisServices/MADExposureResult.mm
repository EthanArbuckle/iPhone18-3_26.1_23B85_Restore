@interface MADExposureResult
+ (id)resultWithExposureScore:(double)score;
- (MADExposureResult)initWithCoder:(id)coder;
- (MADExposureResult)initWithExposureScore:(double)score;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADExposureResult

- (MADExposureResult)initWithExposureScore:(double)score
{
  v5.receiver = self;
  v5.super_class = MADExposureResult;
  result = [(MADResult *)&v5 init];
  if (result)
  {
    result->_exposureScore = score;
  }

  return result;
}

+ (id)resultWithExposureScore:(double)score
{
  v3 = [[self alloc] initWithExposureScore:score];

  return v3;
}

- (MADExposureResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = MADExposureResult;
  v5 = [(MADResult *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"ExposureScore"];
    v5->_exposureScore = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = MADExposureResult;
  [(MADResult *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeDouble:@"ExposureScore" forKey:self->_exposureScore];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"%@: %.3f>", @"ExposureScore", *&self->_exposureScore];

  return string;
}

@end