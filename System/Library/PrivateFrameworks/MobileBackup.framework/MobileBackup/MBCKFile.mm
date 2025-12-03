@interface MBCKFile
+ (BOOL)shouldValidateFileEncoding;
+ (double)sqliteSpaceSavingsThreshold;
+ (id)fileIDFromRecordName:(id)name;
+ (id)fileWithFileChange:(id)change manifest:(id)manifest;
+ (id)fileWithMBFile:(id)file cache:(id)cache;
+ (id)fileWithMBFile:(id)file manifest:(id)manifest;
+ (id)fileWithRecord:(id)record cache:(id)cache manifest:(id)manifest;
+ (id)fileWithRecord:(id)record cache:(id)cache snapshot:(id)snapshot domainName:(id)name;
+ (id)newFromSqliteStatement:(sqlite3_stmt *)statement atIndex:(int)index;
+ (id)recordIDFromFileID:(id)d;
- (BOOL)_createResourceCopyWithError:(id *)error;
- (BOOL)_decryptWithOperationTracker:(id)tracker destination:(id)destination device:(id)device error:(id *)error;
- (BOOL)decodeWithFileAtPath:(id)path destinationDirectory:(id)directory error:(id *)error;
- (BOOL)fetchEncryptionKeyWithAccount:(id)account device:(id)device error:(id *)error;
- (BOOL)hasResources;
- (BOOL)isEqual:(id)equal;
- (BOOL)isProtected;
- (BOOL)isSQLiteFile;
- (BOOL)refreshAttributesArchiveWithData:(id)data error:(id *)error;
- (BOOL)refreshAttributesPlistWithData:(id)data error:(id *)error;
- (BOOL)refreshAttributesWithData:(id)data error:(id *)error;
- (BOOL)refreshFromCopyWithAccount:(id)account device:(id)device error:(id *)error;
- (BOOL)refreshFromFilesystemWithAccount:(id)account device:(id)device error:(id *)error;
- (BOOL)restoreAssetWithOperationTracker:(id)tracker destination:(id)destination logger:(id)logger cache:(id)cache device:(id)device error:(id *)error;
- (BOOL)restoreExtendedAttributesToDestination:(id)destination withError:(id *)error;
- (BOOL)shouldBeBackedUpIgnoringProtectionClass;
- (BOOL)stashAssetsToTemporaryDirectoryWithAccount:(id)account operationTracker:(id)tracker cache:(id)cache device:(id)device error:(id *)error;
- (BOOL)validateEncryptionKeyWithError:(id *)error;
- (MBCKFile)initWithCoder:(id)coder;
- (MBCKFile)initWithDictionary:(id)dictionary cache:(id)cache;
- (MBCKFile)initWithFileChange:(id)change manifest:(id)manifest;
- (MBCKFile)initWithMBFile:(id)file cache:(id)cache;
- (MBCKFile)initWithMBFile:(id)file manifest:(id)manifest;
- (MBCKFile)initWithRecord:(id)record cache:(id)cache;
- (MBCKFile)initWithRecord:(id)record cache:(id)cache manifest:(id)manifest;
- (MBCKFile)initWithRecord:(id)record cache:(id)cache snapshot:(id)snapshot domainName:(id)name;
- (MBDomain)domain;
- (NSDictionary)extendedAttributes;
- (NSString)absolutePath;
- (NSString)assetPath;
- (NSString)description;
- (NSString)fileID;
- (NSString)fileTypeString;
- (NSString)keybagUUIDString;
- (id)_compactSQLiteDatabaseAtPath:(id)path temporaryDirectory:(id)directory error:(id *)error;
- (id)_copySQLiteDatabaseAtPath:(id)path temporaryDirectory:(id)directory error:(id *)error;
- (id)_getRecordIDString;
- (id)_scrubSQLiteDatabaseWithEngine:(id)engine temporaryDirectory:(id)directory error:(id *)error;
- (id)aggregateDictionaryGroup;
- (id)asArchiveData;
- (id)attributeDataArchiveWithError:(id *)error;
- (id)attributeDataHashWithAttributes:(id)attributes error:(id *)error;
- (id)attributeDataPlistWithError:(id *)error;
- (id)attributeDataTruncatedHashWithError:(id *)error;
- (id)attributes;
- (id)fileIDWithHmacKey:(id)key;
- (id)initFromArchiveData:(id)data;
- (id)initFromPQLResultSet:(id)set error:(id *)error;
- (id)keybagUUIDData;
- (id)recordRepresentation;
- (id)restoreState;
- (int)_createTemporarySQLiteCopyWithEngine:(id)engine temporaryDirectory:(id)directory error:(id *)error;
- (int)prepareForUploadWithEngine:(id)engine error:(id *)error;
- (unint64_t)aggregateSize;
- (unint64_t)changeTypeForFullBackup:(BOOL)backup;
- (unint64_t)fileType;
- (unint64_t)hash;
- (unint64_t)sizeFromFileIDWithDefaultValue:(unint64_t)value;
- (void)_removeResourceCopy;
- (void)_removeTemporaryCopy;
- (void)_setFileMissingEncryptionKeyForPath:(id)path account:(id)account;
- (void)cleanupAfterUpload;
- (void)confirmFileWasModifiedOnDisk;
- (void)dealloc;
- (void)downloadContentsWithOperationTracker:(id)tracker completion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)getNode:(id *)node;
- (void)refreshWithDictionary:(id)dictionary;
- (void)refreshWithMBFile:(id)file;
- (void)refreshWithRecord:(id)record;
- (void)saveToCacheWithCompletion:(id)completion;
- (void)setAbsolutePath:(id)path;
- (void)setDecodedAssetPath:(id)path;
- (void)setFileID:(id)d;
- (void)setStashedAssetPath:(id)path;
- (void)setupWithDomain:(id)domain;
- (void)sqliteBind:(sqlite3_stmt *)bind index:(int)index;
@end

@implementation MBCKFile

+ (id)recordIDFromFileID:(id)d
{
  dCopy = d;
  dCopy = [[NSString alloc] initWithFormat:@"%@%@", @"F:", dCopy];

  v5 = [[CKRecordID alloc] initWithRecordName:dCopy];

  return v5;
}

+ (id)fileIDFromRecordName:(id)name
{
  nameCopy = name;
  if ([nameCopy hasPrefix:@"F:"])
  {
    v4 = [nameCopy substringFromIndex:{objc_msgSend(@"F:", "length")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)fileWithMBFile:(id)file manifest:(id)manifest
{
  manifestCopy = manifest;
  fileCopy = file;
  v7 = [[MBCKFile alloc] initWithMBFile:fileCopy manifest:manifestCopy];

  return v7;
}

+ (id)fileWithMBFile:(id)file cache:(id)cache
{
  cacheCopy = cache;
  fileCopy = file;
  v7 = [[MBCKFile alloc] initWithMBFile:fileCopy cache:cacheCopy];

  return v7;
}

+ (id)fileWithFileChange:(id)change manifest:(id)manifest
{
  manifestCopy = manifest;
  changeCopy = change;
  v7 = [[MBCKFile alloc] initWithFileChange:changeCopy manifest:manifestCopy];

  return v7;
}

+ (id)fileWithRecord:(id)record cache:(id)cache manifest:(id)manifest
{
  manifestCopy = manifest;
  cacheCopy = cache;
  recordCopy = record;
  v10 = [[MBCKFile alloc] initWithRecord:recordCopy cache:cacheCopy manifest:manifestCopy];

  return v10;
}

+ (id)fileWithRecord:(id)record cache:(id)cache snapshot:(id)snapshot domainName:(id)name
{
  nameCopy = name;
  snapshotCopy = snapshot;
  cacheCopy = cache;
  recordCopy = record;
  v13 = [[MBCKFile alloc] initWithRecord:recordCopy cache:cacheCopy snapshot:snapshotCopy domainName:nameCopy];

  return v13;
}

- (MBCKFile)initWithMBFile:(id)file manifest:(id)manifest
{
  fileCopy = file;
  manifestCopy = manifest;
  if (!fileCopy)
  {
    __assert_rtn("[MBCKFile initWithMBFile:manifest:]", "MBCKFile.m", 168, "file");
  }

  v8 = manifestCopy;
  if (!manifestCopy)
  {
    __assert_rtn("[MBCKFile initWithMBFile:manifest:]", "MBCKFile.m", 169, "manifest");
  }

  cache = [manifestCopy cache];
  v16.receiver = self;
  v16.super_class = MBCKFile;
  v10 = [(MBCKModel *)&v16 initWithRecord:0 cache:cache];

  if (v10)
  {
    objc_storeStrong(&v10->_domain, manifest);
    [(MBCKFile *)v10 refreshWithMBFile:fileCopy];
    device = [v8 device];
    hmacKey = [device hmacKey];
    v13 = [(MBCKFile *)v10 fileIDWithHmacKey:hmacKey];
    manifest = v10->_manifest;
    v10->_manifest = v13;
  }

  return v10;
}

- (MBCKFile)initWithMBFile:(id)file cache:(id)cache
{
  fileCopy = file;
  cacheCopy = cache;
  if (!fileCopy)
  {
    __assert_rtn("[MBCKFile initWithMBFile:cache:]", "MBCKFile.m", 180, "file");
  }

  v8 = cacheCopy;
  if (!cacheCopy)
  {
    __assert_rtn("[MBCKFile initWithMBFile:cache:]", "MBCKFile.m", 181, "cache");
  }

  v12.receiver = self;
  v12.super_class = MBCKFile;
  v9 = [(MBCKModel *)&v12 initWithRecord:0 cache:cacheCopy];
  v10 = v9;
  if (v9)
  {
    [(MBCKFile *)v9 refreshWithMBFile:fileCopy];
  }

  return v10;
}

- (MBCKFile)initWithFileChange:(id)change manifest:(id)manifest
{
  changeCopy = change;
  manifestCopy = manifest;
  if (!changeCopy)
  {
    __assert_rtn("[MBCKFile initWithFileChange:manifest:]", "MBCKFile.m", 190, "fileChange");
  }

  v8 = manifestCopy;
  if (!manifestCopy)
  {
    __assert_rtn("[MBCKFile initWithFileChange:manifest:]", "MBCKFile.m", 191, "manifest");
  }

  cache = [manifestCopy cache];
  v26.receiver = self;
  v26.super_class = MBCKFile;
  v10 = [(MBCKModel *)&v26 initWithRecord:0 cache:cache];

  if (v10)
  {
    absolutePath = [changeCopy absolutePath];
    fileID = v10->_fileID;
    v10->_fileID = absolutePath;

    relativePath = [changeCopy relativePath];
    volumeType = v10->_volumeType;
    v10->_volumeType = relativePath;

    objc_storeStrong(&v10->_domain, manifest);
    domain = [changeCopy domain];
    name = [domain name];
    v17 = *&v10->_mbNode.mode;
    *&v10->_mbNode.mode = name;

    domain2 = [changeCopy domain];
    *&v10->_is = [domain2 volumeType];

    domain3 = [changeCopy domain];
    domainName = v10->_domainName;
    v10->_domainName = domain3;

    changeType = [changeCopy changeType];
    LOBYTE(v10->_restoreState) = v10->_restoreState & 0xEF | (16 * (changeType == 3));
    if (changeType != 3)
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

- (MBCKFile)initWithRecord:(id)record cache:(id)cache manifest:(id)manifest
{
  recordCopy = record;
  cacheCopy = cache;
  manifestCopy = manifest;
  if (!recordCopy)
  {
    __assert_rtn("[MBCKFile initWithRecord:cache:manifest:]", "MBCKFile.m", 214, "record");
  }

  if (!cacheCopy)
  {
    __assert_rtn("[MBCKFile initWithRecord:cache:manifest:]", "MBCKFile.m", 215, "cache");
  }

  v11 = manifestCopy;
  if (!manifestCopy)
  {
    __assert_rtn("[MBCKFile initWithRecord:cache:manifest:]", "MBCKFile.m", 216, "manifest");
  }

  v17.receiver = self;
  v17.super_class = MBCKFile;
  v12 = [(MBCKModel *)&v17 initWithRecord:recordCopy cache:cacheCopy];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_domain, manifest);
    domainName = [v11 domainName];
    v15 = *&v13->_mbNode.mode;
    *&v13->_mbNode.mode = domainName;

    LOBYTE(v13->_restoreState) &= ~4u;
  }

  return v13;
}

- (MBCKFile)initWithDictionary:(id)dictionary cache:(id)cache
{
  dictionaryCopy = dictionary;
  cacheCopy = cache;
  if (!dictionaryCopy)
  {
    __assert_rtn("[MBCKFile initWithDictionary:cache:]", "MBCKFile.m", 227, "dictionary");
  }

  v8 = cacheCopy;
  if (!cacheCopy)
  {
    __assert_rtn("[MBCKFile initWithDictionary:cache:]", "MBCKFile.m", 228, "cache");
  }

  v12.receiver = self;
  v12.super_class = MBCKFile;
  v9 = [(MBCKModel *)&v12 initWithRecord:0 cache:cacheCopy];
  v10 = v9;
  if (v9)
  {
    [(MBCKFile *)v9 refreshWithDictionary:dictionaryCopy];
  }

  return v10;
}

- (MBCKFile)initWithRecord:(id)record cache:(id)cache snapshot:(id)snapshot domainName:(id)name
{
  recordCopy = record;
  cacheCopy = cache;
  snapshotCopy = snapshot;
  nameCopy = name;
  if (!recordCopy)
  {
    __assert_rtn("[MBCKFile initWithRecord:cache:snapshot:domainName:]", "MBCKFile.m", 237, "record");
  }

  if (!cacheCopy)
  {
    __assert_rtn("[MBCKFile initWithRecord:cache:snapshot:domainName:]", "MBCKFile.m", 238, "cache");
  }

  if (!snapshotCopy)
  {
    __assert_rtn("[MBCKFile initWithRecord:cache:snapshot:domainName:]", "MBCKFile.m", 239, "snapshot");
  }

  v14 = nameCopy;
  if (!nameCopy)
  {
    __assert_rtn("[MBCKFile initWithRecord:cache:snapshot:domainName:]", "MBCKFile.m", 240, "domainName");
  }

  v20.receiver = self;
  v20.super_class = MBCKFile;
  v15 = [(MBCKModel *)&v20 initWithRecord:recordCopy cache:cacheCopy];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(v15 + 18, name);
    v17 = [snapshotCopy manifestForDomainName:*&v16->_mbNode.mode];
    domain = v16->_domain;
    v16->_domain = v17;
  }

  return v16;
}

- (MBCKFile)initWithRecord:(id)record cache:(id)cache
{
  v6 = [NSAssertionHandler currentHandler:record];
  v7 = objc_opt_class();
  [v6 handleFailureInMethod:a2 object:self file:@"MBCKFile.m" lineNumber:250 description:{@"You must call -[%s initWithRecord:cache:manifest:domain:]", class_getName(v7)}];

  return 0;
}

- (void)setupWithDomain:(id)domain
{
  domainCopy = domain;
  if (!domainCopy)
  {
    __assert_rtn("[MBCKFile setupWithDomain:]", "MBCKFile.m", 257, "domain");
  }

  v6 = domainCopy;
  objc_storeStrong(&self->_domainName, domain);
  *&self->_is = [v6 volumeType];
  if ([v6 hasRootPath])
  {
    rootPath = [v6 rootPath];
    relativePath = [(MBCKFile *)self relativePath];
    v9 = [rootPath stringByAppendingPathComponent:relativePath];

    selfCopy = self;
    objc_sync_enter(selfCopy);
    fileID = selfCopy->_fileID;
    selfCopy->_fileID = v9;

    LOBYTE(selfCopy->_restoreState) &= ~2u;
    objc_sync_exit(selfCopy);
  }

  else
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      selfCopy2 = self;
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
    modified = manifest;
    v14 = objc_opt_class();
    Name = class_getName(v14);
    domainName = [(MBCKFile *)self domainName];
    relativePath = [(MBCKFile *)self relativePath];
    flags = [NSString stringWithFormat:@"<%s: %p id=%@, d=%@, rp=%@, t=%lu, pc=%d>", Name, self, modified, domainName, relativePath, [(MBCKFile *)self fileType], [(MBCKFile *)self protectionClass]];;
  }

  else
  {
    v4 = manifest;
    flags = self->_mbNode.flags;
    v6 = objc_opt_class();
    v17 = class_getName(v6);
    domainName = [(MBCKFile *)self domainName];
    relativePath = [(MBCKFile *)self relativePath];
    fileType = [(MBCKFile *)self fileType];
    protectionClass = [(MBCKFile *)self protectionClass];
    modified = [(MBCKFile *)self modified];
    [(MBCKManifest *)modified timeIntervalSince1970];
    flags = [NSString stringWithFormat:@"<%s: %p id=%@, d=%@, rp=%@, t=%lu, pc=%d, mt=%.3f, m=0%o, o=%d, g=%d, f=0x%lx>", v17, self, v4, domainName, relativePath, fileType, protectionClass, v12, WORD2(self->_mbNode.cloneID), [(MBCKFile *)self userID], [(MBCKFile *)self groupID], flags];;
  }

  return flags;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    domainName = [(MBCKFile *)self domainName];
    domainName2 = [v5 domainName];
    if ([domainName isEqualToString:domainName2])
    {
      relativePath = [(MBCKFile *)self relativePath];
      relativePath2 = [v5 relativePath];
      v10 = [relativePath isEqualToString:relativePath2];
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
  domainName = [(MBCKFile *)self domainName];
  v4 = [domainName hash];
  relativePath = [(MBCKFile *)self relativePath];
  v6 = [relativePath hash];

  return v6 ^ v4;
}

- (BOOL)refreshFromFilesystemWithAccount:(id)account device:(id)device error:(id *)error
{
  accountCopy = account;
  deviceCopy = device;
  if (!error)
  {
    __assert_rtn("[MBCKFile refreshFromFilesystemWithAccount:device:error:]", "MBCKFile.m", 306, "error");
  }

  v10 = deviceCopy;
  if (!deviceCopy)
  {
    __assert_rtn("[MBCKFile refreshFromFilesystemWithAccount:device:error:]", "MBCKFile.m", 307, "device");
  }

  if ((self->_restoreState & 0x10) != 0)
  {
    absolutePath = 0;
  }

  else
  {
    absolutePath = [(MBCKFile *)self absolutePath];
    if ((MBNodeForPath(absolutePath, &self->_mbNode, error) & 1) == 0)
    {
      v15 = [MBError errnoForError:*error];
      if (v15 == 2)
      {
        *error = [MBError errorWithCode:4 format:@"File not found"];
      }

      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *v26 = absolutePath;
        *&v26[8] = 1024;
        *&v26[10] = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "MBNodeForPath() failed at %@: %{errno}d", buf, 0x12u);
        v23 = absolutePath;
        selfCopy = v15;
        _MBLog();
      }

      goto LABEL_15;
    }

    self->_encryptionKey = self->_mbNode.inode;
    LOBYTE(self->_restoreState) &= ~0x10u;
    if ([(MBCKFile *)self fileType]== 2)
    {
      v12 = +[MBFileOperation symbolicLinkTargetWithPathFSR:error:](MBFileOperation, "symbolicLinkTargetWithPathFSR:error:", [absolutePath fileSystemRepresentation], error);
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
          selfCopy = self;
          _MBLog();
        }

        BYTE6(self->_mbNode.cloneID) = 4;
      }

      if (![(MBCKFile *)self fetchEncryptionKeyWithAccount:accountCopy device:v10 error:error, v23, selfCopy])
      {
        goto LABEL_15;
      }
    }
  }

  v14 = 1;
LABEL_16:
  hmacKey = [v10 hmacKey];
  v18 = [(MBCKFile *)self fileIDWithHmacKey:hmacKey];
  manifest = self->_manifest;
  self->_manifest = v18;

  if (!v14 && !*error)
  {
    __assert_rtn("[MBCKFile refreshFromFilesystemWithAccount:device:error:]", "MBCKFile.m", 354, "result || *error != nil");
  }

  return v14;
}

