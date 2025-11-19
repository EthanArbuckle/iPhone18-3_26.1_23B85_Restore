@interface NUChannelMaxExpression
- (id)compactDescription;
- (id)description;
@end

@implementation NUChannelMaxExpression

- (id)description
{
  v2 = [(NUChannelExpression *)self arguments];
  v3 = PFMap();

  v4 = MEMORY[0x1E696AEC0];
  v5 = [v3 componentsJoinedByString:{@", "}];
  v6 = [v4 stringWithFormat:@"max<%@>", v5];

  return v6;
}

- (id)compactDescription
{
  v2 = [(NUChannelExpression *)self arguments];
  v3 = PFMap();

  v4 = MEMORY[0x1E696AEC0];
  v5 = [v3 componentsJoinedByString:{@", "}];
  v6 = [v4 stringWithFormat:@"MAX(%@)", v5];

  return v6;
}

@end