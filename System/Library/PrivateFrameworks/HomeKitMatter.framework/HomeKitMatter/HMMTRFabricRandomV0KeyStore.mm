@interface HMMTRFabricRandomV0KeyStore
+ (id)logCategory;
- (HMMTRFabricRandomV0KeyStore)init;
@end

@implementation HMMTRFabricRandomV0KeyStore

- (HMMTRFabricRandomV0KeyStore)init
{
  v8.receiver = self;
  v8.super_class = HMMTRFabricRandomV0KeyStore;
  v2 = [(HMMTRFabricRandomV0KeyStore *)&v8 init];
  if (v2)
  {
    initUnassociated = [[HMMTRMatterKeypair alloc] initUnassociated];
    nocSigner = v2->_nocSigner;
    v2->_nocSigner = initUnassociated;

    initUnassociated2 = [[HMMTRMatterKeypair alloc] initUnassociated];
    ownerSharedOperationalKeyPair = v2->_ownerSharedOperationalKeyPair;
    v2->_ownerSharedOperationalKeyPair = initUnassociated2;
  }

  return v2;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_6313 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_6313, &__block_literal_global_6314);
  }

  v3 = logCategory__hmf_once_v1_6315;

  return v3;
}

uint64_t __42__HMMTRFabricRandomV0KeyStore_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_6315;
  logCategory__hmf_once_v1_6315 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end