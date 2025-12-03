@interface HMDBackingStoreCacheDeleteRecordOperation
- (HMDBackingStoreCacheDeleteRecordOperation)initWithGroup:(id)group recordNames:(id)names resultBlock:(id)block;
- (id)mainReturningError;
@end

@implementation HMDBackingStoreCacheDeleteRecordOperation

- (id)mainReturningError
{
  v27 = *MEMORY[0x277D85DE8];
  store = [(HMDBackingStoreOperation *)self store];
  local = [store local];
  _begin = [local _begin];

  if (_begin)
  {
    goto LABEL_13;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  recordNames = [(HMDBackingStoreCacheDeleteRecordOperation *)self recordNames];
  v7 = [recordNames countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(recordNames);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        store2 = [(HMDBackingStoreOperation *)self store];
        local2 = [store2 local];
        group = [(HMDBackingStoreCacheDeleteRecordOperation *)self group];
        _begin = [local2 _deleteRecordWithGroupID:objc_msgSend(group recordName:{"groupID"), v11}];

        if (_begin)
        {

          goto LABEL_13;
        }
      }

      v8 = [recordNames countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  store3 = [(HMDBackingStoreOperation *)self store];
  local3 = [store3 local];
  _begin = [local3 _commit];

  if (_begin)
  {
LABEL_13:
    store4 = [(HMDBackingStoreOperation *)self store];
    local4 = [store4 local];
    [local4 _rollback];
  }

  v19 = _begin;

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (HMDBackingStoreCacheDeleteRecordOperation)initWithGroup:(id)group recordNames:(id)names resultBlock:(id)block
{
  groupCopy = group;
  namesCopy = names;
  v15.receiver = self;
  v15.super_class = HMDBackingStoreCacheDeleteRecordOperation;
  v11 = [(HMDBackingStoreOperation *)&v15 initWithResultBlock:block];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_group, group);
    objc_storeStrong(&v12->_recordNames, names);
    v13 = v12;
  }

  return v12;
}

@end