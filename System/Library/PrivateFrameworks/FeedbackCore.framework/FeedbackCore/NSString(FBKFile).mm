@interface NSString(FBKFile)
- (uint64_t)fbkIsImageFile;
- (uint64_t)fbkIsVideoFile;
@end

@implementation NSString(FBKFile)

- (uint64_t)fbkIsImageFile
{
  pathExtension = [self pathExtension];
  if (pathExtension)
  {
    if (commonImageFormats_onceToken != -1)
    {
      [NSString(FBKFile) fbkIsImageFile];
    }

    v3 = commonImageFormats__commonExtensions;
    pathExtension2 = [self pathExtension];
    lowercaseString = [pathExtension2 lowercaseString];
    v6 = [v3 containsObject:lowercaseString];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)fbkIsVideoFile
{
  pathExtension = [self pathExtension];
  if (pathExtension)
  {
    pathExtension2 = [self pathExtension];
    lowercaseString = [pathExtension2 lowercaseString];
    v5 = [lowercaseString isEqualToString:@"mov"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end