@interface NSMutableString(CRTT)
- (id)Coherence_emptyCopy;
- (id)Coherence_storageFromRange:()CRTT;
- (void)Coherence_appendStorage:()CRTT fromRange:;
- (void)Coherence_replaceStorageInRange:()CRTT withStorage:fromRange:;
@end

@implementation NSMutableString(CRTT)

- (void)Coherence_replaceStorageInRange:()CRTT withStorage:fromRange:
{
  v10 = [a5 substringWithRange:{a6, a7}];
  [a1 replaceCharactersInRange:a3 withString:a4];
}

- (void)Coherence_appendStorage:()CRTT fromRange:
{
  v8 = a3;
  [a1 Coherence_replaceStorageInRange:objc_msgSend(a1 withStorage:"length") fromRange:{0, v8, a4, a5}];
}

- (id)Coherence_storageFromRange:()CRTT
{
  v1 = [a1 substringWithRange:?];
  v2 = [v1 mutableCopy];

  return v2;
}

- (id)Coherence_emptyCopy
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD60]);

  return v0;
}

@end