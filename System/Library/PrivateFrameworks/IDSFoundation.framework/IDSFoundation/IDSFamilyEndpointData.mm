@interface IDSFamilyEndpointData
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualTo:(id)to;
- (IDSFamilyEndpointData)initWithCoder:(id)coder;
- (IDSFamilyEndpointData)initWithDeviceName:(id)name privateDeviceData:(id)data;
- (IDSFamilyEndpointData)initWithDictionary:(id)dictionary;
- (id)debugDescription;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSFamilyEndpointData

- (IDSFamilyEndpointData)initWithDeviceName:(id)name privateDeviceData:(id)data
{
  nameCopy = name;
  dataCopy = data;
  v21.receiver = self;
  v21.super_class = IDSFamilyEndpointData;
  v9 = [(IDSFamilyEndpointData *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_deviceName, name);
    v11 = [dataCopy objectForKey:@"dt"];
    v10->_deviceType = [v11 integerValue];

    v12 = [dataCopy _stringForKey:@"c"];
    deviceColor = v10->_deviceColor;
    v10->_deviceColor = v12;

    v14 = [dataCopy _stringForKey:@"pb"];
    buildVersion = v10->_buildVersion;
    v10->_buildVersion = v14;

    v16 = [dataCopy _stringForKey:@"pv"];
    productVersion = v10->_productVersion;
    v10->_productVersion = v16;

    v18 = [dataCopy _stringForKey:@"u"];
    deviceUniqueID = v10->_deviceUniqueID;
    v10->_deviceUniqueID = v18;
  }

  return v10;
}

