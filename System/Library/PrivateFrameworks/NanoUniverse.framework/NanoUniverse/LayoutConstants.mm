@interface LayoutConstants
@end

@implementation LayoutConstants

uint64_t ___LayoutConstants_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock);
  if (_block_invoke___cachedDevice)
  {
    v3 = _block_invoke___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_value;
  }

  else
  {
    _block_invoke___cachedDevice = v2;
    _block_invoke___previousCLKDeviceVersion = [v2 version];
    ___LayoutConstants_block_invoke_3(_block_invoke___previousCLKDeviceVersion, v2);
    v5 = 1;
    _block_invoke_value = 1;
  }

  os_unfair_lock_unlock(&_block_invoke_lock);

  return v5;
}

void ___LayoutConstants_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  [v2 setRoundingBehavior:2];
  v16[0] = &unk_286CFF510;
  v11 = vdupq_n_s64(0x4044000000000000uLL);
  v13 = v11;
  v3 = [MEMORY[0x277CCAE60] valueWithBytes:&v13 objCType:"{CGSize=dd}"];
  v17[0] = v3;
  v16[1] = &unk_286CFF528;
  v12 = v11;
  v4 = [MEMORY[0x277CCAE60] valueWithBytes:&v12 objCType:"{CGSize=dd}"];
  v17[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  [v2 scaledSize:v5 withOverrides:{40.0, 40.0}];
  _LayoutConstants_constants_0 = v6;
  _LayoutConstants_constants_1 = v7;

  _LayoutConstants_constants_2 = 0x4039000000000000;
  v14[0] = &unk_286CFF510;
  v14[1] = &unk_286CFF528;
  v15[0] = &unk_286CFF590;
  v15[1] = &unk_286CFF5A0;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  [v2 scaledValue:v8 withOverrides:4.0];
  _LayoutConstants_constants_3 = v9;

  v10 = *MEMORY[0x277D85DE8];
}

@end