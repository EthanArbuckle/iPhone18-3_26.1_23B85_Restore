@interface NTKDensityEditOption
+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKDensityEditOption

id __48__NTKDensityEditOption__orderedValuesForDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_ValueKey_block_invoke_8_lock);
  if (_ValueKey_block_invoke_8___cachedDevice)
  {
    v3 = _ValueKey_block_invoke_8___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != _ValueKey_block_invoke_8___previousCLKDeviceVersion))
  {
    _ValueKey_block_invoke_8___cachedDevice = v2;
    _ValueKey_block_invoke_8___previousCLKDeviceVersion = [v2 version];
    v5 = _EnumValueRange(0, 3uLL);
    v6 = _ValueKey_block_invoke_8_value;
    _ValueKey_block_invoke_8_value = v5;
  }

  v7 = _ValueKey_block_invoke_8_value;
  os_unfair_lock_unlock(&_ValueKey_block_invoke_8_lock);

  return v7;
}

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 3)
  {
    return 0;
  }

  else
  {
    return off_278785D98[value];
  }
}

+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 3)
  {
    return 0;
  }

  else
  {
    return off_278785DB8[value];
  }
}

- (id)_valueToFaceBundleStringDict
{
  if (_valueToFaceBundleStringDict_onceToken_1 != -1)
  {
    [NTKDensityEditOption _valueToFaceBundleStringDict];
  }

  v3 = _valueToFaceBundleStringDict_valueToFaceBundleString_1;

  return v3;
}

void __52__NTKDensityEditOption__valueToFaceBundleStringDict__block_invoke()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_2841851D0;
  v2[1] = &unk_284184B70;
  v3[0] = @"minimal";
  v3[1] = @"simple";
  v2[2] = &unk_2841850C8;
  v2[3] = &unk_284185098;
  v3[2] = @"medium";
  v3[3] = @"detailed";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:4];
  v1 = _valueToFaceBundleStringDict_valueToFaceBundleString_1;
  _valueToFaceBundleStringDict_valueToFaceBundleString_1 = v0;
}

@end