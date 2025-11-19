@interface HMDHomeAdministratorRemoteRelay
@end

@implementation HMDHomeAdministratorRemoteRelay

uint64_t __56____HMDHomeAdministratorRemoteRelay___handleXPCMessage___block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return [*(result + 32) dispatchMessage:*(result + 40)];
  }

  return result;
}

void __56____HMDHomeAdministratorRemoteRelay___handleXPCMessage___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v2 = [WeakRetained error];
  if (v2)
  {
    v3 = [a1[4] handler];
    v4 = [v3 home];

    if ([v2 code] == 3200 && v4)
    {
      [v4 setHomeUpdatedToROARAndInformClients];
    }

    v5 = [a1[5] responseHandler];

    if (v5)
    {
      v6 = [a1[5] responseHandler];
      (v6)[2](v6, v2, 0);
    }
  }
}

uint64_t __48____HMDHomeAdministratorRemoteRelay_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v20_169728;
  logCategory__hmf_once_v20_169728 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end