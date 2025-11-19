@interface MBCKFile
+ (BOOL)shouldValidateFileEncoding;
+ (double)sqliteSpaceSavingsThreshold;
+ (id)fileIDFromRecordName:(id)a3;
+ (id)fileWithFileChange:(id)a3 manifest:(id)a4;
+ (id)fileWithMBFile:(id)a3 cache:(id)a4;
+ (id)fileWithMBFile:(id)a3 manifest:(id)a4;
+ (id)fileWithRecord:(id)a3 cache:(id)a4 manifest:(id)a5;
+ (id)fileWithRecord:(id)a3 cache:(id)a4 snapshot:(id)a5 domainName:(id)a6;
+ (id)newFromSqliteStatement:(sqlite3_stmt *)a3 atIndex:(int)a4;
+ (id)recordIDFromFileID:(id)a3;
- (BOOL)_createResourceCopyWithError:(id *)a3;
- (BOOL)_decryptWithOperationTracker:(id)a3 destination:(id)a4 device:(id)a5 error:(id *)a6;
- (BOOL)decodeWithFileAtPath:(id)a3 destinationDirectory:(id)a4 error:(id *)a5;
- (BOOL)fetchEncryptionKeyWithAccount:(id)a3 device:(id)a4 error:(id *)a5;
- (BOOL)hasResources;
- (BOOL)isEqual:(id)a3;
- (BOOL)isProtected;
- (BOOL)isSQLiteFile;
- (BOOL)refreshAttributesArchiveWithData:(id)a3 error:(id *)a4;
- (BOOL)refreshAttributesPlistWithData:(id)a3 error:(id *)a4;
- (BOOL)refreshAttributesWithData:(id)a3 error:(id *)a4;
- (BOOL)refreshFromCopyWithAccount:(id)a3 device:(id)a4 error:(id *)a5;
- (BOOL)refreshFromFilesystemWithAccount:(id)a3 device:(id)a4 error:(id *)a5;
- (BOOL)restoreAssetWithOperationTracker:(id)a3 destination:(id)a4 logger:(id)a5 cache:(id)a6 device:(id)a7 error:(id *)a8;
- (BOOL)restoreExtendedAttributesToDestination:(id)a3 withError:(id *)a4;
- (BOOL)shouldBeBackedUpIgnoringProtectionClass;
- (BOOL)stashAssetsToTemporaryDirectoryWithAccount:(id)a3 operationTracker:(id)a4 cache:(id)a5 device:(id)a6 error:(id *)a7;
- (BOOL)validateEncryptionKeyWithError:(id *)a3;
- (MBCKFile)initWithCoder:(id)a3;
- (MBCKFile)initWithDictionary:(id)a3 cache:(id)a4;
- (MBCKFile)initWithFileChange:(id)a3 manifest:(id)a4;
- (MBCKFile)initWithMBFile:(id)a3 cache:(id)a4;
- (MBCKFile)initWithMBFile:(id)a3 manifest:(id)a4;
- (MBCKFile)initWithRecord:(id)a3 cache:(id)a4;
- (MBCKFile)initWithRecord:(id)a3 cache:(id)a4 manifest:(id)a5;
- (MBCKFile)initWithRecord:(id)a3 cache:(id)a4 snapshot:(id)a5 domainName:(id)a6;
- (MBDomain)domain;
- (NSDictionary)extendedAttributes;
- (NSString)absolutePath;
- (NSString)assetPath;
- (NSString)description;
- (NSString)fileID;
- (NSString)fileTypeString;
- (NSString)keybagUUIDString;
- (id)_compactSQLiteDatabaseAtPath:(id)a3 temporaryDirectory:(id)a4 error:(id *)a5;
- (id)_copySQLiteDatabaseAtPath:(id)a3 temporaryDirectory:(id)a4 error:(id *)a5;
- (id)_getRecordIDString;
- (id)_scrubSQLiteDatabaseWithEngine:(id)a3 temporaryDirectory:(id)a4 error:(id *)a5;
- (id)aggregateDictionaryGroup;
- (id)asArchiveData;
- (id)attributeDataArchiveWithError:(id *)a3;
- (id)attributeDataHashWithAttributes:(id)a3 error:(id *)a4;
- (id)attributeDataPlistWithError:(id *)a3;
- (id)attributeDataTruncatedHashWithError:(id *)a3;
- (id)attributes;
- (id)fileIDWithHmacKey:(id)a3;
- (id)initFromArchiveData:(id)a3;
- (id)initFromPQLResultSet:(id)a3 error:(id *)a4;
- (id)keybagUUIDData;
- (id)recordRepresentation;
- (id)restoreState;
- (int)_createTemporarySQLiteCopyWithEngine:(id)a3 temporaryDirectory:(id)a4 error:(id *)a5;
- (int)prepareForUploadWithEngine:(id)a3 error:(id *)a4;
- (unint64_t)aggregateSize;
- (unint64_t)changeTypeForFullBackup:(BOOL)a3;
- (unint64_t)fileType;
- (unint64_t)hash;
- (unint64_t)sizeFromFileIDWithDefaultValue:(unint64_t)a3;
- (void)_removeResourceCopy;
- (void)_removeTemporaryCopy;
- (void)_setFileMissingEncryptionKeyForPath:(id)a3 account:(id)a4;
- (void)cleanupAfterUpload;
- (void)confirmFileWasModifiedOnDisk;
- (void)dealloc;
- (void)downloadContentsWithOperationTracker:(id)a3 completion:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)getNode:(id *)a3;
- (void)refreshWithDictionary:(id)a3;
- (void)refreshWithMBFile:(id)a3;
- (void)refreshWithRecord:(id)a3;
- (void)saveToCacheWithCompletion:(id)a3;
- (void)setAbsolutePath:(id)a3;
- (void)setDecodedAssetPath:(id)a3;
- (void)setFileID:(id)a3;
- (void)setStashedAssetPath:(id)a3;
- (void)setupWithDomain:(id)a3;
- (void)sqliteBind:(sqlite3_stmt *)a3 index:(int)a4;
@end

@implementation MBCKFile

+ (id)recordIDFromFileID:(id)a3
{
  v3 = a3;
  v4 = [[NSString alloc] initWithFormat:@"%@%@", @"F:", v3];

  v5 = [[CKRecordID alloc] initWithRecordName:v4];

  return v5;
}

+ (id)fileIDFromRecordName:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"F:"])
  {
    v4 = [v3 substringFromIndex:{objc_msgSend(@"F:", "length")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)fileWithMBFile:(id)a3 manifest:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MBCKFile alloc] initWithMBFile:v6 manifest:v5];

  return v7;
}

+ (id)fileWithMBFile:(id)a3 cache:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MBCKFile alloc] initWithMBFile:v6 cache:v5];

  return v7;
}

+ (id)fileWithFileChange:(id)a3 manifest:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MBCKFile alloc] initWithFileChange:v6 manifest:v5];

  return v7;
}

+ (id)fileWithRecord:(id)a3 cache:(id)a4 manifest:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[MBCKFile alloc] initWithRecord:v9 cache:v8 manifest:v7];

  return v10;
}

+ (id)fileWithRecord:(id)a3 cache:(id)a4 snapshot:(id)a5 domainName:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[MBCKFile alloc] initWithRecord:v12 cache:v11 snapshot:v10 domainName:v9];

  return v13;
}

- (MBCKFile)initWithMBFile:(id)a3 manifest:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    __assert_rtn("[MBCKFile initWithMBFile:manifest:]", "MBCKFile.m", 168, "file");
  }

  v8 = v7;
  if (!v7)
  {
    __assert_rtn("[MBCKFile initWithMBFile:manifest:]", "MBCKFile.m", 169, "manifest");
  }

  v9 = [v7 cache];
  v16.receiver = self;
  v16.super_class = MBCKFile;
  v10 = [(MBCKModel *)&v16 initWithRecord:0 cache:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_domain, a4);
    [(MBCKFile *)v10 refreshWithMBFile:v6];
    v11 = [v8 device];
    v12 = [v11 hmacKey];
    v13 = [(MBCKFile *)v10 fileIDWithHmacKey:v12];
    manifest = v10->_manifest;
    v10->_manifest = v13;
  }

  return v10;
}

- (MBCKFile)initWithMBFile:(id)a3 cache:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    __assert_rtn("[MBCKFile initWithMBFile:cache:]", "MBCKFile.m", 180, "file");
  }

  v8 = v7;
  if (!v7)
  {
    __assert_rtn("[MBCKFile initWithMBFile:cache:]", "MBCKFile.m", 181, "cache");
  }

  v12.receiver = self;
  v12.super_class = MBCKFile;
  v9 = [(MBCKModel *)&v12 initWithRecord:0 cache:v7];
  v10 = v9;
  if (v9)
  {
    [(MBCKFile *)v9 refreshWithMBFile:v6];
  }

  return v10;
}

- (MBCKFile)initWithFileChange:(id)a3 manifest:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    __assert_rtn("[MBCKFile initWithFileChange:manifest:]", "MBCKFile.m", 190, "fileChange");
  }

  v8 = v7;
  if (!v7)
  {
    __assert_rtn("[MBCKFile initWithFileChange:manifest:]", "MBCKFile.m", 191, "manifest");
  }

  v9 = [v7 cache];
  v26.receiver = self;
  v26.super_class = MBCKFile;
  v10 = [(MBCKModel *)&v26 initWithRecord:0 cache:v9];

  if (v10)
  {
    v11 = [v6 absolutePath];
    fileID = v10->_fileID;
    v10->_fileID = v11;

    v13 = [v6 relativePath];
    volumeType = v10->_volumeType;
    v10->_volumeType = v13;

    objc_storeStrong(&v10->_domain, a4);
    v15 = [v6 domain];
    v16 = [v15 name];
    v17 = *&v10->_mbNode.mode;
    *&v10->_mbNode.mode = v16;

    v18 = [v6 domain];
    *&v10->_is = [v18 volumeType];

    v19 = [v6 domain];
    domainName = v10->_domainName;
    v10->_domainName = v19;

    v21 = [v6 changeType];
    LOBYTE(v10->_restoreState) = v10->_restoreState & 0xEF | (16 * (v21 == 3));
    if (v21 != 3)
    {
      if (!v10->_fileID)
      {
        v22 = MBGetDefaultLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          v28 = "_absolutePath";
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "nil %s", buf, 0xCu);
          _MBLog();
        }
      }

      if (!v10->_domainName)
      {
        v23 = MBGetDefaultLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          v28 = "_domain";
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, "nil %s", buf, 0xCu);
          _MBLog();
        }
      }
    }

    BYTE6(v10->_mbNode.cloneID) = 4;
    LOBYTE(v10->_restoreState) |= 8u;
    resources = v10->_resources;
    v10->_resources = 0;

    LOBYTE(v10->_restoreState) &= ~4u;
  }

  return v10;
}

- (MBCKFile)initWithRecord:(id)a3 cache:(id)a4 manifest:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    __assert_rtn("[MBCKFile initWithRecord:cache:manifest:]", "MBCKFile.m", 214, "record");
  }

  if (!v9)
  {
    __assert_rtn("[MBCKFile initWithRecord:cache:manifest:]", "MBCKFile.m", 215, "cache");
  }

  v11 = v10;
  if (!v10)
  {
    __assert_rtn("[MBCKFile initWithRecord:cache:manifest:]", "MBCKFile.m", 216, "manifest");
  }

  v17.receiver = self;
  v17.super_class = MBCKFile;
  v12 = [(MBCKModel *)&v17 initWithRecord:v8 cache:v9];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_domain, a5);
    v14 = [v11 domainName];
    v15 = *&v13->_mbNode.mode;
    *&v13->_mbNode.mode = v14;

    LOBYTE(v13->_restoreState) &= ~4u;
  }

  return v13;
}

- (MBCKFile)initWithDictionary:(id)a3 cache:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    __assert_rtn("[MBCKFile initWithDictionary:cache:]", "MBCKFile.m", 227, "dictionary");
  }

  v8 = v7;
  if (!v7)
  {
    __assert_rtn("[MBCKFile initWithDictionary:cache:]", "MBCKFile.m", 228, "cache");
  }

  v12.receiver = self;
  v12.super_class = MBCKFile;
  v9 = [(MBCKModel *)&v12 initWithRecord:0 cache:v7];
  v10 = v9;
  if (v9)
  {
    [(MBCKFile *)v9 refreshWithDictionary:v6];
  }

  return v10;
}

- (MBCKFile)initWithRecord:(id)a3 cache:(id)a4 snapshot:(id)a5 domainName:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    __assert_rtn("[MBCKFile initWithRecord:cache:snapshot:domainName:]", "MBCKFile.m", 237, "record");
  }

  if (!v11)
  {
    __assert_rtn("[MBCKFile initWithRecord:cache:snapshot:domainName:]", "MBCKFile.m", 238, "cache");
  }

  if (!v12)
  {
    __assert_rtn("[MBCKFile initWithRecord:cache:snapshot:domainName:]", "MBCKFile.m", 239, "snapshot");
  }

  v14 = v13;
  if (!v13)
  {
    __assert_rtn("[MBCKFile initWithRecord:cache:snapshot:domainName:]", "MBCKFile.m", 240, "domainName");
  }

  v20.receiver = self;
  v20.super_class = MBCKFile;
  v15 = [(MBCKModel *)&v20 initWithRecord:v10 cache:v11];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(v15 + 18, a6);
    v17 = [v12 manifestForDomainName:*&v16->_mbNode.mode];
    domain = v16->_domain;
    v16->_domain = v17;
  }

  return v16;
}

- (MBCKFile)initWithRecord:(id)a3 cache:(id)a4
{
  v6 = [NSAssertionHandler currentHandler:a3];
  v7 = objc_opt_class();
  [v6 handleFailureInMethod:a2 object:self file:@"MBCKFile.m" lineNumber:250 description:{@"You must call -[%s initWithRecord:cache:manifest:domain:]", class_getName(v7)}];

  return 0;
}

- (void)setupWithDomain:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    __assert_rtn("[MBCKFile setupWithDomain:]", "MBCKFile.m", 257, "domain");
  }

  v6 = v5;
  objc_storeStrong(&self->_domainName, a3);
  *&self->_is = [v6 volumeType];
  if ([v6 hasRootPath])
  {
    v7 = [v6 rootPath];
    v8 = [(MBCKFile *)self relativePath];
    v9 = [v7 stringByAppendingPathComponent:v8];

    v10 = self;
    objc_sync_enter(v10);
    fileID = v10->_fileID;
    v10->_fileID = v9;

    LOBYTE(v10->_restoreState) &= ~2u;
    objc_sync_exit(v10);
  }

  else
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v14 = self;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Allowing file %@ in domain without root path %@", buf, 0x16u);
      _MBLog();
    }
  }
}

- (void)dealloc
{
  [(MBCKFile *)self cleanupAfterUpload];
  v3.receiver = self;
  v3.super_class = MBCKFile;
  [(MBCKFile *)&v3 dealloc];
}

- (NSString)description
{
  manifest = self->_manifest;
  if (!manifest)
  {
    manifest = @"PENDING (File is still being built)";
  }

  if ((self->_restoreState & 0x10) != 0)
  {
    v11 = manifest;
    v14 = objc_opt_class();
    Name = class_getName(v14);
    v7 = [(MBCKFile *)self domainName];
    v8 = [(MBCKFile *)self relativePath];
    v13 = [NSString stringWithFormat:@"<%s: %p id=%@, d=%@, rp=%@, t=%lu, pc=%d>", Name, self, v11, v7, v8, [(MBCKFile *)self fileType], [(MBCKFile *)self protectionClass]];;
  }

  else
  {
    v4 = manifest;
    flags = self->_mbNode.flags;
    v6 = objc_opt_class();
    v17 = class_getName(v6);
    v7 = [(MBCKFile *)self domainName];
    v8 = [(MBCKFile *)self relativePath];
    v9 = [(MBCKFile *)self fileType];
    v10 = [(MBCKFile *)self protectionClass];
    v11 = [(MBCKFile *)self modified];
    [(MBCKManifest *)v11 timeIntervalSince1970];
    v13 = [NSString stringWithFormat:@"<%s: %p id=%@, d=%@, rp=%@, t=%lu, pc=%d, mt=%.3f, m=0%o, o=%d, g=%d, f=0x%lx>", v17, self, v4, v7, v8, v9, v10, v12, WORD2(self->_mbNode.cloneID), [(MBCKFile *)self userID], [(MBCKFile *)self groupID], flags];;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(MBCKFile *)self domainName];
    v7 = [v5 domainName];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(MBCKFile *)self relativePath];
      v9 = [v5 relativePath];
      v10 = [v8 isEqualToString:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(MBCKFile *)self domainName];
  v4 = [v3 hash];
  v5 = [(MBCKFile *)self relativePath];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)refreshFromFilesystemWithAccount:(id)a3 device:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!a5)
  {
    __assert_rtn("[MBCKFile refreshFromFilesystemWithAccount:device:error:]", "MBCKFile.m", 306, "error");
  }

  v10 = v9;
  if (!v9)
  {
    __assert_rtn("[MBCKFile refreshFromFilesystemWithAccount:device:error:]", "MBCKFile.m", 307, "device");
  }

  if ((self->_restoreState & 0x10) != 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = [(MBCKFile *)self absolutePath];
    if ((MBNodeForPath(v11, &self->_mbNode, a5) & 1) == 0)
    {
      v15 = [MBError errnoForError:*a5];
      if (v15 == 2)
      {
        *a5 = [MBError errorWithCode:4 format:@"File not found"];
      }

      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *v26 = v11;
        *&v26[8] = 1024;
        *&v26[10] = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "MBNodeForPath() failed at %@: %{errno}d", buf, 0x12u);
        v23 = v11;
        v24 = v15;
        _MBLog();
      }

      goto LABEL_15;
    }

    self->_encryptionKey = self->_mbNode.inode;
    LOBYTE(self->_restoreState) &= ~0x10u;
    if ([(MBCKFile *)self fileType]== 2)
    {
      v12 = +[MBFileOperation symbolicLinkTargetWithPathFSR:error:](MBFileOperation, "symbolicLinkTargetWithPathFSR:error:", [v11 fileSystemRepresentation], a5);
      relativePath = self->_relativePath;
      self->_relativePath = v12;

      if (!self->_relativePath)
      {
LABEL_15:
        v14 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      if (!BYTE6(self->_mbNode.cloneID) && [(MBCKFile *)self isRegularFile])
      {
        v21 = MBGetDefaultLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = BYTE6(self->_mbNode.cloneID);
          *buf = 67109378;
          *v26 = v22;
          *&v26[4] = 2112;
          *&v26[6] = self;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Filesystem returned an invalid protection class %d for %@", buf, 0x12u);
          v23 = BYTE6(self->_mbNode.cloneID);
          v24 = self;
          _MBLog();
        }

        BYTE6(self->_mbNode.cloneID) = 4;
      }

      if (![(MBCKFile *)self fetchEncryptionKeyWithAccount:v8 device:v10 error:a5, v23, v24])
      {
        goto LABEL_15;
      }
    }
  }

  v14 = 1;
LABEL_16:
  v17 = [v10 hmacKey];
  v18 = [(MBCKFile *)self fileIDWithHmacKey:v17];
  manifest = self->_manifest;
  self->_manifest = v18;

  if (!v14 && !*a5)
  {
    __assert_rtn("[MBCKFile refreshFromFilesystemWithAccount:device:error:]", "MBCKFile.m", 354, "result || *error != nil");
  }

  return v14;
}

- (BOOL)refreshFromCopyWithAccount:(id)a3 device:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ((self->_restoreState & 0x10) == 0)
  {
    v10 = *&self->_contentEncodingMethod;
    if (v10)
    {
      memset(&v22, 0, sizeof(v22));
      v11 = lstat([v10 fileSystemRepresentation], &v22);
      v12 = v11 == 0;
      if (v11)
      {
        v13 = *__error();
        if (a5)
        {
          if (v13 == 2)
          {
            *a5 = [MBError errorWithCode:4 format:@"File not found"];
          }

          else
          {
            v17 = [(MBCKFile *)self absolutePath];
            *a5 = [MBError posixErrorWithCode:100 path:v17 format:@"Failed to stat file"];
          }
        }

        v14 = MBGetDefaultLog();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

        v18 = *&self->_contentEncodingMethod;
        v19 = [(MBCKFile *)self absolutePath];
        *buf = 138412802;
        v24 = v18;
        v25 = 2112;
        v26 = v19;
        v27 = 1024;
        v28 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to lstat file copy at %@ on behalf of %@: %{errno}d", buf, 0x1Cu);

        v20 = *&self->_contentEncodingMethod;
        manifest = [(MBCKFile *)self absolutePath];
        _MBLog();
      }

      else
      {
        if ((v22.st_mode & 0xF000) == 0x8000)
        {
          self->_mbNode.fileSize = v22.st_size;
        }

        if (![(MBCKFile *)self fetchEncryptionKeyWithAccount:v8 device:v9 error:a5])
        {
          v12 = 0;
          goto LABEL_17;
        }

        v14 = [v9 hmacKey];
        v15 = [(MBCKFile *)self fileIDWithHmacKey:v14];
        manifest = self->_manifest;
        self->_manifest = v15;
      }

LABEL_16:
      goto LABEL_17;
    }
  }

  v12 = 1;
LABEL_17:

  return v12;
}

- (void)refreshWithRecord:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [v4 encryptedValues];
  v7 = [v6 objectForKeyedSubscript:@"encryptedAttributes"];

  if (v7)
  {
    [(MBCKFile *)self refreshAttributesWithData:v7 error:0];
  }

  v8 = [v4 objectForKeyedSubscript:@"contents"];
  changeType = self->_changeType;
  self->_changeType = v8;

  v10 = [self->_changeType signature];
  linkTarget = self->_linkTarget;
  self->_linkTarget = v10;

  v12 = [v4 objectForKeyedSubscript:@"resources"];
  contentAsset = self->_contentAsset;
  self->_contentAsset = v12;

  v14 = [v4 objectForKeyedSubscript:@"resourcesSize"];

  if (v14)
  {
    v15 = [v4 objectForKeyedSubscript:@"resourcesSize"];
    self->_signature = [v15 unsignedLongLongValue];
  }

  else
  {
    v16 = self->_contentAsset;
    if (v16)
    {
      self->_signature = [(CKAsset *)v16 size];
    }
  }

  v17 = [v4 objectForKeyedSubscript:@"fileType"];
  v18 = [v17 intValue];
  if (v18 >= 3)
  {
    v19 = WORD2(self->_mbNode.cloneID) & 0xFFF;
  }

  else
  {
    v19 = (0xA00040008000uLL >> (16 * v18)) & 0xF000 | WORD2(self->_mbNode.cloneID) & 0xFFF;
  }

  WORD2(self->_mbNode.cloneID) = v19;

  v20 = [v4 recordID];
  v21 = [v20 recordName];
  if ([v21 hasSuffix:@":D"])
  {
    v22 = 16;
  }

  else
  {
    v22 = 0;
  }

  LOBYTE(self->_restoreState) = self->_restoreState & 0xEF | v22;

  v23 = [v4 objectForKeyedSubscript:@"protectionClass"];

  if (v23)
  {
    v24 = [v4 objectForKeyedSubscript:@"protectionClass"];
    BYTE6(self->_mbNode.cloneID) = [v24 intValue];

    if (!v4)
    {
      goto LABEL_21;
    }
  }

  else
  {
    BYTE6(self->_mbNode.cloneID) = -1;
    if (!v4)
    {
      goto LABEL_21;
    }
  }

  if ((BYTE6(self->_mbNode.cloneID) == 255 || !BYTE6(self->_mbNode.cloneID)) && ![(MBCKFile *)self fileType])
  {
    BYTE6(self->_mbNode.cloneID) = 4;
  }

LABEL_21:
  v25 = [v4 recordID];
  v26 = [v25 recordName];
  [(MBCKFile *)self setFileID:v26];

  v30.receiver = self;
  v30.super_class = MBCKFile;
  [(MBCKModel *)&v30 refreshWithRecord:v4];
  if (v7)
  {
    v27 = [(MBCKFile *)self size]== 0;
  }

  else
  {
    v27 = 0;
  }

  if ([(MBCKFile *)self isRegularFile]&& self->_changeType)
  {
    v27 = 1;
  }

  if (v7)
  {
    v28 = [(MBCKFile *)self resourcesSize]== 0;
  }

  else
  {
    v28 = 0;
  }

  if ([(MBCKFile *)self hasResources]&& self->_contentAsset)
  {
    v28 = 1;
  }

  if (v27 && v28)
  {
    v29 = 32;
  }

  else
  {
    v29 = 0;
  }

  LOBYTE(self->_restoreState) = self->_restoreState & 0xDF | v29;

  objc_autoreleasePoolPop(v5);
}

- (void)refreshWithMBFile:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];
  v6 = [v5 name];
  v7 = *&self->_mbNode.mode;
  *&self->_mbNode.mode = v6;

  v8 = [v4 domain];
  *&self->_is = [v8 volumeType];

  v9 = [v4 domain];
  domainName = self->_domainName;
  self->_domainName = v9;

  v11 = self;
  objc_sync_enter(v11);
  v12 = [v4 absolutePath];
  fileID = v11->_fileID;
  v11->_fileID = v12;

  LOBYTE(v11->_restoreState) &= ~2u;
  objc_sync_exit(v11);

  v14 = [v4 relativePath];
  volumeType = v11->_volumeType;
  v11->_volumeType = v14;

  v16 = [v4 digest];
  linkTarget = v11->_linkTarget;
  v11->_linkTarget = v16;

  [v4 getNode:&v11->_mbNode];
  v11->_encryptionKey = v11->_mbNode.inode;
  v11->_sizeBeforeCopy = 0;
  v11->_encryptedSize = 0;
  if ([v4 isDeleted])
  {
    v18 = 16;
  }

  else
  {
    v18 = 0;
  }

  LOBYTE(v11->_restoreState) = v11->_restoreState & 0xEF | v18;
  v19 = [v4 encryptionKey];
  resources = v11->_resources;
  v11->_resources = v19;

  v21 = [v4 target];
  relativePath = v11->_relativePath;
  v11->_relativePath = v21;

  if (!v11->_fileID)
  {
    v23 = MBGetDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v34 = "_absolutePath";
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, "nil %s", buf, 0xCu);
      v32 = "_absolutePath";
      _MBLog();
    }
  }

  if (!self->_domainName)
  {
    v24 = MBGetDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v34 = "_domain";
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_FAULT, "nil %s", buf, 0xCu);
      v32 = "_domain";
      _MBLog();
    }
  }

  if ([(MBCKFile *)v11 isSymbolicLink])
  {
    if ([(MBCKFile *)v11 hasAbsolutePath])
    {
      v25 = [(MBCKFile *)v11 linkTarget];
      v26 = v25 == 0;

      if (v26)
      {
        v27 = [(MBCKFile *)v11 absolutePath];
        v28 = [MBFileOperation symbolicLinkTargetWithPath:v27 error:0];
        v29 = v11->_relativePath;
        v11->_relativePath = v28;
      }
    }
  }

  if (!BYTE6(v11->_mbNode.cloneID) && [v4 isRegularFile])
  {
    v30 = MBGetDefaultLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [v4 protectionClass];
      *buf = 138412546;
      v34 = v4;
      v35 = 1024;
      v36 = v31;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "File %@ has an invalid protection class: %d", buf, 0x12u);
      [v4 protectionClass];
      _MBLog();
    }

    BYTE6(v11->_mbNode.cloneID) = 4;
  }

  LOBYTE(v11->_restoreState) = v11->_restoreState & 0xF7 | (8 * (v11->_resources == 0));
}

