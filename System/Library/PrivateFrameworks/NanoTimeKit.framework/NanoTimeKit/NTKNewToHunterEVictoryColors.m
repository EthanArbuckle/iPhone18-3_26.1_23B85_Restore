@interface NTKNewToHunterEVictoryColors
@end

@implementation NTKNewToHunterEVictoryColors

id ___NTKNewToHunterEVictoryColors_block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  os_unfair_lock_lock(&kDisabledDataSourcesKey_block_invoke_33_lock);
  if (kDisabledDataSourcesKey_block_invoke_33___cachedDevice)
  {
    v3 = kDisabledDataSourcesKey_block_invoke_33___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != kDisabledDataSourcesKey_block_invoke_33___previousCLKDeviceVersion))
  {
    kDisabledDataSourcesKey_block_invoke_33___cachedDevice = v2;
    kDisabledDataSourcesKey_block_invoke_33___previousCLKDeviceVersion = [v2 version];
    v9 = xmmword_22DCE9670;
    v10 = 36;
    v5 = [MEMORY[0x277CCAA78] indexSetWithIndexes:&v9 count:3];
    v6 = kDisabledDataSourcesKey_block_invoke_33_value;
    kDisabledDataSourcesKey_block_invoke_33_value = v5;
  }

  v7 = kDisabledDataSourcesKey_block_invoke_33_value;
  os_unfair_lock_unlock(&kDisabledDataSourcesKey_block_invoke_33_lock);

  return v7;
}

@end