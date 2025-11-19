@interface NSString(NTKAdditions)
- (id)ntk_extractFileName;
@end

@implementation NSString(NTKAdditions)

- (id)ntk_extractFileName
{
  v1 = [a1 pathComponents];
  v2 = [v1 lastObject];

  return v2;
}

@end