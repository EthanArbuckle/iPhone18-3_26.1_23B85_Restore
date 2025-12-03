@interface MSUDataAccessorDiagnostics
- (id)returnDirectoryIfExistsForPath:(id)path;
@end

@implementation MSUDataAccessorDiagnostics

- (id)returnDirectoryIfExistsForPath:(id)path
{
  pathCopy = path;
  v8 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:pathCopy isDirectory:&v8];

  if (v5 && v8 == 1)
  {
    v6 = pathCopy;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end