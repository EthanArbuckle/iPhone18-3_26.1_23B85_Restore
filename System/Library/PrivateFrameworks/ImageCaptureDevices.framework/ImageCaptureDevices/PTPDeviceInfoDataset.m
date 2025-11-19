@interface PTPDeviceInfoDataset
- (NSMutableData)content;
- (PTPDeviceInfoDataset)init;
- (PTPDeviceInfoDataset)initWithData:(id)a3;
- (PTPDeviceInfoDataset)initWithMutableData:(id)a3;
- (id)canonicalManufacturer;
- (id)description;
- (void)setCaptureFormats:(id)a3;
- (void)setContent:(id)a3;
- (void)setDevicePropertiesSupported:(id)a3;
- (void)setDeviceVersion:(id)a3;
- (void)setEventsSupported:(id)a3;
- (void)setImageFormats:(id)a3;
- (void)setManufacturer:(id)a3;
- (void)setModel:(id)a3;
- (void)setOperationsSupported:(id)a3;
- (void)setSerialNumber:(id)a3;
- (void)setVendorExtensionDescription:(id)a3;
- (void)updateContent;
@end

@implementation PTPDeviceInfoDataset

- (PTPDeviceInfoDataset)init
{
  v6.receiver = self;
  v6.super_class = PTPDeviceInfoDataset;
  v2 = [(PTPDeviceInfoDataset *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x29EDB8DF8]) initWithCapacity:35];
    content = v2->_content;
    v2->_content = v3;

    *&v2->_dirty = 1;
  }

  return v2;
}

- (void)setContent:(id)a3
{
  objc_storeStrong(&self->_content, a3);
  v5 = a3;
  v6 = [(NSMutableData *)self->_content bytes];
  v7 = [(NSMutableData *)self->_content length];
  v28 = v6;
  self->_standardVersion = ReadUInt16MaxSize(&v28, v6 + v7);
  self->_vendorExtensionID = ReadUInt32MaxSize(&v28, v6 + v7);
  self->_vendorExtensionVersion = ReadUInt16MaxSize(&v28, v6 + v7);
  v8 = CopyUnicodeStringWithLengthByteFromBufferMaxSize(&v28, v6 + v7);
  vendorExtensionDescription = self->_vendorExtensionDescription;
  self->_vendorExtensionDescription = v8;

  self->_functionalMode = ReadUInt16MaxSize(&v28, v6 + v7);
  v10 = CopyArrayOfUnsignedShortsFromBufferMaxSize(&v28, v6 + v7);
  operationsSupported = self->_operationsSupported;
  self->_operationsSupported = v10;

  v12 = CopyArrayOfUnsignedShortsFromBufferMaxSize(&v28, v6 + v7);
  eventsSupported = self->_eventsSupported;
  self->_eventsSupported = v12;

  v14 = CopyArrayOfUnsignedShortsFromBufferMaxSize(&v28, v6 + v7);
  devicePropertiesSupported = self->_devicePropertiesSupported;
  self->_devicePropertiesSupported = v14;

  v16 = CopyArrayOfUnsignedShortsFromBufferMaxSize(&v28, v6 + v7);
  captureFormats = self->_captureFormats;
  self->_captureFormats = v16;

  v18 = CopyArrayOfUnsignedShortsFromBufferMaxSize(&v28, v6 + v7);
  imageFormats = self->_imageFormats;
  self->_imageFormats = v18;

  v20 = CopyUnicodeStringWithLengthByteFromBufferMaxSize(&v28, v6 + v7);
  manufacturer = self->_manufacturer;
  self->_manufacturer = v20;

  v22 = CopyUnicodeStringWithLengthByteFromBufferMaxSize(&v28, v6 + v7);
  model = self->_model;
  self->_model = v22;

  v24 = CopyUnicodeStringWithLengthByteFromBufferMaxSize(&v28, v6 + v7);
  deviceVersion = self->_deviceVersion;
  self->_deviceVersion = v24;

  v26 = CopyUnicodeStringWithLengthByteFromBufferMaxSize(&v28, v6 + v7);
  serialNumber = self->_serialNumber;
  self->_serialNumber = v26;
}

