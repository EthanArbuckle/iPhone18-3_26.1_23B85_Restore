@interface HMDBackingStoreDispatchModelChange
- (HMDBackingStoreDispatchModelChange)initWithModelChange:(id)a3;
- (void)main;
@end

@implementation HMDBackingStoreDispatchModelChange

- (void)main
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMDBackingStoreDispatchModelChange *)v4 modelChange];
    v9 = 138543618;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@MODEL CHANGE: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = *MEMORY[0x277D85DE8];
}

- (HMDBackingStoreDispatchModelChange)initWithModelChange:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = HMDBackingStoreDispatchModelChange;
  v6 = [(HMDBackingStoreDispatchModelChange *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_modelChange, a3);
    v8 = v7;
  }

  return v7;
}

@end