@interface CAMOverlayServiceSpecification
+ (BSServiceInterface)interface;
@end

@implementation CAMOverlayServiceSpecification

+ (BSServiceInterface)interface
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__CAMOverlayServiceSpecification_interface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (interface_onceToken != -1)
  {
    dispatch_once(&interface_onceToken, block);
  }

  v2 = interface__interface;

  return v2;
}

void __43__CAMOverlayServiceSpecification_interface__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CF3278];
  v2 = [*(a1 + 32) identifier];
  v7 = [v1 interfaceWithIdentifier:v2];

  v3 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_284331538];
  [v7 setServer:v3];

  v4 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_2843304F8];
  [v7 setClient:v4];

  v5 = [v7 copy];
  v6 = interface__interface;
  interface__interface = v5;
}

@end