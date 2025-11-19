@interface MBDeviceTransferFileMetadata
- (MBDeviceTransferFileMetadata)initWithDictionary:(id)a3 error:(id *)a4;
- (MBDeviceTransferFileMetadata)initWithFromPath:(id)a3 toRelativePath:(id)a4;
- (id)dictionaryRepresentation;
@end

@implementation MBDeviceTransferFileMetadata

- (MBDeviceTransferFileMetadata)initWithFromPath:(id)a3 toRelativePath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    __assert_rtn("[MBDeviceTransferFileMetadata initWithFromPath:toRelativePath:]", "MBDeviceTransferFileMetadata.m", 21, "fromPath");
  }

  v8 = v7;
  if (!v7)
  {
    __assert_rtn("[MBDeviceTransferFileMetadata initWithFromPath:toRelativePath:]", "MBDeviceTransferFileMetadata.m", 22, "relativePath");
  }

  v17 = 0;
  v9 = [MBProtectionClassUtils getWithPath:v6 error:&v17];
  v10 = v17;
  v16.receiver = self;
  v16.super_class = MBDeviceTransferFileMetadata;
  v11 = [(MBDeviceTransferFileMetadata *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_relativePath, a4);
    v13 = [NSNumber numberWithUnsignedChar:v9];
    protectionClass = v12->_protectionClass;
    v12->_protectionClass = v13;
  }

  return v12;
}

- (MBDeviceTransferFileMetadata)initWithDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = MBDeviceTransferFileMetadata;
  v7 = [(MBDeviceTransferFileMetadata *)&v13 init];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"MBRelativePath"];
    relativePath = v7->_relativePath;
    v7->_relativePath = v8;

    v10 = [v6 objectForKeyedSubscript:@"MBProtectionClass"];
    protectionClass = v7->_protectionClass;
    v7->_protectionClass = v10;

    if (!v7->_relativePath || !v7->_protectionClass)
    {
      if (a4)
      {
        *a4 = [MBError errorWithCode:11 description:@"Failed to decode MBDeviceTransferFileMetadata from dictionary"];
      }

      v7 = 0;
    }
  }

  return v7;
}

- (id)dictionaryRepresentation
{
  v7[0] = @"MBRelativePath";
  v3 = [(MBDeviceTransferFileMetadata *)self relativePath];
  v7[1] = @"MBProtectionClass";
  v8[0] = v3;
  v4 = [(MBDeviceTransferFileMetadata *)self protectionClass];
  v8[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

@end