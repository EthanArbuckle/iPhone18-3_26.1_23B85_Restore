@interface NUChannelIsNotNilExpression
- (id)compactDescription;
- (id)description;
- (id)evaluateWithData:(id)data error:(id *)error;
@end

@implementation NUChannelIsNotNilExpression

- (id)evaluateWithData:(id)data error:(id *)error
{
  v4 = [data isNull] ^ 1;

  return [NUChannelData BOOLean:v4];
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  expression = [(NUChannelUnaryExpression *)self expression];
  v4 = [expression description];
  v5 = [v2 stringWithFormat:@"isNotNil<%@>", v4];

  return v5;
}

- (id)compactDescription
{
  v2 = MEMORY[0x1E696AEC0];
  expression = [(NUChannelUnaryExpression *)self expression];
  compactDescription = [expression compactDescription];
  v5 = [v2 stringWithFormat:@"(%@?)", compactDescription];

  return v5;
}

@end