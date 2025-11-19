@interface CRSUIClusterThemeSpecification
+ (BSServiceInterface)interface;
@end

@implementation CRSUIClusterThemeSpecification

+ (BSServiceInterface)interface
{
  if (interface_onceToken != -1)
  {
    +[CRSUIClusterThemeSpecification interface];
  }

  v3 = interface___interface;

  return v3;
}

void __43__CRSUIClusterThemeSpecification_interface__block_invoke()
{
  v0 = MEMORY[0x277CF3278];
  v1 = +[CRSUIClusterThemeSpecification identifier];
  v2 = [v0 interfaceWithIdentifier:v1];

  [v2 setClientMessagingExpectation:1];
  v3 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_2855F6470];
  [v2 setServer:v3];

  v4 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_2855FC040];
  [v2 setClient:v4];

  v5 = interface___interface;
  interface___interface = v2;
}

@end