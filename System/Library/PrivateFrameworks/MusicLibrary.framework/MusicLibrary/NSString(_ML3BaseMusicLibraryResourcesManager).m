@interface NSString(_ML3BaseMusicLibraryResourcesManager)
- (id)relativePathFromBasePath:()_ML3BaseMusicLibraryResourcesManager;
@end

@implementation NSString(_ML3BaseMusicLibraryResourcesManager)

- (id)relativePathFromBasePath:()_ML3BaseMusicLibraryResourcesManager
{
  v4 = a3;
  v5 = [a1 stringByStandardizingPath];
  if ([v5 isAbsolutePath] && objc_msgSend(v5, "hasPrefix:", v4))
  {
    v6 = [v4 length];
    if ([v5 length] <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 + 1;
    }

    v8 = [v5 substringFromIndex:v7];

    v5 = v8;
  }

  return v5;
}

@end