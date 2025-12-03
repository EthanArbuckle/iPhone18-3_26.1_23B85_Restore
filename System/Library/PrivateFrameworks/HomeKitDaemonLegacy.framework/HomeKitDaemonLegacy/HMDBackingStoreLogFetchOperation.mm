@interface HMDBackingStoreLogFetchOperation
- (HMDBackingStoreLogFetchOperation)initWithSentinel:(id)sentinel mask:(int64_t)mask compare:(int64_t)compare fetchResult:(id)result;
- (id)mainReturningError;
@end

@implementation HMDBackingStoreLogFetchOperation

- (id)mainReturningError
{
  array = [MEMORY[0x277CBEB18] array];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__133678;
  v32 = __Block_byref_object_dispose__133679;
  v33 = 0;
  store = [(HMDBackingStoreOperation *)self store];
  local = [store local];
  store2 = [(HMDBackingStoreOperation *)self store];
  root = [store2 root];
  sentinel = [(HMDBackingStoreLogFetchOperation *)self sentinel];
  unsignedIntegerValue = [sentinel unsignedIntegerValue];
  maskValue = [(HMDBackingStoreLogFetchOperation *)self maskValue];
  compareValue = [(HMDBackingStoreLogFetchOperation *)self compareValue];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __54__HMDBackingStoreLogFetchOperation_mainReturningError__block_invoke;
  v23 = &unk_27972D0E8;
  v26 = &v28;
  v12 = array;
  v27 = &v34;
  v24 = v12;
  selfCopy = self;
  [local _selectLogWithRoot:root after:unsignedIntegerValue mask:maskValue compare:compareValue callback:&v20];

  v13 = [(HMDBackingStoreLogFetchOperation *)self fetchBlock:v20];

  if (v13)
  {
    if (v29[5])
    {
      fetchBlock = [(HMDBackingStoreLogFetchOperation *)self fetchBlock];
      fetchBlock[2](fetchBlock, 0, 0, v29[5]);
    }

    else
    {
      if (![v12 count])
      {
        goto LABEL_7;
      }

      fetchBlock = [(HMDBackingStoreLogFetchOperation *)self fetchBlock];
      store3 = [(HMDBackingStoreOperation *)self store];
      local2 = [store3 local];
      v17 = [local2 _selectLogOptionsWithID:v35[3]];
      (fetchBlock)[2](fetchBlock, v12, v17, 0);
    }
  }

LABEL_7:
  v18 = v29[5];

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  return v18;
}

uint64_t __54__HMDBackingStoreLogFetchOperation_mainReturningError__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v15 = a8;
  if (!v15)
  {
    v28 = 0;
    v17 = [HMDBackingStoreModelObject objectFromData:a7 encoding:a6 rowID:a2 error:&v28];
    v18 = v28;
    v19 = v28;
    [v17 setObjectChangeType:a5];
    if (v19)
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v18);
      [*(a1 + 32) removeAllObjects];
    }

    else
    {
      v20 = *(a1 + 32);
      if (*(*(*(a1 + 56) + 8) + 24) == a3)
      {
        [v20 addObject:v17];
        v16 = 0;
        goto LABEL_11;
      }

      if (![v20 count])
      {
        goto LABEL_10;
      }

      v21 = [*(a1 + 40) fetchBlock];
      v22 = *(a1 + 32);
      v27 = [*(a1 + 40) store];
      v23 = [v27 local];
      v24 = [v23 _selectLogOptionsWithID:*(*(*(a1 + 56) + 8) + 24)];
      v25 = [MEMORY[0x277CCABB0] numberWithLongLong:*(*(*(a1 + 56) + 8) + 24)];
      LODWORD(v22) = (v21)[2](v21, v22, v24, v25);

      if (v22)
      {
LABEL_10:
        [*(a1 + 32) removeAllObjects];
        [*(a1 + 32) addObject:v17];
        v16 = 0;
        *(*(*(a1 + 56) + 8) + 24) = a3;
        goto LABEL_11;
      }
    }

    v16 = 1;
LABEL_11:

    goto LABEL_12;
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a8);
  v16 = 1;
LABEL_12:

  return v16;
}

- (HMDBackingStoreLogFetchOperation)initWithSentinel:(id)sentinel mask:(int64_t)mask compare:(int64_t)compare fetchResult:(id)result
{
  sentinelCopy = sentinel;
  resultCopy = result;
  v19.receiver = self;
  v19.super_class = HMDBackingStoreLogFetchOperation;
  v13 = [(HMDBackingStoreOperation *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_sentinel, sentinel);
    v15 = _Block_copy(resultCopy);
    fetchBlock = v14->_fetchBlock;
    v14->_fetchBlock = v15;

    v14->_maskValue = mask;
    v14->_compareValue = compare;
    v17 = v14;
  }

  return v14;
}

@end