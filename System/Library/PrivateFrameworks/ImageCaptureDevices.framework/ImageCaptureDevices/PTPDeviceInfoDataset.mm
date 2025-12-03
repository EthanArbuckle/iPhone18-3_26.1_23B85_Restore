@interface PTPDeviceInfoDataset
- (NSMutableData)content;
- (PTPDeviceInfoDataset)init;
- (PTPDeviceInfoDataset)initWithData:(id)data;
- (PTPDeviceInfoDataset)initWithMutableData:(id)data;
- (id)canonicalManufacturer;
- (id)description;
- (void)setCaptureFormats:(id)formats;
- (void)setContent:(id)content;
- (void)setDevicePropertiesSupported:(id)supported;
- (void)setDeviceVersion:(id)version;
- (void)setEventsSupported:(id)supported;
- (void)setImageFormats:(id)formats;
- (void)setManufacturer:(id)manufacturer;
- (void)setModel:(id)model;
- (void)setOperationsSupported:(id)supported;
- (void)setSerialNumber:(id)number;
- (void)setVendorExtensionDescription:(id)description;
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

- (void)setContent:(id)content
{
  objc_storeStrong(&self->_content, content);
  contentCopy = content;
  bytes = [(NSMutableData *)self->_content bytes];
  v7 = [(NSMutableData *)self->_content length];
  v28 = bytes;
  self->_standardVersion = ReadUInt16MaxSize(&v28, bytes + v7);
  self->_vendorExtensionID = ReadUInt32MaxSize(&v28, bytes + v7);
  self->_vendorExtensionVersion = ReadUInt16MaxSize(&v28, bytes + v7);
  v8 = CopyUnicodeStringWithLengthByteFromBufferMaxSize(&v28, bytes + v7);
  vendorExtensionDescription = self->_vendorExtensionDescription;
  self->_vendorExtensionDescription = v8;

  self->_functionalMode = ReadUInt16MaxSize(&v28, bytes + v7);
  v10 = CopyArrayOfUnsignedShortsFromBufferMaxSize(&v28, bytes + v7);
  operationsSupported = self->_operationsSupported;
  self->_operationsSupported = v10;

  v12 = CopyArrayOfUnsignedShortsFromBufferMaxSize(&v28, bytes + v7);
  eventsSupported = self->_eventsSupported;
  self->_eventsSupported = v12;

  v14 = CopyArrayOfUnsignedShortsFromBufferMaxSize(&v28, bytes + v7);
  devicePropertiesSupported = self->_devicePropertiesSupported;
  self->_devicePropertiesSupported = v14;

  v16 = CopyArrayOfUnsignedShortsFromBufferMaxSize(&v28, bytes + v7);
  captureFormats = self->_captureFormats;
  self->_captureFormats = v16;

  v18 = CopyArrayOfUnsignedShortsFromBufferMaxSize(&v28, bytes + v7);
  imageFormats = self->_imageFormats;
  self->_imageFormats = v18;

  v20 = CopyUnicodeStringWithLengthByteFromBufferMaxSize(&v28, bytes + v7);
  manufacturer = self->_manufacturer;
  self->_manufacturer = v20;

  v22 = CopyUnicodeStringWithLengthByteFromBufferMaxSize(&v28, bytes + v7);
  model = self->_model;
  self->_model = v22;

  v24 = CopyUnicodeStringWithLengthByteFromBufferMaxSize(&v28, bytes + v7);
  deviceVersion = self->_deviceVersion;
  self->_deviceVersion = v24;

  v26 = CopyUnicodeStringWithLengthByteFromBufferMaxSize(&v28, bytes + v7);
  serialNumber = self->_serialNumber;
  self->_serialNumber = v26;
}

- (PTPDeviceInfoDataset)initWithData:(id)data
{
  dataCopy = data;
  v8.receiver = self;
  v8.super_class = PTPDeviceInfoDataset;
  v5 = [(PTPDeviceInfoDataset *)&v8 init];
  if (v5)
  {
    if ([dataCopy length] < 0x23)
    {

      v5 = 0;
    }

    else
    {
      v6 = [dataCopy mutableCopy];
      [(PTPDeviceInfoDataset *)v5 setContent:v6];

      v5->_readOnlyObject = 1;
    }
  }

  return v5;
}