- (void)refreshWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"mode"];
  p_mbNode = &self->_mbNode;
  WORD2(self->_mbNode.cloneID) = [v5 intValue];

  v7 = [v4 objectForKeyedSubscript:@"fileType"];
  v8 = [v7 intValue];
  if (v8 >= 3)
  {
    v9 = WORD2(self->_mbNode.cloneID) & 0xFFF;
  }

  else
  {
    v9 = (0xA00040008000uLL >> (16 * v8)) & 0xF000 | WORD2(self->_mbNode.cloneID) & 0xFFF;
  }

  WORD2(self->_mbNode.cloneID) = v9;

  if (!WORD2(self->_mbNode.cloneID))
  {
    __assert_rtn("[MBCKFile refreshWithDictionary:]", "MBCKFile.m", 474, "_mbNode.mode");
  }

  v10 = [v4 objectForKeyedSubscript:@"manifest"];
  domain = self->_domain;
  self->_domain = v10;

  v12 = [v4 objectForKeyedSubscript:@"domainName"];
  v13 = *&self->_mbNode.mode;
  *&self->_mbNode.mode = v12;

  v14 = [v4 objectForKeyedSubscript:@"absolutePath"];
  v15 = self;
  objc_sync_enter(v15);
  objc_storeStrong(&v15->_fileID, v14);
  LOBYTE(v15->_restoreState) &= ~2u;
  objc_sync_exit(v15);

  v16 = [v4 objectForKeyedSubscript:@"relativePath"];
  volumeType = v15->_volumeType;
  v15->_volumeType = v16;

  v18 = [v4 objectForKeyedSubscript:@"digest"];
  linkTarget = v15->_linkTarget;
  v15->_linkTarget = v18;

  v20 = [v4 objectForKeyedSubscript:@"size"];
  p_mbNode->fileSize = [v20 unsignedLongLongValue];

  v21 = [v4 objectForKeyedSubscript:@"sizeBeforeCopy"];
  v15->_encryptedSize = [v21 unsignedLongLongValue];

  v22 = [v4 objectForKeyedSubscript:@"resourcesSize"];
  v15->_signature = [v22 unsignedLongLongValue];

  v23 = [v4 objectForKeyedSubscript:@"birth"];
  [v23 timeIntervalSince1970];
  p_mbNode->birth = v24;

  v25 = [v4 objectForKeyedSubscript:@"modified"];
  [v25 timeIntervalSince1970];
  p_mbNode->modified = v26;

  v27 = [v4 objectForKeyedSubscript:@"statusChanged"];
  [v27 timeIntervalSince1970];
  p_mbNode->statusChanged = v28;

  v29 = [v4 objectForKeyedSubscript:@"groupID"];
  p_mbNode->groupID = [v29 intValue];

  v30 = [v4 objectForKeyedSubscript:@"userID"];
  p_mbNode->userID = [v30 intValue];

  v31 = [v4 objectForKeyedSubscript:@"deleted"];
  if ([v31 BOOLValue])
  {
    v32 = 16;
  }

  else
  {
    v32 = 0;
  }

  LOBYTE(v15->_restoreState) = v15->_restoreState & 0xEF | v32;

  v33 = [v4 objectForKeyedSubscript:@"protectionClass"];
  BYTE6(p_mbNode->cloneID) = [v33 intValue];

  v34 = [v4 objectForKeyedSubscript:@"encryptionKey"];
  resources = v15->_resources;
  v15->_resources = v34;

  v36 = [v4 objectForKeyedSubscript:@"sourceDeviceInode"];
  v15->_encryptionKey = [v36 longLongValue];

  v37 = [v4 objectForKeyedSubscript:@"volumeType"];
  *&v15->_is = [v37 unsignedIntegerValue];

  v38 = [v4 objectForKeyedSubscript:@"fileID"];
  [(MBCKFile *)v15 setFileID:v38];

  v39 = [v4 objectForKeyedSubscript:@"linkTarget"];
  relativePath = v15->_relativePath;
  v15->_relativePath = v39;

  if (!BYTE6(p_mbNode->cloneID) && [(MBCKFile *)v15 isRegularFile])
  {
    v41 = MBGetDefaultLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = [v4 objectForKeyedSubscript:@"protectionClass"];
      *buf = 138412546;
      v51 = v4;
      v52 = 2112;
      v53 = v42;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "File dictionary %@ has an invalid protection class: %@", buf, 0x16u);

      [v4 objectForKeyedSubscript:@"protectionClass"];
      v49 = v48 = v4;
      _MBLog();
    }

    BYTE6(p_mbNode->cloneID) = 4;
  }

  LOBYTE(v15->_restoreState) = v15->_restoreState & 0xF7 | (8 * (v15->_resources == 0));
  v43 = [v4 objectForKeyedSubscript:{@"device", v48, v49}];
  v44 = v43;
  if (v43)
  {
    v45 = [v43 hmacKey];
    v46 = [(MBCKFile *)v15 fileIDWithHmacKey:v45];
    manifest = v15->_manifest;
    v15->_manifest = v46;
  }
}

- (void)confirmFileWasModifiedOnDisk
{
  if (![(MBCKFile *)self fileType])
  {
    memset(&v28, 0, sizeof(v28));
    v3 = [(MBCKFile *)self assetPath];
    v4 = lstat([v3 fileSystemRepresentation], &v28);

    if (!v4)
    {
      v6 = [NSDate dateWithTimeIntervalSince1970:v28.st_mtimespec.tv_sec];
      v9 = [(MBCKFile *)self modified];
      [v6 timeIntervalSinceDate:v9];
      v11 = v10;
      v12 = MBGetDefaultLog();
      v13 = v12;
      if (v11 <= 0.0)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v24 = [(MBCKFile *)self assetPath];
          *buf = 138412290;
          v30 = v24;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "File %@ does not appear to have been modified on disk", buf, 0xCu);

          v26 = [(MBCKFile *)self assetPath];
          _MBLog();
        }

        v13 = [(MBCKModel *)self cache];
        v25 = [v13 markFileAsCopyable:self];
      }

      else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = [(MBCKFile *)self assetPath];
        v15 = MBGetLogDateFormatter();
        v16 = [v15 stringFromDate:v6];
        v17 = MBGetLogDateFormatter();
        v18 = [v17 stringFromDate:v9];
        *buf = 138413058;
        v30 = v14;
        v31 = 2112;
        v32 = v16;
        v33 = 2048;
        v34 = v11;
        v35 = 2112;
        v36 = v18;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "File %@ was modified at %@, %f seconds after %@, the modified date cached during the last scan.", buf, 0x2Au);

        v19 = [(MBCKFile *)self assetPath];
        v20 = MBGetLogDateFormatter();
        v21 = [v20 stringFromDate:v6];
        v22 = MBGetLogDateFormatter();
        v27 = [v22 stringFromDate:v9];
        _MBLog();
      }

      goto LABEL_16;
    }

    v5 = *__error();
    v6 = MBGetDefaultLog();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (v5 == 2)
    {
      if (v7)
      {
        v8 = [(MBCKFile *)self assetPath];
        *buf = 138412290;
        v30 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "File %@ is no longer on disk", buf, 0xCu);

        v9 = [(MBCKFile *)self assetPath];
LABEL_11:
        _MBLog();
LABEL_16:
      }
    }

    else if (v7)
    {
      v23 = [(MBCKFile *)self assetPath];
      *buf = 138412546;
      v30 = v23;
      v31 = 1024;
      LODWORD(v32) = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Cannot tell if file %@ has changed on disk: stat failed: %{errno}d", buf, 0x12u);

      v9 = [(MBCKFile *)self assetPath];
      goto LABEL_11;
    }
  }
}

- (BOOL)validateEncryptionKeyWithError:(id *)a3
{
  if (![(MBCKFile *)self isRegularFile]|| ![(MBCKFile *)self size])
  {
    return 1;
  }

  if ((self->_restoreState & 8) != 0)
  {
    [(MBCKFile *)self encryptionKey];
    if (objc_claimAutoreleasedReturnValue())
    {
      __assert_rtn("[MBCKFile validateEncryptionKeyWithError:]", "MBCKFile.m", 549, "!self.encryptionKey");
    }

    return 1;
  }

  v5 = BYTE6(self->_mbNode.cloneID);
  v6 = 1;
  if ([(MBCKFile *)self isProtected]&& (v5 & 0xFFFFFFFB) != 3)
  {
    v7 = [(MBCKFile *)self encryptionKey];

    if (v7)
    {
      v8 = [(MBCKFile *)self assetPath];
      v9 = [MBKeyBagFile keybagFileWithPath:v8 error:a3];
      v10 = v9;
      if (v9)
      {
        v6 = [v9 validateEncryptionKey:self->_resources error:a3];
      }

      else
      {
        v6 = 0;
      }
    }

    else if (a3)
    {
      [MBError errorWithCode:1 format:@"Nil encryption key"];
      *a3 = v6 = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

- (void)_setFileMissingEncryptionKeyForPath:(id)a3 account:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(MBCKModel *)self cache];
  v8 = [v7 setFileMissingEncryptionKeyForPath:v6];

  if (!v8)
  {
    [MBCKEncryptionManager trackMissingEncryptionKeyForAccount:v9];
  }
}

- (BOOL)fetchEncryptionKeyWithAccount:(id)a3 device:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    __assert_rtn("[MBCKFile fetchEncryptionKeyWithAccount:device:error:]", "MBCKFile.m", 576, "account");
  }

  v10 = v9;
  if ([(MBCKFile *)self isRegularFile])
  {
    if (!v10)
    {
      if (!a5)
      {
LABEL_26:
        v23 = 0;
        goto LABEL_187;
      }

      v19 = [(MBCKFile *)self absolutePath];
      v20 = [MBError errorWithCode:205 path:v19 format:@"Nil device"];
LABEL_25:
      *a5 = v20;

      goto LABEL_26;
    }

    v11 = BYTE6(self->_mbNode.cloneID);
    v12 = [(MBCKFile *)self isProtected];
    restoreState = self->_restoreState;
    if (v12 && (v11 & 0xFB) != 3)
    {
      LOBYTE(self->_restoreState) = restoreState & 0xF7;
      if (v11 == 7 || v11 == 4)
      {
        __assert_rtn("[MBCKFile fetchEncryptionKeyWithAccount:device:error:]", "MBCKFile.m", 600, "pc != MBProtectionClassC && pc != MBProtectionClassCx && pc != MBProtectionClassD && Unexpected protection class");
      }

      v15 = [v10 keybagManager];
      v16 = [v15 hasKeybags];

      if (v16)
      {
        v133 = [(MBCKFile *)self assetPath];
        st_ino = [(MBCKFile *)self inode];
        v129 = *&self->_is;
        if (!v129)
        {
          __assert_rtn("[MBCKFile fetchEncryptionKeyWithAccount:device:error:]", "MBCKFile.m", 613, "volumeType != MBVolumeTypeUnspecified");
        }

        if (!st_ino)
        {
          memset(&buf, 0, sizeof(buf));
          if (stat([v133 fileSystemRepresentation], &buf))
          {
            v24 = __error();
            v25 = *v24;
            if (a5)
            {
              *a5 = [MBError posixErrorWithCode:100 path:v133 format:@"Failed to stat file: (%s) %d", strerror(*v24), v25];
            }

            v26 = MBGetDefaultLog();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *v137 = 138412546;
              v138 = v133;
              v139 = 1024;
              v140 = v25;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to stat %@: %{errno}d", v137, 0x12u);
              _MBLog();
            }

            v23 = 0;
            goto LABEL_186;
          }

          st_ino = buf.st_ino;
        }

        v130 = st_ino;
        if (![(MBCKFile *)self size])
        {
          v27 = [(MBCKModel *)self cache];
          v136 = 0;
          v28 = [v27 encryptionKeyForFileWithInodeNumber:v130 volumeType:v129 error:&v136];
          v132 = v136;
          resources = self->_resources;
          self->_resources = v28;

          if (v132)
          {
            v30 = MBGetDefaultLog();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              buf.st_dev = 134218498;
              *&buf.st_mode = v130;
              WORD2(buf.st_ino) = 2112;
              *(&buf.st_ino + 6) = v133;
              HIWORD(buf.st_gid) = 2112;
              *&buf.st_rdev = v132;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Failed to fetch the cached encryption key for 0-byte inode:%llu at %@: %@", &buf, 0x20u);
              v124 = v133;
              v125 = v132;
              v122 = v130;
              _MBLog();
            }
          }

          if (self->_resources)
          {
            v31 = [v10 keybagManager];
            v32 = [(MBCKFile *)self keybagUUIDString];
            v33 = [v31 hasKeybagWithUUID:v32];

            if ((v33 & 1) == 0)
            {
              v34 = MBGetDefaultLog();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                buf.st_dev = 134218242;
                *&buf.st_mode = v130;
                WORD2(buf.st_ino) = 2112;
                *(&buf.st_ino + 6) = v133;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Keybag UUID mismatch for 0-byte inode:%llu at %@", &buf, 0x16u);
                v122 = v130;
                v124 = v133;
                _MBLog();
              }

              v35 = self->_resources;
              self->_resources = 0;
            }
          }

          v36 = [(MBCKFile *)self encryptionKey:v122];

          if (!v36)
          {
            v23 = 1;
LABEL_185:

LABEL_186:
            goto LABEL_187;
          }

          oslog = MBGetDefaultLog();
          v23 = 1;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
          {
            v37 = [(NSData *)self->_resources length];
            buf.st_dev = 134218498;
            *&buf.st_mode = v37;
            WORD2(buf.st_ino) = 2048;
            *(&buf.st_ino + 6) = v130;
            HIWORD(buf.st_gid) = 2112;
            *&buf.st_rdev = v133;
            _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_INFO, "Found cached encryption key (size: %tu) for 0-byte inode:%llu at %@", &buf, 0x20u);
            [(NSData *)self->_resources length];
            _MBLog();
          }

LABEL_184:

          goto LABEL_185;
        }

        v135 = 0;
        oslog = [MBKeyBagFile keybagFileWithPath:v133 error:&v135];
        v132 = v135;
        if (!oslog)
        {
          v38 = MBGetDefaultLog();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            buf.st_dev = 138412546;
            *&buf.st_mode = v133;
            WORD2(buf.st_ino) = 2112;
            *(&buf.st_ino + 6) = v132;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Failed to open file to get encryption key %@: %@", &buf, 0x16u);
            _MBLog();
          }

          if (a5)
          {
            v39 = v132;
            v23 = 0;
            *a5 = v132;
          }

          else
          {
            v23 = 0;
          }

          goto LABEL_185;
        }

        rsrcTemporaryPath = self->_rsrcTemporaryPath;
        if (rsrcTemporaryPath)
        {
          v128 = rsrcTemporaryPath;
        }

        else
        {
          v40 = [(MBCKFile *)self domain];
          v41 = [v40 rootPath];
          v42 = [(MBCKFile *)self relativePath];
          v128 = [v41 stringByAppendingPathComponent:v42];
        }

        self->_resourceAsset = [oslog size];
        v43 = [(MBCKFile *)self encryptionKey];

        if (v43)
        {
          v44 = MBGetDefaultLog();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            v45 = v44;
            if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
            {
              v46 = [(NSData *)self->_resources length];
              buf.st_dev = 134218498;
              *&buf.st_mode = v46;
              WORD2(buf.st_ino) = 2048;
              *(&buf.st_ino + 6) = v130;
              HIWORD(buf.st_gid) = 2112;
              *&buf.st_rdev = v133;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Found encryption key (size: %tu) for inode:%llu at %@", &buf, 0x20u);
            }

            v124 = v130;
            v125 = v133;
            v122 = [(NSData *)self->_resources length];
            _MBLog();
          }

          v47 = [v10 keybagManager];
          v48 = [(MBCKFile *)self keybagUUIDString];
          v49 = [v47 hasKeybagWithUUID:v48];

          if (v49)
          {
            if (([oslog validateEncryptionKey:self->_resources error:a5]& 1) != 0)
            {
              if ([MBProtectionClassUtils canOpenWhenLocked:v11])
              {
                v127 = v132;
LABEL_130:
                v55 = MBGetDefaultLog();
                v23 = 1;
                if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
                {
                  v95 = v55;
                  if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
                  {
                    v96 = [(NSData *)self->_resources length];
                    buf.st_dev = 134218498;
                    *&buf.st_mode = v96;
                    WORD2(buf.st_ino) = 2048;
                    *(&buf.st_ino + 6) = v130;
                    HIWORD(buf.st_gid) = 2112;
                    *&buf.st_rdev = v133;
                    _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_INFO, "Cached encryption key (size: %tu) for inode:%llu at %@", &buf, 0x20u);
                  }

                  v56 = v95;

                  v124 = v130;
                  v125 = v133;
                  v122 = [(NSData *)self->_resources length];
                  _MBLog();
                  v51 = 0;
                  goto LABEL_149;
                }

                v51 = 0;
LABEL_151:

                v92 = 0;
                v132 = v127;
LABEL_152:

                if (([oslog closeWithError:a5]& 1) == 0)
                {
                  v101 = MBGetDefaultLog();
                  if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
                  {
                    if (a5)
                    {
                      v102 = *a5;
                      buf.st_dev = 138412290;
                      *&buf.st_mode = v102;
                      _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_ERROR, "Failed to close keybag file: %@", &buf, 0xCu);
                      v103 = *a5;
                    }

                    else
                    {
                      buf.st_dev = 138412290;
                      v103 = @"(no error available)";
                      *&buf.st_mode = @"(no error available)";
                      _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_ERROR, "Failed to close keybag file: %@", &buf, 0xCu);
                    }

                    v122 = v103;
                    _MBLog();
                  }
                }

                if (!v92)
                {
                  goto LABEL_183;
                }

                v104 = [(MBCKFile *)self encryptionKey];

                if (v104 && ([v10 keybagManager], v105 = objc_claimAutoreleasedReturnValue(), -[MBCKFile keybagUUIDString](self, "keybagUUIDString"), v106 = objc_claimAutoreleasedReturnValue(), v107 = objc_msgSend(v105, "hasKeybagWithUUID:", v106), v106, v105, (v107 & 1) == 0))
                {
                  v114 = MBGetDefaultLog();
                  if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
                  {
                    v115 = [(MBCKFile *)self keybagUUIDString];
                    buf.st_dev = 138412290;
                    *&buf.st_mode = v115;
                    _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_ERROR, "Current device keybags do not contain file keybag (%@)", &buf, 0xCu);

                    v123 = [(MBCKFile *)self keybagUUIDString];
                    _MBLog();
                  }

                  [(MBCKFile *)self _setFileMissingEncryptionKeyForPath:v128 account:v8];
                  v116 = [(MBCKModel *)self cache];
                  [v116 removeFileEncryptionKeyForInode:v130 volumeType:v129];

                  if (a5)
                  {
                    v117 = [(MBCKFile *)self absolutePath];
                    *a5 = [MBError errorWithCode:205 path:v117 format:@"Current device keybags do not contain file keybag"];
                  }
                }

                else
                {
                  v108 = [(MBCKFile *)self encryptionKey:v122];
                  v109 = v108 == 0;

                  if (!v109)
                  {
                    if (![MBProtectionClassUtils canOpenWhenLocked:v11])
                    {
                      v110 = [(MBCKModel *)self cache];
                      v111 = [v110 setFileEncryptionKey:self->_resources forInodeNumber:v130 volumeType:v129 atPath:v133];

                      if (v111)
                      {
                        if (a5)
                        {
                          v112 = v111;
                          *a5 = v111;
                        }

                        v113 = MBGetDefaultLog();
                        if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
                        {
                          buf.st_dev = 134218498;
                          *&buf.st_mode = v130;
                          WORD2(buf.st_ino) = 2112;
                          *(&buf.st_ino + 6) = v133;
                          HIWORD(buf.st_gid) = 2112;
                          *&buf.st_rdev = v111;
                          _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_ERROR, "Failed to save the encryption key for inode:%llu at %@: %@", &buf, 0x20u);
                          _MBLog();
                        }

                        v23 = 0;
                        v132 = v111;
                        goto LABEL_183;
                      }

                      v119 = MBGetDefaultLog();
                      if (os_log_type_enabled(v119, OS_LOG_TYPE_INFO))
                      {
                        v120 = [(NSData *)self->_resources length];
                        buf.st_dev = 134218498;
                        *&buf.st_mode = v120;
                        WORD2(buf.st_ino) = 2048;
                        *(&buf.st_ino + 6) = v130;
                        HIWORD(buf.st_gid) = 2112;
                        *&buf.st_rdev = v133;
                        _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_INFO, "Cached encryption key (size: %tu) for inode:%llu at %@", &buf, 0x20u);
                        [(NSData *)self->_resources length];
                        _MBLog();
                      }

                      v132 = 0;
                    }

                    v23 = 1;
LABEL_183:

                    goto LABEL_184;
                  }

                  v118 = MBGetDefaultLog();
                  if (os_log_type_enabled(v118, OS_LOG_TYPE_INFO))
                  {
                    buf.st_dev = 134218242;
                    *&buf.st_mode = v130;
                    WORD2(buf.st_ino) = 2112;
                    *(&buf.st_ino + 6) = v128;
                    _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_INFO, "Setting missing encryption key for inode:%llu at %@", &buf, 0x16u);
                    _MBLog();
                  }

                  [(MBCKFile *)self _setFileMissingEncryptionKeyForPath:v128 account:v8];
                  if (a5)
                  {
                    [MBError errorWithCode:100 path:v133 format:@"Failed to retrieve encryption key for file"];
                    *a5 = v23 = 0;
                    goto LABEL_183;
                  }
                }

                v23 = 0;
                goto LABEL_183;
              }

              v57 = [(MBCKModel *)self cache];
              v127 = [v57 setFileEncryptionKey:self->_resources forInodeNumber:v130 volumeType:v129 atPath:v133];

              if (!v127)
              {
                v127 = 0;
                goto LABEL_130;
              }

              if (a5)
              {
                v58 = v127;
                *a5 = v127;
              }

              v55 = MBGetDefaultLog();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
              {
                buf.st_dev = 134218498;
                *&buf.st_mode = v130;
                WORD2(buf.st_ino) = 2112;
                *(&buf.st_ino + 6) = v133;
                HIWORD(buf.st_gid) = 2112;
                *&buf.st_rdev = v127;
                v56 = v55;
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "Failed to save the encryption key for inode:%llu at %@: %@", &buf, 0x20u);
                v124 = v133;
                v125 = v127;
                v122 = v130;
                _MBLog();
                v51 = 0;
                goto LABEL_109;
              }

              v51 = 0;
              goto LABEL_136;
            }

            v52 = [(MBCKFile *)self encryptionKey];
            v51 = [oslog updatedEncryptionKeyForCurrentKey:v52 withError:0];

            if (v51)
            {
              if (([oslog validateEncryptionKey:v51 error:a5]& 1) != 0)
              {
                objc_storeStrong(&self->_resources, v51);
                if (![MBProtectionClassUtils canOpenWhenLocked:v11])
                {
                  v53 = [(MBCKModel *)self cache];
                  v127 = [v53 setFileEncryptionKey:self->_resources forInodeNumber:v130 volumeType:v129 atPath:v133];

                  if (v127)
                  {
                    if (a5)
                    {
                      v54 = v127;
                      *a5 = v127;
                    }

                    v55 = MBGetDefaultLog();
                    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                    {
                      buf.st_dev = 134218498;
                      *&buf.st_mode = v130;
                      WORD2(buf.st_ino) = 2112;
                      *(&buf.st_ino + 6) = v133;
                      HIWORD(buf.st_gid) = 2112;
                      *&buf.st_rdev = v127;
                      v56 = v55;
                      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "Failed to save the encryption key for inode:%llu at %@: %@", &buf, 0x20u);
                      v124 = v133;
                      v125 = v127;
                      v122 = v130;
                      _MBLog();
LABEL_109:
                      v23 = 0;
LABEL_149:
                      v55 = v56;
                      goto LABEL_151;
                    }

LABEL_136:
                    v23 = 0;
                    goto LABEL_151;
                  }

                  v132 = 0;
                }

                v55 = MBGetDefaultLog();
                v23 = 1;
                if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
                {
                  v99 = v55;
                  if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
                  {
                    v100 = [(NSData *)self->_resources length];
                    buf.st_dev = 134218498;
                    *&buf.st_mode = v100;
                    WORD2(buf.st_ino) = 2048;
                    *(&buf.st_ino + 6) = v130;
                    HIWORD(buf.st_gid) = 2112;
                    *&buf.st_rdev = v133;
                    _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_INFO, "Updated key (size: %tu) for inode:%llu at %@ from the cache with new extent information", &buf, 0x20u);
                  }

                  v56 = v99;

                  v124 = v130;
                  v125 = v133;
                  v122 = [(NSData *)self->_resources length];
                  _MBLog();
LABEL_148:
                  v127 = v132;
                  goto LABEL_149;
                }

                goto LABEL_150;
              }

              v59 = MBGetDefaultLog();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
              {
                v59 = v59;
                if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                {
                  v63 = [v51 length];
                  v64 = *a5;
                  buf.st_dev = 134218754;
                  *&buf.st_mode = v63;
                  WORD2(buf.st_ino) = 2048;
                  *(&buf.st_ino + 6) = v130;
                  HIWORD(buf.st_gid) = 2112;
                  *&buf.st_rdev = v133;
                  LOWORD(buf.st_atimespec.tv_sec) = 2112;
                  *(&buf.st_atimespec.tv_sec + 2) = v64;
                  _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "Failed to validate updated encryption key (size: %tu) for inode:%llu at %@: %@", &buf, 0x2Au);
                }

                v65 = [v51 length];
                v125 = v133;
                v126 = *a5;
                v122 = v65;
                v124 = v130;
                _MBLog();
              }
            }

            else
            {
              v59 = MBGetDefaultLog();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
              {
                v59 = v59;
                if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                {
                  v60 = [(NSData *)self->_resources length];
                  v61 = *a5;
                  buf.st_dev = 134218754;
                  *&buf.st_mode = v60;
                  WORD2(buf.st_ino) = 2048;
                  *(&buf.st_ino + 6) = v130;
                  HIWORD(buf.st_gid) = 2112;
                  *&buf.st_rdev = v133;
                  LOWORD(buf.st_atimespec.tv_sec) = 2112;
                  *(&buf.st_atimespec.tv_sec + 2) = v61;
                  _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "Failed to update cached encryption key (size: %tu) for inode:%llu at %@: %@", &buf, 0x2Au);
                }

                v62 = [(NSData *)self->_resources length];
                v125 = v133;
                v126 = *a5;
                v122 = v62;
                v124 = v130;
                _MBLog();
              }
            }

            v66 = self->_resources;
            self->_resources = 0;
          }

          else
          {
            v50 = MBGetDefaultLog();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              buf.st_dev = 134218242;
              *&buf.st_mode = v130;
              WORD2(buf.st_ino) = 2112;
              *(&buf.st_ino + 6) = v133;
              _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Keybag UUID mismatch for inode:%llu at %@", &buf, 0x16u);
              v122 = v130;
              v124 = v133;
              _MBLog();
            }

            v51 = self->_resources;
            self->_resources = 0;
          }
        }

        v67 = [(MBCKModel *)self cache];
        v134 = 0;
        v68 = [v67 encryptionKeyForFileWithInodeNumber:v130 volumeType:v129 error:&v134];
        v132 = v134;
        v69 = self->_resources;
        self->_resources = v68;

        if (v132)
        {
          v70 = MBGetDefaultLog();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            buf.st_dev = 134218754;
            *&buf.st_mode = v130;
            WORD2(buf.st_ino) = 2048;
            *(&buf.st_ino + 6) = v129;
            HIWORD(buf.st_gid) = 2112;
            *&buf.st_rdev = v133;
            LOWORD(buf.st_atimespec.tv_sec) = 2112;
            *(&buf.st_atimespec.tv_sec + 2) = v132;
            _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "Failed to fetch the cached encryption key for inode:%llu volumeType:%lu at %@: %@", &buf, 0x2Au);
            v125 = v133;
            v126 = v132;
            v122 = v130;
            v124 = v129;
            _MBLog();
          }
        }

        if (self->_resources)
        {
          v71 = MBGetDefaultLog();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
          {
            v72 = v71;
            if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
            {
              v73 = [(NSData *)self->_resources length];
              buf.st_dev = 134218498;
              *&buf.st_mode = v73;
              WORD2(buf.st_ino) = 2048;
              *(&buf.st_ino + 6) = v130;
              HIWORD(buf.st_gid) = 2112;
              *&buf.st_rdev = v133;
              _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "Found cached encryption key (size: %tu) for inode:%llu at %@", &buf, 0x20u);
            }

            v124 = v130;
            v125 = v133;
            v122 = [(NSData *)self->_resources length];
            _MBLog();
          }

          if (([oslog validateEncryptionKey:self->_resources error:a5]& 1) != 0)
          {
            v51 = 0;
          }

          else
          {
            v74 = [(MBCKFile *)self encryptionKey];
            v51 = [oslog updatedEncryptionKeyForCurrentKey:v74 withError:0];

            if (v51 && ([oslog validateEncryptionKey:v51 error:a5]& 1) != 0)
            {
              objc_storeStrong(&self->_resources, v51);
              if (![MBProtectionClassUtils canOpenWhenLocked:v11])
              {
                v75 = [(MBCKModel *)self cache];
                v127 = [v75 setFileEncryptionKey:self->_resources forInodeNumber:v130 volumeType:v129 atPath:v133];

                if (v127)
                {
                  if (a5)
                  {
                    v76 = v127;
                    *a5 = v127;
                  }

                  v55 = MBGetDefaultLog();
                  if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                  {
                    buf.st_dev = 134218498;
                    *&buf.st_mode = v130;
                    WORD2(buf.st_ino) = 2112;
                    *(&buf.st_ino + 6) = v133;
                    HIWORD(buf.st_gid) = 2112;
                    *&buf.st_rdev = v127;
                    v56 = v55;
                    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "Failed to save the encryption key for inode:%llu at %@: %@", &buf, 0x20u);
                    v124 = v133;
                    v125 = v127;
                    v122 = v130;
                    _MBLog();
                    goto LABEL_109;
                  }

                  goto LABEL_136;
                }

                v132 = 0;
              }

              v55 = MBGetDefaultLog();
              v23 = 1;
              if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
              {
                v97 = v55;
                if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
                {
                  v98 = [(NSData *)self->_resources length];
                  buf.st_dev = 134218498;
                  *&buf.st_mode = v98;
                  WORD2(buf.st_ino) = 2048;
                  *(&buf.st_ino + 6) = v130;
                  HIWORD(buf.st_gid) = 2112;
                  *&buf.st_rdev = v133;
                  _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_INFO, "Updated key (size: %tu) for inode:%llu at %@ from the cache with new extent information", &buf, 0x20u);
                }

                v56 = v97;

                v124 = v130;
                v125 = v133;
                v122 = [(NSData *)self->_resources length];
                _MBLog();
                goto LABEL_148;
              }

