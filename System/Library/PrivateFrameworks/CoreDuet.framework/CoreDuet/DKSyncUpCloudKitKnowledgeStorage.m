@interface DKSyncUpCloudKitKnowledgeStorage
@end

@implementation DKSyncUpCloudKitKnowledgeStorage

uint64_t __51___DKSyncUpCloudKitKnowledgeStorage_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_sharedInstance_456;
  sharedInstance_sharedInstance_456 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end