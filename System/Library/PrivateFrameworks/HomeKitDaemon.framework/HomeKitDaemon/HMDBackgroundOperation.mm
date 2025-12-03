@interface HMDBackgroundOperation
+ (NSPredicate)predicate;
+ (id)logCategory;
- (BOOL)hasDependency:(id)dependency;
- (BOOL)isDeferred;
- (BOOL)isEqual:(id)equal;
- (BOOL)isExpired;
- (BOOL)isReadyToRun;
- (BOOL)mainWithError:(id *)error;
- (BOOL)runOperation:(id)operation;
- (HMDBackgroundOperation)initWithUUID:(id)d userData:(id)data backGroundOpsManager:(id)manager scheduledDate:(id)date expirationDate:(id)expirationDate dataSource:(id)source dependentOperations:(id)operations;
- (HMDBackgroundOperation)initWithUserData:(id)data;
- (HMDBackgroundOperation)initWithUserData:(id)data dataSource:(id)source backGroundOpsManager:(id)manager;
- (HMDHomeManager)homeManager;
- (NSDate)deferralDate;
- (id)AllDependencies;
- (id)attributeDescriptions;
- (id)dumpState;
- (id)logIdentifier;
- (void)addDependency:(id)dependency;
- (void)deferWithFailureCount:(int64_t)count;
- (void)removeDependency:(id)dependency;
- (void)setDeferralDate:(id)date;
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
  operationUUID = [(HMDBackgroundOperation *)self operationUUID];
  scheduledDate = [(HMDBackgroundOperation *)self scheduledDate];
  expirationDate = [(HMDBackgroundOperation *)self expirationDate];
  deferralDate = [(HMDBackgroundOperation *)self deferralDate];
  [(HMDBackgroundOperation *)self isExpired];
  v9 = HMFBooleanToString();
  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDBackgroundOperation failureCount](self, "failureCount")}];
  userData = [(HMDBackgroundOperation *)self userData];
  dependencies = [(HMDBackgroundOperation *)self dependencies];
  v13 = [v3 stringWithFormat:@"name: %@, id: %@, scheduledDate: %@ expirationDate: %@, deferralDate: %@, expired: %@, failureCount:%@, userData: %@, dependencies: %@", v4, operationUUID, scheduledDate, expirationDate, deferralDate, v9, v10, userData, dependencies];

  return v13;
}

- (id)attributeDescriptions
{
  v27[7] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  operationUUID = [(HMDBackgroundOperation *)self operationUUID];
  v25 = [v3 initWithName:@"UUID" value:operationUUID];
  v27[0] = v25;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  expirationDate = [(HMDBackgroundOperation *)self expirationDate];
  v23 = [v4 initWithName:@"expirationDate" value:expirationDate];
  v27[1] = v23;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  deferralDate = [(HMDBackgroundOperation *)self deferralDate];
  v6 = [v5 initWithName:@"deferralDate" value:deferralDate];
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
  dependencies = [(HMDBackgroundOperation *)self dependencies];
  v15 = [v13 initWithName:@"dependencies" value:dependencies];
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
  operationUUID = [(HMDBackgroundOperation *)self operationUUID];
  uUIDString = [operationUUID UUIDString];

  return uUIDString;
}