- (BOOL)refreshFromCopyWithAccount:(id)account device:(id)device error:(id *)error
{
  accountCopy = account;
  deviceCopy = device;
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
        if (error)
        {
          if (v13 == 2)
          {
            *error = [MBError errorWithCode:4 format:@"File not found"];
          }

          else
          {
            absolutePath = [(MBCKFile *)self absolutePath];
            *error = [MBError posixErrorWithCode:100 path:absolutePath format:@"Failed to stat file"];
          }
        }

        hmacKey = MBGetDefaultLog();
        if (!os_log_type_enabled(hmacKey, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

        v18 = *&self->_contentEncodingMethod;
        absolutePath2 = [(MBCKFile *)self absolutePath];
        *buf = 138412802;
        v24 = v18;
        v25 = 2112;
        v26 = absolutePath2;
        v27 = 1024;
        v28 = v13;
        _os_log_impl(&_mh_execute_header, hmacKey, OS_LOG_TYPE_ERROR, "Failed to lstat file copy at %@ on behalf of %@: %{errno}d", buf, 0x1Cu);

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

        if (![(MBCKFile *)self fetchEncryptionKeyWithAccount:accountCopy device:deviceCopy error:error])
        {
          v12 = 0;
          goto LABEL_17;
        }

        hmacKey = [deviceCopy hmacKey];
        v15 = [(MBCKFile *)self fileIDWithHmacKey:hmacKey];
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

- (void)refreshWithRecord:(id)record
{
  recordCopy = record;
  v5 = objc_autoreleasePoolPush();
  encryptedValues = [recordCopy encryptedValues];
  v7 = [encryptedValues objectForKeyedSubscript:@"encryptedAttributes"];

  if (v7)
  {
    [(MBCKFile *)self refreshAttributesWithData:v7 error:0];
  }

  v8 = [recordCopy objectForKeyedSubscript:@"contents"];
  changeType = self->_changeType;
  self->_changeType = v8;

  signature = [self->_changeType signature];
  linkTarget = self->_linkTarget;
  self->_linkTarget = signature;

  v12 = [recordCopy objectForKeyedSubscript:@"resources"];
  contentAsset = self->_contentAsset;
  self->_contentAsset = v12;

  v14 = [recordCopy objectForKeyedSubscript:@"resourcesSize"];

  if (v14)
  {
    v15 = [recordCopy objectForKeyedSubscript:@"resourcesSize"];
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

  v17 = [recordCopy objectForKeyedSubscript:@"fileType"];
  intValue = [v17 intValue];
  if (intValue >= 3)
  {
    v19 = WORD2(self->_mbNode.cloneID) & 0xFFF;
  }

  else
  {
    v19 = (0xA00040008000uLL >> (16 * intValue)) & 0xF000 | WORD2(self->_mbNode.cloneID) & 0xFFF;
  }

  WORD2(self->_mbNode.cloneID) = v19;

  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  if ([recordName hasSuffix:@":D"])
  {
    v22 = 16;
  }

  else
  {
    v22 = 0;
  }

  LOBYTE(self->_restoreState) = self->_restoreState & 0xEF | v22;

  v23 = [recordCopy objectForKeyedSubscript:@"protectionClass"];

  if (v23)
  {
    v24 = [recordCopy objectForKeyedSubscript:@"protectionClass"];
    BYTE6(self->_mbNode.cloneID) = [v24 intValue];

    if (!recordCopy)
    {
      goto LABEL_21;
    }
  }

  else
  {
    BYTE6(self->_mbNode.cloneID) = -1;
    if (!recordCopy)
    {
      goto LABEL_21;
    }
  }

  if ((BYTE6(self->_mbNode.cloneID) == 255 || !BYTE6(self->_mbNode.cloneID)) && ![(MBCKFile *)self fileType])
  {
    BYTE6(self->_mbNode.cloneID) = 4;
  }

LABEL_21:
  recordID2 = [recordCopy recordID];
  recordName2 = [recordID2 recordName];
  [(MBCKFile *)self setFileID:recordName2];

  v30.receiver = self;
  v30.super_class = MBCKFile;
  [(MBCKModel *)&v30 refreshWithRecord:recordCopy];
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

- (void)refreshWithMBFile:(id)file
{
  fileCopy = file;
  domain = [fileCopy domain];
  name = [domain name];
  v7 = *&self->_mbNode.mode;
  *&self->_mbNode.mode = name;

  domain2 = [fileCopy domain];
  *&self->_is = [domain2 volumeType];

  domain3 = [fileCopy domain];
  domainName = self->_domainName;
  self->_domainName = domain3;

  selfCopy = self;
  objc_sync_enter(selfCopy);
  absolutePath = [fileCopy absolutePath];
  fileID = selfCopy->_fileID;
  selfCopy->_fileID = absolutePath;

  LOBYTE(selfCopy->_restoreState) &= ~2u;
  objc_sync_exit(selfCopy);

  relativePath = [fileCopy relativePath];
  volumeType = selfCopy->_volumeType;
  selfCopy->_volumeType = relativePath;

  digest = [fileCopy digest];
  linkTarget = selfCopy->_linkTarget;
  selfCopy->_linkTarget = digest;

  [fileCopy getNode:&selfCopy->_mbNode];
  selfCopy->_encryptionKey = selfCopy->_mbNode.inode;
  selfCopy->_sizeBeforeCopy = 0;
  selfCopy->_encryptedSize = 0;
  if ([fileCopy isDeleted])
  {
    v18 = 16;
  }

  else
  {
    v18 = 0;
  }

  LOBYTE(selfCopy->_restoreState) = selfCopy->_restoreState & 0xEF | v18;
  encryptionKey = [fileCopy encryptionKey];
  resources = selfCopy->_resources;
  selfCopy->_resources = encryptionKey;

  target = [fileCopy target];
  relativePath = selfCopy->_relativePath;
  selfCopy->_relativePath = target;

  if (!selfCopy->_fileID)
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

  if ([(MBCKFile *)selfCopy isSymbolicLink])
  {
    if ([(MBCKFile *)selfCopy hasAbsolutePath])
    {
      linkTarget = [(MBCKFile *)selfCopy linkTarget];
      v26 = linkTarget == 0;

      if (v26)
      {
        absolutePath2 = [(MBCKFile *)selfCopy absolutePath];
        v28 = [MBFileOperation symbolicLinkTargetWithPath:absolutePath2 error:0];
        v29 = selfCopy->_relativePath;
        selfCopy->_relativePath = v28;
      }
    }
  }

  if (!BYTE6(selfCopy->_mbNode.cloneID) && [fileCopy isRegularFile])
  {
    v30 = MBGetDefaultLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      protectionClass = [fileCopy protectionClass];
      *buf = 138412546;
      v34 = fileCopy;
      v35 = 1024;
      v36 = protectionClass;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "File %@ has an invalid protection class: %d", buf, 0x12u);
      [fileCopy protectionClass];
      _MBLog();
    }

    BYTE6(selfCopy->_mbNode.cloneID) = 4;
  }

  LOBYTE(selfCopy->_restoreState) = selfCopy->_restoreState & 0xF7 | (8 * (selfCopy->_resources == 0));
}

- (void)refreshWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"mode"];
  p_mbNode = &self->_mbNode;
  WORD2(self->_mbNode.cloneID) = [v5 intValue];

  v7 = [dictionaryCopy objectForKeyedSubscript:@"fileType"];
  intValue = [v7 intValue];
  if (intValue >= 3)
  {
    v9 = WORD2(self->_mbNode.cloneID) & 0xFFF;
  }

  else
  {
    v9 = (0xA00040008000uLL >> (16 * intValue)) & 0xF000 | WORD2(self->_mbNode.cloneID) & 0xFFF;
  }

  WORD2(self->_mbNode.cloneID) = v9;

  if (!WORD2(self->_mbNode.cloneID))
  {
    __assert_rtn("[MBCKFile refreshWithDictionary:]", "MBCKFile.m", 474, "_mbNode.mode");
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"manifest"];
  domain = self->_domain;
  self->_domain = v10;

  v12 = [dictionaryCopy objectForKeyedSubscript:@"domainName"];
  v13 = *&self->_mbNode.mode;
  *&self->_mbNode.mode = v12;

  v14 = [dictionaryCopy objectForKeyedSubscript:@"absolutePath"];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_fileID, v14);
  LOBYTE(selfCopy->_restoreState) &= ~2u;
  objc_sync_exit(selfCopy);

  v16 = [dictionaryCopy objectForKeyedSubscript:@"relativePath"];
  volumeType = selfCopy->_volumeType;
  selfCopy->_volumeType = v16;

  v18 = [dictionaryCopy objectForKeyedSubscript:@"digest"];
  linkTarget = selfCopy->_linkTarget;
  selfCopy->_linkTarget = v18;

  v20 = [dictionaryCopy objectForKeyedSubscript:@"size"];
  p_mbNode->fileSize = [v20 unsignedLongLongValue];

  v21 = [dictionaryCopy objectForKeyedSubscript:@"sizeBeforeCopy"];
  selfCopy->_encryptedSize = [v21 unsignedLongLongValue];

  v22 = [dictionaryCopy objectForKeyedSubscript:@"resourcesSize"];
  selfCopy->_signature = [v22 unsignedLongLongValue];

  v23 = [dictionaryCopy objectForKeyedSubscript:@"birth"];
  [v23 timeIntervalSince1970];
  p_mbNode->birth = v24;

  v25 = [dictionaryCopy objectForKeyedSubscript:@"modified"];
  [v25 timeIntervalSince1970];
  p_mbNode->modified = v26;

  v27 = [dictionaryCopy objectForKeyedSubscript:@"statusChanged"];
  [v27 timeIntervalSince1970];
  p_mbNode->statusChanged = v28;

  v29 = [dictionaryCopy objectForKeyedSubscript:@"groupID"];
  p_mbNode->groupID = [v29 intValue];

  v30 = [dictionaryCopy objectForKeyedSubscript:@"userID"];
  p_mbNode->userID = [v30 intValue];

  v31 = [dictionaryCopy objectForKeyedSubscript:@"deleted"];
  if ([v31 BOOLValue])
  {
    v32 = 16;
  }

  else
  {
    v32 = 0;
  }

  LOBYTE(selfCopy->_restoreState) = selfCopy->_restoreState & 0xEF | v32;

  v33 = [dictionaryCopy objectForKeyedSubscript:@"protectionClass"];
  BYTE6(p_mbNode->cloneID) = [v33 intValue];

  v34 = [dictionaryCopy objectForKeyedSubscript:@"encryptionKey"];
  resources = selfCopy->_resources;
  selfCopy->_resources = v34;

  v36 = [dictionaryCopy objectForKeyedSubscript:@"sourceDeviceInode"];
  selfCopy->_encryptionKey = [v36 longLongValue];

  v37 = [dictionaryCopy objectForKeyedSubscript:@"volumeType"];
  *&selfCopy->_is = [v37 unsignedIntegerValue];

  v38 = [dictionaryCopy objectForKeyedSubscript:@"fileID"];
  [(MBCKFile *)selfCopy setFileID:v38];

  v39 = [dictionaryCopy objectForKeyedSubscript:@"linkTarget"];
  relativePath = selfCopy->_relativePath;
  selfCopy->_relativePath = v39;

  if (!BYTE6(p_mbNode->cloneID) && [(MBCKFile *)selfCopy isRegularFile])
  {
    v41 = MBGetDefaultLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = [dictionaryCopy objectForKeyedSubscript:@"protectionClass"];
      *buf = 138412546;
      v51 = dictionaryCopy;
      v52 = 2112;
      v53 = v42;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "File dictionary %@ has an invalid protection class: %@", buf, 0x16u);

      [dictionaryCopy objectForKeyedSubscript:@"protectionClass"];
      v49 = v48 = dictionaryCopy;
      _MBLog();
    }

    BYTE6(p_mbNode->cloneID) = 4;
  }

  LOBYTE(selfCopy->_restoreState) = selfCopy->_restoreState & 0xF7 | (8 * (selfCopy->_resources == 0));
  v43 = [dictionaryCopy objectForKeyedSubscript:{@"device", v48, v49}];
  v44 = v43;
  if (v43)
  {
    hmacKey = [v43 hmacKey];
    v46 = [(MBCKFile *)selfCopy fileIDWithHmacKey:hmacKey];
    manifest = selfCopy->_manifest;
    selfCopy->_manifest = v46;
  }
}

- (void)confirmFileWasModifiedOnDisk
{
  if (![(MBCKFile *)self fileType])
  {
    memset(&v28, 0, sizeof(v28));
    assetPath = [(MBCKFile *)self assetPath];
    v4 = lstat([assetPath fileSystemRepresentation], &v28);

    if (!v4)
    {
      v6 = [NSDate dateWithTimeIntervalSince1970:v28.st_mtimespec.tv_sec];
      modified = [(MBCKFile *)self modified];
      [v6 timeIntervalSinceDate:modified];
      v11 = v10;
      v12 = MBGetDefaultLog();
      cache = v12;
      if (v11 <= 0.0)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          assetPath2 = [(MBCKFile *)self assetPath];
          *buf = 138412290;
          v30 = assetPath2;
          _os_log_impl(&_mh_execute_header, cache, OS_LOG_TYPE_ERROR, "File %@ does not appear to have been modified on disk", buf, 0xCu);

          assetPath3 = [(MBCKFile *)self assetPath];
          _MBLog();
        }

        cache = [(MBCKModel *)self cache];
        v25 = [cache markFileAsCopyable:self];
      }

      else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        assetPath4 = [(MBCKFile *)self assetPath];
        v15 = MBGetLogDateFormatter();
        v16 = [v15 stringFromDate:v6];
        v17 = MBGetLogDateFormatter();
        v18 = [v17 stringFromDate:modified];
        *buf = 138413058;
        v30 = assetPath4;
        v31 = 2112;
        v32 = v16;
        v33 = 2048;
        v34 = v11;
        v35 = 2112;
        v36 = v18;
        _os_log_impl(&_mh_execute_header, cache, OS_LOG_TYPE_INFO, "File %@ was modified at %@, %f seconds after %@, the modified date cached during the last scan.", buf, 0x2Au);

        assetPath5 = [(MBCKFile *)self assetPath];
        v20 = MBGetLogDateFormatter();
        v21 = [v20 stringFromDate:v6];
        v22 = MBGetLogDateFormatter();
        v27 = [v22 stringFromDate:modified];
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
        assetPath6 = [(MBCKFile *)self assetPath];
        *buf = 138412290;
        v30 = assetPath6;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "File %@ is no longer on disk", buf, 0xCu);

        modified = [(MBCKFile *)self assetPath];
LABEL_11:
        _MBLog();
LABEL_16:
      }
    }

    else if (v7)
    {
      assetPath7 = [(MBCKFile *)self assetPath];
      *buf = 138412546;
      v30 = assetPath7;
      v31 = 1024;
      LODWORD(v32) = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Cannot tell if file %@ has changed on disk: stat failed: %{errno}d", buf, 0x12u);

      modified = [(MBCKFile *)self assetPath];
      goto LABEL_11;
    }
  }
}

