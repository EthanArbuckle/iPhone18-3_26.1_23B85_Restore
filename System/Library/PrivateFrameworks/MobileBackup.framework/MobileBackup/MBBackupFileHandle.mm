@interface MBBackupFileHandle
- (BOOL)_isModifiedSince:(int64_t)since error:(id *)error;
- (BOOL)isSQLiteFile;
- (BOOL)recordMetadataWithSHA256Data:(id)data error:(id *)error;
- (MBBackupFileHandle)initWithEngine:(id)engine fileHandle:(id)handle file:(id)file;
- (int64_t)readWithBytes:(void *)bytes length:(unint64_t)length error:(id *)error;
@end

@implementation MBBackupFileHandle

- (MBBackupFileHandle)initWithEngine:(id)engine fileHandle:(id)handle file:(id)file
{
  engineCopy = engine;
  fileCopy = file;
  v19.receiver = self;
  v19.super_class = MBBackupFileHandle;
  v11 = [(MBFileHandleProxy *)&v19 initWithFileHandle:handle];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_engine, engine);
    objc_storeStrong(&v12->_file, file);
    domain = [fileCopy domain];
    shouldDigest = [domain shouldDigest];

    if (shouldDigest)
    {
      v15 = objc_alloc_init(MBDigestSHA1);
      digest = v12->_digest;
      v12->_digest = v15;
    }

    +[NSDate timeIntervalSinceReferenceDate];
    v12->_startTime = v17;
    v12->_shouldCheckForModifications = [engineCopy isFinalRetry] ^ 1;
  }

  return v12;
}

- (BOOL)isSQLiteFile
{
  fileHandle = [(MBFileHandleProxy *)self fileHandle];
  isSQLiteFile = [fileHandle isSQLiteFile];

  return isSQLiteFile;
}

- (BOOL)_isModifiedSince:(int64_t)since error:(id *)error
{
  engine = self->_engine;
  v10 = 0;
  v7 = [(MBDriveBackupEngine *)engine isModifiedSince:since reason:&v10];
  v8 = v10;
  if (v7)
  {
    if (error)
    {
      *error = [MBError errorWithCode:9 format:@"File modified while being uploaded"];
    }

    [(MBDriveBackupEngine *)self->_engine fileModifiedWhileUploadingFile:self->_file reason:v8];
  }

  return v7;
}

- (BOOL)recordMetadataWithSHA256Data:(id)data error:(id *)error
{
  dataCopy = data;
  memset(v46, 0, sizeof(v46));
  fileHandle = [(MBFileHandleProxy *)self fileHandle];
  v8 = [fileHandle statWithBuffer:v46 error:error];

  if (!v8)
  {
    goto LABEL_20;
  }

  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  if (!MBBackwardsCompatibleMBNodeFromStat(v46, &v41, error))
  {
    goto LABEL_20;
  }

  [(MBFile *)self->_file setNode:&v41];
  if (self->_shouldCheckForModifications && [(MBBackupFileHandle *)self _isModifiedSince:*(&v42 + 1) error:error])
  {
    goto LABEL_20;
  }

  domain = [(MBFile *)self->_file domain];
  shouldDigest = [domain shouldDigest];

  if (shouldDigest)
  {
    if (dataCopy)
    {
      [(MBFile *)self->_file setDigest:dataCopy];
    }

    else
    {
      final = [(MBDigest *)self->_digest final];
      [(MBFile *)self->_file setDigest:final];
    }
  }

  fileHandle2 = [(MBFileHandleProxy *)self fileHandle];
  -[MBFile setProtectionClass:](self->_file, "setProtectionClass:", +[MBProtectionClassUtils getWithFD:error:](MBProtectionClassUtils, "getWithFD:error:", [fileHandle2 fd], error));

  if ([(MBFile *)self->_file protectionClass]== 255)
  {
    goto LABEL_20;
  }

  fileHandle3 = [(MBFileHandleProxy *)self fileHandle];
  v14 = +[MBExtendedAttributes attributesForFD:error:](MBExtendedAttributes, "attributesForFD:error:", [fileHandle3 fd], error);
  [(MBFile *)self->_file setExtendedAttributes:v14];

  extendedAttributes = [(MBFile *)self->_file extendedAttributes];

  if (!extendedAttributes)
  {
LABEL_20:
    v34 = 0;
  }

  else
  {
    extendedAttributes2 = [(MBFile *)self->_file extendedAttributes];
    v17 = [MBExtendedAttributes sizeOfAttributes:extendedAttributes2];

    if (v17 >= 0x801)
    {
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        absolutePath = [(MBFile *)self->_file absolutePath];
        *buf = 134218498;
        v48 = v17;
        v49 = 1024;
        *v50 = 2048;
        *&v50[4] = 2112;
        *&v50[6] = absolutePath;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Extended attributes size greater than supported (%lu > %d): %@", buf, 0x1Cu);

        [(MBFile *)self->_file absolutePath];
        v38 = v37 = 2048;
        v36 = v17;
        _MBLog();
      }

      [(MBFile *)self->_file setExtendedAttributes:&__NSDictionary0__struct];
    }

    if (MBIsInternalInstall())
    {
      v20 = HIDWORD(v41);
      v21 = MBGetDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        domain2 = [(MBFile *)self->_file domain];
        relativePath = [(MBFile *)self->_file relativePath];
        v24 = MBNodeAsString(&v41);
        v25 = (v20 >> 30) & 1;
        snapshotManifestDB = [(MBDriveBackupEngine *)self->_engine snapshotManifestDB];
        path = [snapshotManifestDB path];
        *buf = 138413314;
        v48 = domain2;
        v49 = 2112;
        *v50 = relativePath;
        *&v50[8] = 2112;
        *&v50[10] = v24;
        v51 = 1024;
        v52 = v25;
        v53 = 2112;
        v54 = path;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Adding file %@:%@ with mbNode %@ (dataless:%d) to manifest at %@", buf, 0x30u);

        domain3 = [(MBFile *)self->_file domain];
        relativePath2 = [(MBFile *)self->_file relativePath];
        v30 = MBNodeAsString(&v41);
        snapshotManifestDB2 = [(MBDriveBackupEngine *)self->_engine snapshotManifestDB];
        [snapshotManifestDB2 path];
        v40 = v39 = v25;
        v37 = relativePath2;
        v38 = v30;
        v36 = domain3;
        _MBLog();
      }
    }

    v32 = [(MBDriveBackupEngine *)self->_engine snapshotManifestDB:v36];
    v33 = [v32 addFile:self->_file flags:0];

    v34 = 1;
  }

  return v34;
}

