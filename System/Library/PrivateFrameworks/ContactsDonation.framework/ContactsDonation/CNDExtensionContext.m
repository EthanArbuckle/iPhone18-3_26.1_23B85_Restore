@interface CNDExtensionContext
@end

@implementation CNDExtensionContext

uint64_t __55___CNDExtensionContext__extensionAuxiliaryHostProtocol__block_invoke(uint64_t a1)
{
  _extensionAuxiliaryHostProtocol_cn_once_object_1 = [*(a1 + 32) makeHostProtocol];

  return MEMORY[0x2821F96F8]();
}

uint64_t __57___CNDExtensionContext__extensionAuxiliaryVendorProtocol__block_invoke(uint64_t a1)
{
  _extensionAuxiliaryVendorProtocol_cn_once_object_2 = [*(a1 + 32) makeVendorProtocol];

  return MEMORY[0x2821F96F8]();
}

@end