- (BOOL)validateEncryptionKeyWithError:(id *)error
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
    encryptionKey = [(MBCKFile *)self encryptionKey];

    if (encryptionKey)
    {
      assetPath = [(MBCKFile *)self assetPath];
      v9 = [MBKeyBagFile keybagFileWithPath:assetPath error:error];
      v10 = v9;
      if (v9)
      {
        v6 = [v9 validateEncryptionKey:self->_resources error:error];
      }

      else
      {
        v6 = 0;
      }
    }

    else if (error)
    {
      [MBError errorWithCode:1 format:@"Nil encryption key"];
      *error = v6 = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

- (void)_setFileMissingEncryptionKeyForPath:(id)path account:(id)account
{
  accountCopy = account;
  pathCopy = path;
  cache = [(MBCKModel *)self cache];
  v8 = [cache setFileMissingEncryptionKeyForPath:pathCopy];

  if (!v8)
  {
    [MBCKEncryptionManager trackMissingEncryptionKeyForAccount:accountCopy];
  }
}

- (BOOL)fetchEncryptionKeyWithAccount:(id)account device:(id)device error:(id *)error
{
  accountCopy = account;
  deviceCopy = device;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKFile fetchEncryptionKeyWithAccount:device:error:]", "MBCKFile.m", 576, "account");
  }

  v10 = deviceCopy;
  if ([(MBCKFile *)self isRegularFile])
  {
    if (!v10)
    {
      if (!error)
      {
LABEL_26:
        v23 = 0;
        goto LABEL_187;
      }

      absolutePath = [(MBCKFile *)self absolutePath];
      v20 = [MBError errorWithCode:205 path:absolutePath format:@"Nil device"];
LABEL_25:
      *error = v20;

      goto LABEL_26;
    }

    v11 = BYTE6(self->_mbNode.cloneID);
    isProtected = [(MBCKFile *)self isProtected];
    restoreState = self->_restoreState;
    if (isProtected && (v11 & 0xFB) != 3)
    {
      LOBYTE(self->_restoreState) = restoreState & 0xF7;
      if (v11 == 7 || v11 == 4)
      {
        __assert_rtn("[MBCKFile fetchEncryptionKeyWithAccount:device:error:]", "MBCKFile.m", 600, "pc != MBProtectionClassC && pc != MBProtectionClassCx && pc != MBProtectionClassD && Unexpected protection class");
      }

      keybagManager = [v10 keybagManager];
      hasKeybags = [keybagManager hasKeybags];

      if (hasKeybags)
      {
        assetPath = [(MBCKFile *)self assetPath];
        st_ino = [(MBCKFile *)self inode];
        v129 = *&self->_is;
        if (!v129)
        {
          __assert_rtn("[MBCKFile fetchEncryptionKeyWithAccount:device:error:]", "MBCKFile.m", 613, "volumeType != MBVolumeTypeUnspecified");
        }

        if (!st_ino)
        {
          memset(&buf, 0, sizeof(buf));
          if (stat([assetPath fileSystemRepresentation], &buf))
          {
            v24 = __error();
            v25 = *v24;
            if (error)
            {
              *error = [MBError posixErrorWithCode:100 path:assetPath format:@"Failed to stat file: (%s) %d", strerror(*v24), v25];
            }

            v26 = MBGetDefaultLog();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *v137 = 138412546;
              v138 = assetPath;
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
          cache = [(MBCKModel *)self cache];
          v136 = 0;
          v28 = [cache encryptionKeyForFileWithInodeNumber:v130 volumeType:v129 error:&v136];
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
              *(&buf.st_ino + 6) = assetPath;
              HIWORD(buf.st_gid) = 2112;
              *&buf.st_rdev = v132;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Failed to fetch the cached encryption key for 0-byte inode:%llu at %@: %@", &buf, 0x20u);
              v124 = assetPath;
              v125 = v132;
              v122 = v130;
              _MBLog();
            }
          }

          if (self->_resources)
          {
            keybagManager2 = [v10 keybagManager];
            keybagUUIDString = [(MBCKFile *)self keybagUUIDString];
            v33 = [keybagManager2 hasKeybagWithUUID:keybagUUIDString];

            if ((v33 & 1) == 0)
            {
              v34 = MBGetDefaultLog();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                buf.st_dev = 134218242;
                *&buf.st_mode = v130;
                WORD2(buf.st_ino) = 2112;
                *(&buf.st_ino + 6) = assetPath;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Keybag UUID mismatch for 0-byte inode:%llu at %@", &buf, 0x16u);
                v122 = v130;
                v124 = assetPath;
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
            *&buf.st_rdev = assetPath;
            _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_INFO, "Found cached encryption key (size: %tu) for 0-byte inode:%llu at %@", &buf, 0x20u);
            [(NSData *)self->_resources length];
            _MBLog();
          }

LABEL_184:

          goto LABEL_185;
        }

        v135 = 0;
        oslog = [MBKeyBagFile keybagFileWithPath:assetPath error:&v135];
        v132 = v135;
        if (!oslog)
        {
          v38 = MBGetDefaultLog();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            buf.st_dev = 138412546;
            *&buf.st_mode = assetPath;
            WORD2(buf.st_ino) = 2112;
            *(&buf.st_ino + 6) = v132;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Failed to open file to get encryption key %@: %@", &buf, 0x16u);
            _MBLog();
          }

          if (error)
          {
            v39 = v132;
            v23 = 0;
            *error = v132;
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
          domain = [(MBCKFile *)self domain];
          rootPath = [domain rootPath];
          relativePath = [(MBCKFile *)self relativePath];
          v128 = [rootPath stringByAppendingPathComponent:relativePath];
        }

        self->_resourceAsset = [oslog size];
        encryptionKey = [(MBCKFile *)self encryptionKey];

        if (encryptionKey)
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
              *&buf.st_rdev = assetPath;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Found encryption key (size: %tu) for inode:%llu at %@", &buf, 0x20u);
            }

            v124 = v130;
            v125 = assetPath;
            v122 = [(NSData *)self->_resources length];
            _MBLog();
          }

          keybagManager3 = [v10 keybagManager];
          keybagUUIDString2 = [(MBCKFile *)self keybagUUIDString];
          v49 = [keybagManager3 hasKeybagWithUUID:keybagUUIDString2];

          if (v49)
          {
            if (([oslog validateEncryptionKey:self->_resources error:error]& 1) != 0)
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
                    *&buf.st_rdev = assetPath;
                    _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_INFO, "Cached encryption key (size: %tu) for inode:%llu at %@", &buf, 0x20u);
                  }

                  v56 = v95;

                  v124 = v130;
                  v125 = assetPath;
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

                if (([oslog closeWithError:error]& 1) == 0)
                {
                  v101 = MBGetDefaultLog();
                  if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
                  {
                    if (error)
                    {
                      v102 = *error;
                      buf.st_dev = 138412290;
                      *&buf.st_mode = v102;
                      _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_ERROR, "Failed to close keybag file: %@", &buf, 0xCu);
                      v103 = *error;
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

                encryptionKey2 = [(MBCKFile *)self encryptionKey];

                if (encryptionKey2 && ([v10 keybagManager], v105 = objc_claimAutoreleasedReturnValue(), -[MBCKFile keybagUUIDString](self, "keybagUUIDString"), v106 = objc_claimAutoreleasedReturnValue(), v107 = objc_msgSend(v105, "hasKeybagWithUUID:", v106), v106, v105, (v107 & 1) == 0))
                {
                  v114 = MBGetDefaultLog();
                  if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
                  {
                    keybagUUIDString3 = [(MBCKFile *)self keybagUUIDString];
                    buf.st_dev = 138412290;
                    *&buf.st_mode = keybagUUIDString3;
                    _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_ERROR, "Current device keybags do not contain file keybag (%@)", &buf, 0xCu);

                    keybagUUIDString4 = [(MBCKFile *)self keybagUUIDString];
                    _MBLog();
                  }

                  [(MBCKFile *)self _setFileMissingEncryptionKeyForPath:v128 account:accountCopy];
                  cache2 = [(MBCKModel *)self cache];
                  [cache2 removeFileEncryptionKeyForInode:v130 volumeType:v129];

                  if (error)
                  {
                    absolutePath2 = [(MBCKFile *)self absolutePath];
                    *error = [MBError errorWithCode:205 path:absolutePath2 format:@"Current device keybags do not contain file keybag"];
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
                      cache3 = [(MBCKModel *)self cache];
                      v111 = [cache3 setFileEncryptionKey:self->_resources forInodeNumber:v130 volumeType:v129 atPath:assetPath];

                      if (v111)
                      {
                        if (error)
                        {
                          v112 = v111;
                          *error = v111;
                        }

                        v113 = MBGetDefaultLog();
                        if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
                        {
                          buf.st_dev = 134218498;
                          *&buf.st_mode = v130;
                          WORD2(buf.st_ino) = 2112;
                          *(&buf.st_ino + 6) = assetPath;
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
                        *&buf.st_rdev = assetPath;
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

                  [(MBCKFile *)self _setFileMissingEncryptionKeyForPath:v128 account:accountCopy];
                  if (error)
                  {
                    [MBError errorWithCode:100 path:assetPath format:@"Failed to retrieve encryption key for file"];
                    *error = v23 = 0;
                    goto LABEL_183;
                  }
                }

                v23 = 0;
                goto LABEL_183;
              }

              cache4 = [(MBCKModel *)self cache];
              v127 = [cache4 setFileEncryptionKey:self->_resources forInodeNumber:v130 volumeType:v129 atPath:assetPath];

              if (!v127)
              {
                v127 = 0;
                goto LABEL_130;
              }

              if (error)
              {
                v58 = v127;
                *error = v127;
              }

              v55 = MBGetDefaultLog();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
              {
                buf.st_dev = 134218498;
                *&buf.st_mode = v130;
                WORD2(buf.st_ino) = 2112;
                *(&buf.st_ino + 6) = assetPath;
                HIWORD(buf.st_gid) = 2112;
                *&buf.st_rdev = v127;
                v56 = v55;
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "Failed to save the encryption key for inode:%llu at %@: %@", &buf, 0x20u);
                v124 = assetPath;
                v125 = v127;
                v122 = v130;
                _MBLog();
                v51 = 0;
                goto LABEL_109;
              }

              v51 = 0;
              goto LABEL_136;
            }

            encryptionKey3 = [(MBCKFile *)self encryptionKey];
            v51 = [oslog updatedEncryptionKeyForCurrentKey:encryptionKey3 withError:0];

            if (v51)
            {
              if (([oslog validateEncryptionKey:v51 error:error]& 1) != 0)
              {
                objc_storeStrong(&self->_resources, v51);
                if (![MBProtectionClassUtils canOpenWhenLocked:v11])
                {
                  cache5 = [(MBCKModel *)self cache];
                  v127 = [cache5 setFileEncryptionKey:self->_resources forInodeNumber:v130 volumeType:v129 atPath:assetPath];

                  if (v127)
                  {
                    if (error)
                    {
                      v54 = v127;
                      *error = v127;
                    }

                    v55 = MBGetDefaultLog();
                    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                    {
                      buf.st_dev = 134218498;
                      *&buf.st_mode = v130;
                      WORD2(buf.st_ino) = 2112;
                      *(&buf.st_ino + 6) = assetPath;
                      HIWORD(buf.st_gid) = 2112;
                      *&buf.st_rdev = v127;
                      v56 = v55;
                      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "Failed to save the encryption key for inode:%llu at %@: %@", &buf, 0x20u);
                      v124 = assetPath;
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
                    *&buf.st_rdev = assetPath;
                    _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_INFO, "Updated key (size: %tu) for inode:%llu at %@ from the cache with new extent information", &buf, 0x20u);
                  }

                  v56 = v99;

                  v124 = v130;
                  v125 = assetPath;
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
                  v64 = *error;
                  buf.st_dev = 134218754;
                  *&buf.st_mode = v63;
                  WORD2(buf.st_ino) = 2048;
                  *(&buf.st_ino + 6) = v130;
                  HIWORD(buf.st_gid) = 2112;
                  *&buf.st_rdev = assetPath;
                  LOWORD(buf.st_atimespec.tv_sec) = 2112;
                  *(&buf.st_atimespec.tv_sec + 2) = v64;
                  _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "Failed to validate updated encryption key (size: %tu) for inode:%llu at %@: %@", &buf, 0x2Au);
                }

                v65 = [v51 length];
                v125 = assetPath;
                v126 = *error;
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
                  v61 = *error;
                  buf.st_dev = 134218754;
                  *&buf.st_mode = v60;
                  WORD2(buf.st_ino) = 2048;
                  *(&buf.st_ino + 6) = v130;
                  HIWORD(buf.st_gid) = 2112;
                  *&buf.st_rdev = assetPath;
                  LOWORD(buf.st_atimespec.tv_sec) = 2112;
                  *(&buf.st_atimespec.tv_sec + 2) = v61;
                  _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "Failed to update cached encryption key (size: %tu) for inode:%llu at %@: %@", &buf, 0x2Au);
                }

                v62 = [(NSData *)self->_resources length];
                v125 = assetPath;
                v126 = *error;
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
              *(&buf.st_ino + 6) = assetPath;
              _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Keybag UUID mismatch for inode:%llu at %@", &buf, 0x16u);
              v122 = v130;
              v124 = assetPath;
              _MBLog();
            }

            v51 = self->_resources;
            self->_resources = 0;
          }
        }

        cache6 = [(MBCKModel *)self cache];
        v134 = 0;
        v68 = [cache6 encryptionKeyForFileWithInodeNumber:v130 volumeType:v129 error:&v134];
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
            *&buf.st_rdev = assetPath;
            LOWORD(buf.st_atimespec.tv_sec) = 2112;
            *(&buf.st_atimespec.tv_sec + 2) = v132;
            _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "Failed to fetch the cached encryption key for inode:%llu volumeType:%lu at %@: %@", &buf, 0x2Au);
            v125 = assetPath;
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
              *&buf.st_rdev = assetPath;
              _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "Found cached encryption key (size: %tu) for inode:%llu at %@", &buf, 0x20u);
            }

            v124 = v130;
            v125 = assetPath;
            v122 = [(NSData *)self->_resources length];
            _MBLog();
          }

          if (([oslog validateEncryptionKey:self->_resources error:error]& 1) != 0)
          {
            v51 = 0;
          }

          else
          {
            encryptionKey4 = [(MBCKFile *)self encryptionKey];
            v51 = [oslog updatedEncryptionKeyForCurrentKey:encryptionKey4 withError:0];

            if (v51 && ([oslog validateEncryptionKey:v51 error:error]& 1) != 0)
            {
              objc_storeStrong(&self->_resources, v51);
              if (![MBProtectionClassUtils canOpenWhenLocked:v11])
              {
                cache7 = [(MBCKModel *)self cache];
                v127 = [cache7 setFileEncryptionKey:self->_resources forInodeNumber:v130 volumeType:v129 atPath:assetPath];

                if (v127)
                {
                  if (error)
                  {
                    v76 = v127;
                    *error = v127;
                  }

                  v55 = MBGetDefaultLog();
                  if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                  {
                    buf.st_dev = 134218498;
                    *&buf.st_mode = v130;
                    WORD2(buf.st_ino) = 2112;
                    *(&buf.st_ino + 6) = assetPath;
                    HIWORD(buf.st_gid) = 2112;
                    *&buf.st_rdev = v127;
                    v56 = v55;
                    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "Failed to save the encryption key for inode:%llu at %@: %@", &buf, 0x20u);
                    v124 = assetPath;
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
                  *&buf.st_rdev = assetPath;
                  _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_INFO, "Updated key (size: %tu) for inode:%llu at %@ from the cache with new extent information", &buf, 0x20u);
                }

                v56 = v97;

                v124 = v130;
                v125 = assetPath;
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
                v80 = *error;
                buf.st_dev = 134218754;
                *&buf.st_mode = v79;
                WORD2(buf.st_ino) = 2048;
                *(&buf.st_ino + 6) = v130;
                HIWORD(buf.st_gid) = 2112;
                *&buf.st_rdev = assetPath;
                LOWORD(buf.st_atimespec.tv_sec) = 2112;
                *(&buf.st_atimespec.tv_sec + 2) = v80;
                _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "Failed to validate cached encryption key (size: %tu) for inode:%llu at %@: %@", &buf, 0x2Au);
              }

              v81 = [v51 length];
              v125 = assetPath;
              v126 = *error;
              v122 = v81;
              v124 = v130;
              _MBLog();
            }

            cache8 = [(MBCKModel *)self cache];
            [cache8 removeFileEncryptionKeyForInode:v130 volumeType:v129];

            v83 = self->_resources;
            self->_resources = 0;
          }

          if (self->_resources)
          {
            keybagUUIDString5 = [(MBCKFile *)self keybagUUIDString];
            if (keybagUUIDString5)
            {
              keybagManager4 = [v10 keybagManager];
              v86 = [keybagManager4 hasKeybagWithUUID:keybagUUIDString5];

              if ((v86 & 1) == 0)
              {
                v87 = MBGetDefaultLog();
                if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
                {
                  buf.st_dev = 138412290;
                  *&buf.st_mode = keybagUUIDString5;
                  _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "Device keybags do not contain file keybag (%@)", &buf, 0xCu);
                  v122 = keybagUUIDString5;
                  _MBLog();
                }

                cache9 = [(MBCKModel *)self cache];
                [cache9 removeFileEncryptionKeyForInode:v130 volumeType:v129];

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

        v126 = [oslog encryptionKeyWithError:0, v122, v124, v125, v126];
        v91 = self->_resources;
        self->_resources = v126;

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

          [(MBCKFile *)self _setFileMissingEncryptionKeyForPath:v128 account:accountCopy];
          if (!error)
          {
            v92 = 0;
            v23 = 0;
            goto LABEL_152;
          }

          birth = [(MBCKFile *)self birth];
          [MBError errorWithCode:209 path:assetPath format:@"Missing encryption key for file (created at %@)", birth];
          *error = v23 = 0;
          v127 = v132;
          v55 = birth;
          goto LABEL_151;
        }

        goto LABEL_123;
      }

      if (!error)
      {
        goto LABEL_26;
      }

      absolutePath = [(MBCKFile *)self absolutePath];
      v20 = [MBError errorWithCode:205 path:absolutePath format:@"No keybag"];
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

- (int)prepareForUploadWithEngine:(id)engine error:(id *)error
{
  engineCopy = engine;
  if (!error)
  {
    __assert_rtn("[MBCKFile prepareForUploadWithEngine:error:]", "MBCKFile.m", 820, "error");
  }

  v7 = engineCopy;
  serviceAccount = [engineCopy serviceAccount];
  if (!serviceAccount)
  {
    __assert_rtn("[MBCKFile prepareForUploadWithEngine:error:]", "MBCKFile.m", 822, "serviceAccount");
  }

  v9 = serviceAccount;
  if ((self->_restoreState & 0x10) != 0)
  {
    absolutePath = 0;
LABEL_48:
    v42 = 0;
    v38 = 2;
    goto LABEL_49;
  }

  v10 = BYTE6(self->_mbNode.cloneID);
  absolutePath = [(MBCKFile *)self absolutePath];
  isSQLiteFile = [(MBCKFile *)self isSQLiteFile];
  if ([(MBCKFile *)self isDataless]|| ![MBProtectionClassUtils canOpenWhenLocked:v10])
  {
    goto LABEL_46;
  }

  if (!isSQLiteFile)
  {
    if (![(MBCKFile *)self size])
    {
      goto LABEL_46;
    }

    userID = [(MBCKFile *)self userID];
    if (userID != MBMobileUID())
    {
      goto LABEL_46;
    }

    domainName = [(MBCKFile *)self domainName];
    v29 = [domainName isEqualToString:@"HomeDomain"];

    if (!v29)
    {
      goto LABEL_46;
    }

    relativePath = [(MBCKFile *)self relativePath];
    if (!relativePath)
    {
      __assert_rtn("[MBCKFile prepareForUploadWithEngine:error:]", "MBCKFile.m", 882, "relativePath");
    }

    v31 = relativePath;
    if (qword_1004216B8 != -1)
    {
      dispatch_once(&qword_1004216B8, &stru_1003BE240);
    }

    if (![qword_1004216B0 containsObject:v31])
    {
      goto LABEL_45;
    }

    persona = [v7 persona];
    sqliteCopyDirectory = [persona sqliteCopyDirectory];

    serviceAccount2 = [v7 serviceAccount];
    device = [v7 device];
    v65 = sqliteCopyDirectory;
    v66 = 0;
    LOBYTE(persona) = [(MBCKFile *)self encodeWithFileAtPath:absolutePath encodingMethod:1 hasSnapshot:1 destinationDirectory:sqliteCopyDirectory account:serviceAccount2 device:device error:&v66];
    v36 = v66;

    if ((persona & 1) == 0)
    {
      v37 = MBGetDefaultLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v70 = absolutePath;
        v71 = 2112;
        v72 = v36;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Failed to compress the file at %@: %@", buf, 0x16u);
        v60 = absolutePath;
        v61 = v36;
        _MBLog();
      }
    }

    v24 = v65;
LABEL_44:

LABEL_45:
LABEL_46:
    if (![(MBCKFile *)self hasResources:v60]|| [(MBCKFile *)self _createResourceCopyWithError:error])
    {
      goto LABEL_48;
    }

    v58 = MBGetDefaultLog();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v59 = *error;
      *buf = 138412290;
      v70 = v59;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "Failed to create copy of file resources: %@", buf, 0xCu);
      v60 = *error;
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
    persona2 = [v7 persona];
    v15 = [MBTemporaryDirectory userTemporaryDirectoryForPersona:persona2 identifiedBy:@"MBCKFile-SQLite" error:error];
    v16 = self->_sizeBeforeEncoding;
    self->_sizeBeforeEncoding = v15;

    sizeBeforeEncoding = self->_sizeBeforeEncoding;
    if (!sizeBeforeEncoding)
    {
      v43 = MBGetDefaultLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = *error;
        *buf = 138412546;
        v70 = absolutePath;
        v71 = 2112;
        v72 = v44;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Failed to SQLite temporary dir to copy %@, %@", buf, 0x16u);
        v60 = absolutePath;
        v61 = *error;
        _MBLog();
      }

      v38 = 0;
      LOBYTE(self->_restoreState) &= ~4u;
      goto LABEL_55;
    }
  }

  v17 = [(MBCKFile *)self _createTemporarySQLiteCopyWithEngine:v7 temporaryDirectory:sizeBeforeEncoding error:error];
  if (v17 == 2)
  {
    LOBYTE(self->_restoreState) |= 4u;
    userID2 = [(MBCKFile *)self userID];
    if (userID2 != MBMobileUID())
    {
      goto LABEL_46;
    }

    if (!*&self->_contentEncodingMethod)
    {
      __assert_rtn("[MBCKFile prepareForUploadWithEngine:error:]", "MBCKFile.m", 858, "_temporaryPath");
    }

    persona3 = [v7 persona];
    sqliteCopyDirectory2 = [persona3 sqliteCopyDirectory];

    v21 = *&self->_contentEncodingMethod;
    serviceAccount3 = [v7 serviceAccount];
    device2 = [v7 device];
    v68 = 0;
    v64 = sqliteCopyDirectory2;
    LOBYTE(sqliteCopyDirectory2) = [(MBCKFile *)self encodeWithFileAtPath:v21 encodingMethod:1 hasSnapshot:1 destinationDirectory:sqliteCopyDirectory2 account:serviceAccount3 device:device2 error:&v68];
    v24 = v68;

    rsrcTemporaryPath = self->_rsrcTemporaryPath;
    if (sqliteCopyDirectory2)
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
        v72 = absolutePath;
        v73 = 2112;
        v74[0] = v24;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Failed to compress the SQLite file at %@(%@): %@", buf, 0x20u);
        v61 = absolutePath;
        v62 = v24;
        v60 = *&self->_contentEncodingMethod;
        _MBLog();
      }

      serviceAccount4 = [v7 serviceAccount];
      device3 = [v7 device];
      v67 = 0;
      v49 = [(MBCKFile *)self refreshFromCopyWithAccount:serviceAccount4 device:device3 error:&v67];
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
    v41 = *error;
    *buf = 138413058;
    v70 = absolutePath;
    v71 = 2112;
    v72 = v40;
    v73 = 1024;
    LODWORD(v74[0]) = 0;
    WORD2(v74[0]) = 2112;
    *(v74 + 6) = v41;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Failed to create copy of SQLite file %@ to %@: %d, %@", buf, 0x26u);
    v62 = 0;
    v63 = *error;
    v60 = absolutePath;
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
  device4 = [v7 device];
  hmacKey = [device4 hmacKey];
  v55 = [(MBCKFile *)self fileIDWithHmacKey:hmacKey];
  manifest = self->_manifest;
  self->_manifest = v55;

  if (v42 && !*error)
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  restoreState = selfCopy->_restoreState;
  if ((restoreState & 2) == 0)
  {
    v7 = 0;
    absolutePath = [(MBCKFile *)selfCopy absolutePath];
    v5 = [MBSQLiteFileHandle isSQLiteFileAtPath:absolutePath result:&v7 error:0];

    if (v5)
    {
      restoreState = v7;
    }

    else
    {
      restoreState = 0;
    }

    LOBYTE(selfCopy->_restoreState) = restoreState | selfCopy->_restoreState & 0xFC | 2;
  }

  objc_sync_exit(selfCopy);

  return restoreState & 1;
}

- (id)_compactSQLiteDatabaseAtPath:(id)path temporaryDirectory:(id)directory error:(id *)error
{
  pathCopy = path;
  directoryCopy = directory;
  if (!pathCopy)
  {
    __assert_rtn("[MBCKFile _compactSQLiteDatabaseAtPath:temporaryDirectory:error:]", "MBCKFile.m", 965, "path");
  }

  v9 = directoryCopy;
  if (!directoryCopy)
  {
    __assert_rtn("[MBCKFile _compactSQLiteDatabaseAtPath:temporaryDirectory:error:]", "MBCKFile.m", 966, "temporaryDirectory");
  }

  if (!error)
  {
    __assert_rtn("[MBCKFile _compactSQLiteDatabaseAtPath:temporaryDirectory:error:]", "MBCKFile.m", 967, "error");
  }

  makeTemporaryFilePath = [directoryCopy makeTemporaryFilePath];
  v11 = objc_opt_class();
  objc_sync_enter(v11);
  v12 = [MBSQLiteFileHandle compactSQLiteDatabaseAtPath:pathCopy toPath:makeTemporaryFilePath error:error];
  objc_sync_exit(v11);

  if (v12)
  {
    goto LABEL_7;
  }

  makeTemporaryFilePath2 = [v9 makeTemporaryFilePath];

  v14 = objc_opt_class();
  objc_sync_enter(v14);
  v15 = [MBSQLiteFileHandle copySQLiteFileAtPath:pathCopy toPath:makeTemporaryFilePath2 error:error];
  objc_sync_exit(v14);

  if (v15)
  {
    makeTemporaryFilePath = makeTemporaryFilePath2;
LABEL_7:
    makeTemporaryFilePath2 = makeTemporaryFilePath;
    v16 = makeTemporaryFilePath2;
    goto LABEL_9;
  }

  v16 = 0;
LABEL_9:

  return v16;
}

- (id)_copySQLiteDatabaseAtPath:(id)path temporaryDirectory:(id)directory error:(id *)error
{
  pathCopy = path;
  directoryCopy = directory;
  if (!pathCopy)
  {
    __assert_rtn("[MBCKFile _copySQLiteDatabaseAtPath:temporaryDirectory:error:]", "MBCKFile.m", 990, "path");
  }

  v9 = directoryCopy;
  if (!directoryCopy)
  {
    __assert_rtn("[MBCKFile _copySQLiteDatabaseAtPath:temporaryDirectory:error:]", "MBCKFile.m", 991, "temporaryDirectory");
  }

  if (!error)
  {
    __assert_rtn("[MBCKFile _copySQLiteDatabaseAtPath:temporaryDirectory:error:]", "MBCKFile.m", 992, "error");
  }

  makeTemporaryFilePath = [directoryCopy makeTemporaryFilePath];
  v11 = objc_opt_class();
  objc_sync_enter(v11);
  v12 = [MBSQLiteFileHandle copySQLiteFileAtPath:pathCopy toPath:makeTemporaryFilePath error:error];
  objc_sync_exit(v11);

  if (v12)
  {
    v13 = makeTemporaryFilePath;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_scrubSQLiteDatabaseWithEngine:(id)engine temporaryDirectory:(id)directory error:(id *)error
{
  engineCopy = engine;
  directoryCopy = directory;
  v32 = engineCopy;
  serviceAccount = [engineCopy serviceAccount];
  if (!serviceAccount)
  {
    __assert_rtn("[MBCKFile _scrubSQLiteDatabaseWithEngine:temporaryDirectory:error:]", "MBCKFile.m", 1014, "account");
  }

  absolutePath = [(MBCKFile *)self absolutePath];
  relativePath = [(MBCKFile *)self relativePath];
  v8 = [(MBCKFile *)self _copySQLiteDatabaseAtPath:absolutePath temporaryDirectory:directoryCopy error:error];
  if (!v8)
  {
    v19 = MBGetDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v24 = *error;
      *buf = 138412546;
      v43 = absolutePath;
      v44 = 2112;
      v45 = v24;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to copy SQLite database at %@: %@", buf, 0x16u);
      v30 = *error;
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
  settingsContext = [engineCopy settingsContext];
  plugins = [settingsContext plugins];

  v11 = [plugins countByEnumeratingWithState:&v38 objects:v48 count:16];
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
        objc_enumerationMutation(plugins);
      }

      v16 = *(*(&v38 + 1) + 8 * v14);
      v17 = objc_autoreleasePoolPush();
      if (objc_opt_respondsToSelector())
      {
        domain = [(MBCKFile *)self domain];
        v19 = [v16 scrubSQLiteFileCopyAtRelativePath:relativePath copyTemporaryPath:v8 domain:domain];

        if (v19)
        {
          break;
        }
      }

      objc_autoreleasePoolPop(v17);
      if (v11 == ++v14)
      {
        v11 = [plugins countByEnumeratingWithState:&v38 objects:v48 count:16];
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
      v45 = relativePath;
      v46 = 2112;
      v47 = v19;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to scrub SQLite database at %@ (%@): %@", buf, 0x20u);
      _MBLog();
    }

    [MBSQLiteFileHandle removeAllSQLiteFilesAtPath:v8];
    if (error)
    {
      v26 = v19;
      v23 = 0;
      *error = v19;
      goto LABEL_25;
    }

    goto LABEL_20;
  }

LABEL_12:

  makeTemporaryFilePath = [directoryCopy makeTemporaryFilePath];
  v21 = objc_opt_class();
  objc_sync_enter(v21);
  v22 = [MBSQLiteFileHandle compactSQLiteDatabaseAtPath:v8 toPath:makeTemporaryFilePath error:error];
  objc_sync_exit(v21);

  [MBSQLiteFileHandle removeAllSQLiteFilesAtPath:v8];
  if (v22)
  {
    v23 = makeTemporaryFilePath;
  }

  else
  {
    v27 = MBGetDefaultLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = *error;
      *buf = 138412802;
      v43 = v8;
      v44 = 2112;
      v45 = relativePath;
      v46 = 2112;
      v47 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to compact SQLite database at %@ (%@): %@", buf, 0x20u);
      v31 = *error;
      _MBLog();
    }

    v23 = 0;
  }

  v19 = 0;
LABEL_25:

  return v23;
}

