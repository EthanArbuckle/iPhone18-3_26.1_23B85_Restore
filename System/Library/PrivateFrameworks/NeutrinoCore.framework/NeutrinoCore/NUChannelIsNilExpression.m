@interface NUChannelIsNilExpression
- (id)compactDescription;
- (id)description;
- (id)evaluateWithData:(id)a3 error:(id *)a4;
@end

@implementation NUChannelIsNilExpression

- (id)evaluateWithData:(id)a3 error:(id *)a4
{
  v4 = [a3 isNull];

  return [NUChannelData BOOLean:v4];
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(NUChannelUnaryExpression *)self expression];
  v4 = [v3 description];
  v5 = [v2 stringWithFormat:@"isNil<%@>", v4];

  return v5;
}

- (id)compactDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(NUChannelUnaryExpression *)self expression];
  v4 = [v3 compactDescription];
  v5 = [v2 stringWithFormat:@"(!%@)", v4];

  return v5;
}

@end