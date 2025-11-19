@interface SIDirectoryStoreIterate
@end

@implementation SIDirectoryStoreIterate

uint64_t ___SIDirectoryStoreIterate_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      (*(v2 + 16))();
    }
  }

  return 0;
}

@end