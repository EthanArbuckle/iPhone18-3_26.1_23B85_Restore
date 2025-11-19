@interface DKSyncDownCloudKitKnowledgeStorage
@end

@implementation DKSyncDownCloudKitKnowledgeStorage

uint64_t __53___DKSyncDownCloudKitKnowledgeStorage_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_sharedInstance_415;
  sharedInstance_sharedInstance_415 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end