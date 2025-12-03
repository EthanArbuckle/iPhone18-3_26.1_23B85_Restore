@interface NSString(_ML3BaseMusicLibraryResourcesManager)
- (id)relativePathFromBasePath:()_ML3BaseMusicLibraryResourcesManager;
@end

@implementation NSString(_ML3BaseMusicLibraryResourcesManager)

- (id)relativePathFromBasePath:()_ML3BaseMusicLibraryResourcesManager
{
  v4 = a3;
  stringByStandardizingPath = [self stringByStandardizingPath];
  if ([stringByStandardizingPath isAbsolutePath] && objc_msgSend(stringByStandardizingPath, "hasPrefix:", v4))
  {
    v6 = [v4 length];
    if ([stringByStandardizingPath length] <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 + 1;
    }

    v8 = [stringByStandardizingPath substringFromIndex:v7];

    stringByStandardizingPath = v8;
  }

  return stringByStandardizingPath;
}

@end