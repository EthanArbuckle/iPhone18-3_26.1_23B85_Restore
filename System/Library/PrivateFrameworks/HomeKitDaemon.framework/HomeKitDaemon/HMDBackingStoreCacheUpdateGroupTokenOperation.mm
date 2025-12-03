@interface HMDBackingStoreCacheUpdateGroupTokenOperation
- (HMDBackingStoreCacheUpdateGroupTokenOperation)initWithGroup:(id)group serverChangeToken:(id)token resultBlock:(id)block;
- (id)mainReturningError;
@end

@implementation HMDBackingStoreCacheUpdateGroupTokenOperation

- (id)mainReturningError
{
  store = [(HMDBackingStoreOperation *)self store];
  local = [store local];
  _begin = [local _begin];

  if (_begin)
  {
    goto LABEL_2;
  }

  serverChangeToken = [(HMDBackingStoreCacheUpdateGroupTokenOperation *)self serverChangeToken];

  if (serverChangeToken)
  {
    store2 = [(HMDBackingStoreOperation *)self store];
    local2 = [store2 local];
    record = [(HMDBackingStoreCacheUpdateGroupTokenOperation *)self record];
    groupID = [record groupID];
    serverChangeToken2 = [(HMDBackingStoreCacheUpdateGroupTokenOperation *)self serverChangeToken];
    _begin = [local2 _updateGroupWithID:groupID serverChangeToken:serverChangeToken2];

    if (_begin)
    {
LABEL_2:
      store3 = [(HMDBackingStoreOperation *)self store];
      local3 = [store3 local];
      [local3 _rollback];

      goto LABEL_3;
    }

    serverChangeToken3 = [(HMDBackingStoreCacheUpdateGroupTokenOperation *)self serverChangeToken];
    record2 = [(HMDBackingStoreCacheUpdateGroupTokenOperation *)self record];
    [record2 setServerChangeToken:serverChangeToken3];
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

- (HMDBackingStoreCacheUpdateGroupTokenOperation)initWithGroup:(id)group serverChangeToken:(id)token resultBlock:(id)block
{
  groupCopy = group;
  tokenCopy = token;
  v15.receiver = self;
  v15.super_class = HMDBackingStoreCacheUpdateGroupTokenOperation;
  v11 = [(HMDBackingStoreOperation *)&v15 initWithResultBlock:block];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_record, group);
    objc_storeStrong(&v12->_serverChangeToken, token);
    v13 = v12;
  }

  return v12;
}

@end