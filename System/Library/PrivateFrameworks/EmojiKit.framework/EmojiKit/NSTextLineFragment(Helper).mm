@interface NSTextLineFragment(Helper)
- (uint64_t)animatingGlyphCount_emk;
- (void)_emk_enumerateRunsWithBlock:()Helper;
@end

@implementation NSTextLineFragment(Helper)

- (void)_emk_enumerateRunsWithBlock:()Helper
{
  v4 = a3;
  lineRef = [self lineRef];
  if (lineRef)
  {
    v6 = lineRef;
    v7 = CTLineGetGlyphRuns(lineRef);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __58__NSTextLineFragment_Helper___emk_enumerateRunsWithBlock___block_invoke;
    v8[3] = &unk_2781C2390;
    v9 = v4;
    v10 = v6;
    _EMKEnumerateRuns(v7, v8);
  }
}

- (uint64_t)animatingGlyphCount_emk
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__NSTextLineFragment_Helper__animatingGlyphCount_emk__block_invoke;
  v3[3] = &unk_2781C23B8;
  v3[4] = &v4;
  [self _emk_enumerateRunsWithBlock:v3];
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

@end