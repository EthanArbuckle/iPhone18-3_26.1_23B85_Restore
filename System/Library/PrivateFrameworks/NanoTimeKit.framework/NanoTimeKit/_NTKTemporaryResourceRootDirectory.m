@interface _NTKTemporaryResourceRootDirectory
+ (id)path;
+ (void)initialize;
@end

@implementation _NTKTemporaryResourceRootDirectory

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v3 = [a1 path];
    [v5 removeItemAtPath:v3 error:0];

    v4 = [a1 path];
    [v5 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];
  }
}

+ (id)path
{
  v2 = NTKMainBundleDependentCacheDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"FaceResourceLinks"];

  return v3;
}

@end