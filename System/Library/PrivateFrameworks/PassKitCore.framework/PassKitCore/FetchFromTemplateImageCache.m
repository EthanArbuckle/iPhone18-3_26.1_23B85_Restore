@interface FetchFromTemplateImageCache
@end

@implementation FetchFromTemplateImageCache

void ___FetchFromTemplateImageCache_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

@end