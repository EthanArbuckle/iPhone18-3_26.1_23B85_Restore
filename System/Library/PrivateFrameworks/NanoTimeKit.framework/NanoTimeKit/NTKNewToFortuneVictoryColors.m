@interface NTKNewToFortuneVictoryColors
@end

@implementation NTKNewToFortuneVictoryColors

id ___NTKNewToFortuneVictoryColors_block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  os_unfair_lock_lock(&kDisabledDataSourcesKey_block_invoke_28_lock);
  if (kDisabledDataSourcesKey_block_invoke_28___cachedDevice)
  {
    v3 = kDisabledDataSourcesKey_block_invoke_28___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != kDisabledDataSourcesKey_block_invoke_28___previousCLKDeviceVersion))
  {
    kDisabledDataSourcesKey_block_invoke_28___cachedDevice = v2;
    kDisabledDataSourcesKey_block_invoke_28___previousCLKDeviceVersion = [v2 version];
    v9[0] = 9;
    v5 = [MEMORY[0x277CCAA78] indexSetWithIndexes:v9 count:1];
    v6 = kDisabledDataSourcesKey_block_invoke_28_value;
    kDisabledDataSourcesKey_block_invoke_28_value = v5;
  }

  v7 = kDisabledDataSourcesKey_block_invoke_28_value;
  os_unfair_lock_unlock(&kDisabledDataSourcesKey_block_invoke_28_lock);

  return v7;
}

@end