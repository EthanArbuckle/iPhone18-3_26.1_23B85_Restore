@interface NSMutableAttributedString(ITK)
- (void)itk_appendAttributedSubstring:()ITK fromRange:;
- (void)itk_appendString:()ITK;
- (void)itk_replaceCharactersInRange:()ITK withAttributedSubstring:fromRange:;
@end

@implementation NSMutableAttributedString(ITK)

- (void)itk_appendString:()ITK
{
  v4 = MEMORY[0x277CCA898];
  v5 = a3;
  v6 = [[v4 alloc] initWithString:v5];

  [a1 appendAttributedString:v6];
}

- (void)itk_replaceCharactersInRange:()ITK withAttributedSubstring:fromRange:
{
  v12 = a5;
  v13 = [v12 string];
  v14 = [v13 substringWithRange:{a6, a7}];
  [a1 replaceCharactersInRange:a3 withString:{a4, v14}];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __97__NSMutableAttributedString_ITK__itk_replaceCharactersInRange_withAttributedSubstring_fromRange___block_invoke;
  v15[3] = &unk_2797AF178;
  v15[6] = a7;
  v15[7] = a3;
  v15[4] = a1;
  v15[5] = a6;
  [v12 enumerateAttributesInRange:a6 options:a7 usingBlock:{0x100000, v15}];
}

- (void)itk_appendAttributedSubstring:()ITK fromRange:
{
  v8 = a3;
  [a1 itk_replaceCharactersInRange:objc_msgSend(a1 withAttributedSubstring:"length") fromRange:{0, v8, a4, a5}];
}

@end