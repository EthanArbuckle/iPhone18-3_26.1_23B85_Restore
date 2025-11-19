@interface NUChannelGreaterThanOrEqualExpression
- (id)compactDescription;
- (id)description;
- (id)evaluateWithComparisonResult:(int64_t)a3 error:(id *)a4;
@end

@implementation NUChannelGreaterThanOrEqualExpression

- (id)evaluateWithComparisonResult:(int64_t)a3 error:(id *)a4
{
  if (a3 > 1)
  {
    v8 = MEMORY[0x1E695E118];
    if (a3 == 2)
    {
      v8 = MEMORY[0x1E695E110];
    }

    v7 = v8;
  }

  else
  {
    v5 = [NUError invalidError:@"Not comparable" object:0];
    v6 = v5;
    v7 = 0;
    *a4 = v5;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NUChannelBinaryExpression *)self leftExpression];
  v5 = [v4 description];
  v6 = [(NUChannelBinaryExpression *)self rightExpression];
  v7 = [v6 description];
  v8 = [v3 stringWithFormat:@"greaterThanOrEqual<%@, %@>", v5, v7];

  return v8;
}

- (id)compactDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NUChannelBinaryExpression *)self leftExpression];
  v5 = [v4 compactDescription];
  v6 = [(NUChannelBinaryExpression *)self rightExpression];
  v7 = [v6 compactDescription];
  v8 = [v3 stringWithFormat:@"(%@>=%@)", v5, v7];

  return v8;
}

@end