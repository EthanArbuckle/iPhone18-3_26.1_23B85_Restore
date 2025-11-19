@interface DKSyncRapportKnowledgeStorage
@end

@implementation DKSyncRapportKnowledgeStorage

void __48___DKSyncRapportKnowledgeStorage_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_sharedInstance_224;
  sharedInstance_sharedInstance_224 = v0;

  v2 = +[_DKSync2Policy policyForSyncTransportType:](_DKSync2Policy, "policyForSyncTransportType:", [sharedInstance_sharedInstance_224 transportType]);
  [sharedInstance_sharedInstance_224 setPolicy:v2];
}

uint64_t __115___DKSyncRapportKnowledgeStorage_fetchEventsFromPeer_windows_streamNames_limit_fetchOrder_highPriority_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, a2);
  }

  return result;
}

uint64_t __115___DKSyncRapportKnowledgeStorage_fetchDeletedEventIDsFromPeer_sinceDate_streamNames_limit_highPriority_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, a2);
  }

  return result;
}

@end