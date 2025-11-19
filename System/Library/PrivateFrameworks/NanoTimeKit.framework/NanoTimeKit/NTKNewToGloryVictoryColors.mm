@interface NTKNewToGloryVictoryColors
@end

@implementation NTKNewToGloryVictoryColors

id ___NTKNewToGloryVictoryColors_block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  os_unfair_lock_lock(&kDisabledDataSourcesKey_block_invoke_29_lock);
  if (kDisabledDataSourcesKey_block_invoke_29___cachedDevice)
  {
    v3 = kDisabledDataSourcesKey_block_invoke_29___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != kDisabledDataSourcesKey_block_invoke_29___previousCLKDeviceVersion))
  {
    kDisabledDataSourcesKey_block_invoke_29___cachedDevice = v2;
    kDisabledDataSourcesKey_block_invoke_29___previousCLKDeviceVersion = [v2 version];
    v9[2] = xmmword_22DCE95E8;
    v9[3] = unk_22DCE95F8;
    v9[4] = xmmword_22DCE9608;
    v9[5] = unk_22DCE9618;
    v9[0] = xmmword_22DCE95C8;
    v9[1] = unk_22DCE95D8;
    v5 = [MEMORY[0x277CCAA78] indexSetWithIndexes:v9 count:12];
    v6 = kDisabledDataSourcesKey_block_invoke_29_value;
    kDisabledDataSourcesKey_block_invoke_29_value = v5;
  }

  v7 = kDisabledDataSourcesKey_block_invoke_29_value;
  os_unfair_lock_unlock(&kDisabledDataSourcesKey_block_invoke_29_lock);

  return v7;
}

@end