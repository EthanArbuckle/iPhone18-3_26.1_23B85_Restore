@interface CRKBundleManager
@end

@implementation CRKBundleManager

uint64_t __35___CRKBundleManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sBundleManager;
  sharedInstance_sBundleManager = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

void __40___CRKBundleManager_bundleDirectoryPath__block_invoke()
{
  v5[3] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CCACA8];
  v1 = CPSystemRootDirectory();
  v5[0] = v1;
  v5[1] = @"System";
  v5[2] = @"/Library/CardKit/Plugins";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v3 = [v0 pathWithComponents:v2];
  v4 = bundleDirectoryPath_sBundleDirectoryPath;
  bundleDirectoryPath_sBundleDirectoryPath = v3;
}

@end