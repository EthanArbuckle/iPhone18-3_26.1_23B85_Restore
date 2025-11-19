@interface NSString(MFDirectoryPathUtils)
- (uint64_t)mf_isSubdirectoryOfPath:()MFDirectoryPathUtils;
- (uint64_t)mf_makeDirectoryWithMode:()MFDirectoryPathUtils;
@end

@implementation NSString(MFDirectoryPathUtils)

- (uint64_t)mf_makeDirectoryWithMode:()MFDirectoryPathUtils
{
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v5 mf_makeCompletePath:a1 mode:a3];

  return v6;
}

- (uint64_t)mf_isSubdirectoryOfPath:()MFDirectoryPathUtils
{
  v4 = a3;
  if (([v4 hasSuffix:@"/"] & 1) == 0)
  {
    v5 = [v4 stringByAppendingString:@"/"];

    v4 = v5;
  }

  v6 = [a1 hasPrefix:v4];

  return v6;
}

@end