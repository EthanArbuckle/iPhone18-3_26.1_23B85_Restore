@interface HKWorkout(HDDataEntity)
- (BOOL)hd_insertRelatedDataWithPersistentID:()HDDataEntity insertionContext:profile:transaction:error:;
@end

@implementation HKWorkout(HDDataEntity)

- (BOOL)hd_insertRelatedDataWithPersistentID:()HDDataEntity insertionContext:profile:transaction:error:
{
  v12 = a3;
  v13 = a6;
  v16.receiver = self;
  v16.super_class = &off_283D42E88;
  if (objc_msgSendSuper2(&v16, sel_hd_insertRelatedDataWithPersistentID_insertionContext_profile_transaction_error_, v12, a4, a5, v13, a7))
  {
    v14 = [HDWorkoutEventEntity insertWorkoutEventsFromWorkout:self ownerID:v12 transaction:v13 error:a7];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end