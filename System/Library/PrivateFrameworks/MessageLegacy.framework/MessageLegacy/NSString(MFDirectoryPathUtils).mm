@interface NSString(MFDirectoryPathUtils)
- (uint64_t)mf_isSubdirectoryOfPath:()MFDirectoryPathUtils;
- (uint64_t)mf_makeDirectoryWithMode:()MFDirectoryPathUtils;
@end

@implementation NSString(MFDirectoryPathUtils)

- (uint64_t)mf_makeDirectoryWithMode:()MFDirectoryPathUtils
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];

  return [defaultManager mf_makeCompletePath:self mode:a3];
}

- (uint64_t)mf_isSubdirectoryOfPath:()MFDirectoryPathUtils
{
  v3 = a3;
  if (([a3 hasSuffix:@"/"] & 1) == 0)
  {
    v3 = [v3 stringByAppendingString:@"/"];
  }

  return [self hasPrefix:v3];
}

@end