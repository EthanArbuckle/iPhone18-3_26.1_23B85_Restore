@interface CRSSessionSpecification
+ (BSServiceInterface)interface;
@end

@implementation CRSSessionSpecification

+ (BSServiceInterface)interface
{
  if (interface_onceToken_0 != -1)
  {
    +[CRSSessionSpecification interface];
  }

  v3 = interface___interface_0;

  return v3;
}

void __36__CRSSessionSpecification_interface__block_invoke()
{
  v0 = MEMORY[0x277CF3278];
  v1 = +[CRSSessionSpecification identifier];
  v6 = [v0 interfaceWithIdentifier:v1];

  v2 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_2855A40B0];
  [v6 setServer:v2];

  v3 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_2855A3568];
  [v6 setClient:v3];

  v4 = [v6 copy];
  v5 = interface___interface_0;
  interface___interface_0 = v4;
}

@end