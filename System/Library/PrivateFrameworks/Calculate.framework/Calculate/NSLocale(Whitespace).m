@interface NSLocale(Whitespace)
- (uint64_t)usesWhitespace;
@end

@implementation NSLocale(Whitespace)

- (uint64_t)usesWhitespace
{
  if (usesWhitespace_onceToken != -1)
  {
    dispatch_once(&usesWhitespace_onceToken, &__block_literal_global_128);
  }

  v2 = usesWhitespace_nonWhitespaceLanguages;
  v3 = [a1 languageCode];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

@end