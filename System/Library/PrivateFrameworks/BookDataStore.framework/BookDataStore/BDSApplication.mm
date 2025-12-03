@interface BDSApplication
+ (NSString)applicationCacheDirectory;
+ (NSString)applicationDocumentsDirectory;
@end

@implementation BDSApplication

+ (NSString)applicationDocumentsDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  lastObject = [v2 lastObject];

  if (lastObject)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager createDirectoryAtPath:lastObject withIntermediateDirectories:1 attributes:0 error:0];
  }

  return lastObject;
}

+ (NSString)applicationCacheDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  lastObject = [v2 lastObject];

  v4 = lastObject;
  if (v4)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];
  }

  return v4;
}

@end