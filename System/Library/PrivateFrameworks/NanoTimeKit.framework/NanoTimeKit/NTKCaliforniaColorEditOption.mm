@interface NTKCaliforniaColorEditOption
+ (id)__orderedValuesForDevice:(id)device;
+ (id)_orderedValuesForDevice:(id)device;
+ (id)_orderedValuesRestrictedByDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)colorNameForColor:(unint64_t)color;
- (BOOL)optionExistsInDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (id)pigmentEditOption;
@end

@implementation NTKCaliforniaColorEditOption

- (BOOL)optionExistsInDevice:(id)device
{
  deviceCopy = device;
  if ((![deviceCopy supportsPDRCapability:3503302961] || NTKGizmoOrCompanionAreRussian(deviceCopy)) && -[NTKCaliforniaColorEditOption californiaColor](self, "californiaColor") == 3009)
  {
    goto LABEL_18;
  }

  if (([deviceCopy supportsPDRCapability:2919474315] & 1) == 0)
  {
    if (_NTKNewToHunterCaliforniaColors_onceToken != -1)
    {
      [NTKCaliforniaColorEditOption optionExistsInDevice:];
    }

    v5 = _NTKNewToHunterCaliforniaColors_colors;
    v6 = [v5 containsIndex:{-[NTKCaliforniaColorEditOption californiaColor](self, "californiaColor")}];

    if (v6)
    {
      goto LABEL_18;
    }
  }

  if ((NTKDeviceSupportsFaceColorMappingAndDistinctFaceColorValues(deviceCopy) & 1) != 0 || ([deviceCopy collectionType] == 9 || -[NTKCaliforniaColorEditOption californiaColor](self, "californiaColor") != 3005) && (objc_msgSend(deviceCopy, "collectionType") == 10 || -[NTKCaliforniaColorEditOption californiaColor](self, "californiaColor") != 3006) && (objc_msgSend(deviceCopy, "collectionType") == 7 || -[NTKCaliforniaColorEditOption californiaColor](self, "californiaColor") != 3007) && (objc_msgSend(deviceCopy, "collectionType") == 8 || -[NTKCaliforniaColorEditOption californiaColor](self, "californiaColor") != 3008))
  {
    v7 = 1;
  }

  else
  {
LABEL_18:
    v7 = 0;
  }

  return v7;
}

+ (id)_orderedValuesForDevice:(id)device
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__NTKCaliforniaColorEditOption__orderedValuesForDevice___block_invoke;
  v5[3] = &__block_descriptor_40_e28___NSArray_16__0__CLKDevice_8l;
  v5[4] = self;
  v3 = __56__NTKCaliforniaColorEditOption__orderedValuesForDevice___block_invoke(v5, device);

  return v3;
}

id __56__NTKCaliforniaColorEditOption__orderedValuesForDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&kDisabledDataSourcesKey_block_invoke_23_lock);
  if (kDisabledDataSourcesKey_block_invoke_23___cachedDevice)
  {
    v4 = kDisabledDataSourcesKey_block_invoke_23___cachedDevice == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != kDisabledDataSourcesKey_block_invoke_23___previousCLKDeviceVersion))
  {
    kDisabledDataSourcesKey_block_invoke_23___cachedDevice = v3;
    kDisabledDataSourcesKey_block_invoke_23___previousCLKDeviceVersion = [v3 version];
    v6 = [*(a1 + 32) __orderedValuesForDevice:v3];
    v7 = kDisabledDataSourcesKey_block_invoke_23_value;
    kDisabledDataSourcesKey_block_invoke_23_value = v6;
  }

  v8 = kDisabledDataSourcesKey_block_invoke_23_value;
  os_unfair_lock_unlock(&kDisabledDataSourcesKey_block_invoke_23_lock);

  return v8;
}

