@interface SUUILoadGratisEligibilityOperation
- (SUUILoadGratisEligibilityOperation)init;
- (SUUILoadGratisEligibilityOperation)initWithBundleIdentifiers:(id)identifiers clientContext:(id)context;
- (id)_bodyData;
- (id)outputBlock;
- (void)main;
- (void)setOutputBlock:(id)block;
@end

@implementation SUUILoadGratisEligibilityOperation

- (SUUILoadGratisEligibilityOperation)init
{
  v3 = +[SUUIClientContext defaultContext];
  v4 = [(SUUILoadGratisEligibilityOperation *)self initWithBundleIdentifiers:0 clientContext:v3];

  return v4;
}

- (SUUILoadGratisEligibilityOperation)initWithBundleIdentifiers:(id)identifiers clientContext:(id)context
{
  identifiersCopy = identifiers;
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = SUUILoadGratisEligibilityOperation;
  v8 = [(SUUILoadGratisEligibilityOperation *)&v15 init];
  if (v8)
  {
    v9 = [identifiersCopy copy];
    bundleIDs = v8->_bundleIDs;
    v8->_bundleIDs = v9;

    objc_storeStrong(&v8->_clientContext, context);
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"com.apple.iTunesStoreUI.SUUILoadGratisEligibilityOperation"];
    v12 = dispatch_queue_create([v11 UTF8String], 0);
    dispatchQueue = v8->_dispatchQueue;
    v8->_dispatchQueue = v12;
  }

  return v8;
}

- (id)outputBlock
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__60;
  v10 = __Block_byref_object_dispose__60;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__SUUILoadGratisEligibilityOperation_outputBlock__block_invoke;
  v5[3] = &unk_2798F5B48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = _Block_copy(v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __49__SUUILoadGratisEligibilityOperation_outputBlock__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 272) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)setOutputBlock:(id)block
{
  blockCopy = block;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__SUUILoadGratisEligibilityOperation_setOutputBlock___block_invoke;
  v7[3] = &unk_2798F6030;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(dispatchQueue, v7);
}

void *__53__SUUILoadGratisEligibilityOperation_setOutputBlock___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v3 + 272) != result)
  {
    v4 = [result copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 272);
    *(v5 + 272) = v4;

    return MEMORY[0x2821F96F8](v4, v6);
  }

  return result;
}

- (void)main
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__3;
  v34 = __Block_byref_object_dispose__4;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__3;
  v28 = __Block_byref_object_dispose__4;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__4;
  v23 = 0;
  v3 = dispatch_semaphore_create(0);
  uRLBag = [(SUUIClientContext *)self->_clientContext URLBag];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__SUUILoadGratisEligibilityOperation_main__block_invoke;
  v14[3] = &unk_2798F8288;
  v16 = &v18;
  v17 = &v24;
  v5 = v3;
  v15 = v5;
  [uRLBag loadValueForKey:@"up-to-date-eligibility-read" completionBlock:v14];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  if (v19[5])
  {
    v6 = objc_alloc(MEMORY[0x277CBAB50]);
    v7 = [v6 initWithURL:v19[5]];
    _bodyData = [(SUUILoadGratisEligibilityOperation *)self _bodyData];
    [v7 setHTTPBody:_bodyData];

    [v7 setHTTPMethod:@"POST"];
    [v7 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    v9 = [(SUUIClientContext *)self->_clientContext newLoadStoreURLOperationWithURLRequest:v7];
    consumer = [MEMORY[0x277D69D48] consumer];
    [v9 setDataConsumer:consumer];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __42__SUUILoadGratisEligibilityOperation_main__block_invoke_2;
    v13[3] = &unk_2798F8158;
    v13[4] = &v30;
    v13[5] = &v24;
    [v9 setOutputBlock:v13];
    [v9 main];
  }

  outputBlock = [(SUUILoadGratisEligibilityOperation *)self outputBlock];
  v12 = outputBlock;
  if (outputBlock)
  {
    (*(outputBlock + 16))(outputBlock, v31[5], v25[5]);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
}

void __42__SUUILoadGratisEligibilityOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v12];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __42__SUUILoadGratisEligibilityOperation_main__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 objectForKey:@"status"];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ![v7 integerValue])
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v9 = *(*(a1 + 32) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v11 = [v5 objectForKey:@"items"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v6;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v21 = v11;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v24;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v24 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v23 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v18 = [v17 objectForKey:@"item-id"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [*(*(*(a1 + 32) + 8) + 40) addObject:v18];
                }
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
          }

          while (v14);
        }

        v6 = v22;
        v11 = v21;
      }
    }
  }

  v19 = *(*(a1 + 40) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v6;
}

- (id)_bodyData
{
  v3 = objc_alloc_init(MEMORY[0x277D69CD0]);
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];
  uniqueIdentifier = [activeAccount uniqueIdentifier];
  [v3 setAccountIdentifier:uniqueIdentifier];

  [v3 setBundleIdentifiers:self->_bundleIDs];
  jSONBodyData = [v3 JSONBodyData];

  return jSONBodyData;
}

@end