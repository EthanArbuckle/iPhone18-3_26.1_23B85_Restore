@interface FAFamilyPresenterHostInterface
+ (id)XPCInterface;
@end

@implementation FAFamilyPresenterHostInterface

+ (id)XPCInterface
{
  if (XPCInterface_onceToken_0 != -1)
  {
    +[FAFamilyPresenterHostInterface XPCInterface];
  }

  v3 = XPCInterface_interface_0;

  return v3;
}

uint64_t __46__FAFamilyPresenterHostInterface_XPCInterface__block_invoke()
{
  XPCInterface_interface_0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2F4C030];

  return MEMORY[0x1EEE66BB8]();
}

@end