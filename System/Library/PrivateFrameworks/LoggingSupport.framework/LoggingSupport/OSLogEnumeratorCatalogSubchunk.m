@interface OSLogEnumeratorCatalogSubchunk
@end

@implementation OSLogEnumeratorCatalogSubchunk

uint64_t __61___OSLogEnumeratorCatalogSubchunk_enumerateChunksUsingBlock___block_invoke(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61___OSLogEnumeratorCatalogSubchunk_enumerateChunksUsingBlock___block_invoke_2;
  v10[3] = &unk_2787AED38;
  v7 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = a3;
  v13 = a4;
  v8 = enumerateAndDecompressSubchunk(v7, a2, a2, v10);

  return v8;
}

@end