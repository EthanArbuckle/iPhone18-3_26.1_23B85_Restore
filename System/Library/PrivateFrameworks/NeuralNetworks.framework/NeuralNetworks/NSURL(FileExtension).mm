@interface NSURL(FileExtension)
- (BOOL)hasPathExtension:()FileExtension;
@end

@implementation NSURL(FileExtension)

- (BOOL)hasPathExtension:()FileExtension
{
  v4 = a3;
  pathExtension = [self pathExtension];
  v6 = [pathExtension caseInsensitiveCompare:v4] == 0;

  return v6;
}

@end