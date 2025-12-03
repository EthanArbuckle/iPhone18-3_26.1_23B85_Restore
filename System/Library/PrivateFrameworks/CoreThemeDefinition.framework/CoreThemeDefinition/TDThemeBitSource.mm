@interface TDThemeBitSource
- (id)fileURLWithDocument:(id)document;
- (id)name;
@end

@implementation TDThemeBitSource

- (id)name
{
  path = [(TDThemeBitSource *)self path];

  return [path lastPathComponent];
}

- (id)fileURLWithDocument:(id)document
{
  rootPathForProductionData = [document rootPathForProductionData];
  path = [(TDThemeBitSource *)self path];
  if (rootPathForProductionData)
  {
    path = [rootPathForProductionData stringByAppendingPathComponent:path];
  }

  v6 = MEMORY[0x277CBEBC0];
  td_stringByStandardizingPath = [path td_stringByStandardizingPath];

  return [v6 fileURLWithPath:td_stringByStandardizingPath isDirectory:0];
}

@end