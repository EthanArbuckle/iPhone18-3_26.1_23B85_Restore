@interface NTKDigitalTimeAccuracyOption
+ (id)_nameLocalizationKeyForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
+ (int64_t)indexForAccuracy:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKDigitalTimeAccuracyOption

+ (int64_t)indexForAccuracy:(unint64_t)a3 forDevice:(id)a4
{
  v5 = [a1 _orderedValuesForDevice:a4];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v7 = [v5 indexOfObject:v6];

  return v7;
}

id __56__NTKDigitalTimeAccuracyOption__orderedValuesForDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_ValueKey_block_invoke_15_lock);
  if (_ValueKey_block_invoke_15___cachedDevice)
  {
    v3 = _ValueKey_block_invoke_15___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != _ValueKey_block_invoke_15___previousCLKDeviceVersion))
  {
    _ValueKey_block_invoke_15___cachedDevice = v2;
    _ValueKey_block_invoke_15___previousCLKDeviceVersion = [v2 version];
    v5 = _EnumValueRange(0, 1uLL);
    v6 = _ValueKey_block_invoke_15_value;
    _ValueKey_block_invoke_15_value = v5;
  }

  v7 = _ValueKey_block_invoke_15_value;
  os_unfair_lock_unlock(&_ValueKey_block_invoke_15_lock);

  return v7;
}

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  v4 = @"minutes";
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
    return @"seconds";
  }
}

+ (id)_nameLocalizationKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  v4 = @"EDIT_OPTION_LABEL_DIGITAL_TIME_ACCURACY_MINUTES";
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
    return @"EDIT_OPTION_LABEL_DIGITAL_TIME_ACCURACY_SECONDS";
  }
}

- (id)_valueToFaceBundleStringDict
{
  if (_valueToFaceBundleStringDict_onceToken_1272 != -1)
  {
    [NTKDigitalTimeAccuracyOption _valueToFaceBundleStringDict];
  }

  v3 = _valueToFaceBundleStringDict_valueToFaceBundleString_1271;

  return v3;
}

void __60__NTKDigitalTimeAccuracyOption__valueToFaceBundleStringDict__block_invoke()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_2841851D0;
  v2[1] = &unk_284184B70;
  v3[0] = @"seconds";
  v3[1] = @"minutes";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = _valueToFaceBundleStringDict_valueToFaceBundleString_1271;
  _valueToFaceBundleStringDict_valueToFaceBundleString_1271 = v0;
}

@end