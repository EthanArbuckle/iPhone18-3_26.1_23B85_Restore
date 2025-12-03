@interface NSFileManager(ULExtensions)
+ (id)userLibraryDirectoryPath;
@end

@implementation NSFileManager(ULExtensions)

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