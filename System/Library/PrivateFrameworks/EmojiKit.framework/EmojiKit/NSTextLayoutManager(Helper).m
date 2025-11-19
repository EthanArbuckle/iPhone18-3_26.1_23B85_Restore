@interface NSTextLayoutManager(Helper)
- (uint64_t)_rangeFromTextRange_emk:()Helper;
- (uint64_t)animatingGlyphCount_emk;
- (void)_enumerateAllTokenListsUsingBlock_emk:()Helper;
- (void)_enumerateTextLineFragmentsInTextRange:()Helper usingBlock:;
- (void)enumerateAllTextParagraphsUsingBlock_emk:()Helper;
- (void)enumerateTextParagraphsFromLocation:()Helper options:usingBlock_emk:;
@end

@implementation NSTextLayoutManager(Helper)

- (uint64_t)_rangeFromTextRange_emk:()Helper
{
  v4 = a3;
  v5 = [a1 textContentManager];
  v6 = [v5 _rangeFromTextRange_emk:v4];

  return v6;
}

- (void)enumerateTextParagraphsFromLocation:()Helper options:usingBlock_emk:
{
  v8 = a5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __90__NSTextLayoutManager_Helper__enumerateTextParagraphsFromLocation_options_usingBlock_emk___block_invoke;
  v11[3] = &unk_2781C20C0;
  v12 = v8;
  v9 = v8;
  v10 = [a1 enumerateTextLayoutFragmentsFromLocation:a3 options:a4 usingBlock:v11];
}

- (void)enumerateAllTextParagraphsUsingBlock_emk:()Helper
{
  v4 = a3;
  v5 = [a1 documentRange];
  v6 = [v5 location];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__NSTextLayoutManager_Helper__enumerateAllTextParagraphsUsingBlock_emk___block_invoke;
  v8[3] = &unk_2781C20E8;
  v9 = v4;
  v7 = v4;
  [a1 enumerateTextParagraphsFromLocation:v6 options:4 usingBlock_emk:v8];
}

- (void)_enumerateTextLineFragmentsInTextRange:()Helper usingBlock:
{
  v6 = a3;
  v7 = a4;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = 0;
  v8 = [v6 location];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__NSTextLayoutManager_Helper___enumerateTextLineFragmentsInTextRange_usingBlock___block_invoke;
  v12[3] = &unk_2781C2110;
  v9 = v6;
  v13 = v9;
  v14 = a1;
  v10 = v7;
  v15 = v10;
  v16 = v17;
  v11 = [a1 enumerateTextLayoutFragmentsFromLocation:v8 options:4 usingBlock:v12];

  _Block_object_dispose(v17, 8);
}

- (void)_enumerateAllTokenListsUsingBlock_emk:()Helper
{
  v4 = a3;
  v5 = [a1 documentRange];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__NSTextLayoutManager_Helper___enumerateAllTokenListsUsingBlock_emk___block_invoke;
  v8[3] = &unk_2781C2160;
  v8[4] = a1;
  v9 = v5;
  v10 = v4;
  v6 = v4;
  v7 = v5;
  [a1 enumerateAllTextParagraphsUsingBlock_emk:v8];
}

- (uint64_t)animatingGlyphCount_emk
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v2 = [a1 documentRange];
  v3 = [v2 location];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__NSTextLayoutManager_Helper__animatingGlyphCount_emk__block_invoke;
  v7[3] = &unk_2781C2188;
  v7[4] = &v8;
  v4 = [a1 enumerateTextLayoutFragmentsFromLocation:v3 options:4 usingBlock:v7];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

@end