- (int)_createTemporarySQLiteCopyWithEngine:(id)engine temporaryDirectory:(id)directory error:(id *)error
{
  engineCopy = engine;
  directoryCopy = directory;
  if (!error)
  {
    __assert_rtn("[MBCKFile _createTemporarySQLiteCopyWithEngine:temporaryDirectory:error:]", "MBCKFile.m", 1056, "error");
  }

  v10 = directoryCopy;
  if (!directoryCopy)
  {
    __assert_rtn("[MBCKFile _createTemporarySQLiteCopyWithEngine:temporaryDirectory:error:]", "MBCKFile.m", 1057, "temporaryDirectory");
  }

  relativePath = [(MBCKFile *)self relativePath];
  absolutePath = [(MBCKFile *)self absolutePath];
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
  if (![MBSQLiteFileHandle lastModifiedForSQLiteFileAtPath:absolutePath time:&v72 error:error])
  {
    goto LABEL_49;
  }

  v58 = v11;
  v59 = v10;
  errorCopy = error;
  self->_mbNode.modified = v72;
  self->_encryptedSize = [(MBCKFile *)self size];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v61 = engineCopy;
  settingsContext = [engineCopy settingsContext];
  plugins = [settingsContext plugins];

  v20 = [plugins countByEnumeratingWithState:&v68 objects:v80 count:16];
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
        objc_enumerationMutation(plugins);
      }

      v26 = *(*(&v68 + 1) + 8 * v24);
      v27 = objc_autoreleasePoolPush();
      if (objc_opt_respondsToSelector())
      {
        domain = [(MBCKFile *)self domain];
        v29 = [v26 shouldScrubSQLiteFileCopyAtRelativePath:relativePath domain:domain];

        if (v29)
        {
          break;
        }
      }

      objc_autoreleasePoolPop(v27);
      if (v21 == ++v24)
      {
        v21 = [plugins countByEnumeratingWithState:&v68 objects:v80 count:16];
        v23 = &selRef_setServiceDelegate_;
        if (v21)
        {
          goto LABEL_12;
        }

        goto LABEL_19;
      }
    }

    objc_autoreleasePoolPop(v27);

    error = errorCopy;
    engineCopy = v61;
    v10 = v59;
    v12 = [(MBCKFile *)self _scrubSQLiteDatabaseWithEngine:v61 temporaryDirectory:v59 error:errorCopy];
    objc_storeStrong(&self->_contentEncodingMethod, v12);
    if (v12)
    {
      v30 = 1;
      goto LABEL_23;
    }

    v45 = MBGetDefaultLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = *errorCopy;
      *buf = 138412546;
      v75 = absolutePath;
      v76 = 2112;
      v77 = v46;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Failed to scrub SQLite database at %@: %@", buf, 0x16u);
      v55 = *errorCopy;
      _MBLog();
    }

    [(MBCKFile *)self _removeTemporaryCopy];
    v12 = 0;
    v15 = 0;
    goto LABEL_42;
  }

LABEL_19:

  v10 = v59;
  error = errorCopy;
  v12 = [(MBCKFile *)self _compactSQLiteDatabaseAtPath:absolutePath temporaryDirectory:v59 error:errorCopy];
  objc_storeStrong(&self->_contentEncodingMethod, v12);
  if (!v12)
  {
    v48 = MBGetDefaultLog();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = *errorCopy;
      *buf = 138412546;
      v75 = absolutePath;
      v76 = 2112;
      v77 = v49;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Failed to compact SQLite database at %@: %@", buf, 0x16u);
      v53 = absolutePath;
      v54 = *errorCopy;
      _MBLog();
    }

    engineCopy = v61;
LABEL_49:
    [(MBCKFile *)self _removeTemporaryCopy:v53];
    v15 = 0;
    v12 = 0;
LABEL_50:
    if (!*error)
    {
      __assert_rtn("[MBCKFile _createTemporarySQLiteCopyWithEngine:temporaryDirectory:error:]", "MBCKFile.m", 1133, "result != MBPrepareForUploadResultFailure || *error");
    }

    v16 = 0;
    goto LABEL_52;
  }

  v30 = 0;
  engineCopy = v61;
LABEL_23:
  if (![MBProtectionClassUtils setWithPath:v12 value:v58 error:error])
  {
    v43 = MBGetDefaultLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = *error;
      *buf = 138412802;
      v75 = v12;
      v76 = 2112;
      v77 = relativePath;
      v78 = 2112;
      v79 = v44;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Failed to set protection class on SQLite database copy at %@ (%@): %@", buf, 0x20u);
      v56 = *error;
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
  settingsContext2 = [engineCopy settingsContext];
  plugins2 = [settingsContext2 plugins];

  v33 = [plugins2 countByEnumeratingWithState:&v64 objects:v73 count:16];
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
        objc_enumerationMutation(plugins2);
      }

      v37 = *(*(&v64 + 1) + 8 * v36);
      v38 = objc_autoreleasePoolPush();
      if (objc_opt_respondsToSelector())
      {
        v39 = [v37 backingUpSQLiteFileCopyAtPath:absolutePath temporaryPath:v12];
        if (v39)
        {
          break;
        }
      }

      objc_autoreleasePoolPop(v38);
      if (v34 == ++v36)
      {
        v34 = [plugins2 countByEnumeratingWithState:&v64 objects:v73 count:16];
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
    error = errorCopy;
    *errorCopy = v15;
    [(MBCKFile *)self _removeTemporaryCopy];
    if (v30)
    {
      v16 = 1;
      engineCopy = v61;
      goto LABEL_45;
    }

    engineCopy = v61;
    v10 = v59;
    goto LABEL_50;
  }

LABEL_33:

  engineCopy = v61;
  serviceAccount = [v61 serviceAccount];
  device = [v61 device];
  error = errorCopy;
  v42 = [(MBCKFile *)self refreshFromCopyWithAccount:serviceAccount device:device error:errorCopy];

  if ((v42 & 1) == 0)
  {
    v51 = MBGetDefaultLog();
    v10 = v59;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = *errorCopy;
      *buf = 138412802;
      v75 = v12;
      v76 = 2112;
      v77 = relativePath;
      v78 = 2112;
      v79 = v52;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Failed to refresh file stats for SQLite database copy at %@ (%@): %@", buf, 0x20u);
      v57 = *errorCopy;
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

- (BOOL)_createResourceCopyWithError:(id *)error
{
  if (!self->_temporaryPath)
  {
    goto LABEL_4;
  }

  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:self->_temporaryPath];

  if (!v6 || (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 removeItemAtPath:self->_temporaryPath error:error], v7, v8))
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
        absolutePath = [(MBCKFile *)self absolutePath];
        v13 = self->_temporaryPath;
        buf.st_dev = 138412546;
        *&buf.st_mode = absolutePath;
        WORD2(buf.st_ino) = 2112;
        *(&buf.st_ino + 6) = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Creating a copy of xattrs for %@ (%@)", &buf, 0x16u);

        absolutePath2 = [(MBCKFile *)self absolutePath];
        v39 = self->_temporaryPath;
        _MBLog();
      }

      absolutePath3 = [(MBCKFile *)self absolutePath];
      v44 = 0;
      domainName2 = +[MBExtendedAttributes attributesForPathFSR:error:](MBExtendedAttributes, "attributesForPathFSR:error:", [absolutePath3 fileSystemRepresentation], &v44);
      v16 = v44;

      if (domainName2)
      {
        v17 = [NSURL fileURLWithPath:self->_temporaryPath isDirectory:0];
        v43 = v16;
        v18 = [domainName2 writeToURL:v17 error:&v43];
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

            if (error)
            {
              *error = [MBError errorWithCode:100 path:self->_temporaryPath format:@"Failed to stat xattrs copy: %d (%s)", v22, strerror(v22)];
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
              v33 = [domainName2 count];
              signature = self->_signature;
              volumeType = self->_volumeType;
              *v45 = 134218498;
              v46 = v33;
              v47 = 2048;
              v48 = signature;
              v49 = 2112;
              v50 = volumeType;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Found %lu xattrs (%llu) for %@", v45, 0x20u);
              [domainName2 count];
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

          if (error)
          {
            absolutePath4 = [(MBCKFile *)self absolutePath];
            *error = [MBError errorWithCode:100 error:v19 path:absolutePath4 format:@"Failed to serialize xattrs to disk"];
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

        if (error)
        {
          v29 = v16;
          domainName2 = 0;
          v21 = 0;
          *error = v16;
        }

        else
        {
          domainName2 = 0;
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

      domainName = [(MBDomain *)self->_domain domainName];
      v27 = self->_volumeType;
      buf.st_dev = 138412546;
      *&buf.st_mode = domainName;
      WORD2(buf.st_ino) = 2112;
      *(&buf.st_ino + 6) = v27;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Can't make a copy of xattrs without an absolute path (%@:%@)", &buf, 0x16u);

      domainName2 = [(MBDomain *)self->_domain domainName];
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

- (void)downloadContentsWithOperationTracker:(id)tracker completion:(id)completion
{
  trackerCopy = tracker;
  completionCopy = completion;
  if (!trackerCopy)
  {
    __assert_rtn("[MBCKFile downloadContentsWithOperationTracker:completion:]", "MBCKFile.m", 1209, "tracker");
  }

  v8 = completionCopy;
  if (([(MBCKFile *)self isRegularFile]|| [(MBCKFile *)self resourcesSize]|| (self->_mbNode.flags & 0x80) == 0) && ![(MBCKFile *)self downloaded])
  {
    cache = [(MBCKModel *)self cache];
    signature = [(MBCKFile *)self signature];
    v11 = [cache fileAssetMetadataForSignature:signature volumeType:{-[MBCKFile volumeType](self, "volumeType")}];

    if (v11 && ![(MBCKFile *)self resourcesSize])
    {
      restoreState = [(MBCKFile *)self restoreState];
      stashedAssetPath = [v11 stashedAssetPath];
      [restoreState setStashedAssetPath:stashedAssetPath];

      if ([restoreState stashedAssetDecrypted])
      {
        stashedAssetIsDecrypted = 1;
      }

      else
      {
        stashedAssetIsDecrypted = [v11 stashedAssetIsDecrypted];
      }

      [restoreState setStashedAssetDecrypted:stashedAssetIsDecrypted];
      decodedAssetPath = [v11 decodedAssetPath];
      [restoreState setDecodedAssetPath:decodedAssetPath];

      LOBYTE(self->_restoreState) |= 0x20u;
      v31 = MBGetDefaultLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Mark file as already downloaded because a file of the same signature has already been downloaded: %@", buf, 0xCu);
        _MBLog();
      }

      v8[2](v8, 0);
    }

    else
    {
      v32 = v11;
      v12 = [CKRecordID alloc];
      recordIDString = [(MBCKModel *)self recordIDString];
      v14 = [MBCKDatabaseManager zoneIDOfType:[(MBCKFile *)self recordZone]];
      restoreState = [v12 initWithRecordName:recordIDString zoneID:v14];

      v16 = [NSPredicate predicateWithFormat:@"recordID = %@", restoreState];
      v17 = [CKQuery alloc];
      v18 = +[(MBCKModel *)MBCKFile];
      v19 = [v17 initWithRecordType:v18 predicate:v16];

      v20 = [[CKQueryOperation alloc] initWithQuery:v19];
      defaultZoneID = [trackerCopy defaultZoneID];
      [v20 setZoneID:defaultZoneID];

      engines = [trackerCopy engines];
      firstObject = [engines firstObject];

      if (!firstObject || ([firstObject persona], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "shouldRestoreFilesSparse"), v24, v25))
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
      [trackerCopy addDatabaseOperation:v20];

      v11 = v32;
    }
  }

  else
  {
    v8[2](v8, 0);
  }
}

- (BOOL)stashAssetsToTemporaryDirectoryWithAccount:(id)account operationTracker:(id)tracker cache:(id)cache device:(id)device error:(id *)error
{
  accountCopy = account;
  trackerCopy = tracker;
  cacheCopy = cache;
  deviceCopy = device;
  if (!error)
  {
    __assert_rtn("[MBCKFile stashAssetsToTemporaryDirectoryWithAccount:operationTracker:cache:device:error:]", "MBCKFile.m", 1253, "error");
  }

  if (!cacheCopy)
  {
    __assert_rtn("[MBCKFile stashAssetsToTemporaryDirectoryWithAccount:operationTracker:cache:device:error:]", "MBCKFile.m", 1254, "cache");
  }

  if (!deviceCopy)
  {
    __assert_rtn("[MBCKFile stashAssetsToTemporaryDirectoryWithAccount:operationTracker:cache:device:error:]", "MBCKFile.m", 1255, "device");
  }

  if ([(MBCKFile *)self isRegularFile]&& [(MBCKFile *)self size]|| self->_contentAsset)
  {
    relativePath = [(MBCKFile *)self relativePath];
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      *v130 = relativePath;
      *&v130[8] = 2048;
      *&v130[10] = [(MBCKFile *)self size];
      *&v130[18] = 2048;
      *&v130[20] = [(MBCKFile *)self resourcesSize];
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Stashing assets for file, relativePath:%@, size:%llu, resourceSize:%llu", buf, 0x20u);
      path4 = [(MBCKFile *)self size];
      resourcesSize = [(MBCKFile *)self resourcesSize];
      v105 = relativePath;
      _MBLog();
    }

    v125 = relativePath;

    restoreState = [(MBCKFile *)self restoreState];
    v124 = accountCopy;
    if (![(MBCKFile *)self isRegularFile])
    {
      goto LABEL_39;
    }

    if (![(MBCKFile *)self size])
    {
      goto LABEL_39;
    }

    stashedAssetPath = [restoreState stashedAssetPath];
    if (stashedAssetPath)
    {
      v19 = stashedAssetPath;
      v20 = +[NSFileManager defaultManager];
      [restoreState stashedAssetPath];
      v22 = v21 = trackerCopy;
      v23 = [v20 fileExistsAtPath:v22];

      trackerCopy = v21;
      accountCopy = v124;

      if (v23)
      {
        goto LABEL_39;
      }
    }

    v24 = self->_changeType;
    if (v24)
    {
      v25 = v24;
      fileURL = [v24 fileURL];
      if (fileURL)
      {
        v120 = v25;
        stashedAssetIsDecrypted = [(MBCKFile *)self stashedAssetIsDecrypted];
        if (stashedAssetIsDecrypted)
        {
          goto LABEL_18;
        }

        path = [fileURL path];
        v128 = 0;
        v28 = trackerCopy;
        v29 = [(MBCKFile *)self _decryptWithOperationTracker:trackerCopy destination:path device:deviceCopy error:&v128];
        v30 = v128;

        if (v29)
        {

          accountCopy = v124;
          trackerCopy = v28;
LABEL_18:
          if (BYTE6(self->_mbNode.cloneID) == 4)
          {
            v121 = cacheCopy;
            v31 = restoreState;
            v32 = trackerCopy;
            path2 = [fileURL path];
            v34 = BYTE6(self->_mbNode.cloneID);
            v127 = 0;
            v35 = [MBProtectionClassUtils setWithPath:path2 value:v34 error:&v127];
            v36 = v127;

            if ((v35 & 1) == 0)
            {
              v37 = MBGetDefaultLog();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                v38 = BYTE6(self->_mbNode.cloneID);
                path3 = [fileURL path];
                *buf = 67109634;
                *v130 = v38;
                *&v130[4] = 2112;
                *&v130[6] = path3;
                *&v130[14] = 2112;
                *&v130[16] = v36;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Failed to set protection class %d at path %@: %@", buf, 0x1Cu);

                v40 = BYTE6(self->_mbNode.cloneID);
                path4 = [fileURL path];
                resourcesSize = v36;
                v105 = v40;
                _MBLog();
              }
            }

            trackerCopy = v32;
            restoreState = v31;
            cacheCopy = v121;
            accountCopy = v124;
          }

          v114 = trackerCopy;
          v41 = [(MBCKFile *)self signature:v105];
          mb_base64EncodedFileSystemPathString = [v41 mb_base64EncodedFileSystemPathString];

          if (!mb_base64EncodedFileSystemPathString)
          {
            __assert_rtn("[MBCKFile stashAssetsToTemporaryDirectoryWithAccount:operationTracker:cache:device:error:]", "MBCKFile.m", 1306, "signature");
          }

          path5 = [fileURL path];
          persona = [accountCopy persona];
          domain = [(MBCKFile *)self domain];
          v46 = [persona restorePrefetchDirectoryForDomain:domain];

          v116 = mb_base64EncodedFileSystemPathString;
          v117 = v46;
          v47 = [MBFileOperation createPathInDirectory:v46 fileName:mb_base64EncodedFileSystemPathString];
          v122 = path5;
          fileSystemRepresentation = [path5 fileSystemRepresentation];
          fileSystemRepresentation2 = [v47 fileSystemRepresentation];
          if (!renamex_np(fileSystemRepresentation, fileSystemRepresentation2, 4u))
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
              [path5 lastPathComponent];
              v52 = log = v51;
              *buf = 138412546;
              *v130 = v52;
              *&v130[8] = 2112;
              *&v130[10] = v47;
              _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Could not move stashed resource (%@) across volumes, copying to %@", buf, 0x16u);

              lastPathComponent = [path5 lastPathComponent];
              v109 = v47;
              _MBLog();

              v51 = log;
            }

            if ([MBFileOperation crossVolumeMoveFrom:path5 intoDir:v117 toFileNamed:v116 error:error])
            {
              goto LABEL_35;
            }

            v53 = [MBError errnoForError:*error];
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
                lastPathComponent = v122;
                v109 = v47;
                _MBLog();
              }

LABEL_35:
              v118 = fileURL;
              [restoreState setStashedAssetPath:{v47, lastPathComponent, v109}];
              [restoreState setStashedAssetDecrypted:stashedAssetIsDecrypted ^ 1];
              signature = [(MBCKFile *)self signature];
              v57 = [cacheCopy fileAssetMetadataForSignature:signature volumeType:{-[MBCKFile volumeType](self, "volumeType")}];

              if (!v57)
              {
                stashedAssetPath2 = [restoreState stashedAssetPath];
                signature2 = [(MBCKFile *)self signature];
                v99 = [cacheCopy updateStashPath:stashedAssetPath2 forSignature:signature2 volumeType:-[MBCKFile volumeType](self isDecrypted:{"volumeType"), -[MBCKFile stashedAssetIsDecrypted](self, "stashedAssetIsDecrypted")}];

                if (v99)
                {
                  v100 = v99;
                  *error = v99;

                  trackerCopy = v114;
                  v69 = v125;
                  fileURL = v118;
                  v101 = v116;
                  path5 = v122;
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
                path4 = v122;
                resourcesSize = v47;
                v105 = v125;
                _MBLog();
              }

              accountCopy = v124;
              trackerCopy = v114;
LABEL_39:
              if (!self->_contentAsset)
              {
                v68 = 1;
                v69 = v125;
                goto LABEL_88;
              }

              errorCopy = error;
              stashedResourcePath = [restoreState stashedResourcePath];
              if (stashedResourcePath)
              {
                v61 = stashedResourcePath;
                v62 = +[NSFileManager defaultManager];
                [restoreState stashedResourcePath];
                v63 = cacheCopy;
                v64 = restoreState;
                v66 = v65 = trackerCopy;
                v67 = [v62 fileExistsAtPath:v66];

                trackerCopy = v65;
                restoreState = v64;
                cacheCopy = v63;

                if (v67)
                {
                  v68 = 1;
                  accountCopy = v124;
                  v69 = v125;
LABEL_88:

                  goto LABEL_89;
                }
              }

              v70 = [(CKAsset *)self->_contentAsset fileURL:v105];
              if (v70)
              {
                v71 = v70;
                v123 = cacheCopy;
                v72 = trackerCopy;
                accountCopy = v124;
                persona2 = [v124 persona];
                domain2 = [(MBCKFile *)self domain];
                v75 = [persona2 stashAsset:v71 forDomain:domain2 error:errorCopy];

                if (v75)
                {
                  [restoreState setStashedResourcePath:v75];
                  v76 = MBGetDefaultLog();
                  if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
                  {
                    fileURL2 = [(CKAsset *)self->_contentAsset fileURL];
                    path6 = [fileURL2 path];
                    *buf = 138412802;
                    *v130 = v125;
                    *&v130[8] = 2112;
                    *&v130[10] = path6;
                    *&v130[18] = 2112;
                    *&v130[20] = v75;
                    _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEBUG, "Stashed downloaded file resource (%@) %@ at %@", buf, 0x20u);

                    fileURL3 = [(CKAsset *)self->_contentAsset fileURL];
                    path7 = [fileURL3 path];
                    _MBLog();
                  }

                  v68 = 1;
                  accountCopy = v124;
                }

                else
                {

                  v68 = 0;
                }

                trackerCopy = v72;
                v69 = v125;
                cacheCopy = v123;
                goto LABEL_88;
              }

              v80 = MBIsInternalInstall();
              v81 = MBGetDefaultLog();
              v82 = v81;
              accountCopy = v124;
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
              *errorCopy = v68 = 0;
              goto LABEL_88;
            }

            trackerCopy = v114;
            v69 = v125;
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              v103 = *error;
              *buf = 138543874;
              *v130 = v122;
              *&v130[8] = 2082;
              *&v130[10] = fileSystemRepresentation2;
              *&v130[18] = 2112;
              *&v130[20] = v103;
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "rename of stashed resource from %{public}@ to %{public}s failed: %@", buf, 0x20u);
              v112 = *error;
              _MBLog();
            }

            path5 = v122;
          }

          else
          {
            v102 = MBGetDefaultLog();
            if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              *v130 = path5;
              *&v130[8] = 2112;
              *&v130[10] = v47;
              *&v130[18] = 1024;
              *&v130[20] = v50;
              _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_ERROR, "rename of stashed resource from %@ to %@ failed: %{errno}d", buf, 0x1Cu);
              _MBLog();
            }

            *error = [MBError posixErrorWithCode:v50 format:@"rename of stashed resource from %@ to %@ failed", path5, v47];
            trackerCopy = v114;
            v69 = v125;
          }

          v101 = v116;
          goto LABEL_86;
        }

        v119 = fileURL;
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
        *error = v30;

        trackerCopy = v28;
        v69 = v125;
        fileURL = v119;
