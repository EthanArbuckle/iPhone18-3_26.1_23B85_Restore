@interface IDSMessageContext(PKProtoAdditions)
- (id)pkDescription;
@end

@implementation IDSMessageContext(PKProtoAdditions)

- (id)pkDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [self description];
  outgoingResponseIdentifier = [self outgoingResponseIdentifier];
  incomingResponseIdentifier = [self incomingResponseIdentifier];
  v6 = [v2 stringWithFormat:@"(%@ outgoingResponseIdentifier %@ incomingResponseIdentifier %@ expectsPeerResponse %d)", v3, outgoingResponseIdentifier, incomingResponseIdentifier, objc_msgSend(self, "expectsPeerResponse")];

  return v6;
}

@end