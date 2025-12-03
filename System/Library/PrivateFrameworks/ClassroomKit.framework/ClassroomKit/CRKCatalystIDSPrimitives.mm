@interface CRKCatalystIDSPrimitives
+ (id)crkOptionsFromOptions:(id)options;
- (CRKCatalystIDSPrimitives)initWithPrimitives:(id)primitives addressTranslator:(id)translator;
- (id)addressForAppleID:(id)d;
- (void)addMessageHandler:(id)handler completion:(id)completion;
- (void)sendMessage:(id)message toAddress:(id)address fromID:(id)d options:(id)options completion:(id)completion;
@end

@implementation CRKCatalystIDSPrimitives

- (CRKCatalystIDSPrimitives)initWithPrimitives:(id)primitives addressTranslator:(id)translator
{
  primitivesCopy = primitives;
  translatorCopy = translator;
  v12.receiver = self;
  v12.super_class = CRKCatalystIDSPrimitives;
  v9 = [(CRKCatalystIDSPrimitives *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_primitives, primitives);
    objc_storeStrong(&v10->_addressTranslator, translator);
  }

  return v10;
}

- (void)addMessageHandler:(id)handler completion:(id)completion
{
  handlerCopy = handler;
  completionCopy = completion;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __57__CRKCatalystIDSPrimitives_addMessageHandler_completion___block_invoke;
  v19[3] = &unk_278DC3628;
  v20 = handlerCopy;
  v8 = handlerCopy;
  v9 = MEMORY[0x245D3AAD0](v19);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __57__CRKCatalystIDSPrimitives_addMessageHandler_completion___block_invoke_2;
  v17[3] = &unk_278DC3650;
  v18 = completionCopy;
  v10 = completionCopy;
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

- (id)addressForAppleID:(id)d
{
  dCopy = d;
  addressTranslator = [(CRKCatalystIDSPrimitives *)self addressTranslator];
  v6 = [addressTranslator destinationAddressForAppleID:dCopy];

  return v6;
}

- (void)sendMessage:(id)message toAddress:(id)address fromID:(id)d options:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  dCopy = d;
  addressCopy = address;
  messageCopy = message;
  v18 = [objc_opt_class() crkOptionsFromOptions:optionsCopy];

  primitives = [(CRKCatalystIDSPrimitives *)self primitives];
  [primitives sendMessage:messageCopy destinationAddress:addressCopy sourceAppleID:dCopy options:v18 completion:completionCopy];
}

+ (id)crkOptionsFromOptions:(id)options
{
  optionsCopy = options;
  v4 = objc_opt_new();
  [v4 setFireAndForget:{objc_msgSend(optionsCopy, "shouldFireAndForget")}];
  deliveryTimeout = [optionsCopy deliveryTimeout];

  [v4 setDeliveryTimeout:deliveryTimeout];

  return v4;
}

@end