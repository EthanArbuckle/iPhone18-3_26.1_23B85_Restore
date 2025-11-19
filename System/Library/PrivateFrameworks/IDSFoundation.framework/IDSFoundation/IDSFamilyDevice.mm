@interface IDSFamilyDevice
- (IDSFamilyDevice)initWithDictionary:(id)a3;
- (IDSFamilyDevice)initWithOwnerHandle:(id)a3 deviceName:(id)a4 deviceType:(int64_t)a5 deviceColor:(id)a6 buildVersion:(id)a7 deviceUniqueID:(id)a8;
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

- (IDSFamilyDevice)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = IDSFamilyDevice;
  v5 = [(IDSFamilyDevice *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"FamilyDeviceOwnerHandleKey"];
    ownerHandle = v5->_ownerHandle;
    v5->_ownerHandle = v6;

    v8 = [v4 objectForKey:@"FamilyDeviceNameKey"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v8;

    v10 = [v4 objectForKey:@"FamilyDeviceTypeKey"];
    v5->_deviceType = [v10 integerValue];

    v11 = [v4 objectForKey:@"FamilyDeviceColorKey"];
    deviceColor = v5->_deviceColor;
    v5->_deviceColor = v11;

    v13 = [v4 objectForKey:@"FamilyDeviceBuildVersionKey"];
    buildVersion = v5->_buildVersion;
    v5->_buildVersion = v13;

    v15 = [v4 objectForKey:@"FamilyDeviceUniqueIDKey"];
    deviceUniqueID = v5->_deviceUniqueID;
    v5->_deviceUniqueID = v15;
  }

  return v5;
}

- (IDSFamilyDevice)initWithOwnerHandle:(id)a3 deviceName:(id)a4 deviceType:(int64_t)a5 deviceColor:(id)a6 buildVersion:(id)a7 deviceUniqueID:(id)a8
{
  v22 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = IDSFamilyDevice;
  v18 = [(IDSFamilyDevice *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_ownerHandle, a3);
    objc_storeStrong(&v19->_deviceName, a4);
    v19->_deviceType = a5;
    objc_storeStrong(&v19->_deviceColor, a6);
    objc_storeStrong(&v19->_buildVersion, a7);
    objc_storeStrong(&v19->_deviceUniqueID, a8);
  }

  return v19;
}

@end