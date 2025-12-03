@interface NSString(NTKAdditions)
- (id)ntk_extractFileName;
@end

@implementation NSString(NTKAdditions)

- (id)ntk_extractFileName
{
  pathComponents = [self pathComponents];
  lastObject = [pathComponents lastObject];

  return lastObject;
}

@end