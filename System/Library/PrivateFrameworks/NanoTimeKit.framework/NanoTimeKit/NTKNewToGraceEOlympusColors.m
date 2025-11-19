@interface NTKNewToGraceEOlympusColors
@end

@implementation NTKNewToGraceEOlympusColors

id ___NTKNewToGraceEOlympusColors_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&kDisabledDataSourcesKey_block_invoke_34_lock);
  if (kDisabledDataSourcesKey_block_invoke_34___cachedDevice)
  {
    v3 = kDisabledDataSourcesKey_block_invoke_34___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != kDisabledDataSourcesKey_block_invoke_34___previousCLKDeviceVersion))
  {
    kDisabledDataSourcesKey_block_invoke_34___cachedDevice = v2;
    kDisabledDataSourcesKey_block_invoke_34___previousCLKDeviceVersion = [v2 version];
    v5 = ___NTKNewToGraceEOlympusColors_block_invoke_2();
    v6 = kDisabledDataSourcesKey_block_invoke_34_value;
    kDisabledDataSourcesKey_block_invoke_34_value = v5;
  }

  v7 = kDisabledDataSourcesKey_block_invoke_34_value;
  os_unfair_lock_unlock(&kDisabledDataSourcesKey_block_invoke_34_lock);

  return v7;
}

id ___NTKNewToGraceEOlympusColors_block_invoke_2()
{
  v4 = *MEMORY[0x277D85DE8];
  v2[0] = xmmword_22DCE93F0;
  v2[1] = xmmword_22DCE9400;
  v3 = 30;
  v0 = [MEMORY[0x277CCAA78] indexSetWithIndexes:v2 count:5];

  return v0;
}

@end