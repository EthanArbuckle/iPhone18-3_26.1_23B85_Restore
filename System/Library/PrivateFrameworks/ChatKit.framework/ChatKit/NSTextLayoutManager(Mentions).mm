@interface NSTextLayoutManager(Mentions)
- (uint64_t)ck_animatingMentionsGlyphCount;
@end

@implementation NSTextLayoutManager(Mentions)

- (uint64_t)ck_animatingMentionsGlyphCount
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  documentRange = [self documentRange];
  location = [documentRange location];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__NSTextLayoutManager_Mentions__ck_animatingMentionsGlyphCount__block_invoke;
  v7[3] = &unk_1E72EC8C8;
  v7[4] = &v8;
  v4 = [self enumerateTextLayoutFragmentsFromLocation:location options:4 usingBlock:v7];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

@end