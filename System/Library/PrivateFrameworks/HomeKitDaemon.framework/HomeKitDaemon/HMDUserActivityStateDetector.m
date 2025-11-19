@interface HMDUserActivityStateDetector
+ (BOOL)supportsDataSource:(id)a3;
+ (id)logCategory;
+ (unint64_t)contributorType;
- (HMDUserActivityStateDetector)initWithDataSource:(id)a3;
- (HMDUserActivityStateDetectorStateChangeDelegate)stateChangeDelegate;
- (id)dumpStateWithPrivacyLevel:(unint64_t)a3;
- (id)logIdentifier;
- (void)configureWithCompletion:(id)a3;
- (void)handleLocationAuthorizationChange:(int64_t)a3;
- (void)notifyDetectorStateChangedWithReason:(unint64_t)a3;
@end

@implementation HMDUserActivityStateDetector

- (HMDUserActivityStateDetectorStateChangeDelegate)stateChangeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_stateChangeDelegate);

  return WeakRetained;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = @"report";
  v3 = [(HMDUserActivityStateDetector *)self latestReport];
  v4 = [v3 description];
  v5 = v4;
  v6 = @"unknown";
  if (v4)
  {
    v6 = v4;
  }

  v11[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)logIdentifier
{
  v2 = [(HMDUserActivityStateDetector *)self dataSource];
  v3 = [v2 logIdentifier];

  return v3;
}

- (void)handleLocationAuthorizationChange:(int64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [(HMDUserActivityStateDetector *)self dataSource];
  v6 = [v5 queue];
  dispatch_assert_queue_V2(v6);

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HMLocationAuthorizationAsString();
    v13 = 138543618;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Base Implementation. Not handling location auth change: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [(HMDUserActivityStateDetector *)v8 setLocationAuthorization:a3];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)notifyDetectorStateChangedWithReason:(unint64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [(HMDUserActivityStateDetector *)self dataSource];
  v6 = [v5 queue];
  dispatch_assert_queue_V2(v6);

  v7 = [(HMDUserActivityStateDetector *)self stateChangeDelegate];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = HMDUserActivityStateDetectorUpdateReasonAsString(a3);
      v16 = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate with update reason: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [v7 handleStateChangeForDetectorOfType:objc_msgSend(objc_opt_class() withReason:{"contributorType"), a3}];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly asked to notify stateChangeDelegate before it was assigned", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)configureWithCompletion:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (HMDUserActivityStateDetector)initWithDataSource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDUserActivityStateDetector;
  v6 = [(HMDUserActivityStateDetector *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
    v7->_locationAuthorization = 0;
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_158256 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_158256, &__block_literal_global_158257);
  }

  v3 = logCategory__hmf_once_v4_158258;

  return v3;
}

void __43__HMDUserActivityStateDetector_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_158258;
  logCategory__hmf_once_v4_158258 = v1;
}

+ (BOOL)supportsDataSource:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

+ (unint64_t)contributorType
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end