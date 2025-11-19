@interface NTKDateAlignmentEditOption
+ (id)_nameLocalizationKeyForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKDateAlignmentEditOption

id __54__NTKDateAlignmentEditOption__orderedValuesForDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_ValueKey_block_invoke_10_lock);
  if (_ValueKey_block_invoke_10___cachedDevice)
  {
    v3 = _ValueKey_block_invoke_10___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != _ValueKey_block_invoke_10___previousCLKDeviceVersion))
  {
    _ValueKey_block_invoke_10___cachedDevice = v2;
    _ValueKey_block_invoke_10___previousCLKDeviceVersion = [v2 version];
    v5 = _EnumValueRange(0, 1uLL);
    v6 = _ValueKey_block_invoke_10_value;
    _ValueKey_block_invoke_10_value = v5;
  }

  v7 = _ValueKey_block_invoke_10_value;
  os_unfair_lock_unlock(&_ValueKey_block_invoke_10_lock);

  return v7;
}

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  v4 = @"bottom";
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
    return @"top";
  }
}

+ (id)_nameLocalizationKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  v4 = @"EDIT_OPTION_LABEL_DATE_ALIGNMENT_BOTTOM";
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
    return @"EDIT_OPTION_LABEL_DATE_ALIGNMENT_TOP";
  }
}

- (id)_valueToFaceBundleStringDict
{
  if (_valueToFaceBundleStringDict_onceToken_927 != -1)
  {
    [NTKDateAlignmentEditOption _valueToFaceBundleStringDict];
  }

  v3 = _valueToFaceBundleStringDict_valueToFaceBundleString_926;

  return v3;
}

void __58__NTKDateAlignmentEditOption__valueToFaceBundleStringDict__block_invoke()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_2841851D0;
  v2[1] = &unk_284184B70;
  v3[0] = @"top";
  v3[1] = @"bottom";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = _valueToFaceBundleStringDict_valueToFaceBundleString_926;
  _valueToFaceBundleStringDict_valueToFaceBundleString_926 = v0;
}

@end