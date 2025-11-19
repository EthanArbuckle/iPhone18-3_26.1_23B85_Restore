@interface NSAttributedString
@end

@implementation NSAttributedString

void __55__NSAttributedString_CRKAdditions__crk_familyNameRange__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v10 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 isEqualToString:*MEMORY[0x277CCA5D0]])
  {
    v9 = *(*(a1 + 32) + 8);
    *(v9 + 32) = a3;
    *(v9 + 40) = a4;
    *a5 = 1;
  }
}

@end