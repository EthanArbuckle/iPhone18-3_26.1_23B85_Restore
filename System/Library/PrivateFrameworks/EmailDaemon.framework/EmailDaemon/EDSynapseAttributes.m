@interface EDSynapseAttributes
- (BOOL)saveToFile:(id)a3 error:(id *)a4;
- (EDSynapseAttributes)initWithSenderAddressComment:(id)a3 senderAddress:(id)a4 messagePersistentID:(id)a5 receivedDate:(id)a6;
- (void)saveToFile:(id)a3 completion:(id)a4;
@end

@implementation EDSynapseAttributes

- (EDSynapseAttributes)initWithSenderAddressComment:(id)a3 senderAddress:(id)a4 messagePersistentID:(id)a5 receivedDate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = EDSynapseAttributes;
  v15 = [(EDSynapseAttributes *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_senderAddressComment, a3);
    objc_storeStrong(&v16->_senderAddress, a4);
    objc_storeStrong(&v16->_messagePersistentID, a5);
    objc_storeStrong(&v16->_receivedDate, a6);
  }

  return v16;
}

- (BOOL)saveToFile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E69D5408]) initWithEDAttributes:self file:v6];
  LOBYTE(a4) = [v7 saveToFileURL:v6 error:a4];

  return a4;
}

- (void)saveToFile:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x1E69D5408]) initWithEDAttributes:self file:v6];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__EDSynapseAttributes_saveToFile_completion___block_invoke;
  v10[3] = &unk_1E8257D70;
  v9 = v7;
  v11 = v9;
  [v8 saveToFileURL:v6 additionalAttributes:0 completion:v10];
}

@end