- (PTPDeviceInfoDataset)initWithData:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PTPDeviceInfoDataset;
  v5 = [(PTPDeviceInfoDataset *)&v8 init];
  if (v5)
  {
    if ([v4 length] < 0x23)
    {

      v5 = 0;
    }

    else
    {
      v6 = [v4 mutableCopy];
      [(PTPDeviceInfoDataset *)v5 setContent:v6];

      v5->_readOnlyObject = 1;
    }
  }

  return v5;
}

- (PTPDeviceInfoDataset)initWithMutableData:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PTPDeviceInfoDataset;
  v5 = [(PTPDeviceInfoDataset *)&v7 init];
  if (v5)
  {
    if ([v4 length] < 0x23)
    {

      v5 = 0;
    }

    else
    {
      [(PTPDeviceInfoDataset *)v5 setContent:v4];
      v5->_readOnlyObject = 0;
    }
  }

  return v5;
}

- (void)updateContent
{
  if (self->_dirty)
  {
    v20[11] = v2;
    v20[12] = v3;
    if (!self->_readOnlyObject)
    {
      v5 = [(NSString *)self->_vendorExtensionDescription length];
      v19 = [(NSArray *)self->_operationsSupported count];
      v18 = [(NSArray *)self->_eventsSupported count];
      v17 = [(NSArray *)self->_devicePropertiesSupported count];
      v6 = [(NSArray *)self->_captureFormats count];
      v7 = [(NSArray *)self->_imageFormats count];
      v8 = [(NSString *)self->_manufacturer length];
      v9 = [(NSString *)self->_model length];
      v10 = [(NSString *)self->_deviceVersion length];
      v11 = [(NSString *)self->_serialNumber length];
      v12 = 2 * v11 + 2;
      v13 = 2 * v5 + 37;
      if (v8)
      {
        v14 = 2 * v8 + 2;
      }

      else
      {
        v14 = 0;
      }

      if (v9)
      {
        v15 = 2 * v9 + 2;
      }

      else
      {
        v15 = 0;
      }

      if (v10)
      {
        v16 = 2 * v10 + 2;
      }

      else
      {
        v16 = 0;
      }

      if (!v11)
      {
        v12 = 0;
      }

      if (!v5)
      {
        v13 = 35;
      }

      [(NSMutableData *)self->_content setLength:v13 + v14 + 2 * (v18 + v19 + v17 + v6 + v7) + v15 + v16 + v12];
      v20[0] = [(NSMutableData *)self->_content mutableBytes];
      WriteUInt16(v20, self->_standardVersion);
      WriteUInt32(v20, self->_vendorExtensionID);
      WriteUInt16(v20, self->_vendorExtensionVersion);
      WriteUnicodeStringWithLengthByteToBuffer(v20, self->_vendorExtensionDescription);
      WriteUInt16(v20, self->_functionalMode);
      WriteArrayOfUnsignedShortsToBuffer(v20, self->_operationsSupported);
      WriteArrayOfUnsignedShortsToBuffer(v20, self->_eventsSupported);
      WriteArrayOfUnsignedShortsToBuffer(v20, self->_devicePropertiesSupported);
      WriteArrayOfUnsignedShortsToBuffer(v20, self->_captureFormats);
      WriteArrayOfUnsignedShortsToBuffer(v20, self->_imageFormats);
      WriteUnicodeStringWithLengthByteToBuffer(v20, self->_manufacturer);
      WriteUnicodeStringWithLengthByteToBuffer(v20, self->_model);
      WriteUnicodeStringWithLengthByteToBuffer(v20, self->_deviceVersion);
      WriteUnicodeStringWithLengthByteToBuffer(v20, self->_serialNumber);
      self->_dirty = 0;
    }
  }
}

