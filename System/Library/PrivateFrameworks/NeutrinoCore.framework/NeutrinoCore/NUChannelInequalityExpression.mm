@interface NUChannelInequalityExpression
- (id)compactDescription;
- (id)description;
- (id)evaluateWithComparisonResult:(int64_t)result error:(id *)error;
@end

@implementation NUChannelInequalityExpression

- (id)evaluateWithComparisonResult:(int64_t)result error:(id *)error
{
  if ((result & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    return MEMORY[0x1E695E110];
  }

  else
  {
    return MEMORY[0x1E695E118];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  leftExpression = [(NUChannelBinaryExpression *)self leftExpression];
  v5 = [leftExpression description];
  rightExpression = [(NUChannelBinaryExpression *)self rightExpression];
  v7 = [rightExpression description];
  v8 = [v3 stringWithFormat:@"notEqual<%@, %@>", v5, v7];

  return v8;
}

- (id)compactDescription
{
  v3 = MEMORY[0x1E696AEC0];
  leftExpression = [(NUChannelBinaryExpression *)self leftExpression];
  compactDescription = [leftExpression compactDescription];
  rightExpression = [(NUChannelBinaryExpression *)self rightExpression];
  compactDescription2 = [rightExpression compactDescription];
  v8 = [v3 stringWithFormat:@"(%@!=%@)", compactDescription, compactDescription2];

  return v8;
}

@end