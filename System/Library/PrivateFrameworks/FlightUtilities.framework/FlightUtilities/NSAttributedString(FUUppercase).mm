@interface NSAttributedString(FUUppercase)
- (id)FU_uppercaseAttributedStringCurrentLocale:()FUUppercase;
@end

@implementation NSAttributedString(FUUppercase)

- (id)FU_uppercaseAttributedStringCurrentLocale:()FUUppercase
{
  string = [self string];
  v6 = [string length];
  v7 = [string FU_uppercaseStringUsingCurrentLocale:a3];
  v8 = [v7 length];
  v9 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v7];
  if (v8 < v6)
  {
    v6 = v8;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__NSAttributedString_FUUppercase__FU_uppercaseAttributedStringCurrentLocale___block_invoke;
  v12[3] = &unk_279011580;
  v10 = v9;
  v13 = v10;
  [self enumerateAttributesInRange:0 options:v6 usingBlock:{0, v12}];

  return v10;
}

@end