- (NSMutableData)content
{
  [(PTPDeviceInfoDataset *)self updateContent];
  content = self->_content;

  return content;
}

- (id)description
{
  v3 = [MEMORY[0x29EDBA050] stringWithFormat:@"<PTPDeviceInfoDataset %p>{\n  _standardVersion:            %d\n  _vendorExtensionID:          %lu\n  _vendorExtensionVersion:     %d\n  _vendorExtensionDescription: %@\n  _functionalMode:             %d\n  _operationsSupported:\n    {\n", self, self->_standardVersion, self->_vendorExtensionID, self->_vendorExtensionVersion, self->_vendorExtensionDescription, self->_functionalMode];
  v4 = [(NSArray *)self->_operationsSupported objectEnumerator];
  v5 = [v4 nextObject];
  if (v5)
  {
    v6 = v5;
    do
    {
      v7 = stringForOperationCode([v6 unsignedShortValue]);
      [v3 appendFormat:@"      %@\n", v7];

      v8 = [v4 nextObject];

      v6 = v8;
    }

    while (v8);
  }

  [v3 appendString:@"    }\n  _eventsSupported:\n    {\n"];
  v9 = [(NSArray *)self->_eventsSupported objectEnumerator];

  v10 = [v9 nextObject];
  if (v10)
  {
    v11 = v10;
    do
    {
      v12 = stringForEventCode([v11 unsignedShortValue]);
      [v3 appendFormat:@"      %@\n", v12];

      v13 = [v9 nextObject];

      v11 = v13;
    }

    while (v13);
  }

  [v3 appendString:@"    }\n  _devicePropertiesSupported:\n    {\n"];
  v14 = [(NSArray *)self->_devicePropertiesSupported objectEnumerator];

  v15 = [v14 nextObject];
  if (v15)
  {
    v16 = v15;
    do
    {
      v17 = stringForDevicePropCode([v16 unsignedShortValue]);
      [v3 appendFormat:@"      %@\n", v17];

      v18 = [v14 nextObject];

      v16 = v18;
    }

    while (v18);
  }

  [v3 appendString:@"    }\n  _captureFormats:\n    {\n"];
  v19 = [(NSArray *)self->_captureFormats objectEnumerator];

  v20 = [v19 nextObject];
  if (v20)
  {
    v21 = v20;
    do
    {
      v22 = stringForObjectFormatCode([v21 unsignedShortValue]);
      [v3 appendFormat:@"      %@\n", v22];

      v23 = [v19 nextObject];

      v21 = v23;
    }

    while (v23);
  }

  [v3 appendString:@"    }\n  _imageFormats:\n    {\n"];
  v24 = [(NSArray *)self->_imageFormats objectEnumerator];

  v25 = [v24 nextObject];
  if (v25)
  {
    v26 = v25;
    do
    {
      v27 = stringForObjectFormatCode([v26 unsignedShortValue]);
      [v3 appendFormat:@"      %@\n", v27];

      v28 = [v24 nextObject];

      v26 = v28;
    }

    while (v28);
  }

  [v3 appendFormat:@"    }\n  _manufacturer:  %@\n  _model:         %@\n  _deviceVersion: %@\n  _serialNumber:  %@\n}", self->_manufacturer, self->_model, self->_deviceVersion, self->_serialNumber];

  return v3;
}

- (void)setVendorExtensionDescription:(id)a3
{
  v5 = a3;
  p_vendorExtensionDescription = &self->_vendorExtensionDescription;
  if (self->_vendorExtensionDescription != v5)
  {
    v7 = v5;
    objc_storeStrong(p_vendorExtensionDescription, a3);
    v5 = v7;
    self->_dirty = 1;
  }

  MEMORY[0x2A1C71028](p_vendorExtensionDescription, v5);
}

- (void)setOperationsSupported:(id)a3
{
  if (self->_operationsSupported != a3)
  {
    v4 = MEMORY[0x29EDB8DE8];
    v5 = a3;
    v6 = [[v4 alloc] initWithArray:v5];

    operationsSupported = self->_operationsSupported;
    self->_operationsSupported = v6;

    self->_dirty = 1;
  }
}

