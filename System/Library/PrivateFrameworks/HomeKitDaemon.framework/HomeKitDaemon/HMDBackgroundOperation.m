@interface HMDBackgroundOperation
+ (NSPredicate)predicate;
+ (id)logCategory;
- (BOOL)hasDependency:(id)a3;
- (BOOL)isDeferred;
- (BOOL)isEqual:(id)a3;
- (BOOL)isExpired;
- (BOOL)isReadyToRun;
- (BOOL)mainWithError:(id *)a3;
- (BOOL)runOperation:(id)a3;
- (HMDBackgroundOperation)initWithUUID:(id)a3 userData:(id)a4 backGroundOpsManager:(id)a5 scheduledDate:(id)a6 expirationDate:(id)a7 dataSource:(id)a8 dependentOperations:(id)a9;
- (HMDBackgroundOperation)initWithUserData:(id)a3;
- (HMDBackgroundOperation)initWithUserData:(id)a3 dataSource:(id)a4 backGroundOpsManager:(id)a5;
- (HMDHomeManager)homeManager;
- (NSDate)deferralDate;
- (id)AllDependencies;
- (id)attributeDescriptions;
- (id)dumpState;
- (id)logIdentifier;
- (void)addDependency:(id)a3;
- (void)deferWithFailureCount:(int64_t)a3;
- (void)removeDependency:(id)a3;
- (void)setDeferralDate:(id)a3;
@end

@implementation HMDBackgroundOperation

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (id)dumpState
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HMDBackgroundOperation *)self operationUUID];
  v6 = [(HMDBackgroundOperation *)self scheduledDate];
  v7 = [(HMDBackgroundOperation *)self expirationDate];
  v8 = [(HMDBackgroundOperation *)self deferralDate];
  [(HMDBackgroundOperation *)self isExpired];
  v9 = HMFBooleanToString();
  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDBackgroundOperation failureCount](self, "failureCount")}];
  v11 = [(HMDBackgroundOperation *)self userData];
  v12 = [(HMDBackgroundOperation *)self dependencies];
  v13 = [v3 stringWithFormat:@"name: %@, id: %@, scheduledDate: %@ expirationDate: %@, deferralDate: %@, expired: %@, failureCount:%@, userData: %@, dependencies: %@", v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (id)attributeDescriptions
{
  v27[7] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v26 = [(HMDBackgroundOperation *)self operationUUID];
  v25 = [v3 initWithName:@"UUID" value:v26];
  v27[0] = v25;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v24 = [(HMDBackgroundOperation *)self expirationDate];
  v23 = [v4 initWithName:@"expirationDate" value:v24];
  v27[1] = v23;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v22 = [(HMDBackgroundOperation *)self deferralDate];
  v6 = [v5 initWithName:@"deferralDate" value:v22];
  v27[2] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDBackgroundOperation failureCount](self, "failureCount")}];
  v9 = [v7 initWithName:@"failureCount" value:v8];
  v27[3] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDBackgroundOperation *)self isExpired];
  v11 = HMFBooleanToString();
  v12 = [v10 initWithName:@"expired" value:v11];
  v27[4] = v12;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  v14 = [(HMDBackgroundOperation *)self dependencies];
  v15 = [v13 initWithName:@"dependencies" value:v14];
  v27[5] = v15;
  v16 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDBackgroundOperation *)self isAlreadyScheduled];
  v17 = HMFBooleanToString();
  v18 = [v16 initWithName:@"scheduled" value:v17];
  v27[6] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:7];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)logIdentifier
{
  v2 = [(HMDBackgroundOperation *)self operationUUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)AllDependencies
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableSet *)self->_dependencies copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)hasDependency:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(HMDBackgroundOperation *)self dependencies];
  v6 = [v5 containsObject:v4];

  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

- (void)removeDependency:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [(HMDBackgroundOperation *)self dependencies];
  [v4 removeObject:v5];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addDependency:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    os_unfair_lock_lock_with_options();
    v5 = [(HMDBackgroundOperation *)self dependencies];
    [v5 addObject:v6];

    os_unfair_lock_unlock(&self->_lock);
    v4 = v6;
  }
}

- (BOOL)isDeferred
{
  os_unfair_lock_lock_with_options();
  if (self->_deferralDate)
  {
    v3 = [(HMDBackgroundOperation *)self dataSource];
    [v3 timeIntervalSinceNowToDate:self->_deferralDate];
    v5 = v4 > 0.0;
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (void)setDeferralDate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  deferralDate = self->_deferralDate;
  self->_deferralDate = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)deferralDate
{
  os_unfair_lock_lock_with_options();
  v3 = self->_deferralDate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)deferWithFailureCount:(int64_t)a3
{
  v4 = a3 - 1;
  if (a3 - 1 >= [&unk_283E75A10 count])
  {
    v4 = [&unk_283E75A10 count] - 1;
  }

  v7 = [&unk_283E75A10 objectAtIndexedSubscript:v4];
  v5 = [(HMDBackgroundOperation *)self dataSource];
  [v7 doubleValue];
  v6 = [v5 dateWithTimeIntervalSinceNow:?];
  [(HMDBackgroundOperation *)self setDeferralDate:v6];
}

- (BOOL)isReadyToRun
{
  if ([(HMDBackgroundOperation *)self isExpired]|| [(HMDBackgroundOperation *)self finished]|| [(HMDBackgroundOperation *)self isDeferred])
  {
    return 0;
  }

  else
  {
    return ![(HMDBackgroundOperation *)self isAlreadyScheduled];
  }
}

- (BOOL)isExpired
{
  v3 = [(HMDBackgroundOperation *)self dataSource];
  v4 = [(HMDBackgroundOperation *)self expirationDate];
  [v3 timeIntervalSinceNowToDate:v4];
  v6 = v5 < 0.0;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = [(HMDBackgroundOperation *)self operationUUID];
  v8 = [v6 operationUUID];
  v9 = HMFEqualObjects();

  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = [(HMDBackgroundOperation *)self userData];
  v11 = [v6 userData];
  v12 = HMFEqualObjects();

  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = [(HMDBackgroundOperation *)self scheduledDate];
  v14 = [v6 scheduledDate];
  v15 = HMFEqualObjects();

  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = [(HMDBackgroundOperation *)self expirationDate];
  v17 = [v6 expirationDate];
  v18 = HMFEqualObjects();

  if (v18)
  {
    v19 = [(HMDBackgroundOperation *)self AllDependencies];
    v20 = [v6 AllDependencies];
    v21 = HMFEqualObjects();
  }

  else
  {
LABEL_10:
    v21 = 0;
  }

  return v21;
}

- (BOOL)runOperation:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMDBackgroundOperation *)self finished])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@The operation is already finished running.", buf, 0xCu);
    }

    goto LABEL_5;
  }

  v10 = [(HMDBackgroundOperation *)self isDeferred];
  v5 = objc_autoreleasePoolPush();
  if (v10)
  {
    v6 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [(HMDBackgroundOperation *)v6 operationUUID];
      *buf = 138543618;
      v30 = v12;
      v31 = 2112;
      v32 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Operation [%@] is deferred and should not run.", buf, 0x16u);
    }

LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [(HMDBackgroundOperation *)v15 operationUUID];
    *buf = 138543618;
    v30 = v17;
    v31 = 2112;
    v32 = v18;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Running Operation : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  [(HMDBackgroundOperation *)v15 setHomeManager:v4];
  v28 = 0;
  v19 = [(HMDBackgroundOperation *)v15 mainWithError:&v28];
  v6 = v28;
  if (!v19)
  {
    [(HMDBackgroundOperation *)v15 setScheduled:0];
    [(HMDBackgroundOperation *)v15 setFailureCount:[(HMDBackgroundOperation *)v15 failureCount]+ 1];
    [(HMDBackgroundOperation *)v15 deferWithFailureCount:[(HMDBackgroundOperation *)v15 failureCount]];
    v20 = objc_autoreleasePoolPush();
    v21 = v15;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [(HMDBackgroundOperation *)v21 operationUUID];
      v25 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDBackgroundOperation failureCount](v21, "failureCount")}];
      *buf = 138544130;
      v30 = v23;
      v31 = 2112;
      v32 = v24;
      v33 = 2112;
      v34 = v25;
      v35 = 2112;
      v36 = v6;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Operation [%@] failed [%@] with error : %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v20);
    goto LABEL_17;
  }

  [(HMDBackgroundOperation *)v15 markOperationFinished];
LABEL_5:
  v9 = 1;
LABEL_18:

  objc_autoreleasePoolPop(v5);
  v26 = *MEMORY[0x277D85DE8];
  return v9;
}

- (HMDBackgroundOperation)initWithUserData:(id)a3 dataSource:(id)a4 backGroundOpsManager:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v9 dateWithTimeIntervalSinceNow:2592000.0];
  v12 = [MEMORY[0x277CCAD78] UUID];
  v13 = [v9 currentDate];
  v14 = [(HMDBackgroundOperation *)self initWithUUID:v12 userData:v10 backGroundOpsManager:v8 scheduledDate:v13 expirationDate:v11 dataSource:v9 dependentOperations:0];

  return v14;
}

- (HMDBackgroundOperation)initWithUserData:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HMDBackgroundOperationDataSource);
  v6 = +[HMDMainDriver driver];
  v7 = [v6 homeManager];
  v8 = [v7 bgOpsManager];
  v9 = [(HMDBackgroundOperation *)self initWithUserData:v4 dataSource:v5 backGroundOpsManager:v8];

  return v9;
}

- (HMDBackgroundOperation)initWithUUID:(id)a3 userData:(id)a4 backGroundOpsManager:(id)a5 scheduledDate:(id)a6 expirationDate:(id)a7 dataSource:(id)a8 dependentOperations:(id)a9
{
  v15 = a3;
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v29.receiver = self;
  v29.super_class = HMDBackgroundOperation;
  v19 = [(HMDBackgroundOperation *)&v29 init];
  v20 = v19;
  if (v19)
  {
    v19->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v19->_bgOpsManager, a5);
    v21 = [MEMORY[0x277D0F890] hmf_cachedInstanceForNSUUID:v15];
    operationUUID = v20->_operationUUID;
    v20->_operationUUID = v21;

    objc_storeStrong(&v20->_userData, a4);
    objc_storeStrong(&v20->_scheduledDate, a6);
    objc_storeStrong(&v20->_expirationDate, a7);
    objc_storeStrong(&v20->_dataSource, a8);
    if (v18)
    {
      v23 = [v18 mutableCopy];
    }

    else
    {
      v23 = [MEMORY[0x277CBEB58] set];
    }

    v24 = v23;
    objc_storeStrong(&v20->_dependencies, v23);
  }

  return v20;
}

- (BOOL)mainWithError:(id *)a3
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = MEMORY[0x277CCACA8];
  v6 = NSStringFromSelector(a2);
  v7 = [v5 stringWithFormat:@"%@ is unavailable", v6];
  v8 = [v3 exceptionWithName:v4 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t12_144766 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t12_144766, &__block_literal_global_144767);
  }

  v3 = logCategory__hmf_once_v13_144768;

  return v3;
}

void __37__HMDBackgroundOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v13_144768;
  logCategory__hmf_once_v13_144768 = v1;
}

+ (NSPredicate)predicate
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end