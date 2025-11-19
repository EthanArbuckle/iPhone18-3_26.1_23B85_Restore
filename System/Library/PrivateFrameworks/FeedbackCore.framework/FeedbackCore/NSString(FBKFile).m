@interface NSString(FBKFile)
- (uint64_t)fbkIsImageFile;
- (uint64_t)fbkIsVideoFile;
@end

@implementation NSString(FBKFile)

- (uint64_t)fbkIsImageFile
{
  v2 = [a1 pathExtension];
  if (v2)
  {
    if (commonImageFormats_onceToken != -1)
    {
      [NSString(FBKFile) fbkIsImageFile];
    }

    v3 = commonImageFormats__commonExtensions;
    v4 = [a1 pathExtension];
    v5 = [v4 lowercaseString];
    v6 = [v3 containsObject:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)fbkIsVideoFile
{
  v2 = [a1 pathExtension];
  if (v2)
  {
    v3 = [a1 pathExtension];
    v4 = [v3 lowercaseString];
    v5 = [v4 isEqualToString:@"mov"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end