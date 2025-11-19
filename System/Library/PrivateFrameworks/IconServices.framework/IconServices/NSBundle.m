@interface NSBundle
@end

@implementation NSBundle

uint64_t __56__NSBundle_IconServicesAdditions____IS__frameworkBundle__block_invoke()
{
  __IS__frameworkBundle_frameworkBundle = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.IconServices"];

  return MEMORY[0x1EEE66BB8]();
}

void __62__NSBundle_IconServicesAdditions____IS__iconsetResourceBundle__block_invoke()
{
  v2 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/System/Library/CoreServices/IconsetResources.bundle"];
  v0 = [MEMORY[0x1E696AAE8] bundleWithURL:v2];
  v1 = __IS__iconsetResourceBundle_resourceBundle;
  __IS__iconsetResourceBundle_resourceBundle = v0;
}

@end