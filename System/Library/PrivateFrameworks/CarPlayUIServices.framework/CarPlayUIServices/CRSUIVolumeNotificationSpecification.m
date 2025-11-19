@interface CRSUIVolumeNotificationSpecification
+ (BSServiceInterface)interface;
@end

@implementation CRSUIVolumeNotificationSpecification

+ (BSServiceInterface)interface
{
  if (interface_onceToken_1 != -1)
  {
    +[CRSUIVolumeNotificationSpecification interface];
  }

  v3 = interface___interface_1;

  return v3;
}

void __49__CRSUIVolumeNotificationSpecification_interface__block_invoke()
{
  v0 = MEMORY[0x277CF3278];
  v1 = +[CRSUIVolumeNotificationSpecification identifier];
  v6 = [v0 interfaceWithIdentifier:v1];

  [v6 setClientMessagingExpectation:1];
  v2 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_2855FCFB0];
  [v6 setServer:v2];

  v3 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_2855F6720];
  [v6 setClient:v3];

  v4 = [v6 copy];
  v5 = interface___interface_1;
  interface___interface_1 = v4;
}

@end