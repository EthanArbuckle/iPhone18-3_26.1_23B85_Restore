@interface SUUIPersonalizeOfferOperation
- (SUUIPersonalizeOfferOperation)initWithItemIdentifier:(int64_t)a3 clientContext:(id)a4;
- (id)outputBlock;
- (void)main;
- (void)setOutputBlock:(id)a3;
@end

@implementation SUUIPersonalizeOfferOperation

- (SUUIPersonalizeOfferOperation)initWithItemIdentifier:(int64_t)a3 clientContext:(id)a4
{
  v7 = a4;
  v15.receiver = self;
  v15.super_class = SUUIPersonalizeOfferOperation;
  v8 = [(SUUIPersonalizeOfferOperation *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_clientContext, a4);
    v9->_itemID = a3;
    v10 = dispatch_queue_create("com.apple.iTunesStoreUI.SUUIPersonalizeOfferOperation", 0);
    dispatchQueue = v9->_dispatchQueue;
    v9->_dispatchQueue = v10;

    v12 = v9->_dispatchQueue;
    v13 = dispatch_get_global_queue(0, 0);
    dispatch_set_target_queue(v12, v13);
  }

  return v9;
}

- (id)outputBlock
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__17;
  v10 = __Block_byref_object_dispose__17;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__SUUIPersonalizeOfferOperation_outputBlock__block_invoke;
  v5[3] = &unk_2798F5B48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = _Block_copy(v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __44__SUUIPersonalizeOfferOperation_outputBlock__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 272) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)setOutputBlock:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SUUIPersonalizeOfferOperation_setOutputBlock___block_invoke;
  v7[3] = &unk_2798F6030;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __48__SUUIPersonalizeOfferOperation_setOutputBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 272);
  *(v3 + 272) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)main
{
  v28[1] = *MEMORY[0x277D85DE8];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__2_0;
  v26 = __Block_byref_object_dispose__3_0;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__2_0;
  v20 = __Block_byref_object_dispose__3_0;
  v21 = 0;
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%lld", self->_itemID];
  v4 = objc_alloc(MEMORY[0x277D69CF0]);
  v5 = [(SUUIClientContext *)self->_clientContext platformContext];
  v6 = [v4 initWithPlatformContext:v5];

  v28[0] = v3;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  [v6 setItemIdentifiers:v7];

  [v6 setKeyProfile:@"offer"];
  [v6 setPersonalizationStyle:0];
  v8 = [(SUUIClientContext *)self->_clientContext valueForConfigurationKey:@"sfsuffix"];
  [v6 setStoreFrontSuffix:v8];

  [v6 setTimeoutInterval:&unk_286BBE000];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __37__SUUIPersonalizeOfferOperation_main__block_invoke;
  v12[3] = &unk_2798F6058;
  v9 = v3;
  v13 = v9;
  v14 = &v22;
  v15 = &v16;
  [v6 setResponseBlock:v12];
  [v6 main];
  v10 = [(SUUIPersonalizeOfferOperation *)self outputBlock];
  v11 = v10;
  if (v10)
  {
    (*(v10 + 16))(v10, v17[5], v23[5]);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
}

void __37__SUUIPersonalizeOfferOperation_main__block_invoke(void *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a2 itemForKey:a1[4]];
  v8 = v7;
  if (v7)
  {
    v20 = v6;
    [v7 offers];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v24 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [SUUIItemOffer alloc];
          v16 = [v14 lookupDictionary];
          v17 = [(SUUIItemOffer *)v15 initWithLookupDictionary:v16];

          if ([(SUUIItemOffer *)v17 offerType]== 1)
          {
            v18 = *(a1[6] + 8);
            v19 = *(v18 + 40);
            *(v18 + 40) = v17;

            goto LABEL_12;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v6 = v20;
  }

  else
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
  }
}

@end