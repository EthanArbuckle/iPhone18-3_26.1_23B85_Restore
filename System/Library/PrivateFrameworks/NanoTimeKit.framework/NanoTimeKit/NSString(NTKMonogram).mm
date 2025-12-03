@interface NSString(NTKMonogram)
- (uint64_t)ntk_isValidMonogram;
@end

@implementation NSString(NTKMonogram)

- (uint64_t)ntk_isValidMonogram
{
  if (![self length] || objc_msgSend(self, "length") > 5)
  {
    return 0;
  }

  return [self ntk_containsOnlyValidMonogramCharacters];
}

@end