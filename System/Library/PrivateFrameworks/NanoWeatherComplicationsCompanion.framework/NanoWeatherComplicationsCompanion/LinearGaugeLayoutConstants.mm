@interface LinearGaugeLayoutConstants
@end

@implementation LinearGaugeLayoutConstants

uint64_t ___LinearGaugeLayoutConstants_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_1);
  if (_block_invoke___cachedDevice_1)
  {
    v3 = _block_invoke___cachedDevice_1 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_1))
  {
    v5 = _block_invoke_value_1;
  }

  else
  {
    _block_invoke___cachedDevice_1 = v2;
    _block_invoke___previousCLKDeviceVersion_1 = [v2 version];
    ___LinearGaugeLayoutConstants_block_invoke_3(_block_invoke___previousCLKDeviceVersion_1, v2);
    v5 = 1;
    _block_invoke_value_1 = 1;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_1);

  return v5;
}

void ___LinearGaugeLayoutConstants_block_invoke_3(uint64_t a1, void *a2)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBBAF8];
  v3 = a2;
  v4 = [v2 metricsWithDevice:v3 identitySizeClass:2];
  [v3 screenScale];
  [v4 scaledValue:10.0 / v5];
  _LinearGaugeLayoutConstants_constants_0 = v6;
  [v3 screenScale];
  [v4 scaledValue:10.0 / v7];
  _LinearGaugeLayoutConstants_constants_1 = v8;
  [v3 screenScale];
  v10 = v9;

  v14[0] = &unk_286D01F58;
  v14[1] = &unk_286D01F88;
  v15[0] = &unk_286D01F70;
  v15[1] = &unk_286D01F70;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  [v4 constantValue:v11 withOverrides:3.0 / v10];
  _LinearGaugeLayoutConstants_constants_2 = v12;

  v13 = *MEMORY[0x277D85DE8];
}

@end