LABEL_76:

LABEL_87:
        v68 = 0;
        accountCopy = v124;
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
          fileURL = 0;
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
      *error = [MBError errorWithCode:302 path:v125 format:@"Nil fileURL for content asset with size:%llu", [(MBCKFile *)self size]];
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
        accountCopy = v124;
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
    *error = v68 = 0;
    goto LABEL_88;
  }

  v68 = 1;
LABEL_89:

  return v68;
}

- (BOOL)restoreAssetWithOperationTracker:(id)tracker destination:(id)destination logger:(id)logger cache:(id)cache device:(id)device error:(id *)error
{
  trackerCopy = tracker;
  destinationCopy = destination;
  loggerCopy = logger;
  cacheCopy = cache;
  deviceCopy = device;
  if (!trackerCopy)
  {
    __assert_rtn("[MBCKFile restoreAssetWithOperationTracker:destination:logger:cache:device:error:]", "MBCKFile.m", 1367, "tracker");
  }

  if (!cacheCopy)
  {
    __assert_rtn("[MBCKFile restoreAssetWithOperationTracker:destination:logger:cache:device:error:]", "MBCKFile.m", 1368, "cache");
  }

  v18 = deviceCopy;
  if (!deviceCopy)
  {
    __assert_rtn("[MBCKFile restoreAssetWithOperationTracker:destination:logger:cache:device:error:]", "MBCKFile.m", 1369, "device");
  }

  account = [trackerCopy account];
  if (!account)
  {
    __assert_rtn("[MBCKFile restoreAssetWithOperationTracker:destination:logger:cache:device:error:]", "MBCKFile.m", 1371, "serviceAccount");
  }

  fileSystemRepresentation = [(MBCKFile *)destinationCopy fileSystemRepresentation];
  relativePath = [(MBCKFile *)self relativePath];
  v21 = [relativePath length];

  if (!v21)
  {
LABEL_18:
    memset(&v205, 0, sizeof(v205));
    if (lstat(fileSystemRepresentation, &v205))
    {
      if (*__error() == 63)
      {
        v31 = MBGetDefaultLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = *__error();
          *buf = 138412546;
          *v207 = destinationCopy;
          *&v207[8] = 1024;
          *&v207[10] = v32;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Skipping restore asset, lstat failed at %@: %{errno}d", buf, 0x12u);
          v171 = *__error();
          _MBLog();
        }

        if (error)
        {
          [MBError posixErrorWithCode:107 path:destinationCopy format:@"lstat error"];
          *error = v33 = 0;
          goto LABEL_232;
        }

        goto LABEL_74;
      }

      if (*__error() == 2)
      {
        v34 = cacheCopy;
LABEL_42:
        v35 = 0;
        goto LABEL_43;
      }

      if (error)
      {
        *error = [MBError posixErrorWithCode:101 path:destinationCopy format:@"lstat error"];
      }

      v38 = MBGetDefaultLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = *__error();
        *buf = 138412546;
        *v207 = destinationCopy;
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
      v34 = cacheCopy;
      v35 = 1;
LABEL_43:
      if ([(MBCKFile *)self isRegularFile]&& [(MBCKFile *)self size])
      {
        v193 = +[NSFileManager defaultManager];
        restoreState = [(MBCKFile *)self restoreState];
        signature = [(MBCKFile *)self signature];
        cacheCopy = v34;
        v45 = [v34 fileAssetMetadataForSignature:signature volumeType:{-[MBCKFile volumeType](self, "volumeType")}];

        stashedAssetPath = [v45 stashedAssetPath];
        if (stashedAssetPath)
        {
          [restoreState setStashedAssetPath:stashedAssetPath];
        }

        if ([restoreState stashedAssetDecrypted])
        {
          stashedAssetIsDecrypted = 1;
        }

        else
        {
          stashedAssetIsDecrypted = [v45 stashedAssetIsDecrypted];
        }

        [restoreState setStashedAssetDecrypted:stashedAssetIsDecrypted];
        v191 = v45;
        decodedAssetPath = [v45 decodedAssetPath];
        if (decodedAssetPath)
        {
          [restoreState setDecodedAssetPath:decodedAssetPath];
        }

        v189 = decodedAssetPath;
        decodedAssetPath2 = [restoreState decodedAssetPath];
        v190 = stashedAssetPath;
        if (decodedAssetPath2)
        {
          v62 = decodedAssetPath2;
          if ([v193 fileExistsAtPath:decodedAssetPath2])
          {
            v188 = restoreState;
            [(MBCKFile *)self hasContentEncodingMethod];
            v63 = 0;
LABEL_70:
            path2 = v62;
            v185 = path2;
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
            permissions2 = v62;
            selfCopy8 = self;
            _MBLog();
          }
        }

        v75 = [(MBCKFile *)self hasContentEncodingMethod:permissions2];
        stashedAssetPath2 = [restoreState stashedAssetPath];
        path2 = stashedAssetPath2;
        if (v75)
        {
          v77 = v191;
          v188 = restoreState;
          if (stashedAssetPath2)
          {
            if ([v193 fileExistsAtPath:stashedAssetPath2])
            {
              v78 = path2;
              v186 = cacheCopy;
              v63 = 0;
              goto LABEL_145;
            }

            v100 = MBGetDefaultLog();
            if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *v207 = path2;
              *&v207[8] = 2112;
              *&v207[10] = self;
              _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_ERROR, "Missing stashed asset at %@ for %@", buf, 0x16u);
              permissions2 = path2;
              selfCopy8 = self;
              _MBLog();
            }

            [restoreState setStashedAssetPath:0];
            [restoreState setStashedAssetDecrypted:0];
          }

          fileURL = [self->_changeType fileURL];
          path = [fileURL path];

          if (path && ([v193 fileExistsAtPath:path] & 1) != 0)
          {
            v203 = 0;
            v103 = [(MBCKFile *)self stashAssetsToTemporaryDirectoryWithAccount:account operationTracker:trackerCopy cache:cacheCopy device:v18 error:&v203];
            v63 = v203;
            if (v103)
            {
              v186 = cacheCopy;
              restoreState2 = [(MBCKFile *)self restoreState];
              [restoreState2 stashedAssetPath];
              v106 = v105 = path;

              v78 = v106;
              if (!v106)
              {
                __assert_rtn("[MBCKFile restoreAssetWithOperationTracker:destination:logger:cache:device:error:]", "MBCKFile.m", 1486, "stashedAssetPath");
              }

LABEL_145:
              v107 = v63;
              persona = [account persona];
              domain = [(MBCKFile *)self domain];
              v110 = [persona restorePrefetchDirectoryForDomain:domain];

              v202 = v107;
              v184 = v110;
              LOBYTE(persona) = [(MBCKFile *)self decodeWithFileAtPath:v78 destinationDirectory:v110 error:&v202];
              v63 = v202;

              if (persona)
              {
                v111 = loggerCopy;
                decodedAssetPath3 = [v188 decodedAssetPath];
                if (!decodedAssetPath3)
                {
                  __assert_rtn("[MBCKFile restoreAssetWithOperationTracker:destination:logger:cache:device:error:]", "MBCKFile.m", 1495, "decodedAssetPath");
                }

                v62 = decodedAssetPath3;
                v113 = MBGetDefaultLog();
                if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412802;
                  *v207 = v78;
                  *&v207[8] = 2112;
                  *&v207[10] = v62;
                  v208 = 2112;
                  selfCopy5 = self;
                  _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "Decoded stashed asset from %@ to %@ for %@", buf, 0x20u);
                  selfCopy8 = v62;
                  selfCopy4 = self;
                  permissions2 = v78;
                  _MBLog();
                }

                signature2 = [(MBCKFile *)self signature];
                v115 = [v186 updateDecodedAssetPath:v62 forSignature:signature2 volumeType:{-[MBCKFile volumeType](self, "volumeType")}];

                if (!v115)
                {

                  loggerCopy = v111;
                  cacheCopy = v186;
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

                if (error)
                {
                  v117 = v115;
                  *error = v115;
                }

                path = v62;
                loggerCopy = v111;
                cacheCopy = v186;
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
                  selfCopy5 = v63;
                  _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_ERROR, "Failed to decode the stashed asset at %@ for %@: %@", buf, 0x20u);
                  _MBLog();
                }

                cacheCopy = v186;
                if (error)
                {
                  v136 = v63;
                  *error = v63;
                }

                v77 = v191;
                path = v78;
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

            if (error)
            {
              v139 = v63;
              *error = v63;
            }
          }

          else
          {
            v119 = MBGetDefaultLog();
            if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *v207 = path;
              *&v207[8] = 2112;
              *&v207[10] = self;
              _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_ERROR, "Missing content asset at %@ for %@", buf, 0x16u);
              _MBLog();
            }

            if (error)
            {
              [(MBCKFile *)self absolutePath];
              v121 = v120 = path;
              *error = [MBError errorWithCode:205 path:v121 format:@"Missing content asset"];

              path = v120;
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
        if (stashedAssetPath2)
        {
          if ([v193 fileExistsAtPath:stashedAssetPath2])
          {
LABEL_107:
            v188 = restoreState;
            v185 = 0;
            v63 = 0;
LABEL_108:
            v187 = loggerCopy;
            if (_os_feature_enabled_impl())
            {
              v182 = path2;
              volumeType = [(MBCKFile *)self volumeType];
              signature3 = [(MBCKFile *)self signature];
              v201 = v63;
              v83 = [cacheCopy retainCountForSignature:signature3 volumeType:volumeType error:&v201];
              v179 = v201;

              v181 = v83;
              if (v179)
              {
                v85 = MBGetDefaultLog();
                restoreState = v188;
                path2 = v182;
                if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  *v207 = self;
                  *&v207[8] = 2112;
                  *&v207[10] = v179;
                  _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_ERROR, "Failed to fetch retain count for %@: %@", buf, 0x16u);
                  _MBLog();
                }

                errorCopy3 = error;
                v65 = v191;
                if (!error)
                {
                  goto LABEL_114;
                }

LABEL_113:
                v87 = v179;
                *errorCopy3 = v179;
LABEL_114:

                v88 = v185;
LABEL_221:
                v137 = v193;
LABEL_222:

                v33 = 0;
LABEL_231:
                loggerCopy = v187;
                goto LABEL_232;
              }

              unsignedLongLongValue = [v83 unsignedLongLongValue];
              if (!unsignedLongLongValue)
              {
                v122 = MBGetDefaultLog();
                if (os_log_type_enabled(v122, OS_LOG_TYPE_FAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_FAULT, "retainCount == 0, clones may not be preserved", buf, 2u);
                  _MBLog();
                }
              }

              if ([(MBCKFile *)self sourceDeviceInode:permissions2])
              {
                sourceDeviceInode = [(MBCKFile *)self sourceDeviceInode];
                signature4 = [(MBCKFile *)self signature];
                v200 = 0;
                v125 = [cacheCopy countRestoreFilesWithSourceDeviceInode:sourceDeviceInode signature:signature4 volumeType:volumeType error:&v200];
                v126 = v200;

                path2 = v182;
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

                    lastPathComponent2 = [NSNumber numberWithUnsignedLongLong:[(MBCKFile *)self sourceDeviceInode]];
                    v176 = v126;
                    _MBLog();

                    path2 = v182;
                  }
                }

                v129 = cacheCopy;

                v130 = v125 > 1;
              }

              else
              {
                v129 = cacheCopy;
                v130 = 0;
                path2 = v182;
              }

              fileSystemRepresentation2 = [(MBCKFile *)path2 fileSystemRepresentation];
              if (!fileSystemRepresentation2)
              {
                __assert_rtn("[MBCKFile restoreAssetWithOperationTracker:destination:logger:cache:device:error:]", "MBCKFile.m", 1564, "sourcePathFSR");
              }

              v141 = fileSystemRepresentation2;
              fileSystemRepresentation3 = [(MBCKFile *)destinationCopy fileSystemRepresentation];
              if (!fileSystemRepresentation3)
              {
                __assert_rtn("[MBCKFile restoreAssetWithOperationTracker:destination:logger:cache:device:error:]", "MBCKFile.m", 1566, "destinationFSR");
              }

              v143 = fileSystemRepresentation3;
              v144 = MBGetDefaultLog();
              v145 = os_log_type_enabled(v144, OS_LOG_TYPE_INFO);
              if (v130)
              {
                if (v145)
                {
                  fileID = [(MBCKFile *)self fileID];
                  *buf = 138413058;
                  *v207 = v182;
                  *&v207[8] = 2112;
                  *&v207[10] = destinationCopy;
                  v208 = 2112;
                  selfCopy5 = fileID;
                  v210 = 2048;
                  v211 = unsignedLongLongValue;
                  _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_INFO, "Restoring hard link from %@ to %@ (%@) rc:%lld", buf, 0x2Au);

                  selfCopy6 = [(MBCKFile *)self fileID];
                  v179 = unsignedLongLongValue;
                  lastPathComponent2 = v182;
                  v176 = destinationCopy;
                  _MBLog();
                }

                cacheCopy = v129;
                if (!link(v141, v143))
                {
                  v179 = 0;
                  restoreState = v188;
                  v65 = v191;
                  path2 = v182;
                  goto LABEL_225;
                }

                v147 = *__error();
                v148 = MBGetDefaultLog();
                v149 = v148;
                path2 = v182;
                if (v147 == 18)
                {
                  restoreState = v188;
                  if (os_log_type_enabled(v148, OS_LOG_TYPE_FAULT))
                  {
                    lastPathComponent = [(MBCKFile *)v182 lastPathComponent];
                    *buf = 138412546;
                    *v207 = lastPathComponent;
                    *&v207[8] = 2112;
                    *&v207[10] = destinationCopy;
                    _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_FAULT, "Could not restore hard link (%@) across volumes, copying to %@", buf, 0x16u);

                    lastPathComponent2 = [(MBCKFile *)v182 lastPathComponent];
                    v176 = destinationCopy;
                    _MBLog();

                    path2 = v182;
                  }

                  v151 = [MBFileOperation crossVolumeCopyFrom:v141 toDestination:v143 shouldDeleteSource:0 error:error];
                  v179 = 0;
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
                  *&v207[10] = destinationCopy;
                  v208 = 1024;
                  LODWORD(selfCopy5) = v147;
                  _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_ERROR, "Failed to hardlink file from %@ to %@: %{errno}d", buf, 0x1Cu);
                  v176 = destinationCopy;
                  selfCopy6 = v147;
                  lastPathComponent2 = v182;
                  _MBLog();
                }

                v65 = v191;
                if (v147 == 17)
                {
                  domainName = [(MBCKFile *)self domainName];
                  v160 = [domainName isEqualToString:@"AppDomainGroup-group.com.apple.FileProvider.LocalStorage"];

                  if (v160)
                  {
                    v199 = 0;
                    path2 = v182;
                    v161 = [MBRestorableOperation move:self fromSource:v182 destination:destinationCopy destinationSize:v205.st_size conflictResolution:2 error:&v199];
                    v179 = v199;

                    restoreState = v188;
                    if (!v161)
                    {
LABEL_244:
                      errorCopy3 = error;
                      if (!error)
                      {
                        goto LABEL_114;
                      }

                      goto LABEL_113;
                    }

LABEL_225:
                    [v187 logLinkForRestorable:self state:5 source:path2 target:{destinationCopy, lastPathComponent2, v176, selfCopy6, v179}];
LABEL_228:

                    goto LABEL_229;
                  }
                }

                path2 = v182;
                v179 = [MBError errorWithErrno:v147 format:@"Failed hardlinking from %@ to %@", v182, destinationCopy, selfCopy6, v179];
                v165 = MBGetDefaultLog();
                if (!os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
                {
LABEL_251:

                  errorCopy3 = error;
                  restoreState = v188;
                  if (!error)
                  {
                    goto LABEL_114;
                  }

                  goto LABEL_113;
                }

                *buf = 138412802;
                *v207 = v182;
                *&v207[8] = 2112;
                *&v207[10] = destinationCopy;
                v208 = 2112;
                selfCopy5 = v179;
                _os_log_impl(&_mh_execute_header, v165, OS_LOG_TYPE_ERROR, "link error from %@ to %@: %@", buf, 0x20u);
LABEL_250:
                _MBLog();
                goto LABEL_251;
              }

              if (v145)
              {
                *buf = 138413058;
                *v207 = path2;
                *&v207[8] = 2112;
                *&v207[10] = destinationCopy;
                v208 = 2112;
                selfCopy5 = self;
                v210 = 2048;
                v211 = unsignedLongLongValue;
                _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_INFO, "Cloning from %@ to %@ (%@) rc:%lld", buf, 0x2Au);
                selfCopy6 = self;
                v179 = unsignedLongLongValue;
                lastPathComponent2 = path2;
                v176 = destinationCopy;
                _MBLog();
              }

              cacheCopy = v129;
              if (clonefile(v141, v143, 0))
              {
                v152 = *__error();
                v153 = MBGetDefaultLog();
                v154 = v153;
                if (v152 == 18)
                {
                  restoreState = v188;
                  if (os_log_type_enabled(v153, OS_LOG_TYPE_INFO))
                  {
                    lastPathComponent3 = [(MBCKFile *)path2 lastPathComponent];
                    *buf = 138412546;
                    *v207 = lastPathComponent3;
                    *&v207[8] = 2112;
                    *&v207[10] = destinationCopy;
                    _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_INFO, "Could not restore clone (%@) across volumes, copying to %@", buf, 0x16u);

                    lastPathComponent2 = [(MBCKFile *)v182 lastPathComponent];
                    v176 = destinationCopy;
                    _MBLog();

                    path2 = v182;
                  }

                  v156 = [MBFileOperation crossVolumeCopyFrom:v141 toDestination:v143 shouldDeleteSource:0 error:error];
                  v179 = 0;
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
                    *v207 = path2;
                    *&v207[8] = 2112;
                    *&v207[10] = destinationCopy;
                    v208 = 1024;
                    LODWORD(selfCopy5) = v152;
                    _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_ERROR, "Failed to clone file from %@ to %@: %{errno}d", buf, 0x1Cu);
                    v176 = destinationCopy;
                    selfCopy6 = v152;
                    lastPathComponent2 = path2;
                    _MBLog();
                  }

                  v65 = v191;
                  if (v152 != 17 || (-[MBCKFile domainName](self, "domainName"), v162 = objc_claimAutoreleasedReturnValue(), v163 = [v162 isEqualToString:@"AppDomainGroup-group.com.apple.FileProvider.LocalStorage"], v162, !v163))
                  {
                    path2 = v182;
                    v179 = [MBError errorWithErrno:v152 format:@"Failed cloning from %@ to %@", v182, destinationCopy, selfCopy6, v179];
                    v165 = MBGetDefaultLog();
                    if (!os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_251;
                    }

                    *buf = 138412802;
                    *v207 = v182;
                    *&v207[8] = 2112;
                    *&v207[10] = destinationCopy;
                    v208 = 2112;
                    selfCopy5 = v179;
                    _os_log_impl(&_mh_execute_header, v165, OS_LOG_TYPE_ERROR, "clone error from %@ to %@: %@", buf, 0x20u);
                    goto LABEL_250;
                  }

                  v198 = 0;
                  path2 = v182;
                  v164 = [MBRestorableOperation move:self fromSource:v182 destination:destinationCopy destinationSize:v205.st_size conflictResolution:1 error:&v198];
                  v179 = v198;

                  restoreState = v188;
                  if (!v164)
                  {
                    goto LABEL_244;
                  }
                }
              }

              else
              {
                v179 = 0;
                restoreState = v188;
                v65 = v191;
              }

              [v187 logCloneForRestorable:self state:5 source:path2 target:{destinationCopy, lastPathComponent2, v176, selfCopy6, v179}];
              goto LABEL_228;
            }

            v89 = MBGetDefaultLog();
            if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              *v207 = path2;
              *&v207[8] = 2112;
              *&v207[10] = destinationCopy;
              _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEBUG, "Moving downloaded file from %@ to %@", buf, 0x16u);
              permissions2 = path2;
              selfCopy8 = destinationCopy;
              _MBLog();
            }

            v197 = v63;
            v90 = [v193 moveItemAtPath:path2 toPath:destinationCopy error:&v197];
            v179 = v197;

            if (v90)
            {
              restoreState = v188;
LABEL_229:
              v99 = v190;
              goto LABEL_230;
            }

            v92 = MBGetDefaultLog();
            if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543874;
              *v207 = path2;
              *&v207[8] = 2114;
              *&v207[10] = destinationCopy;
              v208 = 2114;
              selfCopy5 = v179;
              _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_ERROR, "Failed to move file into place from %{public}@ to %{public}@: %{public}@", buf, 0x20u);
              selfCopy8 = destinationCopy;
              selfCopy4 = v179;
              permissions2 = path2;
              _MBLog();
            }

            domainName2 = [(MBCKFile *)self domainName];
            if ([domainName2 isEqualToString:@"AppDomainGroup-group.com.apple.FileProvider.LocalStorage"])
            {
              v183 = path2;
              domain2 = [(MBCKFile *)v179 domain];
              if ([domain2 isEqualToString:NSCocoaErrorDomain])
              {
                code = [(MBCKFile *)v179 code];

                v96 = code == 516;
                v65 = v191;
                path2 = v183;
                if (v96)
                {
                  v196 = v179;
                  v97 = [MBRestorableOperation move:self fromSource:v183 destination:destinationCopy destinationSize:v205.st_size conflictResolution:3 error:&v196];
                  v98 = v196;

                  if (!v97)
                  {
                    v88 = v185;
                    if (error)
                    {
                      v166 = v98;
                      *error = v98;
                    }

                    v179 = v98;
                    v137 = v193;
                    restoreState = v188;
                    path2 = v183;
                    goto LABEL_222;
                  }

                  v179 = v98;
                  restoreState = v188;
                  v99 = v190;
                  path2 = v183;
LABEL_230:
                  [restoreState setStashedAssetPath:{0, permissions2, selfCopy8, selfCopy4}];

                  v33 = 1;
                  goto LABEL_231;
                }

LABEL_219:
                restoreState = v188;
                [v188 setStashedAssetPath:{0, permissions2, selfCopy8, selfCopy4}];
                [v188 setStashedAssetDecrypted:0];
                v88 = v185;
                if (error)
                {
                  v157 = v179;
                  *error = v179;
                }

                goto LABEL_221;
              }

              path2 = v183;
            }

            goto LABEL_219;
          }

          v79 = MBGetDefaultLog();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *v207 = path2;
            *&v207[8] = 2112;
            *&v207[10] = self;
            _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "Missing stashed asset at %@ for %@", buf, 0x16u);
            permissions2 = path2;
            selfCopy8 = self;
            _MBLog();
          }

          [restoreState setStashedAssetPath:0];
          [restoreState setStashedAssetDecrypted:0];
        }

        fileURL2 = [self->_changeType fileURL];
        path2 = [fileURL2 path];

        if (path2)
        {
          if ([v193 fileExistsAtPath:path2])
          {
            goto LABEL_107;
          }

          v131 = MBGetDefaultLog();
          if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *v207 = path2;
            *&v207[8] = 2112;
            *&v207[10] = self;
            _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_ERROR, "Missing content asset at %@ for %@", buf, 0x16u);
            permissions2 = path2;
            selfCopy8 = self;
            _MBLog();
          }
        }

        v187 = loggerCopy;
        v132 = [(MBCKFile *)self absolutePath:permissions2];
        v179 = [MBError errorWithCode:205 path:v132 format:@"Missing content asset"];

        v133 = MBGetDefaultLog();
        if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *v207 = self;
          *&v207[8] = 2112;
          *&v207[10] = v179;
          _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_ERROR, "Missing content asset on %@: %@", buf, 0x16u);
          _MBLog();
        }

        if (error)
        {
          v134 = v179;
          v88 = 0;
          path2 = 0;
          *error = v179;
        }

        else
        {
          v88 = 0;
          path2 = 0;
        }

        v137 = v193;
        v65 = v191;
        goto LABEL_222;
      }

      if ([(MBCKFile *)self isRegularFile]&& ![(MBCKFile *)self size])
      {
        v67 = open_dprotected_np(fileSystemRepresentation, 1793, 4, 0, [(MBCKFile *)self permissions]);
        if (v67 < 0)
        {
          cacheCopy = v34;
          errorCopy6 = error;
          if (!error)
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
            cacheCopy = v34;
            if (v49)
            {
              permissions = [(MBCKFile *)self permissions];
              *buf = 67109378;
              *v207 = permissions;
              *&v207[4] = 2112;
              *&v207[6] = destinationCopy;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "Directory already exists, restoring permissions 0%o at %@", buf, 0x12u);
              permissions2 = [(MBCKFile *)self permissions];
              selfCopy8 = destinationCopy;
              _MBLog();
            }

            if (lchmod(fileSystemRepresentation, [(MBCKFile *)self permissions]))
            {
              errorCopy6 = error;
              if (!error)
              {
                goto LABEL_196;
              }

              v52 = @"lchmod error";
LABEL_129:
              [MBError posixErrorWithCode:102 path:destinationCopy format:v52, permissions2, selfCopy8];
              *errorCopy6 = v33 = 0;
              goto LABEL_232;
            }
          }

          else
          {
            cacheCopy = v34;
            if (v49)
            {
              permissions3 = [(MBCKFile *)self permissions];
              *buf = 138412546;
              *v207 = destinationCopy;
              *&v207[8] = 1024;
              *&v207[10] = permissions3;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "Making directory at %@ (0%o)", buf, 0x12u);
              permissions2 = destinationCopy;
              selfCopy8 = [(MBCKFile *)self permissions];
              _MBLog();
            }

            if (mkdir(fileSystemRepresentation, [(MBCKFile *)self permissions]))
            {
              errorCopy6 = error;
              if (!error)
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
          linkTarget = [(MBCKFile *)self linkTarget];

          v54 = MBGetDefaultLog();
          v55 = v54;
          cacheCopy = v34;
          if (linkTarget)
          {
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
            {
              linkTarget2 = [(MBCKFile *)self linkTarget];
              *buf = 138412546;
              *v207 = destinationCopy;
              *&v207[8] = 2112;
              *&v207[10] = linkTarget2;
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEBUG, "Creating symbolic link at %@ to target %@", buf, 0x16u);

              linkTarget3 = [(MBCKFile *)self linkTarget];
              _MBLog();
            }

            linkTarget4 = [(MBCKFile *)self linkTarget];
            if ([linkTarget4 length])
            {
              linkTarget5 = [(MBCKFile *)self linkTarget];
              fileSystemRepresentation4 = [linkTarget5 fileSystemRepresentation];
            }

            else
            {
              fileSystemRepresentation4 = "";
            }

            if (symlink(fileSystemRepresentation4, fileSystemRepresentation))
            {
              if (!error)
              {
                goto LABEL_196;
              }

              [MBError posixErrorWithCode:102 path:destinationCopy format:@"symlink error"];
              *error = v33 = 0;
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

          if (error)
          {
            absolutePath = [(MBCKFile *)self absolutePath];
            *error = [MBError errorWithCode:205 path:absolutePath format:@"Symbolic link missing link target"];
          }

LABEL_74:
          v33 = 0;
          goto LABEL_232;
        }
      }

      v33 = 1;
      cacheCopy = v34;
      goto LABEL_232;
    }

    domainName3 = [(MBCKFile *)self domainName];
    if ([domainName3 isEqualToString:@"AppDomainGroup-group.com.apple.FileProvider.LocalStorage"])
    {
      v37 = _os_feature_enabled_impl();

      if (v37)
      {
        v34 = cacheCopy;
        v38 = MBGetDefaultLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v207 = destinationCopy;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Not removing existing On My iPhone file at %@", buf, 0xCu);
          v167 = destinationCopy;
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
      *v207 = destinationCopy;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Removing existing item at %@", buf, 0xCu);
      v167 = destinationCopy;
      _MBLog();
    }

    v41 = +[NSFileManager defaultManager];
    v204 = 0;
    v42 = [v41 removeItemAtPath:destinationCopy error:&v204];
    v38 = v204;

    if ((v42 & 1) == 0)
    {
      if (error)
      {
        *error = [MBError errorWithCode:102 error:v38 path:destinationCopy format:@"Failed to remove existing file"];
      }

      goto LABEL_73;
    }

    v34 = cacheCopy;
LABEL_41:

    goto LABEL_42;
  }

  relativePath2 = [(MBCKFile *)self relativePath];
  stringByDeletingLastPathComponent = [relativePath2 stringByDeletingLastPathComponent];

  relativePath3 = [(MBCKFile *)self relativePath];
  v25 = [(MBCKFile *)destinationCopy rangeOfString:relativePath3];

  if (v25 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_17:

    goto LABEL_18;
  }

  v26 = destinationCopy;
  v27 = loggerCopy;
  v192 = v26;
  v28 = [(MBCKFile *)v26 substringToIndex:v25];
  if (![stringByDeletingLastPathComponent length])
  {
    v23StringByDeletingLastPathComponent = stringByDeletingLastPathComponent;
LABEL_16:

    stringByDeletingLastPathComponent = v23StringByDeletingLastPathComponent;
    loggerCopy = v27;
    destinationCopy = v192;
    goto LABEL_17;
  }

  while (1)
  {
    v29 = [v28 stringByAppendingPathComponent:stringByDeletingLastPathComponent];
    memset(&v205, 0, sizeof(v205));
    if (!lstat([v29 fileSystemRepresentation], &v205))
    {
      if ((~v205.st_mode & 0xA000) == 0)
      {
        loggerCopy = v27;
        errorCopy8 = error;
        destinationCopy = v192;
        if (!error)
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
      if (error)
      {
        *error = [MBError posixErrorWithPath:v29 format:@"lstat error"];
      }

      v72 = MBGetDefaultLog();
      loggerCopy = v27;
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

      destinationCopy = v192;
      goto LABEL_122;
    }

LABEL_13:
    v23StringByDeletingLastPathComponent = [stringByDeletingLastPathComponent stringByDeletingLastPathComponent];

    stringByDeletingLastPathComponent = v23StringByDeletingLastPathComponent;
    if (![v23StringByDeletingLastPathComponent length])
    {
      goto LABEL_16;
    }
  }

  v68 = MBGetDefaultLog();
  loggerCopy = v27;
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

  errorCopy8 = error;
  destinationCopy = v192;
  if (error)
  {
    v71 = [MBError posixErrorWithCode:107 path:v192 format:@"lstat error"];
LABEL_121:
    *errorCopy8 = v71;
  }

LABEL_122:

LABEL_196:
  v33 = 0;
LABEL_232:

  return v33;
}

