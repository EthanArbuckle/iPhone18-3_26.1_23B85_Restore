@interface NSFileManager(IRExtensions)
+ (id)userLibraryDirectoryPath;
@end

@implementation NSFileManager(IRExtensions)

+ (id)userLibraryDirectoryPath
{
  v0 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  if ([v0 count])
  {
    v1 = [v0 firstObject];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

@end