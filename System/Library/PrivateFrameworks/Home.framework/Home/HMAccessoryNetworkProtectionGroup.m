@interface HMAccessoryNetworkProtectionGroup
@end

@implementation HMAccessoryNetworkProtectionGroup

uint64_t __81__HMAccessoryNetworkProtectionGroup_HFAdditions__hf_displayCurrentProtectionMode__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 currentProtectionMode];

  return [v2 numberWithInteger:v3];
}

void __74__HMAccessoryNetworkProtectionGroup_HFAdditions__hf_updateProtectionMode___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v8 = 138412546;
    v9 = WeakRetained;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Updating network protection group %@ to protectionMode %li", &v8, 0x16u);
  }

  [WeakRetained updateProtectionMode:*(a1 + 40) completion:v3];
  v7 = *MEMORY[0x277D85DE8];
}

@end