- (BOOL)_decryptWithOperationTracker:(id)tracker destination:(id)destination device:(id)device error:(id *)error
{
  trackerCopy = tracker;
  destinationCopy = destination;
  deviceCopy = device;
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

    if (!error)
    {
      __assert_rtn("[MBCKFile _decryptWithOperationTracker:destination:device:error:]", "MBCKFile.m", 1711, "error");
    }

    if (!trackerCopy)
    {
      __assert_rtn("[MBCKFile _decryptWithOperationTracker:destination:device:error:]", "MBCKFile.m", 1712, "tracker");
    }

    if (!deviceCopy)
    {
      __assert_rtn("[MBCKFile _decryptWithOperationTracker:destination:device:error:]", "MBCKFile.m", 1713, "device");
    }

    account = [trackerCopy account];
    v14 = account;
    if (!account)
    {
      __assert_rtn("[MBCKFile _decryptWithOperationTracker:destination:device:error:]", "MBCKFile.m", 1715, "account");
    }

    persona = [account persona];
    accountType = [persona accountType];

    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      buf.st_dev = 138412290;
      *&buf.st_mode = self;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Decrypting file %@", &buf, 0xCu);
      selfCopy = self;
      _MBLog();
    }

    keybagManager = [deviceCopy keybagManager];
    encryptionKey = [(MBCKFile *)self encryptionKey];
    v18 = encryptionKey == 0;

    if (!v18)
    {
      if (!keybagManager)
      {
        __assert_rtn("[MBCKFile _decryptWithOperationTracker:destination:device:error:]", "MBCKFile.m", 1726, "keybagManager");
      }

      keybagUUIDString = [(MBCKFile *)self keybagUUIDString];
      v20 = [keybagManager keybagWithUUID:keybagUUIDString];

      if (v20)
      {
        absolutePath10 = 0;
LABEL_15:
        v22 = [(MBCKFile *)self encryptionKey:selfCopy];
        v23 = v22 == 0;

        v24 = MBGetDefaultLog();
        v25 = v24;
        if (v23)
        {
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            absolutePath = [(MBCKFile *)self absolutePath];
            buf.st_dev = 138412546;
            *&buf.st_mode = destinationCopy;
            WORD2(buf.st_ino) = 2112;
            *(&buf.st_ino + 6) = absolutePath;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to decrypt file at %@(%@) without an encryption key", &buf, 0x16u);

            absolutePath2 = [(MBCKFile *)self absolutePath];
            _MBLog();
          }

          absolutePath3 = [(MBCKFile *)self absolutePath];
          *error = [MBError errorWithCode:205 path:absolutePath3 format:@"No encryption key found for protected file"];

          v29 = 0;
          goto LABEL_56;
        }

        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          keybagUUIDString2 = [v20 keybagUUIDString];
          buf.st_dev = 138412546;
          *&buf.st_mode = destinationCopy;
          WORD2(buf.st_ino) = 2112;
          *(&buf.st_ino + 6) = keybagUUIDString2;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Decrypting file in place at %@ with keybag %@", &buf, 0x16u);

          keybagUUIDString3 = [v20 keybagUUIDString];
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
        v76 = absolutePath10;
        v70[0] = _NSConcreteStackBlock;
        v70[1] = 3221225472;
        v70[2] = sub_1000D8E28;
        v70[3] = &unk_1003BE2B8;
        v74 = &v83;
        v66 = destinationCopy;
        v71 = v66;
        selfCopy2 = self;
        v73 = deviceCopy;
        v75 = &v77;
        v27 = [MBCKKeyBag unlockKeybag:v20 accountType:accountType error:&v76 block:v70];
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
                absolutePath4 = [(MBCKFile *)self absolutePath];
                fileID = [(MBCKFile *)self fileID];
                v50 = [(MBCKFile *)self size];
                v51 = v78[5];
                *v89 = 138413570;
                v90 = v66;
                v91 = 2112;
                v92 = absolutePath4;
                v93 = 2112;
                v94 = fileID;
                v95 = 2048;
                v96 = v50;
                v97 = 2048;
                v98 = st_size;
                v99 = 2112;
                v100 = v51;
                _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "Failed to decrypt file at %@(%@), fileID:%@, size:%llu, sizeOnDisk:%llu: %@", v89, 0x3Eu);

                v48 = v63;
              }

              absolutePath5 = [(MBCKFile *)self absolutePath];
              fileID2 = [(MBCKFile *)self fileID];
              [(MBCKFile *)self size];
              v62 = v78[5];
              _MBLog();

              v47 = v65;
            }

            v29 = 0;
            *error = v78[5];
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
              absolutePath6 = [(MBCKFile *)self absolutePath];
              buf.st_dev = 138412802;
              *&buf.st_mode = v66;
              WORD2(buf.st_ino) = 2112;
              *(&buf.st_ino + 6) = absolutePath6;
              HIWORD(buf.st_gid) = 2112;
              *&buf.st_rdev = v28;
              v68 = absolutePath6;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Failed to decrypt file at %@(%@): %@", &buf, 0x20u);
            }

            absolutePath7 = [(MBCKFile *)self absolutePath];
            _MBLog();
          }

          v39 = v28;
          v29 = 0;
          *error = v28;
        }

        _Block_object_dispose(&v77, 8);
        _Block_object_dispose(&v83, 8);

LABEL_55:
        absolutePath10 = v28;
LABEL_56:

LABEL_57:
        goto LABEL_58;
      }

      keybagUUIDData = [(MBCKFile *)self keybagUUIDData];
      v88 = 0;
      v20 = [MBCKKeyBag keybagWithDevice:deviceCopy keybagUUID:keybagUUIDData operationTracker:trackerCopy error:&v88];
      v28 = v88;

      if (v20)
      {
        [keybagManager addKeybag:v20];
        v87 = v28;
        v31 = [deviceCopy saveWithOperationTracker:trackerCopy error:&v87];
        absolutePath10 = v87;

        if ((v31 & 1) == 0)
        {
          v32 = MBGetDefaultLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            keybagUUIDString4 = [v20 keybagUUIDString];
            buf.st_dev = 138543618;
            *&buf.st_mode = keybagUUIDString4;
            WORD2(buf.st_ino) = 2112;
            *(&buf.st_ino + 6) = absolutePath10;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Failed to save device record with recovered keybag %{public}@: %@", &buf, 0x16u);

            selfCopy = [v20 keybagUUIDString];
            v57 = absolutePath10;
            _MBLog();
          }
        }

        goto LABEL_15;
      }

      v40 = MBGetDefaultLog();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        keybagUUIDString5 = [(MBCKFile *)self keybagUUIDString];
        buf.st_dev = 138543618;
        *&buf.st_mode = keybagUUIDString5;
        WORD2(buf.st_ino) = 2112;
        *(&buf.st_ino + 6) = v28;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "No keybag found for %{public}@: %@", &buf, 0x16u);

        keybagUUIDString6 = [(MBCKFile *)self keybagUUIDString];
        _MBLog();
      }

      if (v28)
      {
        v42 = v28;
        v29 = 0;
        *error = v28;
        goto LABEL_55;
      }
    }

    v43 = MBGetDefaultLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      absolutePath8 = [(MBCKFile *)self absolutePath];
      buf.st_dev = 138412546;
      *&buf.st_mode = destinationCopy;
      WORD2(buf.st_ino) = 2112;
      *(&buf.st_ino + 6) = absolutePath8;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Failed to decrypt file at %@(%@) without a keybag", &buf, 0x16u);

      absolutePath9 = [(MBCKFile *)self absolutePath];
      _MBLog();
    }

    absolutePath10 = [(MBCKFile *)self absolutePath];
    [MBError errorWithCode:205 path:absolutePath10 format:@"No keybag found for protected file"];
    *error = v29 = 0;
    goto LABEL_56;
  }

  v29 = 1;
LABEL_58:

  return v29;
}

