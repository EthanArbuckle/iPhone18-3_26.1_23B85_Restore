@interface NSFileManager(IRExtensions)
+ (id)userLibraryDirectoryPath;
@end

@implementation NSFileManager(IRExtensions)

+ (id)userLibraryDirectoryPath
{
  v0 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  if ([v0 count])
  {
    firstObject = [v0 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

@end