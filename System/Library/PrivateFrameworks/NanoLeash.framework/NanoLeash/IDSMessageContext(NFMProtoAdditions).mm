@interface IDSMessageContext(NFMProtoAdditions)
- (id)nfmDescription;
@end

@implementation IDSMessageContext(NFMProtoAdditions)

- (id)nfmDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [self description];
  outgoingResponseIdentifier = [self outgoingResponseIdentifier];
  incomingResponseIdentifier = [self incomingResponseIdentifier];
  v6 = [v2 stringWithFormat:@"(%@ outgoingResponseIdentifier %@ incomingResponseIdentifier %@ expectsPeerResponse %d)", v3, outgoingResponseIdentifier, incomingResponseIdentifier, objc_msgSend(self, "expectsPeerResponse")];

  return v6;
}

@end