- (BOOL)restoreExtendedAttributesToDestination:(id)destination withError:(id *)error
{
  destinationCopy = destination;
  if (![(MBCKFile *)self isSymbolicLink])
  {
    extendedAttributes = [(MBCKFile *)self extendedAttributes];
    if (extendedAttributes)
    {
      restoreState = [(MBCKFile *)self restoreState];
      v8 = MBGetDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        contentAsset = self->_contentAsset;
        stashedResourcePath = [restoreState stashedResourcePath];
        *buf = 138412802;
        selfCopy2 = self;
        v20 = 2048;
        v21 = contentAsset;
        v22 = 2112;
        v23 = stashedResourcePath;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Restoring extended attributes for %@, resourceAsset:%p, stashedResourcePath:%@", buf, 0x20u);

        v11 = self->_contentAsset;
        stashedResourcePath2 = [restoreState stashedResourcePath];
        _MBLog();
      }

      v17 = 0;
      v12 = +[MBExtendedAttributes setAttributes:forPathFSR:error:](MBExtendedAttributes, "setAttributes:forPathFSR:error:", extendedAttributes, [destinationCopy fileSystemRepresentation], &v17);
      v13 = v17;
      if ((v12 & 1) == 0)
      {
        v14 = MBGetDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          selfCopy2 = self;
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
  restoreState = [(MBCKFile *)self restoreState];
  contentAsset = self->_contentAsset;
  if (!contentAsset)
  {
    stashedResourcePath = [restoreState stashedResourcePath];

    if (!stashedResourcePath)
    {
      goto LABEL_8;
    }

    contentAsset = self->_contentAsset;
  }

  fileURL = [(CKAsset *)contentAsset fileURL];
  stashedResourcePath2 = [restoreState stashedResourcePath];
  if (stashedResourcePath2)
  {
    v8 = stashedResourcePath2;
    v9 = +[NSFileManager defaultManager];
    stashedResourcePath3 = [restoreState stashedResourcePath];
    v11 = [v9 fileExistsAtPath:stashedResourcePath3];

    if (v11)
    {
      v12 = [NSURL alloc];
      stashedResourcePath4 = [restoreState stashedResourcePath];
      v14 = [v12 initFileURLWithPath:stashedResourcePath4];

      fileURL = v14;
    }
  }

  filePathURL = [fileURL filePathURL];
  stashedResourcePath = [NSDictionary dictionaryWithContentsOfURL:filePathURL];

LABEL_8:

  return stashedResourcePath;
}

- (void)setAbsolutePath:(id)path
{
  pathCopy = path;
  obj = self;
  objc_sync_enter(obj);
  fileID = obj->_fileID;
  obj->_fileID = pathCopy;

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
  absolutePath = self->_rsrcTemporaryPath;
  if (!absolutePath)
  {
    encodedAssetPath = self->_encodedAssetPath;
    if (!encodedAssetPath || ([(NSString *)encodedAssetPath decodedAssetPath], (absolutePath = objc_claimAutoreleasedReturnValue()) == 0))
    {
      absolutePath = *&self->_contentEncodingMethod;
      if (!absolutePath)
      {
        absolutePath = [(MBCKFile *)self absolutePath];
      }
    }
  }

  return absolutePath;
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

  domain = [(MBCKFile *)self domain];
  relativePathsToBackupIgnoringProtectionClass = [domain relativePathsToBackupIgnoringProtectionClass];

  if ([relativePathsToBackupIgnoringProtectionClass count])
  {
    relativePath = [(MBCKFile *)self relativePath];
    pathComponents = [relativePath pathComponents];

    v7 = [pathComponents count];
    v8 = 1;
    do
    {
      v9 = objc_autoreleasePoolPush();
      v10 = [pathComponents subarrayWithRange:{0, v8 - 1}];
      v11 = [NSString pathWithComponents:v10];

      v12 = [relativePathsToBackupIgnoringProtectionClass containsObject:v11];
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
  domain = [(MBCKFile *)self domain];
  relativePathAggregateDictionaryGroups = [domain relativePathAggregateDictionaryGroups];

  v5 = [relativePathAggregateDictionaryGroups countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(relativePathAggregateDictionaryGroups);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([self->_volumeType hasPrefix:v9])
        {
          domain2 = [(MBCKFile *)self domain];
          relativePathAggregateDictionaryGroups2 = [domain2 relativePathAggregateDictionaryGroups];
          v10 = [relativePathAggregateDictionaryGroups2 objectForKeyedSubscript:v9];

          goto LABEL_11;
        }
      }

      v6 = [relativePathAggregateDictionaryGroups countByEnumeratingWithState:&v14 objects:v18 count:16];
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

  absolutePath = [(MBCKFile *)self absolutePath];
  v10 = 0;
  v2 = [MBExtendedAttributes hasAttributesForPath:absolutePath error:&v10];
  v5 = v10;

  if (!v2 && v5)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      absolutePath2 = [(MBCKFile *)self absolutePath];
      *buf = 138412546;
      v12 = absolutePath2;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to list xattrs at %@: %@", buf, 0x16u);

      absolutePath3 = [(MBCKFile *)self absolutePath];
      _MBLog();
    }
  }

  return v2;
}

- (unint64_t)changeTypeForFullBackup:(BOOL)backup
{
  if ((self->_restoreState & 0x10) == 0)
  {
    cache = [(MBCKModel *)self cache];
    v6 = cache;
    if (backup)
    {
      domainName = [(MBCKFile *)self domainName];
      relativePath = [(MBCKFile *)self relativePath];
      v34 = 0;
      v9 = [v6 uploadedFileInPendingSnapshotWithDomainName:domainName relativePath:relativePath error:&v34];
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
      v9 = [cache lastBackedUpFileForFile:self error:&v35];
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

    modified = [(MBCKFile *)self modified];
    modified2 = [v9 modified];
    v17 = [modified isEqualToDate:modified2];

    if (v17)
    {
      fileType = [(MBCKFile *)self fileType];
      if (fileType == [v9 fileType])
      {
        if (fileType == 2)
        {
          linkTarget = [(MBCKFile *)self linkTarget];
          linkTarget2 = [v9 linkTarget];
          v23 = linkTarget2;
          if (linkTarget | linkTarget2 && (!linkTarget2 || ![linkTarget isEqualToString:linkTarget2]))
          {

            goto LABEL_39;
          }
        }

        else if (!fileType && ![(MBCKFile *)self hasContentEncodingMethod])
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
          groupID = [(MBCKFile *)self groupID];
          if (groupID == [v9 groupID])
          {
            userID = [(MBCKFile *)self userID];
            if (userID == [v9 userID])
            {
              birth = [(MBCKFile *)self birth];
              birth2 = [v9 birth];
              v29 = [birth isEqualToDate:birth2];

              if (v29)
              {
                if (fileType > 1 || (v30 = BYTE6(self->_mbNode.cloneID), v30 == [v9 protectionClass]))
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

- (id)fileIDWithHmacKey:(id)key
{
  keyCopy = key;
  manifest = [(MBCKFile *)self manifest];
  snapshotID = [manifest snapshotID];

  if (!snapshotID)
  {
    __assert_rtn("[MBCKFile fileIDWithHmacKey:]", "MBCKFile.m", 2048, "snapshotID && File is missing snapshot ID");
  }

  v8 = [NSString alloc];
  domainName = [(MBCKFile *)self domainName];
  relativePath = [(MBCKFile *)self relativePath];
  v11 = [v8 initWithFormat:@"%@:%@", domainName, relativePath];

  v12 = [MBDigestSHA1 sha1HmacForString:v11 key:keyCopy];
  v13 = [v12 base64EncodedStringWithOptions:0];

  if (!v13)
  {
    __assert_rtn("[MBCKFile fileIDWithHmacKey:]", "MBCKFile.m", 2052, "pathHMAC && File is missing path hash");
  }

  if ((self->_restoreState & 0x10) != 0)
  {
    v15 = [[NSString alloc] initWithFormat:@"%@:%@:D", snapshotID, v13];
  }

  else
  {
    v14 = [(MBCKFile *)self attributeDataTruncatedHashWithError:0];
    if (!v14)
    {
      v17 = +[NSAssertionHandler currentHandler];
      [v17 handleFailureInMethod:a2 object:self file:@"MBCKFile.m" lineNumber:2059 description:@"File is missing truncated hash"];
    }

    v15 = [[NSString alloc] initWithFormat:@"%@:%@:%llu:%@", snapshotID, v13, -[MBCKFile aggregateSize](self, "aggregateSize"), v14];
  }

  return v15;
}

- (void)setFileID:(id)d
{
  dCopy = d;
  if ([dCopy hasPrefix:@"F:"])
  {
    v4 = [dCopy substringFromIndex:{objc_msgSend(@"F:", "length")}];
  }

  else
  {
    v4 = dCopy;
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

- (unint64_t)sizeFromFileIDWithDefaultValue:(unint64_t)value
{
  fileID = [(MBCKFile *)self fileID];
  v5 = fileID;
  if (fileID)
  {
    v6 = [fileID componentsSeparatedByString:@":"];
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
          value = v11;
        }
      }
    }
  }

  return value;
}

- (id)keybagUUIDData
{
  encryptionKey = [(MBCKFile *)self encryptionKey];

  if (encryptionKey)
  {
    encryptionKey2 = [(MBCKFile *)self encryptionKey];
    v5 = MKBBackupCopyBackupKeyUUID();

    if (v5)
    {
      v6 = MBGetDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        relativePath = [(MBCKFile *)self relativePath];
        *buf = 138412290;
        v11 = relativePath;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "Failed to get UUID from encryption key for file %@", buf, 0xCu);

        relativePath2 = [(MBCKFile *)self relativePath];
        _MBLog();
      }
    }
  }

  return 0;
}

- (NSString)keybagUUIDString
{
  keybagUUIDData = [(MBCKFile *)self keybagUUIDData];
  v3 = [keybagUUIDData base64EncodedStringWithOptions:0];

  return v3;
}

- (void)saveToCacheWithCompletion:(id)completion
{
  completionCopy = completion;
  cache = [(MBCKModel *)self cache];
  manifest = [(MBCKFile *)self manifest];
  v7 = [cache addFile:self toManifest:manifest];

  completionCopy[2](completionCopy, v7);
}

- (id)_getRecordIDString
{
  v3 = [NSString alloc];
  fileID = [(MBCKFile *)self fileID];
  v5 = [v3 initWithFormat:@"%@%@", @"F:", fileID];

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
    relativePath = [(MBCKFile *)self relativePath];
    v27[1] = @"domain";
    v28[0] = relativePath;
    domainName = [(MBCKFile *)self domainName];
    v28[1] = domainName;
    v14 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
    goto LABEL_11;
  }

  v22 = a2;
  v25[0] = @"relativePath";
  relativePath2 = [(MBCKFile *)self relativePath];
  v26[0] = relativePath2;
  v25[1] = @"domain";
  domainName2 = [(MBCKFile *)self domainName];
  v26[1] = domainName2;
  v25[2] = @"birth";
  birth = [(MBCKFile *)self birth];
  v26[2] = birth;
  v25[3] = @"modified";
  modified = [(MBCKFile *)self modified];
  v26[3] = modified;
  v25[4] = @"statusChanged";
  statusChanged = [(MBCKFile *)self statusChanged];
  v26[4] = statusChanged;
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
  relativePath = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:10];

  v14 = [relativePath mutableCopy];
  if ([(MBCKFile *)self isSymbolicLink])
  {
    linkTarget = [(MBCKFile *)self linkTarget];

    if (!linkTarget)
    {
      v21 = +[NSAssertionHandler currentHandler];
      [v21 handleFailureInMethod:v22 object:self file:@"MBCKFile.m" lineNumber:2168 description:@"File (symbolic link) does not have a link target"];
    }

    linkTarget2 = [(MBCKFile *)self linkTarget];
    [v14 setObject:linkTarget2 forKeyedSubscript:@"linkTarget"];
  }

  encryptionKey = [(MBCKFile *)self encryptionKey];

  if (encryptionKey)
  {
    domainName = [(MBCKFile *)self encryptionKey];
    [v14 setObject:domainName forKeyedSubscript:@"encryptionKey"];
LABEL_11:
  }

  return v14;
}

- (id)attributeDataHashWithAttributes:(id)attributes error:(id *)error
{
  attributesCopy = attributes;
  v5 = objc_opt_new();
  allKeys = [attributesCopy allKeys];
  [allKeys sortedArrayUsingComparator:&stru_1003BE2D8];
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
    v36 = attributesCopy;
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
        v13 = [attributesCopy objectForKeyedSubscript:v12];
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
                v23 = allKeys;
                if (error)
                {
                  v32 = v32;
                  *error = v32;
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
              attributesCopy = v36;
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
  v23 = allKeys;
LABEL_23:

  return v22;
}

- (id)attributeDataTruncatedHashWithError:(id *)error
{
  attributes = [(MBCKFile *)self attributes];
  v7 = [(MBCKFile *)self attributeDataHashWithAttributes:attributes error:error];

  if (!v7)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MBCKFile.m" lineNumber:2222 description:@"attributeHash should not be nil"];
  }

  v8 = [v7 base64EncodedStringWithOptions:0];
  v9 = [v8 substringWithRange:{0, 4}];

  return v9;
}

- (id)attributeDataPlistWithError:(id *)error
{
  attributes = [(MBCKFile *)self attributes];
  v5 = [NSPropertyListSerialization dataWithPropertyList:attributes format:200 options:0 error:error];

  return v5;
}

- (id)attributeDataArchiveWithError:(id *)error
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
      encryptionKey = [(MBCKFile *)self encryptionKey];
      v10 = encryptionKey;
      if ((restoreState & 8) != 0)
      {
        if (encryptionKey)
        {
          __assert_rtn("[MBCKFile attributeDataArchiveWithError:]", "MBCKFile.m", 2259, "!self.encryptionKey");
        }

        [(MBCKFileAttributesArchive *)v4 setIsMMCSEncryptedOnly:1];
      }

      else
      {

        if (v10)
        {
          encryptionKey2 = [(MBCKFile *)self encryptionKey];
          [(MBCKFileAttributesArchive *)v4 setEncryptionKey:encryptionKey2];
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

  data = [(MBCKFileAttributesArchive *)v4 data];

  return data;
}

- (BOOL)refreshAttributesPlistWithData:(id)data error:(id *)error
{
  v32 = 0;
  v6 = [NSPropertyListSerialization propertyListWithData:data options:0 format:0 error:&v32];
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

      if (!error)
      {
        v30 = 1;
        goto LABEL_13;
      }

      v29 = v8;
      v30 = 1;
      goto LABEL_10;
    }

    if (error)
    {
      v29 = [MBError errorWithCode:1 format:@"Invalid plist"];
      goto LABEL_9;
    }

LABEL_11:
    v30 = 0;
    goto LABEL_13;
  }

  if (!error)
  {
    goto LABEL_11;
  }

  v29 = v7;
LABEL_9:
  v30 = 0;
LABEL_10:
  *error = v29;
LABEL_13:

  return v30;
}

- (BOOL)refreshAttributesArchiveWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = [[MBCKFileAttributesArchive alloc] initWithData:dataCopy];

  if (v6)
  {
    if ([(MBCKFileAttributesArchive *)v6 hasRelativePath])
    {
      relativePath = [(MBCKFileAttributesArchive *)v6 relativePath];
      volumeType = self->_volumeType;
      self->_volumeType = relativePath;
    }

    if ([(MBCKFileAttributesArchive *)v6 hasLinkTarget])
    {
      linkTarget = [(MBCKFileAttributesArchive *)v6 linkTarget];
      relativePath = self->_relativePath;
      self->_relativePath = linkTarget;
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
      encryptionKey = 0;
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
      hasGroupID = [(MBCKFileAttributesArchive *)v6 hasGroupID];
      if (hasGroupID)
      {
        hasGroupID = [(MBCKFileAttributesArchive *)v6 groupID];
      }

      self->_mbNode.groupID = hasGroupID;
      hasUserID = [(MBCKFileAttributesArchive *)v6 hasUserID];
      if (hasUserID)
      {
        hasUserID = [(MBCKFileAttributesArchive *)v6 userID];
      }

      self->_mbNode.userID = hasUserID;
      hasMode = [(MBCKFileAttributesArchive *)v6 hasMode];
      if (hasMode)
      {
        LOWORD(hasMode) = [(MBCKFileAttributesArchive *)v6 mode];
      }

      WORD2(self->_mbNode.cloneID) = hasMode;
      if ([(MBCKFileAttributesArchive *)v6 hasSizeBeforeCopy])
      {
        sizeBeforeCopy = [(MBCKFileAttributesArchive *)v6 sizeBeforeCopy];
      }

      else
      {
        sizeBeforeCopy = 0;
      }

      self->_encryptedSize = sizeBeforeCopy;
      if ([(MBCKFileAttributesArchive *)v6 hasFlags])
      {
        flags = [(MBCKFileAttributesArchive *)v6 flags];
        self->_mbNode.flags = flags;
        if ((flags & 0x40000000) != 0)
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
        sourceDeviceInode = [(MBCKFileAttributesArchive *)v6 sourceDeviceInode];
      }

      else
      {
        sourceDeviceInode = 0;
      }

      self->_encryptionKey = sourceDeviceInode;
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

    encryptionKey = [(MBCKFileAttributesArchive *)v6 encryptionKey];
LABEL_24:
    resources = self->_resources;
    self->_resources = encryptionKey;

    goto LABEL_25;
  }

  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    dictionaryRepresentation = [0 dictionaryRepresentation];
    *buf = 138412290;
    v26 = dictionaryRepresentation;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Unable to refresh attributes: %@", buf, 0xCu);

    dictionaryRepresentation2 = [0 dictionaryRepresentation];
    _MBLog();
  }

LABEL_47:
  return v6 != 0;
}

- (BOOL)refreshAttributesWithData:(id)data error:(id *)error
{
  dataCopy = data;
  if ([dataCopy length] >= 6 && ((v8 = objc_msgSend(dataCopy, "bytes"), *v8 == 1768714338) ? (v9 = v8[2] == 29811) : (v9 = 0), v9 && -[MBCKFile refreshAttributesPlistWithData:error:](self, "refreshAttributesPlistWithData:error:", dataCopy, error)) || -[MBCKFile refreshAttributesArchiveWithData:error:](self, "refreshAttributesArchiveWithData:error:", dataCopy, error))
  {
    v10 = 1;
  }

  else
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MBCKFile.m" lineNumber:2391 description:{@"Unable to refresh attributes: %@", dataCopy}];

    v10 = 0;
  }

  return v10;
}

- (id)recordRepresentation
{
  v63.receiver = self;
  v63.super_class = MBCKFile;
  recordRepresentation = [(MBCKModel *)&v63 recordRepresentation];
  [recordRepresentation setUseLightweightPCS:1];
  v5 = [(MBCKFile *)self attributeDataWithError:0];
  if (!v5)
  {
    v55 = +[NSAssertionHandler currentHandler];
    [v55 handleFailureInMethod:a2 object:self file:@"MBCKFile.m" lineNumber:2428 description:@"Failed to serialize file attribute data"];
  }

  encryptedValues = [recordRepresentation encryptedValues];
  [encryptedValues setObject:v5 forKeyedSubscript:@"encryptedAttributes"];

  v7 = [NSNumber numberWithUnsignedInteger:[(MBCKFile *)self fileType]];
  [recordRepresentation setObject:v7 forKeyedSubscript:@"fileType"];

  if ([(MBCKFile *)self isRegularFile])
  {
    pathExtension = [self->_volumeType pathExtension];
    [recordRepresentation setObject:pathExtension forKeyedSubscript:@"extension"];
  }

  else
  {
    [recordRepresentation setObject:0 forKeyedSubscript:@"extension"];
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

      assetTransferOptions = [v12 assetTransferOptions];
      if (assetTransferOptions)
      {
        assetTransferOptions2 = [v12 assetTransferOptions];
        useMMCSEncryptionV2 = [assetTransferOptions2 useMMCSEncryptionV2];
        if ([useMMCSEncryptionV2 BOOLValue])
        {
          __assert_rtn("[MBCKFile recordRepresentation]", "MBCKFile.m", 2444, "!rsrcContents.assetTransferOptions || !rsrcContents.assetTransferOptions.useMMCSEncryptionV2.BOOLValue");
        }
      }

      [recordRepresentation setObject:v12 forKeyedSubscript:@"resources"];
    }

    if ([(MBCKFile *)self isRegularFile]|| [(MBCKFile *)self isDirectory])
    {
      v16 = [NSNumber numberWithInt:v9];
      [recordRepresentation setObject:v16 forKeyedSubscript:@"protectionClass"];
    }

    if ([(MBCKFile *)self isRegularFile]&& [(MBCKFile *)self size]&& ![(MBCKFile *)self isDataless])
    {
      v17 = [CKAsset alloc];
      assetPath = [(MBCKFile *)self assetPath];
      v19 = [NSURL fileURLWithPath:assetPath];
      v20 = [v17 initWithFileURL:v19];

      encryptionKey = [(MBCKFile *)self encryptionKey];
      restoreState = self->_restoreState;
      v23 = [MBProtectionClassUtils canOpenWhenLocked:v9];
      isProtected = [(MBCKFile *)self isProtected];
      v62 = v20;
      v61 = v23;
      if (isProtected)
      {
        v25 = 0;
        goto LABEL_29;
      }

      v59 = encryptionKey;
      v26 = restoreState;
      domainName = [(MBCKFile *)self domainName];
      if ([domainName isEqualToString:@"CameraRollDomain"])
      {
        shouldBeBackedUpIgnoringProtectionClass = [(MBCKFile *)self shouldBeBackedUpIgnoringProtectionClass];

        v25 = shouldBeBackedUpIgnoringProtectionClass;
        if (shouldBeBackedUpIgnoringProtectionClass)
        {
          restoreState = v26;
          v23 = v61;
          encryptionKey = v59;
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

          if (((encryptionKey != 0) & v23) == 1)
          {
            __assert_rtn("[MBCKFile recordRepresentation]", "MBCKFile.m", 2461, "!encryptionKey || !canBeBackedUpWhenLocked");
          }

          if (!encryptionKey && (restoreState & 8) == 0)
          {
            __assert_rtn("[MBCKFile recordRepresentation]", "MBCKFile.m", 2462, "isMMCSEncryptedOnly || encryptionKey");
          }

          if (encryptionKey && (restoreState & 8) != 0)
          {
            __assert_rtn("[MBCKFile recordRepresentation]", "MBCKFile.m", 2463, "!isMMCSEncryptedOnly || !encryptionKey");
          }

          if ((v9 & 0xFB) == 3)
          {
            v30 = isProtected;
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
              v32 = v60 = encryptionKey;
              *buf = 138412290;
              v69 = v32;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "Treating file with pc C or Cx as having pc D: %@", buf, 0xCu);

              relativePath = [(MBCKFile *)self relativePath];
              _MBLog();

              encryptionKey = v60;
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

            [v62 setAssetTransferOptions:{qword_1004216C0, relativePath}];
            assetTransferOptions3 = [v62 assetTransferOptions];
            useMMCSEncryptionV22 = [assetTransferOptions3 useMMCSEncryptionV2];
            if (([useMMCSEncryptionV22 BOOLValue] & 1) == 0)
            {
              __assert_rtn("[MBCKFile recordRepresentation]", "MBCKFile.m", 2474, "contents.assetTransferOptions.useMMCSEncryptionV2.BOOLValue");
            }

            goto LABEL_63;
          }

          v33 = isProtected ^ 1;
          if (!encryptionKey)
          {
            v33 = 1;
          }

          v34 = v62;
          if (v33)
          {
            assetTransferOptions3 = [v62 assetTransferOptions];
            if (!assetTransferOptions3)
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
                  v46 = v45 = encryptionKey;
                  [v34 setAssetChunkerOptions:v46];

                  encryptionKey = v45;
                }
              }

              shouldReadRawEncryptedData = [v34 shouldReadRawEncryptedData];
              if ((restoreState & 8) != 0)
              {
                if (shouldReadRawEncryptedData)
                {
                  __assert_rtn("[MBCKFile recordRepresentation]", "MBCKFile.m", 2504, "!isMMCSEncryptedOnly || !contents.shouldReadRawEncryptedData");
                }
              }

              else if ((shouldReadRawEncryptedData & 1) == 0)
              {
                __assert_rtn("[MBCKFile recordRepresentation]", "MBCKFile.m", 2503, "isMMCSEncryptedOnly || contents.shouldReadRawEncryptedData");
              }

              [recordRepresentation setObject:v34 forKeyedSubscript:@"contents"];

              goto LABEL_74;
            }

            useMMCSEncryptionV22 = [v62 assetTransferOptions];
            v43UseMMCSEncryptionV2 = [useMMCSEncryptionV22 useMMCSEncryptionV2];
            if ([v43UseMMCSEncryptionV2 BOOLValue])
            {
              __assert_rtn("[MBCKFile recordRepresentation]", "MBCKFile.m", 2491, "!contents.assetTransferOptions || !contents.assetTransferOptions.useMMCSEncryptionV2.BOOLValue");
            }

            goto LABEL_62;
          }

          [v62 setShouldReadRawEncryptedData:1];
          domainName2 = [(MBCKFile *)self domainName];
          if ([domainName2 isEqualToString:@"HealthDomain"])
          {
            [(MBCKFile *)self relativePath];
            v37 = v36 = encryptionKey;
            v38 = [v37 hasSuffix:@"healthdb_secure.sqlite"];

            encryptionKey = v36;
            if (v38)
            {
              v39 = MBGetDefaultLog();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
              {
                relativePath2 = [(MBCKFile *)self relativePath];
                *buf = 138412290;
                v69 = relativePath2;
                _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Not using fxd for: %@", buf, 0xCu);

                relativePath = [(MBCKFile *)self relativePath];
                _MBLog();
              }

              v66 = kCKAssetChunkLength;
              v67 = &off_1003E0D98;
              v41 = [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1];
              [v62 setAssetChunkerOptions:v41];

              encryptionKey = v36;
              goto LABEL_60;
            }
          }

          else
          {
          }

          [v62 setItemTypeHint:{@"fxd", relativePath}];
LABEL_60:
          assetTransferOptions3 = [v62 assetTransferOptions];
          if (!assetTransferOptions3)
          {
            v23 = v61;
            goto LABEL_64;
          }

          useMMCSEncryptionV22 = [v62 assetTransferOptions];
          v43UseMMCSEncryptionV2 = [useMMCSEncryptionV22 useMMCSEncryptionV2];
          if ([v43UseMMCSEncryptionV2 BOOLValue])
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
      encryptionKey = v59;
      goto LABEL_29;
    }
  }

