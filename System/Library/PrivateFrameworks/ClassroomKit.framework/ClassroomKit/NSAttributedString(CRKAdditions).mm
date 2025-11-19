@interface NSAttributedString(CRKAdditions)
- (uint64_t)crk_familyNameRange;
@end

@implementation NSAttributedString(CRKAdditions)

- (uint64_t)crk_familyNameRange
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3010000000;
  v10 = &unk_243627E81;
  v11 = xmmword_243616580;
  v2 = [a1 length];
  v3 = *MEMORY[0x277CCA5D8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__NSAttributedString_CRKAdditions__crk_familyNameRange__block_invoke;
  v6[3] = &unk_278DC3020;
  v6[4] = &v7;
  [a1 enumerateAttribute:v3 inRange:0 options:v2 usingBlock:{0, v6}];
  v4 = v8[4];
  _Block_object_dispose(&v7, 8);
  return v4;
}

@end