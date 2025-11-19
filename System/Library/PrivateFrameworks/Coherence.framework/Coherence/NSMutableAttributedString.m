@interface NSMutableAttributedString
@end

@implementation NSMutableAttributedString

void __90__NSMutableAttributedString_CRTT__Coherence_mergeAttributesInRange_withStorage_fromRange___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = [v7 objectForKeyedSubscript:@"_ts"];
  v9 = v8;
  if (v8)
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __90__NSMutableAttributedString_CRTT__Coherence_mergeAttributesInRange_withStorage_fromRange___block_invoke_2;
    v14[3] = &unk_1E7A12770;
    v12 = v8;
    v13 = *(a1 + 32);
    v15 = v12;
    v16 = v13;
    v17 = v7;
    [v10 enumerateAttribute:@"_ts" inRange:v11 + a3 options:a4 usingBlock:{0x100000, v14}];
  }
}

void __90__NSMutableAttributedString_CRTT__Coherence_mergeAttributesInRange_withStorage_fromRange___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (!v7 || [*(a1 + 32) isGreaterThanTimestamp:v7])
  {
    [*(a1 + 40) setAttributes:*(a1 + 48) range:{a3, a4}];
  }
}

@end