@interface NUChannelLessThanExpression
- (id)compactDescription;
- (id)description;
- (id)evaluateWithComparisonResult:(int64_t)result error:(id *)error;
@end

@implementation NUChannelLessThanExpression

- (id)evaluateWithComparisonResult:(int64_t)result error:(id *)error
{
  if (result > 1)
  {
    v8 = MEMORY[0x1E695E110];
    if (result == 2)
    {
      v8 = MEMORY[0x1E695E118];
    }

    v7 = v8;
  }

  else
  {
    v5 = [NUError invalidError:@"Not comparable" object:0];
    v6 = v5;
    v7 = 0;
    *error = v5;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  leftExpression = [(NUChannelBinaryExpression *)self leftExpression];
  v5 = [leftExpression description];
  rightExpression = [(NUChannelBinaryExpression *)self rightExpression];
  v7 = [rightExpression description];
  v8 = [v3 stringWithFormat:@"lessThan<%@, %@>", v5, v7];

  return v8;
}

- (id)compactDescription
{
  v3 = MEMORY[0x1E696AEC0];
  leftExpression = [(NUChannelBinaryExpression *)self leftExpression];
  compactDescription = [leftExpression compactDescription];
  rightExpression = [(NUChannelBinaryExpression *)self rightExpression];
  compactDescription2 = [rightExpression compactDescription];
  v8 = [v3 stringWithFormat:@"(%@<%@)", compactDescription, compactDescription2];

  return v8;
}

@end