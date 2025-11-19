@interface HMDBackingStoreCacheDeleteRecordOperation
- (HMDBackingStoreCacheDeleteRecordOperation)initWithGroup:(id)a3 recordNames:(id)a4 resultBlock:(id)a5;
- (id)mainReturningError;
@end

@implementation HMDBackingStoreCacheDeleteRecordOperation

- (id)mainReturningError
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(HMDBackingStoreOperation *)self store];
  v4 = [v3 local];
  v5 = [v4 _begin];

  if (v5)
  {
    goto LABEL_13;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [(HMDBackingStoreCacheDeleteRecordOperation *)self recordNames];
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [(HMDBackingStoreOperation *)self store];
        v13 = [v12 local];
        v14 = [(HMDBackingStoreCacheDeleteRecordOperation *)self group];
        v5 = [v13 _deleteRecordWithGroupID:objc_msgSend(v14 recordName:{"groupID"), v11}];

        if (v5)
        {

          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = [(HMDBackingStoreOperation *)self store];
  v16 = [v15 local];
  v5 = [v16 _commit];

  if (v5)
  {
LABEL_13:
    v17 = [(HMDBackingStoreOperation *)self store];
    v18 = [v17 local];
    [v18 _rollback];
  }

  v19 = v5;

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (HMDBackingStoreCacheDeleteRecordOperation)initWithGroup:(id)a3 recordNames:(id)a4 resultBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = HMDBackingStoreCacheDeleteRecordOperation;
  v11 = [(HMDBackingStoreOperation *)&v15 initWithResultBlock:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_group, a3);
    objc_storeStrong(&v12->_recordNames, a4);
    v13 = v12;
  }

  return v12;
}

@end