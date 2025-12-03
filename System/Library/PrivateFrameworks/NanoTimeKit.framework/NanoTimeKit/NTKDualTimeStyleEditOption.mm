@interface NTKDualTimeStyleEditOption
+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKDualTimeStyleEditOption

id __54__NTKDualTimeStyleEditOption__orderedValuesForDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&kDisabledDataSourcesKey_block_invoke_22_lock);
  if (kDisabledDataSourcesKey_block_invoke_22___cachedDevice)
  {
    v3 = kDisabledDataSourcesKey_block_invoke_22___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != kDisabledDataSourcesKey_block_invoke_22___previousCLKDeviceVersion))
  {
    kDisabledDataSourcesKey_block_invoke_22___cachedDevice = v2;
    kDisabledDataSourcesKey_block_invoke_22___previousCLKDeviceVersion = [v2 version];
    v5 = _EnumValueRange(0, 1uLL);
    v6 = kDisabledDataSourcesKey_block_invoke_22_value;
    kDisabledDataSourcesKey_block_invoke_22_value = v5;
  }

  v7 = kDisabledDataSourcesKey_block_invoke_22_value;
  os_unfair_lock_unlock(&kDisabledDataSourcesKey_block_invoke_22_lock);

  return v7;
}

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  v4 = @"digital";
  if (value != 1)
  {
    v4 = 0;
  }

  if (value)
  {
    return v4;
  }

  else
  {
    return @"analog";
  }
}

+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device
{
  v4 = @"EDIT_OPTION_LABEL_DUAL_TIME_STYLE_DIGITAL";
  if (value != 1)
  {
    v4 = 0;
  }

  if (value)
  {
    return v4;
  }

  else
  {
    return @"EDIT_OPTION_LABEL_DUAL_TIME_STYLE_ANALOG";
  }
}

- (id)_valueToFaceBundleStringDict
{
  if (_valueToFaceBundleStringDict_onceToken_1573 != -1)
  {
    [NTKDualTimeStyleEditOption _valueToFaceBundleStringDict];
  }

  v3 = _valueToFaceBundleStringDict_valueToFaceBundleString_1572;

  return v3;
}

void __58__NTKDualTimeStyleEditOption__valueToFaceBundleStringDict__block_invoke()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_2841851D0;
  v2[1] = &unk_284184B70;
  v3[0] = @"analog";
  v3[1] = @"digital";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = _valueToFaceBundleStringDict_valueToFaceBundleString_1572;
  _valueToFaceBundleStringDict_valueToFaceBundleString_1572 = v0;
}

@end