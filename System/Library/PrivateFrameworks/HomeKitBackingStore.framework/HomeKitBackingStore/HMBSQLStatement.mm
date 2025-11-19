@interface HMBSQLStatement
+ (id)logCategory;
+ (id)queryPlansForContext:(id)a3 statement:(id)a4;
+ (sqlite3_stmt)sqlStatementForContext:(id)a3 statement:(id)a4;
- (HMBSQLContext)context;
- (HMBSQLStatement)initWithContext:(id)a3 statement:(id)a4;
- (HMBSQLStatement)initWithContext:(id)a3 statement:(sqlite3_stmt *)a4 queryPlans:(id)a5;
- (id)logIdentifier;
- (void)dealloc;
- (void)finalize;
@end

@implementation HMBSQLStatement

- (HMBSQLContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMBSQLStatement *)self context];
  v3 = [v2 logIdentifier];

  return v3;
}

- (void)finalize
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v6;
    v17 = 2048;
    v18 = [(HMBSQLStatement *)v4 statement];
    _os_log_impl(&dword_22AD27000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Finalizing statement: %p", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  if ([(HMBSQLStatement *)v4 isFinalized])
  {
    _HMFPreconditionFailure();
  }

  v7 = [(HMBSQLStatement *)v4 context];
  v8 = v7;
  if (v7)
  {
    os_unfair_lock_assert_owner(v7 + 2);
    sqlite3_finalize([(HMBSQLStatement *)v4 statement]);
    [(HMBSQLStatement *)v4 setFinalized:1];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = v4;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [(HMBSQLStatement *)v10 statement];
      v15 = 138543618;
      v16 = v12;
      v17 = 2048;
      v18 = v13;
      _os_log_impl(&dword_22AD27000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Can't finalize statement because context is nil: %p", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  if (![(HMBSQLStatement *)self isFinalized])
  {
    v3 = [(HMBSQLStatement *)self context];
    if (v3)
    {
      os_unfair_lock_lock_with_options();
      [(HMBSQLStatement *)self finalize];
      os_unfair_lock_unlock(v3 + 2);
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      v5 = self;
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = HMFGetLogIdentifier();
        *buf = 138543618;
        v11 = v7;
        v12 = 2048;
        v13 = [(HMBSQLStatement *)v5 statement];
        _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Can't finalize statement in dealloc because context is nil: %p", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v4);
    }
  }

  v9.receiver = self;
  v9.super_class = HMBSQLStatement;
  [(HMBSQLStatement *)&v9 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

- (HMBSQLStatement)initWithContext:(id)a3 statement:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() sqlStatementForContext:v6 statement:v7];
  if (v8)
  {
    v9 = [objc_opt_class() queryPlansForContext:v6 statement:v7];
    self = [(HMBSQLStatement *)self initWithContext:v6 statement:v8 queryPlans:v9];

    v8 = self;
  }

  return v8;
}

- (HMBSQLStatement)initWithContext:(id)a3 statement:(sqlite3_stmt *)a4 queryPlans:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = HMBSQLStatement;
  v10 = [(HMBSQLStatement *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_context, v8);
    v11->_statement = a4;
    objc_storeStrong(&v11->_queryPlans, a5);
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7, &__block_literal_global_42);
  }

  v3 = logCategory__hmf_once_v8;

  return v3;
}

uint64_t __30__HMBSQLStatement_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v8;
  logCategory__hmf_once_v8 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)queryPlansForContext:(id)a3 statement:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([a1 explainStatements])
  {
    v8 = [v6 connection];
    v9 = [@"EXPLAIN QUERY PLAN " stringByAppendingString:v7];
    v10 = [v9 UTF8String];
    v20 = 0;
    v11 = selectSQLite3(v8, v10, MEMORY[0x277CBEC10], &v20);
    v12 = v20;

    if (v11)
    {
      v13 = [v11 na_map:&__block_literal_global_121];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = a1;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543874;
        v22 = v17;
        v23 = 2112;
        v24 = v7;
        v25 = 2112;
        v26 = v12;
        _os_log_impl(&dword_22AD27000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unable to explain statement '%@': %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v13;
}

HMBSQLStatementQueryPlanTuple *__50__HMBSQLStatement_queryPlansForContext_statement___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMBSQLStatementQueryPlanTuple alloc] initWithRow:v2];

  return v3;
}

+ (sqlite3_stmt)sqlStatementForContext:(id)a3 statement:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v22 = 0;
  v8 = prepareSQLite3([v6 connection], objc_msgSend(v7, "UTF8String"), &v22);
  v9 = v22;
  v10 = objc_autoreleasePoolPush();
  v11 = a1;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v8)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      v15 = sqlite3_sql(v8);
      *buf = 138543618;
      v24 = v14;
      v25 = 2080;
      v26 = v15;
      v16 = "%{public}@Prepared SQL statement: %s";
      v17 = v13;
      v18 = OS_LOG_TYPE_DEBUG;
      v19 = 22;
LABEL_6:
      _os_log_impl(&dword_22AD27000, v17, v18, v16, buf, v19);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    v24 = v14;
    v25 = 2112;
    v26 = v7;
    v27 = 2112;
    v28 = v9;
    v16 = "%{public}@Unable to prepare SQL statement '%@': %@";
    v17 = v13;
    v18 = OS_LOG_TYPE_ERROR;
    v19 = 32;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v10);
  v20 = *MEMORY[0x277D85DE8];
  return v8;
}

@end