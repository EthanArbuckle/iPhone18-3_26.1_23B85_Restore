@interface HMDBackingStoreCacheUpdateGroupSubscriptionOperation
- (HMDBackingStoreCacheUpdateGroupSubscriptionOperation)initWithGroup:(id)group subscription:(id)subscription resultBlock:(id)block;
- (id)mainReturningError;
@end

@implementation HMDBackingStoreCacheUpdateGroupSubscriptionOperation

- (id)mainReturningError
{
  store = [(HMDBackingStoreOperation *)self store];
  local = [store local];
  _begin = [local _begin];

  if (_begin)
  {
    goto LABEL_2;
  }

  subscription = [(HMDBackingStoreCacheUpdateGroupSubscriptionOperation *)self subscription];

  if (subscription)
  {
    store2 = [(HMDBackingStoreOperation *)self store];
    local2 = [store2 local];
    record = [(HMDBackingStoreCacheUpdateGroupSubscriptionOperation *)self record];
    groupID = [record groupID];
    subscription2 = [(HMDBackingStoreCacheUpdateGroupSubscriptionOperation *)self subscription];
    _begin = [local2 _updateGroupWithID:groupID subscription:subscription2];

    if (_begin)
    {
LABEL_2:
      store3 = [(HMDBackingStoreOperation *)self store];
      local3 = [store3 local];
      [local3 _rollback];

      goto LABEL_3;
    }

    subscription3 = [(HMDBackingStoreCacheUpdateGroupSubscriptionOperation *)self subscription];
    record2 = [(HMDBackingStoreCacheUpdateGroupSubscriptionOperation *)self record];
    [record2 setSubscription:subscription3];
  }

  store4 = [(HMDBackingStoreOperation *)self store];
  local4 = [store4 local];
  _begin = [local4 _commit];

  if (_begin)
  {
    goto LABEL_2;
  }

LABEL_3:
  v8 = _begin;

  return v8;
}

- (HMDBackingStoreCacheUpdateGroupSubscriptionOperation)initWithGroup:(id)group subscription:(id)subscription resultBlock:(id)block
{
  groupCopy = group;
  subscriptionCopy = subscription;
  v15.receiver = self;
  v15.super_class = HMDBackingStoreCacheUpdateGroupSubscriptionOperation;
  v11 = [(HMDBackingStoreOperation *)&v15 initWithResultBlock:block];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_record, group);
    objc_storeStrong(&v12->_subscription, subscription);
    v13 = v12;
  }

  return v12;
}

@end