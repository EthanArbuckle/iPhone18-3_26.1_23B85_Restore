@interface HMDBackingStoreLogAddTransactionOperation
- (HMDBackingStoreLogAddTransactionOperation)initWithAtomicSaveEnabled:(BOOL)a3 transaction:(id)a4;
- (HMDBackingStoreLogAddTransactionOperation)initWithTransaction:(id)a3;
- (id)mainReturningError;
@end

@implementation HMDBackingStoreLogAddTransactionOperation

- (id)mainReturningError
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [(HMDBackingStoreOperation *)self store];
  v4 = [v3 local];
  v5 = [v4 _begin];

  if (!v5)
  {
    v6 = [(HMDBackingStoreOperation *)self store];
    v7 = [v6 local];
    v8 = [(HMDBackingStoreOperation *)self store];
    v9 = [v8 root];
    v10 = [(HMDBackingStoreLogAddTransactionOperation *)self transaction];
    v11 = [(HMDBackingStoreLogAddTransactionOperation *)self transaction];
    v12 = [v11 options];
    v32 = 0;
    v13 = [v7 _insertLogWithRoot:v9 transaction:v10 set:objc_msgSend(v12 error:{"destination") | 0x100000000000000, &v32}];
    v5 = v32;

    if (v5)
    {
      v14 = [(HMDBackingStoreOperation *)self store];
      v15 = [v14 local];
      [v15 _rollback];
    }

    else if ([(HMDBackingStoreLogAddTransactionOperation *)self isAtomicSaveEnabled])
    {
      objc_initWeak(location, self);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __63__HMDBackingStoreLogAddTransactionOperation_mainReturningError__block_invoke;
      v28[3] = &unk_27972D0C0;
      objc_copyWeak(v30, location);
      v30[1] = v13;
      v29 = 0;
      v31 = 0;
      [(HMDBackingStoreOperation *)self setOperationFinishBlock:v28];

      objc_destroyWeak(v30);
      objc_destroyWeak(location);
    }

    else
    {
      v16 = [(HMDBackingStoreOperation *)self store];
      v17 = [v16 local];
      v18 = [v17 _commit];

      v19 = objc_autoreleasePoolPush();
      v20 = self;
      v21 = HMFGetOSLogHandle();
      v22 = v21;
      if (v18)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v23 = HMFGetLogIdentifier();
          *location = 138543874;
          *&location[4] = v23;
          v34 = 2048;
          v35 = v13;
          v36 = 2112;
          v37 = v18;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to commit non-atomic transaction %lu: %@", location, 0x20u);
        }

        objc_autoreleasePoolPop(v19);
        v5 = v18;
      }

      else
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v24 = HMFGetLogIdentifier();
          *location = 138543618;
          *&location[4] = v24;
          v34 = 2048;
          v35 = v13;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully committed non-atomic transaction %lu to log", location, 0x16u);
        }

        objc_autoreleasePoolPop(v19);
      }
    }
  }

  v25 = v5;

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

void __63__HMDBackingStoreLogAddTransactionOperation_mainReturningError__block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_13;
  }

  if (!v3)
  {
    v8 = [WeakRetained store];
    v9 = [v8 local];
    v6 = [v9 _commit];

    v10 = objc_autoreleasePoolPush();
    v11 = v5;
    v12 = HMFGetOSLogHandle();
    v13 = v12;
    if (v6)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v15 = *(a1 + 48);
        v16 = *(a1 + 32);
        v23 = 138543874;
        v24 = v14;
        v25 = 2048;
        v26 = v15;
        v27 = 2112;
        v28 = v16;
        v17 = "%{public}@Failed to commit atomic transaction %lu: %@";
        v18 = v13;
        v19 = OS_LOG_TYPE_ERROR;
        v20 = 32;
LABEL_10:
        _os_log_impl(&dword_2531F8000, v18, v19, v17, &v23, v20);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      v21 = *(a1 + 48);
      v23 = 138543618;
      v24 = v14;
      v25 = 2048;
      v26 = v21;
      v17 = "%{public}@Successfully committed atomic transaction %lu to log";
      v18 = v13;
      v19 = OS_LOG_TYPE_DEFAULT;
      v20 = 22;
      goto LABEL_10;
    }

    objc_autoreleasePoolPop(v10);
    goto LABEL_12;
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    v6 = [WeakRetained store];
    v7 = [v6 local];
    [v7 _rollback];

LABEL_12:
  }

LABEL_13:

  v22 = *MEMORY[0x277D85DE8];
}

- (HMDBackingStoreLogAddTransactionOperation)initWithAtomicSaveEnabled:(BOOL)a3 transaction:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HMDBackingStoreLogAddTransactionOperation;
  v8 = [(HMDBackingStoreOperation *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_transaction, a4);
    v9->_isAtomicSaveEnabled = a3;
    v10 = v9;
  }

  return v9;
}

- (HMDBackingStoreLogAddTransactionOperation)initWithTransaction:(id)a3
{
  v4 = a3;
  v5 = [(HMDBackingStoreLogAddTransactionOperation *)self initWithAtomicSaveEnabled:!isWatch() transaction:v4];

  return v5;
}

@end