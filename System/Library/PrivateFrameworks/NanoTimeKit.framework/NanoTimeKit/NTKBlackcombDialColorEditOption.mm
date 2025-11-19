@interface NTKBlackcombDialColorEditOption
+ (id)_nameLocalizationKeyForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKBlackcombDialColorEditOption

id __59__NTKBlackcombDialColorEditOption__orderedValuesForDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&kDisabledDataSourcesKey_block_invoke_26_lock);
  if (kDisabledDataSourcesKey_block_invoke_26___cachedDevice)
  {
    v3 = kDisabledDataSourcesKey_block_invoke_26___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != kDisabledDataSourcesKey_block_invoke_26___previousCLKDeviceVersion))
  {
    kDisabledDataSourcesKey_block_invoke_26___cachedDevice = v2;
    kDisabledDataSourcesKey_block_invoke_26___previousCLKDeviceVersion = [v2 version];
    v5 = kDisabledDataSourcesKey_block_invoke_26_value;
    kDisabledDataSourcesKey_block_invoke_26_value = &unk_28418B758;
  }

  v6 = kDisabledDataSourcesKey_block_invoke_26_value;
  os_unfair_lock_unlock(&kDisabledDataSourcesKey_block_invoke_26_lock);

  return v6;
}

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  v4 = @"white";
  if (a3 != 1)
  {
    v4 = 0;
  }

  if (a3)
  {
    return v4;
  }

  else
  {
    return @"black";
  }
}

+ (id)_nameLocalizationKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  v4 = @"EDIT_OPTION_LABEL_BLACKCOMB_DIAL_WHITE";
  if (a3 != 1)
  {
    v4 = 0;
  }

  if (a3)
  {
    return v4;
  }

  else
  {
    return @"EDIT_OPTION_LABEL_BLACKCOMB_DIAL_BLACK";
  }
}

- (id)_valueToFaceBundleStringDict
{
  if (_valueToFaceBundleStringDict_onceToken_1688 != -1)
  {
    [NTKBlackcombDialColorEditOption _valueToFaceBundleStringDict];
  }

  v3 = _valueToFaceBundleStringDict_valueToFaceBundleString_1687;

  return v3;
}

void __63__NTKBlackcombDialColorEditOption__valueToFaceBundleStringDict__block_invoke()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_2841851D0;
  v2[1] = &unk_284184B70;
  v3[0] = @"style 1";
  v3[1] = @"style 2";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = _valueToFaceBundleStringDict_valueToFaceBundleString_1687;
  _valueToFaceBundleStringDict_valueToFaceBundleString_1687 = v0;
}

@end