LABEL_150:
              v127 = v132;
              goto LABEL_151;
            }

            v77 = MBGetDefaultLog();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              v78 = v77;
              if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
              {
                v79 = [v51 length];
                v80 = *a5;
                buf.st_dev = 134218754;
                *&buf.st_mode = v79;
                WORD2(buf.st_ino) = 2048;
                *(&buf.st_ino + 6) = v130;
                HIWORD(buf.st_gid) = 2112;
                *&buf.st_rdev = v133;
                LOWORD(buf.st_atimespec.tv_sec) = 2112;
                *(&buf.st_atimespec.tv_sec + 2) = v80;
                _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "Failed to validate cached encryption key (size: %tu) for inode:%llu at %@: %@", &buf, 0x2Au);
              }

              v81 = [v51 length];
              v125 = v133;
              v126 = *a5;
              v122 = v81;
              v124 = v130;
              _MBLog();
            }

            v82 = [(MBCKModel *)self cache];
            [v82 removeFileEncryptionKeyForInode:v130 volumeType:v129];

            v83 = self->_resources;
            self->_resources = 0;
          }

          if (self->_resources)
          {
            v84 = [(MBCKFile *)self keybagUUIDString];
            if (v84)
            {
              v85 = [v10 keybagManager];
              v86 = [v85 hasKeybagWithUUID:v84];

              if ((v86 & 1) == 0)
              {
                v87 = MBGetDefaultLog();
                if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
                {
                  buf.st_dev = 138412290;
                  *&buf.st_mode = v84;
                  _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "Device keybags do not contain file keybag (%@)", &buf, 0xCu);
                  v122 = v84;
                  _MBLog();
                }

                v88 = [(MBCKModel *)self cache];
                [v88 removeFileEncryptionKeyForInode:v130 volumeType:v129];

                v89 = self->_resources;
                self->_resources = 0;
              }
            }

            if (self->_resources)
            {
LABEL_123:
              v23 = 0;
              v92 = 1;
              goto LABEL_152;
            }
          }
        }

        else
        {
          v51 = 0;
        }

        v90 = [oslog encryptionKeyWithError:0, v122, v124, v125, v126];
        v91 = self->_resources;
        self->_resources = v90;

        if (!self->_resources)
        {
          v93 = MBGetDefaultLog();
          if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
          {
            buf.st_dev = 134218242;
            *&buf.st_mode = v130;
            WORD2(buf.st_ino) = 2112;
            *(&buf.st_ino + 6) = v128;
            _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_INFO, "Setting missing encryption key for inode:%llu at %@", &buf, 0x16u);
            v122 = v130;
            v124 = v128;
            _MBLog();
          }

          [(MBCKFile *)self _setFileMissingEncryptionKeyForPath:v128 account:v8];
          if (!a5)
          {
            v92 = 0;
            v23 = 0;
            goto LABEL_152;
          }

          v94 = [(MBCKFile *)self birth];
          [MBError errorWithCode:209 path:v133 format:@"Missing encryption key for file (created at %@)", v94];
          *a5 = v23 = 0;
          v127 = v132;
          v55 = v94;
          goto LABEL_151;
        }

        goto LABEL_123;
      }

      if (!a5)
      {
        goto LABEL_26;
      }

      v19 = [(MBCKFile *)self absolutePath];
      v20 = [MBError errorWithCode:205 path:v19 format:@"No keybag"];
      goto LABEL_25;
    }

    LOBYTE(self->_restoreState) = restoreState | 8;
    v21 = self->_resources;
    self->_resources = 0;

    v22 = MBGetDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      buf.st_dev = 138412290;
      *&buf.st_mode = self;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Not fetching the encryption key for %@", &buf, 0xCu);
      _MBLog();
    }
  }

  v23 = 1;
LABEL_187:

  return v23;
}

- (int)prepareForUploadWithEngine:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!a4)
  {
    __assert_rtn("[MBCKFile prepareForUploadWithEngine:error:]", "MBCKFile.m", 820, "error");
  }

  v7 = v6;
  v8 = [v6 serviceAccount];
  if (!v8)
  {
    __assert_rtn("[MBCKFile prepareForUploadWithEngine:error:]", "MBCKFile.m", 822, "serviceAccount");
  }

  v9 = v8;
  if ((self->_restoreState & 0x10) != 0)
  {
    v11 = 0;
LABEL_48:
    v42 = 0;
    v38 = 2;
    goto LABEL_49;
  }

  v10 = BYTE6(self->_mbNode.cloneID);
  v11 = [(MBCKFile *)self absolutePath];
  v12 = [(MBCKFile *)self isSQLiteFile];
  if ([(MBCKFile *)self isDataless]|| ![MBProtectionClassUtils canOpenWhenLocked:v10])
  {
    goto LABEL_46;
  }

  if (!v12)
  {
    if (![(MBCKFile *)self size])
    {
      goto LABEL_46;
    }

    v27 = [(MBCKFile *)self userID];
    if (v27 != MBMobileUID())
    {
      goto LABEL_46;
    }

    v28 = [(MBCKFile *)self domainName];
    v29 = [v28 isEqualToString:@"HomeDomain"];

    if (!v29)
    {
      goto LABEL_46;
    }

    v30 = [(MBCKFile *)self relativePath];
    if (!v30)
    {
      __assert_rtn("[MBCKFile prepareForUploadWithEngine:error:]", "MBCKFile.m", 882, "relativePath");
    }

    v31 = v30;
    if (qword_1004216B8 != -1)
    {
      dispatch_once(&qword_1004216B8, &stru_1003BE240);
    }

    if (![qword_1004216B0 containsObject:v31])
    {
      goto LABEL_45;
    }

    v32 = [v7 persona];
    v33 = [v32 sqliteCopyDirectory];

    v34 = [v7 serviceAccount];
    v35 = [v7 device];
    v65 = v33;
    v66 = 0;
    LOBYTE(v32) = [(MBCKFile *)self encodeWithFileAtPath:v11 encodingMethod:1 hasSnapshot:1 destinationDirectory:v33 account:v34 device:v35 error:&v66];
    v36 = v66;

    if ((v32 & 1) == 0)
    {
      v37 = MBGetDefaultLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v70 = v11;
        v71 = 2112;
        v72 = v36;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Failed to compress the file at %@: %@", buf, 0x16u);
        v60 = v11;
        v61 = v36;
        _MBLog();
      }
    }

    v24 = v65;
LABEL_44:

LABEL_45:
LABEL_46:
    if (![(MBCKFile *)self hasResources:v60]|| [(MBCKFile *)self _createResourceCopyWithError:a4])
    {
      goto LABEL_48;
    }

    v58 = MBGetDefaultLog();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v59 = *a4;
      *buf = 138412290;
      v70 = v59;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "Failed to create copy of file resources: %@", buf, 0xCu);
      v60 = *a4;
      _MBLog();
    }

    v38 = 0;
LABEL_55:
    v42 = 1;
    goto LABEL_49;
  }

  sizeBeforeEncoding = self->_sizeBeforeEncoding;
  if (!sizeBeforeEncoding)
  {
    v14 = [v7 persona];
    v15 = [MBTemporaryDirectory userTemporaryDirectoryForPersona:v14 identifiedBy:@"MBCKFile-SQLite" error:a4];
    v16 = self->_sizeBeforeEncoding;
    self->_sizeBeforeEncoding = v15;

    sizeBeforeEncoding = self->_sizeBeforeEncoding;
    if (!sizeBeforeEncoding)
    {
      v43 = MBGetDefaultLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = *a4;
        *buf = 138412546;
        v70 = v11;
        v71 = 2112;
        v72 = v44;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Failed to SQLite temporary dir to copy %@, %@", buf, 0x16u);
        v60 = v11;
        v61 = *a4;
        _MBLog();
      }

      v38 = 0;
      LOBYTE(self->_restoreState) &= ~4u;
      goto LABEL_55;
    }
  }

  v17 = [(MBCKFile *)self _createTemporarySQLiteCopyWithEngine:v7 temporaryDirectory:sizeBeforeEncoding error:a4];
  if (v17 == 2)
  {
    LOBYTE(self->_restoreState) |= 4u;
    v18 = [(MBCKFile *)self userID];
    if (v18 != MBMobileUID())
    {
      goto LABEL_46;
    }

    if (!*&self->_contentEncodingMethod)
    {
      __assert_rtn("[MBCKFile prepareForUploadWithEngine:error:]", "MBCKFile.m", 858, "_temporaryPath");
    }

    v19 = [v7 persona];
    v20 = [v19 sqliteCopyDirectory];

    v21 = *&self->_contentEncodingMethod;
    v22 = [v7 serviceAccount];
    v23 = [v7 device];
    v68 = 0;
    v64 = v20;
    LOBYTE(v20) = [(MBCKFile *)self encodeWithFileAtPath:v21 encodingMethod:1 hasSnapshot:1 destinationDirectory:v20 account:v22 device:v23 error:&v68];
    v24 = v68;

    rsrcTemporaryPath = self->_rsrcTemporaryPath;
    if (v20)
    {
      if (!rsrcTemporaryPath)
      {
        __assert_rtn("[MBCKFile prepareForUploadWithEngine:error:]", "MBCKFile.m", 874, "_encodedAssetPath");
      }

      sub_1000D2F84(*&self->_contentEncodingMethod);
      v26 = *&self->_contentEncodingMethod;
      *&self->_contentEncodingMethod = 0;
    }

    else
    {
      if (rsrcTemporaryPath)
      {
        __assert_rtn("[MBCKFile prepareForUploadWithEngine:error:]", "MBCKFile.m", 862, "!_encodedAssetPath");
      }

      if (!*&self->_contentEncodingMethod)
      {
        __assert_rtn("[MBCKFile prepareForUploadWithEngine:error:]", "MBCKFile.m", 863, "_temporaryPath");
      }

      v45 = MBGetDefaultLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = *&self->_contentEncodingMethod;
        *buf = 138412802;
        v70 = v46;
        v71 = 2112;
        v72 = v11;
        v73 = 2112;
        v74[0] = v24;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Failed to compress the SQLite file at %@(%@): %@", buf, 0x20u);
        v61 = v11;
        v62 = v24;
        v60 = *&self->_contentEncodingMethod;
        _MBLog();
      }

      v47 = [v7 serviceAccount];
      v48 = [v7 device];
      v67 = 0;
      v49 = [(MBCKFile *)self refreshFromCopyWithAccount:v47 device:v48 error:&v67];
      v24 = v67;

      if ((v49 & 1) == 0)
      {
        v50 = MBGetDefaultLog();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          v51 = *&self->_contentEncodingMethod;
          *buf = 138412546;
          v70 = v51;
          v71 = 2112;
          v72 = v24;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Failed to refresh file stats from temporary copy at %@: %@", buf, 0x16u);
          v60 = *&self->_contentEncodingMethod;
          v61 = v24;
          _MBLog();
        }

        sub_1000D2F84(*&self->_contentEncodingMethod);
        v52 = *&self->_contentEncodingMethod;
        *&self->_contentEncodingMethod = 0;

        LOBYTE(self->_restoreState) &= ~4u;
      }
    }

    v31 = v64;
    goto LABEL_44;
  }

  v38 = v17;
  v39 = MBGetDefaultLog();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    v40 = *&self->_contentEncodingMethod;
    v41 = *a4;
    *buf = 138413058;
    v70 = v11;
    v71 = 2112;
    v72 = v40;
    v73 = 1024;
    LODWORD(v74[0]) = 0;
    WORD2(v74[0]) = 2112;
    *(v74 + 6) = v41;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Failed to create copy of SQLite file %@ to %@: %d, %@", buf, 0x26u);
    v62 = 0;
    v63 = *a4;
    v60 = v11;
    v61 = *&self->_contentEncodingMethod;
    _MBLog();
  }

  LOBYTE(self->_restoreState) &= ~4u;
  if (v38 != 1)
  {
    goto LABEL_46;
  }

  v42 = 0;
LABEL_49:
  v53 = [v7 device];
  v54 = [v53 hmacKey];
  v55 = [(MBCKFile *)self fileIDWithHmacKey:v54];
  manifest = self->_manifest;
  self->_manifest = v55;

  if (v42 && !*a4)
  {
    __assert_rtn("[MBCKFile prepareForUploadWithEngine:error:]", "MBCKFile.m", 917, "result != MBPrepareForUploadResultFailure || *error != nil");
  }

  return v38;
}

- (void)cleanupAfterUpload
{
  v3 = objc_autoreleasePoolPush();
  sub_1000D2F84(self->_rsrcTemporaryPath);
  LOBYTE(self->_sqliteTemporaryDirectory) = -1;
  [(MBCKFile *)self _removeTemporaryCopy];
  [(MBCKFile *)self _removeResourceCopy];
  [self->_sizeBeforeEncoding dispose];
  sizeBeforeEncoding = self->_sizeBeforeEncoding;
  self->_sizeBeforeEncoding = 0;

  objc_autoreleasePoolPop(v3);
}

- (BOOL)isSQLiteFile
{
  v2 = self;
  objc_sync_enter(v2);
  restoreState = v2->_restoreState;
  if ((restoreState & 2) == 0)
  {
    v7 = 0;
    v4 = [(MBCKFile *)v2 absolutePath];
    v5 = [MBSQLiteFileHandle isSQLiteFileAtPath:v4 result:&v7 error:0];

    if (v5)
    {
      restoreState = v7;
    }

    else
    {
      restoreState = 0;
    }

    LOBYTE(v2->_restoreState) = restoreState | v2->_restoreState & 0xFC | 2;
  }

  objc_sync_exit(v2);

  return restoreState & 1;
}

- (id)_compactSQLiteDatabaseAtPath:(id)a3 temporaryDirectory:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    __assert_rtn("[MBCKFile _compactSQLiteDatabaseAtPath:temporaryDirectory:error:]", "MBCKFile.m", 965, "path");
  }

  v9 = v8;
  if (!v8)
  {
    __assert_rtn("[MBCKFile _compactSQLiteDatabaseAtPath:temporaryDirectory:error:]", "MBCKFile.m", 966, "temporaryDirectory");
  }

  if (!a5)
  {
    __assert_rtn("[MBCKFile _compactSQLiteDatabaseAtPath:temporaryDirectory:error:]", "MBCKFile.m", 967, "error");
  }

  v10 = [v8 makeTemporaryFilePath];
  v11 = objc_opt_class();
  objc_sync_enter(v11);
  v12 = [MBSQLiteFileHandle compactSQLiteDatabaseAtPath:v7 toPath:v10 error:a5];
  objc_sync_exit(v11);

  if (v12)
  {
    goto LABEL_7;
  }

  v13 = [v9 makeTemporaryFilePath];

  v14 = objc_opt_class();
  objc_sync_enter(v14);
  v15 = [MBSQLiteFileHandle copySQLiteFileAtPath:v7 toPath:v13 error:a5];
  objc_sync_exit(v14);

  if (v15)
  {
    v10 = v13;
LABEL_7:
    v13 = v10;
    v16 = v13;
    goto LABEL_9;
  }

  v16 = 0;
LABEL_9:

  return v16;
}

- (id)_copySQLiteDatabaseAtPath:(id)a3 temporaryDirectory:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    __assert_rtn("[MBCKFile _copySQLiteDatabaseAtPath:temporaryDirectory:error:]", "MBCKFile.m", 990, "path");
  }

  v9 = v8;
  if (!v8)
  {
    __assert_rtn("[MBCKFile _copySQLiteDatabaseAtPath:temporaryDirectory:error:]", "MBCKFile.m", 991, "temporaryDirectory");
  }

  if (!a5)
  {
    __assert_rtn("[MBCKFile _copySQLiteDatabaseAtPath:temporaryDirectory:error:]", "MBCKFile.m", 992, "error");
  }

  v10 = [v8 makeTemporaryFilePath];
  v11 = objc_opt_class();
  objc_sync_enter(v11);
  v12 = [MBSQLiteFileHandle copySQLiteFileAtPath:v7 toPath:v10 error:a5];
  objc_sync_exit(v11);

  if (v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_scrubSQLiteDatabaseWithEngine:(id)a3 temporaryDirectory:(id)a4 error:(id *)a5
{
  v7 = a3;
  v36 = a4;
  v32 = v7;
  v33 = [v7 serviceAccount];
  if (!v33)
  {
    __assert_rtn("[MBCKFile _scrubSQLiteDatabaseWithEngine:temporaryDirectory:error:]", "MBCKFile.m", 1014, "account");
  }

  v35 = [(MBCKFile *)self absolutePath];
  v37 = [(MBCKFile *)self relativePath];
  v8 = [(MBCKFile *)self _copySQLiteDatabaseAtPath:v35 temporaryDirectory:v36 error:a5];
  if (!v8)
  {
    v19 = MBGetDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v24 = *a5;
      *buf = 138412546;
      v43 = v35;
      v44 = 2112;
      v45 = v24;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to copy SQLite database at %@: %@", buf, 0x16u);
      v30 = *a5;
      _MBLog();
    }

LABEL_20:
    v23 = 0;
    goto LABEL_25;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = [v7 settingsContext];
  v10 = [v9 plugins];

  v11 = [v10 countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v11)
  {
    v12 = *v39;
    v13 = &selRef_rebuildEncryptionKeysTable;
LABEL_5:
    v14 = 0;
    v15 = v13[362];
    while (1)
    {
      if (*v39 != v12)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v38 + 1) + 8 * v14);
      v17 = objc_autoreleasePoolPush();
      if (objc_opt_respondsToSelector())
      {
        v18 = [(MBCKFile *)self domain];
        v19 = [v16 scrubSQLiteFileCopyAtRelativePath:v37 copyTemporaryPath:v8 domain:v18];

        if (v19)
        {
          break;
        }
      }

      objc_autoreleasePoolPop(v17);
      if (v11 == ++v14)
      {
        v11 = [v10 countByEnumeratingWithState:&v38 objects:v48 count:16];
        v13 = &selRef_rebuildEncryptionKeysTable;
        if (v11)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }

    objc_autoreleasePoolPop(v17);

    v25 = MBGetDefaultLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v43 = v8;
      v44 = 2112;
      v45 = v37;
      v46 = 2112;
      v47 = v19;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to scrub SQLite database at %@ (%@): %@", buf, 0x20u);
      _MBLog();
    }

    [MBSQLiteFileHandle removeAllSQLiteFilesAtPath:v8];
    if (a5)
    {
      v26 = v19;
      v23 = 0;
      *a5 = v19;
      goto LABEL_25;
    }

    goto LABEL_20;
  }

LABEL_12:

  v20 = [v36 makeTemporaryFilePath];
  v21 = objc_opt_class();
  objc_sync_enter(v21);
  v22 = [MBSQLiteFileHandle compactSQLiteDatabaseAtPath:v8 toPath:v20 error:a5];
  objc_sync_exit(v21);

  [MBSQLiteFileHandle removeAllSQLiteFilesAtPath:v8];
  if (v22)
  {
    v23 = v20;
  }

  else
  {
    v27 = MBGetDefaultLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = *a5;
      *buf = 138412802;
      v43 = v8;
      v44 = 2112;
      v45 = v37;
      v46 = 2112;
      v47 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to compact SQLite database at %@ (%@): %@", buf, 0x20u);
      v31 = *a5;
      _MBLog();
    }

    v23 = 0;
  }

  v19 = 0;
LABEL_25:

  return v23;
}

- (int)_createTemporarySQLiteCopyWithEngine:(id)a3 temporaryDirectory:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!a5)
  {
    __assert_rtn("[MBCKFile _createTemporarySQLiteCopyWithEngine:temporaryDirectory:error:]", "MBCKFile.m", 1056, "error");
  }

  v10 = v9;
  if (!v9)
  {
    __assert_rtn("[MBCKFile _createTemporarySQLiteCopyWithEngine:temporaryDirectory:error:]", "MBCKFile.m", 1057, "temporaryDirectory");
  }

  v63 = [(MBCKFile *)self relativePath];
  v62 = [(MBCKFile *)self absolutePath];
  if ([(MBCKFile *)self isProtected])
  {
    v11 = BYTE6(self->_mbNode.cloneID);
  }

  else
  {
    v11 = 4;
  }

  v12 = *&self->_contentEncodingMethod;
  if (v12)
  {
    v13 = +[NSFileManager defaultManager];
    v14 = [v13 fileExistsAtPath:v12];

    if (v14)
    {
      v15 = 0;
      v16 = 2;
      goto LABEL_52;
    }
  }

  v17 = *&self->_contentEncodingMethod;
  *&self->_contentEncodingMethod = 0;

  v72 = 0;
  if (![MBSQLiteFileHandle lastModifiedForSQLiteFileAtPath:v62 time:&v72 error:a5])
  {
    goto LABEL_49;
  }

  v58 = v11;
  v59 = v10;
  v60 = a5;
  self->_mbNode.modified = v72;
  self->_encryptedSize = [(MBCKFile *)self size];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v61 = v8;
  v18 = [v8 settingsContext];
  v19 = [v18 plugins];

  v20 = [v19 countByEnumeratingWithState:&v68 objects:v80 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v69;
    v23 = &selRef_setServiceDelegate_;
LABEL_12:
    v24 = 0;
    v25 = v23[292];
    while (1)
    {
      if (*v69 != v22)
      {
        objc_enumerationMutation(v19);
      }

      v26 = *(*(&v68 + 1) + 8 * v24);
      v27 = objc_autoreleasePoolPush();
      if (objc_opt_respondsToSelector())
      {
        v28 = [(MBCKFile *)self domain];
        v29 = [v26 shouldScrubSQLiteFileCopyAtRelativePath:v63 domain:v28];

        if (v29)
        {
          break;
        }
      }

      objc_autoreleasePoolPop(v27);
      if (v21 == ++v24)
      {
        v21 = [v19 countByEnumeratingWithState:&v68 objects:v80 count:16];
        v23 = &selRef_setServiceDelegate_;
        if (v21)
        {
          goto LABEL_12;
        }

        goto LABEL_19;
      }
    }

    objc_autoreleasePoolPop(v27);

    a5 = v60;
    v8 = v61;
    v10 = v59;
    v12 = [(MBCKFile *)self _scrubSQLiteDatabaseWithEngine:v61 temporaryDirectory:v59 error:v60];
    objc_storeStrong(&self->_contentEncodingMethod, v12);
    if (v12)
    {
      v30 = 1;
      goto LABEL_23;
    }

    v45 = MBGetDefaultLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = *v60;
      *buf = 138412546;
      v75 = v62;
      v76 = 2112;
      v77 = v46;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Failed to scrub SQLite database at %@: %@", buf, 0x16u);
      v55 = *v60;
      _MBLog();
    }

    [(MBCKFile *)self _removeTemporaryCopy];
    v12 = 0;
    v15 = 0;
    goto LABEL_42;
  }

LABEL_19:

  v10 = v59;
  a5 = v60;
  v12 = [(MBCKFile *)self _compactSQLiteDatabaseAtPath:v62 temporaryDirectory:v59 error:v60];
  objc_storeStrong(&self->_contentEncodingMethod, v12);
  if (!v12)
  {
    v48 = MBGetDefaultLog();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = *v60;
      *buf = 138412546;
      v75 = v62;
      v76 = 2112;
      v77 = v49;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Failed to compact SQLite database at %@: %@", buf, 0x16u);
      v53 = v62;
      v54 = *v60;
      _MBLog();
    }

    v8 = v61;
LABEL_49:
    [(MBCKFile *)self _removeTemporaryCopy:v53];
    v15 = 0;
    v12 = 0;
LABEL_50:
    if (!*a5)
    {
      __assert_rtn("[MBCKFile _createTemporarySQLiteCopyWithEngine:temporaryDirectory:error:]", "MBCKFile.m", 1133, "result != MBPrepareForUploadResultFailure || *error");
    }

    v16 = 0;
    goto LABEL_52;
  }

  v30 = 0;
  v8 = v61;
