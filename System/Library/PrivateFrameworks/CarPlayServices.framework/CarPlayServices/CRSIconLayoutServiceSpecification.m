@interface CRSIconLayoutServiceSpecification
+ (BSServiceInterface)interface;
@end

@implementation CRSIconLayoutServiceSpecification

+ (BSServiceInterface)interface
{
  if (interface_onceToken != -1)
  {
    +[CRSIconLayoutServiceSpecification interface];
  }

  v3 = interface___interface;

  return v3;
}

void __46__CRSIconLayoutServiceSpecification_interface__block_invoke()
{
  v0 = MEMORY[0x277CF3278];
  v1 = +[CRSIconLayoutServiceSpecification identifier];
  v6 = [v0 interfaceWithIdentifier:v1];

  v2 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_2855A3210];
  [v6 setServer:v2];

  v3 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_2855A3668];
  [v6 setClient:v3];

  v4 = [v6 copy];
  v5 = interface___interface;
  interface___interface = v4;
}

@end