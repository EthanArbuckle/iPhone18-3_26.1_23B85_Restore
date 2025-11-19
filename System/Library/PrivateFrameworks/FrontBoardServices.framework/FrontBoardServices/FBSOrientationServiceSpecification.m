@interface FBSOrientationServiceSpecification
+ (BSServiceInterface)interface;
@end

@implementation FBSOrientationServiceSpecification

+ (BSServiceInterface)interface
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__FBSOrientationServiceSpecification_interface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (interface_onceToken != -1)
  {
    dispatch_once(&interface_onceToken, block);
  }

  v2 = interface__interface;

  return v2;
}

void __47__FBSOrientationServiceSpecification_interface__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) identifier];
  v6 = [off_1E76BC9F8 interfaceWithIdentifier:v1];

  v2 = [off_1E76BCA10 protocolForProtocol:&unk_1F15C5468];
  [v6 setServer:v2];

  v3 = [off_1E76BCA10 protocolForProtocol:&unk_1F15B8FE0];
  [v6 setClient:v3];

  v4 = [v6 copy];
  v5 = interface__interface;
  interface__interface = v4;
}

@end