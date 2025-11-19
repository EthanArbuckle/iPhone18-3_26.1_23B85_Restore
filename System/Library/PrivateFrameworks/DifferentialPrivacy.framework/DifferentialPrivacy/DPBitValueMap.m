@interface DPBitValueMap
@end

@implementation DPBitValueMap

uint64_t __28___DPBitValueMap_initialize__block_invoke()
{
  _allBitValueMaps = [MEMORY[0x277CBEC10] mutableCopy];

  return MEMORY[0x2821F96F8]();
}

void __59___DPBitValueMap_bitValueMapForKey_fromConfigurationsFile___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 objectForKeyedSubscript:@"Value"];
  v4 = [v3 objectForKeyedSubscript:@"Index"];

  [*(a1 + 32) setObject:v4 forKeyedSubscript:v5];
}

@end