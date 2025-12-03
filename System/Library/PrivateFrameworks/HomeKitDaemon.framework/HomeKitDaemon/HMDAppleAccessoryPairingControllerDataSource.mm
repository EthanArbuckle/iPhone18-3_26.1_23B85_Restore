@interface HMDAppleAccessoryPairingControllerDataSource
- (HAPPairingIdentity)hh1ControllerIdentity;
- (HMDAppleAccessoryPairingControllerDataSource)initWithContext:(id)context;
- (NSArray)inProgressPairingAccessories;
- (id)deviceForIdentifier:(id)identifier;
- (id)timerWithInterval:(double)interval options:(unsigned int)options;
- (void)deletePairingAccessoryState:(id)state;
- (void)updatePairingAccessoryState:(id)state;
@end

@implementation HMDAppleAccessoryPairingControllerDataSource

- (id)deviceForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[HMDAccountRegistry sharedRegistry];
  v5 = [v4 deviceForIdentifier:identifierCopy];

  return v5;
}

- (void)deletePairingAccessoryState:(id)state
{
  stateCopy = state;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__HMDAppleAccessoryPairingControllerDataSource_deletePairingAccessoryState___block_invoke;
  v6[3] = &unk_27867F850;
  v7 = stateCopy;
  v5 = stateCopy;
  [(HMCContextProvider *)self unsafeSynchronousBlock:v6];
}

void __76__HMDAppleAccessoryPairingControllerDataSource_deletePairingAccessoryState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [v3 homeManager];
  v4 = [v3 homeManager];
  v5 = [v4 pairingAppleAccessories];
  v6 = [v5 mutableCopy];

  __removeHomeState(v6, *(a1 + 32));
  [v7 setPairingAppleAccessories:v6];
  [v3 save];
}

- (void)updatePairingAccessoryState:(id)state
{
  stateCopy = state;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__HMDAppleAccessoryPairingControllerDataSource_updatePairingAccessoryState___block_invoke;
  v6[3] = &unk_27867F850;
  v7 = stateCopy;
  v5 = stateCopy;
  [(HMCContextProvider *)self unsafeSynchronousBlock:v6];
}

void __76__HMDAppleAccessoryPairingControllerDataSource_updatePairingAccessoryState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = [v3 homeManager];
  v4 = [v11 pairingAppleAccessories];
  v5 = [v4 mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277CBEB18] array];
  }

  v8 = v7;

  v9 = [*(a1 + 32) accessory];
  v10 = [v9 uuid];
  __removeHomeState(v8, v10);

  [v8 addObject:*(a1 + 32)];
  [v11 setPairingAppleAccessories:v8];
  [v3 save];
}

- (id)timerWithInterval:(double)interval options:(unsigned int)options
{
  v4 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:12 options:interval];

  return v4;
}

- (HAPPairingIdentity)hh1ControllerIdentity
{
  v17 = *MEMORY[0x277D85DE8];
  systemStore = [MEMORY[0x277CFEC78] systemStore];
  v12 = 0;
  v4 = [systemStore getOrCreateLocalPairingIdentity:&v12];
  v5 = v12;

  if (!v4)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v14 = v9;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unable to get controller identity for pairing controller: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NSArray)inProgressPairingAccessories
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__202808;
  v9 = __Block_byref_object_dispose__202809;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __76__HMDAppleAccessoryPairingControllerDataSource_inProgressPairingAccessories__block_invoke;
  v4[3] = &unk_27867F828;
  v4[4] = &v5;
  [(HMCContextProvider *)self unsafeSynchronousBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __76__HMDAppleAccessoryPairingControllerDataSource_inProgressPairingAccessories__block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 homeManager];
  v3 = [v6 pairingAppleAccessories];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (HMDAppleAccessoryPairingControllerDataSource)initWithContext:(id)context
{
  v4.receiver = self;
  v4.super_class = HMDAppleAccessoryPairingControllerDataSource;
  return [(HMCContextProvider *)&v4 initWithContext:context];
}

@end