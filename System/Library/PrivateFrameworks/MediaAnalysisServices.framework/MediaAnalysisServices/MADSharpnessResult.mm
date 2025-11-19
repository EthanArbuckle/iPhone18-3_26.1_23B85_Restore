@interface MADSharpnessResult
+ (id)resultWithSharpnessScore:(double)a3;
- (MADSharpnessResult)initWithCoder:(id)a3;
- (MADSharpnessResult)initWithSharpnessScore:(double)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADSharpnessResult

- (MADSharpnessResult)initWithSharpnessScore:(double)a3
{
  v5.receiver = self;
  v5.super_class = MADSharpnessResult;
  result = [(MADResult *)&v5 init];
  if (result)
  {
    result->_sharpnessScore = a3;
  }

  return result;
}

+ (id)resultWithSharpnessScore:(double)a3
{
  v3 = [[a1 alloc] initWithSharpnessScore:a3];

  return v3;
}

- (MADSharpnessResult)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MADSharpnessResult;
  v5 = [(MADResult *)&v8 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"SharpnessScore"];
    v5->_sharpnessScore = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MADSharpnessResult;
  [(MADResult *)&v5 encodeWithCoder:v4];
  [v4 encodeDouble:@"SharpnessScore" forKey:self->_sharpnessScore];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"%@: %.3f>", @"SharpnessScore", *&self->_sharpnessScore];

  return v3;
}

@end