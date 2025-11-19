@interface __HMFLocationAuthorizationMarkOperation
+ (id)logCategory;
- (void)main;
@end

@implementation __HMFLocationAuthorizationMarkOperation

- (void)main
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(__HMFLocationManagerOperation *)self manager];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier(v5);
      v12 = 138543362;
      v13 = v8;
      _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_INFO, "%{public}@Marking as having received location", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [v3 markAsHavingReceivedLocation];
    [(HMFOperation *)v5 finish];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier(v5);
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_ERROR, "%{public}@Missing internal location manager", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v10 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11 reason:@"Unexpected internal state."];
    [(HMFOperation *)v5 cancelWithError:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (id)logCategory
{
  if (_MergedGlobals_52 != -1)
  {
    dispatch_once(&_MergedGlobals_52, &__block_literal_global);
  }

  v3 = qword_280AFC548;

  return v3;
}

@end