LABEL_74:
  v48 = objc_opt_new();
  aggregateDictionaryGroup = [(MBCKFile *)self aggregateDictionaryGroup];
  domainName3 = [(MBCKFile *)self domainName];

  if (domainName3)
  {
    domainName4 = [(MBCKFile *)self domainName];
    [v48 setObject:domainName4 forKeyedSubscript:@"domainName"];
  }

  if (aggregateDictionaryGroup)
  {
    [v48 setObject:aggregateDictionaryGroup forKeyedSubscript:@"subDomain"];
  }

  if ([(MBCKFile *)self hasContentEncodingMethod])
  {
    v52 = [NSNumber numberWithLongLong:self->_sizeBeforeCopy];
    [v48 setObject:v52 forKeyedSubscript:@"originalSize"];
  }

  if ([v48 count])
  {
    [recordRepresentation setPluginFields:v48];
  }

  v53 = MBGetDefaultLog();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v69 = recordRepresentation;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "Saving file record: %@", buf, 0xCu);
    _MBLog();
  }

  return recordRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v9.receiver = self;
  v9.super_class = MBCKFile;
  [(MBCKModel *)&v9 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_manifest forKey:@"FileID"];
  [coderCopy encodeObject:*&self->_mbNode.mode forKey:@"DomainName"];
  [coderCopy encodeObject:self->_volumeType forKey:@"RelativePath"];
  [coderCopy encodeObject:self->_fileID forKey:@"AbsolutePath"];
  [coderCopy encodeObject:self->_relativePath forKey:@"LinkTarget"];
  [coderCopy encodeObject:self->_linkTarget forKey:@"Signature"];
  birth = [(MBCKFile *)self birth];
  [coderCopy encodeObject:birth forKey:@"FileBirth"];

  modified = [(MBCKFile *)self modified];
  [coderCopy encodeObject:modified forKey:@"FileModified"];

  statusChanged = [(MBCKFile *)self statusChanged];
  [coderCopy encodeObject:statusChanged forKey:@"FileStatusChanged"];

  [coderCopy encodeObject:self->_resources forKey:@"EncrptionKey"];
  [coderCopy encodeInt64:self->_mbNode.fileSize forKey:@"FileSize"];
  [coderCopy encodeInt32:self->_mbNode.groupID forKey:@"GroupID"];
  [coderCopy encodeInt32:self->_mbNode.userID forKey:@"UserID"];
  [coderCopy encodeInt32:WORD2(self->_mbNode.cloneID) forKey:@"FileMode"];
  [coderCopy encodeBool:(LOBYTE(self->_restoreState) >> 4) & 1 forKey:@"Deleted"];
  [coderCopy encodeInt32:BYTE6(self->_mbNode.cloneID) forKey:@"ProtectionClass"];
  [coderCopy encodeInt64:self->_encryptedSize forKey:@"FileSizeBeforeCopy"];
  [coderCopy encodeInt32:self->_mbNode.flags forKey:@"Flags"];
  [coderCopy encodeInt64:self->_encryptionKey forKey:@"SourceDeviceInode"];
  objc_autoreleasePoolPop(v5);
}

- (MBCKFile)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v31.receiver = self;
  v31.super_class = MBCKFile;
  v6 = [(MBCKModel *)&v31 initWithCoder:coderCopy];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FileID"];
    manifest = v6->_manifest;
    v6->_manifest = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DomainName"];
    v10 = *&v6->_mbNode.mode;
    *&v6->_mbNode.mode = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RelativePath"];
    volumeType = v6->_volumeType;
    v6->_volumeType = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AbsolutePath"];
    fileID = v6->_fileID;
    v6->_fileID = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LinkTarget"];
    relativePath = v6->_relativePath;
    v6->_relativePath = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Signature"];
    linkTarget = v6->_linkTarget;
    v6->_linkTarget = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FileBirth"];
    [v19 timeIntervalSince1970];
    v6->_mbNode.birth = v20;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FileModified"];
    [v21 timeIntervalSince1970];
    v6->_mbNode.modified = v22;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FileStatusChanged"];
    [v23 timeIntervalSince1970];
    v6->_mbNode.statusChanged = v24;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EncrptionKey"];
    resources = v6->_resources;
    v6->_resources = v25;

    BYTE6(v6->_mbNode.cloneID) = [coderCopy decodeInt32ForKey:@"ProtectionClass"];
    v6->_mbNode.fileSize = [coderCopy decodeInt64ForKey:@"FileSize"];
    v6->_mbNode.groupID = [coderCopy decodeInt32ForKey:@"GroupID"];
    v6->_mbNode.userID = [coderCopy decodeInt32ForKey:@"UserID"];
    WORD2(v6->_mbNode.cloneID) = [coderCopy decodeInt32ForKey:@"FileMode"];
    if ([coderCopy decodeBoolForKey:@"Deleted"])
    {
      v27 = 16;
    }

    else
    {
      v27 = 0;
    }

    LOBYTE(v6->_restoreState) = v6->_restoreState & 0xEF | v27;
    v6->_encryptedSize = [coderCopy decodeInt64ForKey:@"FileSizeBeforeCopy"];
    v28 = [coderCopy decodeInt32ForKey:@"Flags"];
    v6->_mbNode.flags = v28;
    if ((v28 & 0x40000000) != 0)
    {
      v6->_mbNode.fileSize = 0;
    }

    v6->_encryptionKey = [coderCopy decodeInt64ForKey:@"SourceDeviceInode"];
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
    encryptionKey = [(MBCKFile *)self encryptionKey];
    [(MBCKFileArchive *)v3 setEncryptionKey:encryptionKey];
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
    aggregateDictionaryGroup = [(MBCKFile *)self aggregateDictionaryGroup];
    [(MBCKFileArchive *)v3 setSubDomain:aggregateDictionaryGroup];
  }

  [(MBCKFileArchive *)v3 setResourcesSize:self->_signature];
  stashedAssetPath = [(NSString *)self->_encodedAssetPath stashedAssetPath];
  [(MBCKFileArchive *)v3 setStashedAssetPath:stashedAssetPath];

  stashedResourcePath = [(NSString *)self->_encodedAssetPath stashedResourcePath];
  [(MBCKFileArchive *)v3 setStashedResourcePath:stashedResourcePath];

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

    decodedAssetPath = [(NSString *)self->_encodedAssetPath decodedAssetPath];
    [(MBCKFileArchive *)v3 setDecodedAssetPath:decodedAssetPath];
  }

  data = [(MBCKFileArchive *)v3 data];

  return data;
}

- (id)initFromArchiveData:(id)data
{
  dataCopy = data;
  v5 = [[MBCKFileArchive alloc] initWithData:dataCopy];
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
    fileID = [(MBCKFileArchive *)v5 fileID];
    manifest = v6->_manifest;
    v6->_manifest = fileID;

    domainName = [(MBCKFileArchive *)v5 domainName];
    v10 = *&v6->_mbNode.mode;
    *&v6->_mbNode.mode = domainName;

    absolutePathPrefix = [(MBCKFileArchive *)v5 absolutePathPrefix];

    relativePath = [(MBCKFileArchive *)v5 relativePath];
    volumeType = v6->_volumeType;
    v6->_volumeType = relativePath;

    if (absolutePathPrefix)
    {
      absolutePathPrefix2 = [(MBCKFileArchive *)v5 absolutePathPrefix];
      fileID = v6->_fileID;
      v6->_fileID = absolutePathPrefix2;

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
      absolutePath = [(MBCKFileArchive *)v5 absolutePath];
      v17 = v6->_fileID;
      v6->_fileID = absolutePath;
    }

LABEL_9:
    linkTarget = [(MBCKFileArchive *)v5 linkTarget];
    relativePath = v6->_relativePath;
    v6->_relativePath = linkTarget;

    signature = [(MBCKFileArchive *)v5 signature];
    linkTarget = v6->_linkTarget;
    v6->_linkTarget = signature;

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
      encryptionKey = 0;
    }

    else
    {
      encryptionKey = [(MBCKFileArchive *)v5 encryptionKey];
    }

    resources = v6->_resources;
    v6->_resources = encryptionKey;

    hasMode = [(MBCKFileArchive *)v5 hasMode];
    if (hasMode)
    {
      LOWORD(hasMode) = [(MBCKFileArchive *)v5 mode];
    }

    WORD2(v6->_mbNode.cloneID) = hasMode;
    if ([(MBCKFileArchive *)v5 hasProtectionClass])
    {
      v28 = MBProtectionClassSupportedValue([(MBCKFileArchive *)v5 protectionClass], (WORD2(v6->_mbNode.cloneID) & 0xF000) == 0x8000, 0);
      BYTE6(v6->_mbNode.cloneID) = v28;
      if (v28 != 255 && ![MBProtectionClassUtils canOpenWhenLocked:v28])
      {
        if ([(MBCKFileArchive *)v5 hasInode])
        {
          inode = [(MBCKFileArchive *)v5 inode];
        }

        else
        {
          inode = 0;
        }

        v6->_mbNode.inode = inode;
        if ([(MBCKFileArchive *)v5 hasVolumeType])
        {
          volumeType = [(MBCKFileArchive *)v5 volumeType];
        }

        else
        {
          volumeType = 0;
        }

        *&v6->_is = volumeType;
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
      resourcesSize = [(MBCKFileArchive *)v5 resourcesSize];
    }

    else
    {
      resourcesSize = 0;
    }

    v6->_signature = resourcesSize;
    hasGroupID = [(MBCKFileArchive *)v5 hasGroupID];
    if (hasGroupID)
    {
      hasGroupID = [(MBCKFileArchive *)v5 groupID];
    }

    v6->_mbNode.groupID = hasGroupID;
    hasUserID = [(MBCKFileArchive *)v5 hasUserID];
    if (hasUserID)
    {
      hasUserID = [(MBCKFileArchive *)v5 userID];
    }

    v6->_mbNode.userID = hasUserID;
    if ([(MBCKFileArchive *)v5 hasFlags])
    {
      flags = [(MBCKFileArchive *)v5 flags];
      v6->_mbNode.flags = flags;
      p_flags = &v6->_mbNode.flags;
      if ((flags & 0x40000000) != 0)
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
      sizeBeforeCopy = [(MBCKFileArchive *)v5 sizeBeforeCopy];
    }

    else
    {
      sizeBeforeCopy = 0;
    }

    v6->_encryptedSize = sizeBeforeCopy;
    hasSubDomain = [(MBCKFileArchive *)v5 hasSubDomain];
    if (hasSubDomain)
    {
      subDomain = [(MBCKFileArchive *)v5 subDomain];
    }

    else
    {
      subDomain = 0;
    }

    objc_storeStrong(&v6->_sourceDeviceInode, subDomain);
    if (hasSubDomain)
    {
    }

    if ([(MBCKFileArchive *)v5 hasSourceDeviceInode])
    {
      sourceDeviceInode = [(MBCKFileArchive *)v5 sourceDeviceInode];
    }

    else
    {
      sourceDeviceInode = 0;
    }

    v6->_encryptionKey = sourceDeviceInode;
    if ([(MBCKFileArchive *)v5 hasStashedAssetPath])
    {
      v40 = +[NSFileManager defaultManager];
      stashedAssetPath = [(MBCKFileArchive *)v5 stashedAssetPath];
      v42 = [v40 fileExistsAtPath:stashedAssetPath];

      if (v42)
      {
        stashedAssetPath2 = [(MBCKFileArchive *)v5 stashedAssetPath];
        restoreState = [(MBCKFile *)v6 restoreState];
        [restoreState setStashedAssetPath:stashedAssetPath2];
      }
    }

    if ([(MBCKFileArchive *)v5 hasStashedResourcePath])
    {
      v45 = +[NSFileManager defaultManager];
      stashedResourcePath = [(MBCKFileArchive *)v5 stashedResourcePath];
      v47 = [v45 fileExistsAtPath:stashedResourcePath];

      if (v47)
      {
        stashedResourcePath2 = [(MBCKFileArchive *)v5 stashedResourcePath];
        restoreState2 = [(MBCKFile *)v6 restoreState];
        [restoreState2 setStashedResourcePath:stashedResourcePath2];
      }
    }

    if ([(MBCKFileArchive *)v5 hasStashedAssetIsDecrypted])
    {
      stashedAssetIsDecrypted = [(MBCKFileArchive *)v5 stashedAssetIsDecrypted];
      restoreState3 = [(MBCKFile *)v6 restoreState];
      [restoreState3 setStashedAssetDecrypted:stashedAssetIsDecrypted];
    }

    stashedAssetPath3 = [(NSString *)v6->_encodedAssetPath stashedAssetPath];
    if (!stashedAssetPath3)
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
          stashedAssetPath4 = [(MBCKFileArchive *)v5 stashedAssetPath];
          *buf = 138412546;
          v84 = v6;
          v85 = 2112;
          v86 = stashedAssetPath4;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "Prefetch: %@ prefetched, no file asset: %@", buf, 0x16u);
        }

        [(MBCKFileArchive *)v5 stashedAssetPath];
        v79 = v76 = v6;
        _MBLog();
      }

      stashedAssetPath3 = [(MBCKFile *)v6 restoreState];
      [stashedAssetPath3 setStashedAssetDecrypted:0];
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
            decodedAssetPath = [(MBCKFileArchive *)v5 decodedAssetPath];
            v59 = [v57 fileExistsAtPath:decodedAssetPath];

            if (v59)
            {
              decodedAssetPath2 = [(MBCKFileArchive *)v5 decodedAssetPath];
              restoreState4 = [(MBCKFile *)v6 restoreState];
              [restoreState4 setDecodedAssetPath:decodedAssetPath2];
            }
          }

          decodedAssetPath3 = [(NSString *)v6->_encodedAssetPath decodedAssetPath];
          if (!decodedAssetPath3)
          {
            if (![(MBCKFileArchive *)v5 hasDecodedAssetPath])
            {
              goto LABEL_92;
            }

            decodedAssetPath3 = MBGetDefaultLog();
            if (os_log_type_enabled(decodedAssetPath3, OS_LOG_TYPE_ERROR))
            {
              v73 = decodedAssetPath3;
              if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
              {
                decodedAssetPath4 = [(MBCKFileArchive *)v5 decodedAssetPath];
                *buf = 138412546;
                v84 = v6;
                v85 = 2112;
                v86 = decodedAssetPath4;
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
          stashedAssetPath5 = [(NSString *)v6->_encodedAssetPath stashedAssetPath];
          v64 = stashedAssetPath5 == 0;
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
          stashedResourcePath3 = [(MBCKFileArchive *)v5 stashedResourcePath];
          *buf = 138412546;
          v84 = v6;
          v85 = 2112;
          v86 = stashedResourcePath3;
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

- (id)initFromPQLResultSet:(id)set error:(id *)error
{
  setCopy = set;
  if ([setCopy columns] == 1)
  {
    v7 = [setCopy dataAtIndex:0];
    if (v7)
    {
      v8 = [(MBCKFile *)self initFromArchiveData:v7];
    }

    else
    {

      v8 = 0;
    }

    self = v8;

    selfCopy = self;
  }

  else if (error)
  {
    [NSError errorWithSqliteCode:20 andMessage:@"This result set has more than one column"];
    *error = selfCopy = 0;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)newFromSqliteStatement:(sqlite3_stmt *)statement atIndex:(int)index
{
  if (!statement)
  {
    __assert_rtn("+[MBCKFile(PQLResultSetInitializer) newFromSqliteStatement:atIndex:]", "MBCKFile.m", 2838, "statement");
  }

  v7 = sqlite3_column_type(statement, index);
  if (v7 == 4)
  {
    v8 = sqlite3_column_blob(statement, index);
    v9 = [[NSData alloc] initWithBytes:v8 length:{sqlite3_column_bytes(statement, index)}];
    v10 = [[self alloc] initFromArchiveData:v9];

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
      indexCopy = index;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Invalid type (%d) for the column at index %d", buf, 0xEu);
      _MBLog();
    }

    return 0;
  }
}

- (void)sqliteBind:(sqlite3_stmt *)bind index:(int)index
{
  asArchiveData = [(MBCKFile *)self asArchiveData];
  v6 = asArchiveData;
  sqlite3_bind_blob(bind, index, [asArchiveData bytes], objc_msgSend(asArchiveData, "length"), 0xFFFFFFFFFFFFFFFFLL);
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

- (BOOL)decodeWithFileAtPath:(id)path destinationDirectory:(id)directory error:(id *)error
{
  pathCopy = path;
  directoryCopy = directory;
  if (!pathCopy)
  {
    __assert_rtn("[MBCKFile(Encoding) decodeWithFileAtPath:destinationDirectory:error:]", "MBCKFile.m", 2994, "path");
  }

  if (!error)
  {
    __assert_rtn("[MBCKFile(Encoding) decodeWithFileAtPath:destinationDirectory:error:]", "MBCKFile.m", 2995, "error");
  }

  v10 = directoryCopy;
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

    signature = [(MBCKFile *)self signature];
    mb_base64EncodedFileSystemPathString = [signature mb_base64EncodedFileSystemPathString];

    if (!mb_base64EncodedFileSystemPathString)
    {
      __assert_rtn("[MBCKFile(Encoding) decodeWithFileAtPath:destinationDirectory:error:]", "MBCKFile.m", 3013, "signature");
    }

    v42 = mb_base64EncodedFileSystemPathString;
    v43 = [v11 stringByAppendingPathComponent:mb_base64EncodedFileSystemPathString];
    makeTemporaryFilePath = [v15 makeTemporaryFilePath];
    if (!makeTemporaryFilePath)
    {
      __assert_rtn("[MBCKFile(Encoding) decodeWithFileAtPath:destinationDirectory:error:]", "MBCKFile.m", 3019, "destinationPath");
    }

    v20 = makeTemporaryFilePath;
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
    [v27 setSourcePath:pathCopy];
    [v27 setDestinationPath:v20];
    [v27 setCompressionMethod:v23];
    [v27 setProtectionClass:v21];
    [v27 setGroup:v26];
    [v27 start];
    v40 = v26;
    dispatch_group_wait(v26, 0xFFFFFFFFFFFFFFFFLL);
    error = [v27 error];

    if (error)
    {
      error2 = [v27 error];
      v10 = v39;
    }

    else
    {
      v45 = 0;
      v32 = [MBFileOperation rename:4294967294 sourceRpath:v20 destinationBasePath:@"/" destinationBaseFD:4294967294 destinationRpath:v43 flags:4 error:&v45];
      error2 = v45;
      v10 = v39;
      if ((v32 & 1) != 0 || [MBError errnoForError:error2]== 17)
      {
        restoreState = [(MBCKFile *)self restoreState];
        [restoreState setDecodedAssetPath:v43];

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
        v53 = error2;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Decode failed to move file from %@ to %@: %@", buf, 0x20u);
        v37 = v43;
        v38 = error2;
        v36 = v20;
        _MBLog();
      }
    }

    [v44 dispose];
    v30 = error2;
    *error = error2;
    restoreState2 = [(MBCKFile *)self restoreState];
    [restoreState2 setDecodedAssetPath:0];

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

- (void)getNode:(id *)node
{
  *&node->var0 = *&self->_mbNode.direntCount;
  v4 = *&self->_mbNode.statusChanged;
  v3 = *&self->_mbNode.inode;
  v5 = *&self->_mbNode.birth;
  node->var10 = self->_mbNode.cloneID;
  *&node->var6 = v4;
  *&node->var8 = v3;
  *&node->var4 = v5;
}

- (unint64_t)fileType
{
  type = [(MBCKFile *)self type];
  v3 = 3;
  if (type == 0x4000)
  {
    v3 = 1;
  }

  if (type == 0x8000)
  {
    v3 = 0;
  }

  if (type == 40960)
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
  type = [(MBCKFile *)self type];
  v3 = @"file";
  v4 = @"(unknown type)";
  if (type == 0x4000)
  {
    v4 = @"directory";
  }

  if (type != 0x8000)
  {
    v3 = v4;
  }

  if (type == 40960)
  {
    return @"symlink";
  }

  else
  {
    return &v3->isa;
  }
}

- (void)setStashedAssetPath:(id)path
{
  pathCopy = path;
  restoreState = [(MBCKFile *)self restoreState];
  [restoreState setStashedAssetPath:pathCopy];
}

- (void)setDecodedAssetPath:(id)path
{
  pathCopy = path;
  restoreState = [(MBCKFile *)self restoreState];
  [restoreState setDecodedAssetPath:pathCopy];
}

@end