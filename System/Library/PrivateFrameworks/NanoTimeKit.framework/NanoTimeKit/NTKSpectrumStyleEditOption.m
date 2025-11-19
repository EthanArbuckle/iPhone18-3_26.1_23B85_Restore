@interface NTKSpectrumStyleEditOption
+ (id)_nameLocalizationKeyForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKSpectrumStyleEditOption

id __54__NTKSpectrumStyleEditOption__orderedValuesForDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&kDisabledDataSourcesKey_block_invoke_19_lock);
  if (kDisabledDataSourcesKey_block_invoke_19___cachedDevice)
  {
    v3 = kDisabledDataSourcesKey_block_invoke_19___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != kDisabledDataSourcesKey_block_invoke_19___previousCLKDeviceVersion))
  {
    kDisabledDataSourcesKey_block_invoke_19___cachedDevice = v2;
    kDisabledDataSourcesKey_block_invoke_19___previousCLKDeviceVersion = [v2 version];
    v5 = [MEMORY[0x277CBEB18] arrayWithArray:&unk_28418B6F8];
    v6 = kDisabledDataSourcesKey_block_invoke_19_value;
    kDisabledDataSourcesKey_block_invoke_19_value = v5;
  }

  v7 = kDisabledDataSourcesKey_block_invoke_19_value;
  os_unfair_lock_unlock(&kDisabledDataSourcesKey_block_invoke_19_lock);

  return v7;
}

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return off_278785E78[a3];
  }
}

+ (id)_nameLocalizationKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return off_278785E90[a3];
  }
}

- (id)_valueToFaceBundleStringDict
{
  if (_valueToFaceBundleStringDict_onceToken_1523 != -1)
  {
    [NTKSpectrumStyleEditOption _valueToFaceBundleStringDict];
  }

  v3 = _valueToFaceBundleStringDict_valueToFaceBundleString_1522;

  return v3;
}

void __58__NTKSpectrumStyleEditOption__valueToFaceBundleStringDict__block_invoke()
{
  v3[3] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_2841851D0;
  v2[1] = &unk_284184B70;
  v3[0] = @"one";
  v3[1] = @"two";
  v2[2] = &unk_2841850C8;
  v3[2] = @"three";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:3];
  v1 = _valueToFaceBundleStringDict_valueToFaceBundleString_1522;
  _valueToFaceBundleStringDict_valueToFaceBundleString_1522 = v0;
}

@end