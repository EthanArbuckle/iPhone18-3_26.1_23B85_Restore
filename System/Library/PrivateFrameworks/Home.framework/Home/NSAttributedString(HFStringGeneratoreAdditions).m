@interface NSAttributedString(HFStringGeneratoreAdditions)
- (id)_synthesizeAttributedSubstringFromRange:()HFStringGeneratoreAdditions usingDefaultAttributes:;
- (id)stringWithAttributes:()HFStringGeneratoreAdditions;
@end

@implementation NSAttributedString(HFStringGeneratoreAdditions)

- (id)stringWithAttributes:()HFStringGeneratoreAdditions
{
  v4 = a3;
  v5 = [a1 _synthesizeAttributedSubstringFromRange:0 usingDefaultAttributes:{objc_msgSend(a1, "length"), v4}];

  return v5;
}

- (id)_synthesizeAttributedSubstringFromRange:()HFStringGeneratoreAdditions usingDefaultAttributes:
{
  v8 = MEMORY[0x277CCAB48];
  v9 = a5;
  v10 = [v8 alloc];
  v11 = [a1 string];
  v12 = [v10 initWithString:v11 attributes:v9];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __114__NSAttributedString_HFStringGeneratoreAdditions___synthesizeAttributedSubstringFromRange_usingDefaultAttributes___block_invoke;
  v15[3] = &unk_277DFC3C8;
  v13 = v12;
  v16 = v13;
  [a1 enumerateAttributesInRange:a3 options:a4 usingBlock:{0, v15}];

  return v13;
}

@end