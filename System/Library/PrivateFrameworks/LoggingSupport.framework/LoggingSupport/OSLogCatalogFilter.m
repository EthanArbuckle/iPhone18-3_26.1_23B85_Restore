@interface OSLogCatalogFilter
@end

@implementation OSLogCatalogFilter

uint64_t __35___OSLogCatalogFilter_readDSCUUIDs__block_invoke(uint64_t result, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v8 = __35___OSLogCatalogFilter_readDSCUUIDs__block_invoke_2;
  v9 = &unk_2787AE430;
  v10 = *(result + 32);
  v2 = *(a2 + 8);
  if (*(v2 + 12))
  {
    v4 = 0;
    v5 = 28;
    do
    {
      result = (v8)(v7, *(a2 + 24) + v5 - 16, v2 + *(*(a2 + 24) + v5));
      if ((result & 1) == 0)
      {
        break;
      }

      ++v4;
      v2 = *(a2 + 8);
      v5 += 32;
    }

    while (v4 < *(v2 + 12));
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __35___OSLogCatalogFilter_readDSCUUIDs__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  LODWORD(v4) = [v4 containsSenderLookupSubstr:v5];

  if (v4)
  {
    *(*(a1 + 32) + 57) = 1;
    v6 = *(a1 + 32);
    v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a2];
    [v6 addUUID:v7];
  }

  return 1;
}

void __37___OSLogCatalogFilter_isKeptCatalog___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3];
  LODWORD(v4) = [v4 containsUUID:v5];

  if (v4)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void __37___OSLogCatalogFilter_isKeptCatalog___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  LODWORD(v3) = [v3 containsSubsystemSubstr:v4];

  if (v3)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void __37___OSLogCatalogFilter_isKeptCatalog___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a2 + 4)];
  LODWORD(v3) = [v3 containsProcessID:v4];

  if (v3)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

@end