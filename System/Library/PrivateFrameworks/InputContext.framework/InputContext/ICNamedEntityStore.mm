@interface ICNamedEntityStore
@end

@implementation ICNamedEntityStore

void __53___ICNamedEntityStore_exemplarSetForSupportedLocales__block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = 0;
  exemplarSetForSupportedLocales_exemplarSet = _createExemplarSetForLocales(&unk_28670F1D8, &v2);
  if (v2 >= 1)
  {
    v0 = _ICPersNamedEntityOSLogFacility();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v4 = v2;
      _os_log_impl(&dword_254BD0000, v0, OS_LOG_TYPE_DEFAULT, "Unable to create exemplar set for whitelisting named entities (UErrorCode=%d)", buf, 8u);
    }
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __54___ICNamedEntityStore_areStringCharactersWhitelisted___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(a1 + 40);
  v6 = MEMORY[0x259C27200](a2);
  result = MEMORY[0x259C27290](v5, v6);
  if (!result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

void __43___ICNamedEntityStore_addEntity_isDurable___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  [*(*(a1 + 32) + 8) removeObject:?];
  v3 = [*(*(a1 + 32) + 8) count];
  v4 = *(a1 + 32);
  if (v3 >= *(v4 + 16))
  {
    v5 = [*(v4 + 8) firstObject];
    [*(*(a1 + 32) + 96) removeEntity:v5];
    [*(*(a1 + 32) + 88) removeEntity:v5];
    [*(*(a1 + 32) + 8) removeObjectAtIndex:0];

    v4 = *(a1 + 32);
  }

  [*(v4 + 8) addObject:v6];
}

id __43___ICNamedEntityStore_addEntity_isDurable___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [a3 lowercaseString];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 name];
        v12 = [v11 lowercaseString];
        v13 = [v5 isEqualToString:v12];

        if (v13)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

void __32___ICNamedEntityStore_tokenize___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((a4 - 500) <= 0xFFFFFE0C)
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a2 length:a3 encoding:4];
    v7 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v8 = [v6 stringByTrimmingCharactersInSet:v7];

    [*(a1 + 32) addObject:v8];
  }
}

@end