- (PTPDeviceInfoDataset)initWithMutableData:(id)data
{
  dataCopy = data;
  v7.receiver = self;
  v7.super_class = PTPDeviceInfoDataset;
  v5 = [(PTPDeviceInfoDataset *)&v7 init];
  if (v5)
  {
    if ([dataCopy length] < 0x23)
    {

      v5 = 0;
    }

    else
    {
      [(PTPDeviceInfoDataset *)v5 setContent:dataCopy];
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
  objectEnumerator = [(NSArray *)self->_operationsSupported objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    v6 = nextObject;
    do
    {
      v7 = stringForOperationCode([v6 unsignedShortValue]);
      [v3 appendFormat:@"      %@\n", v7];

      nextObject2 = [objectEnumerator nextObject];

      v6 = nextObject2;
    }

    while (nextObject2);
  }

  [v3 appendString:@"    }\n  _eventsSupported:\n    {\n"];
  objectEnumerator2 = [(NSArray *)self->_eventsSupported objectEnumerator];

  nextObject3 = [objectEnumerator2 nextObject];
  if (nextObject3)
  {
    v11 = nextObject3;
    do
    {
      v12 = stringForEventCode([v11 unsignedShortValue]);
      [v3 appendFormat:@"      %@\n", v12];

      nextObject4 = [objectEnumerator2 nextObject];

      v11 = nextObject4;
    }

    while (nextObject4);
  }

  [v3 appendString:@"    }\n  _devicePropertiesSupported:\n    {\n"];
  objectEnumerator3 = [(NSArray *)self->_devicePropertiesSupported objectEnumerator];

  nextObject5 = [objectEnumerator3 nextObject];
  if (nextObject5)
  {
    v16 = nextObject5;
    do
    {
      v17 = stringForDevicePropCode([v16 unsignedShortValue]);
      [v3 appendFormat:@"      %@\n", v17];

      nextObject6 = [objectEnumerator3 nextObject];

      v16 = nextObject6;
    }

    while (nextObject6);
  }

  [v3 appendString:@"    }\n  _captureFormats:\n    {\n"];
  objectEnumerator4 = [(NSArray *)self->_captureFormats objectEnumerator];

  nextObject7 = [objectEnumerator4 nextObject];
  if (nextObject7)
  {
    v21 = nextObject7;
    do
    {
      v22 = stringForObjectFormatCode([v21 unsignedShortValue]);
      [v3 appendFormat:@"      %@\n", v22];

      nextObject8 = [objectEnumerator4 nextObject];

      v21 = nextObject8;
    }

    while (nextObject8);
  }

  [v3 appendString:@"    }\n  _imageFormats:\n    {\n"];
  objectEnumerator5 = [(NSArray *)self->_imageFormats objectEnumerator];

  nextObject9 = [objectEnumerator5 nextObject];
  if (nextObject9)
  {
    v26 = nextObject9;
    do
    {
      v27 = stringForObjectFormatCode([v26 unsignedShortValue]);
      [v3 appendFormat:@"      %@\n", v27];

      nextObject10 = [objectEnumerator5 nextObject];

      v26 = nextObject10;
    }

    while (nextObject10);
  }

  [v3 appendFormat:@"    }\n  _manufacturer:  %@\n  _model:         %@\n  _deviceVersion: %@\n  _serialNumber:  %@\n}", self->_manufacturer, self->_model, self->_deviceVersion, self->_serialNumber];

  return v3;
}

- (void)setVendorExtensionDescription:(id)description
{
  descriptionCopy = description;
  p_vendorExtensionDescription = &self->_vendorExtensionDescription;
  if (self->_vendorExtensionDescription != descriptionCopy)
  {
    v7 = descriptionCopy;
    objc_storeStrong(p_vendorExtensionDescription, description);
    descriptionCopy = v7;
    self->_dirty = 1;
  }

  MEMORY[0x2A1C71028](p_vendorExtensionDescription, descriptionCopy);
}

- (void)setOperationsSupported:(id)supported
{
  if (self->_operationsSupported != supported)
  {
    v4 = MEMORY[0x29EDB8DE8];
    supportedCopy = supported;
    v6 = [[v4 alloc] initWithArray:supportedCopy];

    operationsSupported = self->_operationsSupported;
    self->_operationsSupported = v6;

    self->_dirty = 1;
  }
}

- (void)setEventsSupported:(id)supported
{
  if (self->_eventsSupported != supported)
  {
    v4 = MEMORY[0x29EDB8DE8];
    supportedCopy = supported;
    v6 = [[v4 alloc] initWithArray:supportedCopy];

    eventsSupported = self->_eventsSupported;
    self->_eventsSupported = v6;

    self->_dirty = 1;
  }
}

- (void)setDevicePropertiesSupported:(id)supported
{
  if (self->_devicePropertiesSupported != supported)
  {
    v4 = MEMORY[0x29EDB8DE8];
    supportedCopy = supported;
    v6 = [[v4 alloc] initWithArray:supportedCopy];

    devicePropertiesSupported = self->_devicePropertiesSupported;
    self->_devicePropertiesSupported = v6;

    self->_dirty = 1;
  }
}

- (void)setCaptureFormats:(id)formats
{
  if (self->_captureFormats != formats)
  {
    v4 = MEMORY[0x29EDB8DE8];
    formatsCopy = formats;
    v6 = [[v4 alloc] initWithArray:formatsCopy];

    captureFormats = self->_captureFormats;
    self->_captureFormats = v6;

    self->_dirty = 1;
  }
}

- (void)setImageFormats:(id)formats
{
  if (self->_imageFormats != formats)
  {
    v4 = MEMORY[0x29EDB8DE8];
    formatsCopy = formats;
    v6 = [[v4 alloc] initWithArray:formatsCopy];

    imageFormats = self->_imageFormats;
    self->_imageFormats = v6;

    self->_dirty = 1;
  }
}

- (void)setManufacturer:(id)manufacturer
{
  manufacturerCopy = manufacturer;
  p_manufacturer = &self->_manufacturer;
  if (self->_manufacturer != manufacturerCopy)
  {
    v7 = manufacturerCopy;
    objc_storeStrong(p_manufacturer, manufacturer);
    manufacturerCopy = v7;
    self->_dirty = 1;
  }

  MEMORY[0x2A1C71028](p_manufacturer, manufacturerCopy);
}

- (void)setModel:(id)model
{
  modelCopy = model;
  p_model = &self->_model;
  if (self->_model != modelCopy)
  {
    v7 = modelCopy;
    objc_storeStrong(p_model, model);
    modelCopy = v7;
    self->_dirty = 1;
  }

  MEMORY[0x2A1C71028](p_model, modelCopy);
}

- (void)setDeviceVersion:(id)version
{
  versionCopy = version;
  p_deviceVersion = &self->_deviceVersion;
  if (self->_deviceVersion != versionCopy)
  {
    v7 = versionCopy;
    objc_storeStrong(p_deviceVersion, version);
    versionCopy = v7;
    self->_dirty = 1;
  }

  MEMORY[0x2A1C71028](p_deviceVersion, versionCopy);
}

- (void)setSerialNumber:(id)number
{
  numberCopy = number;
  p_serialNumber = &self->_serialNumber;
  if (self->_serialNumber != numberCopy)
  {
    v7 = numberCopy;
    objc_storeStrong(p_serialNumber, number);
    numberCopy = v7;
    self->_dirty = 1;
  }

  MEMORY[0x2A1C71028](p_serialNumber, numberCopy);
}

- (id)canonicalManufacturer
{
  v3 = [(NSString *)self->_manufacturer componentsSeparatedByString:@" "];
  objectEnumerator = [v3 objectEnumerator];
  nextObject = 0;
  v6 = @"NIKON";
  while (1)
  {
    v7 = nextObject;
    nextObject = [objectEnumerator nextObject];

    if (!nextObject)
    {
      v6 = self->_manufacturer;
      goto LABEL_9;
    }

    if (![nextObject caseInsensitiveCompare:@"NIKON"])
    {
      goto LABEL_9;
    }

    if (![nextObject caseInsensitiveCompare:@"CANON"])
    {
      break;
    }

    if (![nextObject caseInsensitiveCompare:@"KODAK"])
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