- (id)AllDependencies
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableSet *)self->_dependencies copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)hasDependency:(id)dependency
{
  dependencyCopy = dependency;
  os_unfair_lock_lock_with_options();
  dependencies = [(HMDBackgroundOperation *)self dependencies];
  v6 = [dependencies containsObject:dependencyCopy];

  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

- (void)removeDependency:(id)dependency
{
  dependencyCopy = dependency;
  os_unfair_lock_lock_with_options();
  dependencies = [(HMDBackgroundOperation *)self dependencies];
  [dependencies removeObject:dependencyCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addDependency:(id)dependency
{
  dependencyCopy = dependency;
  if (dependencyCopy)
  {
    v6 = dependencyCopy;
    os_unfair_lock_lock_with_options();
    dependencies = [(HMDBackgroundOperation *)self dependencies];
    [dependencies addObject:v6];

    os_unfair_lock_unlock(&self->_lock);
    dependencyCopy = v6;
  }
}

- (BOOL)isDeferred
{
  os_unfair_lock_lock_with_options();
  if (self->_deferralDate)
  {
    dataSource = [(HMDBackgroundOperation *)self dataSource];
    [dataSource timeIntervalSinceNowToDate:self->_deferralDate];
    v5 = v4 > 0.0;
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (void)setDeferralDate:(id)date
{
  dateCopy = date;
  os_unfair_lock_lock_with_options();
  deferralDate = self->_deferralDate;
  self->_deferralDate = dateCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)deferralDate
{
  os_unfair_lock_lock_with_options();
  v3 = self->_deferralDate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)deferWithFailureCount:(int64_t)count
{
  v4 = count - 1;
  if (count - 1 >= [&unk_283E75A10 count])
  {
    v4 = [&unk_283E75A10 count] - 1;
  }

  v7 = [&unk_283E75A10 objectAtIndexedSubscript:v4];
  dataSource = [(HMDBackgroundOperation *)self dataSource];
  [v7 doubleValue];
  v6 = [dataSource dateWithTimeIntervalSinceNow:?];
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
  dataSource = [(HMDBackgroundOperation *)self dataSource];
  expirationDate = [(HMDBackgroundOperation *)self expirationDate];
  [dataSource timeIntervalSinceNowToDate:expirationDate];
  v6 = v5 < 0.0;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

  operationUUID = [(HMDBackgroundOperation *)self operationUUID];
  operationUUID2 = [v6 operationUUID];
  v9 = HMFEqualObjects();

  if (!v9)
  {
    goto LABEL_10;
  }

  userData = [(HMDBackgroundOperation *)self userData];
  userData2 = [v6 userData];
  v12 = HMFEqualObjects();

  if (!v12)
  {
    goto LABEL_10;
  }

  scheduledDate = [(HMDBackgroundOperation *)self scheduledDate];
  scheduledDate2 = [v6 scheduledDate];
  v15 = HMFEqualObjects();

  if (!v15)
  {
    goto LABEL_10;
  }

  expirationDate = [(HMDBackgroundOperation *)self expirationDate];
  expirationDate2 = [v6 expirationDate];
  v18 = HMFEqualObjects();

  if (v18)
  {
    allDependencies = [(HMDBackgroundOperation *)self AllDependencies];
    allDependencies2 = [v6 AllDependencies];
    v21 = HMFEqualObjects();
  }

  else
  {
LABEL_10:
    v21 = 0;
  }

  return v21;
}

- (BOOL)runOperation:(id)operation
{
  v37 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  if ([(HMDBackgroundOperation *)self finished])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

  isDeferred = [(HMDBackgroundOperation *)self isDeferred];
  v5 = objc_autoreleasePoolPush();
  if (isDeferred)
  {
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      operationUUID = [(HMDBackgroundOperation *)selfCopy2 operationUUID];
      *buf = 138543618;
      v30 = v12;
      v31 = 2112;
      v32 = operationUUID;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Operation [%@] is deferred and should not run.", buf, 0x16u);
    }

LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  v14 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    operationUUID2 = [(HMDBackgroundOperation *)selfCopy3 operationUUID];
    *buf = 138543618;
    v30 = v17;
    v31 = 2112;
    v32 = operationUUID2;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Running Operation : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  [(HMDBackgroundOperation *)selfCopy3 setHomeManager:operationCopy];
  v28 = 0;
  v19 = [(HMDBackgroundOperation *)selfCopy3 mainWithError:&v28];
  selfCopy2 = v28;
  if (!v19)
  {
    [(HMDBackgroundOperation *)selfCopy3 setScheduled:0];
    [(HMDBackgroundOperation *)selfCopy3 setFailureCount:[(HMDBackgroundOperation *)selfCopy3 failureCount]+ 1];
    [(HMDBackgroundOperation *)selfCopy3 deferWithFailureCount:[(HMDBackgroundOperation *)selfCopy3 failureCount]];
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy3;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      operationUUID3 = [(HMDBackgroundOperation *)v21 operationUUID];
      v25 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HMDBackgroundOperation failureCount](v21, "failureCount")}];
      *buf = 138544130;
      v30 = v23;
      v31 = 2112;
      v32 = operationUUID3;
      v33 = 2112;
      v34 = v25;
      v35 = 2112;
      v36 = selfCopy2;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Operation [%@] failed [%@] with error : %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v20);
    goto LABEL_17;
  }

  [(HMDBackgroundOperation *)selfCopy3 markOperationFinished];
LABEL_5:
  v9 = 1;
LABEL_18:

  objc_autoreleasePoolPop(v5);
  v26 = *MEMORY[0x277D85DE8];
  return v9;
}

- (HMDBackgroundOperation)initWithUserData:(id)data dataSource:(id)source backGroundOpsManager:(id)manager
{
  managerCopy = manager;
  sourceCopy = source;
  dataCopy = data;
  v11 = [sourceCopy dateWithTimeIntervalSinceNow:2592000.0];
  uUID = [MEMORY[0x277CCAD78] UUID];
  currentDate = [sourceCopy currentDate];
  v14 = [(HMDBackgroundOperation *)self initWithUUID:uUID userData:dataCopy backGroundOpsManager:managerCopy scheduledDate:currentDate expirationDate:v11 dataSource:sourceCopy dependentOperations:0];

  return v14;
}

- (HMDBackgroundOperation)initWithUserData:(id)data
{
  dataCopy = data;
  v5 = objc_alloc_init(HMDBackgroundOperationDataSource);
  v6 = +[HMDMainDriver driver];
  homeManager = [v6 homeManager];
  bgOpsManager = [homeManager bgOpsManager];
  v9 = [(HMDBackgroundOperation *)self initWithUserData:dataCopy dataSource:v5 backGroundOpsManager:bgOpsManager];

  return v9;
}

- (HMDBackgroundOperation)initWithUUID:(id)d userData:(id)data backGroundOpsManager:(id)manager scheduledDate:(id)date expirationDate:(id)expirationDate dataSource:(id)source dependentOperations:(id)operations
{
  dCopy = d;
  dataCopy = data;
  managerCopy = manager;
  dateCopy = date;
  expirationDateCopy = expirationDate;
  sourceCopy = source;
  operationsCopy = operations;
  v29.receiver = self;
  v29.super_class = HMDBackgroundOperation;
  v19 = [(HMDBackgroundOperation *)&v29 init];
  v20 = v19;
  if (v19)
  {
    v19->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v19->_bgOpsManager, manager);
    v21 = [MEMORY[0x277D0F890] hmf_cachedInstanceForNSUUID:dCopy];
    operationUUID = v20->_operationUUID;
    v20->_operationUUID = v21;

    objc_storeStrong(&v20->_userData, data);
    objc_storeStrong(&v20->_scheduledDate, date);
    objc_storeStrong(&v20->_expirationDate, expirationDate);
    objc_storeStrong(&v20->_dataSource, source);
    if (operationsCopy)
    {
      v23 = [operationsCopy mutableCopy];
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

- (BOOL)mainWithError:(id *)error
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