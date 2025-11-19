@interface CacheDeleteHostExtensionContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
@end

@implementation CacheDeleteHostExtensionContext

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_MergedGlobals_7 != -1)
  {
    dispatch_once(&_MergedGlobals_7, &__block_literal_global_8);
  }

  v3 = qword_1ED76A0C8;

  return v3;
}

uint64_t __66__CacheDeleteHostExtensionContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  qword_1ED76A0C8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F387C2E0];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (qword_1ED76A0D0 != -1)
  {
    dispatch_once(&qword_1ED76A0D0, &__block_literal_global_42);
  }

  v3 = qword_1ED76A0D8;

  return v3;
}

uint64_t __68__CacheDeleteHostExtensionContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  qword_1ED76A0D8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F387CF60];

  return MEMORY[0x1EEE66BB8]();
}

@end