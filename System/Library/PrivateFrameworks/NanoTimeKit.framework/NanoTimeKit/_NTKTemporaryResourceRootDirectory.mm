@interface _NTKTemporaryResourceRootDirectory
+ (id)path;
+ (void)initialize;
@end

@implementation _NTKTemporaryResourceRootDirectory

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [self path];
    [defaultManager removeItemAtPath:path error:0];

    path2 = [self path];
    [defaultManager createDirectoryAtPath:path2 withIntermediateDirectories:1 attributes:0 error:0];
  }
}

+ (id)path
{
  v2 = NTKMainBundleDependentCacheDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"FaceResourceLinks"];

  return v3;
}

@end