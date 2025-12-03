@interface WFDisk
- (NSString)wfName;
- (WFDisk)initWithCoder:(id)coder;
- (WFDisk)initWithDiskName:(id)name volumeUUID:(id)d metadata:(id)metadata fileRepresentation:(id)representation;
- (WFDisk)initWithDiskName:(id)name volumeUUID:(id)d metadata:(id)metadata rawURL:(id)l;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFDisk

- (WFDisk)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"diskName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"volumeUUID"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileRepresentation"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawURL"];

  if (v8)
  {
    v10 = [(WFDisk *)self initWithDiskName:v5 volumeUUID:v6 metadata:v7 fileRepresentation:v8];
  }

  else
  {
    v10 = [(WFDisk *)self initWithDiskName:v5 volumeUUID:v6 metadata:v7 rawURL:v9];
  }

  v11 = v10;

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  diskName = [(WFDisk *)self diskName];
  [coderCopy encodeObject:diskName forKey:@"diskName"];

  volumeUUID = [(WFDisk *)self volumeUUID];
  [coderCopy encodeObject:volumeUUID forKey:@"volumeUUID"];

  metadata = [(WFDisk *)self metadata];
  [coderCopy encodeObject:metadata forKey:@"metadata"];

  fileRepresentation = [(WFDisk *)self fileRepresentation];
  [coderCopy encodeObject:fileRepresentation forKey:@"fileRepresentation"];

  rawURL = [(WFDisk *)self rawURL];
  [coderCopy encodeObject:rawURL forKey:@"rawURL"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  fileRepresentation = [(WFDisk *)self fileRepresentation];

  v6 = [WFDisk allocWithZone:zone];
  diskName = [(WFDisk *)self diskName];
  volumeUUID = [(WFDisk *)self volumeUUID];
  metadata = [(WFDisk *)self metadata];
  if (fileRepresentation)
  {
    fileRepresentation2 = [(WFDisk *)self fileRepresentation];
    v11 = [(WFDisk *)v6 initWithDiskName:diskName volumeUUID:volumeUUID metadata:metadata fileRepresentation:fileRepresentation2];
  }

  else
  {
    fileRepresentation2 = [(WFDisk *)self rawURL];
    v11 = [(WFDisk *)v6 initWithDiskName:diskName volumeUUID:volumeUUID metadata:metadata rawURL:fileRepresentation2];
  }

  v12 = v11;

  return v12;
}

- (NSString)wfName
{
  diskName = [(WFDisk *)self diskName];
  v3 = diskName;
  if (diskName)
  {
    v4 = diskName;
  }

  else
  {
    v4 = @"Unknown Disk";
  }

  v5 = v4;

  return &v4->isa;
}

- (WFDisk)initWithDiskName:(id)name volumeUUID:(id)d metadata:(id)metadata rawURL:(id)l
{
  nameCopy = name;
  dCopy = d;
  metadataCopy = metadata;
  lCopy = l;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFDisk.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"rawURL"}];
  }

  v27.receiver = self;
  v27.super_class = WFDisk;
  v15 = [(WFDisk *)&v27 init];
  if (v15)
  {
    v16 = [nameCopy copy];
    diskName = v15->_diskName;
    v15->_diskName = v16;

    v18 = [dCopy copy];
    volumeUUID = v15->_volumeUUID;
    v15->_volumeUUID = v18;

    v20 = [metadataCopy copy];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = MEMORY[0x277CBEC10];
    }

    objc_storeStrong(&v15->_metadata, v22);

    fileRepresentation = v15->_fileRepresentation;
    v15->_fileRepresentation = 0;

    objc_storeStrong(&v15->_rawURL, l);
    v24 = v15;
  }

  return v15;
}

- (WFDisk)initWithDiskName:(id)name volumeUUID:(id)d metadata:(id)metadata fileRepresentation:(id)representation
{
  nameCopy = name;
  dCopy = d;
  metadataCopy = metadata;
  representationCopy = representation;
  if (!representationCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFDisk.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"fileRepresentation"}];
  }

  v28.receiver = self;
  v28.super_class = WFDisk;
  v15 = [(WFDisk *)&v28 init];
  if (v15)
  {
    v16 = [nameCopy copy];
    diskName = v15->_diskName;
    v15->_diskName = v16;

    v18 = [dCopy copy];
    volumeUUID = v15->_volumeUUID;
    v15->_volumeUUID = v18;

    v20 = [metadataCopy copy];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = MEMORY[0x277CBEC10];
    }

    objc_storeStrong(&v15->_metadata, v22);

    objc_storeStrong(&v15->_fileRepresentation, representation);
    originalURL = [representationCopy originalURL];
    rawURL = v15->_rawURL;
    v15->_rawURL = originalURL;

    v25 = v15;
  }

  return v15;
}

@end