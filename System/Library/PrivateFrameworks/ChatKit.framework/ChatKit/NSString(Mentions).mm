@interface NSString(Mentions)
- (id)mentionsSafeText;
- (id)searchSafeText;
@end

@implementation NSString(Mentions)

- (id)mentionsSafeText
{
  localizedUppercaseString = [self localizedUppercaseString];
  v2 = [localizedUppercaseString stringByApplyingTransform:*MEMORY[0x1E695DA48] reverse:0];

  return v2;
}

- (id)searchSafeText
{
  localizedUppercaseString = [self localizedUppercaseString];
  v2 = [localizedUppercaseString stringByApplyingTransform:*MEMORY[0x1E695DA48] reverse:0];

  return v2;
}

@end