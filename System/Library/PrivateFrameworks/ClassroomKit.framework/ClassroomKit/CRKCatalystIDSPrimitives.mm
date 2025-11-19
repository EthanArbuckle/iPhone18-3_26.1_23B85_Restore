@interface CRKCatalystIDSPrimitives
+ (id)crkOptionsFromOptions:(id)a3;
- (CRKCatalystIDSPrimitives)initWithPrimitives:(id)a3 addressTranslator:(id)a4;
- (id)addressForAppleID:(id)a3;
- (void)addMessageHandler:(id)a3 completion:(id)a4;
- (void)sendMessage:(id)a3 toAddress:(id)a4 fromID:(id)a5 options:(id)a6 completion:(id)a7;
@end

@implementation CRKCatalystIDSPrimitives

- (CRKCatalystIDSPrimitives)initWithPrimitives:(id)a3 addressTranslator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CRKCatalystIDSPrimitives;
  v9 = [(CRKCatalystIDSPrimitives *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_primitives, a3);
    objc_storeStrong(&v10->_addressTranslator, a4);
  }

  return v10;
}

- (void)addMessageHandler:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __57__CRKCatalystIDSPrimitives_addMessageHandler_completion___block_invoke;
  v19[3] = &unk_278DC3628;
  v20 = v6;
  v8 = v6;
  v9 = MEMORY[0x245D3AAD0](v19);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __57__CRKCatalystIDSPrimitives_addMessageHandler_completion___block_invoke_2;
  v17[3] = &unk_278DC3650;
  v18 = v7;
  v10 = v7;
  v11 = MEMORY[0x245D3AAD0](v17);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__CRKCatalystIDSPrimitives_addMessageHandler_completion___block_invoke_3;
  block[3] = &unk_278DC3678;
  block[4] = self;
  v15 = v9;
  v16 = v11;
  v12 = v11;
  v13 = v9;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __57__CRKCatalystIDSPrimitives_addMessageHandler_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = [[CRKCancelableBackedCatalystIDSSubscription alloc] initWithCancelable:v6];
    (*(*(a1 + 32) + 16))();
  }
}

void __57__CRKCatalystIDSPrimitives_addMessageHandler_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) primitives];
  [v2 subscribeToMessagesWithHandler:*(a1 + 40) completion:*(a1 + 48)];
}

- (id)addressForAppleID:(id)a3
{
  v4 = a3;
  v5 = [(CRKCatalystIDSPrimitives *)self addressTranslator];
  v6 = [v5 destinationAddressForAppleID:v4];

  return v6;
}

- (void)sendMessage:(id)a3 toAddress:(id)a4 fromID:(id)a5 options:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v18 = [objc_opt_class() crkOptionsFromOptions:v13];

  v17 = [(CRKCatalystIDSPrimitives *)self primitives];
  [v17 sendMessage:v16 destinationAddress:v15 sourceAppleID:v14 options:v18 completion:v12];
}

+ (id)crkOptionsFromOptions:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setFireAndForget:{objc_msgSend(v3, "shouldFireAndForget")}];
  v5 = [v3 deliveryTimeout];

  [v4 setDeliveryTimeout:v5];

  return v4;
}

@end