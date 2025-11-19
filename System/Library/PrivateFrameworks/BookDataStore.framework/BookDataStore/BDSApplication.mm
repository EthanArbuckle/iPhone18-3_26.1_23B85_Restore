@interface BDSApplication
+ (NSString)applicationCacheDirectory;
+ (NSString)applicationDocumentsDirectory;
@end

@implementation BDSApplication

+ (NSString)applicationDocumentsDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  v3 = [v2 lastObject];

  if (v3)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:0];
  }

  return v3;
}

+ (NSString)applicationCacheDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v3 = [v2 lastObject];

  v4 = v3;
  if (v4)
  {
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    [v5 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];
  }

  return v4;
}

@end