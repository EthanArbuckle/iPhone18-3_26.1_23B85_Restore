@interface NTKFaceSnapshotResultCachedFile
- (NTKFaceSnapshotResultCachedFile)initWithCoder:(id)a3;
- (NTKFaceSnapshotResultCachedFile)initWithFileURL:(id)a3 format:(int64_t)a4;
- (id)_cachedFileForGalleryLiteStoredWithin:(id)a3 withError:(id *)a4;
- (id)cachedFileForGalleryLiteUsingDevice:(id)a3 withError:(id *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKFaceSnapshotResultCachedFile

- (void)encodeWithCoder:(id)a3
{
  fileFormat = self->_fileFormat;
  v5 = a3;
  [v5 encodeInteger:fileFormat forKey:@"format"];
  [v5 encodeObject:self->_fileURL forKey:@"fileURL"];
}

- (NTKFaceSnapshotResultCachedFile)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"format"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fileURL"];
    if (v6)
    {
      self = [(NTKFaceSnapshotResultCachedFile *)self initWithFileURL:v6 format:v5];
      v5 = self;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (NTKFaceSnapshotResultCachedFile)initWithFileURL:(id)a3 format:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = NTKFaceSnapshotResultCachedFile;
  v7 = [(NTKFaceSnapshotResultCachedFile *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    fileURL = v7->_fileURL;
    v7->_fileURL = v8;

    v7->_fileFormat = a4;
  }

  return v7;
}

- (id)cachedFileForGalleryLiteUsingDevice:(id)a3 withError:(id *)a4
{
  v6 = [MEMORY[0x277CBEBC0] galleryLiteSupportDirectoryForDevice:a3];
  v7 = [(NTKFaceSnapshotResultCachedFile *)self _cachedFileForGalleryLiteStoredWithin:v6 withError:a4];

  return v7;
}

- (id)_cachedFileForGalleryLiteStoredWithin:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = [(NTKFaceSnapshotResultCachedFile *)self fileURL];
  v8 = [v7 lastPathComponent];
  v9 = [v6 URLByAppendingPathComponent:v8];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __103__NTKFaceSnapshotResultCachedFile_ReplicationSupport___cachedFileForGalleryLiteStoredWithin_withError___block_invoke;
  block[3] = &unk_27877DB10;
  v10 = v6;
  v31 = v10;
  if (_cachedFileForGalleryLiteStoredWithin_withError__onceToken != -1)
  {
    dispatch_once(&_cachedFileForGalleryLiteStoredWithin_withError__onceToken, block);
  }

  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v29 = 0;
  v12 = [v11 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:&v29];
  v13 = v29;

  if ((v12 & 1) == 0)
  {
    goto LABEL_12;
  }

  v25 = self;
  v14 = [MEMORY[0x277CCAA00] defaultManager];
  v28 = v13;
  v15 = [v14 copyItemAtURL:v7 toURL:v9 error:&v28];
  v16 = v28;

  if ((v15 & 1) == 0)
  {
    v17 = [MEMORY[0x277CCAA00] defaultManager];
    v27 = v16;
    v18 = [v17 replaceItemAtURL:v9 withItemAtURL:v7 backupItemName:0 options:0 resultingItemURL:0 error:&v27];
    v13 = v27;

    if (v18)
    {
      goto LABEL_7;
    }

LABEL_12:
    if (a4)
    {
      v23 = v13;
      v22 = 0;
      *a4 = v13;
    }

    else
    {
      v22 = 0;
    }

    goto LABEL_15;
  }

  v13 = v16;
LABEL_7:
  v26 = 0;
  v19 = NTKMarkFileAtURLAsPurgeable(v9, &v26);
  v20 = v26;
  if ((v19 & 1) == 0)
  {
    v21 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(NTKFaceSnapshotResultCachedFile(ReplicationSupport) *)v9 _cachedFileForGalleryLiteStoredWithin:v20 withError:v21];
    }
  }

  v22 = [[NTKFaceSnapshotResultCachedFile alloc] initWithFileURL:v9 format:[(NTKFaceSnapshotResultCachedFile *)v25 fileFormat]];

LABEL_15:

  return v22;
}

void __103__NTKFaceSnapshotResultCachedFile_ReplicationSupport___cachedFileForGalleryLiteStoredWithin_withError___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  v8 = 0;
  v5 = [v2 removeItemAtURL:v4 error:&v8];
  v6 = v8;

  if ((v5 & 1) == 0)
  {
    v7 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __103__NTKFaceSnapshotResultCachedFile_ReplicationSupport___cachedFileForGalleryLiteStoredWithin_withError___block_invoke_cold_1(v3, v6, v7);
    }
  }
}

void __103__NTKFaceSnapshotResultCachedFile_ReplicationSupport___cachedFileForGalleryLiteStoredWithin_withError___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_2(&dword_22D9C5000, a2, a3, "Removing snapshot result cache at %@ failed: %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

@end