@interface NTKNewToElectricVictoryColors
@end

@implementation NTKNewToElectricVictoryColors

id ___NTKNewToElectricVictoryColors_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&kDisabledDataSourcesKey_block_invoke_27_lock);
  if (kDisabledDataSourcesKey_block_invoke_27___cachedDevice)
  {
    v3 = kDisabledDataSourcesKey_block_invoke_27___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != kDisabledDataSourcesKey_block_invoke_27___previousCLKDeviceVersion))
  {
    kDisabledDataSourcesKey_block_invoke_27___cachedDevice = v2;
    kDisabledDataSourcesKey_block_invoke_27___previousCLKDeviceVersion = [v2 version];
    v5 = ___NTKNewToElectricVictoryColors_block_invoke_2();
    v6 = kDisabledDataSourcesKey_block_invoke_27_value;
    kDisabledDataSourcesKey_block_invoke_27_value = v5;
  }

  v7 = kDisabledDataSourcesKey_block_invoke_27_value;
  os_unfair_lock_unlock(&kDisabledDataSourcesKey_block_invoke_27_lock);

  return v7;
}

id ___NTKNewToElectricVictoryColors_block_invoke_2()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = xmmword_22DCE93C0;
  v2[1] = xmmword_22DCE93D0;
  v2[2] = xmmword_22DCE93E0;
  v0 = [MEMORY[0x277CCAA78] indexSetWithIndexes:v2 count:6];

  return v0;
}

@end