LABEL_23:
  if (![MBProtectionClassUtils setWithPath:v12 value:v58 error:a5])
  {
    v43 = MBGetDefaultLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = *a5;
      *buf = 138412802;
      v75 = v12;
      v76 = 2112;
      v77 = v63;
      v78 = 2112;
      v79 = v44;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Failed to set protection class on SQLite database copy at %@ (%@): %@", buf, 0x20u);
      v56 = *a5;
      _MBLog();
    }

    [(MBCKFile *)self _removeTemporaryCopy];
    v15 = 0;
    if ((v30 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_42;
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v31 = [v8 settingsContext];
  v32 = [v31 plugins];

  v33 = [v32 countByEnumeratingWithState:&v64 objects:v73 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v65;
LABEL_26:
    v36 = 0;
    while (1)
    {
      if (*v65 != v35)
      {
        objc_enumerationMutation(v32);
      }

      v37 = *(*(&v64 + 1) + 8 * v36);
      v38 = objc_autoreleasePoolPush();
      if (objc_opt_respondsToSelector())
      {
        v39 = [v37 backingUpSQLiteFileCopyAtPath:v62 temporaryPath:v12];
        if (v39)
        {
          break;
        }
      }

      objc_autoreleasePoolPop(v38);
      if (v34 == ++v36)
      {
        v34 = [v32 countByEnumeratingWithState:&v64 objects:v73 count:16];
        if (v34)
        {
          goto LABEL_26;
        }

        goto LABEL_33;
      }
    }

    v15 = v39;
    objc_autoreleasePoolPop(v38);

    v47 = v15;
    a5 = v60;
    *v60 = v15;
    [(MBCKFile *)self _removeTemporaryCopy];
    if (v30)
    {
      v16 = 1;
      v8 = v61;
      goto LABEL_45;
    }

    v8 = v61;
    v10 = v59;
    goto LABEL_50;
  }

LABEL_33:

  v8 = v61;
  v40 = [v61 serviceAccount];
  v41 = [v61 device];
  a5 = v60;
  v42 = [(MBCKFile *)self refreshFromCopyWithAccount:v40 device:v41 error:v60];

  if ((v42 & 1) == 0)
  {
    v51 = MBGetDefaultLog();
    v10 = v59;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = *v60;
      *buf = 138412802;
      v75 = v12;
      v76 = 2112;
      v77 = v63;
      v78 = 2112;
      v79 = v52;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Failed to refresh file stats for SQLite database copy at %@ (%@): %@", buf, 0x20u);
      v57 = *v60;
      _MBLog();
    }

    [(MBCKFile *)self _removeTemporaryCopy];
    v15 = 0;
    if ((v30 & 1) == 0)
    {
      goto LABEL_50;
    }

LABEL_42:
    v16 = 1;
    goto LABEL_52;
  }

  v15 = 0;
  v16 = 2;
LABEL_45:
  v10 = v59;
LABEL_52:

  return v16;
}

- (void)_removeTemporaryCopy
{
  v2 = *&self->_contentEncodingMethod;
  if (v2)
  {
    *&self->_contentEncodingMethod = 0;
    v3 = v2;

    sub_1000D2F84(v3);
  }
}

- (BOOL)_createResourceCopyWithError:(id *)a3
{
  if (!self->_temporaryPath)
  {
    goto LABEL_4;
  }

  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:self->_temporaryPath];

  if (!v6 || (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 removeItemAtPath:self->_temporaryPath error:a3], v7, v8))
  {
LABEL_4:
    if ([(MBCKFile *)self hasAbsolutePath])
    {
      v9 = MBTemporaryPath();
      temporaryPath = self->_temporaryPath;
      self->_temporaryPath = v9;

      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = [(MBCKFile *)self absolutePath];
        v13 = self->_temporaryPath;
        buf.st_dev = 138412546;
        *&buf.st_mode = v12;
        WORD2(buf.st_ino) = 2112;
        *(&buf.st_ino + 6) = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Creating a copy of xattrs for %@ (%@)", &buf, 0x16u);

        v37 = [(MBCKFile *)self absolutePath];
        v39 = self->_temporaryPath;
        _MBLog();
      }

      v14 = [(MBCKFile *)self absolutePath];
      v44 = 0;
      v15 = +[MBExtendedAttributes attributesForPathFSR:error:](MBExtendedAttributes, "attributesForPathFSR:error:", [v14 fileSystemRepresentation], &v44);
      v16 = v44;

      if (v15)
      {
        v17 = [NSURL fileURLWithPath:self->_temporaryPath isDirectory:0];
        v43 = v16;
        v18 = [v15 writeToURL:v17 error:&v43];
        v19 = v43;

        if (v18)
        {
          memset(&buf, 0, sizeof(buf));
          v20 = lstat([(NSString *)self->_temporaryPath fileSystemRepresentation], &buf);
          v21 = v20 == 0;
          if (v20)
          {
            v22 = *__error();
            v23 = MBGetDefaultLog();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v24 = self->_temporaryPath;
              *v45 = 138412546;
              v46 = v24;
              v47 = 1024;
              LODWORD(v48) = v22;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to lstat %@: %{errno}d", v45, 0x12u);
              v38 = self->_temporaryPath;
              _MBLog();
            }

            if (a3)
            {
              *a3 = [MBError errorWithCode:100 path:self->_temporaryPath format:@"Failed to stat xattrs copy: %d (%s)", v22, strerror(v22)];
            }

            v25 = self->_temporaryPath;
            self->_temporaryPath = 0;
          }

          else
          {
            self->_signature = buf.st_size;
            v25 = MBGetDefaultLog();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v33 = [v15 count];
              signature = self->_signature;
              volumeType = self->_volumeType;
              *v45 = 134218498;
              v46 = v33;
              v47 = 2048;
              v48 = signature;
              v49 = 2112;
              v50 = volumeType;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Found %lu xattrs (%llu) for %@", v45, 0x20u);
              [v15 count];
              v41 = self->_signature;
              v42 = self->_volumeType;
              _MBLog();
            }
          }
        }

        else
        {
          v30 = self->_temporaryPath;
          self->_temporaryPath = 0;

          v31 = MBGetDefaultLog();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            buf.st_dev = 138412546;
            *&buf.st_mode = self;
            WORD2(buf.st_ino) = 2112;
            *(&buf.st_ino + 6) = v19;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Failed to serialize xattrs to disk for %@: %@", &buf, 0x16u);
            _MBLog();
          }

          if (a3)
          {
            v32 = [(MBCKFile *)self absolutePath];
            *a3 = [MBError errorWithCode:100 error:v19 path:v32 format:@"Failed to serialize xattrs to disk"];
          }

          v21 = 0;
        }
      }

      else
      {
        v28 = MBGetDefaultLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          buf.st_dev = 138412546;
          *&buf.st_mode = self;
          WORD2(buf.st_ino) = 2112;
          *(&buf.st_ino + 6) = v16;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to read xattrs for %@: %@", &buf, 0x16u);
          _MBLog();
        }

        if (a3)
        {
          v29 = v16;
          v15 = 0;
          v21 = 0;
          *a3 = v16;
        }

        else
        {
          v15 = 0;
          v21 = 0;
        }

        v19 = v16;
      }
    }

    else
    {
      v19 = MBGetDefaultLog();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v21 = 0;
LABEL_35:

        return v21;
      }

      v26 = [(MBDomain *)self->_domain domainName];
      v27 = self->_volumeType;
      buf.st_dev = 138412546;
      *&buf.st_mode = v26;
      WORD2(buf.st_ino) = 2112;
      *(&buf.st_ino + 6) = v27;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Can't make a copy of xattrs without an absolute path (%@:%@)", &buf, 0x16u);

      v15 = [(MBDomain *)self->_domain domainName];
      v40 = self->_volumeType;
      _MBLog();
      v21 = 0;
    }

    goto LABEL_35;
  }

  return 0;
}

- (void)_removeResourceCopy
{
  temporaryPath = self->_temporaryPath;
  if (temporaryPath)
  {
    self->_temporaryPath = 0;
    v3 = temporaryPath;

    sub_1000D2F84(v3);
  }
}

- (id)restoreState
{
  encodedAssetPath = self->_encodedAssetPath;
  if (!encodedAssetPath)
  {
    v4 = objc_opt_new();
    v5 = self->_encodedAssetPath;
    self->_encodedAssetPath = v4;

    encodedAssetPath = self->_encodedAssetPath;
  }

  return encodedAssetPath;
}

- (void)downloadContentsWithOperationTracker:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    __assert_rtn("[MBCKFile downloadContentsWithOperationTracker:completion:]", "MBCKFile.m", 1209, "tracker");
  }

  v8 = v7;
  if (([(MBCKFile *)self isRegularFile]|| [(MBCKFile *)self resourcesSize]|| (self->_mbNode.flags & 0x80) == 0) && ![(MBCKFile *)self downloaded])
  {
    v9 = [(MBCKModel *)self cache];
    v10 = [(MBCKFile *)self signature];
    v11 = [v9 fileAssetMetadataForSignature:v10 volumeType:{-[MBCKFile volumeType](self, "volumeType")}];

    if (v11 && ![(MBCKFile *)self resourcesSize])
    {
      v15 = [(MBCKFile *)self restoreState];
      v28 = [v11 stashedAssetPath];
      [v15 setStashedAssetPath:v28];

      if ([v15 stashedAssetDecrypted])
      {
        v29 = 1;
      }

      else
      {
        v29 = [v11 stashedAssetIsDecrypted];
      }

      [v15 setStashedAssetDecrypted:v29];
      v30 = [v11 decodedAssetPath];
      [v15 setDecodedAssetPath:v30];

      LOBYTE(self->_restoreState) |= 0x20u;
      v31 = MBGetDefaultLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = self;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Mark file as already downloaded because a file of the same signature has already been downloaded: %@", buf, 0xCu);
        _MBLog();
      }

      v8[2](v8, 0);
    }

    else
    {
      v32 = v11;
      v12 = [CKRecordID alloc];
      v13 = [(MBCKModel *)self recordIDString];
      v14 = [MBCKDatabaseManager zoneIDOfType:[(MBCKFile *)self recordZone]];
      v15 = [v12 initWithRecordName:v13 zoneID:v14];

      v16 = [NSPredicate predicateWithFormat:@"recordID = %@", v15];
      v17 = [CKQuery alloc];
      v18 = +[(MBCKModel *)MBCKFile];
      v19 = [v17 initWithRecordType:v18 predicate:v16];

      v20 = [[CKQueryOperation alloc] initWithQuery:v19];
      v21 = [v6 defaultZoneID];
      [v20 setZoneID:v21];

      v22 = [v6 engines];
      v23 = [v22 firstObject];

      if (!v23 || ([v23 persona], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "shouldRestoreFilesSparse"), v24, v25))
      {
        v26 = objc_opt_new();
        [v26 setSparseAware:&__kCFBooleanTrue];
        v36 = @"contents";
        v37 = v26;
        v27 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        [v20 setAssetTransferOptionsByKey:v27];
      }

      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_1000D4E74;
      v35[3] = &unk_1003BE268;
      v35[4] = self;
      [v20 setRecordFetchedBlock:v35];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_1000D4E88;
      v33[3] = &unk_1003BE290;
      v34 = v8;
      [v20 setQueryCompletionBlock:v33];
      [v6 addDatabaseOperation:v20];

      v11 = v32;
    }
  }

  else
  {
    v8[2](v8, 0);
  }
}

- (BOOL)stashAssetsToTemporaryDirectoryWithAccount:(id)a3 operationTracker:(id)a4 cache:(id)a5 device:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v126 = a6;
  if (!a7)
  {
    __assert_rtn("[MBCKFile stashAssetsToTemporaryDirectoryWithAccount:operationTracker:cache:device:error:]", "MBCKFile.m", 1253, "error");
  }

  if (!v14)
  {
    __assert_rtn("[MBCKFile stashAssetsToTemporaryDirectoryWithAccount:operationTracker:cache:device:error:]", "MBCKFile.m", 1254, "cache");
  }

  if (!v126)
  {
    __assert_rtn("[MBCKFile stashAssetsToTemporaryDirectoryWithAccount:operationTracker:cache:device:error:]", "MBCKFile.m", 1255, "device");
  }

  if ([(MBCKFile *)self isRegularFile]&& [(MBCKFile *)self size]|| self->_contentAsset)
  {
    v15 = [(MBCKFile *)self relativePath];
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      *v130 = v15;
      *&v130[8] = 2048;
      *&v130[10] = [(MBCKFile *)self size];
      *&v130[18] = 2048;
      *&v130[20] = [(MBCKFile *)self resourcesSize];
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Stashing assets for file, relativePath:%@, size:%llu, resourceSize:%llu", buf, 0x20u);
      v108 = [(MBCKFile *)self size];
      v111 = [(MBCKFile *)self resourcesSize];
      v105 = v15;
      _MBLog();
    }

    v125 = v15;

    v17 = [(MBCKFile *)self restoreState];
    v124 = v12;
    if (![(MBCKFile *)self isRegularFile])
    {
      goto LABEL_39;
    }

    if (![(MBCKFile *)self size])
    {
      goto LABEL_39;
    }

    v18 = [v17 stashedAssetPath];
    if (v18)
    {
      v19 = v18;
      v20 = +[NSFileManager defaultManager];
      [v17 stashedAssetPath];
      v22 = v21 = v13;
      v23 = [v20 fileExistsAtPath:v22];

      v13 = v21;
      v12 = v124;

      if (v23)
      {
        goto LABEL_39;
      }
    }

    v24 = self->_changeType;
    if (v24)
    {
      v25 = v24;
      v26 = [v24 fileURL];
      if (v26)
      {
        v120 = v25;
        v115 = [(MBCKFile *)self stashedAssetIsDecrypted];
        if (v115)
        {
          goto LABEL_18;
        }

        v27 = [v26 path];
        v128 = 0;
        v28 = v13;
        v29 = [(MBCKFile *)self _decryptWithOperationTracker:v13 destination:v27 device:v126 error:&v128];
        v30 = v128;

        if (v29)
        {

          v12 = v124;
          v13 = v28;
LABEL_18:
          if (BYTE6(self->_mbNode.cloneID) == 4)
          {
            v121 = v14;
            v31 = v17;
            v32 = v13;
            v33 = [v26 path];
            v34 = BYTE6(self->_mbNode.cloneID);
            v127 = 0;
            v35 = [MBProtectionClassUtils setWithPath:v33 value:v34 error:&v127];
            v36 = v127;

            if ((v35 & 1) == 0)
            {
              v37 = MBGetDefaultLog();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                v38 = BYTE6(self->_mbNode.cloneID);
                v39 = [v26 path];
                *buf = 67109634;
                *v130 = v38;
                *&v130[4] = 2112;
                *&v130[6] = v39;
                *&v130[14] = 2112;
                *&v130[16] = v36;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Failed to set protection class %d at path %@: %@", buf, 0x1Cu);

                v40 = BYTE6(self->_mbNode.cloneID);
                v108 = [v26 path];
                v111 = v36;
                v105 = v40;
                _MBLog();
              }
            }

            v13 = v32;
            v17 = v31;
            v14 = v121;
            v12 = v124;
          }

          v114 = v13;
          v41 = [(MBCKFile *)self signature:v105];
          v42 = [v41 mb_base64EncodedFileSystemPathString];

          if (!v42)
          {
            __assert_rtn("[MBCKFile stashAssetsToTemporaryDirectoryWithAccount:operationTracker:cache:device:error:]", "MBCKFile.m", 1306, "signature");
          }

          v43 = [v26 path];
          v44 = [v12 persona];
          v45 = [(MBCKFile *)self domain];
          v46 = [v44 restorePrefetchDirectoryForDomain:v45];

          v116 = v42;
          v117 = v46;
          v47 = [MBFileOperation createPathInDirectory:v46 fileName:v42];
          v122 = v43;
          v48 = [v43 fileSystemRepresentation];
          v49 = [v47 fileSystemRepresentation];
          if (!renamex_np(v48, v49, 4u))
          {
            goto LABEL_35;
          }

          v50 = *__error();
          if (v50 == 17)
          {
            goto LABEL_35;
          }

          if (v50 == 18)
          {
            v51 = MBGetDefaultLog();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
            {
              [v43 lastPathComponent];
              v52 = log = v51;
              *buf = 138412546;
              *v130 = v52;
              *&v130[8] = 2112;
              *&v130[10] = v47;
              _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Could not move stashed resource (%@) across volumes, copying to %@", buf, 0x16u);

              v106 = [v43 lastPathComponent];
              v109 = v47;
              _MBLog();

              v51 = log;
            }

            if ([MBFileOperation crossVolumeMoveFrom:v43 intoDir:v117 toFileNamed:v116 error:a7])
            {
              goto LABEL_35;
            }

            v53 = [MBError errnoForError:*a7];
            v54 = MBGetDefaultLog();
            v55 = v54;
            if (v53 == 17)
            {
              if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                *v130 = v122;
                *&v130[8] = 2112;
                *&v130[10] = v47;
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "Cross-volume copied %@ to %@", buf, 0x16u);
                v106 = v122;
                v109 = v47;
                _MBLog();
              }

LABEL_35:
              v118 = v26;
              [v17 setStashedAssetPath:{v47, v106, v109}];
              [v17 setStashedAssetDecrypted:v115 ^ 1];
              v56 = [(MBCKFile *)self signature];
              v57 = [v14 fileAssetMetadataForSignature:v56 volumeType:{-[MBCKFile volumeType](self, "volumeType")}];

              if (!v57)
              {
                v97 = [v17 stashedAssetPath];
                v98 = [(MBCKFile *)self signature];
                v99 = [v14 updateStashPath:v97 forSignature:v98 volumeType:-[MBCKFile volumeType](self isDecrypted:{"volumeType"), -[MBCKFile stashedAssetIsDecrypted](self, "stashedAssetIsDecrypted")}];

                if (v99)
                {
                  v100 = v99;
                  *a7 = v99;

                  v13 = v114;
                  v69 = v125;
                  v26 = v118;
                  v101 = v116;
                  v43 = v122;
LABEL_86:

                  goto LABEL_87;
                }
              }

              v58 = MBGetDefaultLog();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412802;
                *v130 = v125;
                *&v130[8] = 2112;
                *&v130[10] = v122;
                *&v130[18] = 2112;
                *&v130[20] = v47;
                _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEBUG, "Stashed downloaded file (%@) %@ at %@", buf, 0x20u);
                v108 = v122;
                v111 = v47;
                v105 = v125;
                _MBLog();
              }

              v12 = v124;
              v13 = v114;
LABEL_39:
              if (!self->_contentAsset)
              {
                v68 = 1;
                v69 = v125;
                goto LABEL_88;
              }

              v59 = a7;
              v60 = [v17 stashedResourcePath];
              if (v60)
              {
                v61 = v60;
                v62 = +[NSFileManager defaultManager];
                [v17 stashedResourcePath];
                v63 = v14;
                v64 = v17;
                v66 = v65 = v13;
                v67 = [v62 fileExistsAtPath:v66];

                v13 = v65;
                v17 = v64;
                v14 = v63;

                if (v67)
                {
                  v68 = 1;
                  v12 = v124;
                  v69 = v125;
LABEL_88:

                  goto LABEL_89;
                }
              }

              v70 = [(CKAsset *)self->_contentAsset fileURL:v105];
              if (v70)
              {
                v71 = v70;
                v123 = v14;
                v72 = v13;
                v12 = v124;
                v73 = [v124 persona];
                v74 = [(MBCKFile *)self domain];
                v75 = [v73 stashAsset:v71 forDomain:v74 error:v59];

                if (v75)
                {
                  [v17 setStashedResourcePath:v75];
                  v76 = MBGetDefaultLog();
                  if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
                  {
                    v77 = [(CKAsset *)self->_contentAsset fileURL];
                    v78 = [v77 path];
                    *buf = 138412802;
                    *v130 = v125;
                    *&v130[8] = 2112;
                    *&v130[10] = v78;
                    *&v130[18] = 2112;
                    *&v130[20] = v75;
                    _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEBUG, "Stashed downloaded file resource (%@) %@ at %@", buf, 0x20u);

                    v79 = [(CKAsset *)self->_contentAsset fileURL];
                    v110 = [v79 path];
                    _MBLog();
                  }

                  v68 = 1;
                  v12 = v124;
                }

                else
                {

                  v68 = 0;
                }

                v13 = v72;
                v69 = v125;
                v14 = v123;
                goto LABEL_88;
              }

              v80 = MBIsInternalInstall();
              v81 = MBGetDefaultLog();
              v82 = v81;
              v12 = v124;
              if (v80)
              {
                v69 = v125;
                if (os_log_type_enabled(v81, OS_LOG_TYPE_FAULT))
                {
                  contentAsset = self->_contentAsset;
                  *buf = 138412546;
                  *v130 = contentAsset;
                  *&v130[8] = 2112;
                  *&v130[10] = self;
                  _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_FAULT, "Nil fileURL for resource asset (xattrs) %@ for file %@", buf, 0x16u);
LABEL_60:
                  v107 = self->_contentAsset;
                  _MBLog();
                }
              }

              else
              {
                v69 = v125;
                if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                {
                  v88 = self->_contentAsset;
                  *buf = 138412546;
                  *v130 = v88;
                  *&v130[8] = 2112;
                  *&v130[10] = self;
                  _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "Nil fileURL for resource asset (xattrs) %@ for file %@", buf, 0x16u);
                  goto LABEL_60;
                }
              }

              [MBError errorWithCode:302 path:v69 format:@"Nil fileURL for resource asset (xattrs)"];
              *v59 = v68 = 0;
              goto LABEL_88;
            }

            v13 = v114;
            v69 = v125;
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              v103 = *a7;
              *buf = 138543874;
              *v130 = v122;
              *&v130[8] = 2082;
              *&v130[10] = v49;
              *&v130[18] = 2112;
              *&v130[20] = v103;
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "rename of stashed resource from %{public}@ to %{public}s failed: %@", buf, 0x20u);
              v112 = *a7;
              _MBLog();
            }

            v43 = v122;
          }

          else
          {
            v102 = MBGetDefaultLog();
            if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              *v130 = v43;
              *&v130[8] = 2112;
              *&v130[10] = v47;
              *&v130[18] = 1024;
              *&v130[20] = v50;
              _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_ERROR, "rename of stashed resource from %@ to %@ failed: %{errno}d", buf, 0x1Cu);
              _MBLog();
            }

            *a7 = [MBError posixErrorWithCode:v50 format:@"rename of stashed resource from %@ to %@ failed", v43, v47];
            v13 = v114;
            v69 = v125;
          }

          v101 = v116;
          goto LABEL_86;
        }

        v119 = v26;
        v95 = MBGetDefaultLog();
        if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          *v130 = v119;
          *&v130[8] = 2112;
          *&v130[10] = self;
          *&v130[18] = 2112;
          *&v130[20] = v30;
          _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_ERROR, "Failed to decrypt prefetched asset at %@ for %@: %@", buf, 0x20u);
          _MBLog();
        }

        v96 = v30;
        *a7 = v30;

        v13 = v28;
        v69 = v125;
        v26 = v119;
LABEL_76:

LABEL_87:
        v68 = 0;
        v12 = v124;
        goto LABEL_88;
      }

      v89 = MBIsInternalInstall();
      v90 = MBGetDefaultLog();
      v91 = v90;
      if (v89)
      {
        if (os_log_type_enabled(v90, OS_LOG_TYPE_FAULT))
        {
          v92 = [(MBCKFile *)self size];
          *buf = 138412802;
          *v130 = v25;
          *&v130[8] = 2112;
          *&v130[10] = self;
          *&v130[18] = 2048;
          *&v130[20] = v92;
          _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_FAULT, "Nil fileURL for content asset %@ for file %@ with size:%llu", buf, 0x20u);
LABEL_71:
          [(MBCKFile *)self size:v105];
          _MBLog();
          v26 = 0;
        }
      }

      else if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
      {
        v94 = [(MBCKFile *)self size];
        *buf = 138412802;
        *v130 = v25;
        *&v130[8] = 2112;
        *&v130[10] = self;
        *&v130[18] = 2048;
        *&v130[20] = v94;
        _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_ERROR, "Nil fileURL for content asset %@ for file %@ with size:%llu", buf, 0x20u);
        goto LABEL_71;
      }

      v69 = v125;
      *a7 = [MBError errorWithCode:302 path:v125 format:@"Nil fileURL for content asset with size:%llu", [(MBCKFile *)self size]];
      goto LABEL_76;
    }

    v84 = MBIsInternalInstall();
    v85 = MBGetDefaultLog();
    v86 = v85;
    if (v84)
    {
      if (os_log_type_enabled(v85, OS_LOG_TYPE_FAULT))
      {
        v87 = [(MBCKFile *)self size];
        *buf = 138412546;
        *v130 = self;
        *&v130[8] = 2048;
        *&v130[10] = v87;
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_FAULT, "Nil content asset for file %@ with size:%llu", buf, 0x16u);
LABEL_67:
        [(MBCKFile *)self size:v105];
        _MBLog();
        v12 = v124;
      }
    }

    else if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      v93 = [(MBCKFile *)self size];
      *buf = 138412546;
      *v130 = self;
      *&v130[8] = 2048;
      *&v130[10] = v93;
      _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, "Nil content asset for file %@ with size:%llu", buf, 0x16u);
      goto LABEL_67;
    }

    v69 = v125;
    [MBError errorWithCode:100 path:v125 format:@"Nil content asset for file with size:%llu", [(MBCKFile *)self size]];
    *a7 = v68 = 0;
    goto LABEL_88;
  }

  v68 = 1;
LABEL_89:

  return v68;
}

- (BOOL)restoreAssetWithOperationTracker:(id)a3 destination:(id)a4 logger:(id)a5 cache:(id)a6 device:(id)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (!v13)
  {
    __assert_rtn("[MBCKFile restoreAssetWithOperationTracker:destination:logger:cache:device:error:]", "MBCKFile.m", 1367, "tracker");
  }

  if (!v16)
  {
    __assert_rtn("[MBCKFile restoreAssetWithOperationTracker:destination:logger:cache:device:error:]", "MBCKFile.m", 1368, "cache");
  }

  v18 = v17;
  if (!v17)
  {
    __assert_rtn("[MBCKFile restoreAssetWithOperationTracker:destination:logger:cache:device:error:]", "MBCKFile.m", 1369, "device");
  }

  v195 = [v13 account];
  if (!v195)
  {
    __assert_rtn("[MBCKFile restoreAssetWithOperationTracker:destination:logger:cache:device:error:]", "MBCKFile.m", 1371, "serviceAccount");
  }

  v19 = [(MBCKFile *)v14 fileSystemRepresentation];
  v20 = [(MBCKFile *)self relativePath];
  v21 = [v20 length];

  if (!v21)
  {
LABEL_18:
    memset(&v205, 0, sizeof(v205));
    if (lstat(v19, &v205))
    {
      if (*__error() == 63)
      {
        v31 = MBGetDefaultLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = *__error();
          *buf = 138412546;
          *v207 = v14;
          *&v207[8] = 1024;
          *&v207[10] = v32;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Skipping restore asset, lstat failed at %@: %{errno}d", buf, 0x12u);
          v171 = *__error();
          _MBLog();
        }

        if (a8)
        {
          [MBError posixErrorWithCode:107 path:v14 format:@"lstat error"];
          *a8 = v33 = 0;
          goto LABEL_232;
        }

        goto LABEL_74;
      }

      if (*__error() == 2)
      {
        v34 = v16;
LABEL_42:
        v35 = 0;
        goto LABEL_43;
      }

      if (a8)
      {
        *a8 = [MBError posixErrorWithCode:101 path:v14 format:@"lstat error"];
      }

      v38 = MBGetDefaultLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = *__error();
        *buf = 138412546;
        *v207 = v14;
        *&v207[8] = 1024;
        *&v207[10] = v39;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "lstat failed at %@: %{errno}d", buf, 0x12u);
        v172 = *__error();
        _MBLog();
      }

