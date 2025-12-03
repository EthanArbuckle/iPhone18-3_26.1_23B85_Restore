@interface BRRuntimeBehavior
+ (BOOL)isInternalBuild;
+ (BOOL)isRunningInDaemonBundle;
+ (BOOL)isSeedBuild;
@end

@implementation BRRuntimeBehavior

+ (BOOL)isInternalBuild
{
  if (isInternalBuild_onceToken != -1)
  {
    +[BRRuntimeBehavior isInternalBuild];
  }

  return isInternalBuild_isInternalBuild;
}

uint64_t __36__BRRuntimeBehavior_isInternalBuild__block_invoke()
{
  result = os_variant_has_internal_content();
  isInternalBuild_isInternalBuild = result;
  return result;
}

+ (BOOL)isSeedBuild
{
  if (isSeedBuild_onceToken != -1)
  {
    +[BRRuntimeBehavior isSeedBuild];
  }

  return isSeedBuild_isSeedBuild;
}

void __32__BRRuntimeBehavior_isSeedBuild__block_invoke()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getSDBuildInfoClass_softClass;
  v6 = getSDBuildInfoClass_softClass;
  if (!getSDBuildInfoClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getSDBuildInfoClass_block_invoke;
    v2[3] = &unk_1E7A15BC0;
    v2[4] = &v3;
    __getSDBuildInfoClass_block_invoke(v2);
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);
  if (v0)
  {
    isSeedBuild_isSeedBuild = [v0 currentBuildIsSeed];
  }
}

+ (BOOL)isRunningInDaemonBundle
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  LOBYTE(mainBundle) = [bundleIdentifier isEqualToString:@"com.apple.bird"];
  return mainBundle;
}

@end