@interface CRSUIPunchThroughSpecification
+ (BSServiceInterface)interface;
@end

@implementation CRSUIPunchThroughSpecification

+ (BSServiceInterface)interface
{
  if (interface_onceToken_2 != -1)
  {
    +[CRSUIPunchThroughSpecification interface];
  }

  v3 = interface___interface_2;

  return v3;
}

void __43__CRSUIPunchThroughSpecification_interface__block_invoke()
{
  v0 = MEMORY[0x277CF3278];
  v1 = +[CRSUIPunchThroughSpecification identifier];
  v6 = [v0 interfaceWithIdentifier:v1];

  [v6 setClientMessagingExpectation:1];
  v2 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_2855FBA48];
  [v6 setServer:v2];

  v3 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_2855FC688];
  [v6 setClient:v3];

  v4 = [v6 copy];
  v5 = interface___interface_2;
  interface___interface_2 = v4;
}

@end