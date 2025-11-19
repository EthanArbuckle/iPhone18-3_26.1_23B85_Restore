@interface OSIsAncientArchive
@end

@implementation OSIsAncientArchive

uint64_t ___OSIsAncientArchive_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == a2 && *a2 == 4096 && *(a2 + 8) >= 0x88uLL)
  {
    *(*(*(a1 + 32) + 8) + 24) = strcmp((a2 + 104), "X619AP") == 0;
  }

  return 0;
}

@end