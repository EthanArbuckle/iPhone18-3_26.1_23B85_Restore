@interface TDThemeBitSource
- (id)fileURLWithDocument:(id)a3;
- (id)name;
@end

@implementation TDThemeBitSource

- (id)name
{
  v2 = [(TDThemeBitSource *)self path];

  return [v2 lastPathComponent];
}

- (id)fileURLWithDocument:(id)a3
{
  v4 = [a3 rootPathForProductionData];
  v5 = [(TDThemeBitSource *)self path];
  if (v4)
  {
    v5 = [v4 stringByAppendingPathComponent:v5];
  }

  v6 = MEMORY[0x277CBEBC0];
  v7 = [v5 td_stringByStandardizingPath];

  return [v6 fileURLWithPath:v7 isDirectory:0];
}

@end