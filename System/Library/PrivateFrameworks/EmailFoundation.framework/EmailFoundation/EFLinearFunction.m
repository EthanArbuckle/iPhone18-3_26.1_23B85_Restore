@interface EFLinearFunction
- (EFLinearFunction)initWithLineThroughPoints:(id)a3;
- (EFLinearFunction)initWithSlope:(double)a3 intercept:(double)a4;
- (double)evaluateReverse:(double)a3;
- (double)evaluateX:(double)a3;
@end

@implementation EFLinearFunction

- (EFLinearFunction)initWithSlope:(double)a3 intercept:(double)a4
{
  v7.receiver = self;
  v7.super_class = EFLinearFunction;
  result = [(EFLinearFunction *)&v7 init];
  if (result)
  {
    result->_slope = a3;
    result->_intercept = a4;
  }

  return result;
}

- (EFLinearFunction)initWithLineThroughPoints:(id)a3
{
  v4 = a3;
  if ([v4 count] >= 2)
  {
    v6 = [v4 count];
    v7 = [v4 objectAtIndexedSubscript:v6 - 1];
    v8 = [v4 objectAtIndexedSubscript:v6 - 2];
    v9 = [v7 first];
    [v9 doubleValue];
    v11 = v10;
    v12 = [v8 first];
    [v12 doubleValue];
    v14 = v13;

    v15 = [v7 second];
    [v15 doubleValue];
    v17 = v16;
    v18 = [v8 second];
    [v18 doubleValue];
    v20 = v19;

    v21 = [v8 second];
    [v21 doubleValue];
    v23 = v22;
    v24 = [v8 first];
    [v24 doubleValue];
    v25 = (v17 - v20) / (v11 - v14);
    v27 = v23 - v26 * v25;

    self = [(EFLinearFunction *)self initWithSlope:v25 intercept:v27];
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)evaluateX:(double)a3
{
  [(EFLinearFunction *)self slope];
  v6 = v5;
  [(EFLinearFunction *)self intercept];
  return v7 + v6 * a3;
}

- (double)evaluateReverse:(double)a3
{
  [(EFLinearFunction *)self slope];
  v6 = v5;
  [(EFLinearFunction *)self intercept];
  if (v6 == 0.0)
  {
    v8 = v7 == a3;
    result = NAN;
    if (v8)
    {
      return 0.0;
    }
  }

  else
  {
    v10 = a3 - v7;
    [(EFLinearFunction *)self slope];
    return v10 / v11;
  }

  return result;
}

@end