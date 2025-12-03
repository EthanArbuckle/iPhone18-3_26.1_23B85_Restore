@interface IDSFamilyDevice
- (IDSFamilyDevice)initWithDictionary:(id)dictionary;
- (IDSFamilyDevice)initWithOwnerHandle:(id)handle deviceName:(id)name deviceType:(int64_t)type deviceColor:(id)color buildVersion:(id)version deviceUniqueID:(id)d;
- (id)dictionaryRepresentation;
@end

@implementation IDSFamilyDevice

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  ownerHandle = self->_ownerHandle;
  if (ownerHandle)
  {
    CFDictionarySetValue(v3, @"FamilyDeviceOwnerHandleKey", ownerHandle);
  }

  deviceName = self->_deviceName;
  if (deviceName)
  {
    CFDictionarySetValue(v4, @"FamilyDeviceNameKey", deviceName);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_deviceType];
  if (v7)
  {
    CFDictionarySetValue(v4, @"FamilyDeviceTypeKey", v7);
  }

  deviceColor = self->_deviceColor;
  if (deviceColor)
  {
    CFDictionarySetValue(v4, @"FamilyDeviceColorKey", deviceColor);
  }

  buildVersion = self->_buildVersion;
  if (buildVersion)
  {
    CFDictionarySetValue(v4, @"FamilyDeviceBuildVersionKey", buildVersion);
  }

  deviceUniqueID = self->_deviceUniqueID;
  if (deviceUniqueID)
  {
    CFDictionarySetValue(v4, @"FamilyDeviceUniqueIDKey", deviceUniqueID);
  }

  return v4;
}

- (IDSFamilyDevice)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = IDSFamilyDevice;
  v5 = [(IDSFamilyDevice *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"FamilyDeviceOwnerHandleKey"];
    ownerHandle = v5->_ownerHandle;
    v5->_ownerHandle = v6;

    v8 = [dictionaryCopy objectForKey:@"FamilyDeviceNameKey"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v8;

    v10 = [dictionaryCopy objectForKey:@"FamilyDeviceTypeKey"];
    v5->_deviceType = [v10 integerValue];

    v11 = [dictionaryCopy objectForKey:@"FamilyDeviceColorKey"];
    deviceColor = v5->_deviceColor;
    v5->_deviceColor = v11;

    v13 = [dictionaryCopy objectForKey:@"FamilyDeviceBuildVersionKey"];
    buildVersion = v5->_buildVersion;
    v5->_buildVersion = v13;

    v15 = [dictionaryCopy objectForKey:@"FamilyDeviceUniqueIDKey"];
    deviceUniqueID = v5->_deviceUniqueID;
    v5->_deviceUniqueID = v15;
  }

  return v5;
}

- (IDSFamilyDevice)initWithOwnerHandle:(id)handle deviceName:(id)name deviceType:(int64_t)type deviceColor:(id)color buildVersion:(id)version deviceUniqueID:(id)d
{
  handleCopy = handle;
  nameCopy = name;
  colorCopy = color;
  versionCopy = version;
  dCopy = d;
  v23.receiver = self;
  v23.super_class = IDSFamilyDevice;
  v18 = [(IDSFamilyDevice *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_ownerHandle, handle);
    objc_storeStrong(&v19->_deviceName, name);
    v19->_deviceType = type;
    objc_storeStrong(&v19->_deviceColor, color);
    objc_storeStrong(&v19->_buildVersion, version);
    objc_storeStrong(&v19->_deviceUniqueID, d);
  }

  return v19;
}

@end