LABEL_73:

      goto LABEL_74;
    }

    if ((v205.st_mode & 0xF000) == 0x4000)
    {
      v34 = v16;
      v35 = 1;
LABEL_43:
      if ([(MBCKFile *)self isRegularFile]&& [(MBCKFile *)self size])
      {
        v193 = +[NSFileManager defaultManager];
        v43 = [(MBCKFile *)self restoreState];
        v44 = [(MBCKFile *)self signature];
        v16 = v34;
        v45 = [v34 fileAssetMetadataForSignature:v44 volumeType:{-[MBCKFile volumeType](self, "volumeType")}];

        v46 = [v45 stashedAssetPath];
        if (v46)
        {
          [v43 setStashedAssetPath:v46];
        }

        if ([v43 stashedAssetDecrypted])
        {
          v47 = 1;
        }

        else
        {
          v47 = [v45 stashedAssetIsDecrypted];
        }

        [v43 setStashedAssetDecrypted:v47];
        v191 = v45;
        v60 = [v45 decodedAssetPath];
        if (v60)
        {
          [v43 setDecodedAssetPath:v60];
        }

        v189 = v60;
        v61 = [v43 decodedAssetPath];
        v190 = v46;
        if (v61)
        {
          v62 = v61;
          if ([v193 fileExistsAtPath:v61])
          {
            v188 = v43;
            [(MBCKFile *)self hasContentEncodingMethod];
            v63 = 0;
LABEL_70:
            v64 = v62;
            v185 = v64;
            v65 = v191;
            goto LABEL_108;
          }

          v74 = MBGetDefaultLog();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *v207 = v62;
            *&v207[8] = 2112;
            *&v207[10] = self;
            _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "Missing decoded asset at %@ for %@", buf, 0x16u);
            v168 = v62;
            v170 = self;
            _MBLog();
          }
        }

        v75 = [(MBCKFile *)self hasContentEncodingMethod:v168];
        v76 = [v43 stashedAssetPath];
        v64 = v76;
        if (v75)
        {
          v77 = v191;
          v188 = v43;
          if (v76)
          {
            if ([v193 fileExistsAtPath:v76])
            {
              v78 = v64;
              v186 = v16;
              v63 = 0;
              goto LABEL_145;
            }

            v100 = MBGetDefaultLog();
            if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *v207 = v64;
              *&v207[8] = 2112;
              *&v207[10] = self;
              _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_ERROR, "Missing stashed asset at %@ for %@", buf, 0x16u);
              v168 = v64;
              v170 = self;
              _MBLog();
            }

            [v43 setStashedAssetPath:0];
            [v43 setStashedAssetDecrypted:0];
          }

          v101 = [self->_changeType fileURL];
          v102 = [v101 path];

          if (v102 && ([v193 fileExistsAtPath:v102] & 1) != 0)
          {
            v203 = 0;
            v103 = [(MBCKFile *)self stashAssetsToTemporaryDirectoryWithAccount:v195 operationTracker:v13 cache:v16 device:v18 error:&v203];
            v63 = v203;
            if (v103)
            {
              v186 = v16;
              v104 = [(MBCKFile *)self restoreState];
              [v104 stashedAssetPath];
              v106 = v105 = v102;

              v78 = v106;
              if (!v106)
              {
                __assert_rtn("[MBCKFile restoreAssetWithOperationTracker:destination:logger:cache:device:error:]", "MBCKFile.m", 1486, "stashedAssetPath");
              }

LABEL_145:
              v107 = v63;
              v108 = [v195 persona];
              v109 = [(MBCKFile *)self domain];
              v110 = [v108 restorePrefetchDirectoryForDomain:v109];

              v202 = v107;
              v184 = v110;
              LOBYTE(v108) = [(MBCKFile *)self decodeWithFileAtPath:v78 destinationDirectory:v110 error:&v202];
              v63 = v202;

              if (v108)
              {
                v111 = v15;
                v112 = [v188 decodedAssetPath];
                if (!v112)
                {
                  __assert_rtn("[MBCKFile restoreAssetWithOperationTracker:destination:logger:cache:device:error:]", "MBCKFile.m", 1495, "decodedAssetPath");
                }

                v62 = v112;
                v113 = MBGetDefaultLog();
                if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412802;
                  *v207 = v78;
                  *&v207[8] = 2112;
                  *&v207[10] = v62;
                  v208 = 2112;
                  v209 = self;
                  _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "Decoded stashed asset from %@ to %@ for %@", buf, 0x20u);
                  v170 = v62;
                  v177 = self;
                  v168 = v78;
                  _MBLog();
                }

                v114 = [(MBCKFile *)self signature];
                v115 = [v186 updateDecodedAssetPath:v62 forSignature:v114 volumeType:{-[MBCKFile volumeType](self, "volumeType")}];

                if (!v115)
                {

                  v15 = v111;
                  v16 = v186;
                  goto LABEL_70;
                }

                v116 = MBGetDefaultLog();
                if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  *v207 = v115;
                  _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_ERROR, "Failed to update decoded asset path: %@", buf, 0xCu);
                  _MBLog();
                }

                if (a8)
                {
                  v117 = v115;
                  *a8 = v115;
                }

                v102 = v62;
                v15 = v111;
                v16 = v186;
                v77 = v191;
                v118 = v193;
              }

              else
              {
                v135 = MBGetDefaultLog();
                if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412802;
                  *v207 = v78;
                  *&v207[8] = 2112;
                  *&v207[10] = self;
                  v208 = 2112;
                  v209 = v63;
                  _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_ERROR, "Failed to decode the stashed asset at %@ for %@: %@", buf, 0x20u);
                  _MBLog();
                }

                v16 = v186;
                if (a8)
                {
                  v136 = v63;
                  *a8 = v63;
                }

                v77 = v191;
                v102 = v78;
                v118 = v193;
              }

LABEL_195:

              goto LABEL_196;
            }

            v138 = MBGetDefaultLog();
            if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *v207 = v63;
              _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_ERROR, "Failed to stash content asset %@", buf, 0xCu);
              _MBLog();
            }

            if (a8)
            {
              v139 = v63;
              *a8 = v63;
            }
          }

          else
          {
            v119 = MBGetDefaultLog();
            if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *v207 = v102;
              *&v207[8] = 2112;
              *&v207[10] = self;
              _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_ERROR, "Missing content asset at %@ for %@", buf, 0x16u);
              _MBLog();
            }

            if (a8)
            {
              [(MBCKFile *)self absolutePath];
              v121 = v120 = v102;
              *a8 = [MBError errorWithCode:205 path:v121 format:@"Missing content asset"];

              v102 = v120;
              v77 = v191;
              v118 = v193;
              v63 = 0;
              goto LABEL_195;
            }

            v63 = 0;
          }

          v118 = v193;
          goto LABEL_195;
        }

        v65 = v191;
        if (v76)
        {
          if ([v193 fileExistsAtPath:v76])
          {
LABEL_107:
            v188 = v43;
            v185 = 0;
            v63 = 0;
LABEL_108:
            v187 = v15;
            if (_os_feature_enabled_impl())
            {
              v182 = v64;
              v81 = [(MBCKFile *)self volumeType];
              v82 = [(MBCKFile *)self signature];
              v201 = v63;
              v83 = [v16 retainCountForSignature:v82 volumeType:v81 error:&v201];
              v84 = v201;

              v181 = v83;
              if (v84)
              {
                v85 = MBGetDefaultLog();
                v43 = v188;
                v64 = v182;
                if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  *v207 = self;
                  *&v207[8] = 2112;
                  *&v207[10] = v84;
                  _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_ERROR, "Failed to fetch retain count for %@: %@", buf, 0x16u);
                  _MBLog();
                }

                v86 = a8;
                v65 = v191;
                if (!a8)
                {
                  goto LABEL_114;
                }

LABEL_113:
                v87 = v84;
                *v86 = v84;
LABEL_114:

                v88 = v185;
LABEL_221:
                v137 = v193;
LABEL_222:

                v33 = 0;
LABEL_231:
                v15 = v187;
                goto LABEL_232;
              }

              v180 = [v83 unsignedLongLongValue];
              if (!v180)
              {
                v122 = MBGetDefaultLog();
                if (os_log_type_enabled(v122, OS_LOG_TYPE_FAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_FAULT, "retainCount == 0, clones may not be preserved", buf, 2u);
                  _MBLog();
                }
              }

              if ([(MBCKFile *)self sourceDeviceInode:v168])
              {
                v123 = [(MBCKFile *)self sourceDeviceInode];
                v124 = [(MBCKFile *)self signature];
                v200 = 0;
                v125 = [v16 countRestoreFilesWithSourceDeviceInode:v123 signature:v124 volumeType:v81 error:&v200];
                v126 = v200;

                v64 = v182;
                if (!v125 || v126)
                {
                  v127 = MBGetDefaultLog();
                  if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
                  {
                    v128 = [NSNumber numberWithUnsignedLongLong:[(MBCKFile *)self sourceDeviceInode]];
                    *buf = 138412546;
                    *v207 = v128;
                    *&v207[8] = 2112;
                    *&v207[10] = v126;
                    _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_ERROR, "Failed to get link count for %@: %@", buf, 0x16u);

                    v169 = [NSNumber numberWithUnsignedLongLong:[(MBCKFile *)self sourceDeviceInode]];
                    v176 = v126;
                    _MBLog();

                    v64 = v182;
                  }
                }

                v129 = v16;

                v130 = v125 > 1;
              }

              else
              {
                v129 = v16;
                v130 = 0;
                v64 = v182;
              }

              v140 = [(MBCKFile *)v64 fileSystemRepresentation];
              if (!v140)
              {
                __assert_rtn("[MBCKFile restoreAssetWithOperationTracker:destination:logger:cache:device:error:]", "MBCKFile.m", 1564, "sourcePathFSR");
              }

              v141 = v140;
              v142 = [(MBCKFile *)v14 fileSystemRepresentation];
              if (!v142)
              {
                __assert_rtn("[MBCKFile restoreAssetWithOperationTracker:destination:logger:cache:device:error:]", "MBCKFile.m", 1566, "destinationFSR");
              }

              v143 = v142;
              v144 = MBGetDefaultLog();
              v145 = os_log_type_enabled(v144, OS_LOG_TYPE_INFO);
              if (v130)
              {
                if (v145)
                {
                  v146 = [(MBCKFile *)self fileID];
                  *buf = 138413058;
                  *v207 = v182;
                  *&v207[8] = 2112;
                  *&v207[10] = v14;
                  v208 = 2112;
                  v209 = v146;
                  v210 = 2048;
                  v211 = v180;
                  _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_INFO, "Restoring hard link from %@ to %@ (%@) rc:%lld", buf, 0x2Au);

                  v178 = [(MBCKFile *)self fileID];
                  v179 = v180;
                  v169 = v182;
                  v176 = v14;
                  _MBLog();
                }

                v16 = v129;
                if (!link(v141, v143))
                {
                  v84 = 0;
                  v43 = v188;
                  v65 = v191;
                  v64 = v182;
                  goto LABEL_225;
                }

                v147 = *__error();
                v148 = MBGetDefaultLog();
                v149 = v148;
                v64 = v182;
                if (v147 == 18)
                {
                  v43 = v188;
                  if (os_log_type_enabled(v148, OS_LOG_TYPE_FAULT))
                  {
                    v150 = [(MBCKFile *)v182 lastPathComponent];
                    *buf = 138412546;
                    *v207 = v150;
                    *&v207[8] = 2112;
                    *&v207[10] = v14;
                    _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_FAULT, "Could not restore hard link (%@) across volumes, copying to %@", buf, 0x16u);

                    v169 = [(MBCKFile *)v182 lastPathComponent];
                    v176 = v14;
                    _MBLog();

                    v64 = v182;
                  }

                  v151 = [MBFileOperation crossVolumeCopyFrom:v141 toDestination:v143 shouldDeleteSource:0 error:a8];
                  v84 = 0;
                  v65 = v191;
                  if ((v151 & 1) == 0)
                  {
                    goto LABEL_114;
                  }

                  goto LABEL_225;
                }

                if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412802;
                  *v207 = v182;
                  *&v207[8] = 2112;
                  *&v207[10] = v14;
                  v208 = 1024;
                  LODWORD(v209) = v147;
                  _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_ERROR, "Failed to hardlink file from %@ to %@: %{errno}d", buf, 0x1Cu);
                  v176 = v14;
                  v178 = v147;
                  v169 = v182;
                  _MBLog();
                }

                v65 = v191;
                if (v147 == 17)
                {
                  v159 = [(MBCKFile *)self domainName];
                  v160 = [v159 isEqualToString:@"AppDomainGroup-group.com.apple.FileProvider.LocalStorage"];

                  if (v160)
                  {
                    v199 = 0;
                    v64 = v182;
                    v161 = [MBRestorableOperation move:self fromSource:v182 destination:v14 destinationSize:v205.st_size conflictResolution:2 error:&v199];
                    v84 = v199;

                    v43 = v188;
                    if (!v161)
                    {
LABEL_244:
                      v86 = a8;
                      if (!a8)
                      {
                        goto LABEL_114;
                      }

                      goto LABEL_113;
                    }

LABEL_225:
                    [v187 logLinkForRestorable:self state:5 source:v64 target:{v14, v169, v176, v178, v179}];
LABEL_228:

                    goto LABEL_229;
                  }
                }

                v64 = v182;
                v84 = [MBError errorWithErrno:v147 format:@"Failed hardlinking from %@ to %@", v182, v14, v178, v179];
                v165 = MBGetDefaultLog();
                if (!os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
                {
LABEL_251:

                  v86 = a8;
                  v43 = v188;
                  if (!a8)
                  {
                    goto LABEL_114;
                  }

                  goto LABEL_113;
                }

                *buf = 138412802;
                *v207 = v182;
                *&v207[8] = 2112;
                *&v207[10] = v14;
                v208 = 2112;
                v209 = v84;
                _os_log_impl(&_mh_execute_header, v165, OS_LOG_TYPE_ERROR, "link error from %@ to %@: %@", buf, 0x20u);
LABEL_250:
                _MBLog();
                goto LABEL_251;
              }

              if (v145)
              {
                *buf = 138413058;
                *v207 = v64;
                *&v207[8] = 2112;
                *&v207[10] = v14;
                v208 = 2112;
                v209 = self;
                v210 = 2048;
                v211 = v180;
                _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_INFO, "Cloning from %@ to %@ (%@) rc:%lld", buf, 0x2Au);
                v178 = self;
                v179 = v180;
                v169 = v64;
                v176 = v14;
                _MBLog();
              }

              v16 = v129;
              if (clonefile(v141, v143, 0))
              {
                v152 = *__error();
                v153 = MBGetDefaultLog();
                v154 = v153;
                if (v152 == 18)
                {
                  v43 = v188;
                  if (os_log_type_enabled(v153, OS_LOG_TYPE_INFO))
                  {
                    v155 = [(MBCKFile *)v64 lastPathComponent];
                    *buf = 138412546;
                    *v207 = v155;
                    *&v207[8] = 2112;
                    *&v207[10] = v14;
                    _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_INFO, "Could not restore clone (%@) across volumes, copying to %@", buf, 0x16u);

                    v169 = [(MBCKFile *)v182 lastPathComponent];
                    v176 = v14;
                    _MBLog();

                    v64 = v182;
                  }

                  v156 = [MBFileOperation crossVolumeCopyFrom:v141 toDestination:v143 shouldDeleteSource:0 error:a8];
                  v84 = 0;
                  v65 = v191;
                  if ((v156 & 1) == 0)
                  {
                    goto LABEL_114;
                  }
                }

                else
                {
                  if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412802;
                    *v207 = v64;
                    *&v207[8] = 2112;
                    *&v207[10] = v14;
                    v208 = 1024;
                    LODWORD(v209) = v152;
                    _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_ERROR, "Failed to clone file from %@ to %@: %{errno}d", buf, 0x1Cu);
                    v176 = v14;
                    v178 = v152;
                    v169 = v64;
                    _MBLog();
                  }

                  v65 = v191;
                  if (v152 != 17 || (-[MBCKFile domainName](self, "domainName"), v162 = objc_claimAutoreleasedReturnValue(), v163 = [v162 isEqualToString:@"AppDomainGroup-group.com.apple.FileProvider.LocalStorage"], v162, !v163))
                  {
                    v64 = v182;
                    v84 = [MBError errorWithErrno:v152 format:@"Failed cloning from %@ to %@", v182, v14, v178, v179];
                    v165 = MBGetDefaultLog();
                    if (!os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_251;
                    }

                    *buf = 138412802;
                    *v207 = v182;
                    *&v207[8] = 2112;
                    *&v207[10] = v14;
                    v208 = 2112;
                    v209 = v84;
                    _os_log_impl(&_mh_execute_header, v165, OS_LOG_TYPE_ERROR, "clone error from %@ to %@: %@", buf, 0x20u);
                    goto LABEL_250;
                  }

                  v198 = 0;
                  v64 = v182;
                  v164 = [MBRestorableOperation move:self fromSource:v182 destination:v14 destinationSize:v205.st_size conflictResolution:1 error:&v198];
                  v84 = v198;

                  v43 = v188;
                  if (!v164)
                  {
                    goto LABEL_244;
                  }
                }
              }

              else
              {
                v84 = 0;
                v43 = v188;
                v65 = v191;
              }

              [v187 logCloneForRestorable:self state:5 source:v64 target:{v14, v169, v176, v178, v179}];
              goto LABEL_228;
            }

            v89 = MBGetDefaultLog();
            if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              *v207 = v64;
              *&v207[8] = 2112;
              *&v207[10] = v14;
              _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEBUG, "Moving downloaded file from %@ to %@", buf, 0x16u);
              v168 = v64;
              v170 = v14;
              _MBLog();
            }

            v197 = v63;
            v90 = [v193 moveItemAtPath:v64 toPath:v14 error:&v197];
            v84 = v197;

            if (v90)
            {
              v43 = v188;
LABEL_229:
              v99 = v190;
              goto LABEL_230;
            }

            v92 = MBGetDefaultLog();
            if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543874;
              *v207 = v64;
              *&v207[8] = 2114;
              *&v207[10] = v14;
              v208 = 2114;
              v209 = v84;
              _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_ERROR, "Failed to move file into place from %{public}@ to %{public}@: %{public}@", buf, 0x20u);
              v170 = v14;
              v177 = v84;
              v168 = v64;
              _MBLog();
            }

            v93 = [(MBCKFile *)self domainName];
            if ([v93 isEqualToString:@"AppDomainGroup-group.com.apple.FileProvider.LocalStorage"])
            {
              v183 = v64;
              v94 = [(MBCKFile *)v84 domain];
              if ([v94 isEqualToString:NSCocoaErrorDomain])
              {
                v95 = [(MBCKFile *)v84 code];

                v96 = v95 == 516;
                v65 = v191;
                v64 = v183;
                if (v96)
                {
                  v196 = v84;
                  v97 = [MBRestorableOperation move:self fromSource:v183 destination:v14 destinationSize:v205.st_size conflictResolution:3 error:&v196];
                  v98 = v196;

                  if (!v97)
                  {
                    v88 = v185;
                    if (a8)
                    {
                      v166 = v98;
                      *a8 = v98;
                    }

                    v84 = v98;
                    v137 = v193;
                    v43 = v188;
                    v64 = v183;
                    goto LABEL_222;
                  }

                  v84 = v98;
                  v43 = v188;
                  v99 = v190;
                  v64 = v183;
LABEL_230:
                  [v43 setStashedAssetPath:{0, v168, v170, v177}];

                  v33 = 1;
                  goto LABEL_231;
                }

LABEL_219:
                v43 = v188;
                [v188 setStashedAssetPath:{0, v168, v170, v177}];
                [v188 setStashedAssetDecrypted:0];
                v88 = v185;
                if (a8)
                {
                  v157 = v84;
                  *a8 = v84;
                }

                goto LABEL_221;
              }

              v64 = v183;
            }

            goto LABEL_219;
          }

          v79 = MBGetDefaultLog();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *v207 = v64;
            *&v207[8] = 2112;
            *&v207[10] = self;
            _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "Missing stashed asset at %@ for %@", buf, 0x16u);
            v168 = v64;
            v170 = self;
            _MBLog();
          }

          [v43 setStashedAssetPath:0];
          [v43 setStashedAssetDecrypted:0];
        }

        v80 = [self->_changeType fileURL];
        v64 = [v80 path];

        if (v64)
        {
          if ([v193 fileExistsAtPath:v64])
          {
            goto LABEL_107;
          }

          v131 = MBGetDefaultLog();
          if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *v207 = v64;
            *&v207[8] = 2112;
            *&v207[10] = self;
            _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_ERROR, "Missing content asset at %@ for %@", buf, 0x16u);
            v168 = v64;
            v170 = self;
            _MBLog();
          }
        }

        v187 = v15;
        v132 = [(MBCKFile *)self absolutePath:v168];
        v84 = [MBError errorWithCode:205 path:v132 format:@"Missing content asset"];

        v133 = MBGetDefaultLog();
        if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *v207 = self;
          *&v207[8] = 2112;
          *&v207[10] = v84;
          _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_ERROR, "Missing content asset on %@: %@", buf, 0x16u);
          _MBLog();
        }

        if (a8)
        {
          v134 = v84;
          v88 = 0;
          v64 = 0;
          *a8 = v84;
        }

        else
        {
          v88 = 0;
          v64 = 0;
        }

        v137 = v193;
        v65 = v191;
        goto LABEL_222;
      }

      if ([(MBCKFile *)self isRegularFile]&& ![(MBCKFile *)self size])
      {
        v67 = open_dprotected_np(v19, 1793, 4, 0, [(MBCKFile *)self permissions]);
        if (v67 < 0)
        {
          v16 = v34;
          v51 = a8;
          if (!a8)
          {
            goto LABEL_196;
          }

          v52 = @"open_dprotected_np error";
          goto LABEL_129;
        }

        close(v67);
      }

      else
      {
        if ([(MBCKFile *)self isDirectory])
        {
          v48 = MBGetDefaultLog();
          v49 = os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG);
          if (v35)
          {
            v16 = v34;
            if (v49)
            {
              v50 = [(MBCKFile *)self permissions];
              *buf = 67109378;
              *v207 = v50;
              *&v207[4] = 2112;
              *&v207[6] = v14;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "Directory already exists, restoring permissions 0%o at %@", buf, 0x12u);
              v168 = [(MBCKFile *)self permissions];
              v170 = v14;
              _MBLog();
            }

            if (lchmod(v19, [(MBCKFile *)self permissions]))
            {
              v51 = a8;
              if (!a8)
              {
                goto LABEL_196;
              }

              v52 = @"lchmod error";
LABEL_129:
              [MBError posixErrorWithCode:102 path:v14 format:v52, v168, v170];
              *v51 = v33 = 0;
              goto LABEL_232;
            }
          }

          else
          {
            v16 = v34;
            if (v49)
            {
              v66 = [(MBCKFile *)self permissions];
              *buf = 138412546;
              *v207 = v14;
              *&v207[8] = 1024;
              *&v207[10] = v66;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "Making directory at %@ (0%o)", buf, 0x12u);
              v168 = v14;
              v170 = [(MBCKFile *)self permissions];
              _MBLog();
            }

            if (mkdir(v19, [(MBCKFile *)self permissions]))
            {
              v51 = a8;
              if (!a8)
              {
                goto LABEL_196;
              }

              v52 = @"mkdir error";
              goto LABEL_129;
            }
          }

          v33 = 1;
          goto LABEL_232;
        }

        if ([(MBCKFile *)self isSymbolicLink])
        {
          v53 = [(MBCKFile *)self linkTarget];

          v54 = MBGetDefaultLog();
          v55 = v54;
          v16 = v34;
          if (v53)
          {
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
            {
              v56 = [(MBCKFile *)self linkTarget];
              *buf = 138412546;
              *v207 = v14;
              *&v207[8] = 2112;
              *&v207[10] = v56;
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEBUG, "Creating symbolic link at %@ to target %@", buf, 0x16u);

              v173 = [(MBCKFile *)self linkTarget];
              _MBLog();
            }

            v57 = [(MBCKFile *)self linkTarget];
            if ([v57 length])
            {
              v58 = [(MBCKFile *)self linkTarget];
              v59 = [v58 fileSystemRepresentation];
            }

            else
            {
              v59 = "";
            }

            if (symlink(v59, v19))
            {
              if (!a8)
              {
                goto LABEL_196;
              }

              [MBError posixErrorWithCode:102 path:v14 format:@"symlink error"];
              *a8 = v33 = 0;
            }

            else
            {
              v33 = 1;
            }

            goto LABEL_232;
          }

          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *v207 = self;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "Failed to set symbolic link: file missing link target: %@", buf, 0xCu);
            _MBLog();
          }

          if (a8)
          {
            v91 = [(MBCKFile *)self absolutePath];
            *a8 = [MBError errorWithCode:205 path:v91 format:@"Symbolic link missing link target"];
          }

LABEL_74:
          v33 = 0;
          goto LABEL_232;
        }
      }

      v33 = 1;
      v16 = v34;
      goto LABEL_232;
    }

    v36 = [(MBCKFile *)self domainName];
    if ([v36 isEqualToString:@"AppDomainGroup-group.com.apple.FileProvider.LocalStorage"])
    {
      v37 = _os_feature_enabled_impl();

      if (v37)
      {
        v34 = v16;
        v38 = MBGetDefaultLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v207 = v14;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Not removing existing On My iPhone file at %@", buf, 0xCu);
          v167 = v14;
          _MBLog();
        }

        goto LABEL_41;
      }
    }

    else
    {
    }

    v40 = MBGetDefaultLog();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v207 = v14;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Removing existing item at %@", buf, 0xCu);
      v167 = v14;
      _MBLog();
    }

    v41 = +[NSFileManager defaultManager];
    v204 = 0;
    v42 = [v41 removeItemAtPath:v14 error:&v204];
    v38 = v204;

    if ((v42 & 1) == 0)
    {
      if (a8)
      {
        *a8 = [MBError errorWithCode:102 error:v38 path:v14 format:@"Failed to remove existing file"];
      }

      goto LABEL_73;
    }

    v34 = v16;
LABEL_41:

    goto LABEL_42;
  }

  v22 = [(MBCKFile *)self relativePath];
  v23 = [v22 stringByDeletingLastPathComponent];

  v24 = [(MBCKFile *)self relativePath];
  v25 = [(MBCKFile *)v14 rangeOfString:v24];

  if (v25 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_17:

    goto LABEL_18;
  }

  v26 = v14;
  v27 = v15;
  v192 = v26;
  v28 = [(MBCKFile *)v26 substringToIndex:v25];
  if (![v23 length])
  {
    v30 = v23;
LABEL_16:

    v23 = v30;
    v15 = v27;
    v14 = v192;
    goto LABEL_17;
  }

  while (1)
  {
    v29 = [v28 stringByAppendingPathComponent:v23];
    memset(&v205, 0, sizeof(v205));
    if (!lstat([v29 fileSystemRepresentation], &v205))
    {
      if ((~v205.st_mode & 0xA000) == 0)
      {
        v15 = v27;
        v70 = a8;
        v14 = v192;
        if (!a8)
        {
          goto LABEL_122;
        }

        v71 = [MBError errorWithCode:205 path:v29 format:@"Restore path parent directory is a symlink"];
        goto LABEL_121;
      }

      goto LABEL_13;
    }

    if (*__error() == 63)
    {
      break;
    }

    if (*__error() != 2)
    {
      if (a8)
      {
        *a8 = [MBError posixErrorWithPath:v29 format:@"lstat error"];
      }

      v72 = MBGetDefaultLog();
      v15 = v27;
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        v73 = *__error();
        *buf = 138412546;
        *v207 = v29;
        *&v207[8] = 1024;
        *&v207[10] = v73;
        _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "lstat failed at %@: %{errno}d", buf, 0x12u);
        v175 = *__error();
        _MBLog();
      }

      v14 = v192;
      goto LABEL_122;
    }

LABEL_13:
    v30 = [v23 stringByDeletingLastPathComponent];

    v23 = v30;
    if (![v30 length])
    {
      goto LABEL_16;
    }
  }

  v68 = MBGetDefaultLog();
  v15 = v27;
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
  {
    v69 = *__error();
    *buf = 138412546;
    *v207 = v29;
    *&v207[8] = 1024;
    *&v207[10] = v69;
    _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Skipping restore asset, lstat failed at %@: %{errno}d", buf, 0x12u);
    v174 = *__error();
    _MBLog();
  }

  v70 = a8;
  v14 = v192;
  if (a8)
  {
    v71 = [MBError posixErrorWithCode:107 path:v192 format:@"lstat error"];
LABEL_121:
    *v70 = v71;
  }

