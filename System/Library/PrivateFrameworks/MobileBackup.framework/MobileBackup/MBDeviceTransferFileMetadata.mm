@interface MBDeviceTransferFileMetadata
- (MBDeviceTransferFileMetadata)initWithDictionary:(id)dictionary error:(id *)error;
- (MBDeviceTransferFileMetadata)initWithFromPath:(id)path toRelativePath:(id)relativePath;
- (id)dictionaryRepresentation;
@end

@implementation MBDeviceTransferFileMetadata

- (MBDeviceTransferFileMetadata)initWithFromPath:(id)path toRelativePath:(id)relativePath
{
  pathCopy = path;
  relativePathCopy = relativePath;
  if (!pathCopy)
  {
    __assert_rtn("[MBDeviceTransferFileMetadata initWithFromPath:toRelativePath:]", "MBDeviceTransferFileMetadata.m", 21, "fromPath");
  }

  v8 = relativePathCopy;
  if (!relativePathCopy)
  {
    __assert_rtn("[MBDeviceTransferFileMetadata initWithFromPath:toRelativePath:]", "MBDeviceTransferFileMetadata.m", 22, "relativePath");
  }

  v17 = 0;
  v9 = [MBProtectionClassUtils getWithPath:pathCopy error:&v17];
  v10 = v17;
  v16.receiver = self;
  v16.super_class = MBDeviceTransferFileMetadata;
  v11 = [(MBDeviceTransferFileMetadata *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_relativePath, relativePath);
    v13 = [NSNumber numberWithUnsignedChar:v9];
    protectionClass = v12->_protectionClass;
    v12->_protectionClass = v13;
  }

  return v12;
}

- (MBDeviceTransferFileMetadata)initWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = MBDeviceTransferFileMetadata;
  v7 = [(MBDeviceTransferFileMetadata *)&v13 init];
  if (v7)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"MBRelativePath"];
    relativePath = v7->_relativePath;
    v7->_relativePath = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"MBProtectionClass"];
    protectionClass = v7->_protectionClass;
    v7->_protectionClass = v10;

    if (!v7->_relativePath || !v7->_protectionClass)
    {
      if (error)
      {
        *error = [MBError errorWithCode:11 description:@"Failed to decode MBDeviceTransferFileMetadata from dictionary"];
      }

      v7 = 0;
    }
  }

  return v7;
}

- (id)dictionaryRepresentation
{
  v7[0] = @"MBRelativePath";
  relativePath = [(MBDeviceTransferFileMetadata *)self relativePath];
  v7[1] = @"MBProtectionClass";
  v8[0] = relativePath;
  protectionClass = [(MBDeviceTransferFileMetadata *)self protectionClass];
  v8[1] = protectionClass;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

@end