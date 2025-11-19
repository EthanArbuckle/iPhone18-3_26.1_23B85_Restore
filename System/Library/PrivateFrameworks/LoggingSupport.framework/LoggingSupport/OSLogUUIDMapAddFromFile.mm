@interface OSLogUUIDMapAddFromFile
@end

@implementation OSLogUUIDMapAddFromFile

uint64_t ___OSLogUUIDMapAddFromFile_block_invoke(uint64_t a1, _DWORD *a2)
{
  if (*a2 != 24587)
  {
    return 1;
  }

  v4 = _catalog_create_with_chunk(a2, 0);
  if (v4)
  {
    v11 = v4;
    _OSLogUUIDMapAddFromCatalog(v4, *(a1 + 48));
    _catalog_destroy(v11);
    return 1;
  }

  else
  {
    _OSLogWarningMessage(*(a1 + 32), "failed to open catalog chunk", v5, v6, v7, v8, v9, v10, v2);
    result = 0;
    *(*(*(a1 + 40) + 8) + 24) = 22;
  }

  return result;
}

@end