+ (id)__orderedValuesForDevice:(id)device
{
  deviceCopy = device;
  v5 = objc_opt_new();
  v6 = [self _orderedValuesRestrictedByDevice:deviceCopy];
  [v5 addObjectsFromArray:v6];

  if ((NTKDeviceSupportsFaceColorMappingAndDistinctFaceColorValues(deviceCopy) & 1) != 0 || [deviceCopy collectionType] == 10 || NTKShowHardwareSpecificFaces())
  {
    [v5 addObject:&unk_284185548];
  }

  if ((NTKDeviceSupportsFaceColorMappingAndDistinctFaceColorValues(deviceCopy) & 1) != 0 || [deviceCopy collectionType] == 9 || NTKShowHardwareSpecificFaces())
  {
    [v5 addObject:&unk_284185560];
  }

  if ((NTKDeviceSupportsFaceColorMappingAndDistinctFaceColorValues(deviceCopy) & 1) != 0 || [deviceCopy collectionType] == 7 || NTKShowHardwareSpecificFaces())
  {
    [v5 addObject:&unk_284185530];
  }

  if ((NTKDeviceSupportsFaceColorMappingAndDistinctFaceColorValues(deviceCopy) & 1) != 0 || [deviceCopy collectionType] == 8 || NTKShowHardwareSpecificFaces())
  {
    [v5 addObject:&unk_284185518];
  }

  v7 = [self _curatedColorValuesForDevice:deviceCopy];
  [v5 addObjectsFromArray:v7];

  if ([deviceCopy supportsPDRCapability:3503302961] && (NTKGizmoOrCompanionAreRussian(deviceCopy) & 1) == 0)
  {
    [v5 addObject:&unk_284185500];
  }

  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___NTKCaliforniaColorEditOption;
  v8 = objc_msgSendSuper2(&v11, sel___orderedValuesForDevice_, deviceCopy);
  v9 = [v8 mutableCopy];

  [v9 removeObjectsInArray:v5];
  [v9 removeObject:&unk_284184FF0];
  [v9 removeObject:&unk_2841852F0];
  [v5 addObjectsFromArray:v9];

  return v5;
}

id __61__NTKCaliforniaColorEditOption__curatedColorValuesForDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&kDisabledDataSourcesKey_block_invoke_24_lock);
  if (kDisabledDataSourcesKey_block_invoke_24___cachedDevice)
  {
    v3 = kDisabledDataSourcesKey_block_invoke_24___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != kDisabledDataSourcesKey_block_invoke_24___previousCLKDeviceVersion))
  {
    kDisabledDataSourcesKey_block_invoke_24___cachedDevice = v2;
    kDisabledDataSourcesKey_block_invoke_24___previousCLKDeviceVersion = [v2 version];
    v5 = __61__NTKCaliforniaColorEditOption__curatedColorValuesForDevice___block_invoke_2(kDisabledDataSourcesKey_block_invoke_24___previousCLKDeviceVersion, v2);
    v6 = kDisabledDataSourcesKey_block_invoke_24_value;
    kDisabledDataSourcesKey_block_invoke_24_value = v5;
  }

  v7 = kDisabledDataSourcesKey_block_invoke_24_value;
  os_unfair_lock_unlock(&kDisabledDataSourcesKey_block_invoke_24_lock);

  return v7;
}

id __61__NTKCaliforniaColorEditOption__curatedColorValuesForDevice___block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 supportsPDRCapability:2919474315])
  {
    v2 = [&unk_28418B728 arrayByAddingObjectsFromArray:&unk_28418B740];
  }

  else
  {
    v2 = &unk_28418B728;
  }

  return v2;
}

+ (id)_orderedValuesRestrictedByDevice:(id)device
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__NTKCaliforniaColorEditOption__orderedValuesRestrictedByDevice___block_invoke;
  v5[3] = &__block_descriptor_40_e28___NSArray_16__0__CLKDevice_8l;
  v5[4] = self;
  v3 = __65__NTKCaliforniaColorEditOption__orderedValuesRestrictedByDevice___block_invoke(v5, device);

  return v3;
}

id __65__NTKCaliforniaColorEditOption__orderedValuesRestrictedByDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&kDisabledDataSourcesKey_block_invoke_25_lock);
  if (kDisabledDataSourcesKey_block_invoke_25___cachedDevice)
  {
    v4 = kDisabledDataSourcesKey_block_invoke_25___cachedDevice == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != kDisabledDataSourcesKey_block_invoke_25___previousCLKDeviceVersion))
  {
    kDisabledDataSourcesKey_block_invoke_25___cachedDevice = v3;
    kDisabledDataSourcesKey_block_invoke_25___previousCLKDeviceVersion = [v3 version];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __65__NTKCaliforniaColorEditOption__orderedValuesRestrictedByDevice___block_invoke_2;
    v10[3] = &__block_descriptor_40_e35___NSMutableArray_16__0__CLKDevice_8l;
    v10[4] = *(a1 + 32);
    v6 = __65__NTKCaliforniaColorEditOption__orderedValuesRestrictedByDevice___block_invoke_2(v10, v3);
    v7 = kDisabledDataSourcesKey_block_invoke_25_value;
    kDisabledDataSourcesKey_block_invoke_25_value = v6;
  }

  v8 = kDisabledDataSourcesKey_block_invoke_25_value;
  os_unfair_lock_unlock(&kDisabledDataSourcesKey_block_invoke_25_lock);

  return v8;
}

