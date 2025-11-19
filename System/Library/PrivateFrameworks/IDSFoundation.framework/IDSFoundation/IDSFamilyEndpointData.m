@interface IDSFamilyEndpointData
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualTo:(id)a3;
- (IDSFamilyEndpointData)initWithCoder:(id)a3;
- (IDSFamilyEndpointData)initWithDeviceName:(id)a3 privateDeviceData:(id)a4;
- (IDSFamilyEndpointData)initWithDictionary:(id)a3;
- (id)debugDescription;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSFamilyEndpointData

- (IDSFamilyEndpointData)initWithDeviceName:(id)a3 privateDeviceData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = IDSFamilyEndpointData;
  v9 = [(IDSFamilyEndpointData *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_deviceName, a3);
    v11 = [v8 objectForKey:@"dt"];
    v10->_deviceType = [v11 integerValue];

    v12 = [v8 _stringForKey:@"c"];
    deviceColor = v10->_deviceColor;
    v10->_deviceColor = v12;

    v14 = [v8 _stringForKey:@"pb"];
    buildVersion = v10->_buildVersion;
    v10->_buildVersion = v14;

    v16 = [v8 _stringForKey:@"pv"];
    productVersion = v10->_productVersion;
    v10->_productVersion = v16;

    v18 = [v8 _stringForKey:@"u"];
    deviceUniqueID = v10->_deviceUniqueID;
    v10->_deviceUniqueID = v18;
  }

  return v10;
}

- (IDSFamilyEndpointData)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = IDSFamilyEndpointData;
  v5 = [(IDSFamilyEndpointData *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"FamilyDeviceNameKey"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v6;

    v8 = [v4 objectForKey:@"FamilyDeviceTypeKey"];
    v5->_deviceType = [v8 integerValue];

    v9 = [v4 objectForKey:@"FamilyDeviceColorKey"];
    deviceColor = v5->_deviceColor;
    v5->_deviceColor = v9;

    v11 = [v4 objectForKey:@"FamilyDeviceBuildVersionKey"];
    buildVersion = v5->_buildVersion;
    v5->_buildVersion = v11;

    v13 = [v4 objectForKey:@"FamilyDeviceProductVersionKey"];
    productVersion = v5->_productVersion;
    v5->_productVersion = v13;

    v15 = [v4 objectForKey:@"FamilyDeviceUniqueIDKey"];
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

- (IDSFamilyEndpointData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FamilyDeviceNameKey"];
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FamilyDeviceColorKey"];
  if (v7)
  {
    CFDictionarySetValue(v6, @"c", v7);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "decodeIntegerForKey:", @"FamilyDeviceTypeKey"}];
  if (v8)
  {
    CFDictionarySetValue(v6, @"dt", v8);
  }

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FamilyDeviceBuildVersionKey"];
  if (v9)
  {
    CFDictionarySetValue(v6, @"pb", v9);
  }

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FamilyDeviceUniqueIDKey"];
  if (v10)
  {
    CFDictionarySetValue(v6, @"u", v10);
  }

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FamilyDeviceProductVersionKey"];
  if (v11)
  {
    CFDictionarySetValue(v6, @"pv", v11);
  }

  v12 = [(IDSFamilyEndpointData *)self initWithDeviceName:v5 privateDeviceData:v6];
  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  deviceName = self->_deviceName;
  v5 = a3;
  [v5 encodeObject:deviceName forKey:@"FamilyDeviceNameKey"];
  [v5 encodeInteger:self->_deviceType forKey:@"FamilyDeviceTypeKey"];
  [v5 encodeObject:self->_deviceColor forKey:@"FamilyDeviceColorKey"];
  [v5 encodeObject:self->_buildVersion forKey:@"FamilyDeviceBuildVersionKey"];
  [v5 encodeObject:self->_deviceUniqueID forKey:@"FamilyDeviceUniqueIDKey"];
  [v5 encodeObject:self->_productVersion forKey:@"FamilyDeviceProductVersionKey"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IDSFamilyEndpointData *)self isEqualTo:v4];

  return v5;
}

