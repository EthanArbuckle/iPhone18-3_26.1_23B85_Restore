@interface NSAttributedString
@end

@implementation NSAttributedString

uint64_t __77__NSAttributedString_HKAdditions__hk_attributedStringForSpacing_nonBreaking___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = hk_attributedStringForSpacing_nonBreaking____spacerCache;
  hk_attributedStringForSpacing_nonBreaking____spacerCache = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end