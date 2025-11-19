@interface HMDBackingStoreLogChangesExistFetchOperation
- (HMDBackingStoreLogChangesExistFetchOperation)initWithNeedsPushTo:(unint64_t)a3 result:(id)a4;
- (id)mainReturningError;
@end

@implementation HMDBackingStoreLogChangesExistFetchOperation

- (id)mainReturningError
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CBEB18] array];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__199797;
  v26 = __Block_byref_object_dispose__199798;
  v27 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 0;
  v5 = [(HMDBackingStoreOperation *)self store];
  v6 = [v5 local];
  v7 = [(HMDBackingStoreLogChangesExistFetchOperation *)self maskValue];
  v8 = [(HMDBackingStoreLogChangesExistFetchOperation *)self compareValue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__HMDBackingStoreLogChangesExistFetchOperation_mainReturningError__block_invoke;
  v15[3] = &unk_27867F380;
  v19 = &v22;
  v9 = v3;
  v20 = v21;
  v16 = v9;
  v17 = self;
  v10 = v4;
  v18 = v10;
  [v6 _selectLogWithMask:v7 compare:v8 callback:v15];

  v11 = [(HMDBackingStoreLogChangesExistFetchOperation *)self fetchBlock];

  if (v11)
  {
    if (v23[5])
    {
      v12 = [(HMDBackingStoreLogChangesExistFetchOperation *)self fetchBlock];
      v12[2](v12, 0, 0, v23[5]);
    }

    else
    {
      v12 = [(HMDBackingStoreLogChangesExistFetchOperation *)self fetchBlock];
      (v12)[2](v12, v9, v10, 0);
    }
  }

  v13 = v23[5];

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(&v22, 8);

  return v13;
}

BOOL __66__HMDBackingStoreLogChangesExistFetchOperation_mainReturningError__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    v12 = *(*(a1 + 56) + 8);
    v13 = v10;
    v14 = *(v12 + 40);
    *(v12 + 40) = v13;
  }

  else
  {
    if (!v9)
    {
      goto LABEL_4;
    }

    v14 = [*(a1 + 32) objectForKey:v9];
    if (!v14)
    {
      v14 = [MEMORY[0x277CBEB18] array];
      [*(a1 + 32) setObject:v14 forKey:v9];
    }

    v16 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
    [v14 addObject:v16];

    v17 = *(*(a1 + 64) + 8);
    if (*(v17 + 24) != a3)
    {
      *(v17 + 24) = a3;
      v18 = [*(a1 + 40) store];
      v19 = [v18 local];
      v20 = [v19 _selectLogOptionsWithID:*(*(*(a1 + 64) + 8) + 24)];

      if (v20)
      {
        v21 = *(a1 + 48);
        v22 = [v20 label];
        [v21 addObject:v22];
      }
    }
  }

LABEL_4:
  return v11 != 0;
}

- (HMDBackingStoreLogChangesExistFetchOperation)initWithNeedsPushTo:(unint64_t)a3 result:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = HMDBackingStoreLogChangesExistFetchOperation;
  v7 = [(HMDBackingStoreOperation *)&v12 init];
  if (v7)
  {
    v8 = _Block_copy(v6);
    fetchBlock = v7->_fetchBlock;
    v7->_fetchBlock = v8;

    v7->_maskValue = a3 | (a3 << 16);
    v7->_compareValue = a3;
    v10 = v7;
  }

  return v7;
}

@end