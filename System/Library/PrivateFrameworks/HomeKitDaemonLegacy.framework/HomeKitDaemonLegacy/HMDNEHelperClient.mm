@interface HMDNEHelperClient
+ (id)logCategory;
- (HMDNEHelperClient)init;
- (id)_signingIdentifierWithProcessId:(id)id;
- (id)cacheCopyAppUUIDForSigningIdentifier:(id)identifier executablePath:(id)path;
- (id)cacheCopySigningIdentifierForProcessIdentifier:(id)identifier;
- (void)_addIdentifiers:(id)identifiers signingId:(id)id;
- (void)cacheClearUUIDs;
@end

@implementation HMDNEHelperClient

- (void)cacheClearUUIDs
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Clearing cached UUIDs", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  cachedEntries = selfCopy->_cachedEntries;
  selfCopy->_cachedEntries = MEMORY[0x277CBEBF8];

  NEHelperCacheClearUUIDs();
  v8 = *MEMORY[0x277D85DE8];
}

- (id)cacheCopySigningIdentifierForProcessIdentifier:(id)identifier
{
  v14[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = [(HMDNEHelperClient *)self _signingIdentifierWithProcessId:identifierCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v14[0] = 0;
    v14[1] = 0;
    [identifierCopy getUUIDBytes:v14];
    v8 = NEHelperCacheCopySigningIdentifierMapping();
    v9 = v8;
    if (v8 && MEMORY[0x259C04520](v8) == MEMORY[0x277D864C0])
    {
      v10 = objc_alloc(MEMORY[0x277CCACA8]);
      string_ptr = xpc_string_get_string_ptr(v9);
      v7 = [v10 initWithBytes:string_ptr length:xpc_string_get_length(v9) encoding:4];
    }

    else
    {
      v7 = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)cacheCopyAppUUIDForSigningIdentifier:(id)identifier executablePath:(id)path
{
  identifierCopy = identifier;
  pathCopy = path;
  [identifierCopy UTF8String];
  if (pathCopy)
  {
    [pathCopy UTF8String];
  }

  v8 = NEHelperCacheCopyAppUUIDMapping();
  v9 = v8;
  if (v8 && MEMORY[0x259C04520](v8) == MEMORY[0x277D86440])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__9033;
    v17 = __Block_byref_object_dispose__9034;
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = __73__HMDNEHelperClient_cacheCopyAppUUIDForSigningIdentifier_executablePath___block_invoke;
    applier[3] = &unk_279721D88;
    applier[4] = &v13;
    xpc_array_apply(v9, applier);
    if ([v14[5] count])
    {
      [(HMDNEHelperClient *)self _addIdentifiers:v14[5] signingId:identifierCopy];
      v10 = v14[5];
    }

    else
    {
      v10 = 0;
    }

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __73__HMDNEHelperClient_cacheCopyAppUUIDForSigningIdentifier_executablePath___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x259C04520](v4) == MEMORY[0x277D864D0])
  {
    v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:xpc_uuid_get_bytes(v5)];
    [*(*(*(a1 + 32) + 8) + 40) addObject:v6];
  }

  return 1;
}

- (id)_signingIdentifierWithProcessId:(id)id
{
  v24 = *MEMORY[0x277D85DE8];
  idCopy = id;
  cachedEntries = self->_cachedEntries;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __53__HMDNEHelperClient__signingIdentifierWithProcessId___block_invoke;
  v16[3] = &unk_279721D60;
  v6 = idCopy;
  v17 = v6;
  v7 = [(NSArray *)cachedEntries indexOfObjectPassingTest:v16];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    signingId = 0;
  }

  else
  {
    v9 = [(NSArray *)self->_cachedEntries objectAtIndexedSubscript:v7];
    signingId = [v9 signingId];

    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543874;
      v19 = v13;
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = signingId;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Local cache hit for %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];

  return signingId;
}

uint64_t __53__HMDNEHelperClient__signingIdentifierWithProcessId___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifiers];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

- (void)_addIdentifiers:(id)identifiers signingId:(id)id
{
  v26 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  idCopy = id;
  cachedEntries = self->_cachedEntries;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __47__HMDNEHelperClient__addIdentifiers_signingId___block_invoke;
  v18[3] = &unk_279721D60;
  v9 = idCopy;
  v19 = v9;
  if ([(NSArray *)cachedEntries indexOfObjectPassingTest:v18]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543874;
      v21 = v13;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = identifiersCopy;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Caching process identifiers for %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [[_HMDNEHelperClientCacheEntry alloc] initWithSigningId:v9 identifiers:identifiersCopy];
    v15 = [(NSArray *)self->_cachedEntries arrayByAddingObject:v14];
    v16 = self->_cachedEntries;
    self->_cachedEntries = v15;
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __47__HMDNEHelperClient__addIdentifiers_signingId___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 signingId];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (HMDNEHelperClient)init
{
  v6.receiver = self;
  v6.super_class = HMDNEHelperClient;
  v2 = [(HMDNEHelperClient *)&v6 init];
  v3 = v2;
  if (v2)
  {
    cachedEntries = v2->_cachedEntries;
    v2->_cachedEntries = MEMORY[0x277CBEBF8];
  }

  return v3;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3, &__block_literal_global_9043);
  }

  v3 = logCategory__hmf_once_v4;

  return v3;
}

uint64_t __32__HMDNEHelperClient_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v4 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end