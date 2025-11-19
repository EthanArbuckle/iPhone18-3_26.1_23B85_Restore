@interface PTPObjectInfoDataset
- (PTPObjectInfoDataset)init;
- (id)description;
- (id)keywords;
- (id)relatedUUID;
- (int64_t)intervalSince1970;
- (unsigned)objectCompressedSize;
- (void)addCustomKeyword:(id)a3 withIdentifier:(id)a4;
- (void)contentLength:(unsigned int *)a3 bufferLength:(unsigned int *)a4 contentType:(int)a5;
- (void)setKeywords:(id)a3;
@end

@implementation PTPObjectInfoDataset

- (PTPObjectInfoDataset)init
{
  v3.receiver = self;
  v3.super_class = PTPObjectInfoDataset;
  return [(PTPObjectInfoDataset *)&v3 init];
}

- (void)contentLength:(unsigned int *)a3 bufferLength:(unsigned int *)a4 contentType:(int)a5
{
  v9 = [(NSString *)self->_filename length];
  if (v9)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(NSString *)self->_captureDate length];
  if (v11)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(NSString *)self->_modificationDate length];
  if (v13)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = [(NSMutableString *)self->_keywords length];
  if (v15)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = 0;
  }

  if (a5 == 2)
  {
    v19 = 2 * (v14 + v10 + v12 + v16);
    *a3 = v19 + 60;
    v17 = v19 + 68;
  }

  else if (a5 == 1)
  {
    v18 = 2 * (v14 + v10 + v12 + v16);
    *a3 = v18 + 56;
    v17 = v18 + 64;
  }

  else
  {
    if (a5)
    {
      if ((a5 - 3) > 1)
      {
        return;
      }

      v17 = 2 * (v14 + v10) + 36;
    }

    else
    {
      v17 = 2 * (v14 + v10 + v12 + v16) + 56;
    }

    *a3 = v17;
  }

  *a4 = v17;
}

- (id)description
{
  objectHandle = self->_objectHandle;
  v21 = MEMORY[0x29EDBA050];
  storageID = self->_storageID;
  v18 = stringForObjectFormatCode(self->_objectFormat);
  v3 = stringForProtectionStatus(self->_protectionStatus);
  objectCompressedSize = self->_objectCompressedSize;
  v17 = v3;
  v4 = stringForObjectFormatCode(self->_thumbFormat);
  thumbCompressedSize = self->_thumbCompressedSize;
  thumbPixWidth = self->_thumbPixWidth;
  thumbPixHeight = self->_thumbPixHeight;
  imagePixWidth = self->_imagePixWidth;
  imagePixHeight = self->_imagePixHeight;
  imageBitDepth = self->_imageBitDepth;
  parentObject = self->_parentObject;
  v12 = stringForAssociationType(self->_associationType);
  modificationDate = self->_modificationDate;
  v14 = [v21 stringWithFormat:@"<PTPObjectInfoDataset %p>{\n  _objectHandle:            0x%08lX\n  _storageID:            0x%08lX\n  _objectFormat:         %@\n  _protectionStatus:     %@\n  _objectCompressedSize: %llu\n  _thumbFormat:          %@\n  _thumbCompressedSize:  %lu\n  _thumbPixWidth:        %lu\n  _thumbPixHeight:       %lu\n  _imagePixWidth:        %lu\n  _imagePixHeight:       %lu\n  _imageBitDepth:        %lu\n  _parentObject:         0x%08lX\n  _associationType:      %@\n  _associationDesc:      0x%08lX\n  _sequenceNumber:       %lu\n  _filename:             %@\n  _captureDate:          %@\n  _modificationDate:     %@\n  _keywords:             %@\n}", self, objectHandle, storageID, v18, v17, objectCompressedSize, v4, thumbCompressedSize, thumbPixWidth, thumbPixHeight, imagePixWidth, imagePixHeight, imageBitDepth, parentObject, v12, self->_associationDesc, self->_sequenceNumber, self->_filename, self->_captureDate, modificationDate, self->_keywords];

  return v14;
}

- (unsigned)objectCompressedSize
{
  if (HIDWORD(self->_objectCompressedSize))
  {
    return -1;
  }

  else
  {
    return self->_objectCompressedSize;
  }
}

- (id)keywords
{
  v2 = [(NSMutableString *)self->_keywords copy];

  return v2;
}

- (void)setKeywords:(id)a3
{
  v6 = a3;
  if (([(NSMutableString *)self->_keywords isEqualToString:?]& 1) == 0)
  {
    v4 = [v6 mutableCopy];
    keywords = self->_keywords;
    self->_keywords = v4;
  }
}

- (void)addCustomKeyword:(id)a3 withIdentifier:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (v13 && v6)
  {
    if (!self->_keywords)
    {
      v7 = objc_alloc_init(MEMORY[0x29EDBA050]);
      keywords = self->_keywords;
      self->_keywords = v7;
    }

    v9 = [v13 length];
    v10 = [v6 length];
    if ((v9 + v10 + [(NSMutableString *)self->_keywords length]+ 3) <= 0xFF)
    {
      v11 = [(NSMutableString *)self->_keywords length];
      v12 = @"&";
      if (!v11)
      {
        v12 = &stru_2A253D090;
      }

      [(NSMutableString *)self->_keywords appendFormat:@"%@%@^%@", v12, v6, v13];
    }
  }
}

- (id)relatedUUID
{
  v16 = *MEMORY[0x29EDCA608];
  if (!self->_relatedUUID)
  {
    v3 = strstr([(NSMutableString *)self->_keywords UTF8String], "RUUID^");
    if (v3 && (v4 = v3, strlen(v3) >= 0x2A))
    {
      __dst[36] = 0;
      strncpy(__dst, v4 + 6, 0x24uLL);
      v5 = objc_alloc(MEMORY[0x29EDBA140]);
      v6 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:__dst];
      v7 = [v5 initWithUUIDString:v6];
      relatedUUID = self->_relatedUUID;
      self->_relatedUUID = v7;
    }

    else
    {
      v9 = [MEMORY[0x29EDBA140] UUID];
      v10 = [v9 copy];
      v11 = self->_relatedUUID;
      self->_relatedUUID = v10;
    }
  }

  v12 = self->_relatedUUID;
  v13 = *MEMORY[0x29EDCA608];

  return v12;
}

- (int64_t)intervalSince1970
{
  result = self->_intervalSince1970;
  if (!result)
  {
    result = ICTimeIntervalSince1970FromPTPString(self->_captureDate);
    self->_intervalSince1970 = result;
  }

  return result;
}

@end