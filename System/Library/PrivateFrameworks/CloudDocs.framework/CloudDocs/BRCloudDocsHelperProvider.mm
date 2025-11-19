@interface BRCloudDocsHelperProvider
+ (BOOL)hasDaemonicParts;
+ (BOOL)isFPFSExtension;
+ (id)cloudDocsHelper;
@end

@implementation BRCloudDocsHelperProvider

+ (BOOL)hasDaemonicParts
{
  if (hasDaemonicParts_once != -1)
  {
    +[BRCloudDocsHelperProvider hasDaemonicParts];
  }

  return hasDaemonicParts_hasDaemonicParts;
}

void __45__BRCloudDocsHelperProvider_hasDaemonicParts__block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  hasDaemonicParts_hasDaemonicParts = [v0 isEqualToString:@"com.apple.bird"];
}

uint64_t __44__BRCloudDocsHelperProvider_cloudDocsHelper__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasDaemonicParts])
  {
    v1 = NSClassFromString(@"BRDaemonCloudDocsHelper");
  }

  else
  {
    v1 = objc_opt_class();
  }

  cloudDocsHelper_helper = objc_alloc_init(v1);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)cloudDocsHelper
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__BRCloudDocsHelperProvider_cloudDocsHelper__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (cloudDocsHelper_once != -1)
  {
    dispatch_once(&cloudDocsHelper_once, block);
  }

  v2 = cloudDocsHelper_helper;

  return v2;
}

+ (BOOL)isFPFSExtension
{
  if (isFPFSExtension_once != -1)
  {
    +[BRCloudDocsHelperProvider isFPFSExtension];
  }

  return isFPFSExtension_isFPFSExtension;
}

void __44__BRCloudDocsHelperProvider_isFPFSExtension__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v2 = [v0 bundleIdentifier];

  if ([v2 isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProvider"])
  {
    v1 = 1;
  }

  else
  {
    v1 = [v2 isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProviderManaged"];
  }

  isFPFSExtension_isFPFSExtension = v1;
}

@end