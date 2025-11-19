@interface PDScheduledActivityRegister
@end

@implementation PDScheduledActivityRegister

void ___PDScheduledActivityRegister_block_invoke(uint64_t a1)
{
  v2 = _RegisteredClients();
  v7 = [v2 objectForKeyedSubscript:*(a1 + 32)];

  v3 = [v7 activityRegistrations];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];

  v5 = [[PDScheduledActivityRegistration alloc] initWithActivityCriteria:*(a1 + 48) activityContext:*(a1 + 56)];
  if (([v4 isEqual:v5] & 1) == 0)
  {
    v6 = [v7 activityRegistrations];
    [v6 setObject:v5 forKeyedSubscript:*(a1 + 40)];

    _RegisterXPCActivity(*(a1 + 32), *(a1 + 40));
    _ArchiveRegisteredClients();
  }
}

@end