@interface KeyValueStringFromDictionary
@end

@implementation KeyValueStringFromDictionary

void ___KeyValueStringFromDictionary_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v7 = [v4 objectForKeyedSubscript:v5];
  v6 = [v2 stringWithFormat:@"%@=%@", v5, v7];

  [v3 addObject:v6];
}

@end