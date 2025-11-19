@interface NUChannelInequalityExpression
- (id)compactDescription;
- (id)description;
- (id)evaluateWithComparisonResult:(int64_t)a3 error:(id *)a4;
@end

@implementation NUChannelInequalityExpression

- (id)evaluateWithComparisonResult:(int64_t)a3 error:(id *)a4
{
  if ((a3 & 0xFFFFFFFFFFFFFFFDLL) == 1)
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
  v4 = [(NUChannelBinaryExpression *)self leftExpression];
  v5 = [v4 description];
  v6 = [(NUChannelBinaryExpression *)self rightExpression];
  v7 = [v6 description];
  v8 = [v3 stringWithFormat:@"notEqual<%@, %@>", v5, v7];

  return v8;
}

- (id)compactDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NUChannelBinaryExpression *)self leftExpression];
  v5 = [v4 compactDescription];
  v6 = [(NUChannelBinaryExpression *)self rightExpression];
  v7 = [v6 compactDescription];
  v8 = [v3 stringWithFormat:@"(%@!=%@)", v5, v7];

  return v8;
}

@end