- (IDSFamilyEndpointData)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = IDSFamilyEndpointData;
  v5 = [(IDSFamilyEndpointData *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"FamilyDeviceNameKey"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v6;

    v8 = [dictionaryCopy objectForKey:@"FamilyDeviceTypeKey"];
    v5->_deviceType = [v8 integerValue];

    v9 = [dictionaryCopy objectForKey:@"FamilyDeviceColorKey"];
    deviceColor = v5->_deviceColor;
    v5->_deviceColor = v9;

    v11 = [dictionaryCopy objectForKey:@"FamilyDeviceBuildVersionKey"];
    buildVersion = v5->_buildVersion;
    v5->_buildVersion = v11;

    v13 = [dictionaryCopy objectForKey:@"FamilyDeviceProductVersionKey"];
    productVersion = v5->_productVersion;
    v5->_productVersion = v13;

    v15 = [dictionaryCopy objectForKey:@"FamilyDeviceUniqueIDKey"];
    deviceUniqueID = v5->_deviceUniqueID;
    v5->_deviceUniqueID = v15;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  deviceName = self->_deviceName;
  if (deviceName)
  {
    CFDictionarySetValue(v3, @"FamilyDeviceNameKey", deviceName);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_deviceType];
  if (v6)
  {
    CFDictionarySetValue(v4, @"FamilyDeviceTypeKey", v6);
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

  productVersion = self->_productVersion;
  if (productVersion)
  {
    CFDictionarySetValue(v4, @"FamilyDeviceProductVersionKey", productVersion);
  }

  return v4;
}

- (IDSFamilyEndpointData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FamilyDeviceNameKey"];
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FamilyDeviceColorKey"];
  if (v7)
  {
    CFDictionarySetValue(v6, @"c", v7);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(coderCopy, "decodeIntegerForKey:", @"FamilyDeviceTypeKey"}];
  if (v8)
  {
    CFDictionarySetValue(v6, @"dt", v8);
  }

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FamilyDeviceBuildVersionKey"];
  if (v9)
  {
    CFDictionarySetValue(v6, @"pb", v9);
  }

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FamilyDeviceUniqueIDKey"];
  if (v10)
  {
    CFDictionarySetValue(v6, @"u", v10);
  }

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FamilyDeviceProductVersionKey"];
  if (v11)
  {
    CFDictionarySetValue(v6, @"pv", v11);
  }

  v12 = [(IDSFamilyEndpointData *)self initWithDeviceName:v5 privateDeviceData:v6];
  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  deviceName = self->_deviceName;
  coderCopy = coder;
  [coderCopy encodeObject:deviceName forKey:@"FamilyDeviceNameKey"];
  [coderCopy encodeInteger:self->_deviceType forKey:@"FamilyDeviceTypeKey"];
  [coderCopy encodeObject:self->_deviceColor forKey:@"FamilyDeviceColorKey"];
  [coderCopy encodeObject:self->_buildVersion forKey:@"FamilyDeviceBuildVersionKey"];
  [coderCopy encodeObject:self->_deviceUniqueID forKey:@"FamilyDeviceUniqueIDKey"];
  [coderCopy encodeObject:self->_productVersion forKey:@"FamilyDeviceProductVersionKey"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IDSFamilyEndpointData *)self isEqualTo:equalCopy];

  return v5;
}

- (BOOL)isEqualTo:(id)to
{
  toCopy = to;
  deviceName = [(IDSFamilyEndpointData *)self deviceName];
  deviceName2 = [toCopy deviceName];
  v8 = [deviceName isEqualToString:deviceName2];
  if ((v8 & 1) == 0)
  {
    deviceName3 = [(IDSFamilyEndpointData *)self deviceName];
    deviceName4 = [toCopy deviceName];
    if (deviceName3 != deviceName4)
    {
      v11 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v48 = deviceName4;
    v49 = deviceName3;
  }

  deviceType = [(IDSFamilyEndpointData *)self deviceType];
  if (deviceType != [toCopy deviceType])
  {
    v11 = 0;
    goto LABEL_29;
  }

  deviceColor = [(IDSFamilyEndpointData *)self deviceColor];
  deviceColor2 = [toCopy deviceColor];
  v47 = deviceColor;
  v46 = [deviceColor isEqualToString:deviceColor2];
  if ((v46 & 1) == 0)
  {
    deviceColor3 = [(IDSFamilyEndpointData *)self deviceColor];
    deviceColor4 = [toCopy deviceColor];
    v44 = deviceColor3;
    if (deviceColor3 != deviceColor4)
    {
      v11 = 0;
LABEL_27:

      goto LABEL_28;
    }

    v42 = deviceColor4;
  }

  buildVersion = [(IDSFamilyEndpointData *)self buildVersion];
  buildVersion2 = [toCopy buildVersion];
  v45 = buildVersion;
  v19 = buildVersion;
  v20 = buildVersion2;
  v21 = [v19 isEqualToString:buildVersion2];
  v22 = v21;
  if (v21)
  {
LABEL_15:
    deviceUniqueID = [(IDSFamilyEndpointData *)self deviceUniqueID];
    deviceUniqueID2 = [toCopy deviceUniqueID];
    v41 = [deviceUniqueID isEqualToString:?];
    if ((v41 & 1) == 0)
    {
      deviceUniqueID3 = [(IDSFamilyEndpointData *)self deviceUniqueID];
      deviceUniqueID4 = [toCopy deviceUniqueID];
      v36 = deviceUniqueID3;
      if (deviceUniqueID3 != deviceUniqueID4)
      {
        v11 = 0;
        goto LABEL_23;
      }

      v3 = deviceUniqueID4;
    }

    v38 = v20;
    v39 = deviceColor2;
    productVersion = [(IDSFamilyEndpointData *)self productVersion];
    productVersion2 = [toCopy productVersion];
    if ([productVersion isEqualToString:productVersion2])
    {

      v11 = 1;
    }

    else
    {
      [(IDSFamilyEndpointData *)self productVersion];
      v35 = deviceUniqueID;
      v32 = v31 = v22;
      productVersion3 = [toCopy productVersion];
      v11 = v32 == productVersion3;

      v22 = v31;
      deviceUniqueID = v35;
    }

    v20 = v38;
    deviceColor2 = v39;
    deviceUniqueID4 = v3;
    if (v41)
    {
LABEL_24:

      buildVersion4 = v37;
      if (v22)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

LABEL_23:

    goto LABEL_24;
  }

  v23 = v21;
  buildVersion3 = [(IDSFamilyEndpointData *)self buildVersion];
  buildVersion4 = [toCopy buildVersion];
  v40 = buildVersion3;
  if (buildVersion3 == buildVersion4)
  {
    v37 = buildVersion4;
    v22 = v23;
    goto LABEL_15;
  }

  v11 = 0;
LABEL_25:

LABEL_26:
  deviceColor4 = v42;
  if ((v46 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_28:

LABEL_29:
  deviceName4 = v48;
  deviceName3 = v49;
  if ((v8 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_31:

  return v11;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  deviceName = [(IDSFamilyEndpointData *)self deviceName];
  v5 = [v3 stringWithFormat:@"device-name = %@", deviceName];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"device-type = %ld", -[IDSFamilyEndpointData deviceType](self, "deviceType")];
  v7 = MEMORY[0x1E696AEC0];
  deviceColor = [(IDSFamilyEndpointData *)self deviceColor];
  v9 = [v7 stringWithFormat:@"device-color = %@", deviceColor];

  v10 = MEMORY[0x1E696AEC0];
  buildVersion = [(IDSFamilyEndpointData *)self buildVersion];
  v12 = [v10 stringWithFormat:@"device-build-version = %@", buildVersion];

  v13 = MEMORY[0x1E696AEC0];
  deviceUniqueID = [(IDSFamilyEndpointData *)self deviceUniqueID];
  v15 = [v13 stringWithFormat:@"device-unique-id = %@", deviceUniqueID];

  v16 = MEMORY[0x1E696AEC0];
  productVersion = [(IDSFamilyEndpointData *)self productVersion];
  v18 = [v16 stringWithFormat:@"device-product-version = %@", productVersion];

  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@\n", v5, v6, v9, v12, v18, v15];

  return v19;
}

@end