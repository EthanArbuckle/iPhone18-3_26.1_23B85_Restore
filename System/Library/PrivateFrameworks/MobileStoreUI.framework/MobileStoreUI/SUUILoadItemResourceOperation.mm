@interface SUUILoadItemResourceOperation
- (SSVPlatformRequestOperation)underlyingOperation;
- (SUUILoadItemResourceOperation)initWithResourceRequest:(id)request;
- (void)cancel;
- (void)main;
@end

@implementation SUUILoadItemResourceOperation

- (SUUILoadItemResourceOperation)initWithResourceRequest:(id)request
{
  v4.receiver = self;
  v4.super_class = SUUILoadItemResourceOperation;
  return [(SUUILoadResourceOperation *)&v4 initWithResourceRequest:request];
}

- (void)main
{
  clientContext = [(SUUILoadResourceOperation *)self clientContext];
  v4 = objc_alloc(MEMORY[0x277D69CF0]);
  platformContext = [clientContext platformContext];
  v6 = [v4 initWithPlatformContext:platformContext];

  resourceRequest = [(SUUILoadResourceOperation *)self resourceRequest];
  imageProfile = [resourceRequest imageProfile];
  [v6 setImageProfile:imageProfile];

  keyProfile = [resourceRequest keyProfile];
  [v6 setKeyProfile:keyProfile];

  v10 = [clientContext valueForConfigurationKey:@"sfsuffix"];
  [v6 setStoreFrontSuffix:v10];

  itemIdentifiers = [resourceRequest itemIdentifiers];
  [v6 setItemIdentifiers:itemIdentifiers];
  outputBlock = [(SUUILoadResourceOperation *)self outputBlock];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __37__SUUILoadItemResourceOperation_main__block_invoke;
  v18 = &unk_2798F9378;
  v19 = itemIdentifiers;
  v20 = outputBlock;
  v13 = itemIdentifiers;
  v14 = outputBlock;
  [v6 setResponseBlock:&v15];
  [(SUUILoadItemResourceOperation *)self setUnderlyingOperation:v6, v15, v16, v17, v18];
  [v6 main];
}

void __37__SUUILoadItemResourceOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*(a1 + 40))
  {
    v7 = objc_alloc_init(SUUILoadItemsResponse);
    v8 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:*(a1 + 32)];
    v9 = [v5 allItems];
    if ([v9 count])
    {
      v22 = a1;
      v23 = v6;
      v24 = v5;
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v21 = v9;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v26;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v26 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v25 + 1) + 8 * i);
            v17 = [SUUIItem alloc];
            v18 = [v16 lookupDictionary];
            v19 = [(SUUIItem *)v17 initWithLookupDictionary:v18];

            if (v19)
            {
              v20 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{-[SUUIItem itemIdentifier](v19, "itemIdentifier")}];
              [v10 setObject:v19 forKey:v20];
              [v8 removeObject:v20];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v13);
      }

      v6 = v23;
      v5 = v24;
      a1 = v22;
      v9 = v21;
    }

    else
    {
      v10 = 0;
    }

    [(SUUILoadItemsResponse *)v7 setInvalidItemIdentifiers:v8];
    [(SUUILoadItemsResponse *)v7 setLoadedItems:v10];
    (*(*(a1 + 40) + 16))();
  }
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = SUUILoadItemResourceOperation;
  [(SUUILoadResourceOperation *)&v4 cancel];
  underlyingOperation = [(SUUILoadItemResourceOperation *)self underlyingOperation];
  [underlyingOperation cancel];
}

- (SSVPlatformRequestOperation)underlyingOperation
{
  WeakRetained = objc_loadWeakRetained(&self->_underlyingOperation);

  return WeakRetained;
}

@end