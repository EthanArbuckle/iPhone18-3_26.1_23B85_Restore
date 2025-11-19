@interface NSArray
@end

@implementation NSArray

void __52__NSArray_CNFRegUtilities__CNFRegArrayPassingTests___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v19 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = (*(*(*(&v15 + 1) + 8 * i) + 16))(*(*(&v15 + 1) + 8 * i));
        v13 = v19;
        if (a4 && v19)
        {
          *a4 = 1;
        }

        if (!v12 || (v13 & 1) != 0)
        {

          goto LABEL_15;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  [*(a1 + 40) addObject:{v6, v15}];
LABEL_15:

  v14 = *MEMORY[0x277D85DE8];
}

@end