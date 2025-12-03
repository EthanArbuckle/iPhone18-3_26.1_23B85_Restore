@interface NTKFaceSnapshotResultCachedFile
- (NTKFaceSnapshotResultCachedFile)initWithCoder:(id)coder;
- (NTKFaceSnapshotResultCachedFile)initWithFileURL:(id)l format:(int64_t)format;
- (id)_cachedFileForGalleryLiteStoredWithin:(id)within withError:(id *)error;
- (id)cachedFileForGalleryLiteUsingDevice:(id)device withError:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKFaceSnapshotResultCachedFile

- (void)encodeWithCoder:(id)coder
{
  fileFormat = self->_fileFormat;
  coderCopy = coder;
  [coderCopy encodeInteger:fileFormat forKey:@"format"];
  [coderCopy encodeObject:self->_fileURL forKey:@"fileURL"];
}

- (NTKFaceSnapshotResultCachedFile)initWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = [coderCopy decodeIntegerForKey:@"format"];
  if (selfCopy)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileURL"];
    if (v6)
    {
      self = [(NTKFaceSnapshotResultCachedFile *)self initWithFileURL:v6 format:selfCopy];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (NTKFaceSnapshotResultCachedFile)initWithFileURL:(id)l format:(int64_t)format
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = NTKFaceSnapshotResultCachedFile;
  v7 = [(NTKFaceSnapshotResultCachedFile *)&v11 init];
  if (v7)
  {
    v8 = [lCopy copy];
    fileURL = v7->_fileURL;
    v7->_fileURL = v8;

    v7->_fileFormat = format;
  }

  return v7;
}

- (id)cachedFileForGalleryLiteUsingDevice:(id)device withError:(id *)error
{
  v6 = [MEMORY[0x277CBEBC0] galleryLiteSupportDirectoryForDevice:device];
  v7 = [(NTKFaceSnapshotResultCachedFile *)self _cachedFileForGalleryLiteStoredWithin:v6 withError:error];

  return v7;
}

- (id)_cachedFileForGalleryLiteStoredWithin:(id)within withError:(id *)error
{
  withinCopy = within;
  fileURL = [(NTKFaceSnapshotResultCachedFile *)self fileURL];
  lastPathComponent = [fileURL lastPathComponent];
  v9 = [withinCopy URLByAppendingPathComponent:lastPathComponent];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __103__NTKFaceSnapshotResultCachedFile_ReplicationSupport___cachedFileForGalleryLiteStoredWithin_withError___block_invoke;
  block[3] = &unk_27877DB10;
  v10 = withinCopy;
  v31 = v10;
  if (_cachedFileForGalleryLiteStoredWithin_withError__onceToken != -1)
  {
    dispatch_once(&_cachedFileForGalleryLiteStoredWithin_withError__onceToken, block);
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v29 = 0;
  v12 = [defaultManager createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:&v29];
  v13 = v29;

  if ((v12 & 1) == 0)
  {
    goto LABEL_12;
  }

  selfCopy = self;
  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v28 = v13;
  v15 = [defaultManager2 copyItemAtURL:fileURL toURL:v9 error:&v28];
  v16 = v28;

  if ((v15 & 1) == 0)
  {
    defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
    v27 = v16;
    v18 = [defaultManager3 replaceItemAtURL:v9 withItemAtURL:fileURL backupItemName:0 options:0 resultingItemURL:0 error:&v27];
    v13 = v27;

    if (v18)
    {
      goto LABEL_7;
    }

LABEL_12:
    if (error)
    {
      v23 = v13;
      v22 = 0;
      *error = v13;
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

  v22 = [[NTKFaceSnapshotResultCachedFile alloc] initWithFileURL:v9 format:[(NTKFaceSnapshotResultCachedFile *)selfCopy fileFormat]];

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