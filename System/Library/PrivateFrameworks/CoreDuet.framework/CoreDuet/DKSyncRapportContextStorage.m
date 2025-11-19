@interface DKSyncRapportContextStorage
@end

@implementation DKSyncRapportContextStorage

uint64_t __46___DKSyncRapportContextStorage_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_sharedInstance_364;
  sharedInstance_sharedInstance_364 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __95___DKSyncRapportContextStorage_fetchContextValuesFromPeer_forKeyPaths_highPriority_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t __119___DKSyncRapportContextStorage_sendContextValuesToPeer_registrationIdentifier_archivedObjects_highPriority_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __140___DKSyncRapportContextStorage_subscribeToContextValueChangeNotificationsFromPeer_registrationIdentifier_predicate_highPriority_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __144___DKSyncRapportContextStorage_unsubscribeFromContextValueChangeNotificationsFromPeer_registrationIdentifier_predicate_highPriority_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end