id __65__NTKCaliforniaColorEditOption__orderedValuesRestrictedByDevice___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___NTKCaliforniaColorEditOption;
  v2 = objc_msgSendSuper2(&v5, sel__orderedValuesRestrictedByDevice_, a2);
  v3 = [v2 mutableCopy];

  [v3 removeObject:&unk_284184AB0];
  [v3 removeObject:&unk_284184AE0];

  return v3;
}

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  deviceCopy = device;
  if (value - 3000 >= 0xF)
  {
    v6 = [NTKFaceColorEditOption _snapshotKeyForValue:value forDevice:deviceCopy];
  }

  else
  {
    v6 = off_278785EA8[value - 3000];
  }

  return v6;
}

- (id)_valueToFaceBundleStringDict
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__NTKCaliforniaColorEditOption__valueToFaceBundleStringDict__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  if (_valueToFaceBundleStringDict_onceToken_1633 != -1)
  {
    dispatch_once(&_valueToFaceBundleStringDict_onceToken_1633, block);
  }

  return _valueToFaceBundleStringDict_valueToFaceBundleString_1632;
}

void __60__NTKCaliforniaColorEditOption__valueToFaceBundleStringDict__block_invoke(uint64_t a1)
{
  v13[5] = *MEMORY[0x277D85DE8];
  v7.receiver = *(a1 + 32);
  v7.super_class = NTKCaliforniaColorEditOption;
  v1 = objc_msgSendSuper2(&v7, sel__valueToFaceBundleStringDict);
  v2 = [v1 mutableCopy];

  v12[0] = &unk_284185578;
  v12[1] = &unk_2841855C0;
  v13[0] = @"style 1";
  v13[1] = @"style 2";
  v12[2] = &unk_284185590;
  v12[3] = &unk_2841853E0;
  v13[2] = @"style 3";
  v13[3] = @"style 4";
  v12[4] = &unk_2841855A8;
  v13[4] = @"style 5";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:5];
  [v2 addEntriesFromDictionary:v3];

  v10[0] = &unk_284185560;
  v10[1] = &unk_284185548;
  v11[0] = @"style 6";
  v11[1] = @"style 7";
  v10[2] = &unk_284185530;
  v10[3] = &unk_284185518;
  v11[2] = @"style 8";
  v11[3] = @"style 9";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];
  [v2 addEntriesFromDictionary:v4];

  [v2 setObject:@"style 10" forKey:&unk_284185500];
  v8[0] = &unk_2841854E8;
  v8[1] = &unk_2841854D0;
  v9[0] = @"style 11";
  v9[1] = @"style 12";
  v8[2] = &unk_2841854B8;
  v8[3] = &unk_2841854A0;
  v9[2] = @"style 13";
  v9[3] = @"style 14";
  v8[4] = &unk_284185488;
  v9[4] = @"style 15";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:5];
  [v2 addEntriesFromDictionary:v5];

  v6 = _valueToFaceBundleStringDict_valueToFaceBundleString_1632;
  _valueToFaceBundleStringDict_valueToFaceBundleString_1632 = v2;
}

+ (id)colorNameForColor:(unint64_t)color
{
  if (color - 3000 > 0xE)
  {
    return 0;
  }

  else
  {
    return off_278785F20[color - 3000];
  }
}

- (id)pigmentEditOption
{
  v3 = [objc_opt_class() colorNameForColor:{-[NTKCaliforniaColorEditOption californiaColor](self, "californiaColor")}];
  v4 = @"evergreen";
  if ([(NTKCaliforniaColorEditOption *)self californiaColor]== 3009)
  {
    v5 = [NTKPigmentEditOption pigmentNamed:@"special.rainbow"];
  }

  else
  {
    if (!v3)
    {
      v9 = v4;
      v10 = 0;
      NTKFaceColorNameAndCollection([(NTKCaliforniaColorEditOption *)self californiaColor], &v10, &v9);
      v3 = v10;
      v6 = v9;

      v4 = v6;
    }

    v5 = [[NTKPigmentEditOption alloc] initWithOptionName:v3 collectionName:v4];
  }

  v7 = v5;

  return v7;
}

@end