@interface NSAttributedString(UI)
- (ICTTTextEdit)editAtIndex:()UI;
- (id)editsInRange:()UI;
- (uint64_t)edits;
- (void)enumerateEditsInRange:()UI usingBlock:;
@end

@implementation NSAttributedString(UI)

- (ICTTTextEdit)editAtIndex:()UI
{
  v7 = 0;
  v8 = 0;
  v3 = [a1 attributesAtIndex:a3 effectiveRange:&v7];
  v4 = [ICTTTextEdit alloc];
  v5 = [(ICTTTextEdit *)v4 initWithAttributes:v3 range:v7, v8];

  return v5;
}

- (void)enumerateEditsInRange:()UI usingBlock:
{
  v8 = a5;
  v15.location = [a1 ic_range];
  v15.length = v9;
  v14.location = a3;
  v14.length = a4;
  v10 = NSIntersectionRange(v14, v15);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__NSAttributedString_UI__enumerateEditsInRange_usingBlock___block_invoke;
  v12[3] = &unk_2781981B8;
  v13 = v8;
  v11 = v8;
  [a1 enumerateAttributesInRange:v10.location options:v10.length usingBlock:{0, v12}];
}

- (id)editsInRange:()UI
{
  v7 = [MEMORY[0x277CBEB18] array];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __39__NSAttributedString_UI__editsInRange___block_invoke;
  v11[3] = &unk_2781981E0;
  v12 = v7;
  v8 = v7;
  [a1 enumerateEditsInRange:a3 usingBlock:{a4, v11}];
  v9 = [v8 copy];

  return v9;
}

- (uint64_t)edits
{
  v3 = [a1 ic_range];

  return [a1 editsInRange:{v3, v2}];
}

@end