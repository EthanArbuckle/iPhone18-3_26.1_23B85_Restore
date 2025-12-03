@interface SYDocumentAttributes(EDSynapseAttributes)
- (uint64_t)initWithEDAttributes:()EDSynapseAttributes file:;
@end

@implementation SYDocumentAttributes(EDSynapseAttributes)

- (uint64_t)initWithEDAttributes:()EDSynapseAttributes file:
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x1E69D5418]);
  senderAddressComment = [v6 senderAddressComment];
  senderAddress = [v6 senderAddress];
  v11 = [v8 initWithName:senderAddressComment handle:senderAddress];

  messagePersistentID = [v6 messagePersistentID];
  receivedDate = [v6 receivedDate];
  v14 = [self initWithSourceBundleIdentifier:*MEMORY[0x1E699A778] indexKey:messagePersistentID originalFileURL:v7 receivedDate:receivedDate sender:v11];

  return v14;
}

@end