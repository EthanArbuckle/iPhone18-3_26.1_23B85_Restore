@interface CRSInCallAssertionSpecification
+ (BSServiceInterface)interface;
@end

@implementation CRSInCallAssertionSpecification

+ (BSServiceInterface)interface
{
  if (interface_onceToken_1 != -1)
  {
    +[CRSInCallAssertionSpecification interface];
  }

  v3 = interface___interface_1;

  return v3;
}

void __44__CRSInCallAssertionSpecification_interface__block_invoke()
{
  v0 = MEMORY[0x277CF3278];
  v1 = +[CRSInCallAssertionSpecification identifier];
  v6 = [v0 interfaceWithIdentifier:v1];

  v2 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_2855A3840];
  [v6 setServer:v2];

  v3 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_2855A3988];
  [v6 setClient:v3];

  v4 = [v6 copy];
  v5 = interface___interface_1;
  interface___interface_1 = v4;
}

@end