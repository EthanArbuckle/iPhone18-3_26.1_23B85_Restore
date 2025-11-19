@interface NSString(MFDirectoryPathUtils)
- (uint64_t)mf_isSubdirectoryOfPath:()MFDirectoryPathUtils;
- (uint64_t)mf_makeDirectoryWithMode:()MFDirectoryPathUtils;
@end

@implementation NSString(MFDirectoryPathUtils)

- (uint64_t)mf_makeDirectoryWithMode:()MFDirectoryPathUtils
{
  v5 = [MEMORY[0x277CCAA00] defaultManager];

  return [v5 mf_makeCompletePath:a1 mode:a3];
}

- (uint64_t)mf_isSubdirectoryOfPath:()MFDirectoryPathUtils
{
  v3 = a3;
  if (([a3 hasSuffix:@"/"] & 1) == 0)
  {
    v3 = [v3 stringByAppendingString:@"/"];
  }

  return [a1 hasPrefix:v3];
}

@end