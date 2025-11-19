@interface MBBackupFileHandle
- (BOOL)_isModifiedSince:(int64_t)a3 error:(id *)a4;
- (BOOL)isSQLiteFile;
- (BOOL)recordMetadataWithSHA256Data:(id)a3 error:(id *)a4;
- (MBBackupFileHandle)initWithEngine:(id)a3 fileHandle:(id)a4 file:(id)a5;
- (int64_t)readWithBytes:(void *)a3 length:(unint64_t)a4 error:(id *)a5;
@end

@implementation MBBackupFileHandle

- (MBBackupFileHandle)initWithEngine:(id)a3 fileHandle:(id)a4 file:(id)a5
{
  v9 = a3;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = MBBackupFileHandle;
  v11 = [(MBFileHandleProxy *)&v19 initWithFileHandle:a4];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_engine, a3);
    objc_storeStrong(&v12->_file, a5);
    v13 = [v10 domain];
    v14 = [v13 shouldDigest];

    if (v14)
    {
      v15 = objc_alloc_init(MBDigestSHA1);
      digest = v12->_digest;
      v12->_digest = v15;
    }

    +[NSDate timeIntervalSinceReferenceDate];
    v12->_startTime = v17;
    v12->_shouldCheckForModifications = [v9 isFinalRetry] ^ 1;
  }

  return v12;
}

- (BOOL)isSQLiteFile
{
  v2 = [(MBFileHandleProxy *)self fileHandle];
  v3 = [v2 isSQLiteFile];

  return v3;
}

- (BOOL)_isModifiedSince:(int64_t)a3 error:(id *)a4
{
  engine = self->_engine;
  v10 = 0;
  v7 = [(MBDriveBackupEngine *)engine isModifiedSince:a3 reason:&v10];
  v8 = v10;
  if (v7)
  {
    if (a4)
    {
      *a4 = [MBError errorWithCode:9 format:@"File modified while being uploaded"];
    }

    [(MBDriveBackupEngine *)self->_engine fileModifiedWhileUploadingFile:self->_file reason:v8];
  }

  return v7;
}

- (BOOL)recordMetadataWithSHA256Data:(id)a3 error:(id *)a4
{
  v6 = a3;
  memset(v46, 0, sizeof(v46));
  v7 = [(MBFileHandleProxy *)self fileHandle];
  v8 = [v7 statWithBuffer:v46 error:a4];

  if (!v8)
  {
    goto LABEL_20;
  }

  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  if (!MBBackwardsCompatibleMBNodeFromStat(v46, &v41, a4))
  {
    goto LABEL_20;
  }

  [(MBFile *)self->_file setNode:&v41];
  if (self->_shouldCheckForModifications && [(MBBackupFileHandle *)self _isModifiedSince:*(&v42 + 1) error:a4])
  {
    goto LABEL_20;
  }

  v9 = [(MBFile *)self->_file domain];
  v10 = [v9 shouldDigest];

  if (v10)
  {
    if (v6)
    {
      [(MBFile *)self->_file setDigest:v6];
    }

    else
    {
      v11 = [(MBDigest *)self->_digest final];
      [(MBFile *)self->_file setDigest:v11];
    }
  }

  v12 = [(MBFileHandleProxy *)self fileHandle];
  -[MBFile setProtectionClass:](self->_file, "setProtectionClass:", +[MBProtectionClassUtils getWithFD:error:](MBProtectionClassUtils, "getWithFD:error:", [v12 fd], a4));

  if ([(MBFile *)self->_file protectionClass]== 255)
  {
    goto LABEL_20;
  }

  v13 = [(MBFileHandleProxy *)self fileHandle];
  v14 = +[MBExtendedAttributes attributesForFD:error:](MBExtendedAttributes, "attributesForFD:error:", [v13 fd], a4);
  [(MBFile *)self->_file setExtendedAttributes:v14];

  v15 = [(MBFile *)self->_file extendedAttributes];

  if (!v15)
  {
LABEL_20:
    v34 = 0;
  }

  else
  {
    v16 = [(MBFile *)self->_file extendedAttributes];
    v17 = [MBExtendedAttributes sizeOfAttributes:v16];

    if (v17 >= 0x801)
    {
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [(MBFile *)self->_file absolutePath];
        *buf = 134218498;
        v48 = v17;
        v49 = 1024;
        *v50 = 2048;
        *&v50[4] = 2112;
        *&v50[6] = v19;
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
        v22 = [(MBFile *)self->_file domain];
        v23 = [(MBFile *)self->_file relativePath];
        v24 = MBNodeAsString(&v41);
        v25 = (v20 >> 30) & 1;
        v26 = [(MBDriveBackupEngine *)self->_engine snapshotManifestDB];
        v27 = [v26 path];
        *buf = 138413314;
        v48 = v22;
        v49 = 2112;
        *v50 = v23;
        *&v50[8] = 2112;
        *&v50[10] = v24;
        v51 = 1024;
        v52 = v25;
        v53 = 2112;
        v54 = v27;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Adding file %@:%@ with mbNode %@ (dataless:%d) to manifest at %@", buf, 0x30u);

        v28 = [(MBFile *)self->_file domain];
        v29 = [(MBFile *)self->_file relativePath];
        v30 = MBNodeAsString(&v41);
        v31 = [(MBDriveBackupEngine *)self->_engine snapshotManifestDB];
        [v31 path];
        v40 = v39 = v25;
        v37 = v29;
        v38 = v30;
        v36 = v28;
        _MBLog();
      }
    }

    v32 = [(MBDriveBackupEngine *)self->_engine snapshotManifestDB:v36];
    v33 = [v32 addFile:self->_file flags:0];

    v34 = 1;
  }

  return v34;
}

