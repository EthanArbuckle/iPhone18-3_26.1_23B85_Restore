@interface NTKAstronomyVistaEditOption
+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKAstronomyVistaEditOption

id __55__NTKAstronomyVistaEditOption__orderedValuesForDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_ValueKey_block_invoke_9_lock);
  if (_ValueKey_block_invoke_9___cachedDevice)
  {
    v3 = _ValueKey_block_invoke_9___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != _ValueKey_block_invoke_9___previousCLKDeviceVersion))
  {
    _ValueKey_block_invoke_9___cachedDevice = v2;
    _ValueKey_block_invoke_9___previousCLKDeviceVersion = [v2 version];
    v5 = __55__NTKAstronomyVistaEditOption__orderedValuesForDevice___block_invoke_2(_ValueKey_block_invoke_9___previousCLKDeviceVersion, v2);
    v6 = _ValueKey_block_invoke_9_value;
    _ValueKey_block_invoke_9_value = v5;
  }

  v7 = _ValueKey_block_invoke_9_value;
  os_unfair_lock_unlock(&_ValueKey_block_invoke_9_lock);

  return v7;
}

id __55__NTKAstronomyVistaEditOption__orderedValuesForDevice___block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 pdrDeviceVersion] >= 0x50000)
  {
    v2 = _EnumValueRange(0, 2uLL);
  }

  else
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  return v2;
}

+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 2)
  {
    return 0;
  }

  else
  {
    return off_278785DD8[value];
  }
}

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 2)
  {
    return 0;
  }

  else
  {
    return off_278785DF0[value];
  }
}

- (id)_valueToFaceBundleStringDict
{
  if (_valueToFaceBundleStringDict_onceToken_900 != -1)
  {
    [NTKAstronomyVistaEditOption _valueToFaceBundleStringDict];
  }

  v3 = _valueToFaceBundleStringDict_valueToFaceBundleString_899;

  return v3;
}

void __59__NTKAstronomyVistaEditOption__valueToFaceBundleStringDict__block_invoke()
{
  v3[3] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_2841851D0;
  v2[1] = &unk_284184B70;
  v3[0] = @"earth";
  v3[1] = @"luna";
  v2[2] = &unk_2841850C8;
  v3[2] = @"orrery";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:3];
  v1 = _valueToFaceBundleStringDict_valueToFaceBundleString_899;
  _valueToFaceBundleStringDict_valueToFaceBundleString_899 = v0;
}

@end