@interface NSString(MAExtensions)
- (__CFString)ma_normalizedString;
@end

@implementation NSString(MAExtensions)

- (__CFString)ma_normalizedString
{
  v1 = [MEMORY[0x277CCAB68] stringWithString:self];
  CFStringNormalize(v1, kCFStringNormalizationFormD);
  CFStringFold(v1, 0x181uLL, 0);

  return v1;
}

@end