- (int64_t)readWithBytes:(void *)a3 length:(unint64_t)a4 error:(id *)a5
{
  v9 = [(MBFileHandleProxy *)self fileHandle];
  v10 = IsDatalessFault([v9 fd]);

  if ((v10 & 1) == 0)
  {
    v11 = [(MBFileHandleProxy *)self fileHandle];
    v12 = [v11 readWithBytes:a3 length:a4 error:a5];

    if (v12)
    {
      if (v12 >= 1)
      {
        [(MBDigest *)self->_digest updateWithBytes:a3 length:v12];
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
        v14 = [(MBFileHandleProxy *)self fileHandle];
        v15 = [v14 statWithBuffer:buf error:a5];

        if (v15)
        {
          if (![(MBBackupFileHandle *)self _isModifiedSince:v36 error:a5])
          {
            return v12;
          }
        }
      }

      return -1;
    }
  }

  if (![(MBBackupFileHandle *)self recordMetadataWithSHA256Data:0 error:a5])
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
      v23 = [(MBFile *)self->_file snapshotPath];
      file = self->_file;
      if (v23)
      {
        [(MBFile *)file snapshotPath];
      }

      else
      {
        [(MBFile *)file absolutePath];
      }
      v25 = ;
      v26 = [(MBFile *)self->_file fileID];
      v27 = [v26 string];
      *buf = 138413058;
      *&buf[4] = v25;
      *&buf[12] = 2112;
      *&buf[14] = v27;
      *&buf[22] = 2048;
      *&buf[24] = v21;
      LOWORD(v35) = 2048;
      *(&v35 + 2) = (v21 / (v19 - startTime));
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Uploaded: %@ for %@ (%{bytes}llu at %{bytes}llu/s)", buf, 0x2Au);

      v28 = [(MBFile *)self->_file snapshotPath];
      v29 = self->_file;
      if (v28)
      {
        [(MBFile *)v29 snapshotPath];
      }

      else
      {
        [(MBFile *)v29 absolutePath];
      }
      v30 = ;
      v31 = [(MBFile *)self->_file fileID];
      v33 = [v31 string];
      _MBLog();
    }
  }

  return 0;
}

@end