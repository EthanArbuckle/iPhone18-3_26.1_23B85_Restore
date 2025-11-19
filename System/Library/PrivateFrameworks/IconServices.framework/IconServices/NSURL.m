@interface NSURL
@end

@implementation NSURL

uint64_t __40__NSURL_UTIAdditions____is_coreTypesURL__block_invoke()
{
  __is_coreTypesURL_coreTypesURL = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/System/Library/CoreServices/MobileCoreTypes.bundle"];

  return MEMORY[0x1EEE66BB8]();
}

void __80__NSURL_IconServicesInternalAdditions___is_unregisteredPersonlityFileExtensions__block_invoke()
{
  v0 = _is_unregisteredPersonlityFileExtensions_personalityMap;
  _is_unregisteredPersonlityFileExtensions_personalityMap = MEMORY[0x1E695E0F8];
}

uint64_t __55__NSURL_IconServicesInternalAdditions____is__isNetBoot__block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 0;
  *v4 = 0x2800000001;
  v2 = 4;
  result = sysctl(v4, 2u, &v3, &v2, 0, 0);
  __is__isNetBoot_result = v3 != 0;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

@end