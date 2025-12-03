@interface NUChannelMinExpression
- (id)compactDescription;
- (id)description;
@end

@implementation NUChannelMinExpression

- (id)description
{
  arguments = [(NUChannelExpression *)self arguments];
  v3 = PFMap();

  v4 = MEMORY[0x1E696AEC0];
  v5 = [v3 componentsJoinedByString:{@", "}];
  v6 = [v4 stringWithFormat:@"min<%@>", v5];

  return v6;
}

- (id)compactDescription
{
  arguments = [(NUChannelExpression *)self arguments];
  v3 = PFMap();

  v4 = MEMORY[0x1E696AEC0];
  v5 = [v3 componentsJoinedByString:{@", "}];
  v6 = [v4 stringWithFormat:@"MIN(%@)", v5];

  return v6;
}

@end