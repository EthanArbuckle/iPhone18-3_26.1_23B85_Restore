@interface IDSProtobuf(ExtendedDescription)
- (id)extendedDescription;
@end

@implementation IDSProtobuf(ExtendedDescription)

- (id)extendedDescription
{
  v2 = [a1 context];
  v3 = MEMORY[0x277CCACA8];
  v4 = [v2 serviceIdentifier];
  v5 = [v2 incomingResponseIdentifier];
  v6 = [v2 outgoingResponseIdentifier];
  v7 = [v3 stringWithFormat:@"%@ service: %@ incoming ID: %@ outgoing ID: %@", a1, v4, v5, v6];;

  return v7;
}

@end