LABEL_122:

LABEL_196:
  v33 = 0;
LABEL_232:

  return v33;
}

- (BOOL)_decryptWithOperationTracker:(id)a3 destination:(id)a4 device:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([(MBCKFile *)self isRegularFile]&& [(MBCKFile *)self size])
  {
    if ((self->_restoreState & 8) != 0 || ![(MBCKFile *)self isProtected])
    {
      v14 = MBGetDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        buf.st_dev = 138412290;
        *&buf.st_mode = self;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Not decrypting %@", &buf, 0xCu);
        _MBLog();
      }

      v29 = 1;
      goto LABEL_57;
    }

    if (!a6)
    {
      __assert_rtn("[MBCKFile _decryptWithOperationTracker:destination:device:error:]", "MBCKFile.m", 1711, "error");
    }

    if (!v10)
    {
      __assert_rtn("[MBCKFile _decryptWithOperationTracker:destination:device:error:]", "MBCKFile.m", 1712, "tracker");
    }

    if (!v12)
    {
      __assert_rtn("[MBCKFile _decryptWithOperationTracker:destination:device:error:]", "MBCKFile.m", 1713, "device");
    }

    v13 = [v10 account];
    v14 = v13;
    if (!v13)
    {
      __assert_rtn("[MBCKFile _decryptWithOperationTracker:destination:device:error:]", "MBCKFile.m", 1715, "account");
    }

    v15 = [v13 persona];
    v67 = [v15 accountType];

    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      buf.st_dev = 138412290;
      *&buf.st_mode = self;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Decrypting file %@", &buf, 0xCu);
      v55 = self;
      _MBLog();
    }

    v69 = [v12 keybagManager];
    v17 = [(MBCKFile *)self encryptionKey];
    v18 = v17 == 0;

    if (!v18)
    {
      if (!v69)
      {
        __assert_rtn("[MBCKFile _decryptWithOperationTracker:destination:device:error:]", "MBCKFile.m", 1726, "keybagManager");
      }

      v19 = [(MBCKFile *)self keybagUUIDString];
      v20 = [v69 keybagWithUUID:v19];

      if (v20)
      {
        v21 = 0;
LABEL_15:
        v22 = [(MBCKFile *)self encryptionKey:v55];
        v23 = v22 == 0;

        v24 = MBGetDefaultLog();
        v25 = v24;
        if (v23)
        {
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v34 = [(MBCKFile *)self absolutePath];
            buf.st_dev = 138412546;
            *&buf.st_mode = v11;
            WORD2(buf.st_ino) = 2112;
            *(&buf.st_ino + 6) = v34;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to decrypt file at %@(%@) without an encryption key", &buf, 0x16u);

            v59 = [(MBCKFile *)self absolutePath];
            _MBLog();
          }

          v35 = [(MBCKFile *)self absolutePath];
          *a6 = [MBError errorWithCode:205 path:v35 format:@"No encryption key found for protected file"];

          v29 = 0;
          goto LABEL_56;
        }

        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v26 = [v20 keybagUUIDString];
          buf.st_dev = 138412546;
          *&buf.st_mode = v11;
          WORD2(buf.st_ino) = 2112;
          *(&buf.st_ino + 6) = v26;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Decrypting file in place at %@ with keybag %@", &buf, 0x16u);

          v58 = [v20 keybagUUIDString];
          _MBLog();
        }

        v83 = 0;
        v84 = &v83;
        v85 = 0x2020000000;
        v86 = 0;
        v77 = 0;
        v78 = &v77;
        v79 = 0x3032000000;
        v80 = sub_1000D8E10;
        v81 = sub_1000D8E20;
        v82 = 0;
        v76 = v21;
        v70[0] = _NSConcreteStackBlock;
        v70[1] = 3221225472;
        v70[2] = sub_1000D8E28;
        v70[3] = &unk_1003BE2B8;
        v74 = &v83;
        v66 = v11;
        v71 = v66;
        v72 = self;
        v73 = v12;
        v75 = &v77;
        v27 = [MBCKKeyBag unlockKeybag:v20 accountType:v67 error:&v76 block:v70];
        v28 = v76;

        if (v27)
        {
          if (v84[3])
          {
            v29 = 1;
          }

          else
          {
            if (!v78[5])
            {
              __assert_rtn("[MBCKFile _decryptWithOperationTracker:destination:device:error:]", "MBCKFile.m", 1771, "decryptError");
            }

            memset(&buf, 0, sizeof(buf));
            v45 = v66;
            if (lstat([v66 fileSystemRepresentation], &buf))
            {
              st_size = -1;
            }

            else
            {
              st_size = buf.st_size;
            }

            v47 = MBGetDefaultLog();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              v65 = v47;
              v48 = v47;
              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                v63 = v48;
                v64 = [(MBCKFile *)self absolutePath];
                v49 = [(MBCKFile *)self fileID];
                v50 = [(MBCKFile *)self size];
                v51 = v78[5];
                *v89 = 138413570;
                v90 = v66;
                v91 = 2112;
                v92 = v64;
                v93 = 2112;
                v94 = v49;
                v95 = 2048;
                v96 = v50;
                v97 = 2048;
                v98 = st_size;
                v99 = 2112;
                v100 = v51;
                _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "Failed to decrypt file at %@(%@), fileID:%@, size:%llu, sizeOnDisk:%llu: %@", v89, 0x3Eu);

                v48 = v63;
              }

              v52 = [(MBCKFile *)self absolutePath];
              v53 = [(MBCKFile *)self fileID];
              [(MBCKFile *)self size];
              v62 = v78[5];
              _MBLog();

              v47 = v65;
            }

            v29 = 0;
            *a6 = v78[5];
          }
        }

        else
        {
          v36 = MBGetDefaultLog();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v37 = v36;
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              v38 = [(MBCKFile *)self absolutePath];
              buf.st_dev = 138412802;
              *&buf.st_mode = v66;
              WORD2(buf.st_ino) = 2112;
              *(&buf.st_ino + 6) = v38;
              HIWORD(buf.st_gid) = 2112;
              *&buf.st_rdev = v28;
              v68 = v38;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Failed to decrypt file at %@(%@): %@", &buf, 0x20u);
            }

            v60 = [(MBCKFile *)self absolutePath];
            _MBLog();
          }

          v39 = v28;
          v29 = 0;
          *a6 = v28;
        }

        _Block_object_dispose(&v77, 8);
        _Block_object_dispose(&v83, 8);

LABEL_55:
        v21 = v28;
LABEL_56:

LABEL_57:
        goto LABEL_58;
      }

      v30 = [(MBCKFile *)self keybagUUIDData];
      v88 = 0;
      v20 = [MBCKKeyBag keybagWithDevice:v12 keybagUUID:v30 operationTracker:v10 error:&v88];
      v28 = v88;

      if (v20)
      {
        [v69 addKeybag:v20];
        v87 = v28;
        v31 = [v12 saveWithOperationTracker:v10 error:&v87];
        v21 = v87;

        if ((v31 & 1) == 0)
        {
          v32 = MBGetDefaultLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v33 = [v20 keybagUUIDString];
            buf.st_dev = 138543618;
            *&buf.st_mode = v33;
            WORD2(buf.st_ino) = 2112;
            *(&buf.st_ino + 6) = v21;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Failed to save device record with recovered keybag %{public}@: %@", &buf, 0x16u);

            v55 = [v20 keybagUUIDString];
            v57 = v21;
            _MBLog();
          }
        }

        goto LABEL_15;
      }

      v40 = MBGetDefaultLog();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = [(MBCKFile *)self keybagUUIDString];
        buf.st_dev = 138543618;
        *&buf.st_mode = v41;
        WORD2(buf.st_ino) = 2112;
        *(&buf.st_ino + 6) = v28;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "No keybag found for %{public}@: %@", &buf, 0x16u);

        v56 = [(MBCKFile *)self keybagUUIDString];
        _MBLog();
      }

      if (v28)
      {
        v42 = v28;
        v29 = 0;
        *a6 = v28;
        goto LABEL_55;
      }
    }

    v43 = MBGetDefaultLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = [(MBCKFile *)self absolutePath];
      buf.st_dev = 138412546;
      *&buf.st_mode = v11;
      WORD2(buf.st_ino) = 2112;
      *(&buf.st_ino + 6) = v44;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Failed to decrypt file at %@(%@) without a keybag", &buf, 0x16u);

      v61 = [(MBCKFile *)self absolutePath];
      _MBLog();
    }

    v21 = [(MBCKFile *)self absolutePath];
    [MBError errorWithCode:205 path:v21 format:@"No keybag found for protected file"];
    *a6 = v29 = 0;
    goto LABEL_56;
  }

  v29 = 1;
LABEL_58:

  return v29;
}

- (BOOL)restoreExtendedAttributesToDestination:(id)a3 withError:(id *)a4
{
  v5 = a3;
  if (![(MBCKFile *)self isSymbolicLink])
  {
    v6 = [(MBCKFile *)self extendedAttributes];
    if (v6)
    {
      v7 = [(MBCKFile *)self restoreState];
      v8 = MBGetDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        contentAsset = self->_contentAsset;
        v10 = [v7 stashedResourcePath];
        *buf = 138412802;
        v19 = self;
        v20 = 2048;
        v21 = contentAsset;
        v22 = 2112;
        v23 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Restoring extended attributes for %@, resourceAsset:%p, stashedResourcePath:%@", buf, 0x20u);

        v11 = self->_contentAsset;
        v16 = [v7 stashedResourcePath];
        _MBLog();
      }

      v17 = 0;
      v12 = +[MBExtendedAttributes setAttributes:forPathFSR:error:](MBExtendedAttributes, "setAttributes:forPathFSR:error:", v6, [v5 fileSystemRepresentation], &v17);
      v13 = v17;
      if ((v12 & 1) == 0)
      {
        v14 = MBGetDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v19 = self;
          v20 = 2112;
          v21 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to restore extended attributes for %@: %@", buf, 0x16u);
          _MBLog();
        }
      }
    }
  }

  return 1;
}

- (NSDictionary)extendedAttributes
{
  v3 = [(MBCKFile *)self restoreState];
  contentAsset = self->_contentAsset;
  if (!contentAsset)
  {
    v5 = [v3 stashedResourcePath];

    if (!v5)
    {
      goto LABEL_8;
    }

    contentAsset = self->_contentAsset;
  }

  v6 = [(CKAsset *)contentAsset fileURL];
  v7 = [v3 stashedResourcePath];
  if (v7)
  {
    v8 = v7;
    v9 = +[NSFileManager defaultManager];
    v10 = [v3 stashedResourcePath];
    v11 = [v9 fileExistsAtPath:v10];

    if (v11)
    {
      v12 = [NSURL alloc];
      v13 = [v3 stashedResourcePath];
      v14 = [v12 initFileURLWithPath:v13];

      v6 = v14;
    }
  }

  v15 = [v6 filePathURL];
  v5 = [NSDictionary dictionaryWithContentsOfURL:v15];

LABEL_8:

  return v5;
}

- (void)setAbsolutePath:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  fileID = obj->_fileID;
  obj->_fileID = v4;

  LOBYTE(obj->_restoreState) &= ~2u;
  objc_sync_exit(obj);
}

- (NSString)absolutePath
{
  fileID = self->_fileID;
  if (!fileID)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v7 = "_absolutePath";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "nil %s", buf, 0xCu);
      _MBLog();
    }

    fileID = self->_fileID;
  }

  return fileID;
}

- (NSString)assetPath
{
  v3 = self->_rsrcTemporaryPath;
  if (!v3)
  {
    encodedAssetPath = self->_encodedAssetPath;
    if (!encodedAssetPath || ([(NSString *)encodedAssetPath decodedAssetPath], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v3 = *&self->_contentEncodingMethod;
      if (!v3)
      {
        v3 = [(MBCKFile *)self absolutePath];
      }
    }
  }

  return v3;
}

- (MBDomain)domain
{
  domainName = self->_domainName;
  if (!domainName)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v7 = "_domain";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "nil %s", buf, 0xCu);
      _MBLog();
    }

    domainName = self->_domainName;
  }

  return domainName;
}

- (BOOL)shouldBeBackedUpIgnoringProtectionClass
{
  if ((BYTE6(self->_mbNode.cloneID) | 4) != 7)
  {
    return 0;
  }

  v3 = [(MBCKFile *)self domain];
  v4 = [v3 relativePathsToBackupIgnoringProtectionClass];

  if ([v4 count])
  {
    v5 = [(MBCKFile *)self relativePath];
    v6 = [v5 pathComponents];

    v7 = [v6 count];
    v8 = 1;
    do
    {
      v9 = objc_autoreleasePoolPush();
      v10 = [v6 subarrayWithRange:{0, v8 - 1}];
      v11 = [NSString pathWithComponents:v10];

      v12 = [v4 containsObject:v11];
      objc_autoreleasePoolPop(v9);
      if (v12)
      {
        break;
      }
    }

    while (v8++ <= v7);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isProtected
{
  v2 = BYTE6(self->_mbNode.cloneID);
  if (v2 == 255 || !BYTE6(self->_mbNode.cloneID) && [(MBCKFile *)self isDirectory])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [MBProtectionClassUtils isProtected:v2];
    if (v4)
    {
      if ((v2 & 0xFFFFFFFB) == 3)
      {
        LOBYTE(v4) = ![(MBCKFile *)self shouldBeBackedUpIgnoringProtectionClass];
      }

      else
      {
        LOBYTE(v4) = 1;
      }
    }
  }

  return v4;
}

- (id)aggregateDictionaryGroup
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(MBCKFile *)self domain];
  v4 = [v3 relativePathAggregateDictionaryGroups];

  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([self->_volumeType hasPrefix:v9])
        {
          v11 = [(MBCKFile *)self domain];
          v12 = [v11 relativePathAggregateDictionaryGroups];
          v10 = [v12 objectForKeyedSubscript:v9];

          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (BOOL)hasResources
{
  if (self->_contentAsset)
  {
    return 1;
  }

  if (!self->_fileID)
  {
    return 0;
  }

  v4 = [(MBCKFile *)self absolutePath];
  v10 = 0;
  v2 = [MBExtendedAttributes hasAttributesForPath:v4 error:&v10];
  v5 = v10;

  if (!v2 && v5)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(MBCKFile *)self absolutePath];
      *buf = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to list xattrs at %@: %@", buf, 0x16u);

      v9 = [(MBCKFile *)self absolutePath];
      _MBLog();
    }
  }

  return v2;
}

- (unint64_t)changeTypeForFullBackup:(BOOL)a3
{
  if ((self->_restoreState & 0x10) == 0)
  {
    v5 = [(MBCKModel *)self cache];
    v6 = v5;
    if (a3)
    {
      v7 = [(MBCKFile *)self domainName];
      v8 = [(MBCKFile *)self relativePath];
      v34 = 0;
      v9 = [v6 uploadedFileInPendingSnapshotWithDomainName:v7 relativePath:v8 error:&v34];
      v10 = v34;

      if (v10)
      {
        v11 = MBGetDefaultLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v37 = v9;
          v38 = 2112;
          v39 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Error fetching uploaded file in pending snapshot %@: %@", buf, 0x16u);
          v32 = v9;
          v33 = v10;
LABEL_10:
          _MBLog();
          goto LABEL_11;
        }

        goto LABEL_11;
      }
    }

    else
    {
      v35 = 0;
      v9 = [v5 lastBackedUpFileForFile:self error:&v35];
      v10 = v35;

      if (v10)
      {
        v11 = MBGetDefaultLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v37 = v9;
          v38 = 2112;
          v39 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Error fetching last modified version of file %@: %@", buf, 0x16u);
          v32 = v9;
          v33 = v10;
          goto LABEL_10;
        }

LABEL_11:
      }
    }

    if (!v9 || ([v9 encryptionKey], v13 = objc_claimAutoreleasedReturnValue(), resources = self->_resources, self->_resources = v13, resources, (objc_msgSend(v9, "deleted") & 1) != 0))
    {
      v12 = 1;
LABEL_40:

      return v12;
    }

    v15 = [(MBCKFile *)self modified];
    v16 = [v9 modified];
    v17 = [v15 isEqualToDate:v16];

    if (v17)
    {
      v18 = [(MBCKFile *)self fileType];
      if (v18 == [v9 fileType])
      {
        if (v18 == 2)
        {
          v21 = [(MBCKFile *)self linkTarget];
          v22 = [v9 linkTarget];
          v23 = v22;
          if (v21 | v22 && (!v22 || ![v21 isEqualToString:v22]))
          {

            goto LABEL_39;
          }
        }

        else if (!v18 && ![(MBCKFile *)self hasContentEncodingMethod])
        {
          if ([v9 sizeBeforeCopy])
          {
            v19 = [(MBCKFile *)self size];
            if (v19 != [v9 sizeBeforeCopy] && -[MBCKFile isSQLiteFile](self, "isSQLiteFile"))
            {
              goto LABEL_39;
            }
          }

          if (([v9 hasContentEncodingMethod] & 1) == 0)
          {
            v20 = [(MBCKFile *)self size];
            if (v20 != [v9 size] && !-[MBCKFile isSQLiteFile](self, "isSQLiteFile"))
            {
              goto LABEL_39;
            }
          }
        }

        v24 = [(MBCKFile *)self permissions:v32];
        if (v24 == [v9 permissions])
        {
          v25 = [(MBCKFile *)self groupID];
          if (v25 == [v9 groupID])
          {
            v26 = [(MBCKFile *)self userID];
            if (v26 == [v9 userID])
            {
              v27 = [(MBCKFile *)self birth];
              v28 = [v9 birth];
              v29 = [v27 isEqualToDate:v28];

              if (v29)
              {
                if (v18 > 1 || (v30 = BYTE6(self->_mbNode.cloneID), v30 == [v9 protectionClass]))
                {
                  v12 = 0;
                  goto LABEL_40;
                }
              }
            }
          }
        }
      }
    }

LABEL_39:
    v12 = 2;
    goto LABEL_40;
  }

  return 3;
}

- (NSString)fileID
{
  manifest = self->_manifest;
  if (!manifest)
  {
    v5 = +[NSAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"[MBCKFile fileID]"];
    [v5 handleFailureInFunction:v6 file:@"MBCKFile.m" lineNumber:2038 description:{@"nil _fileID, MBCKFile is not fully built"}];

    manifest = self->_manifest;
  }

  return manifest;
}

- (id)fileIDWithHmacKey:(id)a3
{
  v5 = a3;
  v6 = [(MBCKFile *)self manifest];
  v7 = [v6 snapshotID];

  if (!v7)
  {
    __assert_rtn("[MBCKFile fileIDWithHmacKey:]", "MBCKFile.m", 2048, "snapshotID && File is missing snapshot ID");
  }

  v8 = [NSString alloc];
  v9 = [(MBCKFile *)self domainName];
  v10 = [(MBCKFile *)self relativePath];
  v11 = [v8 initWithFormat:@"%@:%@", v9, v10];

  v12 = [MBDigestSHA1 sha1HmacForString:v11 key:v5];
  v13 = [v12 base64EncodedStringWithOptions:0];

  if (!v13)
  {
    __assert_rtn("[MBCKFile fileIDWithHmacKey:]", "MBCKFile.m", 2052, "pathHMAC && File is missing path hash");
  }

  if ((self->_restoreState & 0x10) != 0)
  {
    v15 = [[NSString alloc] initWithFormat:@"%@:%@:D", v7, v13];
  }

  else
  {
    v14 = [(MBCKFile *)self attributeDataTruncatedHashWithError:0];
    if (!v14)
    {
      v17 = +[NSAssertionHandler currentHandler];
      [v17 handleFailureInMethod:a2 object:self file:@"MBCKFile.m" lineNumber:2059 description:@"File is missing truncated hash"];
    }

    v15 = [[NSString alloc] initWithFormat:@"%@:%@:%llu:%@", v7, v13, -[MBCKFile aggregateSize](self, "aggregateSize"), v14];
  }

  return v15;
}

- (void)setFileID:(id)a3
{
  v6 = a3;
  if ([v6 hasPrefix:@"F:"])
  {
    v4 = [v6 substringFromIndex:{objc_msgSend(@"F:", "length")}];
  }

  else
  {
    v4 = v6;
  }

  manifest = self->_manifest;
  self->_manifest = v4;
}

- (unint64_t)aggregateSize
{
  if ([(MBCKFile *)self isProtected]&& ([(MBCKFile *)self encryptionKey], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    resourceAsset = self->_resourceAsset;
  }

  else
  {
    resourceAsset = [(MBCKFile *)self size];
  }

  return resourceAsset + [(MBCKFile *)self resourcesSize];
}

- (unint64_t)sizeFromFileIDWithDefaultValue:(unint64_t)a3
{
  v4 = [(MBCKFile *)self fileID];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 componentsSeparatedByString:@":"];
    v7 = [v6 count];
    if (v7 >= 3)
    {
      if (v7 != 3 || ([v6 lastObject], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"D"), v8, (v9 & 1) == 0))
      {
        v10 = [v6 objectAtIndexedSubscript:2];
        *__error() = 0;
        v11 = strtoull([v10 UTF8String], 0, 10);
        if (v11 + 1 > 1 || !*__error())
        {
          a3 = v11;
        }
      }
    }
  }

  return a3;
}

- (id)keybagUUIDData
{
  v3 = [(MBCKFile *)self encryptionKey];

  if (v3)
  {
    v4 = [(MBCKFile *)self encryptionKey];
    v5 = MKBBackupCopyBackupKeyUUID();

    if (v5)
    {
      v6 = MBGetDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v7 = [(MBCKFile *)self relativePath];
        *buf = 138412290;
        v11 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "Failed to get UUID from encryption key for file %@", buf, 0xCu);

        v9 = [(MBCKFile *)self relativePath];
        _MBLog();
      }
    }
  }

  return 0;
}

- (NSString)keybagUUIDString
{
  v2 = [(MBCKFile *)self keybagUUIDData];
  v3 = [v2 base64EncodedStringWithOptions:0];

  return v3;
}

- (void)saveToCacheWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MBCKModel *)self cache];
  v6 = [(MBCKFile *)self manifest];
  v7 = [v5 addFile:self toManifest:v6];

  v4[2](v4, v7);
}

- (id)_getRecordIDString
{
  v3 = [NSString alloc];
  v4 = [(MBCKFile *)self fileID];
  v5 = [v3 initWithFormat:@"%@%@", @"F:", v4];

  return v5;
}

- (id)attributes
{
  v4 = [(MBCKFile *)self size];
  if (v4 >= +[MBFileSystemManager fileSystemCapacity])
  {
    v20 = +[NSAssertionHandler currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"MBCKFile.m" lineNumber:2143 description:{@"File size (%llu) exceeds filesystem capacity (%llu)", -[MBCKFile size](self, "size"), +[MBFileSystemManager fileSystemCapacity](MBFileSystemManager, "fileSystemCapacity")}];
  }

  if ((self->_restoreState & 0x10) != 0)
  {
    v27[0] = @"relativePath";
    v13 = [(MBCKFile *)self relativePath];
    v27[1] = @"domain";
    v28[0] = v13;
    v18 = [(MBCKFile *)self domainName];
    v28[1] = v18;
    v14 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
    goto LABEL_11;
  }

  v22 = a2;
  v25[0] = @"relativePath";
  v24 = [(MBCKFile *)self relativePath];
  v26[0] = v24;
  v25[1] = @"domain";
  v23 = [(MBCKFile *)self domainName];
  v26[1] = v23;
  v25[2] = @"birth";
  v5 = [(MBCKFile *)self birth];
  v26[2] = v5;
  v25[3] = @"modified";
  v6 = [(MBCKFile *)self modified];
  v26[3] = v6;
  v25[4] = @"statusChanged";
  v7 = [(MBCKFile *)self statusChanged];
  v26[4] = v7;
  v25[5] = @"size";
  v8 = [NSNumber numberWithLongLong:[(MBCKFile *)self size]];
  v26[5] = v8;
  v25[6] = @"groupID";
  v9 = [NSNumber numberWithInt:[(MBCKFile *)self groupID]];
  v26[6] = v9;
  v25[7] = @"userID";
  v10 = [NSNumber numberWithInt:[(MBCKFile *)self userID]];
  v26[7] = v10;
  v25[8] = @"mode";
  v11 = [NSNumber numberWithInt:[(MBCKFile *)self permissions]];
  v26[8] = v11;
  v25[9] = @"sizeBeforeCopy";
  v12 = [NSNumber numberWithLongLong:[(MBCKFile *)self sizeBeforeCopy]];
  v26[9] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:10];

  v14 = [v13 mutableCopy];
  if ([(MBCKFile *)self isSymbolicLink])
  {
    v15 = [(MBCKFile *)self linkTarget];

    if (!v15)
    {
      v21 = +[NSAssertionHandler currentHandler];
      [v21 handleFailureInMethod:v22 object:self file:@"MBCKFile.m" lineNumber:2168 description:@"File (symbolic link) does not have a link target"];
    }

    v16 = [(MBCKFile *)self linkTarget];
    [v14 setObject:v16 forKeyedSubscript:@"linkTarget"];
  }

  v17 = [(MBCKFile *)self encryptionKey];

  if (v17)
  {
    v18 = [(MBCKFile *)self encryptionKey];
    [v14 setObject:v18 forKeyedSubscript:@"encryptionKey"];
LABEL_11:
  }

  return v14;
}

- (id)attributeDataHashWithAttributes:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = objc_opt_new();
  v35 = [v4 allKeys];
  [v35 sortedArrayUsingComparator:&stru_1003BE2D8];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v6 = v41 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = MBError_ptr;
    v10 = @"%@:%s;";
    v36 = v4;
    v37 = *v39;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v39 != v37)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v38 + 1) + 8 * v11);
        v13 = [v4 objectForKeyedSubscript:v12];
        v14 = v9[101];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v5 appendFormat:v10, v12, objc_msgSend(v13, "UTF8String")];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v5 appendFormat:@"%@:%lld;", v12, objc_msgSend(v13, "longLongValue")];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v13 timeIntervalSinceReferenceDate];
              [v5 appendFormat:@"%@:%.3lf;", v12, v15];
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v24 = MBGetDefaultLog();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412290;
                  v43 = v13;
                  _os_log_fault_impl(&_mh_execute_header, v24, OS_LOG_TYPE_FAULT, "Unknown attribute data value %@", buf, 0xCu);
                }

                v32 = sub_10012F338(@"Unknown attribute data value %@", v25, v26, v27, v28, v29, v30, v31, v13);
                v23 = v35;
                if (a4)
                {
                  v32 = v32;
                  *a4 = v32;
                }

                v22 = 0;
                v21 = v6;
                goto LABEL_23;
              }

              [v13 base64EncodedStringWithOptions:49];
              v16 = v9;
              v17 = v6;
              v19 = v18 = v10;
              [v5 appendFormat:@"%@:%@;", v12, v19];

              v10 = v18;
              v6 = v17;
              v9 = v16;
              v4 = v36;
            }
          }
        }

        v11 = v11 + 1;
      }

      while (v8 != v11);
      v20 = [v6 countByEnumeratingWithState:&v38 objects:v44 count:16];
      v8 = v20;
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v21 = [v5 dataUsingEncoding:4];
  v22 = [MBDigest sha1ForData:v21];
  v23 = v35;
LABEL_23:

  return v22;
}

