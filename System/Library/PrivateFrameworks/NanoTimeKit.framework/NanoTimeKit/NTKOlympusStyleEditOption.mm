@interface NTKOlympusStyleEditOption
+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKOlympusStyleEditOption

id __53__NTKOlympusStyleEditOption__orderedValuesForDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_ValueKey_block_invoke_14_lock);
  if (_ValueKey_block_invoke_14___cachedDevice)
  {
    v3 = _ValueKey_block_invoke_14___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != _ValueKey_block_invoke_14___previousCLKDeviceVersion))
  {
    _ValueKey_block_invoke_14___cachedDevice = v2;
    _ValueKey_block_invoke_14___previousCLKDeviceVersion = [v2 version];
    v5 = _ValueKey_block_invoke_14_value;
    _ValueKey_block_invoke_14_value = &unk_28418B6B0;
  }

  v6 = _ValueKey_block_invoke_14_value;
  os_unfair_lock_unlock(&_ValueKey_block_invoke_14_lock);

  return v6;
}

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_278785E08 + value);
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
    return *(&off_278785E28 + value);
  }
}

- (id)_valueToFaceBundleStringDict
{
  if (_valueToFaceBundleStringDict_onceToken_1245 != -1)
  {
    [NTKOlympusStyleEditOption _valueToFaceBundleStringDict];
  }

  v3 = _valueToFaceBundleStringDict_valueToFaceBundleString_1244;

  return v3;
}

void __57__NTKOlympusStyleEditOption__valueToFaceBundleStringDict__block_invoke()
{
  v3[3] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_2841850C8;
  v2[1] = &unk_284185098;
  v3[0] = @"style 1";
  v3[1] = @"style 2";
  v2[2] = &unk_2841851D0;
  v3[2] = @"style 3";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:3];
  v1 = _valueToFaceBundleStringDict_valueToFaceBundleString_1244;
  _valueToFaceBundleStringDict_valueToFaceBundleString_1244 = v0;
}

@end