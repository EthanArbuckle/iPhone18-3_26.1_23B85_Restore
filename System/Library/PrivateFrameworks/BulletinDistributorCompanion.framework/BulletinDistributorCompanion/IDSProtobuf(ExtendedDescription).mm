@interface IDSProtobuf(ExtendedDescription)
- (id)extendedDescription;
@end

@implementation IDSProtobuf(ExtendedDescription)

- (id)extendedDescription
{
  context = [self context];
  v3 = MEMORY[0x277CCACA8];
  serviceIdentifier = [context serviceIdentifier];
  incomingResponseIdentifier = [context incomingResponseIdentifier];
  outgoingResponseIdentifier = [context outgoingResponseIdentifier];
  v7 = [v3 stringWithFormat:@"%@ service: %@ incoming ID: %@ outgoing ID: %@", self, serviceIdentifier, incomingResponseIdentifier, outgoingResponseIdentifier];;

  return v7;
}

@end