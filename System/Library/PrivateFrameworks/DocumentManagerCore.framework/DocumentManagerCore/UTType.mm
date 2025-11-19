@interface UTType
@end

@implementation UTType

uint64_t __39__UTType_DOCNode__doc_conformsToFolder__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = doc_conformsToFolder__folderUTICache;
  doc_conformsToFolder__folderUTICache = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __55__UTType_DOCAdditions__doc_contentTypesForIdentifiers___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKey:a2];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(a1 + 40) addObject:v3];
    v4 = v6;
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

void __55__UTType_DOCAdditions__doc_identifiersForContentTypes___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  [v2 addObject:v3];
}

@end