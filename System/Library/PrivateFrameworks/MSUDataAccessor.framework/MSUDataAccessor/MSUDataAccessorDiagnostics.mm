@interface MSUDataAccessorDiagnostics
- (id)returnDirectoryIfExistsForPath:(id)a3;
@end

@implementation MSUDataAccessorDiagnostics

- (id)returnDirectoryIfExistsForPath:(id)a3
{
  v3 = a3;
  v8 = 0;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:v3 isDirectory:&v8];

  if (v5 && v8 == 1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end