@interface NSString(NTKMonogram)
- (uint64_t)ntk_isValidMonogram;
@end

@implementation NSString(NTKMonogram)

- (uint64_t)ntk_isValidMonogram
{
  if (![a1 length] || objc_msgSend(a1, "length") > 5)
  {
    return 0;
  }

  return [a1 ntk_containsOnlyValidMonogramCharacters];
}

@end