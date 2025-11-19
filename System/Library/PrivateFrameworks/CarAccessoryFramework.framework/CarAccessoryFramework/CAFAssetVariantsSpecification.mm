@interface CAFAssetVariantsSpecification
+ (BSServiceInterface)interface;
@end

@implementation CAFAssetVariantsSpecification

+ (BSServiceInterface)interface
{
  if (interface_onceToken != -1)
  {
    +[CAFAssetVariantsSpecification interface];
  }

  v3 = interface___interface;

  return v3;
}

void __42__CAFAssetVariantsSpecification_interface__block_invoke()
{
  v0 = MEMORY[0x277CF3278];
  v1 = +[CAFAssetVariantsSpecification identifier];
  v2 = [v0 interfaceWithIdentifier:v1];

  [v2 setClientMessagingExpectation:1];
  v3 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_2846AD510];
  [v2 setServer:v3];

  v4 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_2846AD570];
  [v2 setClient:v4];

  v5 = interface___interface;
  interface___interface = v2;
}

@end