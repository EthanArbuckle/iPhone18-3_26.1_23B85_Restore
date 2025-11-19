@interface OSLogIndexFile
@end

@implementation OSLogIndexFile

uint64_t __50___OSLogIndexFile__loadCatalogMetadataForTimespan__block_invoke(uint64_t a1, uint64_t a2)
{
  if (*a2 == 24587)
  {
    v2 = *(a1 + 32);
    if (*(v2 + 48) != -1)
    {
      _catalog_lite_read_limits(a2, v2 + 56, v2 + 64);
    }
  }

  else if (*a2 == 4096)
  {
    *(*(a1 + 32) + 48) = *(a2 + 64);
  }

  return 1;
}

BOOL __39___OSLogIndexFile__loadHeaderMetadata___block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v2 = *a2;
  if (*a2 == 4096 && *(a2 + 1) >= 0xA8uLL)
  {
    uuid_copy((*(a1 + 32) + 24), a2 + 144);
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return v2 != 4096;
}

@end