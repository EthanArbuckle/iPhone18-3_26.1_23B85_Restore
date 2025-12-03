@interface EDSynapseAttributes
- (BOOL)saveToFile:(id)file error:(id *)error;
- (EDSynapseAttributes)initWithSenderAddressComment:(id)comment senderAddress:(id)address messagePersistentID:(id)d receivedDate:(id)date;
- (void)saveToFile:(id)file completion:(id)completion;
@end

@implementation EDSynapseAttributes

- (EDSynapseAttributes)initWithSenderAddressComment:(id)comment senderAddress:(id)address messagePersistentID:(id)d receivedDate:(id)date
{
  commentCopy = comment;
  addressCopy = address;
  dCopy = d;
  dateCopy = date;
  v18.receiver = self;
  v18.super_class = EDSynapseAttributes;
  v15 = [(EDSynapseAttributes *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_senderAddressComment, comment);
    objc_storeStrong(&v16->_senderAddress, address);
    objc_storeStrong(&v16->_messagePersistentID, d);
    objc_storeStrong(&v16->_receivedDate, date);
  }

  return v16;
}

- (BOOL)saveToFile:(id)file error:(id *)error
{
  fileCopy = file;
  v7 = [objc_alloc(MEMORY[0x1E69D5408]) initWithEDAttributes:self file:fileCopy];
  LOBYTE(error) = [v7 saveToFileURL:fileCopy error:error];

  return error;
}

- (void)saveToFile:(id)file completion:(id)completion
{
  fileCopy = file;
  completionCopy = completion;
  v8 = [objc_alloc(MEMORY[0x1E69D5408]) initWithEDAttributes:self file:fileCopy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__EDSynapseAttributes_saveToFile_completion___block_invoke;
  v10[3] = &unk_1E8257D70;
  v9 = completionCopy;
  v11 = v9;
  [v8 saveToFileURL:fileCopy additionalAttributes:0 completion:v10];
}

@end