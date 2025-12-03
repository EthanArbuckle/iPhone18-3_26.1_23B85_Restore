@interface _DKSyncChanges
- (id)initWithAdditionChangeSets:(uint64_t)sets deletionChangeSets:(void *)changeSets startDate:endDate:;
@end

@implementation _DKSyncChanges

- (id)initWithAdditionChangeSets:(uint64_t)sets deletionChangeSets:(void *)changeSets startDate:endDate:
{
  v7 = OUTLINED_FUNCTION_18_3(sets, changeSets);
  v8 = v4;
  v9 = v3;
  v10 = v2;
  if (v6)
  {
    v13.receiver = v6;
    v13.super_class = _DKSyncChanges;
    v11 = objc_msgSendSuper2(&v13, sel_init);
    v6 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, v5);
      objc_storeStrong(v6 + 2, v4);
      objc_storeStrong(v6 + 3, v3);
      objc_storeStrong(v6 + 4, v2);
    }
  }

  return v6;
}

@end