@interface HMBSQLStatement
+ (id)logCategory;
+ (id)queryPlansForContext:(id)context statement:(id)statement;
+ (sqlite3_stmt)sqlStatementForContext:(id)context statement:(id)statement;
- (HMBSQLContext)context;
- (HMBSQLStatement)initWithContext:(id)context statement:(id)statement;
- (HMBSQLStatement)initWithContext:(id)context statement:(sqlite3_stmt *)statement queryPlans:(id)plans;
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
  context = [(HMBSQLStatement *)self context];
  logIdentifier = [context logIdentifier];

  return logIdentifier;
}

- (void)finalize
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v6;
    v17 = 2048;
    statement = [(HMBSQLStatement *)selfCopy statement];
    _os_log_impl(&dword_22AD27000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Finalizing statement: %p", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  if ([(HMBSQLStatement *)selfCopy isFinalized])
  {
    _HMFPreconditionFailure();
  }

  context = [(HMBSQLStatement *)selfCopy context];
  v8 = context;
  if (context)
  {
    os_unfair_lock_assert_owner(context + 2);
    sqlite3_finalize([(HMBSQLStatement *)selfCopy statement]);
    [(HMBSQLStatement *)selfCopy setFinalized:1];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = selfCopy;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      statement2 = [(HMBSQLStatement *)v10 statement];
      v15 = 138543618;
      v16 = v12;
      v17 = 2048;
      statement = statement2;
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
    context = [(HMBSQLStatement *)self context];
    if (context)
    {
      os_unfair_lock_lock_with_options();
      [(HMBSQLStatement *)self finalize];
      os_unfair_lock_unlock(context + 2);
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      selfCopy = self;
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = HMFGetLogIdentifier();
        *buf = 138543618;
        v11 = v7;
        v12 = 2048;
        statement = [(HMBSQLStatement *)selfCopy statement];
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

- (HMBSQLStatement)initWithContext:(id)context statement:(id)statement
{
  contextCopy = context;
  statementCopy = statement;
  selfCopy = [objc_opt_class() sqlStatementForContext:contextCopy statement:statementCopy];
  if (selfCopy)
  {
    v9 = [objc_opt_class() queryPlansForContext:contextCopy statement:statementCopy];
    self = [(HMBSQLStatement *)self initWithContext:contextCopy statement:selfCopy queryPlans:v9];

    selfCopy = self;
  }

  return selfCopy;
}

- (HMBSQLStatement)initWithContext:(id)context statement:(sqlite3_stmt *)statement queryPlans:(id)plans
{
  contextCopy = context;
  plansCopy = plans;
  v13.receiver = self;
  v13.super_class = HMBSQLStatement;
  v10 = [(HMBSQLStatement *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_context, contextCopy);
    v11->_statement = statement;
    objc_storeStrong(&v11->_queryPlans, plans);
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

+ (id)queryPlansForContext:(id)context statement:(id)statement
{
  v27 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  statementCopy = statement;
  if ([self explainStatements])
  {
    connection = [contextCopy connection];
    v9 = [@"EXPLAIN QUERY PLAN " stringByAppendingString:statementCopy];
    uTF8String = [v9 UTF8String];
    v20 = 0;
    v11 = selectSQLite3(connection, uTF8String, MEMORY[0x277CBEC10], &v20);
    v12 = v20;

    if (v11)
    {
      v13 = [v11 na_map:&__block_literal_global_121];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543874;
        v22 = v17;
        v23 = 2112;
        v24 = statementCopy;
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

+ (sqlite3_stmt)sqlStatementForContext:(id)context statement:(id)statement
{
  v29 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  statementCopy = statement;
  v22 = 0;
  v8 = prepareSQLite3([contextCopy connection], objc_msgSend(statementCopy, "UTF8String"), &v22);
  v9 = v22;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
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
    v26 = statementCopy;
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