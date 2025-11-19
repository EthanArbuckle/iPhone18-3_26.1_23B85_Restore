@interface NSTextLineFragment(Mentions)
- (uint64_t)ck_animatingMentionsGlyphCount;
- (void)ck_enumerateRunsWithBlock:()Mentions;
@end

@implementation NSTextLineFragment(Mentions)

- (uint64_t)ck_animatingMentionsGlyphCount
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__NSTextLineFragment_Mentions__ck_animatingMentionsGlyphCount__block_invoke;
  v3[3] = &unk_1E72F5BD0;
  v3[4] = &v4;
  [a1 ck_enumerateRunsWithBlock:v3];
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

- (void)ck_enumerateRunsWithBlock:()Mentions
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 lineRef];
  if (v5)
  {
    v6 = v5;
    v7 = CTLineGetGlyphRuns(v5);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v4[2](v4, v6, *(*(&v12 + 1) + 8 * v11++));
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

@end