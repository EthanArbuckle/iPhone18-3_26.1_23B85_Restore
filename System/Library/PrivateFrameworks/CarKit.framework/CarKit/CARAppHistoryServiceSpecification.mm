@interface CARAppHistoryServiceSpecification
+ (BSServiceInterface)interface;
@end

@implementation CARAppHistoryServiceSpecification

+ (BSServiceInterface)interface
{
  if (interface_onceToken != -1)
  {
    +[CARAppHistoryServiceSpecification interface];
  }

  v3 = interface___interface;

  return v3;
}

void __46__CARAppHistoryServiceSpecification_interface__block_invoke()
{
  v0 = MEMORY[0x1E698F470];
  v1 = +[CARAppHistoryServiceSpecification identifier];
  v6 = [v0 interfaceWithIdentifier:v1];

  v2 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F4803CA8];
  [v6 setServer:v2];

  v3 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F47FD3C0];
  [v6 setClient:v3];

  v4 = [v6 copy];
  v5 = interface___interface;
  interface___interface = v4;
}

@end