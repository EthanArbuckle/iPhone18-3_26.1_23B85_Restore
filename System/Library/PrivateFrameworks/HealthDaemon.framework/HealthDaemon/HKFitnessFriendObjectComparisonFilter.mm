@interface HKFitnessFriendObjectComparisonFilter
@end

@implementation HKFitnessFriendObjectComparisonFilter

id __79___HKFitnessFriendObjectComparisonFilter_HealthDaemon___predicateForFriendUUID__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CCAD78] hk_UUIDWithData:a2];
  v3 = HDFitnessFriendWorkoutEntityEntityPredicateForFriendUUID();

  return v3;
}

@end