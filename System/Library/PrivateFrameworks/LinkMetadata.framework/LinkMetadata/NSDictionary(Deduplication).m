@interface NSDictionary(Deduplication)
- (id)ln_deduping:()Deduplication;
@end

@implementation NSDictionary(Deduplication)

- (id)ln_deduping:()Deduplication
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43__NSDictionary_Deduplication__ln_deduping___block_invoke;
  v11[3] = &unk_1E72B0CF8;
  v12 = v4;
  v6 = v5;
  v13 = v6;
  v7 = v4;
  [a1 enumerateKeysAndObjectsUsingBlock:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

@end