@interface NSIndexSet(Additions)
- (__CFString)mf_commaSeparatedString;
@end

@implementation NSIndexSet(Additions)

- (__CFString)mf_commaSeparatedString
{
  if (![self count])
  {
    return &stru_2869ED3E0;
  }

  firstIndex = [self firstIndex];
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"%lu", firstIndex];
  v4 = [self indexGreaterThanIndex:firstIndex];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = v4; i != 0x7FFFFFFFFFFFFFFFLL; i = [self indexGreaterThanIndex:i])
    {
      [v3 appendFormat:@", %lu", i];
    }
  }

  return v3;
}

@end