@interface CRKIDSMessageCannon
- (CRKIDSMessageCannon)initWithIDSPrimitives:(id)primitives;
- (void)sendIDSMessage:(id)message destinationAddress:(id)address sourceAppleID:(id)d completion:(id)completion;
- (void)sendIDSMessage:(id)message destinationAddress:(id)address sourceAppleID:(id)d options:(id)options completion:(id)completion;
@end

@implementation CRKIDSMessageCannon

- (CRKIDSMessageCannon)initWithIDSPrimitives:(id)primitives
{
  primitivesCopy = primitives;
  v11.receiver = self;
  v11.super_class = CRKIDSMessageCannon;
  v6 = [(CRKIDSMessageCannon *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_IDSPrimitives, primitives);
    v8 = objc_opt_new();
    messageFormatter = v7->_messageFormatter;
    v7->_messageFormatter = v8;
  }

  return v7;
}

- (void)sendIDSMessage:(id)message destinationAddress:(id)address sourceAppleID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  addressCopy = address;
  messageCopy = message;
  v14 = objc_opt_new();
  [(CRKIDSMessageCannon *)self sendIDSMessage:messageCopy destinationAddress:addressCopy sourceAppleID:dCopy options:v14 completion:completionCopy];
}

- (void)sendIDSMessage:(id)message destinationAddress:(id)address sourceAppleID:(id)d options:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  dCopy = d;
  addressCopy = address;
  messageCopy = message;
  messageFormatter = [(CRKIDSMessageCannon *)self messageFormatter];
  v18 = [messageFormatter formatMessageForSending:messageCopy];

  iDSPrimitives = [(CRKIDSMessageCannon *)self IDSPrimitives];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __90__CRKIDSMessageCannon_sendIDSMessage_destinationAddress_sourceAppleID_options_completion___block_invoke;
  v21[3] = &unk_278DC19D0;
  v21[4] = self;
  v22 = completionCopy;
  v20 = completionCopy;
  [iDSPrimitives sendMessage:v18 destinationAddress:addressCopy sourceAppleID:dCopy options:optionsCopy completion:v21];
}

void __90__CRKIDSMessageCannon_sendIDSMessage_destinationAddress_sourceAppleID_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = a2;

  (*(*(a1 + 40) + 16))();
}

@end