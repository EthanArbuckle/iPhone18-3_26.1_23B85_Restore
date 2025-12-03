@interface DEDSeedingUploadItem
+ (id)itemAtPath:(id)path enclosedFilename:(id)filename extensionID:(id)d;
- (id)description;
- (id)publicDescription;
@end

@implementation DEDSeedingUploadItem

+ (id)itemAtPath:(id)path enclosedFilename:(id)filename extensionID:(id)d
{
  pathCopy = path;
  filenameCopy = filename;
  dCopy = d;
  v10 = objc_alloc_init(DEDSeedingUploadItem);
  v11 = v10;
  if (v10)
  {
    [(DEDAttachmentItem *)v10 setDisplayName:filenameCopy];
    [(DEDAttachmentItem *)v11 setAttachedPath:pathCopy];
    [(DEDSeedingUploadItem *)v11 setExtensionID:dCopy];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [pathCopy path];
    v14 = [defaultManager attributesOfItemAtPath:path error:0];
    fileSize = [v14 fileSize];

    v16 = [MEMORY[0x277CCABB0] numberWithLongLong:fileSize];
    [(DEDAttachmentItem *)v11 setFileSize:v16];

    [(DEDSeedingUploadItem *)v11 setBytesUploaded:0];
    [(DEDSeedingUploadItem *)v11 setCompleted:0];
  }

  return v11;
}

- (id)publicDescription
{
  v3 = MEMORY[0x277CCACA8];
  attachedPath = [(DEDAttachmentItem *)self attachedPath];
  path = [attachedPath path];
  fileSize = [(DEDAttachmentItem *)self fileSize];
  v7 = [v3 stringWithFormat:@"path: [%@] size: [%lu]", path, objc_msgSend(fileSize, "longValue")];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = DEDSeedingUploadItem;
  v4 = [(DEDAttachmentItem *)&v9 description];
  extensionID = [(DEDSeedingUploadItem *)self extensionID];
  attachedPath = [(DEDAttachmentItem *)self attachedPath];
  v7 = [v3 stringWithFormat:@"%@: %@ - %@", v4, extensionID, attachedPath];

  return v7;
}

@end