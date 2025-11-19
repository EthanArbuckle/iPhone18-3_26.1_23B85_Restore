@interface NSMutableAttributedString
@end

@implementation NSMutableAttributedString

uint64_t __91__NSMutableAttributedString_IC_UI__ic_addForegroundColorInRangesWhereNoColorAlreadyExists___block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return [*(result + 32) addIndexesInRange:?];
  }

  return result;
}

uint64_t __85__NSMutableAttributedString_ICTableAdditions__ic_convertParagraphStyleToBodyInRange___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  isKindOfClass = a2;
  if (isKindOfClass)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v8 = MEMORY[0x1E69B7600];
      [*(a1 + 32) removeAttribute:*MEMORY[0x1E69B7600] range:{a3, a4}];
      isKindOfClass = [*(a1 + 32) addAttribute:*v8 value:*(a1 + 40) range:{a3, a4}];
    }
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass);
}

@end