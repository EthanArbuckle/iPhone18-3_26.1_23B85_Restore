@interface PTPStorageInfoDataset
- (NSMutableData)content;
- (PTPStorageInfoDataset)init;
- (PTPStorageInfoDataset)initWithData:(id)data;
- (PTPStorageInfoDataset)initWithMutableData:(id)data;
- (id)description;
- (void)setContent:(id)content;
- (void)setStorageDescription:(id)description;
- (void)setVolumeLabel:(id)label;
- (void)updateContent;
@end

@implementation PTPStorageInfoDataset

- (PTPStorageInfoDataset)init
{
  v6.receiver = self;
  v6.super_class = PTPStorageInfoDataset;
  v2 = [(PTPStorageInfoDataset *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x29EDB8DF8]) initWithCapacity:28];
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
  v12 = bytes;
  self->_storageType = ReadUInt16MaxSize(&v12, bytes + v7);
  self->_filesystemType = ReadUInt16MaxSize(&v12, bytes + v7);
  self->_accessCapability = ReadUInt16MaxSize(&v12, bytes + v7);
  self->_maxCapacity = ReadUInt64MaxSize(&v12, bytes + v7);
  self->_freeSpaceInBytes = ReadUInt64MaxSize(&v12, bytes + v7);
  self->_freeSpaceInImages = ReadUInt32MaxSize(&v12, bytes + v7);
  v8 = CopyUnicodeStringWithLengthByteFromBufferMaxSize(&v12, bytes + v7);
  storageDescription = self->_storageDescription;
  self->_storageDescription = v8;

  v10 = CopyUnicodeStringWithLengthByteFromBufferMaxSize(&v12, bytes + v7);
  volumeLabel = self->_volumeLabel;
  self->_volumeLabel = v10;
}

- (PTPStorageInfoDataset)initWithData:(id)data
{
  dataCopy = data;
  v8.receiver = self;
  v8.super_class = PTPStorageInfoDataset;
  v5 = [(PTPStorageInfoDataset *)&v8 init];
  if (v5)
  {
    if ([dataCopy length] < 0x1C)
    {

      v5 = 0;
    }

    else
    {
      v6 = [dataCopy mutableCopy];
      [(PTPStorageInfoDataset *)v5 setContent:v6];

      v5->_readOnlyObject = 1;
    }
  }

  return v5;
}

- (PTPStorageInfoDataset)initWithMutableData:(id)data
{
  dataCopy = data;
  v7.receiver = self;
  v7.super_class = PTPStorageInfoDataset;
  v5 = [(PTPStorageInfoDataset *)&v7 init];
  if (v5)
  {
    if ([dataCopy length] < 0x1C)
    {

      v5 = 0;
    }

    else
    {
      [(PTPStorageInfoDataset *)v5 setContent:dataCopy];
      v5->_readOnlyObject = 0;
    }
  }

  return v5;
}

- (void)updateContent
{
  v3 = [(NSString *)self->_storageDescription length];
  v4 = [(NSString *)self->_volumeLabel length];
  if (self->_dirty && !self->_readOnlyObject)
  {
    v5 = 2 * v4 + 2;
    v6 = 2 * v3 + 30;
    if (!v3)
    {
      v6 = 28;
    }

    if (!v4)
    {
      v5 = 0;
    }

    [(NSMutableData *)self->_content setLength:v5 + v6];
    mutableBytes = [(NSMutableData *)self->_content mutableBytes];
    WriteUInt16(&mutableBytes, self->_storageType);
    WriteUInt16(&mutableBytes, self->_filesystemType);
    WriteUInt16(&mutableBytes, self->_accessCapability);
    WriteUInt64(&mutableBytes, self->_maxCapacity);
    WriteUInt64(&mutableBytes, self->_freeSpaceInBytes);
    WriteUInt32(&mutableBytes, self->_freeSpaceInImages);
    WriteUnicodeStringWithLengthByteToBuffer(&mutableBytes, self->_storageDescription);
    WriteUnicodeStringWithLengthByteToBuffer(&mutableBytes, self->_volumeLabel);
  }
}

- (NSMutableData)content
{
  [(PTPStorageInfoDataset *)self updateContent];
  content = self->_content;

  return content;
}

- (id)description
{
  v3 = [MEMORY[0x29EDBA050] stringWithFormat:@"<PTPStorageInfoDataset %p>{\n  _storageType:        ", self];
  v4 = stringForStorageType(self->_storageType);
  [v3 appendFormat:@"%@\n  _filesystemType:     ", v4];

  v5 = stringForFilesystemType(self->_filesystemType);
  [v3 appendFormat:@"%@\n  _accessCapability:   ", v5];

  v6 = stringForAccessCapability(self->_accessCapability);
  [v3 appendFormat:@"%@\n  _maxCapacity:        %llu\n  _freeSpaceInBytes:   %llu\n  _freeSpaceInImages:  %lu\n  _storageDescription: %@\n  _volumeLabel:        %@\n}", v6, self->_maxCapacity, self->_freeSpaceInBytes, self->_freeSpaceInImages, self->_storageDescription, self->_volumeLabel];

  return v3;
}

- (void)setStorageDescription:(id)description
{
  descriptionCopy = description;
  p_storageDescription = &self->_storageDescription;
  if (self->_storageDescription != descriptionCopy)
  {
    v7 = descriptionCopy;
    objc_storeStrong(p_storageDescription, description);
    descriptionCopy = v7;
    self->_dirty = 1;
  }

  MEMORY[0x2A1C71028](p_storageDescription, descriptionCopy);
}

- (void)setVolumeLabel:(id)label
{
  labelCopy = label;
  p_volumeLabel = &self->_volumeLabel;
  if (self->_volumeLabel != labelCopy)
  {
    v7 = labelCopy;
    objc_storeStrong(p_volumeLabel, label);
    labelCopy = v7;
    self->_dirty = 1;
  }

  MEMORY[0x2A1C71028](p_volumeLabel, labelCopy);
}

@end