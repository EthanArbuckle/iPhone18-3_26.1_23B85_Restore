@interface ProcessRemovabilityMetadataListMap
@end

@implementation ProcessRemovabilityMetadataListMap

void ___ProcessRemovabilityMetadataListMap_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [a3 mostRestrictiveRemovabilityMetadata];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];

  *a4 = 0;
}

@end