- (int64_t)readWithBytes:(void *)bytes length:(unint64_t)length error:(id *)error
{
  fileHandle = [(MBFileHandleProxy *)self fileHandle];
  v10 = IsDatalessFault([fileHandle fd]);

  if ((v10 & 1) == 0)
  {
    fileHandle2 = [(MBFileHandleProxy *)self fileHandle];
    v12 = [fileHandle2 readWithBytes:bytes length:length error:error];

    if (v12)
    {
      if (v12 >= 1)
      {
        [(MBDigest *)self->_digest updateWithBytes:bytes length:v12];
        v13 = self->_bytesReadSinceLastModificationCheck + v12;
        self->_bytesReadSinceLastModificationCheck = v13;
        if (!self->_shouldCheckForModifications)
        {
          return v12;
        }

        if (v13 < 0x100000)
        {
          return v12;
        }

        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v35 = 0u;
        memset(buf, 0, sizeof(buf));
        fileHandle3 = [(MBFileHandleProxy *)self fileHandle];
        v15 = [fileHandle3 statWithBuffer:buf error:error];

        if (v15)
        {
          if (![(MBBackupFileHandle *)self _isModifiedSince:v36 error:error])
          {
            return v12;
          }
        }
      }

      return -1;
    }
  }

  if (![(MBBackupFileHandle *)self recordMetadataWithSHA256Data:0 error:error])
  {
    return -1;
  }

  v16 = MBGetDefaultLog();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);

  if (v17)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v19 = v18;
    startTime = self->_startTime;
    v21 = [(MBFile *)self->_file size];
    v22 = MBGetDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      snapshotPath = [(MBFile *)self->_file snapshotPath];
      file = self->_file;
      if (snapshotPath)
      {
        [(MBFile *)file snapshotPath];
      }

      else
      {
        [(MBFile *)file absolutePath];
      }
      v25 = ;
      fileID = [(MBFile *)self->_file fileID];
      string = [fileID string];
      *buf = 138413058;
      *&buf[4] = v25;
      *&buf[12] = 2112;
      *&buf[14] = string;
      *&buf[22] = 2048;
      *&buf[24] = v21;
      LOWORD(v35) = 2048;
      *(&v35 + 2) = (v21 / (v19 - startTime));
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Uploaded: %@ for %@ (%{bytes}llu at %{bytes}llu/s)", buf, 0x2Au);

      snapshotPath2 = [(MBFile *)self->_file snapshotPath];
      v29 = self->_file;
      if (snapshotPath2)
      {
        [(MBFile *)v29 snapshotPath];
      }

      else
      {
        [(MBFile *)v29 absolutePath];
      }
      v30 = ;
      fileID2 = [(MBFile *)self->_file fileID];
      string2 = [fileID2 string];
      _MBLog();
    }
  }

  return 0;
}

@end