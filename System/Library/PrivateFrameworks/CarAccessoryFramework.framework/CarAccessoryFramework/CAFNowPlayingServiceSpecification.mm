@interface CAFNowPlayingServiceSpecification
+ (BSServiceInterface)interface;
@end

@implementation CAFNowPlayingServiceSpecification

+ (BSServiceInterface)interface
{
  if (interface_onceToken_1 != -1)
  {
    +[CAFNowPlayingServiceSpecification interface];
  }

  v3 = interface___interface_1;

  return v3;
}

void __46__CAFNowPlayingServiceSpecification_interface__block_invoke()
{
  v0 = MEMORY[0x277CF3278];
  v1 = +[CAFNowPlayingServiceSpecification identifier];
  v2 = [v0 interfaceWithIdentifier:v1];

  [v2 setClientMessagingExpectation:1];
  v3 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_2846B00F0];
  [v2 setServer:v3];

  v4 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_28469F610];
  [v2 setClient:v4];

  v5 = interface___interface_1;
  interface___interface_1 = v2;
}

@end