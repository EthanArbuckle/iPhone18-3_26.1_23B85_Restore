@interface CRKInstructorHostContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
@end

@implementation CRKInstructorHostContext

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_onceToken != -1)
  {
    +[CRKInstructorHostContext _extensionAuxiliaryHostProtocol];
  }

  v3 = _extensionAuxiliaryHostProtocol_interface;

  return v3;
}

uint64_t __59__CRKInstructorHostContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  _extensionAuxiliaryHostProtocol_interface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2856813F0];

  return MEMORY[0x2821F96F8]();
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_onceToken != -1)
  {
    +[CRKInstructorHostContext _extensionAuxiliaryVendorProtocol];
  }

  v3 = _extensionAuxiliaryVendorProtocol_interface;

  return v3;
}

uint64_t __61__CRKInstructorHostContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  _extensionAuxiliaryVendorProtocol_interface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2856818C8];

  return MEMORY[0x2821F96F8]();
}

@end