- (id)attributeDataTruncatedHashWithError:(id *)a3
{
  v6 = [(MBCKFile *)self attributes];
  v7 = [(MBCKFile *)self attributeDataHashWithAttributes:v6 error:a3];

  if (!v7)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MBCKFile.m" lineNumber:2222 description:@"attributeHash should not be nil"];
  }

  v8 = [v7 base64EncodedStringWithOptions:0];
  v9 = [v8 substringWithRange:{0, 4}];

  return v9;
}

- (id)attributeDataPlistWithError:(id *)a3
{
  v4 = [(MBCKFile *)self attributes];
  v5 = [NSPropertyListSerialization dataWithPropertyList:v4 format:200 options:0 error:a3];

  return v5;
}

- (id)attributeDataArchiveWithError:(id *)a3
{
  v4 = objc_alloc_init(MBCKFileAttributesArchive);
  [(MBCKFileAttributesArchive *)v4 setRelativePath:self->_volumeType];
  if ((self->_restoreState & 0x10) == 0)
  {
    [(MBCKFileAttributesArchive *)v4 setLinkTarget:self->_relativePath];
    birth = self->_mbNode.birth;
    if (birth)
    {
      [(MBCKFileAttributesArchive *)v4 setBirth:(birth - 978307200)];
    }

    modified = self->_mbNode.modified;
    if (modified)
    {
      [(MBCKFileAttributesArchive *)v4 setModified:(modified - 978307200)];
    }

    statusChanged = self->_mbNode.statusChanged;
    if (statusChanged)
    {
      [(MBCKFileAttributesArchive *)v4 setStatusChanged:(statusChanged - 978307200)];
    }

    if (self->_mbNode.fileSize)
    {
      restoreState = self->_restoreState;
      v9 = [(MBCKFile *)self encryptionKey];
      v10 = v9;
      if ((restoreState & 8) != 0)
      {
        if (v9)
        {
          __assert_rtn("[MBCKFile attributeDataArchiveWithError:]", "MBCKFile.m", 2259, "!self.encryptionKey");
        }

        [(MBCKFileAttributesArchive *)v4 setIsMMCSEncryptedOnly:1];
      }

      else
      {

        if (v10)
        {
          v11 = [(MBCKFile *)self encryptionKey];
          [(MBCKFileAttributesArchive *)v4 setEncryptionKey:v11];
        }
      }
    }

    [(MBCKFileAttributesArchive *)v4 setSize:self->_mbNode.fileSize];
    [(MBCKFileAttributesArchive *)v4 setGroupID:self->_mbNode.groupID];
    [(MBCKFileAttributesArchive *)v4 setUserID:self->_mbNode.userID];
    [(MBCKFileAttributesArchive *)v4 setMode:WORD2(self->_mbNode.cloneID)];
    [(MBCKFileAttributesArchive *)v4 setSourceDeviceInode:self->_encryptionKey];
    if (self->_encryptedSize)
    {
      [(MBCKFileAttributesArchive *)v4 setSizeBeforeCopy:?];
    }

    flags = self->_mbNode.flags;
    if (flags)
    {
      [(MBCKFileAttributesArchive *)v4 setFlags:self->_mbNode.flags];
      v13 = MBGetDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        fileID = self->_fileID;
        domainName = self->_domainName;
        *buf = 67109634;
        v24 = flags;
        v25 = 2114;
        v26 = fileID;
        v27 = 2112;
        v28 = domainName;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Including BSD flags (0x%x) for %{public}@ (%@)", buf, 0x1Cu);
        v21 = self->_fileID;
        v22 = self->_domainName;
        v20 = flags;
        _MBLog();
      }
    }

    if ([(MBCKFile *)self hasContentEncodingMethod:v20])
    {
      sqliteTemporaryDirectory_low = LOBYTE(self->_sqliteTemporaryDirectory);
      if (!LOBYTE(self->_sqliteTemporaryDirectory))
      {
        __assert_rtn("[MBCKFile attributeDataArchiveWithError:]", "MBCKFile.m", 2279, "_contentEncodingMethod != MBFileEncodingMethodUnspecified");
      }

      if (sqliteTemporaryDirectory_low == 255)
      {
        __assert_rtn("[MBCKFile attributeDataArchiveWithError:]", "MBCKFile.m", 2280, "_contentEncodingMethod != MBFileEncodingMethodDefault");
      }

      [(MBCKFileAttributesArchive *)v4 setContentEncodingMethod:sqliteTemporaryDirectory_low];
      if ([(MBCKFile *)self hasContentCompressionMethod])
      {
        v17 = BYTE1(self->_sqliteTemporaryDirectory);
        if (v17 != 255)
        {
          if (!BYTE1(self->_sqliteTemporaryDirectory))
          {
            __assert_rtn("[MBCKFile attributeDataArchiveWithError:]", "MBCKFile.m", 2283, "_contentCompressionMethod != MBFileCompressionMethodUnspecified");
          }

          [(MBCKFileAttributesArchive *)v4 setContentCompressionMethod:v17];
        }
      }
    }
  }

  v18 = [(MBCKFileAttributesArchive *)v4 data];

  return v18;
}

- (BOOL)refreshAttributesPlistWithData:(id)a3 error:(id *)a4
{
  v32 = 0;
  v6 = [NSPropertyListSerialization propertyListWithData:a3 options:0 format:0 error:&v32];
  v7 = v32;
  v8 = v7;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v6 objectForKeyedSubscript:@"relativePath"];
      volumeType = self->_volumeType;
      self->_volumeType = v9;

      v11 = [v6 objectForKeyedSubscript:@"domain"];
      v12 = *&self->_mbNode.mode;
      *&self->_mbNode.mode = v11;

      v13 = [v6 objectForKeyedSubscript:@"birth"];
      [v13 timeIntervalSince1970];
      self->_mbNode.birth = v14;

      v15 = [v6 objectForKeyedSubscript:@"modified"];
      [v15 timeIntervalSince1970];
      self->_mbNode.modified = v16;

      v17 = [v6 objectForKeyedSubscript:@"statusChanged"];
      [v17 timeIntervalSince1970];
      self->_mbNode.statusChanged = v18;

      v19 = [v6 objectForKeyedSubscript:@"size"];
      self->_mbNode.fileSize = [v19 longLongValue];

      v20 = [v6 objectForKeyedSubscript:@"sizeBeforeCopy"];
      self->_encryptedSize = [v20 longLongValue];

      v21 = [v6 objectForKeyedSubscript:@"groupID"];
      self->_mbNode.groupID = [v21 intValue];

      v22 = [v6 objectForKeyedSubscript:@"userID"];
      self->_mbNode.userID = [v22 intValue];

      v23 = [v6 objectForKeyedSubscript:@"mode"];
      WORD2(self->_mbNode.cloneID) = [v23 intValue];

      v24 = [v6 objectForKeyedSubscript:@"linkTarget"];
      relativePath = self->_relativePath;
      self->_relativePath = v24;

      v26 = [v6 objectForKeyedSubscript:@"encryptionKey"];
      resources = self->_resources;
      self->_resources = v26;

      v28 = [v6 objectForKeyedSubscript:@"sourceDeviceInode"];
      self->_encryptionKey = [v28 longLongValue];

      if (!a4)
      {
        v30 = 1;
        goto LABEL_13;
      }

      v29 = v8;
      v30 = 1;
      goto LABEL_10;
    }

    if (a4)
    {
      v29 = [MBError errorWithCode:1 format:@"Invalid plist"];
      goto LABEL_9;
    }

LABEL_11:
    v30 = 0;
    goto LABEL_13;
  }

  if (!a4)
  {
    goto LABEL_11;
  }

  v29 = v7;
LABEL_9:
  v30 = 0;
LABEL_10:
  *a4 = v29;
LABEL_13:

  return v30;
}

- (BOOL)refreshAttributesArchiveWithData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [[MBCKFileAttributesArchive alloc] initWithData:v5];

  if (v6)
  {
    if ([(MBCKFileAttributesArchive *)v6 hasRelativePath])
    {
      v7 = [(MBCKFileAttributesArchive *)v6 relativePath];
      volumeType = self->_volumeType;
      self->_volumeType = v7;
    }

    if ([(MBCKFileAttributesArchive *)v6 hasLinkTarget])
    {
      v9 = [(MBCKFileAttributesArchive *)v6 linkTarget];
      relativePath = self->_relativePath;
      self->_relativePath = v9;
    }

    if ([(MBCKFileAttributesArchive *)v6 hasBirth])
    {
      self->_mbNode.birth = [(MBCKFileAttributesArchive *)v6 birth]+ 978307200;
    }

    if ([(MBCKFileAttributesArchive *)v6 hasModified])
    {
      self->_mbNode.modified = [(MBCKFileAttributesArchive *)v6 modified]+ 978307200;
    }

    if ([(MBCKFileAttributesArchive *)v6 hasStatusChanged])
    {
      self->_mbNode.statusChanged = [(MBCKFileAttributesArchive *)v6 statusChanged]+ 978307200;
    }

    LOBYTE(self->_restoreState) &= ~8u;
    if ([(MBCKFileAttributesArchive *)v6 hasIsMMCSEncryptedOnly])
    {
      if ([(MBCKFileAttributesArchive *)v6 isMMCSEncryptedOnly])
      {
        v11 = 8;
      }

      else
      {
        v11 = 0;
      }

      LOBYTE(self->_restoreState) = self->_restoreState & 0xF7 | v11;
      if (v11)
      {
        goto LABEL_17;
      }
    }

    else if ((self->_restoreState & 8) != 0)
    {
LABEL_17:
      v12 = 0;
      goto LABEL_24;
    }

    if (![(MBCKFileAttributesArchive *)v6 hasEncryptionKey])
    {
LABEL_25:
      if ([(MBCKFileAttributesArchive *)v6 hasSize])
      {
        v16 = [(MBCKFileAttributesArchive *)v6 size];
      }

      else
      {
        v16 = 0;
      }

      self->_mbNode.fileSize = v16;
      v17 = [(MBCKFileAttributesArchive *)v6 hasGroupID];
      if (v17)
      {
        v17 = [(MBCKFileAttributesArchive *)v6 groupID];
      }

      self->_mbNode.groupID = v17;
      v18 = [(MBCKFileAttributesArchive *)v6 hasUserID];
      if (v18)
      {
        v18 = [(MBCKFileAttributesArchive *)v6 userID];
      }

      self->_mbNode.userID = v18;
      v19 = [(MBCKFileAttributesArchive *)v6 hasMode];
      if (v19)
      {
        LOWORD(v19) = [(MBCKFileAttributesArchive *)v6 mode];
      }

      WORD2(self->_mbNode.cloneID) = v19;
      if ([(MBCKFileAttributesArchive *)v6 hasSizeBeforeCopy])
      {
        v20 = [(MBCKFileAttributesArchive *)v6 sizeBeforeCopy];
      }

      else
      {
        v20 = 0;
      }

      self->_encryptedSize = v20;
      if ([(MBCKFileAttributesArchive *)v6 hasFlags])
      {
        v21 = [(MBCKFileAttributesArchive *)v6 flags];
        self->_mbNode.flags = v21;
        if ((v21 & 0x40000000) != 0)
        {
          self->_mbNode.fileSize = 0;
        }
      }

      else
      {
        self->_mbNode.flags = 0;
      }

      if ([(MBCKFileAttributesArchive *)v6 hasSourceDeviceInode])
      {
        v22 = [(MBCKFileAttributesArchive *)v6 sourceDeviceInode];
      }

      else
      {
        v22 = 0;
      }

      self->_encryptionKey = v22;
      if ([(MBCKFileAttributesArchive *)v6 hasContentEncodingMethod])
      {
        LOBYTE(self->_sqliteTemporaryDirectory) = [(MBCKFileAttributesArchive *)v6 contentEncodingMethod];
        if ([(MBCKFileAttributesArchive *)v6 hasContentCompressionMethod])
        {
          BYTE1(self->_sqliteTemporaryDirectory) = [(MBCKFileAttributesArchive *)v6 contentCompressionMethod];
        }
      }

      goto LABEL_47;
    }

    v12 = [(MBCKFileAttributesArchive *)v6 encryptionKey];
LABEL_24:
    resources = self->_resources;
    self->_resources = v12;

    goto LABEL_25;
  }

  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = [0 dictionaryRepresentation];
    *buf = 138412290;
    v26 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Unable to refresh attributes: %@", buf, 0xCu);

    v24 = [0 dictionaryRepresentation];
    _MBLog();
  }

LABEL_47:
  return v6 != 0;
}

- (BOOL)refreshAttributesWithData:(id)a3 error:(id *)a4
{
  v7 = a3;
  if ([v7 length] >= 6 && ((v8 = objc_msgSend(v7, "bytes"), *v8 == 1768714338) ? (v9 = v8[2] == 29811) : (v9 = 0), v9 && -[MBCKFile refreshAttributesPlistWithData:error:](self, "refreshAttributesPlistWithData:error:", v7, a4)) || -[MBCKFile refreshAttributesArchiveWithData:error:](self, "refreshAttributesArchiveWithData:error:", v7, a4))
  {
    v10 = 1;
  }

  else
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MBCKFile.m" lineNumber:2391 description:{@"Unable to refresh attributes: %@", v7}];

    v10 = 0;
  }

  return v10;
}

- (id)recordRepresentation
{
  v63.receiver = self;
  v63.super_class = MBCKFile;
  v4 = [(MBCKModel *)&v63 recordRepresentation];
  [v4 setUseLightweightPCS:1];
  v5 = [(MBCKFile *)self attributeDataWithError:0];
  if (!v5)
  {
    v55 = +[NSAssertionHandler currentHandler];
    [v55 handleFailureInMethod:a2 object:self file:@"MBCKFile.m" lineNumber:2428 description:@"Failed to serialize file attribute data"];
  }

  v6 = [v4 encryptedValues];
  [v6 setObject:v5 forKeyedSubscript:@"encryptedAttributes"];

  v7 = [NSNumber numberWithUnsignedInteger:[(MBCKFile *)self fileType]];
  [v4 setObject:v7 forKeyedSubscript:@"fileType"];

  if ([(MBCKFile *)self isRegularFile])
  {
    v8 = [self->_volumeType pathExtension];
    [v4 setObject:v8 forKeyedSubscript:@"extension"];
  }

  else
  {
    [v4 setObject:0 forKeyedSubscript:@"extension"];
  }

  if ((self->_restoreState & 0x10) == 0)
  {
    if (qword_1004216C8 != -1)
    {
      dispatch_once(&qword_1004216C8, &stru_1003BE2F8);
    }

    v9 = BYTE6(self->_mbNode.cloneID);
    if ([(MBCKFile *)self hasResources]&& self->_temporaryPath)
    {
      v10 = [CKAsset alloc];
      v11 = [NSURL fileURLWithPath:self->_temporaryPath];
      v12 = [v10 initWithFileURL:v11];

      v13 = [v12 assetTransferOptions];
      if (v13)
      {
        v14 = [v12 assetTransferOptions];
        v15 = [v14 useMMCSEncryptionV2];
        if ([v15 BOOLValue])
        {
          __assert_rtn("[MBCKFile recordRepresentation]", "MBCKFile.m", 2444, "!rsrcContents.assetTransferOptions || !rsrcContents.assetTransferOptions.useMMCSEncryptionV2.BOOLValue");
        }
      }

      [v4 setObject:v12 forKeyedSubscript:@"resources"];
    }

    if ([(MBCKFile *)self isRegularFile]|| [(MBCKFile *)self isDirectory])
    {
      v16 = [NSNumber numberWithInt:v9];
      [v4 setObject:v16 forKeyedSubscript:@"protectionClass"];
    }

    if ([(MBCKFile *)self isRegularFile]&& [(MBCKFile *)self size]&& ![(MBCKFile *)self isDataless])
    {
      v17 = [CKAsset alloc];
      v18 = [(MBCKFile *)self assetPath];
      v19 = [NSURL fileURLWithPath:v18];
      v20 = [v17 initWithFileURL:v19];

      v21 = [(MBCKFile *)self encryptionKey];
      restoreState = self->_restoreState;
      v23 = [MBProtectionClassUtils canOpenWhenLocked:v9];
      v24 = [(MBCKFile *)self isProtected];
      v62 = v20;
      v61 = v23;
      if (v24)
      {
        v25 = 0;
        goto LABEL_29;
      }

      v59 = v21;
      v26 = restoreState;
      v27 = [(MBCKFile *)self domainName];
      if ([v27 isEqualToString:@"CameraRollDomain"])
      {
        v28 = [(MBCKFile *)self shouldBeBackedUpIgnoringProtectionClass];

        v25 = v28;
        if (v28)
        {
          restoreState = v26;
          v23 = v61;
          v21 = v59;
          if ((restoreState & 8) == 0)
          {
            __assert_rtn("[MBCKFile recordRepresentation]", "MBCKFile.m", 2459, "!useMMVCSv1 || isMMCSEncryptedOnly");
          }

LABEL_29:
          v29 = (restoreState & 8) == 0;
          if (!(v29 | v23 & 1))
          {
            __assert_rtn("[MBCKFile recordRepresentation]", "MBCKFile.m", 2460, "!isMMCSEncryptedOnly || canBeBackedUpWhenLocked");
          }

          if (((v21 != 0) & v23) == 1)
          {
            __assert_rtn("[MBCKFile recordRepresentation]", "MBCKFile.m", 2461, "!encryptionKey || !canBeBackedUpWhenLocked");
          }

          if (!v21 && (restoreState & 8) == 0)
          {
            __assert_rtn("[MBCKFile recordRepresentation]", "MBCKFile.m", 2462, "isMMCSEncryptedOnly || encryptionKey");
          }

          if (v21 && (restoreState & 8) != 0)
          {
            __assert_rtn("[MBCKFile recordRepresentation]", "MBCKFile.m", 2463, "!isMMCSEncryptedOnly || !encryptionKey");
          }

          if ((v9 & 0xFB) == 3)
          {
            v30 = v24;
          }

          else
          {
            v30 = 1;
          }

          if ((v30 & 1) == 0)
          {
            v57 = v25;
            v58 = restoreState;
            v31 = MBGetDefaultLog();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              [(MBCKFile *)self relativePath];
              v32 = v60 = v21;
              *buf = 138412290;
              v69 = v32;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "Treating file with pc C or Cx as having pc D: %@", buf, 0xCu);

              v56 = [(MBCKFile *)self relativePath];
              _MBLog();

              v21 = v60;
            }

            v25 = v57;
            restoreState = v58;
          }

          if (((v25 | v29) & 1) == 0)
          {
            v34 = v62;
            if ((v9 & 0xFB) == 3)
            {
              [v62 setItemTypeHint:@"fxd"];
            }

            [v62 setAssetTransferOptions:{qword_1004216C0, v56}];
            v42 = [v62 assetTransferOptions];
            v43 = [v42 useMMCSEncryptionV2];
            if (([v43 BOOLValue] & 1) == 0)
            {
              __assert_rtn("[MBCKFile recordRepresentation]", "MBCKFile.m", 2474, "contents.assetTransferOptions.useMMCSEncryptionV2.BOOLValue");
            }

            goto LABEL_63;
          }

          v33 = v24 ^ 1;
          if (!v21)
          {
            v33 = 1;
          }

          v34 = v62;
          if (v33)
          {
            v42 = [v62 assetTransferOptions];
            if (!v42)
            {
LABEL_64:

              if (v23)
              {
                if ([(MBCKFile *)self hasContentEncodingMethod])
                {
                  [v34 setItemTypeHint:@"fxd"];
                }

                else if ([(MBCKFile *)self isSQLiteFile])
                {
                  v64 = kCKAssetChunkLength;
                  v65 = &off_1003E0D98;
                  [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
                  v46 = v45 = v21;
                  [v34 setAssetChunkerOptions:v46];

                  v21 = v45;
                }
              }

              v47 = [v34 shouldReadRawEncryptedData];
              if ((restoreState & 8) != 0)
              {
                if (v47)
                {
                  __assert_rtn("[MBCKFile recordRepresentation]", "MBCKFile.m", 2504, "!isMMCSEncryptedOnly || !contents.shouldReadRawEncryptedData");
                }
              }

              else if ((v47 & 1) == 0)
              {
                __assert_rtn("[MBCKFile recordRepresentation]", "MBCKFile.m", 2503, "isMMCSEncryptedOnly || contents.shouldReadRawEncryptedData");
              }

              [v4 setObject:v34 forKeyedSubscript:@"contents"];

              goto LABEL_74;
            }

            v43 = [v62 assetTransferOptions];
            v44 = [v43 useMMCSEncryptionV2];
            if ([v44 BOOLValue])
            {
              __assert_rtn("[MBCKFile recordRepresentation]", "MBCKFile.m", 2491, "!contents.assetTransferOptions || !contents.assetTransferOptions.useMMCSEncryptionV2.BOOLValue");
            }

            goto LABEL_62;
          }

          [v62 setShouldReadRawEncryptedData:1];
          v35 = [(MBCKFile *)self domainName];
          if ([v35 isEqualToString:@"HealthDomain"])
          {
            [(MBCKFile *)self relativePath];
            v37 = v36 = v21;
            v38 = [v37 hasSuffix:@"healthdb_secure.sqlite"];

            v21 = v36;
            if (v38)
            {
              v39 = MBGetDefaultLog();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
              {
                v40 = [(MBCKFile *)self relativePath];
                *buf = 138412290;
                v69 = v40;
                _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Not using fxd for: %@", buf, 0xCu);

                v56 = [(MBCKFile *)self relativePath];
                _MBLog();
              }

              v66 = kCKAssetChunkLength;
              v67 = &off_1003E0D98;
              v41 = [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1];
              [v62 setAssetChunkerOptions:v41];

              v21 = v36;
              goto LABEL_60;
            }
          }

          else
          {
          }

          [v62 setItemTypeHint:{@"fxd", v56}];
LABEL_60:
          v42 = [v62 assetTransferOptions];
          if (!v42)
          {
            v23 = v61;
            goto LABEL_64;
          }

          v43 = [v62 assetTransferOptions];
          v44 = [v43 useMMCSEncryptionV2];
          if ([v44 BOOLValue])
          {
            __assert_rtn("[MBCKFile recordRepresentation]", "MBCKFile.m", 2489, "!contents.assetTransferOptions || !contents.assetTransferOptions.useMMCSEncryptionV2.BOOLValue");
          }

LABEL_62:

          v23 = v61;
LABEL_63:

          goto LABEL_64;
        }
      }

      else
      {

        v25 = 0;
      }

      restoreState = v26;
      v23 = v61;
      v21 = v59;
      goto LABEL_29;
    }
  }

LABEL_74:
  v48 = objc_opt_new();
  v49 = [(MBCKFile *)self aggregateDictionaryGroup];
  v50 = [(MBCKFile *)self domainName];

  if (v50)
  {
    v51 = [(MBCKFile *)self domainName];
    [v48 setObject:v51 forKeyedSubscript:@"domainName"];
  }

  if (v49)
  {
    [v48 setObject:v49 forKeyedSubscript:@"subDomain"];
  }

  if ([(MBCKFile *)self hasContentEncodingMethod])
  {
    v52 = [NSNumber numberWithLongLong:self->_sizeBeforeCopy];
    [v48 setObject:v52 forKeyedSubscript:@"originalSize"];
  }

  if ([v48 count])
  {
    [v4 setPluginFields:v48];
  }

  v53 = MBGetDefaultLog();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v69 = v4;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "Saving file record: %@", buf, 0xCu);
    _MBLog();
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v9.receiver = self;
  v9.super_class = MBCKFile;
  [(MBCKModel *)&v9 encodeWithCoder:v4];
  [v4 encodeObject:self->_manifest forKey:@"FileID"];
  [v4 encodeObject:*&self->_mbNode.mode forKey:@"DomainName"];
  [v4 encodeObject:self->_volumeType forKey:@"RelativePath"];
  [v4 encodeObject:self->_fileID forKey:@"AbsolutePath"];
  [v4 encodeObject:self->_relativePath forKey:@"LinkTarget"];
  [v4 encodeObject:self->_linkTarget forKey:@"Signature"];
  v6 = [(MBCKFile *)self birth];
  [v4 encodeObject:v6 forKey:@"FileBirth"];

  v7 = [(MBCKFile *)self modified];
  [v4 encodeObject:v7 forKey:@"FileModified"];

  v8 = [(MBCKFile *)self statusChanged];
  [v4 encodeObject:v8 forKey:@"FileStatusChanged"];

  [v4 encodeObject:self->_resources forKey:@"EncrptionKey"];
  [v4 encodeInt64:self->_mbNode.fileSize forKey:@"FileSize"];
  [v4 encodeInt32:self->_mbNode.groupID forKey:@"GroupID"];
  [v4 encodeInt32:self->_mbNode.userID forKey:@"UserID"];
  [v4 encodeInt32:WORD2(self->_mbNode.cloneID) forKey:@"FileMode"];
  [v4 encodeBool:(LOBYTE(self->_restoreState) >> 4) & 1 forKey:@"Deleted"];
  [v4 encodeInt32:BYTE6(self->_mbNode.cloneID) forKey:@"ProtectionClass"];
  [v4 encodeInt64:self->_encryptedSize forKey:@"FileSizeBeforeCopy"];
  [v4 encodeInt32:self->_mbNode.flags forKey:@"Flags"];
  [v4 encodeInt64:self->_encryptionKey forKey:@"SourceDeviceInode"];
  objc_autoreleasePoolPop(v5);
}

- (MBCKFile)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v31.receiver = self;
  v31.super_class = MBCKFile;
  v6 = [(MBCKModel *)&v31 initWithCoder:v4];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FileID"];
    manifest = v6->_manifest;
    v6->_manifest = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DomainName"];
    v10 = *&v6->_mbNode.mode;
    *&v6->_mbNode.mode = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RelativePath"];
    volumeType = v6->_volumeType;
    v6->_volumeType = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AbsolutePath"];
    fileID = v6->_fileID;
    v6->_fileID = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LinkTarget"];
    relativePath = v6->_relativePath;
    v6->_relativePath = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Signature"];
    linkTarget = v6->_linkTarget;
    v6->_linkTarget = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FileBirth"];
    [v19 timeIntervalSince1970];
    v6->_mbNode.birth = v20;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FileModified"];
    [v21 timeIntervalSince1970];
    v6->_mbNode.modified = v22;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FileStatusChanged"];
    [v23 timeIntervalSince1970];
    v6->_mbNode.statusChanged = v24;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EncrptionKey"];
    resources = v6->_resources;
    v6->_resources = v25;

    BYTE6(v6->_mbNode.cloneID) = [v4 decodeInt32ForKey:@"ProtectionClass"];
    v6->_mbNode.fileSize = [v4 decodeInt64ForKey:@"FileSize"];
    v6->_mbNode.groupID = [v4 decodeInt32ForKey:@"GroupID"];
    v6->_mbNode.userID = [v4 decodeInt32ForKey:@"UserID"];
    WORD2(v6->_mbNode.cloneID) = [v4 decodeInt32ForKey:@"FileMode"];
    if ([v4 decodeBoolForKey:@"Deleted"])
    {
      v27 = 16;
    }

    else
    {
      v27 = 0;
    }

    LOBYTE(v6->_restoreState) = v6->_restoreState & 0xEF | v27;
    v6->_encryptedSize = [v4 decodeInt64ForKey:@"FileSizeBeforeCopy"];
    v28 = [v4 decodeInt32ForKey:@"Flags"];
    v6->_mbNode.flags = v28;
    if ((v28 & 0x40000000) != 0)
    {
      v6->_mbNode.fileSize = 0;
    }

    v6->_encryptionKey = [v4 decodeInt64ForKey:@"SourceDeviceInode"];
  }

  v29 = v6;
  objc_autoreleasePoolPop(v5);

  return v29;
}

