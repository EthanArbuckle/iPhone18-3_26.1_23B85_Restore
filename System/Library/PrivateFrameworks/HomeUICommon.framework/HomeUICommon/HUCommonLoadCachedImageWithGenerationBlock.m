@interface HUCommonLoadCachedImageWithGenerationBlock
@end

@implementation HUCommonLoadCachedImageWithGenerationBlock

uint64_t ___HUCommonLoadCachedImageWithGenerationBlock_block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = 1;
  }

  return (*(*(a1 + 32) + 16))();
}

@end