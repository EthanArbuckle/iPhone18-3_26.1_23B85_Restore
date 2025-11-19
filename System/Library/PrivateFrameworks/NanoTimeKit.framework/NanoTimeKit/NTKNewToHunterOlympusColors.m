@interface NTKNewToHunterOlympusColors
@end

@implementation NTKNewToHunterOlympusColors

id ___NTKNewToHunterOlympusColors_block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  os_unfair_lock_lock(&kDisabledDataSourcesKey_block_invoke_35_lock);
  if (kDisabledDataSourcesKey_block_invoke_35___cachedDevice)
  {
    v3 = kDisabledDataSourcesKey_block_invoke_35___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != kDisabledDataSourcesKey_block_invoke_35___previousCLKDeviceVersion))
  {
    kDisabledDataSourcesKey_block_invoke_35___cachedDevice = v2;
    kDisabledDataSourcesKey_block_invoke_35___previousCLKDeviceVersion = [v2 version];
    v9[0] = xmmword_22DCE9688;
    v9[1] = unk_22DCE9698;
    v9[2] = xmmword_22DCE96A8;
    v9[3] = unk_22DCE96B8;
    v10 = 39;
    v5 = [MEMORY[0x277CCAA78] indexSetWithIndexes:v9 count:9];
    v6 = kDisabledDataSourcesKey_block_invoke_35_value;
    kDisabledDataSourcesKey_block_invoke_35_value = v5;
  }

  v7 = kDisabledDataSourcesKey_block_invoke_35_value;
  os_unfair_lock_unlock(&kDisabledDataSourcesKey_block_invoke_35_lock);

  return v7;
}

@end