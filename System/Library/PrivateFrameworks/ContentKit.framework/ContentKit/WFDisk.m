@interface WFDisk
- (NSString)wfName;
- (WFDisk)initWithCoder:(id)a3;
- (WFDisk)initWithDiskName:(id)a3 volumeUUID:(id)a4 metadata:(id)a5 fileRepresentation:(id)a6;
- (WFDisk)initWithDiskName:(id)a3 volumeUUID:(id)a4 metadata:(id)a5 rawURL:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFDisk

- (WFDisk)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"diskName"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"volumeUUID"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fileRepresentation"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rawURL"];

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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFDisk *)self diskName];
  [v4 encodeObject:v5 forKey:@"diskName"];

  v6 = [(WFDisk *)self volumeUUID];
  [v4 encodeObject:v6 forKey:@"volumeUUID"];

  v7 = [(WFDisk *)self metadata];
  [v4 encodeObject:v7 forKey:@"metadata"];

  v8 = [(WFDisk *)self fileRepresentation];
  [v4 encodeObject:v8 forKey:@"fileRepresentation"];

  v9 = [(WFDisk *)self rawURL];
  [v4 encodeObject:v9 forKey:@"rawURL"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(WFDisk *)self fileRepresentation];

  v6 = [WFDisk allocWithZone:a3];
  v7 = [(WFDisk *)self diskName];
  v8 = [(WFDisk *)self volumeUUID];
  v9 = [(WFDisk *)self metadata];
  if (v5)
  {
    v10 = [(WFDisk *)self fileRepresentation];
    v11 = [(WFDisk *)v6 initWithDiskName:v7 volumeUUID:v8 metadata:v9 fileRepresentation:v10];
  }

  else
  {
    v10 = [(WFDisk *)self rawURL];
    v11 = [(WFDisk *)v6 initWithDiskName:v7 volumeUUID:v8 metadata:v9 rawURL:v10];
  }

  v12 = v11;

  return v12;
}

- (NSString)wfName
{
  v2 = [(WFDisk *)self diskName];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"Unknown Disk";
  }

  v5 = v4;

  return &v4->isa;
}

- (WFDisk)initWithDiskName:(id)a3 volumeUUID:(id)a4 metadata:(id)a5 rawURL:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v14)
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"WFDisk.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"rawURL"}];
  }

  v27.receiver = self;
  v27.super_class = WFDisk;
  v15 = [(WFDisk *)&v27 init];
  if (v15)
  {
    v16 = [v11 copy];
    diskName = v15->_diskName;
    v15->_diskName = v16;

    v18 = [v12 copy];
    volumeUUID = v15->_volumeUUID;
    v15->_volumeUUID = v18;

    v20 = [v13 copy];
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

    objc_storeStrong(&v15->_rawURL, a6);
    v24 = v15;
  }

  return v15;
}

- (WFDisk)initWithDiskName:(id)a3 volumeUUID:(id)a4 metadata:(id)a5 fileRepresentation:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v14)
  {
    v27 = [MEMORY[0x277CCA890] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"WFDisk.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"fileRepresentation"}];
  }

  v28.receiver = self;
  v28.super_class = WFDisk;
  v15 = [(WFDisk *)&v28 init];
  if (v15)
  {
    v16 = [v11 copy];
    diskName = v15->_diskName;
    v15->_diskName = v16;

    v18 = [v12 copy];
    volumeUUID = v15->_volumeUUID;
    v15->_volumeUUID = v18;

    v20 = [v13 copy];
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

    objc_storeStrong(&v15->_fileRepresentation, a6);
    v23 = [v14 originalURL];
    rawURL = v15->_rawURL;
    v15->_rawURL = v23;

    v25 = v15;
  }

  return v15;
}

@end