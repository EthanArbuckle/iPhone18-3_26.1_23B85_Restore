@interface DESEventManager
+ (BOOL)allowEventForBundleID:(id)d;
@end

@implementation DESEventManager

+ (BOOL)allowEventForBundleID:(id)d
{
  dCopy = d;
  v4 = dCopy;
  if (allowEventForBundleID__onceToken != -1)
  {
    +[DESEventManager allowEventForBundleID:];
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    LOBYTE(v5) = 0;
    goto LABEL_6;
  }

  if (!dCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [allowEventForBundleID__disalllowedBundles containsObject:v4] ^ 1;
LABEL_6:

  return v5;
}

void __41__DESEventManager_allowEventForBundleID___block_invoke()
{
  v5[11] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = @"com.apple.dodml.TestPlugin";
  v5[1] = @"com.apple.dp.PrivateFederatedLearning.DPMLRuntimePluginNonDnU";
  v5[2] = @"com.apple.dp.PrivateFederatedLearning.DPMLRuntimePlugin";
  v5[3] = @"com.apple.dp.PrivateFederatedLearning.DPMLRuntimePluginClassB";
  v5[4] = @"com.apple.aiml.mlpt.PriML.FedStats.Plugin";
  v5[5] = @"com.apple.aiml.mlpt.PriML.FedStats.PluginClassB";
  v5[6] = @"com.apple.aiml.mlpt.PriML.FedStats.PluginNonDnU";
  v5[7] = @"com.apple.MLRuntime.ExtensionXCTestHigh";
  v5[8] = @"com.apple.MLRuntime.ExtensionXCTestOnDemand";
  v5[9] = @"com.apple.MLRuntime.ExtensionXCTestRestricted";
  v5[10] = @"com.apple.MLRuntime.XCTest";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:11];
  v2 = [v0 setWithArray:v1];
  v3 = allowEventForBundleID__disalllowedBundles;
  allowEventForBundleID__disalllowedBundles = v2;

  v4 = *MEMORY[0x277D85DE8];
}

@end