- (BOOL)isEqualTo:(id)a3
{
  v5 = a3;
  v6 = [(IDSFamilyEndpointData *)self deviceName];
  v7 = [v5 deviceName];
  v8 = [v6 isEqualToString:v7];
  if ((v8 & 1) == 0)
  {
    v9 = [(IDSFamilyEndpointData *)self deviceName];
    v10 = [v5 deviceName];
    if (v9 != v10)
    {
      v11 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v48 = v10;
    v49 = v9;
  }

  v12 = [(IDSFamilyEndpointData *)self deviceType];
  if (v12 != [v5 deviceType])
  {
    v11 = 0;
    goto LABEL_29;
  }

  v13 = [(IDSFamilyEndpointData *)self deviceColor];
  v14 = [v5 deviceColor];
  v47 = v13;
  v46 = [v13 isEqualToString:v14];
  if ((v46 & 1) == 0)
  {
    v15 = [(IDSFamilyEndpointData *)self deviceColor];
    v16 = [v5 deviceColor];
    v44 = v15;
    if (v15 != v16)
    {
      v11 = 0;
LABEL_27:

      goto LABEL_28;
    }

    v42 = v16;
  }

  v17 = [(IDSFamilyEndpointData *)self buildVersion];
  v18 = [v5 buildVersion];
  v45 = v17;
  v19 = v17;
  v20 = v18;
  v21 = [v19 isEqualToString:v18];
  v22 = v21;
  if (v21)
  {
LABEL_15:
    v26 = [(IDSFamilyEndpointData *)self deviceUniqueID];
    v43 = [v5 deviceUniqueID];
    v41 = [v26 isEqualToString:?];
    if ((v41 & 1) == 0)
    {
      v27 = [(IDSFamilyEndpointData *)self deviceUniqueID];
      v28 = [v5 deviceUniqueID];
      v36 = v27;
      if (v27 != v28)
      {
        v11 = 0;
        goto LABEL_23;
      }

      v3 = v28;
    }

    v38 = v20;
    v39 = v14;
    v29 = [(IDSFamilyEndpointData *)self productVersion];
    v30 = [v5 productVersion];
    if ([v29 isEqualToString:v30])
    {

      v11 = 1;
    }

    else
    {
      [(IDSFamilyEndpointData *)self productVersion];
      v35 = v26;
      v32 = v31 = v22;
      v33 = [v5 productVersion];
      v11 = v32 == v33;

      v22 = v31;
      v26 = v35;
    }

    v20 = v38;
    v14 = v39;
    v28 = v3;
    if (v41)
    {
LABEL_24:

      v25 = v37;
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
  v24 = [(IDSFamilyEndpointData *)self buildVersion];
  v25 = [v5 buildVersion];
  v40 = v24;
  if (v24 == v25)
  {
    v37 = v25;
    v22 = v23;
    goto LABEL_15;
  }

  v11 = 0;
LABEL_25:

LABEL_26:
  v16 = v42;
  if ((v46 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_28:

LABEL_29:
  v10 = v48;
  v9 = v49;
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
  v4 = [(IDSFamilyEndpointData *)self deviceName];
  v5 = [v3 stringWithFormat:@"device-name = %@", v4];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"device-type = %ld", -[IDSFamilyEndpointData deviceType](self, "deviceType")];
  v7 = MEMORY[0x1E696AEC0];
  v8 = [(IDSFamilyEndpointData *)self deviceColor];
  v9 = [v7 stringWithFormat:@"device-color = %@", v8];

  v10 = MEMORY[0x1E696AEC0];
  v11 = [(IDSFamilyEndpointData *)self buildVersion];
  v12 = [v10 stringWithFormat:@"device-build-version = %@", v11];

  v13 = MEMORY[0x1E696AEC0];
  v14 = [(IDSFamilyEndpointData *)self deviceUniqueID];
  v15 = [v13 stringWithFormat:@"device-unique-id = %@", v14];

  v16 = MEMORY[0x1E696AEC0];
  v17 = [(IDSFamilyEndpointData *)self productVersion];
  v18 = [v16 stringWithFormat:@"device-product-version = %@", v17];

  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@\n", v5, v6, v9, v12, v18, v15];

  return v19;
}

@end