@interface HMDAccessoryDiagnosticsSessionInternal
+ (id)logCategory;
- (HMDAccessory)accessory;
- (HMDAccessoryDiagnosticsSessionInternal)initWithAccessory:(id)accessory;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (void)setUpWithOptions:(id)options completion:(id)completion;
- (void)shutDown;
@end

@implementation HMDAccessoryDiagnosticsSessionInternal

- (HMDAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (id)logIdentifier
{
  accessory = [(HMDAccessoryDiagnosticsSessionInternal *)self accessory];
  logIdentifier = [accessory logIdentifier];

  return logIdentifier;
}

- (void)setUpWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)shutDown
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

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  filePath = [(HMDAccessoryDiagnosticsSessionInternal *)self filePath];
  v5 = [v3 initWithName:@"filePath" value:filePath];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (HMDAccessoryDiagnosticsSessionInternal)initWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v10.receiver = self;
  v10.super_class = HMDAccessoryDiagnosticsSessionInternal;
  v5 = [(HMDAccessoryDiagnosticsSessionInternal *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_accessory, accessoryCopy);
    workQueue = [accessoryCopy workQueue];
    workQueue = v6->_workQueue;
    v6->_workQueue = workQueue;

    v6->_maxBytes = 5242880;
    v6->_bytesWritten = 0;
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t5_219568 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t5_219568, &__block_literal_global_127_219569);
  }

  v3 = logCategory__hmf_once_v6_219570;

  return v3;
}

void __53__HMDAccessoryDiagnosticsSessionInternal_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v6_219570;
  logCategory__hmf_once_v6_219570 = v1;
}

@end