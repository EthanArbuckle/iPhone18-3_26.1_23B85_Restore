@interface HMDBackingStoreCacheUpdateGroupTokenOperation
- (HMDBackingStoreCacheUpdateGroupTokenOperation)initWithGroup:(id)a3 serverChangeToken:(id)a4 resultBlock:(id)a5;
- (id)mainReturningError;
@end

@implementation HMDBackingStoreCacheUpdateGroupTokenOperation

- (id)mainReturningError
{
  v3 = [(HMDBackingStoreOperation *)self store];
  v4 = [v3 local];
  v5 = [v4 _begin];

  if (v5)
  {
    goto LABEL_2;
  }

  v10 = [(HMDBackingStoreCacheUpdateGroupTokenOperation *)self serverChangeToken];

  if (v10)
  {
    v11 = [(HMDBackingStoreOperation *)self store];
    v12 = [v11 local];
    v13 = [(HMDBackingStoreCacheUpdateGroupTokenOperation *)self record];
    v14 = [v13 groupID];
    v15 = [(HMDBackingStoreCacheUpdateGroupTokenOperation *)self serverChangeToken];
    v5 = [v12 _updateGroupWithID:v14 serverChangeToken:v15];

    if (v5)
    {
LABEL_2:
      v6 = [(HMDBackingStoreOperation *)self store];
      v7 = [v6 local];
      [v7 _rollback];

      goto LABEL_3;
    }

    v16 = [(HMDBackingStoreCacheUpdateGroupTokenOperation *)self serverChangeToken];
    v17 = [(HMDBackingStoreCacheUpdateGroupTokenOperation *)self record];
    [v17 setServerChangeToken:v16];
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

- (HMDBackingStoreCacheUpdateGroupTokenOperation)initWithGroup:(id)a3 serverChangeToken:(id)a4 resultBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = HMDBackingStoreCacheUpdateGroupTokenOperation;
  v11 = [(HMDBackingStoreOperation *)&v15 initWithResultBlock:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_record, a3);
    objc_storeStrong(&v12->_serverChangeToken, a4);
    v13 = v12;
  }

  return v12;
}

@end