- (id)asArchiveData
{
  v3 = objc_alloc_init(MBCKFileArchive);
  [(MBCKFileArchive *)v3 setFileID:self->_manifest];
  [(MBCKFileArchive *)v3 setDomainName:*&self->_mbNode.mode];
  volumeType = self->_volumeType;
  if (volumeType)
  {
    fileID = self->_fileID;
    if (fileID)
    {
      if ([(NSString *)fileID hasSuffix:?])
      {
        v6 = -[NSString substringToIndex:](self->_fileID, "substringToIndex:", -[NSString length](self->_fileID, "length") - [self->_volumeType length]);
        [(MBCKFileArchive *)v3 setAbsolutePathPrefix:v6];
        [(MBCKFileArchive *)v3 setRelativePath:self->_volumeType];

        goto LABEL_7;
      }

      volumeType = self->_volumeType;
    }
  }

  [(MBCKFileArchive *)v3 setRelativePath:volumeType];
  [(MBCKFileArchive *)v3 setAbsolutePath:self->_fileID];
LABEL_7:
  [(MBCKFileArchive *)v3 setLinkTarget:self->_relativePath];
  [(MBCKFileArchive *)v3 setSignature:self->_linkTarget];
  birth = self->_mbNode.birth;
  if (birth)
  {
    [(MBCKFileArchive *)v3 setBirth:(birth - 978307200)];
  }

  modified = self->_mbNode.modified;
  if (modified)
  {
    [(MBCKFileArchive *)v3 setModified:(modified - 978307200)];
  }

  statusChanged = self->_mbNode.statusChanged;
  if (statusChanged)
  {
    [(MBCKFileArchive *)v3 setStatusChanged:(statusChanged - 978307200)];
  }

  if (self->_mbNode.fileSize && (self->_restoreState & 8) != 0)
  {
    [(MBCKFile *)self encryptionKey];
    if (objc_claimAutoreleasedReturnValue())
    {
      __assert_rtn("[MBCKFile asArchiveData]", "MBCKFile.m", 2645, "!self.encryptionKey");
    }

    [(MBCKFileArchive *)v3 setIsMMCSEncryptedOnly:1];
  }

  else
  {
    v10 = [(MBCKFile *)self encryptionKey];
    [(MBCKFileArchive *)v3 setEncryptionKey:v10];
  }

  v11 = BYTE6(self->_mbNode.cloneID);
  if (MBProtectionClassSupportedValue(v11, (WORD2(self->_mbNode.cloneID) & 0xF000) == 0x8000, 0) == 255)
  {
    if (v11 != 255)
    {
      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v13 = *&self->_mbNode.mode;
        v14 = self->_volumeType;
        *buf = 67109634;
        v27 = v11;
        v28 = 2112;
        v29 = v13;
        v30 = 2112;
        v31 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "CKFile archiving invalid PC (%d) for: %@:%@", buf, 0x1Cu);
        v24 = *&self->_mbNode.mode;
        v25 = self->_volumeType;
        v23 = v11;
        _MBLog();
      }
    }
  }

  else
  {
    [(MBCKFileArchive *)v3 setProtectionClass:v11];
  }

  if ([(MBCKFile *)self inode:v23]&& ![MBProtectionClassUtils canOpenWhenLocked:v11])
  {
    [(MBCKFileArchive *)v3 setInode:[(MBCKFile *)self inode]];
  }

  else if ([(MBCKFileArchive *)v3 inode])
  {
    __assert_rtn("[MBCKFile asArchiveData]", "MBCKFile.m", 2665, "a.inode == 0");
  }

  if (*&self->_is && ![MBProtectionClassUtils canOpenWhenLocked:v11])
  {
    [(MBCKFileArchive *)v3 setVolumeType:*&self->_is];
  }

  else if ([(MBCKFileArchive *)v3 volumeType])
  {
    __assert_rtn("[MBCKFile asArchiveData]", "MBCKFile.m", 2670, "a.volumeType == MBVolumeTypeUnspecified");
  }

  [(MBCKFileArchive *)v3 setSourceDeviceInode:[(MBCKFile *)self sourceDeviceInode]];
  [(MBCKFileArchive *)v3 setSize:self->_mbNode.fileSize];
  [(MBCKFileArchive *)v3 setGroupID:self->_mbNode.groupID];
  [(MBCKFileArchive *)v3 setUserID:self->_mbNode.userID];
  [(MBCKFileArchive *)v3 setMode:WORD2(self->_mbNode.cloneID)];
  [(MBCKFileArchive *)v3 setDeleted:(LOBYTE(self->_restoreState) >> 4) & 1];
  if (self->_encryptedSize)
  {
    [(MBCKFileArchive *)v3 setSizeBeforeCopy:?];
  }

  if (self->_domainName)
  {
    v15 = [(MBCKFile *)self aggregateDictionaryGroup];
    [(MBCKFileArchive *)v3 setSubDomain:v15];
  }

  [(MBCKFileArchive *)v3 setResourcesSize:self->_signature];
  v16 = [(NSString *)self->_encodedAssetPath stashedAssetPath];
  [(MBCKFileArchive *)v3 setStashedAssetPath:v16];

  v17 = [(NSString *)self->_encodedAssetPath stashedResourcePath];
  [(MBCKFileArchive *)v3 setStashedResourcePath:v17];

  [(MBCKFileArchive *)v3 setStashedAssetIsDecrypted:[(NSString *)self->_encodedAssetPath stashedAssetDecrypted]];
  if (self->_mbNode.flags)
  {
    [(MBCKFileArchive *)v3 setFlags:?];
  }

  if ([(MBCKFile *)self hasContentEncodingMethod])
  {
    [(MBCKFileArchive *)v3 setSizeBeforeEncoding:self->_sizeBeforeCopy];
    sqliteTemporaryDirectory_low = LOBYTE(self->_sqliteTemporaryDirectory);
    if (sqliteTemporaryDirectory_low == 255)
    {
      __assert_rtn("[MBCKFile asArchiveData]", "MBCKFile.m", 2696, "_contentEncodingMethod != MBFileEncodingMethodDefault");
    }

    if (!LOBYTE(self->_sqliteTemporaryDirectory))
    {
      __assert_rtn("[MBCKFile asArchiveData]", "MBCKFile.m", 2697, "_contentEncodingMethod != MBFileEncodingMethodUnspecified");
    }

    [(MBCKFileArchive *)v3 setContentEncodingMethod:sqliteTemporaryDirectory_low];
    if ([(MBCKFile *)self hasContentCompressionMethod])
    {
      v19 = BYTE1(self->_sqliteTemporaryDirectory);
      if (v19 != 255)
      {
        if (!BYTE1(self->_sqliteTemporaryDirectory))
        {
          __assert_rtn("[MBCKFile asArchiveData]", "MBCKFile.m", 2700, "_contentCompressionMethod != MBFileCompressionMethodUnspecified");
        }

        [(MBCKFileArchive *)v3 setContentCompressionMethod:v19];
      }
    }

    v20 = [(NSString *)self->_encodedAssetPath decodedAssetPath];
    [(MBCKFileArchive *)v3 setDecodedAssetPath:v20];
  }

  v21 = [(MBCKFileArchive *)v3 data];

  return v21;
}

- (id)initFromArchiveData:(id)a3
{
  v4 = a3;
  v5 = [[MBCKFileArchive alloc] initWithData:v4];
  if (!v5)
  {

    v6 = 0;
    goto LABEL_108;
  }

  v82.receiver = self;
  v82.super_class = MBCKFile;
  v6 = [(MBCKModel *)&v82 initWithRecord:0 cache:0];

  if (v6)
  {
    v7 = [(MBCKFileArchive *)v5 fileID];
    manifest = v6->_manifest;
    v6->_manifest = v7;

    v9 = [(MBCKFileArchive *)v5 domainName];
    v10 = *&v6->_mbNode.mode;
    *&v6->_mbNode.mode = v9;

    v11 = [(MBCKFileArchive *)v5 absolutePathPrefix];

    v12 = [(MBCKFileArchive *)v5 relativePath];
    volumeType = v6->_volumeType;
    v6->_volumeType = v12;

    if (v11)
    {
      v14 = [(MBCKFileArchive *)v5 absolutePathPrefix];
      fileID = v6->_fileID;
      v6->_fileID = v14;

      if (!v6->_volumeType)
      {
        goto LABEL_9;
      }

      v16 = [(NSString *)v6->_fileID stringByAppendingString:?];
      v17 = v6->_fileID;
      v6->_fileID = v16;
    }

    else
    {
      v18 = [(MBCKFileArchive *)v5 absolutePath];
      v17 = v6->_fileID;
      v6->_fileID = v18;
    }

LABEL_9:
    v19 = [(MBCKFileArchive *)v5 linkTarget];
    relativePath = v6->_relativePath;
    v6->_relativePath = v19;

    v21 = [(MBCKFileArchive *)v5 signature];
    linkTarget = v6->_linkTarget;
    v6->_linkTarget = v21;

    if ([(MBCKFileArchive *)v5 hasBirth])
    {
      v6->_mbNode.birth = [(MBCKFileArchive *)v5 birth]+ 978307200;
    }

    if ([(MBCKFileArchive *)v5 hasModified])
    {
      v6->_mbNode.modified = [(MBCKFileArchive *)v5 modified]+ 978307200;
    }

    if ([(MBCKFileArchive *)v5 hasStatusChanged])
    {
      v6->_mbNode.statusChanged = [(MBCKFileArchive *)v5 statusChanged]+ 978307200;
    }

    if ([(MBCKFileArchive *)v5 hasSize])
    {
      v23 = [(MBCKFileArchive *)v5 size];
    }

    else
    {
      v23 = 0;
    }

    v6->_mbNode.fileSize = v23;
    if ([(MBCKFileArchive *)v5 hasIsMMCSEncryptedOnly])
    {
      if ([(MBCKFileArchive *)v5 isMMCSEncryptedOnly])
      {
        v24 = 8;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }

    LOBYTE(v6->_restoreState) = v6->_restoreState & 0xF7 | v24;
    if (v6->_mbNode.fileSize && v24)
    {
      v25 = 0;
    }

    else
    {
      v25 = [(MBCKFileArchive *)v5 encryptionKey];
    }

    resources = v6->_resources;
    v6->_resources = v25;

    v27 = [(MBCKFileArchive *)v5 hasMode];
    if (v27)
    {
      LOWORD(v27) = [(MBCKFileArchive *)v5 mode];
    }

    WORD2(v6->_mbNode.cloneID) = v27;
    if ([(MBCKFileArchive *)v5 hasProtectionClass])
    {
      v28 = MBProtectionClassSupportedValue([(MBCKFileArchive *)v5 protectionClass], (WORD2(v6->_mbNode.cloneID) & 0xF000) == 0x8000, 0);
      BYTE6(v6->_mbNode.cloneID) = v28;
      if (v28 != 255 && ![MBProtectionClassUtils canOpenWhenLocked:v28])
      {
        if ([(MBCKFileArchive *)v5 hasInode])
        {
          v29 = [(MBCKFileArchive *)v5 inode];
        }

        else
        {
          v29 = 0;
        }

        v6->_mbNode.inode = v29;
        if ([(MBCKFileArchive *)v5 hasVolumeType])
        {
          v75 = [(MBCKFileArchive *)v5 volumeType];
        }

        else
        {
          v75 = 0;
        }

        *&v6->_is = v75;
        goto LABEL_37;
      }
    }

    else
    {
      BYTE6(v6->_mbNode.cloneID) = -1;
    }

    if (v6->_mbNode.inode)
    {
      __assert_rtn("[MBCKFile(PQLResultSetInitializer) initFromArchiveData:]", "MBCKFile.m", 2761, "_mbNode.inode == 0");
    }

    if (*&v6->_is)
    {
      __assert_rtn("[MBCKFile(PQLResultSetInitializer) initFromArchiveData:]", "MBCKFile.m", 2762, "_volumeType == MBVolumeTypeUnspecified");
    }

LABEL_37:
    if ([(MBCKFileArchive *)v5 hasResourcesSize])
    {
      v30 = [(MBCKFileArchive *)v5 resourcesSize];
    }

    else
    {
      v30 = 0;
    }

    v6->_signature = v30;
    v31 = [(MBCKFileArchive *)v5 hasGroupID];
    if (v31)
    {
      v31 = [(MBCKFileArchive *)v5 groupID];
    }

    v6->_mbNode.groupID = v31;
    v32 = [(MBCKFileArchive *)v5 hasUserID];
    if (v32)
    {
      v32 = [(MBCKFileArchive *)v5 userID];
    }

    v6->_mbNode.userID = v32;
    if ([(MBCKFileArchive *)v5 hasFlags])
    {
      v33 = [(MBCKFileArchive *)v5 flags];
      v6->_mbNode.flags = v33;
      p_flags = &v6->_mbNode.flags;
      if ((v33 & 0x40000000) != 0)
      {
        v6->_mbNode.fileSize = 0;
      }
    }

    else
    {
      v6->_mbNode.flags = 0;
      p_flags = &v6->_mbNode.flags;
    }

    if ([(MBCKFileArchive *)v5 hasDeleted])
    {
      if ([(MBCKFileArchive *)v5 deleted])
      {
        v35 = 16;
      }

      else
      {
        v35 = 0;
      }
    }

    else
    {
      v35 = 0;
    }

    LOBYTE(v6->_restoreState) = v6->_restoreState & 0xEF | v35;
    if ([(MBCKFileArchive *)v5 hasSizeBeforeCopy])
    {
      v36 = [(MBCKFileArchive *)v5 sizeBeforeCopy];
    }

    else
    {
      v36 = 0;
    }

    v6->_encryptedSize = v36;
    v37 = [(MBCKFileArchive *)v5 hasSubDomain];
    if (v37)
    {
      v38 = [(MBCKFileArchive *)v5 subDomain];
    }

    else
    {
      v38 = 0;
    }

    objc_storeStrong(&v6->_sourceDeviceInode, v38);
    if (v37)
    {
    }

    if ([(MBCKFileArchive *)v5 hasSourceDeviceInode])
    {
      v39 = [(MBCKFileArchive *)v5 sourceDeviceInode];
    }

    else
    {
      v39 = 0;
    }

    v6->_encryptionKey = v39;
    if ([(MBCKFileArchive *)v5 hasStashedAssetPath])
    {
      v40 = +[NSFileManager defaultManager];
      v41 = [(MBCKFileArchive *)v5 stashedAssetPath];
      v42 = [v40 fileExistsAtPath:v41];

      if (v42)
      {
        v43 = [(MBCKFileArchive *)v5 stashedAssetPath];
        v44 = [(MBCKFile *)v6 restoreState];
        [v44 setStashedAssetPath:v43];
      }
    }

    if ([(MBCKFileArchive *)v5 hasStashedResourcePath])
    {
      v45 = +[NSFileManager defaultManager];
      v46 = [(MBCKFileArchive *)v5 stashedResourcePath];
      v47 = [v45 fileExistsAtPath:v46];

      if (v47)
      {
        v48 = [(MBCKFileArchive *)v5 stashedResourcePath];
        v49 = [(MBCKFile *)v6 restoreState];
        [v49 setStashedResourcePath:v48];
      }
    }

    if ([(MBCKFileArchive *)v5 hasStashedAssetIsDecrypted])
    {
      v50 = [(MBCKFileArchive *)v5 stashedAssetIsDecrypted];
      v51 = [(MBCKFile *)v6 restoreState];
      [v51 setStashedAssetDecrypted:v50];
    }

    v52 = [(NSString *)v6->_encodedAssetPath stashedAssetPath];
    if (!v52)
    {
      if (![(MBCKFileArchive *)v5 hasStashedAssetPath])
      {
        goto LABEL_80;
      }

      v53 = MBGetDefaultLog();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        v54 = v53;
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v55 = [(MBCKFileArchive *)v5 stashedAssetPath];
          *buf = 138412546;
          v84 = v6;
          v85 = 2112;
          v86 = v55;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "Prefetch: %@ prefetched, no file asset: %@", buf, 0x16u);
        }

        [(MBCKFileArchive *)v5 stashedAssetPath];
        v79 = v76 = v6;
        _MBLog();
      }

      v52 = [(MBCKFile *)v6 restoreState];
      [v52 setStashedAssetDecrypted:0];
    }

LABEL_80:
    v56 = [(NSString *)v6->_encodedAssetPath stashedResourcePath:v76];
    if (!v56)
    {
      if (![(MBCKFileArchive *)v5 hasStashedResourcePath])
      {
LABEL_82:
        if ([(MBCKFileArchive *)v5 hasContentEncodingMethod:v77])
        {
          if ([(MBCKFileArchive *)v5 hasSizeBeforeEncoding])
          {
            v6->_sizeBeforeCopy = [(MBCKFileArchive *)v5 sizeBeforeEncoding];
          }

          LOBYTE(v6->_sqliteTemporaryDirectory) = [(MBCKFileArchive *)v5 contentEncodingMethod];
          if ([(MBCKFileArchive *)v5 hasContentCompressionMethod])
          {
            BYTE1(v6->_sqliteTemporaryDirectory) = [(MBCKFileArchive *)v5 contentCompressionMethod];
          }

          if ([(MBCKFileArchive *)v5 hasDecodedAssetPath])
          {
            v57 = +[NSFileManager defaultManager];
            v58 = [(MBCKFileArchive *)v5 decodedAssetPath];
            v59 = [v57 fileExistsAtPath:v58];

            if (v59)
            {
              v60 = [(MBCKFileArchive *)v5 decodedAssetPath];
              v61 = [(MBCKFile *)v6 restoreState];
              [v61 setDecodedAssetPath:v60];
            }
          }

          v62 = [(NSString *)v6->_encodedAssetPath decodedAssetPath];
          if (!v62)
          {
            if (![(MBCKFileArchive *)v5 hasDecodedAssetPath])
            {
              goto LABEL_92;
            }

            v62 = MBGetDefaultLog();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              v73 = v62;
              if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
              {
                v74 = [(MBCKFileArchive *)v5 decodedAssetPath];
                *buf = 138412546;
                v84 = v6;
                v85 = 2112;
                v86 = v74;
                _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "Prefetch: %@ prefetched, no decoded asset: %@", buf, 0x16u);
              }

              [(MBCKFileArchive *)v5 decodedAssetPath];
              v81 = v78 = v6;
              _MBLog();
            }
          }
        }

LABEL_92:
        if (v6->_mbNode.fileSize)
        {
          v63 = [(NSString *)v6->_encodedAssetPath stashedAssetPath];
          v64 = v63 == 0;
        }

        else
        {
          v64 = 0;
        }

        if (v6->_signature || (*p_flags & 0x80) != 0)
        {
          v68 = [(NSString *)v6->_encodedAssetPath stashedResourcePath:v78];
          v67 = 32 * (v68 != 0);
        }

        else
        {
          v67 = 32;
        }

        v69 = [(NSString *)v6->_encodedAssetPath decodedAssetPath:v78];

        if (v64 && v69 == 0)
        {
          v70 = 0;
        }

        else
        {
          v70 = v67;
        }

        LOBYTE(v6->_restoreState) = v6->_restoreState & 0xDF | v70;
        goto LABEL_108;
      }

      v56 = MBGetDefaultLog();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        v65 = v56;
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          v66 = [(MBCKFileArchive *)v5 stashedResourcePath];
          *buf = 138412546;
          v84 = v6;
          v85 = 2112;
          v86 = v66;
          _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "Prefetch: %@ prefetched, no resource asset: %@", buf, 0x16u);
        }

        [(MBCKFileArchive *)v5 stashedResourcePath];
        v80 = v77 = v6;
        _MBLog();
      }
    }

    goto LABEL_82;
  }

LABEL_108:
  v71 = v6;

  return v71;
}

- (id)initFromPQLResultSet:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 columns] == 1)
  {
    v7 = [v6 dataAtIndex:0];
    if (v7)
    {
      v8 = [(MBCKFile *)self initFromArchiveData:v7];
    }

    else
    {

      v8 = 0;
    }

    self = v8;

    v9 = self;
  }

  else if (a4)
  {
    [NSError errorWithSqliteCode:20 andMessage:@"This result set has more than one column"];
    *a4 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)newFromSqliteStatement:(sqlite3_stmt *)a3 atIndex:(int)a4
{
  if (!a3)
  {
    __assert_rtn("+[MBCKFile(PQLResultSetInitializer) newFromSqliteStatement:atIndex:]", "MBCKFile.m", 2838, "statement");
  }

  v7 = sqlite3_column_type(a3, a4);
  if (v7 == 4)
  {
    v8 = sqlite3_column_blob(a3, a4);
    v9 = [[NSData alloc] initWithBytes:v8 length:{sqlite3_column_bytes(a3, a4)}];
    v10 = [[a1 alloc] initFromArchiveData:v9];

    return v10;
  }

  else
  {
    v12 = v7;
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v15 = v12;
      v16 = 1024;
      v17 = a4;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Invalid type (%d) for the column at index %d", buf, 0xEu);
      _MBLog();
    }

    return 0;
  }
}

- (void)sqliteBind:(sqlite3_stmt *)a3 index:(int)a4
{
  v7 = [(MBCKFile *)self asArchiveData];
  v6 = v7;
  sqlite3_bind_blob(a3, a4, [v7 bytes], objc_msgSend(v7, "length"), 0xFFFFFFFFFFFFFFFFLL);
}

+ (BOOL)shouldValidateFileEncoding
{
  if (qword_1004216D0 != -1)
  {
    dispatch_once(&qword_1004216D0, &stru_1003BE318);
  }

  return byte_1004216A8;
}

+ (double)sqliteSpaceSavingsThreshold
{
  if (qword_1004216E0 != -1)
  {
    dispatch_once(&qword_1004216E0, &stru_1003BE338);
  }

  return *&qword_1004216D8;
}

- (BOOL)decodeWithFileAtPath:(id)a3 destinationDirectory:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    __assert_rtn("[MBCKFile(Encoding) decodeWithFileAtPath:destinationDirectory:error:]", "MBCKFile.m", 2994, "path");
  }

  if (!a5)
  {
    __assert_rtn("[MBCKFile(Encoding) decodeWithFileAtPath:destinationDirectory:error:]", "MBCKFile.m", 2995, "error");
  }

  v10 = v9;
  if (![(MBCKFile *)self hasContentEncodingMethod])
  {
    __assert_rtn("[MBCKFile(Encoding) decodeWithFileAtPath:destinationDirectory:error:]", "MBCKFile.m", 2996, "self.hasContentEncodingMethod");
  }

  v11 = [v10 stringByAppendingPathComponent:@"DecodedAssets"];
  v12 = +[NSFileManager defaultManager];
  v47 = 0;
  v13 = [v12 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:&v47];
  v14 = v47;

  if (v13)
  {
    v46 = 0;
    v15 = [MBTemporaryDirectory temporaryDirectoryOnSameVolumeAsPath:v11 identifiedBy:@"decoded-assets-tmp" error:&v46];
    v16 = v46;
    if (!v15)
    {
      v25 = MBGetDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v49 = v11;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to create tempdir on same volume as %@", buf, 0xCu);
        _MBLog();
      }

      v24 = 0;
      goto LABEL_24;
    }

    v17 = [(MBCKFile *)self signature];
    v18 = [v17 mb_base64EncodedFileSystemPathString];

    if (!v18)
    {
      __assert_rtn("[MBCKFile(Encoding) decodeWithFileAtPath:destinationDirectory:error:]", "MBCKFile.m", 3013, "signature");
    }

    v42 = v18;
    v43 = [v11 stringByAppendingPathComponent:v18];
    v19 = [v15 makeTemporaryFilePath];
    if (!v19)
    {
      __assert_rtn("[MBCKFile(Encoding) decodeWithFileAtPath:destinationDirectory:error:]", "MBCKFile.m", 3019, "destinationPath");
    }

    v20 = v19;
    v44 = v15;
    v41 = v14;
    v21 = BYTE6(self->_mbNode.cloneID);
    sqliteTemporaryDirectory_low = SLOBYTE(self->_sqliteTemporaryDirectory);
    v39 = v10;
    if ([(MBCKFile *)self hasContentCompressionMethod])
    {
      v23 = BYTE1(self->_sqliteTemporaryDirectory);
    }

    else
    {
      v23 = -1;
    }

    v26 = dispatch_group_create();
    v27 = [MBFileEncodingTask decodingTaskWithEncodingMethod:sqliteTemporaryDirectory_low];
    [v27 setValidate:{objc_msgSend(objc_opt_class(), "shouldValidateFileEncoding")}];
    [v27 setSourcePath:v8];
    [v27 setDestinationPath:v20];
    [v27 setCompressionMethod:v23];
    [v27 setProtectionClass:v21];
    [v27 setGroup:v26];
    [v27 start];
    v40 = v26;
    dispatch_group_wait(v26, 0xFFFFFFFFFFFFFFFFLL);
    v28 = [v27 error];

    if (v28)
    {
      v29 = [v27 error];
      v10 = v39;
    }

    else
    {
      v45 = 0;
      v32 = [MBFileOperation rename:4294967294 sourceRpath:v20 destinationBasePath:@"/" destinationBaseFD:4294967294 destinationRpath:v43 flags:4 error:&v45];
      v29 = v45;
      v10 = v39;
      if ((v32 & 1) != 0 || [MBError errnoForError:v29]== 17)
      {
        v33 = [(MBCKFile *)self restoreState];
        [v33 setDecodedAssetPath:v43];

        self->_mbNode.fileSize = [v27 destinationSize];
        [v44 dispose];
        v24 = 1;
        goto LABEL_23;
      }

      v35 = MBGetDefaultLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v49 = v20;
        v50 = 2112;
        v51 = v43;
        v52 = 2112;
        v53 = v29;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Decode failed to move file from %@ to %@: %@", buf, 0x20u);
        v37 = v43;
        v38 = v29;
        v36 = v20;
        _MBLog();
      }
    }

    [v44 dispose];
    v30 = v29;
    *a5 = v29;
    v31 = [(MBCKFile *)self restoreState];
    [v31 setDecodedAssetPath:0];

    sub_1000D2F84(v20);
    v24 = 0;
LABEL_23:

    v14 = v41;
    v25 = v42;
    v15 = v44;
LABEL_24:

    goto LABEL_25;
  }

  v16 = MBGetDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v49 = v11;
    v50 = 2112;
    v51 = v14;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to create DecodedAssets directory %@: %@", buf, 0x16u);
    _MBLog();
  }

  v24 = 0;
LABEL_25:

  return v24;
}

- (void)getNode:(id *)a3
{
  *&a3->var0 = *&self->_mbNode.direntCount;
  v4 = *&self->_mbNode.statusChanged;
  v3 = *&self->_mbNode.inode;
  v5 = *&self->_mbNode.birth;
  a3->var10 = self->_mbNode.cloneID;
  *&a3->var6 = v4;
  *&a3->var8 = v3;
  *&a3->var4 = v5;
}

- (unint64_t)fileType
{
  v2 = [(MBCKFile *)self type];
  v3 = 3;
  if (v2 == 0x4000)
  {
    v3 = 1;
  }

  if (v2 == 0x8000)
  {
    v3 = 0;
  }

  if (v2 == 40960)
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

- (NSString)fileTypeString
{
  v2 = [(MBCKFile *)self type];
  v3 = @"file";
  v4 = @"(unknown type)";
  if (v2 == 0x4000)
  {
    v4 = @"directory";
  }

  if (v2 != 0x8000)
  {
    v3 = v4;
  }

  if (v2 == 40960)
  {
    return @"symlink";
  }

  else
  {
    return &v3->isa;
  }
}

- (void)setStashedAssetPath:(id)a3
{
  v4 = a3;
  v5 = [(MBCKFile *)self restoreState];
  [v5 setStashedAssetPath:v4];
}

- (void)setDecodedAssetPath:(id)a3
{
  v4 = a3;
  v5 = [(MBCKFile *)self restoreState];
  [v5 setDecodedAssetPath:v4];
}

@end