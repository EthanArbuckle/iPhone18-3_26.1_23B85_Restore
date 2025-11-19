@interface CAFAppLinksServiceSpecification
+ (BSServiceInterface)interface;
@end

@implementation CAFAppLinksServiceSpecification

+ (BSServiceInterface)interface
{
  if (interface_onceToken_0 != -1)
  {
    +[CAFAppLinksServiceSpecification interface];
  }

  v3 = interface___interface_0;

  return v3;
}

void __44__CAFAppLinksServiceSpecification_interface__block_invoke()
{
  v0 = MEMORY[0x277CF3278];
  v1 = +[CAFAppLinksServiceSpecification identifier];
  v2 = [v0 interfaceWithIdentifier:v1];

  [v2 setClientMessagingExpectation:1];
  v3 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_2846AD5D0];
  [v2 setServer:v3];

  v4 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_28469F780];
  [v2 setClient:v4];

  v5 = interface___interface_0;
  interface___interface_0 = v2;
}

@end