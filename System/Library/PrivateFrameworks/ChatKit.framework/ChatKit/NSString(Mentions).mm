@interface NSString(Mentions)
- (id)mentionsSafeText;
- (id)searchSafeText;
@end

@implementation NSString(Mentions)

- (id)mentionsSafeText
{
  v1 = [a1 localizedUppercaseString];
  v2 = [v1 stringByApplyingTransform:*MEMORY[0x1E695DA48] reverse:0];

  return v2;
}

- (id)searchSafeText
{
  v1 = [a1 localizedUppercaseString];
  v2 = [v1 stringByApplyingTransform:*MEMORY[0x1E695DA48] reverse:0];

  return v2;
}

@end