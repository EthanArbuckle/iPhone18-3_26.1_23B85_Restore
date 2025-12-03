@interface IDSMessageContext(PBProtoAdditions)
- (id)pbDescription;
@end

@implementation IDSMessageContext(PBProtoAdditions)

- (id)pbDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [self description];
  outgoingResponseIdentifier = [self outgoingResponseIdentifier];
  incomingResponseIdentifier = [self incomingResponseIdentifier];
  v6 = [v2 stringWithFormat:@"(%@ outgoingResponseIdentifier %@ incomingResponseIdentifier %@ expectsPeerResponse %d)", v3, outgoingResponseIdentifier, incomingResponseIdentifier, objc_msgSend(self, "expectsPeerResponse")];

  return v6;
}

@end