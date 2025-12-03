@interface MADSharpnessResult
+ (id)resultWithSharpnessScore:(double)score;
- (MADSharpnessResult)initWithCoder:(id)coder;
- (MADSharpnessResult)initWithSharpnessScore:(double)score;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADSharpnessResult

- (MADSharpnessResult)initWithSharpnessScore:(double)score
{
  v5.receiver = self;
  v5.super_class = MADSharpnessResult;
  result = [(MADResult *)&v5 init];
  if (result)
  {
    result->_sharpnessScore = score;
  }

  return result;
}

+ (id)resultWithSharpnessScore:(double)score
{
  v3 = [[self alloc] initWithSharpnessScore:score];

  return v3;
}

- (MADSharpnessResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = MADSharpnessResult;
  v5 = [(MADResult *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"SharpnessScore"];
    v5->_sharpnessScore = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = MADSharpnessResult;
  [(MADResult *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeDouble:@"SharpnessScore" forKey:self->_sharpnessScore];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"%@: %.3f>", @"SharpnessScore", *&self->_sharpnessScore];

  return string;
}

@end