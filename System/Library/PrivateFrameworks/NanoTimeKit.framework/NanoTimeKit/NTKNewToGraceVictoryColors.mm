@interface NTKNewToGraceVictoryColors
@end

@implementation NTKNewToGraceVictoryColors

id ___NTKNewToGraceVictoryColors_block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  os_unfair_lock_lock(&kDisabledDataSourcesKey_block_invoke_31_lock);
  if (kDisabledDataSourcesKey_block_invoke_31___cachedDevice)
  {
    v3 = kDisabledDataSourcesKey_block_invoke_31___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != kDisabledDataSourcesKey_block_invoke_31___previousCLKDeviceVersion))
  {
    kDisabledDataSourcesKey_block_invoke_31___cachedDevice = v2;
    kDisabledDataSourcesKey_block_invoke_31___previousCLKDeviceVersion = [v2 version];
    v9 = xmmword_22DCE9640;
    v10 = 27;
    v5 = [MEMORY[0x277CCAA78] indexSetWithIndexes:&v9 count:3];
    v6 = kDisabledDataSourcesKey_block_invoke_31_value;
    kDisabledDataSourcesKey_block_invoke_31_value = v5;
  }

  v7 = kDisabledDataSourcesKey_block_invoke_31_value;
  os_unfair_lock_unlock(&kDisabledDataSourcesKey_block_invoke_31_lock);

  return v7;
}

@end