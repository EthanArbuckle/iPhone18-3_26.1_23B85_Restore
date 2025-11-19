@interface UTTypeRecord
@end

@implementation UTTypeRecord

BOOL __80__UTTypeRecord_IconServicesAdditions___IS_iconProvidingRecordAcceptingWildCard___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 iconDictionary];
  v5 = +[ISDefaults sharedInstance];
  v6 = [v5 isSolariumEnabled];

  if ((v6 & 1) == 0)
  {
    v7 = [v4 mutableCopy];
    [v7 removeObjectForKey:@"ISDocumentIconConfiguration"];
    [v7 removeObjectForKey:@"ISFolderIconConfiguration"];
    v8 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v7];

    v4 = v8;
  }

  v9 = [v4 count] && (!objc_msgSend(v3, "isWildcard") || (*(a1 + 32) & 1) != 0);

  return v9;
}

void __80__UTTypeRecord_IconServicesAdditions___IS_iconProvidingRecordAcceptingWildCard___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

uint64_t __125__UTTypeRecord_IconServicesAdditions___IS_symbolProvidingRecordWithVariantKey_allowNonVariantMatch_preferHeroOverBaseSymbol___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!*(a1 + 32))
  {
LABEL_5:
    if (*(a1 + 41) == 1)
    {
      v6 = [v4 _IS_symbolHeroName];

      if (v6)
      {
        goto LABEL_8;
      }
    }

    v7 = [v4 _IS_symbolName];

    if (v7)
    {
      goto LABEL_8;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  v5 = [v3 _IS_symbolNameForVariantKey:?];

  if (!v5)
  {
    if (*(a1 + 32) && *(a1 + 40) != 1)
    {
      goto LABEL_9;
    }

    goto LABEL_5;
  }

LABEL_8:
  v8 = 1;
LABEL_10:

  return v8;
}

void __125__UTTypeRecord_IconServicesAdditions___IS_symbolProvidingRecordWithVariantKey_allowNonVariantMatch_preferHeroOverBaseSymbol___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

@end