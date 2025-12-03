@interface HMDBackingStoreLogDropOperationsWithUUID
- (HMDBackingStoreLogDropOperationsWithUUID)initWithUUID:(id)d pushingTo:(unint64_t)to resultBlock:(id)block;
- (id)mainReturningError;
@end

@implementation HMDBackingStoreLogDropOperationsWithUUID

- (id)mainReturningError
{
  v46 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__199797;
  v43 = __Block_byref_object_dispose__199798;
  v44 = 0;
  store = [(HMDBackingStoreOperation *)self store];
  local = [store local];
  store2 = [(HMDBackingStoreOperation *)self store];
  root = [store2 root];
  maskValue = [(HMDBackingStoreLogDropOperationsWithUUID *)self maskValue];
  compareValue = [(HMDBackingStoreLogDropOperationsWithUUID *)self compareValue];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __62__HMDBackingStoreLogDropOperationsWithUUID_mainReturningError__block_invoke;
  v36[3] = &unk_27867F3A8;
  v38 = &v39;
  v36[4] = self;
  v10 = array;
  v37 = v10;
  [local _selectLogWithRoot:root after:0 mask:maskValue compare:compareValue callback:v36];

  v11 = v40[5];
  if (v11)
  {
    goto LABEL_3;
  }

  store3 = [(HMDBackingStoreOperation *)self store];
  local2 = [store3 local];
  _begin = [local2 _begin];
  v15 = v40[5];
  v40[5] = _begin;

  v11 = v40[5];
  if (v11)
  {
LABEL_3:
    _commit = v11;
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v19 = v10;
    v20 = [v19 countByEnumeratingWithState:&v32 objects:v45 count:16];
    if (v20)
    {
      v21 = *v33;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v33 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v32 + 1) + 8 * i);
          store4 = [(HMDBackingStoreOperation *)self store];
          local3 = [store4 local];
          v26 = [local3 _deleteLog:{objc_msgSend(v23, "unsignedIntegerValue")}];
          v27 = v40[5];
          v40[5] = v26;

          if (v40[5])
          {
            store5 = [(HMDBackingStoreOperation *)self store];
            local4 = [store5 local];
            [local4 _rollback];

            _commit = v40[5];
            goto LABEL_4;
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v32 objects:v45 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    store6 = [(HMDBackingStoreOperation *)self store];
    local5 = [store6 local];
    _commit = [local5 _commit];
  }

LABEL_4:

  _Block_object_dispose(&v39, 8);
  v17 = *MEMORY[0x277D85DE8];

  return _commit;
}

BOOL __62__HMDBackingStoreLogDropOperationsWithUUID_mainReturningError__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = a8;
  if (v14)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a8);
  }

  else
  {
    v23 = 0;
    v15 = [HMDBackingStoreModelObject objectFromData:a7 encoding:a6 error:&v23];
    v16 = v23;
    [v15 setObjectChangeType:a5];
    if (v16 || ([v15 uuid], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "uuid"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "isEqual:", v18), v18, v17, v19))
    {
      v20 = *(a1 + 40);
      v21 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
      [v20 addObject:v21];
    }
  }

  return v14 != 0;
}

- (HMDBackingStoreLogDropOperationsWithUUID)initWithUUID:(id)d pushingTo:(unint64_t)to resultBlock:(id)block
{
  dCopy = d;
  v14.receiver = self;
  v14.super_class = HMDBackingStoreLogDropOperationsWithUUID;
  v10 = [(HMDBackingStoreOperation *)&v14 initWithResultBlock:block];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_uuid, d);
    v11->_maskValue = to;
    v11->_compareValue = to;
    v12 = v11;
  }

  return v11;
}

@end