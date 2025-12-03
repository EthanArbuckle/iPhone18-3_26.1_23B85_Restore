@interface SUUIProductPageProductInfo
- (SUUIProductPageProductInfo)initWithInfoSectionDictionaries:(id)dictionaries;
- (void)enumerateEntriesWithBlock:(id)block;
@end

@implementation SUUIProductPageProductInfo

- (SUUIProductPageProductInfo)initWithInfoSectionDictionaries:(id)dictionaries
{
  v28 = *MEMORY[0x277D85DE8];
  dictionariesCopy = dictionaries;
  v26.receiver = self;
  v26.super_class = SUUIProductPageProductInfo;
  v20 = [(SUUIProductPageProductInfo *)&v26 init];
  if (v20)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    labels = v20->_labels;
    v20->_labels = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    values = v20->_values;
    v20->_values = v7;

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = dictionariesCopy;
    v9 = dictionariesCopy;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        v13 = 0;
        v21 = v11;
        do
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v22 + 1) + 8 * v13);
          v15 = objc_autoreleasePoolPush();
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = [v14 objectForKey:@"label"];
            v17 = [v14 objectForKey:@"value"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(NSMutableArray *)v20->_labels addObject:v16];
                v11 = v21;
                [(NSMutableArray *)v20->_values addObject:v17];
              }
            }
          }

          objc_autoreleasePoolPop(v15);
          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v11);
    }

    dictionariesCopy = v19;
  }

  return v20;
}

- (void)enumerateEntriesWithBlock:(id)block
{
  blockCopy = block;
  labels = self->_labels;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SUUIProductPageProductInfo_enumerateEntriesWithBlock___block_invoke;
  v7[3] = &unk_2798FA998;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSMutableArray *)labels enumerateObjectsUsingBlock:v7];
}

void __56__SUUIProductPageProductInfo_enumerateEntriesWithBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 16);
  v8 = a2;
  v9 = [v7 objectAtIndex:a3];
  (*(v6 + 16))(v6, v8, v9, a3, a4);
}

@end