- (void)setEventsSupported:(id)a3
{
  if (self->_eventsSupported != a3)
  {
    v4 = MEMORY[0x29EDB8DE8];
    v5 = a3;
    v6 = [[v4 alloc] initWithArray:v5];

    eventsSupported = self->_eventsSupported;
    self->_eventsSupported = v6;

    self->_dirty = 1;
  }
}

- (void)setDevicePropertiesSupported:(id)a3
{
  if (self->_devicePropertiesSupported != a3)
  {
    v4 = MEMORY[0x29EDB8DE8];
    v5 = a3;
    v6 = [[v4 alloc] initWithArray:v5];

    devicePropertiesSupported = self->_devicePropertiesSupported;
    self->_devicePropertiesSupported = v6;

    self->_dirty = 1;
  }
}

- (void)setCaptureFormats:(id)a3
{
  if (self->_captureFormats != a3)
  {
    v4 = MEMORY[0x29EDB8DE8];
    v5 = a3;
    v6 = [[v4 alloc] initWithArray:v5];

    captureFormats = self->_captureFormats;
    self->_captureFormats = v6;

    self->_dirty = 1;
  }
}

- (void)setImageFormats:(id)a3
{
  if (self->_imageFormats != a3)
  {
    v4 = MEMORY[0x29EDB8DE8];
    v5 = a3;
    v6 = [[v4 alloc] initWithArray:v5];

    imageFormats = self->_imageFormats;
    self->_imageFormats = v6;

    self->_dirty = 1;
  }
}

- (void)setManufacturer:(id)a3
{
  v5 = a3;
  p_manufacturer = &self->_manufacturer;
  if (self->_manufacturer != v5)
  {
    v7 = v5;
    objc_storeStrong(p_manufacturer, a3);
    v5 = v7;
    self->_dirty = 1;
  }

  MEMORY[0x2A1C71028](p_manufacturer, v5);
}

- (void)setModel:(id)a3
{
  v5 = a3;
  p_model = &self->_model;
  if (self->_model != v5)
  {
    v7 = v5;
    objc_storeStrong(p_model, a3);
    v5 = v7;
    self->_dirty = 1;
  }

  MEMORY[0x2A1C71028](p_model, v5);
}

- (void)setDeviceVersion:(id)a3
{
  v5 = a3;
  p_deviceVersion = &self->_deviceVersion;
  if (self->_deviceVersion != v5)
  {
    v7 = v5;
    objc_storeStrong(p_deviceVersion, a3);
    v5 = v7;
    self->_dirty = 1;
  }

  MEMORY[0x2A1C71028](p_deviceVersion, v5);
}

- (void)setSerialNumber:(id)a3
{
  v5 = a3;
  p_serialNumber = &self->_serialNumber;
  if (self->_serialNumber != v5)
  {
    v7 = v5;
    objc_storeStrong(p_serialNumber, a3);
    v5 = v7;
    self->_dirty = 1;
  }

  MEMORY[0x2A1C71028](p_serialNumber, v5);
}

- (id)canonicalManufacturer
{
  v3 = [(NSString *)self->_manufacturer componentsSeparatedByString:@" "];
  v4 = [v3 objectEnumerator];
  v5 = 0;
  v6 = @"NIKON";
  while (1)
  {
    v7 = v5;
    v5 = [v4 nextObject];

    if (!v5)
    {
      v6 = self->_manufacturer;
      goto LABEL_9;
    }

    if (![v5 caseInsensitiveCompare:@"NIKON"])
    {
      goto LABEL_9;
    }

    if (![v5 caseInsensitiveCompare:@"CANON"])
    {
      break;
    }

    if (![v5 caseInsensitiveCompare:@"KODAK"])
    {
      v6 = @"KODAK";
      goto LABEL_9;
    }
  }

  v6 = &stru_2A253D090;
LABEL_9:

  return v6;
}

@end