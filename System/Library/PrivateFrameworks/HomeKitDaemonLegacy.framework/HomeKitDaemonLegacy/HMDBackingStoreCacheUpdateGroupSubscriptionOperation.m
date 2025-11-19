@interface HMDBackingStoreCacheUpdateGroupSubscriptionOperation
- (HMDBackingStoreCacheUpdateGroupSubscriptionOperation)initWithGroup:(id)a3 subscription:(id)a4 resultBlock:(id)a5;
- (id)mainReturningError;
@end

@implementation HMDBackingStoreCacheUpdateGroupSubscriptionOperation

- (id)mainReturningError
{
  v3 = [(HMDBackingStoreOperation *)self store];
  v4 = [v3 local];
  v5 = [v4 _begin];

  if (v5)
  {
    goto LABEL_2;
  }

  v10 = [(HMDBackingStoreCacheUpdateGroupSubscriptionOperation *)self subscription];

  if (v10)
  {
    v11 = [(HMDBackingStoreOperation *)self store];
    v12 = [v11 local];
    v13 = [(HMDBackingStoreCacheUpdateGroupSubscriptionOperation *)self record];
    v14 = [v13 groupID];
    v15 = [(HMDBackingStoreCacheUpdateGroupSubscriptionOperation *)self subscription];
    v5 = [v12 _updateGroupWithID:v14 subscription:v15];

    if (v5)
    {
LABEL_2:
      v6 = [(HMDBackingStoreOperation *)self store];
      v7 = [v6 local];
      [v7 _rollback];

      goto LABEL_3;
    }

    v16 = [(HMDBackingStoreCacheUpdateGroupSubscriptionOperation *)self subscription];
    v17 = [(HMDBackingStoreCacheUpdateGroupSubscriptionOperation *)self record];
    [v17 setSubscription:v16];
  }

  v18 = [(HMDBackingStoreOperation *)self store];
  v19 = [v18 local];
  v5 = [v19 _commit];

  if (v5)
  {
    goto LABEL_2;
  }

LABEL_3:
  v8 = v5;

  return v8;
}

- (HMDBackingStoreCacheUpdateGroupSubscriptionOperation)initWithGroup:(id)a3 subscription:(id)a4 resultBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = HMDBackingStoreCacheUpdateGroupSubscriptionOperation;
  v11 = [(HMDBackingStoreOperation *)&v15 initWithResultBlock:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_record, a3);
    objc_storeStrong(&v12->_subscription, a4);
    v13 = v12;
  }

  return v12;
}

@end