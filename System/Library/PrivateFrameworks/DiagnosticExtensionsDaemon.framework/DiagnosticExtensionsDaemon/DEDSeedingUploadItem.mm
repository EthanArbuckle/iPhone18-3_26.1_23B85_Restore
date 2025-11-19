@interface DEDSeedingUploadItem
+ (id)itemAtPath:(id)a3 enclosedFilename:(id)a4 extensionID:(id)a5;
- (id)description;
- (id)publicDescription;
@end

@implementation DEDSeedingUploadItem

+ (id)itemAtPath:(id)a3 enclosedFilename:(id)a4 extensionID:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(DEDSeedingUploadItem);
  v11 = v10;
  if (v10)
  {
    [(DEDAttachmentItem *)v10 setDisplayName:v8];
    [(DEDAttachmentItem *)v11 setAttachedPath:v7];
    [(DEDSeedingUploadItem *)v11 setExtensionID:v9];
    v12 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = [v7 path];
    v14 = [v12 attributesOfItemAtPath:v13 error:0];
    v15 = [v14 fileSize];

    v16 = [MEMORY[0x277CCABB0] numberWithLongLong:v15];
    [(DEDAttachmentItem *)v11 setFileSize:v16];

    [(DEDSeedingUploadItem *)v11 setBytesUploaded:0];
    [(DEDSeedingUploadItem *)v11 setCompleted:0];
  }

  return v11;
}

- (id)publicDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(DEDAttachmentItem *)self attachedPath];
  v5 = [v4 path];
  v6 = [(DEDAttachmentItem *)self fileSize];
  v7 = [v3 stringWithFormat:@"path: [%@] size: [%lu]", v5, objc_msgSend(v6, "longValue")];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = DEDSeedingUploadItem;
  v4 = [(DEDAttachmentItem *)&v9 description];
  v5 = [(DEDSeedingUploadItem *)self extensionID];
  v6 = [(DEDAttachmentItem *)self attachedPath];
  v7 = [v3 stringWithFormat:@"%@: %@ - %@", v4, v5, v6];

  return v7;
}

@end