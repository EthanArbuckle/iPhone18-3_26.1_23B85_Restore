@interface CRSUIStatusBarStyleSpecification
+ (BSServiceInterface)interface;
@end

@implementation CRSUIStatusBarStyleSpecification

+ (BSServiceInterface)interface
{
  if (interface_onceToken_0 != -1)
  {
    +[CRSUIStatusBarStyleSpecification interface];
  }

  v3 = interface___interface_0;

  return v3;
}

void __45__CRSUIStatusBarStyleSpecification_interface__block_invoke()
{
  v0 = MEMORY[0x277CF3278];
  v1 = +[CRSUIStatusBarStyleSpecification identifier];
  v6 = [v0 interfaceWithIdentifier:v1];

  [v6 setClientMessagingExpectation:1];
  v2 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_2855FCE70];
  [v6 setServer:v2];

  v3 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_2855FAA98];
  [v6 setClient:v3];

  v4 = [v6 copy];
  v5 = interface___interface_0;
  interface___interface_0 = v4;
}

@end