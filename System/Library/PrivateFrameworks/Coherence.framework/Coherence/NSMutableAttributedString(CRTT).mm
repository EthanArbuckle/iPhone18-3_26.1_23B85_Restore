@interface NSMutableAttributedString(CRTT)
- (id)Coherence_emptyCopy;
- (id)Coherence_storageFromRange:()CRTT;
- (uint64_t)Coherence_mergeAttributesInRange:()CRTT withStorage:fromRange:;
- (void)Coherence_appendStorage:()CRTT fromRange:;
- (void)Coherence_appendString:()CRTT;
- (void)Coherence_replaceStorageInRange:()CRTT withStorage:fromRange:;
@end

@implementation NSMutableAttributedString(CRTT)

- (void)Coherence_appendString:()CRTT
{
  v5 = a3;
  v4 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5];
  [a1 appendAttributedString:v4];
}

- (void)Coherence_replaceStorageInRange:()CRTT withStorage:fromRange:
{
  v12 = a5;
  v13 = [v12 string];
  v14 = [v13 substringWithRange:{a6, a7}];
  [a1 replaceCharactersInRange:a3 withString:{a4, v14}];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __89__NSMutableAttributedString_CRTT__Coherence_replaceStorageInRange_withStorage_fromRange___block_invoke;
  v15[3] = &unk_1E7A12748;
  v15[6] = a7;
  v15[7] = a3;
  v15[4] = a1;
  v15[5] = a6;
  [v12 enumerateAttributesInRange:a6 options:a7 usingBlock:{0x100000, v15}];
}

- (void)Coherence_appendStorage:()CRTT fromRange:
{
  v8 = a3;
  [a1 Coherence_replaceStorageInRange:objc_msgSend(a1 withStorage:"length") fromRange:{0, v8, a4, a5}];
}

- (id)Coherence_storageFromRange:()CRTT
{
  v1 = [a1 attributedSubstringFromRange:?];
  v2 = [v1 mutableCopy];

  return v2;
}

- (id)Coherence_emptyCopy
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD40]);

  return v0;
}

- (uint64_t)Coherence_mergeAttributesInRange:()CRTT withStorage:fromRange:
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __90__NSMutableAttributedString_CRTT__Coherence_mergeAttributesInRange_withStorage_fromRange___block_invoke;
  v8[3] = &unk_1E7A12798;
  v8[4] = a1;
  v8[5] = a3 - a6;
  return [a5 enumerateAttributesInRange:a6 options:a7 usingBlock:{0x100000, v8}];
}

@end