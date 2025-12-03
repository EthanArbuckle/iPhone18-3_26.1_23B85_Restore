@interface NTKAnalogDialShapeEditOption
+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)_orderedValuesForDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)optionWithShape:(unint64_t)shape forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (unint64_t)_value;
@end

@implementation NTKAnalogDialShapeEditOption

+ (id)optionWithShape:(unint64_t)shape forDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy deviceCategory] == 1)
  {
    shapeCopy = 0;
  }

  else
  {
    shapeCopy = shape;
  }

  v8 = [self _optionWithValue:shapeCopy forDevice:deviceCopy];

  return v8;
}

- (unint64_t)_value
{
  device = [(NTKEditOption *)self device];
  deviceCategory = [device deviceCategory];

  if (deviceCategory == 1)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = NTKAnalogDialShapeEditOption;
  return [(NTKValueEditOption *)&v6 _value];
}

id __65__NTKAnalogDialShapeEditOption__orderedValuesRestrictedByDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&kDisabledDataSourcesKey_block_invoke_20_lock);
  if (kDisabledDataSourcesKey_block_invoke_20___cachedDevice)
  {
    v3 = kDisabledDataSourcesKey_block_invoke_20___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != kDisabledDataSourcesKey_block_invoke_20___previousCLKDeviceVersion))
  {
    kDisabledDataSourcesKey_block_invoke_20___cachedDevice = v2;
    kDisabledDataSourcesKey_block_invoke_20___previousCLKDeviceVersion = [v2 version];
    v5 = __65__NTKAnalogDialShapeEditOption__orderedValuesRestrictedByDevice___block_invoke_2(kDisabledDataSourcesKey_block_invoke_20___previousCLKDeviceVersion, v2);
    v6 = kDisabledDataSourcesKey_block_invoke_20_value;
    kDisabledDataSourcesKey_block_invoke_20_value = v5;
  }

  v7 = kDisabledDataSourcesKey_block_invoke_20_value;
  os_unfair_lock_unlock(&kDisabledDataSourcesKey_block_invoke_20_lock);

  return v7;
}

id __65__NTKAnalogDialShapeEditOption__orderedValuesRestrictedByDevice___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v2 deviceCategory];

  if (v4 != 1)
  {
    [v3 addObject:&unk_284184B70];
  }

  return v3;
}

+ (id)_orderedValuesForDevice:(id)device
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__NTKAnalogDialShapeEditOption__orderedValuesForDevice___block_invoke;
  v5[3] = &__block_descriptor_40_e28___NSArray_16__0__CLKDevice_8l;
  v5[4] = self;
  v3 = __56__NTKAnalogDialShapeEditOption__orderedValuesForDevice___block_invoke(v5, device);

  return v3;
}

id __56__NTKAnalogDialShapeEditOption__orderedValuesForDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&kDisabledDataSourcesKey_block_invoke_21_lock);
  if (kDisabledDataSourcesKey_block_invoke_21___cachedDevice)
  {
    v4 = kDisabledDataSourcesKey_block_invoke_21___cachedDevice == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != kDisabledDataSourcesKey_block_invoke_21___previousCLKDeviceVersion))
  {
    kDisabledDataSourcesKey_block_invoke_21___cachedDevice = v3;
    kDisabledDataSourcesKey_block_invoke_21___previousCLKDeviceVersion = [v3 version];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __56__NTKAnalogDialShapeEditOption__orderedValuesForDevice___block_invoke_2;
    v10[3] = &__block_descriptor_40_e28___NSArray_16__0__CLKDevice_8l;
    v10[4] = *(a1 + 32);
    v6 = __56__NTKAnalogDialShapeEditOption__orderedValuesForDevice___block_invoke_2(v10, v3);
    v7 = kDisabledDataSourcesKey_block_invoke_21_value;
    kDisabledDataSourcesKey_block_invoke_21_value = v6;
  }

  v8 = kDisabledDataSourcesKey_block_invoke_21_value;
  os_unfair_lock_unlock(&kDisabledDataSourcesKey_block_invoke_21_lock);

  return v8;
}

id __56__NTKAnalogDialShapeEditOption__orderedValuesForDevice___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _orderedValuesRestrictedByDevice:a2];
  v3 = [v2 arrayByAddingObjectsFromArray:&unk_28418B710];

  return v3;
}

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  v4 = @"fullscreen";
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
    return @"circular";
  }
}

+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device
{
  v4 = @"EDIT_OPTION_LABEL_ANALOG_DIAL_SHAPE_FULLSCREEN";
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
    return @"EDIT_OPTION_LABEL_ANALOG_DIAL_SHAPE_CIRCULAR";
  }
}

- (id)_valueToFaceBundleStringDict
{
  if (_valueToFaceBundleStringDict_onceToken_1552 != -1)
  {
    [NTKAnalogDialShapeEditOption _valueToFaceBundleStringDict];
  }

  v3 = _valueToFaceBundleStringDict_valueToFaceBundleString_1551;

  return v3;
}

void __60__NTKAnalogDialShapeEditOption__valueToFaceBundleStringDict__block_invoke()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_2841851D0;
  v2[1] = &unk_284184B70;
  v3[0] = @"circular";
  v3[1] = @"fullscreen";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = _valueToFaceBundleStringDict_valueToFaceBundleString_1551;
  _valueToFaceBundleStringDict_valueToFaceBundleString_1551 = v0;
}

@end