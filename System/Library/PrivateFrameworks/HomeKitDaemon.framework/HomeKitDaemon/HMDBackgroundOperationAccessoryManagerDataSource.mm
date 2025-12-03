@interface HMDBackgroundOperationAccessoryManagerDataSource
- (HMDBackgroundOperationAccessoryManagerDataSource)initWithOperationManager:(id)manager notificationCenter:(id)center;
- (id)values;
- (void)_handleAccessoryIsReachable:(id)reachable;
- (void)dealloc;
@end

@implementation HMDBackgroundOperationAccessoryManagerDataSource

- (void)_handleAccessoryIsReachable:(id)reachable
{
  v18 = *MEMORY[0x277D85DE8];
  reachableCopy = reachable;
  object = [reachableCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    shortDescription = [v7 shortDescription];
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = shortDescription;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Accessory became reachable: %@.", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMDBackgroundOperationManagerDataSource *)selfCopy notifyDataSourceChanged];

  v13 = *MEMORY[0x277D85DE8];
}

- (id)values
{
  v16[1] = *MEMORY[0x277D85DE8];
  owner = [(HMDBackgroundOperationManagerDataSource *)self owner];
  homeManager = [owner homeManager];
  pairedAccessories = [homeManager pairedAccessories];

  v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(pairedAccessories, "count")}];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __58__HMDBackgroundOperationAccessoryManagerDataSource_values__block_invoke;
  v13 = &unk_27867B478;
  v14 = v5;
  v6 = v5;
  [pairedAccessories hmf_enumerateWithAutoreleasePoolUsingBlock:&v10];
  v15 = @"visibleAccessories";
  v16[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:{1, v10, v11, v12, v13}];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

void __58__HMDBackgroundOperationAccessoryManagerDataSource_values__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 isReachable])
  {
    v3 = *(a1 + 32);
    v4 = [v5 uuid];
    [v3 addObject:v4];
  }
}

- (void)dealloc
{
  notificationCenter = [(HMDBackgroundOperationManagerDataSource *)self notificationCenter];
  [notificationCenter removeObserver:self name:@"HMDAccessoryIsReachableNotification" object:0];

  v4.receiver = self;
  v4.super_class = HMDBackgroundOperationAccessoryManagerDataSource;
  [(HMDBackgroundOperationAccessoryManagerDataSource *)&v4 dealloc];
}

- (HMDBackgroundOperationAccessoryManagerDataSource)initWithOperationManager:(id)manager notificationCenter:(id)center
{
  centerCopy = center;
  v9.receiver = self;
  v9.super_class = HMDBackgroundOperationAccessoryManagerDataSource;
  v7 = [(HMDBackgroundOperationManagerDataSource *)&v9 initWithOperationManager:manager notificationCenter:centerCopy];
  if (v7)
  {
    [centerCopy addObserver:v7 selector:sel__handleAccessoryIsReachable_ name:@"HMDAccessoryIsReachableNotification" object:0];
  }

  return v7;
}

@end