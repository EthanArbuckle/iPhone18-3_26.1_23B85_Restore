@interface EFLinearFunction
- (EFLinearFunction)initWithLineThroughPoints:(id)points;
- (EFLinearFunction)initWithSlope:(double)slope intercept:(double)intercept;
- (double)evaluateReverse:(double)reverse;
- (double)evaluateX:(double)x;
@end

@implementation EFLinearFunction

- (EFLinearFunction)initWithSlope:(double)slope intercept:(double)intercept
{
  v7.receiver = self;
  v7.super_class = EFLinearFunction;
  result = [(EFLinearFunction *)&v7 init];
  if (result)
  {
    result->_slope = slope;
    result->_intercept = intercept;
  }

  return result;
}

- (EFLinearFunction)initWithLineThroughPoints:(id)points
{
  pointsCopy = points;
  if ([pointsCopy count] >= 2)
  {
    v6 = [pointsCopy count];
    v7 = [pointsCopy objectAtIndexedSubscript:v6 - 1];
    v8 = [pointsCopy objectAtIndexedSubscript:v6 - 2];
    first = [v7 first];
    [first doubleValue];
    v11 = v10;
    first2 = [v8 first];
    [first2 doubleValue];
    v14 = v13;

    second = [v7 second];
    [second doubleValue];
    v17 = v16;
    second2 = [v8 second];
    [second2 doubleValue];
    v20 = v19;

    second3 = [v8 second];
    [second3 doubleValue];
    v23 = v22;
    first3 = [v8 first];
    [first3 doubleValue];
    v25 = (v17 - v20) / (v11 - v14);
    v27 = v23 - v26 * v25;

    self = [(EFLinearFunction *)self initWithSlope:v25 intercept:v27];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (double)evaluateX:(double)x
{
  [(EFLinearFunction *)self slope];
  v6 = v5;
  [(EFLinearFunction *)self intercept];
  return v7 + v6 * x;
}

- (double)evaluateReverse:(double)reverse
{
  [(EFLinearFunction *)self slope];
  v6 = v5;
  [(EFLinearFunction *)self intercept];
  if (v6 == 0.0)
  {
    v8 = v7 == reverse;
    result = NAN;
    if (v8)
    {
      return 0.0;
    }
  }

  else
  {
    v10 = reverse - v7;
    [(EFLinearFunction *)self slope];
    return v10 / v11;
  }

  return result;
}

@end