@interface NTKNewToGraceEVictoryColors
@end

@implementation NTKNewToGraceEVictoryColors

id ___NTKNewToGraceEVictoryColors_block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  os_unfair_lock_lock(&_ValueKey_block_invoke_12_lock);
  if (_ValueKey_block_invoke_12___cachedDevice)
  {
    v3 = _ValueKey_block_invoke_12___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != _ValueKey_block_invoke_12___previousCLKDeviceVersion))
  {
    _ValueKey_block_invoke_12___cachedDevice = v2;
    _ValueKey_block_invoke_12___previousCLKDeviceVersion = [v2 version];
    v9 = xmmword_22DCE9400;
    v5 = [MEMORY[0x277CCAA78] indexSetWithIndexes:&v9 count:2];
    v6 = _ValueKey_block_invoke_12_value;
    _ValueKey_block_invoke_12_value = v5;
  }

  v7 = _ValueKey_block_invoke_12_value;
  os_unfair_lock_unlock(&_ValueKey_block_invoke_12_lock);

  return v7;
}

@end