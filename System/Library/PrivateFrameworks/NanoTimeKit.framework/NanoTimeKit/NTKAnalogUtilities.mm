@interface NTKAnalogUtilities
+ (CGSize)dialSizeForDevice:(id)device;
+ (CGSize)largeDialSizeForDevice:(id)device;
+ (CGSize)sceneSizeForDevice:(id)device;
@end

@implementation NTKAnalogUtilities

+ (CGSize)sceneSizeForDevice:(id)device
{
  MEMORY[0x28210DA90](device, a2);
  result.height = v4;
  result.width = v3;
  return result;
}

+ (CGSize)dialSizeForDevice:(id)device
{
  [NTKAnalogUtilities dialDiameterForDevice:device];
  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

double __44__NTKAnalogUtilities_dialDiameterForDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_37);
  if (_block_invoke___cachedDevice_37)
  {
    v3 = _block_invoke___cachedDevice_37 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_37))
  {
    v5 = *&_block_invoke_value_26;
  }

  else
  {
    _block_invoke___cachedDevice_37 = v2;
    _block_invoke___previousCLKDeviceVersion_37 = [v2 version];
    [NTKAnalogUtilities dialDiameterForDevice:v2 withRounding:2];
    v5 = *&v6;
    _block_invoke_value_26 = v6;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_37);

  return v5;
}

+ (CGSize)largeDialSizeForDevice:(id)device
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__NTKAnalogUtilities_largeDialSizeForDevice___block_invoke;
  v5[3] = &__block_descriptor_40_e29__CGSize_dd_16__0__CLKDevice_8l;
  v5[4] = self;
  v3 = __45__NTKAnalogUtilities_largeDialSizeForDevice___block_invoke(v5, device);
  result.height = v4;
  result.width = v3;
  return result;
}

double __45__NTKAnalogUtilities_largeDialSizeForDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&_block_invoke_2_lock_3);
  if (_block_invoke_2___cachedDevice_3)
  {
    v4 = _block_invoke_2___cachedDevice_3 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 && (v5 = [v3 version], v5 == _block_invoke_2___previousCLKDeviceVersion_3))
  {
    v6 = *&_block_invoke_2_value_0_0;
  }

  else
  {
    _block_invoke_2___cachedDevice_3 = v3;
    _block_invoke_2___previousCLKDeviceVersion_3 = [v3 version];
    [*(a1 + 32) largeDialDiameterForDevice:v3];
    _block_invoke_2_value_0_0 = v7;
    _block_invoke_2_value_1_0 = v7;
    v6 = *&v7;
  }

  os_unfair_lock_unlock(&_block_invoke_2_lock_3);

  return v6;
}

double __58__NTKAnalogUtilities_whistlerMediumDialDiameterForDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_3_lock_0);
  if (_block_invoke_3___cachedDevice_0)
  {
    v3 = _block_invoke_3___cachedDevice_0 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_3___previousCLKDeviceVersion_0))
  {
    v5 = _block_invoke_3_value_0;
  }

  else
  {
    _block_invoke_3___cachedDevice_0 = v2;
    _block_invoke_3___previousCLKDeviceVersion_0 = [v2 version];
    v5 = __58__NTKAnalogUtilities_whistlerMediumDialDiameterForDevice___block_invoke_2(_block_invoke_3___previousCLKDeviceVersion_0, v2);
    _block_invoke_3_value_0 = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_3_lock_0);

  return *&v5;
}

double __58__NTKAnalogUtilities_whistlerMediumDialDiameterForDevice___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  [v2 setRoundingBehavior:2];
  v7[0] = &unk_2841831C0;
  v7[1] = &unk_2841831D8;
  v8[0] = &unk_284188A48;
  v8[1] = &unk_284188A58;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [v2 scaledValue:v3 withOverrides:107.0];
  v5 = v4;

  return v5;
}

@end