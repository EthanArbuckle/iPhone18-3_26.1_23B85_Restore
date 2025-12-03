@interface NTKPhotosContentEditOption
+ (id)_localizedNameForActionForValue:(unint64_t)value forDevice:(id)device;
+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKPhotosContentEditOption

id __54__NTKPhotosContentEditOption__orderedValuesForDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_ValueKey_block_invoke_17_lock);
  if (_ValueKey_block_invoke_17___cachedDevice)
  {
    v3 = _ValueKey_block_invoke_17___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != _ValueKey_block_invoke_17___previousCLKDeviceVersion))
  {
    _ValueKey_block_invoke_17___cachedDevice = v2;
    _ValueKey_block_invoke_17___previousCLKDeviceVersion = [v2 version];
    v5 = __54__NTKPhotosContentEditOption__orderedValuesForDevice___block_invoke_2(_ValueKey_block_invoke_17___previousCLKDeviceVersion, v2);
    v6 = _ValueKey_block_invoke_17_value;
    _ValueKey_block_invoke_17_value = v5;
  }

  v7 = _ValueKey_block_invoke_17_value;
  os_unfair_lock_unlock(&_ValueKey_block_invoke_17_lock);

  return v7;
}

void *__54__NTKPhotosContentEditOption__orderedValuesForDevice___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 pairingID];
  HasPhotosFaceMemoryCapability = NTKPhotosDeviceHasPhotosFaceMemoryCapability(v2);

  if (HasPhotosFaceMemoryCapability)
  {
    return &unk_28418B6C8;
  }

  else
  {
    return &unk_28418B6E0;
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
    return off_278785E48[value];
  }
}

+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 2)
  {
    return 0;
  }

  else
  {
    return off_278785E60[value];
  }
}

+ (id)_localizedNameForActionForValue:(unint64_t)value forDevice:(id)device
{
  deviceCopy = device;
  if (value == 1)
  {
    v6 = @"EDIT_OPTION_LABEL_PHOTOS_CUSTOM_ACTION_COMPANION";
    v7 = @"Choose Photos…";
    goto LABEL_5;
  }

  if (!value)
  {
    v6 = @"EDIT_OPTION_LABEL_PHOTOS_SYNCED_ALBUM_ACTION_COMPANION";
    v7 = @"Choose Album…";
LABEL_5:
    v8 = NTKCompanionClockFaceLocalizedString(v6, v7);
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)_valueToFaceBundleStringDict
{
  if (_valueToFaceBundleStringDict_onceToken_1459 != -1)
  {
    [NTKPhotosContentEditOption _valueToFaceBundleStringDict];
  }

  v3 = _valueToFaceBundleStringDict_valueToFaceBundleString_1458;

  return v3;
}

void __58__NTKPhotosContentEditOption__valueToFaceBundleStringDict__block_invoke()
{
  v3[3] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_2841851D0;
  v2[1] = &unk_284184B70;
  v3[0] = @"synced";
  v3[1] = @"custom";
  v2[2] = &unk_2841850C8;
  v3[2] = @"memory";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:3];
  v1 = _valueToFaceBundleStringDict_valueToFaceBundleString_1458;
  _valueToFaceBundleStringDict_valueToFaceBundleString_1458 = v0;
}

@end